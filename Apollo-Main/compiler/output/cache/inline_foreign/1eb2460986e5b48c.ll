; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/1eb2460986e5b48c.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/1eb2460986e5b48c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::deque.14" = type { %"class.std::_Deque_base.15" }
%"class.std::_Deque_base.15" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.19", %"struct.std::_Deque_iterator.19" }
%"struct.std::_Deque_iterator.19" = type { ptr, ptr, ptr, ptr }
%struct.timespec = type { i64, i64 }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.__apo_stdlib::channel_value" = type { i32, i32, double, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<__apo_stdlib::channel_value>::_Storage", i8 }>
%"union.std::_Optional_payload_base<__apo_stdlib::channel_value>::_Storage" = type { %"struct.__apo_stdlib::channel_value" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZN12__apo_stdlib15condvar_wait_msEPvi = comdat any

$_ZN12__apo_stdlib16channel_recv_strEPv = comdat any

$_ZN12__apo_stdlib20channel_try_recv_strEPv = comdat any

$_ZN12__apo_stdlib13opaque_handleD2Ev = comdat any

$_ZN12__apo_stdlib12mutex_handleD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib14condvar_handleD2Ev = comdat any

$_ZN12__apo_stdlib14condvar_handleD0Ev = comdat any

$_ZN12__apo_stdlib14channel_handleD2Ev = comdat any

$_ZN12__apo_stdlib14channel_handleD0Ev = comdat any

$_ZNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev = comdat any

$_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_ = comdat any

$_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb = comdat any

$_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_ = comdat any

$_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZN12__apo_stdlib11channel_popEPvb = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZTVN12__apo_stdlib12mutex_handleE = comdat any

$_ZTIN12__apo_stdlib12mutex_handleE = comdat any

$_ZTSN12__apo_stdlib12mutex_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZTVN12__apo_stdlib14condvar_handleE = comdat any

$_ZTIN12__apo_stdlib14condvar_handleE = comdat any

$_ZTSN12__apo_stdlib14condvar_handleE = comdat any

$_ZTVN12__apo_stdlib14channel_handleE = comdat any

$_ZTIN12__apo_stdlib14channel_handleE = comdat any

$_ZTSN12__apo_stdlib14channel_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZTVN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib12mutex_handleE, ptr @_ZN12__apo_stdlib13opaque_handleD2Ev, ptr @_ZN12__apo_stdlib12mutex_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib12mutex_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local constant [31 x i8] c"N12__apo_stdlib12mutex_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@_ZTVN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib14condvar_handleE, ptr @_ZN12__apo_stdlib14condvar_handleD2Ev, ptr @_ZN12__apo_stdlib14condvar_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib14condvar_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local constant [33 x i8] c"N12__apo_stdlib14condvar_handleE\00", comdat, align 1
@_ZTVN12__apo_stdlib14channel_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib14channel_handleE, ptr @_ZN12__apo_stdlib14channel_handleD2Ev, ptr @_ZN12__apo_stdlib14channel_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib14channel_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib14channel_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib14channel_handleE = linkonce_odr dso_local constant [33 x i8] c"N12__apo_stdlib14channel_handleE\00", comdat, align 1
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque.14" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1521sys__native_mutex_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1522sys__native_mutex_lockEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %13, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %1, %3, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1526sys__native_mutex_try_lockEPv(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 8, !tbaa !12
  %13 = zext i1 %10 to i32
  br label %14

14:                                               ; preds = %1, %3, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1524sys__native_mutex_unlockEPv(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !12, !range !17, !noundef !18
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !12
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1523sys__native_condvar_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %5, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1527sys__native_condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 14
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !24
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @_ZSt20__throw_system_errori(i32 noundef %13) #22
  unreachable

16:                                               ; preds = %10
  store i8 1, ptr %12, align 8, !tbaa !28
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %18 = load i64, ptr %17, align 8, !tbaa !19
  %19 = icmp slt i32 %1, 0
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %19, label %21, label %25

21:                                               ; preds = %16, %22
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %22 unwind label %59

22:                                               ; preds = %21
  %23 = load i64, ptr %17, align 8, !tbaa !19
  %24 = icmp eq i64 %23, %18
  br i1 %24, label %21, label %48, !llvm.loop !29

25:                                               ; preds = %16
  %26 = zext nneg i32 %1 to i64
  %27 = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %28 = mul nuw nsw i64 %26, 1000000
  %29 = add nsw i64 %27, %28
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = sdiv i64 %29, 1000000000
  %32 = mul nsw i64 %31, -1000000000
  %33 = add i64 %32, %29
  br label %34

34:                                               ; preds = %39, %25
  %35 = load i64, ptr %17, align 8, !tbaa !19
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  store i64 %31, ptr %3, align 8, !tbaa !31
  store i64 %33, ptr %30, align 8, !tbaa !33
  %38 = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %39 unwind label %46

39:                                               ; preds = %37
  %40 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %41 = icmp slt i64 %40, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br i1 %41, label %34, label %42, !llvm.loop !34

42:                                               ; preds = %39
  %43 = load i64, ptr %17, align 8, !tbaa !19
  %44 = icmp ne i64 %43, %18
  %45 = zext i1 %44 to i32
  br label %51

46:                                               ; preds = %37
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %63

48:                                               ; preds = %22
  %49 = load i8, ptr %12, align 8, !tbaa !28, !range !17
  %50 = trunc nuw i8 %49 to i1
  br i1 %50, label %51, label %57

51:                                               ; preds = %34, %42, %48
  %52 = phi i32 [ 1, %48 ], [ %45, %42 ], [ 1, %34 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !24
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %53) #15
  br label %57

57:                                               ; preds = %48, %51, %55
  %58 = phi i32 [ 1, %48 ], [ %52, %51 ], [ %52, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %71

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load i8, ptr %12, align 8, !tbaa !28, !range !17
  %62 = trunc nuw i8 %61 to i1
  br i1 %62, label %63, label %69

63:                                               ; preds = %46, %59
  %64 = phi { ptr, i32 } [ %47, %46 ], [ %60, %59 ]
  %65 = load ptr, ptr %4, align 8, !tbaa !24
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %65) #15
  br label %69

69:                                               ; preds = %59, %63, %67
  %70 = phi { ptr, i32 } [ %60, %59 ], [ %64, %63 ], [ %64, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %70

71:                                               ; preds = %6, %2, %57
  %72 = phi i32 [ %58, %57 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %72
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32__apollo_inline_inline_2783_5_1530sys__native_condvar_notify_oneEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8, !tbaa !19
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #15
  br label %18

18:                                               ; preds = %1, %3, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32__apollo_inline_inline_2783_5_1530sys__native_condvar_notify_allEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8, !tbaa !19
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #15
  br label %18

18:                                               ; preds = %1, %3, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1527sys__native_channel_boundedEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #21
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 15, ptr %3, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #15
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 0)
          to label %10 unwind label %8

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #15
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 248) #23
  resume { ptr, i32 } %9

10:                                               ; preds = %1
  %11 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 %12, ptr %13, align 8, !tbaa !35
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i8 0, ptr %14, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_unboundedEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 15, ptr %2, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %1, align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef 0)
          to label %9 unwind label %7

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 248) #23
  resume { ptr, i32 } %8

9:                                                ; preds = %0
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 0, ptr %10, align 8, !tbaa !35
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i8 0, ptr %11, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %6, ptr %4, align 8, !tbaa !56, !alias.scope !60
  br i1 %5, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %8, align 8, !tbaa !57, !alias.scope !60
  store i8 0, ptr %6, align 8, !tbaa !58, !alias.scope !60
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %12, ptr %11, align 8, !tbaa !56
  br label %36

13:                                               ; preds = %2
  %14 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15, !noalias !60
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp ugt i64 %14, 9223372036854775806
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #22
  unreachable

19:                                               ; preds = %16
  %20 = add nuw nsw i64 %14, 1
  %21 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #21
  store ptr %21, ptr %4, align 8, !tbaa !59, !alias.scope !60
  store i64 %14, ptr %6, align 8, !tbaa !58, !alias.scope !60
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %6, %13 ]
  switch i64 %14, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %1, align 1, !tbaa !58, !noalias !60
  store i8 %25, ptr %23, align 1, !tbaa !58
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %14, i1 false)
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %28, align 8, !tbaa !57, !alias.scope !60
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %14
  store i8 0, ptr %29, align 1, !tbaa !58
  %30 = load ptr, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %31, align 4, !tbaa !54
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %32, align 8, !tbaa !55
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %34, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %30, %6
  br i1 %35, label %36, label %43

36:                                               ; preds = %7, %27
  %37 = phi ptr [ %12, %7 ], [ %34, %27 ]
  %38 = phi ptr [ %11, %7 ], [ %33, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !57
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %42, i1 false)
  br label %47

43:                                               ; preds = %27
  store ptr %30, ptr %33, align 8, !tbaa !59
  %44 = load i64, ptr %6, align 8, !tbaa !58
  store i64 %44, ptr %34, align 8, !tbaa !58
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !57
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi ptr [ %37, %36 ], [ %34, %43 ]
  %49 = phi ptr [ %38, %36 ], [ %33, %43 ]
  %50 = phi i64 [ %40, %36 ], [ %46, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %52 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %50, ptr %53, align 8, !tbaa !57
  store ptr %6, ptr %4, align 8, !tbaa !59
  store i64 0, ptr %51, align 8, !tbaa !57
  store i8 0, ptr %6, align 8, !tbaa !58
  %54 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %55 unwind label %64

55:                                               ; preds = %47
  %56 = load ptr, ptr %49, align 8, !tbaa !59
  %57 = icmp eq ptr %56, %48
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, ptr %53, align 8, !tbaa !57
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %74

61:                                               ; preds = %55
  %62 = load i64, ptr %48, align 8, !tbaa !58
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %63) #23
  br label %74

64:                                               ; preds = %47
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load ptr, ptr %49, align 8, !tbaa !59
  %67 = icmp eq ptr %66, %48
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, ptr %53, align 8, !tbaa !57
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %84

71:                                               ; preds = %64
  %72 = load i64, ptr %48, align 8, !tbaa !58
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %66, i64 noundef %73) #23
  br label %84

74:                                               ; preds = %61, %58
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  %75 = load ptr, ptr %4, align 8, !tbaa !59
  %76 = icmp eq ptr %75, %6
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, ptr %51, align 8, !tbaa !57
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  br label %83

80:                                               ; preds = %74
  %81 = load i64, ptr %6, align 8, !tbaa !58
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %75, i64 noundef %82) #23
  br label %83

83:                                               ; preds = %77, %80
  ret i32 %54

84:                                               ; preds = %68, %71
  %85 = load ptr, ptr %4, align 8, !tbaa !59
  %86 = icmp eq ptr %85, %6
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, ptr %51, align 8, !tbaa !57
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %93

90:                                               ; preds = %84
  %91 = load i64, ptr %6, align 8, !tbaa !58
  %92 = add i64 %91, 1
  call void @_ZdlPvm(ptr noundef %85, i64 noundef %92) #23
  br label %93

93:                                               ; preds = %87, %90
  resume { ptr, i32 } %65
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !57
  store i8 0, ptr %9, align 8, !tbaa !58
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %12 unwind label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8, !tbaa !57
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %32

18:                                               ; preds = %12
  %19 = load i64, ptr %9, align 8, !tbaa !58
  %20 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %20) #23
  br label %32

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %10, align 8, !tbaa !57
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %21
  %29 = load i64, ptr %9, align 8, !tbaa !58
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %30) #23
  br label %31

31:                                               ; preds = %28, %25
  resume { ptr, i32 } %22

32:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %6, ptr %4, align 8, !tbaa !56, !alias.scope !63
  br i1 %5, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %8, align 8, !tbaa !57, !alias.scope !63
  store i8 0, ptr %6, align 8, !tbaa !58, !alias.scope !63
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %12, ptr %11, align 8, !tbaa !56
  br label %36

13:                                               ; preds = %2
  %14 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15, !noalias !63
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = icmp ugt i64 %14, 9223372036854775806
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #22
  unreachable

19:                                               ; preds = %16
  %20 = add nuw nsw i64 %14, 1
  %21 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #21
  store ptr %21, ptr %4, align 8, !tbaa !59, !alias.scope !63
  store i64 %14, ptr %6, align 8, !tbaa !58, !alias.scope !63
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %6, %13 ]
  switch i64 %14, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %1, align 1, !tbaa !58, !noalias !63
  store i8 %25, ptr %23, align 1, !tbaa !58
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %14, i1 false)
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %28, align 8, !tbaa !57, !alias.scope !63
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %14
  store i8 0, ptr %29, align 1, !tbaa !58
  %30 = load ptr, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %31, align 4, !tbaa !54
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %32, align 8, !tbaa !55
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %34, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %30, %6
  br i1 %35, label %36, label %43

36:                                               ; preds = %7, %27
  %37 = phi ptr [ %12, %7 ], [ %34, %27 ]
  %38 = phi ptr [ %11, %7 ], [ %33, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !57
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %42, i1 false)
  br label %47

43:                                               ; preds = %27
  store ptr %30, ptr %33, align 8, !tbaa !59
  %44 = load i64, ptr %6, align 8, !tbaa !58
  store i64 %44, ptr %34, align 8, !tbaa !58
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !57
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi ptr [ %37, %36 ], [ %34, %43 ]
  %49 = phi ptr [ %38, %36 ], [ %33, %43 ]
  %50 = phi i64 [ %40, %36 ], [ %46, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %52 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %50, ptr %53, align 8, !tbaa !57
  store ptr %6, ptr %4, align 8, !tbaa !59
  store i64 0, ptr %51, align 8, !tbaa !57
  store i8 0, ptr %6, align 8, !tbaa !58
  %54 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %55 unwind label %64

55:                                               ; preds = %47
  %56 = load ptr, ptr %49, align 8, !tbaa !59
  %57 = icmp eq ptr %56, %48
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, ptr %53, align 8, !tbaa !57
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %74

61:                                               ; preds = %55
  %62 = load i64, ptr %48, align 8, !tbaa !58
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %63) #23
  br label %74

64:                                               ; preds = %47
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load ptr, ptr %49, align 8, !tbaa !59
  %67 = icmp eq ptr %66, %48
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, ptr %53, align 8, !tbaa !57
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %84

71:                                               ; preds = %64
  %72 = load i64, ptr %48, align 8, !tbaa !58
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %66, i64 noundef %73) #23
  br label %84

74:                                               ; preds = %61, %58
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  %75 = load ptr, ptr %4, align 8, !tbaa !59
  %76 = icmp eq ptr %75, %6
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, ptr %51, align 8, !tbaa !57
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  br label %83

80:                                               ; preds = %74
  %81 = load i64, ptr %6, align 8, !tbaa !58
  %82 = add i64 %81, 1
  call void @_ZdlPvm(ptr noundef %75, i64 noundef %82) #23
  br label %83

83:                                               ; preds = %77, %80
  ret i32 %54

84:                                               ; preds = %68, %71
  %85 = load ptr, ptr %4, align 8, !tbaa !59
  %86 = icmp eq ptr %85, %6
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, ptr %51, align 8, !tbaa !57
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %93

90:                                               ; preds = %84
  %91 = load i64, ptr %6, align 8, !tbaa !58
  %92 = add i64 %91, 1
  call void @_ZdlPvm(ptr noundef %85, i64 noundef %92) #23
  br label %93

93:                                               ; preds = %87, %90
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1533sys__native_channel_try_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !57
  store i8 0, ptr %9, align 8, !tbaa !58
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %12 unwind label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8, !tbaa !57
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %32

18:                                               ; preds = %12
  %19 = load i64, ptr %9, align 8, !tbaa !58
  %20 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %20) #23
  br label %32

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %10, align 8, !tbaa !57
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %21
  %29 = load i64, ptr %9, align 8, !tbaa !58
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %30) #23
  br label %31

31:                                               ; preds = %28, %25
  resume { ptr, i32 } %22

32:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_i32EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi i32 [ %11, %16 ], [ %11, %20 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret i32 %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %12, ptr %3, align 8, !tbaa !56
  %13 = load ptr, ptr %11, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = icmp ult i64 %15, 9223372036854775807
  call void @llvm.assume(i1 %16)
  %17 = icmp samesign ugt i64 %15, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %15, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #21
          to label %21 unwind label %124

21:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !59
  store i64 %15, ptr %12, align 8, !tbaa !58
  br label %28

22:                                               ; preds = %10
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %15, 1
  br label %28

26:                                               ; preds = %22
  %27 = load i8, ptr %13, align 1, !tbaa !58
  store i8 %27, ptr %12, align 8, !tbaa !58
  br label %31

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %25, %24 ], [ %19, %21 ]
  %30 = phi ptr [ %12, %24 ], [ %20, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %13, i64 %29, i1 false)
  br label %31

31:                                               ; preds = %26, %28
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %15, ptr %32, align 8, !tbaa !57
  br label %36

33:                                               ; preds = %1
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !56
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !57
  store i8 0, ptr %34, align 8, !tbaa !58
  br label %36

36:                                               ; preds = %31, %33
  %37 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42, !prof !68

39:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %40 unwind label %126

40:                                               ; preds = %39
  %41 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %51, ptr %45, align 8, !tbaa !56
  %52 = load ptr, ptr %3, align 8, !tbaa !59
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !57
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %64

60:                                               ; preds = %50
  store ptr %52, ptr %45, align 8, !tbaa !59
  %61 = load i64, ptr %53, align 8, !tbaa !58
  store i64 %61, ptr %51, align 8, !tbaa !58
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !57
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %63, %60 ], [ %57, %55 ]
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !57
  store ptr %53, ptr %3, align 8, !tbaa !59
  store i64 0, ptr %66, align 8, !tbaa !57
  store i8 0, ptr %53, align 8, !tbaa !58
  %69 = load ptr, ptr %44, align 8, !tbaa !69
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %44, align 8, !tbaa !69
  br label %74

71:                                               ; preds = %42
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %72 unwind label %126

72:                                               ; preds = %71
  %73 = load ptr, ptr %44, align 8, !tbaa !75, !noalias !76
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %70, %64 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !79, !noalias !76
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !80, !noalias !76
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !81
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !59
  %89 = load ptr, ptr %3, align 8, !tbaa !59
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %9, label %100, label %92

92:                                               ; preds = %85
  br i1 %91, label %93, label %97

93:                                               ; preds = %92
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %95 = load i64, ptr %94, align 8, !tbaa !57
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %108

97:                                               ; preds = %92
  %98 = load i64, ptr %90, align 8, !tbaa !58
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %99) #23
  br label %108

100:                                              ; preds = %85
  br i1 %91, label %101, label %105

101:                                              ; preds = %100
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %103 = load i64, ptr %102, align 8, !tbaa !57
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  br label %108

105:                                              ; preds = %100
  %106 = load i64, ptr %90, align 8, !tbaa !58
  %107 = add i64 %106, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %107) #23
  br label %108

108:                                              ; preds = %93, %97, %105, %101
  %109 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %110 = trunc nuw i8 %109 to i1
  store i8 0, ptr %4, align 8, !tbaa !66
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %118 = load i64, ptr %117, align 8, !tbaa !57
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %111
  %121 = load i64, ptr %114, align 8, !tbaa !58
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %122) #23
  br label %123

123:                                              ; preds = %108, %116, %120
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret ptr %88

124:                                              ; preds = %18
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %147

126:                                              ; preds = %71, %39
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %3, align 8, !tbaa !59
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %9, label %139, label %131

131:                                              ; preds = %126
  br i1 %130, label %132, label %136

132:                                              ; preds = %131
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %134 = load i64, ptr %133, align 8, !tbaa !57
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  br label %147

136:                                              ; preds = %131
  %137 = load i64, ptr %129, align 8, !tbaa !58
  %138 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %138) #23
  br label %147

139:                                              ; preds = %126
  br i1 %130, label %140, label %144

140:                                              ; preds = %139
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %142 = load i64, ptr %141, align 8, !tbaa !57
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %139
  %145 = load i64, ptr %129, align 8, !tbaa !58
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %146) #23
  br label %147

147:                                              ; preds = %132, %136, %144, %140, %124
  %148 = phi { ptr, i32 } [ %125, %124 ], [ %127, %140 ], [ %127, %144 ], [ %127, %136 ], [ %127, %132 ]
  %149 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %150 = trunc nuw i8 %149 to i1
  store i8 0, ptr %4, align 8, !tbaa !66
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %153 = load ptr, ptr %152, align 8, !tbaa !59
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %158 = load i64, ptr %157, align 8, !tbaa !57
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %163

160:                                              ; preds = %151
  %161 = load i64, ptr %154, align 8, !tbaa !58
  %162 = add i64 %161, 1
  call void @_ZdlPvm(ptr noundef %153, i64 noundef %162) #23
  br label %163

163:                                              ; preds = %147, %156, %160
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  resume { ptr, i32 } %148
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_recv_boolEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi i32 [ %11, %16 ], [ %11, %20 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret i32 %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_f64EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi double [ %11, %16 ], [ %11, %20 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret double %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi i32 [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %25
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %12, ptr %3, align 8, !tbaa !56
  %13 = load ptr, ptr %11, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = icmp ult i64 %15, 9223372036854775807
  call void @llvm.assume(i1 %16)
  %17 = icmp samesign ugt i64 %15, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %15, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #21
          to label %21 unwind label %124

21:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !59
  store i64 %15, ptr %12, align 8, !tbaa !58
  br label %28

22:                                               ; preds = %10
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %15, 1
  br label %28

26:                                               ; preds = %22
  %27 = load i8, ptr %13, align 1, !tbaa !58
  store i8 %27, ptr %12, align 8, !tbaa !58
  br label %31

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %25, %24 ], [ %19, %21 ]
  %30 = phi ptr [ %12, %24 ], [ %20, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %13, i64 %29, i1 false)
  br label %31

31:                                               ; preds = %26, %28
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %15, ptr %32, align 8, !tbaa !57
  br label %36

33:                                               ; preds = %1
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !56
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !57
  store i8 0, ptr %34, align 8, !tbaa !58
  br label %36

36:                                               ; preds = %31, %33
  %37 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42, !prof !68

39:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %40 unwind label %126

40:                                               ; preds = %39
  %41 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %51, ptr %45, align 8, !tbaa !56
  %52 = load ptr, ptr %3, align 8, !tbaa !59
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !57
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %64

60:                                               ; preds = %50
  store ptr %52, ptr %45, align 8, !tbaa !59
  %61 = load i64, ptr %53, align 8, !tbaa !58
  store i64 %61, ptr %51, align 8, !tbaa !58
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !57
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %63, %60 ], [ %57, %55 ]
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !57
  store ptr %53, ptr %3, align 8, !tbaa !59
  store i64 0, ptr %66, align 8, !tbaa !57
  store i8 0, ptr %53, align 8, !tbaa !58
  %69 = load ptr, ptr %44, align 8, !tbaa !69
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %44, align 8, !tbaa !69
  br label %74

71:                                               ; preds = %42
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %72 unwind label %126

72:                                               ; preds = %71
  %73 = load ptr, ptr %44, align 8, !tbaa !75, !noalias !82
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %70, %64 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !79, !noalias !82
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !80, !noalias !82
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !81
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !59
  %89 = load ptr, ptr %3, align 8, !tbaa !59
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %9, label %100, label %92

92:                                               ; preds = %85
  br i1 %91, label %93, label %97

93:                                               ; preds = %92
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %95 = load i64, ptr %94, align 8, !tbaa !57
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %108

97:                                               ; preds = %92
  %98 = load i64, ptr %90, align 8, !tbaa !58
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %99) #23
  br label %108

100:                                              ; preds = %85
  br i1 %91, label %101, label %105

101:                                              ; preds = %100
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %103 = load i64, ptr %102, align 8, !tbaa !57
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  br label %108

105:                                              ; preds = %100
  %106 = load i64, ptr %90, align 8, !tbaa !58
  %107 = add i64 %106, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %107) #23
  br label %108

108:                                              ; preds = %93, %97, %105, %101
  %109 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %110 = trunc nuw i8 %109 to i1
  store i8 0, ptr %4, align 8, !tbaa !66
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %118 = load i64, ptr %117, align 8, !tbaa !57
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %111
  %121 = load i64, ptr %114, align 8, !tbaa !58
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %122) #23
  br label %123

123:                                              ; preds = %108, %116, %120
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret ptr %88

124:                                              ; preds = %18
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %147

126:                                              ; preds = %71, %39
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %3, align 8, !tbaa !59
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %9, label %139, label %131

131:                                              ; preds = %126
  br i1 %130, label %132, label %136

132:                                              ; preds = %131
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %134 = load i64, ptr %133, align 8, !tbaa !57
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  br label %147

136:                                              ; preds = %131
  %137 = load i64, ptr %129, align 8, !tbaa !58
  %138 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %138) #23
  br label %147

139:                                              ; preds = %126
  br i1 %130, label %140, label %144

140:                                              ; preds = %139
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %142 = load i64, ptr %141, align 8, !tbaa !57
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %139
  %145 = load i64, ptr %129, align 8, !tbaa !58
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %146) #23
  br label %147

147:                                              ; preds = %132, %136, %144, %140, %124
  %148 = phi { ptr, i32 } [ %125, %124 ], [ %127, %140 ], [ %127, %144 ], [ %127, %136 ], [ %127, %132 ]
  %149 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %150 = trunc nuw i8 %149 to i1
  store i8 0, ptr %4, align 8, !tbaa !66
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %153 = load ptr, ptr %152, align 8, !tbaa !59
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %158 = load i64, ptr %157, align 8, !tbaa !57
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %163

160:                                              ; preds = %151
  %161 = load i64, ptr %154, align 8, !tbaa !58
  %162 = add i64 %161, 1
  call void @_ZdlPvm(ptr noundef %153, i64 noundef %162) #23
  br label %163

163:                                              ; preds = %147, %156, %160
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  resume { ptr, i32 } %148
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1533sys__native_channel_try_recv_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi i32 [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %25
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi double [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret double %25
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1523sys__native_channel_lenEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp ne ptr %16, null
  %24 = sext i1 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = mul nsw i64 %25, 10
  %27 = load ptr, ptr %13, align 8, !tbaa !86
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 48
  %34 = add nsw i64 %26, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = load ptr, ptr %14, align 8, !tbaa !86
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 48
  %42 = add nsw i64 %34, %41
  %43 = icmp ult i64 %42, 384307168202282326
  tail call void @llvm.assume(i1 %43)
  %44 = trunc i64 %42 to i32
  %45 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %46

46:                                               ; preds = %1, %3, %12
  %47 = phi i32 [ %44, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %47
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1525sys__native_channel_closeEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %13, align 8, !tbaa !45
  %14 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %15) #15
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #15
  br label %17

17:                                               ; preds = %1, %3, %12
  %18 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_is_closedEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %14 = load i8, ptr %13, align 8, !tbaa !45, !range !17, !noundef !18
  %15 = zext nneg i8 %14 to i32
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %17

17:                                               ; preds = %1, %3, %12
  %18 = phi i32 [ %15, %12 ], [ 1, %1 ], [ 1, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_mutex_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %13, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %1, %3, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_try_lock(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 8, !tbaa !12
  %13 = zext i1 %10 to i32
  br label %14

14:                                               ; preds = %1, %3, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_unlock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !12, !range !17, !noundef !18
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !12
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_condvar_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %5, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_condvar_wait_ms(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_channel_bounded(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN32__apollo_inline_inline_2783_5_1527sys__native_channel_boundedEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_channel_unbounded() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_unboundedEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !57
  store i8 0, ptr %9, align 8, !tbaa !58
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %12 unwind label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8, !tbaa !57
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %32

18:                                               ; preds = %12
  %19 = load i64, ptr %9, align 8, !tbaa !58
  %20 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %20) #23
  br label %32

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %10, align 8, !tbaa !57
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %21
  %29 = load i64, ptr %9, align 8, !tbaa !58
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %30) #23
  br label %31

31:                                               ; preds = %28, %25
  resume { ptr, i32 } %22

32:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !54
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !57
  store i8 0, ptr %9, align 8, !tbaa !58
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %12 unwind label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !59
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8, !tbaa !57
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %32

18:                                               ; preds = %12
  %19 = load i64, ptr %9, align 8, !tbaa !58
  %20 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %20) #23
  br label %32

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, %9
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %10, align 8, !tbaa !57
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %21
  %29 = load i64, ptr %9, align 8, !tbaa !58
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %30) #23
  br label %31

31:                                               ; preds = %28, %25
  resume { ptr, i32 } %22

32:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !54
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !57
  store i8 0, ptr %7, align 8, !tbaa !58
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %8, align 8, !tbaa !57
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %30

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !58
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %18) #23
  br label %30

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load ptr, ptr %6, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %8, align 8, !tbaa !57
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %19
  %27 = load i64, ptr %7, align 8, !tbaa !58
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %28) #23
  br label %29

29:                                               ; preds = %26, %23
  resume { ptr, i32 } %20

30:                                               ; preds = %13, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_recv_i32(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi i32 [ %11, %16 ], [ %11, %20 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret i32 %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_channel_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_recv_bool(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi i32 [ %11, %16 ], [ %11, %20 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret i32 %24
}

; Function Attrs: mustprogress uwtable
define dso_local double @sys__native_channel_recv_f64(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !66, !range !17, !noundef !18
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  store i8 0, ptr %3, align 8, !tbaa !66
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !57
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %23

20:                                               ; preds = %6
  %21 = load i64, ptr %14, align 8, !tbaa !58
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %1, %16, %20
  %24 = phi double [ %11, %16 ], [ %11, %20 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret double %24
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_try_recv_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi i32 [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %25
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_channel_try_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_try_recv_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi i32 [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 %25
}

; Function Attrs: mustprogress uwtable
define dso_local double @sys__native_channel_try_recv_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !17, !noundef !18
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  store i8 0, ptr %4, align 8, !tbaa !66
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %7
  %22 = load i64, ptr %15, align 8, !tbaa !58
  %23 = add i64 %22, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #23
  br label %24

24:                                               ; preds = %2, %17, %21
  %25 = phi double [ %12, %17 ], [ %12, %21 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret double %25
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_len(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp ne ptr %16, null
  %24 = sext i1 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = mul nsw i64 %25, 10
  %27 = load ptr, ptr %13, align 8, !tbaa !86
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 48
  %34 = add nsw i64 %26, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  %37 = load ptr, ptr %14, align 8, !tbaa !86
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 48
  %42 = add nsw i64 %34, %41
  %43 = icmp ult i64 %42, 384307168202282326
  tail call void @llvm.assume(i1 %43)
  %44 = trunc i64 %42 to i32
  %45 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %46

46:                                               ; preds = %1, %3, %12
  %47 = phi i32 [ %44, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %47
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_close(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %13, align 8, !tbaa !45
  %14 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %15) #15
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #15
  br label %17

17:                                               ; preds = %1, %3, %12
  %18 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_is_closed(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZSt20__throw_system_errori(i32 noundef %9) #22
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %14 = load i8, ptr %13, align 8, !tbaa !45, !range !17, !noundef !18
  %15 = zext nneg i8 %14 to i32
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %17

17:                                               ; preds = %1, %3, %12
  %18 = phi i32 [ %15, %12 ], [ 1, %1 ], [ 1, %3 ]
  ret i32 %18
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib12mutex_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14condvar_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14condvar_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14channel_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14channel_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 248) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = udiv i64 %1, 10
  %4 = urem i64 %1, 10
  %5 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %6 = add nuw nsw i64 %5, 3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %7, align 8, !tbaa !89
  %8 = icmp ugt i64 %1, -6917529027641081887
  br i1 %8, label %9, label %10, !prof !90

9:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

10:                                               ; preds = %2
  %11 = add nuw nsw i64 %3, 1
  %12 = shl nuw nsw i64 %6, 3
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #21
  store ptr %13, ptr %0, align 8, !tbaa !91
  %14 = sub nsw i64 %6, %11
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds nuw ptr, ptr %13, i64 %15
  %17 = shl nuw nsw i64 %11, 3
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  br label %19

19:                                               ; preds = %10, %22
  %20 = phi ptr [ %23, %22 ], [ %16, %10 ]
  %21 = invoke noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #21
          to label %22 unwind label %25

22:                                               ; preds = %19
  store ptr %21, ptr %20, align 8, !tbaa !92
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %24 = icmp ult ptr %23, %18
  br i1 %24, label %19, label %51, !llvm.loop !93

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = tail call ptr @__cxa_begin_catch(ptr %27) #15
  %29 = icmp ult ptr %16, %20
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %16, %25 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef 480) #23
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %34 = icmp ult ptr %33, %20
  br i1 %34, label %30, label %35, !llvm.loop !94

35:                                               ; preds = %30, %25
  invoke void @__cxa_rethrow() #25
          to label %41 unwind label %36

36:                                               ; preds = %35
  %37 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %42 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #24
  unreachable

41:                                               ; preds = %35
  unreachable

42:                                               ; preds = %36
  %43 = extractvalue { ptr, i32 } %37, 0
  %44 = tail call ptr @__cxa_begin_catch(ptr %43) #15
  %45 = load ptr, ptr %0, align 8, !tbaa !91
  %46 = load i64, ptr %7, align 8, !tbaa !89
  %47 = shl i64 %46, 3
  tail call void @_ZdlPvm(ptr noundef %45, i64 noundef %47) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %69 unwind label %48

48:                                               ; preds = %42
  %49 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %50 unwind label %66

50:                                               ; preds = %48
  resume { ptr, i32 } %49

51:                                               ; preds = %22
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %16, ptr %53, align 8, !tbaa !85
  %54 = load ptr, ptr %16, align 8, !tbaa !92
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %54, ptr %55, align 8, !tbaa !87
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 480
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !88
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = getelementptr inbounds i8, ptr %18, i64 -8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %59, ptr %60, align 8, !tbaa !85
  %61 = load ptr, ptr %59, align 8, !tbaa !92
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %61, ptr %62, align 8, !tbaa !87
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 480
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %63, ptr %64, align 8, !tbaa !88
  store ptr %54, ptr %52, align 8, !tbaa !95
  %65 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %61, i64 %4
  store ptr %65, ptr %58, align 8, !tbaa !96
  ret void

66:                                               ; preds = %48
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #24
  unreachable

69:                                               ; preds = %42
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !92, !noalias !97
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !92
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !100, !noalias !97
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !100
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !92, !noalias !101
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !92
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !100, !noalias !101
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !100
  invoke void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !104
  %21 = load ptr, ptr %9, align 8, !tbaa !105
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 480) #23
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !94

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !91
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !89
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #23
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !85
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %139
  %11 = load ptr, ptr %4, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %141, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !86
  br i1 %15, label %184, label %143

17:                                               ; preds = %3, %139
  %18 = phi ptr [ %140, %139 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %26 = load i64, ptr %25, align 8, !tbaa !57
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %17
  %29 = load i64, ptr %22, align 8, !tbaa !58
  %30 = add i64 %29, 1
  tail call void @_ZdlPvm(ptr noundef %21, i64 noundef %30) #23
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %34, align 8, !tbaa !58
  %38 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %33, i64 noundef %38) #23
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %41 = load i64, ptr %40, align 8, !tbaa !57
  %42 = icmp ult i64 %41, 16
  tail call void @llvm.assume(i1 %42)
  br label %43

43:                                               ; preds = %39, %36
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %46, align 8, !tbaa !58
  %50 = add i64 %49, 1
  tail call void @_ZdlPvm(ptr noundef %45, i64 noundef %50) #23
  br label %55

51:                                               ; preds = %43
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 120
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp ult i64 %53, 16
  tail call void @llvm.assume(i1 %54)
  br label %55

55:                                               ; preds = %51, %48
  %56 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %57 = load ptr, ptr %56, align 8, !tbaa !59
  %58 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %58, align 8, !tbaa !58
  %62 = add i64 %61, 1
  tail call void @_ZdlPvm(ptr noundef %57, i64 noundef %62) #23
  br label %67

63:                                               ; preds = %55
  %64 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %65 = load i64, ptr %64, align 8, !tbaa !57
  %66 = icmp ult i64 %65, 16
  tail call void @llvm.assume(i1 %66)
  br label %67

67:                                               ; preds = %63, %60
  %68 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  %70 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i64, ptr %70, align 8, !tbaa !58
  %74 = add i64 %73, 1
  tail call void @_ZdlPvm(ptr noundef %69, i64 noundef %74) #23
  br label %79

75:                                               ; preds = %67
  %76 = getelementptr inbounds nuw i8, ptr %19, i64 216
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp ult i64 %77, 16
  tail call void @llvm.assume(i1 %78)
  br label %79

79:                                               ; preds = %75, %72
  %80 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %81 = load ptr, ptr %80, align 8, !tbaa !59
  %82 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %82, align 8, !tbaa !58
  %86 = add i64 %85, 1
  tail call void @_ZdlPvm(ptr noundef %81, i64 noundef %86) #23
  br label %91

87:                                               ; preds = %79
  %88 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %89 = load i64, ptr %88, align 8, !tbaa !57
  %90 = icmp ult i64 %89, 16
  tail call void @llvm.assume(i1 %90)
  br label %91

91:                                               ; preds = %87, %84
  %92 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %93 = load ptr, ptr %92, align 8, !tbaa !59
  %94 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i64, ptr %94, align 8, !tbaa !58
  %98 = add i64 %97, 1
  tail call void @_ZdlPvm(ptr noundef %93, i64 noundef %98) #23
  br label %103

99:                                               ; preds = %91
  %100 = getelementptr inbounds nuw i8, ptr %19, i64 312
  %101 = load i64, ptr %100, align 8, !tbaa !57
  %102 = icmp ult i64 %101, 16
  tail call void @llvm.assume(i1 %102)
  br label %103

103:                                              ; preds = %99, %96
  %104 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i64, ptr %106, align 8, !tbaa !58
  %110 = add i64 %109, 1
  tail call void @_ZdlPvm(ptr noundef %105, i64 noundef %110) #23
  br label %115

111:                                              ; preds = %103
  %112 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %113 = load i64, ptr %112, align 8, !tbaa !57
  %114 = icmp ult i64 %113, 16
  tail call void @llvm.assume(i1 %114)
  br label %115

115:                                              ; preds = %111, %108
  %116 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %117 = load ptr, ptr %116, align 8, !tbaa !59
  %118 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i64, ptr %118, align 8, !tbaa !58
  %122 = add i64 %121, 1
  tail call void @_ZdlPvm(ptr noundef %117, i64 noundef %122) #23
  br label %127

123:                                              ; preds = %115
  %124 = getelementptr inbounds nuw i8, ptr %19, i64 408
  %125 = load i64, ptr %124, align 8, !tbaa !57
  %126 = icmp ult i64 %125, 16
  tail call void @llvm.assume(i1 %126)
  br label %127

127:                                              ; preds = %123, %120
  %128 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load i64, ptr %130, align 8, !tbaa !58
  %134 = add i64 %133, 1
  tail call void @_ZdlPvm(ptr noundef %129, i64 noundef %134) #23
  br label %139

135:                                              ; preds = %127
  %136 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %137 = load i64, ptr %136, align 8, !tbaa !57
  %138 = icmp ult i64 %137, 16
  tail call void @llvm.assume(i1 %138)
  br label %139

139:                                              ; preds = %135, %132
  %140 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %141 = load ptr, ptr %6, align 8, !tbaa !85
  %142 = icmp ult ptr %140, %141
  br i1 %142, label %17, label %10, !llvm.loop !106

143:                                              ; preds = %12
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %145 = load ptr, ptr %144, align 8, !tbaa !88
  %146 = icmp eq ptr %16, %145
  br i1 %146, label %163, label %147

147:                                              ; preds = %143, %160
  %148 = phi ptr [ %161, %160 ], [ %16, %143 ]
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !59
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 32
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 24
  %155 = load i64, ptr %154, align 8, !tbaa !57
  %156 = icmp ult i64 %155, 16
  tail call void @llvm.assume(i1 %156)
  br label %160

157:                                              ; preds = %147
  %158 = load i64, ptr %151, align 8, !tbaa !58
  %159 = add i64 %158, 1
  tail call void @_ZdlPvm(ptr noundef %150, i64 noundef %159) #23
  br label %160

160:                                              ; preds = %157, %153
  %161 = getelementptr inbounds nuw i8, ptr %148, i64 48
  %162 = icmp eq ptr %161, %145
  br i1 %162, label %163, label %147, !llvm.loop !107

163:                                              ; preds = %160, %143
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %165 = load ptr, ptr %164, align 8, !tbaa !87
  %166 = load ptr, ptr %2, align 8, !tbaa !86
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %203, label %168

168:                                              ; preds = %163, %181
  %169 = phi ptr [ %182, %181 ], [ %165, %163 ]
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %171 = load ptr, ptr %170, align 8, !tbaa !59
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %173 = icmp eq ptr %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = getelementptr inbounds nuw i8, ptr %169, i64 24
  %176 = load i64, ptr %175, align 8, !tbaa !57
  %177 = icmp ult i64 %176, 16
  tail call void @llvm.assume(i1 %177)
  br label %181

178:                                              ; preds = %168
  %179 = load i64, ptr %172, align 8, !tbaa !58
  %180 = add i64 %179, 1
  tail call void @_ZdlPvm(ptr noundef %171, i64 noundef %180) #23
  br label %181

181:                                              ; preds = %178, %174
  %182 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %183 = icmp eq ptr %182, %166
  br i1 %183, label %203, label %168, !llvm.loop !107

184:                                              ; preds = %12
  %185 = load ptr, ptr %2, align 8, !tbaa !86
  %186 = icmp eq ptr %16, %185
  br i1 %186, label %203, label %187

187:                                              ; preds = %184, %200
  %188 = phi ptr [ %201, %200 ], [ %16, %184 ]
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = load ptr, ptr %189, align 8, !tbaa !59
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = getelementptr inbounds nuw i8, ptr %188, i64 24
  %195 = load i64, ptr %194, align 8, !tbaa !57
  %196 = icmp ult i64 %195, 16
  tail call void @llvm.assume(i1 %196)
  br label %200

197:                                              ; preds = %187
  %198 = load i64, ptr %191, align 8, !tbaa !58
  %199 = add i64 %198, 1
  tail call void @_ZdlPvm(ptr noundef %190, i64 noundef %199) #23
  br label %200

200:                                              ; preds = %197, %193
  %201 = getelementptr inbounds nuw i8, ptr %188, i64 48
  %202 = icmp eq ptr %201, %185
  br i1 %202, label %203, label %187, !llvm.loop !107

203:                                              ; preds = %181, %200, %184, %163
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %176, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %176

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !24
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @_ZSt20__throw_system_errori(i32 noundef %13) #22
  unreachable

16:                                               ; preds = %10
  store i8 1, ptr %12, align 8, !tbaa !28
  br i1 %2, label %17, label %79

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %20 = load i64, ptr %19, align 8, !tbaa !35
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %30

30:                                               ; preds = %22, %62
  %31 = phi i64 [ %63, %62 ], [ %20, %22 ]
  %32 = load ptr, ptr %25, align 8, !tbaa !85
  %33 = load ptr, ptr %26, align 8, !tbaa !85
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ne ptr %32, null
  %39 = sext i1 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = mul nsw i64 %40, 10
  %42 = load ptr, ptr %23, align 8, !tbaa !86
  %43 = load ptr, ptr %27, align 8, !tbaa !87
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 48
  %48 = add nsw i64 %41, %47
  %49 = load ptr, ptr %28, align 8, !tbaa !88
  %50 = load ptr, ptr %24, align 8, !tbaa !86
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 48
  %55 = add nsw i64 %48, %54
  %56 = icmp ult i64 %55, 384307168202282326
  call void @llvm.assume(i1 %56)
  %57 = icmp ult i64 %55, %31
  br i1 %57, label %120, label %58

58:                                               ; preds = %30
  %59 = load i8, ptr %29, align 8, !tbaa !45, !range !17, !noundef !18
  %60 = trunc nuw i8 %59 to i1
  br i1 %60, label %120, label %61

61:                                               ; preds = %58
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %62 unwind label %65

62:                                               ; preds = %61
  %63 = load i64, ptr %19, align 8, !tbaa !35
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %120, label %30, !llvm.loop !108

65:                                               ; preds = %61
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %152, %157
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %66, %65 ], [ %68, %67 ]
  %71 = load i8, ptr %12, align 8, !tbaa !28, !range !17, !noundef !18
  %72 = trunc nuw i8 %71 to i1
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load ptr, ptr %4, align 8, !tbaa !24
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %74) #15
  br label %78

78:                                               ; preds = %69, %73, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %70

79:                                               ; preds = %16
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %81 = load i64, ptr %80, align 8, !tbaa !35
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %120, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %87 = load ptr, ptr %86, align 8, !tbaa !85
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %89 = load ptr, ptr %88, align 8, !tbaa !85
  %90 = ptrtoint ptr %87 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp ne ptr %87, null
  %95 = sext i1 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = mul nsw i64 %96, 10
  %98 = load ptr, ptr %84, align 8, !tbaa !86
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %100 = load ptr, ptr %99, align 8, !tbaa !87
  %101 = ptrtoint ptr %98 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 48
  %105 = add nsw i64 %97, %104
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %107 = load ptr, ptr %106, align 8, !tbaa !88
  %108 = load ptr, ptr %85, align 8, !tbaa !86
  %109 = ptrtoint ptr %107 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 48
  %113 = add nsw i64 %105, %112
  %114 = icmp ult i64 %113, 384307168202282326
  tail call void @llvm.assume(i1 %114)
  %115 = icmp ult i64 %113, %81
  br i1 %115, label %120, label %116

116:                                              ; preds = %83
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %118 = load i8, ptr %117, align 8, !tbaa !45, !range !17, !noundef !18
  %119 = trunc nuw i8 %118 to i1
  br i1 %119, label %120, label %166

120:                                              ; preds = %62, %58, %30, %79, %83, %17, %116
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %122 = load i8, ptr %121, align 8, !tbaa !45, !range !17, !noundef !18
  %123 = trunc nuw i8 %122 to i1
  br i1 %123, label %166, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %126 = load ptr, ptr %125, align 8, !tbaa !96
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %128 = load ptr, ptr %127, align 8, !tbaa !109
  %129 = getelementptr inbounds i8, ptr %128, i64 -48
  %130 = icmp eq ptr %126, %129
  br i1 %130, label %152, label %131

131:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %126, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %132 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %134 = getelementptr inbounds nuw i8, ptr %126, i64 32
  store ptr %134, ptr %132, align 8, !tbaa !56
  %135 = load ptr, ptr %133, align 8, !tbaa !59
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %140 = load i64, ptr %139, align 8, !tbaa !57
  %141 = icmp ult i64 %140, 16
  call void @llvm.assume(i1 %141)
  %142 = add nuw nsw i64 %140, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %134, ptr noundef nonnull align 8 dereferenceable(1) %136, i64 %142, i1 false)
  br label %145

143:                                              ; preds = %131
  store ptr %135, ptr %132, align 8, !tbaa !59
  %144 = load i64, ptr %136, align 8, !tbaa !58
  store i64 %144, ptr %134, align 8, !tbaa !58
  br label %145

145:                                              ; preds = %143, %138
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %147 = load i64, ptr %146, align 8, !tbaa !57
  %148 = icmp ult i64 %147, 9223372036854775807
  call void @llvm.assume(i1 %148)
  %149 = getelementptr inbounds nuw i8, ptr %126, i64 24
  store i64 %147, ptr %149, align 8, !tbaa !57
  store ptr %136, ptr %133, align 8, !tbaa !59
  store i64 0, ptr %146, align 8, !tbaa !57
  store i8 0, ptr %136, align 1, !tbaa !58
  %150 = load ptr, ptr %125, align 8, !tbaa !96
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 48
  store ptr %151, ptr %125, align 8, !tbaa !96
  br label %154

152:                                              ; preds = %124
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %153, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %154 unwind label %67

154:                                              ; preds = %145, %152
  %155 = load i8, ptr %12, align 8, !tbaa !28, !range !17, !noundef !18
  %156 = trunc nuw i8 %155 to i1
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #22
          to label %158 unwind label %67

158:                                              ; preds = %157
  unreachable

159:                                              ; preds = %154
  %160 = load ptr, ptr %4, align 8, !tbaa !24
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %160) #15
  store i8 0, ptr %12, align 8, !tbaa !28
  br label %164

164:                                              ; preds = %162, %159
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %165) #15
  br label %166

166:                                              ; preds = %120, %116, %164
  %167 = phi i32 [ 1, %164 ], [ 0, %116 ], [ 0, %120 ]
  %168 = load i8, ptr %12, align 8, !tbaa !28, !range !17, !noundef !18
  %169 = trunc nuw i8 %168 to i1
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load ptr, ptr %4, align 8, !tbaa !24
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %171) #15
  br label %175

175:                                              ; preds = %166, %170, %173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %176

176:                                              ; preds = %6, %3, %175
  %177 = phi i32 [ %167, %175 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %177
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = mul nsw i64 %15, 10
  %17 = load ptr, ptr %3, align 8, !tbaa !86
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 48
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = load ptr, ptr %4, align 8, !tbaa !86
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 48
  %32 = add nsw i64 %24, %31
  %33 = icmp ult i64 %32, 384307168202282326
  tail call void @llvm.assume(i1 %33)
  %34 = icmp eq i64 %32, 384307168202282325
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !89
  %39 = load ptr, ptr %0, align 8, !tbaa !91
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !105
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #21
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !92
  %51 = load ptr, ptr %3, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %54, ptr %52, align 8, !tbaa !56
  %55 = load ptr, ptr %53, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i64, ptr %59, align 8, !tbaa !57
  %61 = icmp ult i64 %60, 16
  tail call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %65

63:                                               ; preds = %47
  store ptr %55, ptr %52, align 8, !tbaa !59
  %64 = load i64, ptr %56, align 8, !tbaa !58
  store i64 %64, ptr %54, align 8, !tbaa !58
  br label %65

65:                                               ; preds = %58, %63
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %67 = load i64, ptr %66, align 8, !tbaa !57
  %68 = icmp ult i64 %67, 9223372036854775807
  tail call void @llvm.assume(i1 %68)
  %69 = getelementptr inbounds nuw i8, ptr %51, i64 24
  store i64 %67, ptr %69, align 8, !tbaa !57
  store ptr %56, ptr %53, align 8, !tbaa !59
  store i64 0, ptr %66, align 8, !tbaa !57
  store i8 0, ptr %56, align 8, !tbaa !58
  %70 = load ptr, ptr %5, align 8, !tbaa !105
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr %71, ptr %5, align 8, !tbaa !85
  %72 = load ptr, ptr %71, align 8, !tbaa !92
  store ptr %72, ptr %18, align 8, !tbaa !87
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 480
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %73, ptr %74, align 8, !tbaa !88
  store ptr %72, ptr %3, align 8, !tbaa !96
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !89
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !91
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
  br i1 %30, label %31, label %32, !prof !110

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !92
  store ptr %35, ptr %24, align 8, !tbaa !92
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !111

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !92
  store ptr %48, ptr %42, align 8, !tbaa !92
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 76861433640456467
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #21
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !110

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !92
  store ptr %69, ptr %60, align 8, !tbaa !92
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !91
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #23
  store ptr %55, ptr %0, align 8, !tbaa !91
  store i64 %52, ptr %14, align 8, !tbaa !89
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !85
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !87
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 480
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !88
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !85
  %81 = load ptr, ptr %80, align 8, !tbaa !92
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !87
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 480
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %13, label %11

11:                                               ; preds = %3, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %12, align 8, !tbaa !66
  br label %176

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %14, ptr %4, align 8, !tbaa !24
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %14) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @_ZSt20__throw_system_errori(i32 noundef %16) #22
  unreachable

19:                                               ; preds = %13
  store i8 1, ptr %15, align 8, !tbaa !28
  br i1 %2, label %20, label %41

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %24 = load ptr, ptr %22, align 8, !tbaa !86
  %25 = load ptr, ptr %23, align 8, !tbaa !86
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %20
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %29 = load i8, ptr %28, align 8, !tbaa !45, !range !17, !noundef !18
  %30 = trunc nuw i8 %29 to i1
  br i1 %30, label %54, label %34

31:                                               ; preds = %35
  %32 = load i8, ptr %28, align 8, !tbaa !45, !range !17, !noundef !18
  %33 = trunc nuw i8 %32 to i1
  br i1 %33, label %54, label %34, !llvm.loop !112

34:                                               ; preds = %27, %31
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %35 unwind label %39

35:                                               ; preds = %34
  %36 = load ptr, ptr %22, align 8, !tbaa !86
  %37 = load ptr, ptr %23, align 8, !tbaa !86
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %31, label %53, !llvm.loop !112

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %166

41:                                               ; preds = %19
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %44 = load ptr, ptr %42, align 8, !tbaa !86
  %45 = load ptr, ptr %43, align 8, !tbaa !86
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %49 = load i8, ptr %48, align 8, !tbaa !45, !range !17, !noundef !18
  %50 = trunc nuw i8 %49 to i1
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %52, align 8, !tbaa !66
  br label %157

53:                                               ; preds = %35
  br label %54, !llvm.loop !112

54:                                               ; preds = %31, %27, %53, %41, %20, %47
  %55 = phi ptr [ %45, %41 ], [ %25, %20 ], [ %45, %47 ], [ %37, %53 ], [ %25, %27 ], [ %37, %31 ]
  %56 = phi ptr [ %44, %41 ], [ %24, %20 ], [ %44, %47 ], [ %36, %53 ], [ %24, %27 ], [ %36, %31 ]
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %58 = icmp eq ptr %56, %55
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %60, align 8, !tbaa !66
  br label %157

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %55, i64 16, i1 false)
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %63 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %64, ptr %62, align 8, !tbaa !56
  %65 = load ptr, ptr %63, align 8, !tbaa !59
  %66 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw i8, ptr %55, i64 24
  %70 = load i64, ptr %69, align 8, !tbaa !57
  %71 = icmp ult i64 %70, 16
  call void @llvm.assume(i1 %71)
  %72 = add nuw nsw i64 %70, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %64, ptr noundef nonnull align 8 dereferenceable(1) %66, i64 %72, i1 false)
  br label %75

73:                                               ; preds = %61
  store ptr %65, ptr %62, align 8, !tbaa !59
  %74 = load i64, ptr %66, align 8, !tbaa !58
  store i64 %74, ptr %64, align 8, !tbaa !58
  br label %75

75:                                               ; preds = %68, %73
  %76 = getelementptr inbounds nuw i8, ptr %55, i64 24
  %77 = load i64, ptr %76, align 8, !tbaa !57
  %78 = icmp ult i64 %77, 9223372036854775807
  call void @llvm.assume(i1 %78)
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %77, ptr %79, align 8, !tbaa !57
  store ptr %66, ptr %63, align 8, !tbaa !59
  store i64 0, ptr %76, align 8, !tbaa !57
  store i8 0, ptr %66, align 1, !tbaa !58
  %80 = load ptr, ptr %57, align 8, !tbaa !95
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %82 = load ptr, ptr %81, align 8, !tbaa !113
  %83 = getelementptr inbounds i8, ptr %82, i64 -48
  %84 = icmp eq ptr %80, %83
  %85 = getelementptr inbounds nuw i8, ptr %80, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !59
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %88 = icmp eq ptr %86, %87
  br i1 %84, label %101, label %89

89:                                               ; preds = %75
  br i1 %88, label %90, label %94

90:                                               ; preds = %89
  %91 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %92 = load i64, ptr %91, align 8, !tbaa !57
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %98

94:                                               ; preds = %89
  %95 = load i64, ptr %87, align 8, !tbaa !58
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %96) #23
  %97 = load ptr, ptr %57, align 8, !tbaa !95
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi ptr [ %80, %90 ], [ %97, %94 ]
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 48
  br label %117

101:                                              ; preds = %75
  br i1 %88, label %102, label %106

102:                                              ; preds = %101
  %103 = getelementptr inbounds nuw i8, ptr %80, i64 24
  %104 = load i64, ptr %103, align 8, !tbaa !57
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %101
  %107 = load i64, ptr %87, align 8, !tbaa !58
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %108) #23
  br label %109

109:                                              ; preds = %106, %102
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %111 = load ptr, ptr %110, align 8, !tbaa !114
  call void @_ZdlPvm(ptr noundef %111, i64 noundef 480) #23
  %112 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %113 = load ptr, ptr %112, align 8, !tbaa !104
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 8
  store ptr %114, ptr %112, align 8, !tbaa !85
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  store ptr %115, ptr %110, align 8, !tbaa !87
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 480
  store ptr %116, ptr %81, align 8, !tbaa !88
  br label %117

117:                                              ; preds = %98, %109
  %118 = phi ptr [ %100, %98 ], [ %115, %109 ]
  store ptr %118, ptr %57, align 8, !tbaa !95
  %119 = load i8, ptr %15, align 8, !tbaa !28, !range !17, !noundef !18
  %120 = trunc nuw i8 %119 to i1
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #22
          to label %122 unwind label %146

122:                                              ; preds = %121
  unreachable

123:                                              ; preds = %117
  %124 = load ptr, ptr %4, align 8, !tbaa !24
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %124) #15
  store i8 0, ptr %15, align 8, !tbaa !28
  br label %128

128:                                              ; preds = %126, %123
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %129) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 16, i1 false)
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %131, ptr %130, align 8, !tbaa !56
  %132 = load ptr, ptr %62, align 8, !tbaa !59
  %133 = icmp eq ptr %132, %64
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, ptr %79, align 8, !tbaa !57
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  %137 = add nuw nsw i64 %135, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %131, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %137, i1 false)
  br label %141

138:                                              ; preds = %128
  store ptr %132, ptr %130, align 8, !tbaa !59
  %139 = load i64, ptr %64, align 8, !tbaa !58
  store i64 %139, ptr %131, align 8, !tbaa !58
  %140 = load i64, ptr %79, align 8, !tbaa !57
  br label %141

141:                                              ; preds = %134, %138
  %142 = phi i64 [ %135, %134 ], [ %140, %138 ]
  %143 = icmp ult i64 %142, 9223372036854775807
  call void @llvm.assume(i1 %143)
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %142, ptr %144, align 8, !tbaa !57
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %145, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %157

146:                                              ; preds = %121
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = load ptr, ptr %62, align 8, !tbaa !59
  %149 = icmp eq ptr %148, %64
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i64, ptr %79, align 8, !tbaa !57
  %152 = icmp ult i64 %151, 16
  call void @llvm.assume(i1 %152)
  br label %156

153:                                              ; preds = %146
  %154 = load i64, ptr %64, align 8, !tbaa !58
  %155 = add i64 %154, 1
  call void @_ZdlPvm(ptr noundef %148, i64 noundef %155) #23
  br label %156

156:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  br label %166

157:                                              ; preds = %141, %59, %51
  %158 = load i8, ptr %15, align 8, !tbaa !28, !range !17, !noundef !18
  %159 = trunc nuw i8 %158 to i1
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load ptr, ptr %4, align 8, !tbaa !24
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %161) #15
  br label %165

165:                                              ; preds = %157, %160, %163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %176

166:                                              ; preds = %156, %39
  %167 = phi { ptr, i32 } [ %147, %156 ], [ %40, %39 ]
  %168 = load i8, ptr %15, align 8, !tbaa !28, !range !17, !noundef !18
  %169 = trunc nuw i8 %168 to i1
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load ptr, ptr %4, align 8, !tbaa !24
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %171) #15
  br label %175

175:                                              ; preds = %166, %170, %173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %167

176:                                              ; preds = %165, %11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator.19", align 16
  %3 = alloca %"struct.std::_Deque_iterator.19", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !81, !noalias !115
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !81
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !100, !noalias !115
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !100
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !81, !noalias !118
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !81
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !100, !noalias !118
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !100
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !121
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !122
  %21 = load ptr, ptr %9, align 8, !tbaa !123
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #23
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !124

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !121
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !125
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #23
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !125
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !90

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #21
  store ptr %12, ptr %0, align 8, !tbaa !121
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !81
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !126

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #15
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #23
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !124

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %39) #24
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #15
  %44 = load ptr, ptr %0, align 8, !tbaa !121
  %45 = load i64, ptr %6, align 8, !tbaa !125
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
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
  store ptr %15, ptr %52, align 8, !tbaa !80
  %53 = load ptr, ptr %15, align 8, !tbaa !81
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !79
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !127
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !80
  %60 = load ptr, ptr %58, align 8, !tbaa !81
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !79
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !127
  store ptr %53, ptr %51, align 8, !tbaa !128
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !69
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #24
  unreachable

69:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !80
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !75
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !57
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !58
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #23
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !58
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #23
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !57
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !58
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #23
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !57
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !58
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #23
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !57
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !58
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #23
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !57
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !59
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !58
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #23
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !57
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !58
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #23
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !57
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !59
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !58
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #23
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !57
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !59
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !58
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #23
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !57
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !59
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !58
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #23
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !57
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !59
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !58
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #23
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !57
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !59
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !58
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #23
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !57
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !59
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !58
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #23
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !57
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !59
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !58
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #23
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !57
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !59
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !58
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #23
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !57
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !59
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !58
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #23
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !57
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !80
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !129

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !127
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !59
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !57
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !58
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #23
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !130

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !79
  %236 = load ptr, ptr %2, align 8, !tbaa !75
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !59
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !57
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !58
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #23
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !130

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !75
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !59
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !57
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !58
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #23
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !130

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !75
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !127
  %27 = load ptr, ptr %4, align 8, !tbaa !75
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !125
  %39 = load ptr, ptr %0, align 8, !tbaa !121
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !123
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !81
  %51 = load ptr, ptr %3, align 8, !tbaa !69
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !56
  %53 = load ptr, ptr %1, align 8, !tbaa !59
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !57
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !59
  %62 = load i64, ptr %54, align 8, !tbaa !58
  store i64 %62, ptr %52, align 8, !tbaa !58
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !57
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !57
  store ptr %54, ptr %1, align 8, !tbaa !59
  store i64 0, ptr %64, align 8, !tbaa !57
  store i8 0, ptr %54, align 8, !tbaa !58
  %68 = load ptr, ptr %5, align 8, !tbaa !123
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !80
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  store ptr %70, ptr %18, align 8, !tbaa !79
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !127
  store ptr %70, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !125
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !121
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
  br i1 %30, label %31, label %32, !prof !110

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !81
  store ptr %35, ptr %24, align 8, !tbaa !81
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !111

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !81
  store ptr %48, ptr %42, align 8, !tbaa !81
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #21
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !110

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !81
  store ptr %69, ptr %60, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !121
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #23
  store ptr %55, ptr %0, align 8, !tbaa !121
  store i64 %52, ptr %14, align 8, !tbaa !125
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !80
  %75 = load ptr, ptr %74, align 8, !tbaa !81
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !79
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !127
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !80
  %81 = load ptr, ptr %80, align 8, !tbaa !81
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !79
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !127
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !7, i64 8}
!7 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !9, i64 0}
!12 = !{!13, !16, i64 56}
!13 = !{!"_ZTSN12__apo_stdlib12mutex_handleE", !6, i64 0, !14, i64 16, !16, i64 56}
!14 = !{!"_ZTSSt5mutex", !15, i64 0}
!15 = !{!"_ZTSSt12__mutex_base", !8, i64 0}
!16 = !{!"bool", !8, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!20, !23, i64 104}
!20 = !{!"_ZTSN12__apo_stdlib14condvar_handleE", !6, i64 0, !14, i64 16, !21, i64 56, !23, i64 104}
!21 = !{!"_ZTSSt18condition_variable", !22, i64 0}
!22 = !{!"_ZTSSt9__condvar", !8, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSSt11unique_lockISt5mutexE", !26, i64 0, !16, i64 8}
!26 = !{!"p1 _ZTSSt5mutex", !27, i64 0}
!27 = !{!"any pointer", !8, i64 0}
!28 = !{!25, !16, i64 8}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !23, i64 0}
!32 = !{!"_ZTS8timespec", !23, i64 0, !23, i64 8}
!33 = !{!32, !23, i64 8}
!34 = distinct !{!34, !30}
!35 = !{!36, !23, i64 232}
!36 = !{!"_ZTSN12__apo_stdlib14channel_handleE", !6, i64 0, !14, i64 16, !21, i64 56, !21, i64 104, !37, i64 152, !23, i64 232, !16, i64 240}
!37 = !{!"_ZTSSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE11_Deque_implE", !40, i64 0}
!40 = !{!"_ZTSNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE16_Deque_impl_dataE", !41, i64 0, !23, i64 8, !43, i64 16, !43, i64 48}
!41 = !{!"p2 _ZTSN12__apo_stdlib13channel_valueE", !42, i64 0}
!42 = !{!"any p2 pointer", !27, i64 0}
!43 = !{!"_ZTSSt15_Deque_iteratorIN12__apo_stdlib13channel_valueERS1_PS1_E", !44, i64 0, !44, i64 8, !44, i64 16, !41, i64 24}
!44 = !{!"p1 _ZTSN12__apo_stdlib13channel_valueE", !27, i64 0}
!45 = !{!36, !16, i64 240}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN12__apo_stdlib13channel_valueE", !48, i64 0, !49, i64 4, !50, i64 8, !51, i64 16}
!48 = !{!"_ZTSN12__apo_stdlib18channel_value_kindE", !8, i64 0}
!49 = !{!"int", !8, i64 0}
!50 = !{!"double", !8, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !23, i64 8, !8, i64 16}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!53 = !{!"p1 omnipotent char", !27, i64 0}
!54 = !{!47, !49, i64 4}
!55 = !{!47, !50, i64 8}
!56 = !{!52, !53, i64 0}
!57 = !{!51, !23, i64 8}
!58 = !{!8, !8, i64 0}
!59 = !{!51, !53, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!62 = distinct !{!62, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!65 = distinct !{!65, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!66 = !{!67, !16, i64 48}
!67 = !{!"_ZTSSt22_Optional_payload_baseIN12__apo_stdlib13channel_valueEE", !8, i64 0, !16, i64 48}
!68 = !{!"branch_weights", i32 1, i32 1023}
!69 = !{!70, !73, i64 48}
!70 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !71, i64 0, !23, i64 8, !72, i64 16, !72, i64 48}
!71 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0}
!72 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !73, i64 0, !73, i64 8, !73, i64 16, !71, i64 24}
!73 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!74 = !{!70, !73, i64 64}
!75 = !{!72, !73, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!78 = distinct !{!78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!79 = !{!72, !73, i64 8}
!80 = !{!72, !71, i64 24}
!81 = !{!73, !73, i64 0}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!84 = distinct !{!84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!85 = !{!43, !41, i64 24}
!86 = !{!43, !44, i64 0}
!87 = !{!43, !44, i64 8}
!88 = !{!43, !44, i64 16}
!89 = !{!40, !23, i64 8}
!90 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!91 = !{!40, !41, i64 0}
!92 = !{!44, !44, i64 0}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = !{!40, !44, i64 16}
!96 = !{!40, !44, i64 48}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE5beginEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE5beginEv"}
!100 = !{!27, !27, i64 0}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE3endEv: argument 0"}
!103 = distinct !{!103, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE3endEv"}
!104 = !{!40, !41, i64 40}
!105 = !{!40, !41, i64 72}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !30}
!109 = !{!40, !44, i64 64}
!110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!111 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!112 = distinct !{!112, !30}
!113 = !{!40, !44, i64 32}
!114 = !{!40, !44, i64 24}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!120 = distinct !{!120, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!121 = !{!70, !71, i64 0}
!122 = !{!70, !71, i64 40}
!123 = !{!70, !71, i64 72}
!124 = distinct !{!124, !30}
!125 = !{!70, !23, i64 8}
!126 = distinct !{!126, !30}
!127 = !{!72, !73, i64 16}
!128 = !{!70, !73, i64 16}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
