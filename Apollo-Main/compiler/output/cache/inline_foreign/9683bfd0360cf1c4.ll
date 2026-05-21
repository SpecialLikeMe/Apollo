; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/9683bfd0360cf1c4.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/9683bfd0360cf1c4.cpp"
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1521sys__native_mutex_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1522sys__native_mutex_lockEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  store i8 1, ptr %13, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %1, %3, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1526sys__native_mutex_try_lockEPv(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 8, !tbaa !14
  %13 = zext i1 %10 to i32
  br label %14

14:                                               ; preds = %1, %3, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1524sys__native_mutex_unlockEPv(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !14, !range !19, !noundef !20
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !14
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1523sys__native_condvar_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %5, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1527sys__native_condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = icmp eq i32 %8, 14
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !26
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @_ZSt20__throw_system_errori(i32 noundef %13) #22
  unreachable

16:                                               ; preds = %10
  store i8 1, ptr %12, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %18 = load i64, ptr %17, align 8, !tbaa !21
  %19 = icmp slt i32 %1, 0
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %19, label %21, label %25

21:                                               ; preds = %16, %22
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %22 unwind label %59

22:                                               ; preds = %21
  %23 = load i64, ptr %17, align 8, !tbaa !21
  %24 = icmp eq i64 %23, %18
  br i1 %24, label %21, label %48, !llvm.loop !31

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
  %35 = load i64, ptr %17, align 8, !tbaa !21
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i64 %31, ptr %3, align 8, !tbaa !33
  store i64 %33, ptr %30, align 8, !tbaa !35
  %38 = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %39 unwind label %46

39:                                               ; preds = %37
  %40 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %41 = icmp slt i64 %40, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %41, label %34, label %42, !llvm.loop !36

42:                                               ; preds = %39
  %43 = load i64, ptr %17, align 8, !tbaa !21
  %44 = icmp ne i64 %43, %18
  %45 = zext i1 %44 to i32
  br label %51

46:                                               ; preds = %37
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %63

48:                                               ; preds = %22
  %49 = load i8, ptr %12, align 8, !tbaa !30, !range !19
  %50 = trunc nuw i8 %49 to i1
  br i1 %50, label %51, label %57

51:                                               ; preds = %34, %42, %48
  %52 = phi i32 [ 1, %48 ], [ %45, %42 ], [ 1, %34 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !26
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %53) #15
  br label %57

57:                                               ; preds = %48, %51, %55
  %58 = phi i32 [ 1, %48 ], [ %52, %51 ], [ %52, %55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %71

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load i8, ptr %12, align 8, !tbaa !30, !range !19
  %62 = trunc nuw i8 %61 to i1
  br i1 %62, label %63, label %69

63:                                               ; preds = %46, %59
  %64 = phi { ptr, i32 } [ %47, %46 ], [ %60, %59 ]
  %65 = load ptr, ptr %4, align 8, !tbaa !26
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %65) #15
  br label %69

69:                                               ; preds = %59, %63, %67
  %70 = phi { ptr, i32 } [ %60, %59 ], [ %64, %63 ], [ %64, %67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %70

71:                                               ; preds = %6, %2, %57
  %72 = phi i32 [ %58, %57 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %72
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN32__apollo_inline_inline_2783_5_1530sys__native_condvar_notify_oneEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8, !tbaa !21
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #15
  br label %18

18:                                               ; preds = %1, %3, %12
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN32__apollo_inline_inline_2783_5_1530sys__native_condvar_notify_allEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8, !tbaa !21
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #15
  br label %18

18:                                               ; preds = %1, %3, %12
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1527sys__native_channel_boundedEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #21
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 15, ptr %3, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %2, align 8, !tbaa !12
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
  store i64 %12, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i8 0, ptr %14, align 8, !tbaa !47
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_unboundedEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 15, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %1, align 8, !tbaa !12
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
  store i64 0, ptr %10, align 8, !tbaa !37
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i8 0, ptr %11, align 8, !tbaa !47
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %6, ptr %4, align 8, !tbaa !57, !alias.scope !61
  br i1 %5, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %8, align 8, !tbaa !58, !alias.scope !61
  store i8 0, ptr %6, align 8, !tbaa !59, !alias.scope !61
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !48
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %12, ptr %11, align 8, !tbaa !57
  br label %36

13:                                               ; preds = %2
  %14 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15, !noalias !61
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
  store ptr %21, ptr %4, align 8, !tbaa !60, !alias.scope !61
  store i64 %14, ptr %6, align 8, !tbaa !59, !alias.scope !61
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %6, %13 ]
  switch i64 %14, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %1, align 1, !tbaa !59, !noalias !61
  store i8 %25, ptr %23, align 1, !tbaa !59
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %14, i1 false)
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %28, align 8, !tbaa !58, !alias.scope !61
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %14
  store i8 0, ptr %29, align 1, !tbaa !59
  %30 = load ptr, ptr %4, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !48
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %31, align 4, !tbaa !55
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %34, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %30, %6
  br i1 %35, label %36, label %43

36:                                               ; preds = %7, %27
  %37 = phi ptr [ %12, %7 ], [ %34, %27 ]
  %38 = phi ptr [ %11, %7 ], [ %33, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !58
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %42, i1 false)
  br label %47

43:                                               ; preds = %27
  store ptr %30, ptr %33, align 8, !tbaa !60
  %44 = load i64, ptr %6, align 8, !tbaa !59
  store i64 %44, ptr %34, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !58
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi ptr [ %37, %36 ], [ %34, %43 ]
  %49 = phi ptr [ %38, %36 ], [ %33, %43 ]
  %50 = phi i64 [ %40, %36 ], [ %46, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %52 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %50, ptr %53, align 8, !tbaa !58
  store ptr %6, ptr %4, align 8, !tbaa !60
  store i64 0, ptr %51, align 8, !tbaa !58
  store i8 0, ptr %6, align 8, !tbaa !59
  %54 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %55 unwind label %61

55:                                               ; preds = %47
  %56 = load ptr, ptr %49, align 8, !tbaa !60
  %57 = icmp eq ptr %56, %48
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %48, align 8, !tbaa !59
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %60) #23
  br label %68

61:                                               ; preds = %47
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = load ptr, ptr %49, align 8, !tbaa !60
  %64 = icmp eq ptr %63, %48
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i64, ptr %48, align 8, !tbaa !59
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %67) #23
  br label %75

68:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %69 = load ptr, ptr %4, align 8, !tbaa !60
  %70 = icmp eq ptr %69, %6
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %6, align 8, !tbaa !59
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %73) #23
  br label %74

74:                                               ; preds = %68, %71
  ret i32 %54

75:                                               ; preds = %61, %65
  %76 = load ptr, ptr %4, align 8, !tbaa !60
  %77 = icmp eq ptr %76, %6
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %6, align 8, !tbaa !59
  %80 = add i64 %79, 1
  call void @_ZdlPvm(ptr noundef %76, i64 noundef %80) #23
  br label %81

81:                                               ; preds = %75, %78
  resume { ptr, i32 } %62
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !58
  store i8 0, ptr %9, align 8, !tbaa !59
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %12 unwind label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !59
  %17 = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %17) #23
  br label %26

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %8, align 8, !tbaa !60
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %9, align 8, !tbaa !59
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %24) #23
  br label %25

25:                                               ; preds = %18, %22
  resume { ptr, i32 } %19

26:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %6, ptr %4, align 8, !tbaa !57, !alias.scope !64
  br i1 %5, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %8, align 8, !tbaa !58, !alias.scope !64
  store i8 0, ptr %6, align 8, !tbaa !59, !alias.scope !64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !48
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %12, ptr %11, align 8, !tbaa !57
  br label %36

13:                                               ; preds = %2
  %14 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15, !noalias !64
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
  store ptr %21, ptr %4, align 8, !tbaa !60, !alias.scope !64
  store i64 %14, ptr %6, align 8, !tbaa !59, !alias.scope !64
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %6, %13 ]
  switch i64 %14, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, ptr %1, align 1, !tbaa !59, !noalias !64
  store i8 %25, ptr %23, align 1, !tbaa !59
  br label %27

26:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %1, i64 %14, i1 false)
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %28, align 8, !tbaa !58, !alias.scope !64
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 %14
  store i8 0, ptr %29, align 1, !tbaa !59
  %30 = load ptr, ptr %4, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !48
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %31, align 4, !tbaa !55
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %34, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %30, %6
  br i1 %35, label %36, label %43

36:                                               ; preds = %7, %27
  %37 = phi ptr [ %12, %7 ], [ %34, %27 ]
  %38 = phi ptr [ %11, %7 ], [ %33, %27 ]
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !58
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  %42 = add nuw nsw i64 %40, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %42, i1 false)
  br label %47

43:                                               ; preds = %27
  store ptr %30, ptr %33, align 8, !tbaa !60
  %44 = load i64, ptr %6, align 8, !tbaa !59
  store i64 %44, ptr %34, align 8, !tbaa !59
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !58
  br label %47

47:                                               ; preds = %43, %36
  %48 = phi ptr [ %37, %36 ], [ %34, %43 ]
  %49 = phi ptr [ %38, %36 ], [ %33, %43 ]
  %50 = phi i64 [ %40, %36 ], [ %46, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %52 = icmp ult i64 %50, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %50, ptr %53, align 8, !tbaa !58
  store ptr %6, ptr %4, align 8, !tbaa !60
  store i64 0, ptr %51, align 8, !tbaa !58
  store i8 0, ptr %6, align 8, !tbaa !59
  %54 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %55 unwind label %61

55:                                               ; preds = %47
  %56 = load ptr, ptr %49, align 8, !tbaa !60
  %57 = icmp eq ptr %56, %48
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %48, align 8, !tbaa !59
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %60) #23
  br label %68

61:                                               ; preds = %47
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = load ptr, ptr %49, align 8, !tbaa !60
  %64 = icmp eq ptr %63, %48
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i64, ptr %48, align 8, !tbaa !59
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %67) #23
  br label %75

68:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %69 = load ptr, ptr %4, align 8, !tbaa !60
  %70 = icmp eq ptr %69, %6
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %6, align 8, !tbaa !59
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %73) #23
  br label %74

74:                                               ; preds = %68, %71
  ret i32 %54

75:                                               ; preds = %61, %65
  %76 = load ptr, ptr %4, align 8, !tbaa !60
  %77 = icmp eq ptr %76, %6
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %6, align 8, !tbaa !59
  %80 = add i64 %79, 1
  call void @_ZdlPvm(ptr noundef %76, i64 noundef %80) #23
  br label %81

81:                                               ; preds = %75, %78
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1533sys__native_channel_try_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !58
  store i8 0, ptr %9, align 8, !tbaa !59
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %12 unwind label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !59
  %17 = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %17) #23
  br label %26

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %8, align 8, !tbaa !60
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %9, align 8, !tbaa !59
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %24) #23
  br label %25

25:                                               ; preds = %18, %22
  resume { ptr, i32 } %19

26:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_i32EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi i32 [ %11, %16 ], [ 0, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %12, ptr %3, align 8, !tbaa !57
  %13 = load ptr, ptr %11, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = icmp ult i64 %15, 9223372036854775807
  call void @llvm.assume(i1 %16)
  %17 = icmp samesign ugt i64 %15, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %15, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #21
          to label %21 unwind label %107

21:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !60
  store i64 %15, ptr %12, align 8, !tbaa !59
  br label %28

22:                                               ; preds = %10
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %15, 1
  br label %28

26:                                               ; preds = %22
  %27 = load i8, ptr %13, align 1, !tbaa !59
  store i8 %27, ptr %12, align 8, !tbaa !59
  br label %31

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %25, %24 ], [ %19, %21 ]
  %30 = phi ptr [ %12, %24 ], [ %20, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %13, i64 %29, i1 false)
  br label %31

31:                                               ; preds = %26, %28
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %15, ptr %32, align 8, !tbaa !58
  br label %36

33:                                               ; preds = %1
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !57
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !58
  store i8 0, ptr %34, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %31, %33
  %37 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42, !prof !69

39:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %40 unwind label %109

40:                                               ; preds = %39
  %41 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %51, ptr %45, align 8, !tbaa !57
  %52 = load ptr, ptr %3, align 8, !tbaa !60
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !58
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %64

60:                                               ; preds = %50
  store ptr %52, ptr %45, align 8, !tbaa !60
  %61 = load i64, ptr %53, align 8, !tbaa !59
  store i64 %61, ptr %51, align 8, !tbaa !59
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %63, %60 ], [ %57, %55 ]
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !58
  store ptr %53, ptr %3, align 8, !tbaa !60
  store i64 0, ptr %66, align 8, !tbaa !58
  store i8 0, ptr %53, align 8, !tbaa !59
  %69 = load ptr, ptr %44, align 8, !tbaa !70
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %44, align 8, !tbaa !70
  br label %74

71:                                               ; preds = %42
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %72 unwind label %109

72:                                               ; preds = %71
  %73 = load ptr, ptr %44, align 8, !tbaa !76, !noalias !77
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %70, %64 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !80, !noalias !77
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !81, !noalias !77
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = load ptr, ptr %3, align 8, !tbaa !60
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i64, ptr %90, align 8, !tbaa !59
  %94 = add i64 %93, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %94) #23
  br label %95

95:                                               ; preds = %85, %92
  %96 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %97 = trunc nuw i8 %96 to i1
  store i8 0, ptr %4, align 8, !tbaa !67
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !59
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #23
  br label %106

106:                                              ; preds = %98, %95, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %88

107:                                              ; preds = %18
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %122

109:                                              ; preds = %71, %39
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = load ptr, ptr %3, align 8, !tbaa !60
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %113 = icmp eq ptr %111, %112
  br i1 %9, label %118, label %114

114:                                              ; preds = %109
  br i1 %113, label %122, label %115

115:                                              ; preds = %114
  %116 = load i64, ptr %112, align 8, !tbaa !59
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %117) #23
  br label %122

118:                                              ; preds = %109
  br i1 %113, label %122, label %119

119:                                              ; preds = %118
  %120 = load i64, ptr %112, align 8, !tbaa !59
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %121) #23
  br label %122

122:                                              ; preds = %118, %114, %115, %119, %107
  %123 = phi { ptr, i32 } [ %108, %107 ], [ %110, %119 ], [ %110, %114 ], [ %110, %115 ], [ %110, %118 ]
  %124 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %125 = trunc nuw i8 %124 to i1
  store i8 0, ptr %4, align 8, !tbaa !67
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !59
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #23
  br label %134

134:                                              ; preds = %126, %122, %131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_recv_boolEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi i32 [ %11, %16 ], [ 0, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_recv_f64EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi double [ %11, %16 ], [ 0.000000e+00, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret double %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi i32 [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %12, ptr %3, align 8, !tbaa !57
  %13 = load ptr, ptr %11, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = icmp ult i64 %15, 9223372036854775807
  call void @llvm.assume(i1 %16)
  %17 = icmp samesign ugt i64 %15, 15
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %15, 1
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #21
          to label %21 unwind label %107

21:                                               ; preds = %18
  store ptr %20, ptr %3, align 8, !tbaa !60
  store i64 %15, ptr %12, align 8, !tbaa !59
  br label %28

22:                                               ; preds = %10
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %15, 1
  br label %28

26:                                               ; preds = %22
  %27 = load i8, ptr %13, align 1, !tbaa !59
  store i8 %27, ptr %12, align 8, !tbaa !59
  br label %31

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %25, %24 ], [ %19, %21 ]
  %30 = phi ptr [ %12, %24 ], [ %20, %21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %13, i64 %29, i1 false)
  br label %31

31:                                               ; preds = %26, %28
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %15, ptr %32, align 8, !tbaa !58
  br label %36

33:                                               ; preds = %1
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !57
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %35, align 8, !tbaa !58
  store i8 0, ptr %34, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %31, %33
  %37 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42, !prof !69

39:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %40 unwind label %109

40:                                               ; preds = %39
  %41 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = icmp eq ptr %45, %48
  br i1 %49, label %71, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %51, ptr %45, align 8, !tbaa !57
  %52 = load ptr, ptr %3, align 8, !tbaa !60
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %57 = load i64, ptr %56, align 8, !tbaa !58
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %64

60:                                               ; preds = %50
  store ptr %52, ptr %45, align 8, !tbaa !60
  %61 = load i64, ptr %53, align 8, !tbaa !59
  store i64 %61, ptr %51, align 8, !tbaa !59
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %63 = load i64, ptr %62, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i64 [ %63, %60 ], [ %57, %55 ]
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %67 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %65, ptr %68, align 8, !tbaa !58
  store ptr %53, ptr %3, align 8, !tbaa !60
  store i64 0, ptr %66, align 8, !tbaa !58
  store i8 0, ptr %53, align 8, !tbaa !59
  %69 = load ptr, ptr %44, align 8, !tbaa !70
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store ptr %70, ptr %44, align 8, !tbaa !70
  br label %74

71:                                               ; preds = %42
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %72 unwind label %109

72:                                               ; preds = %71
  %73 = load ptr, ptr %44, align 8, !tbaa !76, !noalias !83
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %70, %64 ], [ %73, %72 ]
  %76 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !80, !noalias !83
  %78 = icmp eq ptr %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds nuw i8, ptr %43, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !81, !noalias !83
  %82 = getelementptr inbounds i8, ptr %81, i64 -8
  %83 = load ptr, ptr %82, align 8, !tbaa !82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 512
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi ptr [ %84, %79 ], [ %75, %74 ]
  %87 = getelementptr inbounds i8, ptr %86, i64 -32
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = load ptr, ptr %3, align 8, !tbaa !60
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i64, ptr %90, align 8, !tbaa !59
  %94 = add i64 %93, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %94) #23
  br label %95

95:                                               ; preds = %85, %92
  %96 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %97 = trunc nuw i8 %96 to i1
  store i8 0, ptr %4, align 8, !tbaa !67
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !59
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #23
  br label %106

106:                                              ; preds = %98, %95, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %88

107:                                              ; preds = %18
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %122

109:                                              ; preds = %71, %39
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = load ptr, ptr %3, align 8, !tbaa !60
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %113 = icmp eq ptr %111, %112
  br i1 %9, label %118, label %114

114:                                              ; preds = %109
  br i1 %113, label %122, label %115

115:                                              ; preds = %114
  %116 = load i64, ptr %112, align 8, !tbaa !59
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %117) #23
  br label %122

118:                                              ; preds = %109
  br i1 %113, label %122, label %119

119:                                              ; preds = %118
  %120 = load i64, ptr %112, align 8, !tbaa !59
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %111, i64 noundef %121) #23
  br label %122

122:                                              ; preds = %118, %114, %115, %119, %107
  %123 = phi { ptr, i32 } [ %108, %107 ], [ %110, %119 ], [ %110, %114 ], [ %110, %115 ], [ %110, %118 ]
  %124 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %125 = trunc nuw i8 %124 to i1
  store i8 0, ptr %4, align 8, !tbaa !67
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !59
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #23
  br label %134

134:                                              ; preds = %126, %122, %131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1533sys__native_channel_try_recv_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi i32 [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_recv_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi double [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret double %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2783_5_1523sys__native_channel_lenEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp ne ptr %16, null
  %24 = sext i1 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = mul nsw i64 %25, 10
  %27 = load ptr, ptr %13, align 8, !tbaa !87
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 48
  %34 = add nsw i64 %26, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load ptr, ptr %14, align 8, !tbaa !87
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1525sys__native_channel_closeEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  store i8 1, ptr %13, align 8, !tbaa !47
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_is_closedEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %14 = load i8, ptr %13, align 8, !tbaa !47, !range !19, !noundef !20
  %15 = zext nneg i8 %14 to i32
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  br label %17

17:                                               ; preds = %1, %3, %12
  %18 = phi i32 [ %15, %12 ], [ 1, %1 ], [ 1, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noalias noundef nonnull ptr @sys__native_mutex_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  store i8 1, ptr %13, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %1, %3, %12
  %15 = phi i32 [ 1, %12 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_try_lock(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 8, !tbaa !14
  %13 = zext i1 %10 to i32
  br label %14

14:                                               ; preds = %1, %3, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_unlock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load i8, ptr %8, align 8, !tbaa !14, !range !19, !noundef !20
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !14
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_condvar_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %5, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_condvar_wait_ms(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_channel_bounded(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN32__apollo_inline_inline_2783_5_1527sys__native_channel_boundedEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_channel_unbounded() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN32__apollo_inline_inline_2783_5_1529sys__native_channel_unboundedEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2783_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !58
  store i8 0, ptr %9, align 8, !tbaa !59
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %12 unwind label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !59
  %17 = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %17) #23
  br label %26

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %8, align 8, !tbaa !60
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %9, align 8, !tbaa !59
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %24) #23
  br label %25

25:                                               ; preds = %18, %22
  resume { ptr, i32 } %19

26:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_try_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_try_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2783_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_try_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %9, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %10, align 8, !tbaa !58
  store i8 0, ptr %9, align 8, !tbaa !59
  %11 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %12 unwind label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !60
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %9, align 8, !tbaa !59
  %17 = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %17) #23
  br label %26

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %8, align 8, !tbaa !60
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %9, align 8, !tbaa !59
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %24) #23
  br label %25

25:                                               ; preds = %18, %22
  resume { ptr, i32 } %19

26:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_channel_try_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %7, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %7, align 8, !tbaa !59
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8, !tbaa !59
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #23
  br label %24

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %7, align 8, !tbaa !59
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #23
  br label %23

23:                                               ; preds = %16, %20
  resume { ptr, i32 } %17

24:                                               ; preds = %10, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_channel_recv_i32(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi i32 [ %11, %16 ], [ 0, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_channel_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_channel_recv_bool(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi i32 [ %11, %16 ], [ 0, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local double @sys__native_channel_recv_f64(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !19, !noundef !20
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !48
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  store i8 0, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64, ptr %14, align 8, !tbaa !59
  %18 = add i64 %17, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %18) #23
  br label %19

19:                                               ; preds = %6, %1, %16
  %20 = phi double [ %11, %16 ], [ 0.000000e+00, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret double %20
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_channel_try_recv_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi i32 [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_channel_try_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_channel_try_recv_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi i32 [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local double @sys__native_channel_try_recv_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !19, !noundef !20
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  store i8 0, ptr %4, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %15, align 8, !tbaa !59
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %19) #23
  br label %20

20:                                               ; preds = %7, %2, %17
  %21 = phi double [ %12, %17 ], [ %1, %2 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret double %21
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_channel_len(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp ne ptr %16, null
  %24 = sext i1 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = mul nsw i64 %25, 10
  %27 = load ptr, ptr %13, align 8, !tbaa !87
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 48
  %34 = add nsw i64 %26, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load ptr, ptr %14, align 8, !tbaa !87
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_close(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  store i8 1, ptr %13, align 8, !tbaa !47
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_is_closed(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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
  %14 = load i8, ptr %13, align 8, !tbaa !47, !range !19, !noundef !20
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

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib12mutex_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14condvar_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
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

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14channel_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = udiv i64 %1, 10
  %4 = urem i64 %1, 10
  %5 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %6 = add nuw nsw i64 %5, 3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %7, align 8, !tbaa !90
  %8 = icmp ugt i64 %1, -6917529027641081887
  br i1 %8, label %9, label %10, !prof !91

9:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

10:                                               ; preds = %2
  %11 = add nuw nsw i64 %3, 1
  %12 = shl nuw nsw i64 %6, 3
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #21
  store ptr %13, ptr %0, align 8, !tbaa !92
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
  store ptr %21, ptr %20, align 8, !tbaa !93
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %24 = icmp ult ptr %23, %18
  br i1 %24, label %19, label %51, !llvm.loop !94

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = tail call ptr @__cxa_begin_catch(ptr %27) #15
  %29 = icmp ult ptr %16, %20
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %33, %30 ], [ %16, %25 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef 480) #23
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %34 = icmp ult ptr %33, %20
  br i1 %34, label %30, label %35, !llvm.loop !95

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
  %45 = load ptr, ptr %0, align 8, !tbaa !92
  %46 = load i64, ptr %7, align 8, !tbaa !90
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
  store ptr %16, ptr %53, align 8, !tbaa !86
  %54 = load ptr, ptr %16, align 8, !tbaa !93
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %54, ptr %55, align 8, !tbaa !88
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 480
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %56, ptr %57, align 8, !tbaa !89
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = getelementptr inbounds i8, ptr %18, i64 -8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %59, ptr %60, align 8, !tbaa !86
  %61 = load ptr, ptr %59, align 8, !tbaa !93
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %61, ptr %62, align 8, !tbaa !88
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 480
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %63, ptr %64, align 8, !tbaa !89
  store ptr %54, ptr %52, align 8, !tbaa !96
  %65 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %61, i64 %4
  store ptr %65, ptr %58, align 8, !tbaa !97
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

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !93, !noalias !98
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !93
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !101, !noalias !98
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !101
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !93, !noalias !102
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !93
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !101, !noalias !102
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !101
  invoke void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !92
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
  %26 = load ptr, ptr %25, align 8, !tbaa !93
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 480) #23
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !95

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !92
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !90
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !86
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %99
  %11 = load ptr, ptr %4, align 8, !tbaa !86
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %101, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !87
  br i1 %15, label %136, label %103

17:                                               ; preds = %3, %99
  %18 = phi ptr [ %100, %99 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i64, ptr %22, align 8, !tbaa !59
  %26 = add i64 %25, 1
  tail call void @_ZdlPvm(ptr noundef %21, i64 noundef %26) #23
  br label %27

27:                                               ; preds = %17, %24
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, ptr %30, align 8, !tbaa !59
  %34 = add i64 %33, 1
  tail call void @_ZdlPvm(ptr noundef %29, i64 noundef %34) #23
  br label %35

35:                                               ; preds = %27, %32
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, ptr %38, align 8, !tbaa !59
  %42 = add i64 %41, 1
  tail call void @_ZdlPvm(ptr noundef %37, i64 noundef %42) #23
  br label %43

43:                                               ; preds = %35, %40
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %46, align 8, !tbaa !59
  %50 = add i64 %49, 1
  tail call void @_ZdlPvm(ptr noundef %45, i64 noundef %50) #23
  br label %51

51:                                               ; preds = %43, %48
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, ptr %54, align 8, !tbaa !59
  %58 = add i64 %57, 1
  tail call void @_ZdlPvm(ptr noundef %53, i64 noundef %58) #23
  br label %59

59:                                               ; preds = %51, %56
  %60 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  %62 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %62, align 8, !tbaa !59
  %66 = add i64 %65, 1
  tail call void @_ZdlPvm(ptr noundef %61, i64 noundef %66) #23
  br label %67

67:                                               ; preds = %59, %64
  %68 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i64, ptr %70, align 8, !tbaa !59
  %74 = add i64 %73, 1
  tail call void @_ZdlPvm(ptr noundef %69, i64 noundef %74) #23
  br label %75

75:                                               ; preds = %67, %72
  %76 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8, !tbaa !59
  %82 = add i64 %81, 1
  tail call void @_ZdlPvm(ptr noundef %77, i64 noundef %82) #23
  br label %83

83:                                               ; preds = %75, %80
  %84 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i64, ptr %86, align 8, !tbaa !59
  %90 = add i64 %89, 1
  tail call void @_ZdlPvm(ptr noundef %85, i64 noundef %90) #23
  br label %91

91:                                               ; preds = %83, %88
  %92 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %93 = load ptr, ptr %92, align 8, !tbaa !60
  %94 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i64, ptr %94, align 8, !tbaa !59
  %98 = add i64 %97, 1
  tail call void @_ZdlPvm(ptr noundef %93, i64 noundef %98) #23
  br label %99

99:                                               ; preds = %91, %96
  %100 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %101 = load ptr, ptr %6, align 8, !tbaa !86
  %102 = icmp ult ptr %100, %101
  br i1 %102, label %17, label %10, !llvm.loop !107

103:                                              ; preds = %12
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !89
  %106 = icmp eq ptr %16, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %103, %116
  %108 = phi ptr [ %117, %116 ], [ %16, %103 ]
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !60
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i64, ptr %111, align 8, !tbaa !59
  %115 = add i64 %114, 1
  tail call void @_ZdlPvm(ptr noundef %110, i64 noundef %115) #23
  br label %116

116:                                              ; preds = %107, %113
  %117 = getelementptr inbounds nuw i8, ptr %108, i64 48
  %118 = icmp eq ptr %117, %105
  br i1 %118, label %119, label %107, !llvm.loop !108

119:                                              ; preds = %116, %103
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %121 = load ptr, ptr %120, align 8, !tbaa !88
  %122 = load ptr, ptr %2, align 8, !tbaa !87
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %151, label %124

124:                                              ; preds = %119, %133
  %125 = phi ptr [ %134, %133 ], [ %121, %119 ]
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 16
  %127 = load ptr, ptr %126, align 8, !tbaa !60
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = load i64, ptr %128, align 8, !tbaa !59
  %132 = add i64 %131, 1
  tail call void @_ZdlPvm(ptr noundef %127, i64 noundef %132) #23
  br label %133

133:                                              ; preds = %124, %130
  %134 = getelementptr inbounds nuw i8, ptr %125, i64 48
  %135 = icmp eq ptr %134, %122
  br i1 %135, label %151, label %124, !llvm.loop !108

136:                                              ; preds = %12
  %137 = load ptr, ptr %2, align 8, !tbaa !87
  %138 = icmp eq ptr %16, %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %136, %148
  %140 = phi ptr [ %149, %148 ], [ %16, %136 ]
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %142 = load ptr, ptr %141, align 8, !tbaa !60
  %143 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load i64, ptr %143, align 8, !tbaa !59
  %147 = add i64 %146, 1
  tail call void @_ZdlPvm(ptr noundef %142, i64 noundef %147) #23
  br label %148

148:                                              ; preds = %139, %145
  %149 = getelementptr inbounds nuw i8, ptr %140, i64 48
  %150 = icmp eq ptr %149, %137
  br i1 %150, label %151, label %139, !llvm.loop !108

151:                                              ; preds = %133, %148, %136, %119
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %176, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %176

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !26
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @_ZSt20__throw_system_errori(i32 noundef %13) #22
  unreachable

16:                                               ; preds = %10
  store i8 1, ptr %12, align 8, !tbaa !30
  br i1 %2, label %17, label %79

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %20 = load i64, ptr %19, align 8, !tbaa !37
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
  %32 = load ptr, ptr %25, align 8, !tbaa !86
  %33 = load ptr, ptr %26, align 8, !tbaa !86
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ne ptr %32, null
  %39 = sext i1 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = mul nsw i64 %40, 10
  %42 = load ptr, ptr %23, align 8, !tbaa !87
  %43 = load ptr, ptr %27, align 8, !tbaa !88
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 48
  %48 = add nsw i64 %41, %47
  %49 = load ptr, ptr %28, align 8, !tbaa !89
  %50 = load ptr, ptr %24, align 8, !tbaa !87
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
  %59 = load i8, ptr %29, align 8, !tbaa !47, !range !19, !noundef !20
  %60 = trunc nuw i8 %59 to i1
  br i1 %60, label %120, label %61

61:                                               ; preds = %58
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %62 unwind label %65

62:                                               ; preds = %61
  %63 = load i64, ptr %19, align 8, !tbaa !37
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %120, label %30, !llvm.loop !109

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
  %71 = load i8, ptr %12, align 8, !tbaa !30, !range !19, !noundef !20
  %72 = trunc nuw i8 %71 to i1
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load ptr, ptr %4, align 8, !tbaa !26
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %74) #15
  br label %78

78:                                               ; preds = %69, %73, %76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %70

79:                                               ; preds = %16
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %81 = load i64, ptr %80, align 8, !tbaa !37
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %120, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %87 = load ptr, ptr %86, align 8, !tbaa !86
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %89 = load ptr, ptr %88, align 8, !tbaa !86
  %90 = ptrtoint ptr %87 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp ne ptr %87, null
  %95 = sext i1 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = mul nsw i64 %96, 10
  %98 = load ptr, ptr %84, align 8, !tbaa !87
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %100 = load ptr, ptr %99, align 8, !tbaa !88
  %101 = ptrtoint ptr %98 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 48
  %105 = add nsw i64 %97, %104
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %107 = load ptr, ptr %106, align 8, !tbaa !89
  %108 = load ptr, ptr %85, align 8, !tbaa !87
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
  %118 = load i8, ptr %117, align 8, !tbaa !47, !range !19, !noundef !20
  %119 = trunc nuw i8 %118 to i1
  br i1 %119, label %120, label %166

120:                                              ; preds = %62, %58, %30, %79, %83, %17, %116
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %122 = load i8, ptr %121, align 8, !tbaa !47, !range !19, !noundef !20
  %123 = trunc nuw i8 %122 to i1
  br i1 %123, label %166, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %126 = load ptr, ptr %125, align 8, !tbaa !97
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %128 = load ptr, ptr %127, align 8, !tbaa !110
  %129 = getelementptr inbounds i8, ptr %128, i64 -48
  %130 = icmp eq ptr %126, %129
  br i1 %130, label %152, label %131

131:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %126, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %132 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %134 = getelementptr inbounds nuw i8, ptr %126, i64 32
  store ptr %134, ptr %132, align 8, !tbaa !57
  %135 = load ptr, ptr %133, align 8, !tbaa !60
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %140 = load i64, ptr %139, align 8, !tbaa !58
  %141 = icmp ult i64 %140, 16
  call void @llvm.assume(i1 %141)
  %142 = add nuw nsw i64 %140, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %134, ptr noundef nonnull align 8 dereferenceable(1) %136, i64 %142, i1 false)
  br label %145

143:                                              ; preds = %131
  store ptr %135, ptr %132, align 8, !tbaa !60
  %144 = load i64, ptr %136, align 8, !tbaa !59
  store i64 %144, ptr %134, align 8, !tbaa !59
  br label %145

145:                                              ; preds = %143, %138
  %146 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %147 = load i64, ptr %146, align 8, !tbaa !58
  %148 = icmp ult i64 %147, 9223372036854775807
  call void @llvm.assume(i1 %148)
  %149 = getelementptr inbounds nuw i8, ptr %126, i64 24
  store i64 %147, ptr %149, align 8, !tbaa !58
  store ptr %136, ptr %133, align 8, !tbaa !60
  store i64 0, ptr %146, align 8, !tbaa !58
  store i8 0, ptr %136, align 8, !tbaa !59
  %150 = load ptr, ptr %125, align 8, !tbaa !97
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 48
  store ptr %151, ptr %125, align 8, !tbaa !97
  br label %154

152:                                              ; preds = %124
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %153, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %154 unwind label %67

154:                                              ; preds = %145, %152
  %155 = load i8, ptr %12, align 8, !tbaa !30, !range !19, !noundef !20
  %156 = trunc nuw i8 %155 to i1
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #22
          to label %158 unwind label %67

158:                                              ; preds = %157
  unreachable

159:                                              ; preds = %154
  %160 = load ptr, ptr %4, align 8, !tbaa !26
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %160) #15
  store i8 0, ptr %12, align 8, !tbaa !30
  br label %164

164:                                              ; preds = %162, %159
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %165) #15
  br label %166

166:                                              ; preds = %120, %116, %164
  %167 = phi i32 [ 0, %116 ], [ 1, %164 ], [ 0, %120 ]
  %168 = load i8, ptr %12, align 8, !tbaa !30, !range !19, !noundef !20
  %169 = trunc nuw i8 %168 to i1
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load ptr, ptr %4, align 8, !tbaa !26
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %171) #15
  br label %175

175:                                              ; preds = %166, %170, %173
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %176

176:                                              ; preds = %6, %3, %175
  %177 = phi i32 [ %167, %175 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %177
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = mul nsw i64 %15, 10
  %17 = load ptr, ptr %3, align 8, !tbaa !87
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 48
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = load ptr, ptr %4, align 8, !tbaa !87
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
  %38 = load i64, ptr %37, align 8, !tbaa !90
  %39 = load ptr, ptr %0, align 8, !tbaa !92
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !106
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #21
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !93
  %51 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 16, i1 false)
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %54, ptr %52, align 8, !tbaa !57
  %55 = load ptr, ptr %53, align 8, !tbaa !60
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = icmp ult i64 %60, 16
  tail call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %65

63:                                               ; preds = %47
  store ptr %55, ptr %52, align 8, !tbaa !60
  %64 = load i64, ptr %56, align 8, !tbaa !59
  store i64 %64, ptr %54, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %58, %63
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %67 = load i64, ptr %66, align 8, !tbaa !58
  %68 = icmp ult i64 %67, 9223372036854775807
  tail call void @llvm.assume(i1 %68)
  %69 = getelementptr inbounds nuw i8, ptr %51, i64 24
  store i64 %67, ptr %69, align 8, !tbaa !58
  store ptr %56, ptr %53, align 8, !tbaa !60
  store i64 0, ptr %66, align 8, !tbaa !58
  store i8 0, ptr %56, align 8, !tbaa !59
  %70 = load ptr, ptr %5, align 8, !tbaa !106
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr %71, ptr %5, align 8, !tbaa !86
  %72 = load ptr, ptr %71, align 8, !tbaa !93
  store ptr %72, ptr %18, align 8, !tbaa !88
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 480
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %73, ptr %74, align 8, !tbaa !89
  store ptr %72, ptr %3, align 8, !tbaa !97
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !92
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
  br i1 %30, label %31, label %32, !prof !111

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %35, ptr %24, align 8, !tbaa !93
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !112

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %48, ptr %42, align 8, !tbaa !93
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
  br i1 %64, label %65, label %66, !prof !111

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !93
  store ptr %69, ptr %60, align 8, !tbaa !93
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !92
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #23
  store ptr %55, ptr %0, align 8, !tbaa !92
  store i64 %52, ptr %14, align 8, !tbaa !90
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !86
  %75 = load ptr, ptr %74, align 8, !tbaa !93
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !88
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 480
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !89
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !86
  %81 = load ptr, ptr %80, align 8, !tbaa !93
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !88
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 480
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::unique_lock", align 8
  %5 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !9
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %13, label %11

11:                                               ; preds = %3, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %12, align 8, !tbaa !67
  br label %163

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %14, ptr %4, align 8, !tbaa !26
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %14) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @_ZSt20__throw_system_errori(i32 noundef %16) #22
  unreachable

19:                                               ; preds = %13
  store i8 1, ptr %15, align 8, !tbaa !30
  br i1 %2, label %20, label %41

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %24 = load ptr, ptr %22, align 8, !tbaa !87
  %25 = load ptr, ptr %23, align 8, !tbaa !87
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %29 = load i8, ptr %28, align 8, !tbaa !47, !range !19, !noundef !20
  %30 = trunc nuw i8 %29 to i1
  br i1 %30, label %55, label %34

31:                                               ; preds = %35
  %32 = load i8, ptr %28, align 8, !tbaa !47, !range !19, !noundef !20
  %33 = trunc nuw i8 %32 to i1
  br i1 %33, label %53, label %34, !llvm.loop !113

34:                                               ; preds = %27, %31
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(9) %4)
          to label %35 unwind label %39

35:                                               ; preds = %34
  %36 = load ptr, ptr %22, align 8, !tbaa !87
  %37 = load ptr, ptr %23, align 8, !tbaa !87
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %31, label %57, !llvm.loop !113

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %153

41:                                               ; preds = %19
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %44 = load ptr, ptr %42, align 8, !tbaa !87
  %45 = load ptr, ptr %43, align 8, !tbaa !87
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 240
  %49 = load i8, ptr %48, align 8, !tbaa !47, !range !19, !noundef !20
  %50 = trunc nuw i8 %49 to i1
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %52, align 8, !tbaa !67
  br label %144

53:                                               ; preds = %31
  %54 = icmp eq ptr %36, %37
  br i1 %54, label %55, label %57

55:                                               ; preds = %27, %47, %53
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %56, align 8, !tbaa !67
  br label %144

57:                                               ; preds = %35, %20, %41, %53
  %58 = phi ptr [ %37, %53 ], [ %25, %20 ], [ %45, %41 ], [ %37, %35 ]
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %58, i64 16, i1 false)
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 16
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %62, ptr %60, align 8, !tbaa !57
  %63 = load ptr, ptr %61, align 8, !tbaa !60
  %64 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = getelementptr inbounds nuw i8, ptr %58, i64 24
  %68 = load i64, ptr %67, align 8, !tbaa !58
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %70, i1 false)
  br label %73

71:                                               ; preds = %57
  store ptr %63, ptr %60, align 8, !tbaa !60
  %72 = load i64, ptr %64, align 8, !tbaa !59
  store i64 %72, ptr %62, align 8, !tbaa !59
  br label %73

73:                                               ; preds = %66, %71
  %74 = getelementptr inbounds nuw i8, ptr %58, i64 24
  %75 = load i64, ptr %74, align 8, !tbaa !58
  %76 = icmp ult i64 %75, 9223372036854775807
  call void @llvm.assume(i1 %76)
  %77 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %75, ptr %77, align 8, !tbaa !58
  store ptr %64, ptr %61, align 8, !tbaa !60
  store i64 0, ptr %74, align 8, !tbaa !58
  store i8 0, ptr %64, align 8, !tbaa !59
  %78 = load ptr, ptr %59, align 8, !tbaa !96
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %80 = load ptr, ptr %79, align 8, !tbaa !114
  %81 = getelementptr inbounds i8, ptr %80, i64 -48
  %82 = icmp eq ptr %78, %81
  %83 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = getelementptr inbounds nuw i8, ptr %78, i64 32
  %86 = icmp eq ptr %84, %85
  br i1 %82, label %95, label %87

87:                                               ; preds = %73
  br i1 %86, label %92, label %88

88:                                               ; preds = %87
  %89 = load i64, ptr %85, align 8, !tbaa !59
  %90 = add i64 %89, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %90) #23
  %91 = load ptr, ptr %59, align 8, !tbaa !96
  br label %92

92:                                               ; preds = %87, %88
  %93 = phi ptr [ %91, %88 ], [ %78, %87 ]
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 48
  br label %107

95:                                               ; preds = %73
  br i1 %86, label %99, label %96

96:                                               ; preds = %95
  %97 = load i64, ptr %85, align 8, !tbaa !59
  %98 = add i64 %97, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %98) #23
  br label %99

99:                                               ; preds = %95, %96
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  call void @_ZdlPvm(ptr noundef %101, i64 noundef 480) #23
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %103 = load ptr, ptr %102, align 8, !tbaa !105
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store ptr %104, ptr %102, align 8, !tbaa !86
  %105 = load ptr, ptr %104, align 8, !tbaa !93
  store ptr %105, ptr %100, align 8, !tbaa !88
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 480
  store ptr %106, ptr %79, align 8, !tbaa !89
  br label %107

107:                                              ; preds = %92, %99
  %108 = phi ptr [ %94, %92 ], [ %105, %99 ]
  store ptr %108, ptr %59, align 8, !tbaa !96
  %109 = load i8, ptr %15, align 8, !tbaa !30, !range !19, !noundef !20
  %110 = trunc nuw i8 %109 to i1
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #22
          to label %112 unwind label %136

112:                                              ; preds = %111
  unreachable

113:                                              ; preds = %107
  %114 = load ptr, ptr %4, align 8, !tbaa !26
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %114) #15
  store i8 0, ptr %15, align 8, !tbaa !30
  br label %118

118:                                              ; preds = %116, %113
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %119) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 16, i1 false)
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %121, ptr %120, align 8, !tbaa !57
  %122 = load ptr, ptr %60, align 8, !tbaa !60
  %123 = icmp eq ptr %122, %62
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, ptr %77, align 8, !tbaa !58
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  %127 = add nuw nsw i64 %125, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %121, ptr noundef nonnull align 8 dereferenceable(1) %62, i64 %127, i1 false)
  br label %131

128:                                              ; preds = %118
  store ptr %122, ptr %120, align 8, !tbaa !60
  %129 = load i64, ptr %62, align 8, !tbaa !59
  store i64 %129, ptr %121, align 8, !tbaa !59
  %130 = load i64, ptr %77, align 8, !tbaa !58
  br label %131

131:                                              ; preds = %124, %128
  %132 = phi i64 [ %125, %124 ], [ %130, %128 ]
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %132, ptr %134, align 8, !tbaa !58
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %135, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %144

136:                                              ; preds = %111
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load ptr, ptr %60, align 8, !tbaa !60
  %139 = icmp eq ptr %138, %62
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i64, ptr %62, align 8, !tbaa !59
  %142 = add i64 %141, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %142) #23
  br label %143

143:                                              ; preds = %136, %140
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %153

144:                                              ; preds = %131, %55, %51
  %145 = load i8, ptr %15, align 8, !tbaa !30, !range !19, !noundef !20
  %146 = trunc nuw i8 %145 to i1
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load ptr, ptr %4, align 8, !tbaa !26
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %148) #15
  br label %152

152:                                              ; preds = %144, %147, %150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %163

153:                                              ; preds = %143, %39
  %154 = phi { ptr, i32 } [ %137, %143 ], [ %40, %39 ]
  %155 = load i8, ptr %15, align 8, !tbaa !30, !range !19, !noundef !20
  %156 = trunc nuw i8 %155 to i1
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load ptr, ptr %4, align 8, !tbaa !26
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %158) #15
  br label %162

162:                                              ; preds = %153, %157, %160
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %154

163:                                              ; preds = %152, %11
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator.19", align 16
  %3 = alloca %"struct.std::_Deque_iterator.19", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !82, !noalias !116
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !82
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !101, !noalias !116
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !101
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !82, !noalias !119
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !82
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !101, !noalias !119
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !101
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !122
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !123
  %21 = load ptr, ptr %9, align 8, !tbaa !124
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #23
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !125

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !122
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !126
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !126
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !91

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #21
  store ptr %12, ptr %0, align 8, !tbaa !122
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
  store ptr %20, ptr %19, align 8, !tbaa !82
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !127

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #15
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #23
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !125

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
  %44 = load ptr, ptr %0, align 8, !tbaa !122
  %45 = load i64, ptr %6, align 8, !tbaa !126
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
  store ptr %15, ptr %52, align 8, !tbaa !81
  %53 = load ptr, ptr %15, align 8, !tbaa !82
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !80
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !128
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !81
  %60 = load ptr, ptr %58, align 8, !tbaa !82
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !80
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !128
  store ptr %53, ptr %51, align 8, !tbaa !129
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !70
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !81
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !76
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !59
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #23
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !59
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #23
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !59
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #23
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !59
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #23
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !59
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #23
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !59
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #23
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !60
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !59
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #23
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !59
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #23
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !59
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #23
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !59
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #23
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !59
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #23
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !59
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #23
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !60
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !59
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #23
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !60
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !59
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #23
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !60
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !59
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #23
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !60
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !59
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #23
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !81
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !130

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !128
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !60
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !59
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #23
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !131

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !80
  %168 = load ptr, ptr %2, align 8, !tbaa !76
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !60
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !59
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #23
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !131

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !76
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !60
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !59
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #23
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !131

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !76
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = load ptr, ptr %4, align 8, !tbaa !76
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
  %38 = load i64, ptr %37, align 8, !tbaa !126
  %39 = load ptr, ptr %0, align 8, !tbaa !122
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !124
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !82
  %51 = load ptr, ptr %3, align 8, !tbaa !70
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !57
  %53 = load ptr, ptr %1, align 8, !tbaa !60
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !58
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !60
  %62 = load i64, ptr %54, align 8, !tbaa !59
  store i64 %62, ptr %52, align 8, !tbaa !59
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !58
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !58
  store ptr %54, ptr %1, align 8, !tbaa !60
  store i64 0, ptr %64, align 8, !tbaa !58
  store i8 0, ptr %54, align 8, !tbaa !59
  %68 = load ptr, ptr %5, align 8, !tbaa !124
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !81
  %70 = load ptr, ptr %69, align 8, !tbaa !82
  store ptr %70, ptr %18, align 8, !tbaa !80
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !128
  store ptr %70, ptr %3, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !126
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !122
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
  br i1 %30, label %31, label %32, !prof !111

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !82
  store ptr %35, ptr %24, align 8, !tbaa !82
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !112

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !82
  store ptr %48, ptr %42, align 8, !tbaa !82
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
  br i1 %64, label %65, label %66, !prof !111

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !82
  store ptr %69, ptr %60, align 8, !tbaa !82
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !122
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #23
  store ptr %55, ptr %0, align 8, !tbaa !122
  store i64 %52, ptr %14, align 8, !tbaa !126
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !81
  %75 = load ptr, ptr %74, align 8, !tbaa !82
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !80
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !128
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !81
  %81 = load ptr, ptr %80, align 8, !tbaa !82
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !80
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !128
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { cold noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !11, i64 8}
!11 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!15, !18, i64 56}
!15 = !{!"_ZTSN12__apo_stdlib12mutex_handleE", !10, i64 0, !16, i64 16, !18, i64 56}
!16 = !{!"_ZTSSt5mutex", !17, i64 0}
!17 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!18 = !{!"bool", !7, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!22, !25, i64 104}
!22 = !{!"_ZTSN12__apo_stdlib14condvar_handleE", !10, i64 0, !16, i64 16, !23, i64 56, !25, i64 104}
!23 = !{!"_ZTSSt18condition_variable", !24, i64 0}
!24 = !{!"_ZTSSt9__condvar", !7, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSSt11unique_lockISt5mutexE", !28, i64 0, !18, i64 8}
!28 = !{!"p1 _ZTSSt5mutex", !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!27, !18, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !25, i64 0}
!34 = !{!"_ZTS8timespec", !25, i64 0, !25, i64 8}
!35 = !{!34, !25, i64 8}
!36 = distinct !{!36, !32}
!37 = !{!38, !25, i64 232}
!38 = !{!"_ZTSN12__apo_stdlib14channel_handleE", !10, i64 0, !16, i64 16, !23, i64 56, !23, i64 104, !39, i64 152, !25, i64 232, !18, i64 240}
!39 = !{!"_ZTSSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE", !40, i64 0}
!40 = !{!"_ZTSSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE11_Deque_implE", !42, i64 0}
!42 = !{!"_ZTSNSt11_Deque_baseIN12__apo_stdlib13channel_valueESaIS1_EE16_Deque_impl_dataE", !43, i64 0, !25, i64 8, !45, i64 16, !45, i64 48}
!43 = !{!"p2 _ZTSN12__apo_stdlib13channel_valueE", !44, i64 0}
!44 = !{!"any p2 pointer", !29, i64 0}
!45 = !{!"_ZTSSt15_Deque_iteratorIN12__apo_stdlib13channel_valueERS1_PS1_E", !46, i64 0, !46, i64 8, !46, i64 16, !43, i64 24}
!46 = !{!"p1 _ZTSN12__apo_stdlib13channel_valueE", !29, i64 0}
!47 = !{!38, !18, i64 240}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSN12__apo_stdlib13channel_valueE", !50, i64 0, !6, i64 4, !51, i64 8, !52, i64 16}
!50 = !{!"_ZTSN12__apo_stdlib18channel_value_kindE", !7, i64 0}
!51 = !{!"double", !7, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !53, i64 0, !25, i64 8, !7, i64 16}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !54, i64 0}
!54 = !{!"p1 omnipotent char", !29, i64 0}
!55 = !{!49, !6, i64 4}
!56 = !{!49, !51, i64 8}
!57 = !{!53, !54, i64 0}
!58 = !{!52, !25, i64 8}
!59 = !{!7, !7, i64 0}
!60 = !{!52, !54, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!63 = distinct !{!63, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!66 = distinct !{!66, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!67 = !{!68, !18, i64 48}
!68 = !{!"_ZTSSt22_Optional_payload_baseIN12__apo_stdlib13channel_valueEE", !7, i64 0, !18, i64 48}
!69 = !{!"branch_weights", i32 1, i32 1023}
!70 = !{!71, !74, i64 48}
!71 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !72, i64 0, !25, i64 8, !73, i64 16, !73, i64 48}
!72 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0}
!73 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !74, i64 0, !74, i64 8, !74, i64 16, !72, i64 24}
!74 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!75 = !{!71, !74, i64 64}
!76 = !{!73, !74, i64 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!79 = distinct !{!79, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!80 = !{!73, !74, i64 8}
!81 = !{!73, !72, i64 24}
!82 = !{!74, !74, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!85 = distinct !{!85, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!86 = !{!45, !43, i64 24}
!87 = !{!45, !46, i64 0}
!88 = !{!45, !46, i64 8}
!89 = !{!45, !46, i64 16}
!90 = !{!42, !25, i64 8}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = !{!42, !43, i64 0}
!93 = !{!46, !46, i64 0}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = !{!42, !46, i64 16}
!97 = !{!42, !46, i64 48}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE5beginEv: argument 0"}
!100 = distinct !{!100, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE5beginEv"}
!101 = !{!29, !29, i64 0}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE3endEv: argument 0"}
!104 = distinct !{!104, !"_ZNSt5dequeIN12__apo_stdlib13channel_valueESaIS1_EE3endEv"}
!105 = !{!42, !43, i64 40}
!106 = !{!42, !43, i64 72}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !32}
!110 = !{!42, !46, i64 64}
!111 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!112 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!113 = distinct !{!113, !32}
!114 = !{!42, !46, i64 32}
!115 = !{!42, !46, i64 24}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!121 = distinct !{!121, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!122 = !{!71, !72, i64 0}
!123 = !{!71, !72, i64 40}
!124 = !{!71, !72, i64 72}
!125 = distinct !{!125, !32}
!126 = !{!71, !25, i64 8}
!127 = distinct !{!127, !32}
!128 = !{!73, !74, i64 16}
!129 = !{!71, !74, i64 16}
!130 = distinct !{!130, !32}
!131 = distinct !{!131, !32}
