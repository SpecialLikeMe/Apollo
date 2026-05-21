; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\output\cache\inline_foreign\0bb32e5a2ee37d81.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign\\0bb32e5a2ee37d81.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::deque.26" = type { %"class.std::__1::__split_buffer.27", i64, %struct.anon.30 }
%"class.std::__1::__split_buffer.27" = type { %"class.std::__1::__split_buffer_pointer_layout.28" }
%"class.std::__1::__split_buffer_pointer_layout.28" = type { ptr, ptr, ptr, %struct.anon.29 }
%struct.anon.29 = type { ptr }
%struct.anon.30 = type { i64 }
%"class.std::__1::chrono::time_point" = type { %"class.std::__1::chrono::duration.3" }
%"class.std::__1::chrono::duration.3" = type { i64 }
%"class.std::__1::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.__apo_stdlib::channel_value" = type { i32, i32, double, %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }
%"class.std::__1::optional" = type { %"struct.std::__1::__optional_move_assign_base.base", [7 x i8] }
%"struct.std::__1::__optional_move_assign_base.base" = type { %"struct.std::__1::__optional_copy_assign_base.base" }
%"struct.std::__1::__optional_copy_assign_base.base" = type { %"struct.std::__1::__optional_move_base.base" }
%"struct.std::__1::__optional_move_base.base" = type { %"struct.std::__1::__optional_copy_base.base" }
%"struct.std::__1::__optional_copy_base.base" = type { %"struct.std::__1::__optional_storage_base.base" }
%"struct.std::__1::__optional_storage_base.base" = type { %"struct.std::__1::__optional_destruct_base.base" }
%"struct.std::__1::__optional_destruct_base.base" = type <{ %union.anon, i8 }>
%union.anon = type { %"struct.__apo_stdlib::channel_value" }

$_ZN12__apo_stdlib15condvar_wait_msEPvi = comdat any

$_ZN12__apo_stdlib16channel_recv_strEPv = comdat any

$_ZN12__apo_stdlib20channel_try_recv_strEPv = comdat any

$_ZN12__apo_stdlib12mutex_handleD0Ev = comdat any

$_ZN12__apo_stdlib13opaque_handleD2Ev = comdat any

$_ZN12__apo_stdlib14condvar_handleD0Ev = comdat any

$_ZNSt3__118condition_variable10wait_untilB9nqe220103INS_6chrono12steady_clockENS2_8durationIxNS_5ratioILx1ELx1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE = comdat any

$_ZN12__apo_stdlib14channel_handleD2Ev = comdat any

$_ZN12__apo_stdlib14channel_handleD0Ev = comdat any

$_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEED2B9nqe220103Ev = comdat any

$_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb = comdat any

$_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE19__add_back_capacityEv = comdat any

$_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS3_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS3_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS3_EEEvDpOT_ = comdat any

$_ZSt28__throw_bad_array_new_lengthB9nqe220103v = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNSt3__120__throw_length_errorB9nqe220103EPKc = comdat any

$_ZNSt12length_errorC2B9nqe220103EPKc = comdat any

$_ZN12__apo_stdlib11channel_popEPvb = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy = comdat any

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

$_ZTISt20bad_array_new_length = comdat any

$_ZTSSt20bad_array_new_length = comdat any

$_ZTISt9bad_alloc = comdat any

$_ZTSSt9bad_alloc = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt12length_error = comdat any

$_ZTSSt12length_error = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

$_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

@_ZTVN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib12mutex_handleE, ptr @_ZN12__apo_stdlib13opaque_handleD2Ev, ptr @_ZN12__apo_stdlib12mutex_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib12mutex_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib12mutex_handleE = linkonce_odr dso_local constant [31 x i8] c"N12__apo_stdlib12mutex_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@_ZTVN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib14condvar_handleE, ptr @_ZN12__apo_stdlib13opaque_handleD2Ev, ptr @_ZN12__apo_stdlib14condvar_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib14condvar_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib14condvar_handleE = linkonce_odr dso_local constant [33 x i8] c"N12__apo_stdlib14condvar_handleE\00", comdat, align 1
@_ZTVN12__apo_stdlib14channel_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib14channel_handleE, ptr @_ZN12__apo_stdlib14channel_handleD2Ev, ptr @_ZN12__apo_stdlib14channel_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib14channel_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib14channel_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib14channel_handleE = linkonce_odr dso_local constant [33 x i8] c"N12__apo_stdlib14channel_handleE\00", comdat, align 1
@_ZTISt20bad_array_new_length = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt20bad_array_new_length, ptr @_ZTISt9bad_alloc }, comdat, align 8
@_ZTSSt20bad_array_new_length = linkonce_odr dso_local constant [25 x i8] c"St20bad_array_new_length\00", comdat, align 1
@_ZTISt9bad_alloc = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt9bad_alloc, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt9bad_alloc = linkonce_odr dso_local constant [13 x i8] c"St9bad_alloc\00", comdat, align 1
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@.str = private unnamed_addr constant [32 x i8] c"unique_lock::unlock: not locked\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local global %"class.std::__1::deque.26" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2114_5_1521sys__native_mutex_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwy(i64 noundef 32) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %4, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2114_5_1522sys__native_mutex_lockEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2114_5_1526sys__native_mutex_try_lockEPv(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call noundef zeroext i1 @_ZNSt3__15mutex8try_lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 8, !tbaa !20
  %12 = zext i1 %9 to i32
  br label %13

13:                                               ; preds = %1, %3, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2114_5_1524sys__native_mutex_unlockEPv(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i8, ptr %8, align 8, !tbaa !20, !range !23, !noundef !24
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %13

13:                                               ; preds = %1, %3, %7, %11
  %14 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2114_5_1523sys__native_condvar_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwy(i64 noundef 40) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1527sys__native_condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::chrono::time_point", align 8
  %4 = alloca %"class.std::__1::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 14
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %12, align 8, !tbaa !28
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load i64, ptr %13, align 8, !tbaa !29
  %15 = icmp slt i32 %1, 0
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %15, label %17, label %20

17:                                               ; preds = %10, %17
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(9) %4) #17
  %18 = load i64, ptr %13, align 8, !tbaa !29
  %19 = icmp eq i64 %18, %14
  br i1 %19, label %17, label %42, !llvm.loop !33

20:                                               ; preds = %10
  %21 = zext nneg i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %22 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  %23 = mul nuw nsw i64 %21, 1000000
  %24 = add nsw i64 %22, %23
  store i64 %24, ptr %3, align 8
  br label %25

25:                                               ; preds = %30, %20
  %26 = load i64, ptr %13, align 8, !tbaa !29
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = invoke noundef i32 @_ZNSt3__118condition_variable10wait_untilB9nqe220103INS_6chrono12steady_clockENS2_8durationIxNS_5ratioILx1ELx1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %30 unwind label %38

30:                                               ; preds = %28
  %31 = icmp eq i32 %29, 1
  br i1 %31, label %32, label %25, !llvm.loop !35

32:                                               ; preds = %30
  %33 = load i64, ptr %13, align 8, !tbaa !29
  %34 = icmp ne i64 %33, %14
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %25, %32
  %37 = phi i32 [ %35, %32 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %42

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load i8, ptr %12, align 8, !tbaa !28, !range !23, !noundef !24
  %41 = trunc nuw i8 %40 to i1
  br i1 %41, label %49, label %51

42:                                               ; preds = %17, %36
  %43 = phi i32 [ %37, %36 ], [ 1, %17 ]
  %44 = load i8, ptr %12, align 8, !tbaa !28, !range !23, !noundef !24
  %45 = trunc nuw i8 %44 to i1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %47) #17
  br label %48

48:                                               ; preds = %42, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %52

49:                                               ; preds = %38
  %50 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %50) #17
  br label %51

51:                                               ; preds = %38, %49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %39

52:                                               ; preds = %6, %2, %48
  %53 = phi i32 [ %43, %48 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %53
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32__apollo_inline_inline_2114_5_1530sys__native_condvar_notify_oneEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !29
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %13

13:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32__apollo_inline_inline_2114_5_1530sys__native_condvar_notify_allEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !29
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %13

13:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2114_5_1527sys__native_channel_boundedEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwy(i64 noundef 104) #22
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 15, ptr %5, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %2, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store i64 %4, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i8 0, ptr %8, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2114_5_1529sys__native_channel_unboundedEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwy(i64 noundef 104) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 15, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %3, i8 0, i64 81, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !54
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17, !noalias !54
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #24, !noalias !54
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %4, align 8, !alias.scope !54
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #22, !noalias !57
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %4, align 8, !tbaa !53, !alias.scope !54
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !62, !alias.scope !54
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !63, !alias.scope !54
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %1, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !53
  br label %29

29:                                               ; preds = %6, %26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %30, align 4, !tbaa !52
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !66
  %33 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %34 unwind label %41

34:                                               ; preds = %29
  %35 = load i8, ptr %32, align 8
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %40) #23
  br label %49

41:                                               ; preds = %29
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = load i8, ptr %32, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %48) #23
  br label %50

49:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %33

50:                                               ; preds = %46, %41
  resume { ptr, i32 } %42
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1529sys__native_channel_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !52
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %17

10:                                               ; preds = %2
  %11 = load i8, ptr %8, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %16) #23
  br label %26

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load i8, ptr %8, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %24) #23
  br label %25

25:                                               ; preds = %22, %17
  resume { ptr, i32 } %18

26:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_send_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !67
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17, !noalias !67
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #24, !noalias !67
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %4, align 8, !alias.scope !67
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #22, !noalias !70
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %4, align 8, !tbaa !53, !alias.scope !67
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !62, !alias.scope !67
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !63, !alias.scope !67
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %1, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !53
  br label %29

29:                                               ; preds = %6, %26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 1, ptr %3, align 8, !tbaa !46
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %30, align 4, !tbaa !52
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !66
  %33 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %34 unwind label %41

34:                                               ; preds = %29
  %35 = load i8, ptr %32, align 8
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %40) #23
  br label %49

41:                                               ; preds = %29
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = load i8, ptr %32, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %48) #23
  br label %50

49:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %33

50:                                               ; preds = %46, %41
  resume { ptr, i32 } %42
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1533sys__native_channel_try_send_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !52
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %17

10:                                               ; preds = %2
  %11 = load i8, ptr %8, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %16) #23
  br label %26

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load i8, ptr %8, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %24) #23
  br label %25

25:                                               ; preds = %22, %17
  resume { ptr, i32 } %18

26:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_send_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_recv_i32EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi i32 [ %11, %16 ], [ %11, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  %3 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !66
  br label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %20 = load i64, ptr %19, align 8, !tbaa !53
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %18, i64 noundef %20)
          to label %22 unwind label %92

21:                                               ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %22

22:                                               ; preds = %15, %16, %21
  %23 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27, !prof !77

25:                                               ; preds = %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %26 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = icmp eq ptr %30, %32
  %38 = mul i64 %36, 170
  %39 = add i64 %38, -1
  %40 = select i1 %37, i64 0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %42 = load i64, ptr %41, align 8, !tbaa !83
  %43 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %44 = load i64, ptr %43, align 8, !tbaa !62
  %45 = add i64 %44, %42
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %28)
          to label %48 unwind label %94

48:                                               ; preds = %47
  %49 = load i64, ptr %43, align 8, !tbaa !62, !noalias !87
  %50 = load i64, ptr %41, align 8, !tbaa !83, !noalias !87
  %51 = load ptr, ptr %31, align 8, !tbaa !82, !noalias !87
  %52 = load ptr, ptr %29, align 8, !tbaa !78, !noalias !87
  %53 = add i64 %50, %49
  br label %54

54:                                               ; preds = %48, %27
  %55 = phi i64 [ %53, %48 ], [ %45, %27 ]
  %56 = phi ptr [ %52, %48 ], [ %30, %27 ]
  %57 = phi ptr [ %51, %48 ], [ %32, %27 ]
  %58 = udiv i64 %55, 170
  %59 = getelementptr inbounds nuw ptr, ptr %57, i64 %58
  %60 = icmp ne ptr %57, %56
  call void @llvm.assume(i1 %60)
  %61 = load ptr, ptr %59, align 8, !tbaa !90, !noalias !87
  %62 = urem i64 %55, 170
  %63 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %61, i64 %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %64 = load i64, ptr %43, align 8, !tbaa !62
  %65 = add i64 %64, 1
  store i64 %65, ptr %43, align 8, !tbaa !62
  %66 = load i64, ptr %41, align 8, !tbaa !83
  %67 = add i64 %66, %64
  %68 = load ptr, ptr %31, align 8, !tbaa !82
  %69 = udiv i64 %67, 170
  %70 = getelementptr inbounds nuw ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !90
  %72 = urem i64 %67, 170
  %73 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %71, i64 %72
  %74 = load i8, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %76 = load ptr, ptr %75, align 8
  %77 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %78 = trunc nuw i8 %77 to i1
  br i1 %78, label %79, label %87

79:                                               ; preds = %54
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %81 = load i8, ptr %80, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %86) #23
  br label %87

87:                                               ; preds = %54, %79, %84
  %88 = and i8 %74, 1
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %91 = select i1 %89, ptr %90, ptr %76
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %91

92:                                               ; preds = %16
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %107

94:                                               ; preds = %47
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = load i8, ptr %3, align 8
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %9, label %103, label %99

99:                                               ; preds = %94
  br i1 %98, label %107, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %102) #23
  br label %107

103:                                              ; preds = %94
  br i1 %98, label %107, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %106 = load ptr, ptr %105, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %106) #23
  br label %107

107:                                              ; preds = %99, %100, %104, %103, %92
  %108 = phi { ptr, i32 } [ %93, %92 ], [ %95, %104 ], [ %95, %103 ], [ %95, %100 ], [ %95, %99 ]
  %109 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %110 = trunc nuw i8 %109 to i1
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %113 = load i8, ptr %112, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %118) #23
  br label %119

119:                                              ; preds = %107, %111, %116
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %108
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1529sys__native_channel_recv_boolEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi i32 [ %11, %16 ], [ %11, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_recv_f64EPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi double [ %11, %16 ], [ %11, %6 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret double %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_recv_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi i32 [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  %3 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !66
  br label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %20 = load i64, ptr %19, align 8, !tbaa !53
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %18, i64 noundef %20)
          to label %22 unwind label %92

21:                                               ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %22

22:                                               ; preds = %15, %16, %21
  %23 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27, !prof !77

25:                                               ; preds = %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %26 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = icmp eq ptr %30, %32
  %38 = mul i64 %36, 170
  %39 = add i64 %38, -1
  %40 = select i1 %37, i64 0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %42 = load i64, ptr %41, align 8, !tbaa !83
  %43 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %44 = load i64, ptr %43, align 8, !tbaa !62
  %45 = add i64 %44, %42
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %28)
          to label %48 unwind label %94

48:                                               ; preds = %47
  %49 = load i64, ptr %43, align 8, !tbaa !62, !noalias !92
  %50 = load i64, ptr %41, align 8, !tbaa !83, !noalias !92
  %51 = load ptr, ptr %31, align 8, !tbaa !82, !noalias !92
  %52 = load ptr, ptr %29, align 8, !tbaa !78, !noalias !92
  %53 = add i64 %50, %49
  br label %54

54:                                               ; preds = %48, %27
  %55 = phi i64 [ %53, %48 ], [ %45, %27 ]
  %56 = phi ptr [ %52, %48 ], [ %30, %27 ]
  %57 = phi ptr [ %51, %48 ], [ %32, %27 ]
  %58 = udiv i64 %55, 170
  %59 = getelementptr inbounds nuw ptr, ptr %57, i64 %58
  %60 = icmp ne ptr %57, %56
  call void @llvm.assume(i1 %60)
  %61 = load ptr, ptr %59, align 8, !tbaa !90, !noalias !92
  %62 = urem i64 %55, 170
  %63 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %61, i64 %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %64 = load i64, ptr %43, align 8, !tbaa !62
  %65 = add i64 %64, 1
  store i64 %65, ptr %43, align 8, !tbaa !62
  %66 = load i64, ptr %41, align 8, !tbaa !83
  %67 = add i64 %66, %64
  %68 = load ptr, ptr %31, align 8, !tbaa !82
  %69 = udiv i64 %67, 170
  %70 = getelementptr inbounds nuw ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !90
  %72 = urem i64 %67, 170
  %73 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %71, i64 %72
  %74 = load i8, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %76 = load ptr, ptr %75, align 8
  %77 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %78 = trunc nuw i8 %77 to i1
  br i1 %78, label %79, label %87

79:                                               ; preds = %54
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %81 = load i8, ptr %80, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %86) #23
  br label %87

87:                                               ; preds = %54, %79, %84
  %88 = and i8 %74, 1
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %91 = select i1 %89, ptr %90, ptr %76
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %91

92:                                               ; preds = %16
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %107

94:                                               ; preds = %47
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = load i8, ptr %3, align 8
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %9, label %103, label %99

99:                                               ; preds = %94
  br i1 %98, label %107, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %102) #23
  br label %107

103:                                              ; preds = %94
  br i1 %98, label %107, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %106 = load ptr, ptr %105, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %106) #23
  br label %107

107:                                              ; preds = %99, %100, %104, %103, %92
  %108 = phi { ptr, i32 } [ %93, %92 ], [ %95, %104 ], [ %95, %103 ], [ %95, %100 ], [ %95, %99 ]
  %109 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %110 = trunc nuw i8 %109 to i1
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %113 = load i8, ptr %112, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %118) #23
  br label %119

119:                                              ; preds = %107, %111, %116
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %108
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1533sys__native_channel_try_recv_boolEPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi i32 [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_recv_f64EPvd(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi double [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret double %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2114_5_1523sys__native_channel_lenEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = load i64, ptr %9, align 8, !tbaa !62
  %11 = trunc i64 %10 to i32
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2114_5_1525sys__native_channel_closeEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %9, align 8, !tbaa !45
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2114_5_1529sys__native_channel_is_closedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %10 = load i8, ptr %9, align 8, !tbaa !45, !range !23, !noundef !24
  %11 = zext nneg i8 %10 to i32
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 1, %1 ], [ 1, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_mutex_new() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwy(i64 noundef 32) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib12mutex_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %3, align 8, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %4, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %9, align 8, !tbaa !20
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_try_lock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call noundef zeroext i1 @_ZNSt3__15mutex8try_lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 8, !tbaa !20
  %12 = zext i1 %9 to i32
  br label %13

13:                                               ; preds = %1, %3, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @sys__native_mutex_unlock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 13
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i8, ptr %8, align 8, !tbaa !20, !range !23, !noundef !24
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  store i8 0, ptr %8, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %13

13:                                               ; preds = %1, %3, %7, %11
  %14 = phi i32 [ 1, %11 ], [ 0, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_condvar_new() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwy(i64 noundef 40) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 14, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14condvar_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_condvar_wait_ms(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN12__apo_stdlib15condvar_wait_msEPvi(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_channel_bounded(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwy(i64 noundef 104) #22
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 15, ptr %5, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %2, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store i64 %4, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i8 0, ptr %8, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_channel_unbounded() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwy(i64 noundef 104) #22
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 15, ptr %2, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib14channel_handleE, i64 16), ptr %1, align 8, !tbaa !15
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %3, i8 0, i64 81, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2114_5_1528sys__native_channel_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !52
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %10 unwind label %17

10:                                               ; preds = %2
  %11 = load i8, ptr %8, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %16) #23
  br label %26

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load i8, ptr %8, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %24) #23
  br label %25

25:                                               ; preds = %22, %17
  resume { ptr, i32 } %18

26:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_str(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN32__apollo_inline_inline_2114_5_1532sys__native_channel_try_send_strEPvPKc(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %4, align 4, !tbaa !52
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %9 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %10 unwind label %17

10:                                               ; preds = %2
  %11 = load i8, ptr %8, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %16) #23
  br label %26

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load i8, ptr %8, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %24) #23
  br label %25

25:                                               ; preds = %22, %17
  resume { ptr, i32 } %18

26:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_channel_try_send_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.__apo_stdlib::channel_value", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 3, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %7 = invoke noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load i8, ptr %6, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %14) #23
  br label %24

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %6, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %20, %15
  resume { ptr, i32 } %16

24:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_recv_i32(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi i32 [ %11, %16 ], [ %11, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_channel_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16channel_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_recv_bool(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %8, i32 %10, i32 0
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi i32 [ %11, %16 ], [ %11, %6 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %20
}

; Function Attrs: mustprogress uwtable
define dso_local double @sys__native_channel_recv_f64(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %2, ptr noundef %0, i1 noundef zeroext true)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %4 = load i8, ptr %3, align 8, !tbaa !75, !range !23, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 3
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load double, ptr %9, align 8
  %11 = select i1 %8, double %10, double 0.000000e+00
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %18) #23
  br label %19

19:                                               ; preds = %1, %6, %16
  %20 = phi double [ %11, %16 ], [ %11, %6 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret double %20
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_try_recv_i32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi i32 [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_channel_try_recv_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib20channel_try_recv_strEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_try_recv_bool(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = load i32, ptr %10, align 4
  %12 = select i1 %9, i32 %11, i32 %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi i32 [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local double @sys__native_channel_try_recv_f64(ptr noundef %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::optional", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional") align 8 %3, ptr noundef %0, i1 noundef zeroext false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i8, ptr %4, align 8, !tbaa !75, !range !23, !noundef !24
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 3
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double %11, double %1
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %2, %7, %17
  %21 = phi double [ %12, %17 ], [ %12, %7 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret double %21
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_channel_len(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = load i64, ptr %9, align 8, !tbaa !62
  %11 = trunc i64 %10 to i32
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %9, align 8, !tbaa !45
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_channel_is_closed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %10 = load i8, ptr %9, align 8, !tbaa !45, !range !23, !noundef !24
  %11 = zext nneg i8 %10 to i32
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  br label %12

12:                                               ; preds = %1, %3, %7
  %13 = phi i32 [ %11, %7 ], [ 1, %1 ], [ 1, %3 ]
  ret i32 %13
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib12mutex_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare dso_local void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind
declare dso_local noundef zeroext i1 @_ZNSt3__15mutex8try_lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14condvar_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt3__16chrono12steady_clock3nowEv() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__118condition_variable10wait_untilB9nqe220103INS_6chrono12steady_clockENS2_8durationIxNS_5ratioILx1ELx1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  %5 = load i64, ptr %2, align 8, !tbaa !62
  %6 = icmp sgt i64 %5, %4
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  %9 = sub nsw i64 %5, %8
  %10 = icmp slt i64 %9, 1
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  %13 = tail call i64 @_ZNSt3__16chrono12system_clock3nowEv() #17
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i64 %13, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = icmp samesign ugt i64 %13, 9223372036854775
  br i1 %18, label %23, label %21

19:                                               ; preds = %15
  %20 = icmp samesign ult i64 %13, -9223372036854775
  br i1 %20, label %27, label %21

21:                                               ; preds = %19, %17
  %22 = mul nsw i64 %13, 1000
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %22, %21 ], [ 9223372036854775807, %17 ]
  %25 = sub nuw nsw i64 9223372036854775807, %9
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19, %11
  %28 = phi i64 [ %24, %23 ], [ -9223372036854775808, %19 ], [ 0, %11 ]
  %29 = add nsw i64 %28, %9
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %29, %27 ], [ 9223372036854775807, %23 ]
  tail call void @_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILx1ELx1000000000EEEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i64 %31) #17
  %32 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  br label %33

33:                                               ; preds = %7, %30
  %34 = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #17
  %35 = load i64, ptr %2, align 8, !tbaa !62
  %36 = icmp sge i64 %34, %35
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %3, %33
  %39 = phi i32 [ %37, %33 ], [ 1, %3 ]
  ret i32 %39
}

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt3__16chrono12system_clock3nowEv() local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILx1ELx1000000000EEEEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9), i64) local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14channel_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14channel_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !95, !noalias !96
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !99, !noalias !96
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !100, !noalias !96
  %12 = udiv i64 %11, 102
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !101, !noalias !96
  %15 = urem i64 %11, 102
  %16 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !62, !noalias !103
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 102
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !101, !noalias !103
  %23 = urem i64 %19, 102
  %24 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %61
  %27 = load ptr, ptr %5, align 8, !tbaa !99
  %28 = load ptr, ptr %2, align 8, !tbaa !95
  br label %29

29:                                               ; preds = %26, %10, %8
  %30 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %6, %8 ]
  %31 = phi ptr [ %17, %26 ], [ %17, %10 ], [ %9, %8 ]
  %32 = phi ptr [ %28, %26 ], [ %3, %10 ], [ %3, %8 ]
  %33 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %3, %8 ]
  store i64 0, ptr %31, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %32 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ugt i64 %37, 2
  br i1 %38, label %66, label %77

39:                                               ; preds = %10, %61
  %40 = phi ptr [ %62, %61 ], [ %14, %10 ]
  %41 = phi ptr [ %64, %61 ], [ %16, %10 ]
  %42 = phi ptr [ %63, %61 ], [ %13, %10 ]
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  tail call void @_ZdlPv(ptr noundef %49) #23
  %50 = load ptr, ptr %42, align 8, !tbaa !101
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi ptr [ %50, %47 ], [ %40, %39 ]
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 40
  %54 = ptrtoint ptr %53 to i64
  %55 = ptrtoint ptr %52 to i64
  %56 = sub i64 %54, %55
  %57 = icmp eq i64 %56, 4080
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi ptr [ %60, %58 ], [ %52, %51 ]
  %63 = phi ptr [ %59, %58 ], [ %42, %51 ]
  %64 = phi ptr [ %60, %58 ], [ %53, %51 ]
  %65 = icmp eq ptr %64, %24
  br i1 %65, label %26, label %39, !llvm.loop !106

66:                                               ; preds = %29, %66
  %67 = phi ptr [ %70, %66 ], [ %32, %29 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !101
  tail call void @_ZdlPv(ptr noundef %68) #23
  %69 = load ptr, ptr %2, align 8, !tbaa !95
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr %70, ptr %2, align 8, !tbaa !95
  %71 = load ptr, ptr %5, align 8, !tbaa !99
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %72, %73
  %75 = ashr exact i64 %74, 3
  %76 = icmp ugt i64 %75, 2
  br i1 %76, label %66, label %77

77:                                               ; preds = %66, %29
  %78 = phi ptr [ %30, %29 ], [ %71, %66 ]
  %79 = phi ptr [ %32, %29 ], [ %70, %66 ]
  %80 = phi i64 [ %37, %29 ], [ %75, %66 ]
  switch i64 %80, label %84 [
    i64 1, label %82
    i64 2, label %81
  ]

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i64 [ 102, %81 ], [ 51, %77 ]
  store i64 %83, ptr %4, align 8, !tbaa !100
  br label %84

84:                                               ; preds = %77, %82
  %85 = icmp eq ptr %79, %78
  br i1 %85, label %94, label %86

86:                                               ; preds = %84, %86
  %87 = phi ptr [ %89, %86 ], [ %79, %84 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !101
  tail call void @_ZdlPv(ptr noundef %88) #23
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %90 = icmp eq ptr %89, %78
  br i1 %90, label %91, label %86, !llvm.loop !107

91:                                               ; preds = %86
  %92 = load ptr, ptr %2, align 8, !tbaa !95
  %93 = load ptr, ptr %5, align 8, !tbaa !99
  br label %94

94:                                               ; preds = %91, %84
  %95 = phi ptr [ %93, %91 ], [ %78, %84 ]
  %96 = phi ptr [ %92, %91 ], [ %78, %84 ]
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %95 to i64
  %99 = sub i64 %98, %97
  %100 = lshr i64 %99, 3
  %101 = mul i64 %100, -8
  %102 = getelementptr i8, ptr %95, i64 %101
  store ptr %102, ptr %5, align 8, !tbaa !99
  %103 = load ptr, ptr %0, align 8, !tbaa !108
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  tail call void @_ZdlPv(ptr noundef nonnull %103) #23
  br label %106

106:                                              ; preds = %94, %105
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12channel_pushEPvNS_13channel_valueEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::unique_lock", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %109, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %109

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %4, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %12, align 8, !tbaa !28
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %2, label %13, label %38

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %16 = load i64, ptr %15, align 8, !tbaa !36
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %21

21:                                               ; preds = %18, %28
  %22 = phi i64 [ %29, %28 ], [ %16, %18 ]
  %23 = load i64, ptr %19, align 8, !tbaa !62
  %24 = icmp ult i64 %23, %22
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %20, align 8, !tbaa !45, !range !23, !noundef !24
  %27 = trunc nuw i8 %26 to i1
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(9) %4) #17
  %29 = load i64, ptr %15, align 8, !tbaa !36
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %50, label %21, !llvm.loop !109

31:                                               ; preds = %97, %73
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load i8, ptr %12, align 8, !tbaa !28, !range !23, !noundef !24
  %34 = trunc nuw i8 %33 to i1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #17
  br label %37

37:                                               ; preds = %31, %35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %32

38:                                               ; preds = %10
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %40 = load i64, ptr %39, align 8, !tbaa !36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %44 = load i64, ptr %43, align 8, !tbaa !62
  %45 = icmp ult i64 %44, %40
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %48 = load i8, ptr %47, align 8, !tbaa !45, !range !23, !noundef !24
  %49 = trunc nuw i8 %48 to i1
  br i1 %49, label %50, label %102

50:                                               ; preds = %28, %25, %21, %38, %42, %13, %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %52 = load i8, ptr %51, align 8, !tbaa !45, !range !23, !noundef !24
  %53 = trunc nuw i8 %52 to i1
  br i1 %53, label %102, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %56 = load ptr, ptr %55, align 8, !tbaa !99
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = ashr exact i64 %61, 3
  %63 = icmp eq ptr %56, %58
  %64 = mul i64 %62, 102
  %65 = add i64 %64, -1
  %66 = select i1 %63, i64 0, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %68 = load i64, ptr %67, align 8, !tbaa !100
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %70 = load i64, ptr %69, align 8, !tbaa !62
  %71 = add i64 %70, %68
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %54
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %74)
          to label %75 unwind label %31

75:                                               ; preds = %73
  %76 = load i64, ptr %69, align 8, !tbaa !62, !noalias !110
  %77 = load i64, ptr %67, align 8, !tbaa !100, !noalias !110
  %78 = load ptr, ptr %57, align 8, !tbaa !95, !noalias !110
  %79 = load ptr, ptr %55, align 8, !tbaa !99, !noalias !110
  %80 = add i64 %77, %76
  br label %81

81:                                               ; preds = %75, %54
  %82 = phi i64 [ %80, %75 ], [ %71, %54 ]
  %83 = phi ptr [ %79, %75 ], [ %56, %54 ]
  %84 = phi ptr [ %78, %75 ], [ %58, %54 ]
  %85 = udiv i64 %82, 102
  %86 = getelementptr inbounds nuw ptr, ptr %84, i64 %85
  %87 = icmp ne ptr %84, %83
  call void @llvm.assume(i1 %87)
  %88 = load ptr, ptr %86, align 8, !tbaa !101, !noalias !110
  %89 = urem i64 %82, 102
  %90 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %88, i64 %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %90, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 16, i1 false)
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(24) %92, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %92, i8 0, i64 24, i1 false)
  %93 = load i64, ptr %69, align 8, !tbaa !62
  %94 = add i64 %93, 1
  store i64 %94, ptr %69, align 8, !tbaa !62
  %95 = load i8, ptr %12, align 8, !tbaa !28, !range !23, !noundef !24
  %96 = trunc nuw i8 %95 to i1
  br i1 %96, label %99, label %97

97:                                               ; preds = %81
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef nonnull @.str) #24
          to label %98 unwind label %31

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %81
  %100 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %100) #17
  store i8 0, ptr %12, align 8, !tbaa !28
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(8) %101) #17
  br label %102

102:                                              ; preds = %50, %46, %99
  %103 = phi i32 [ 0, %46 ], [ 1, %99 ], [ 0, %50 ]
  %104 = load i8, ptr %12, align 8, !tbaa !28, !range !23, !noundef !24
  %105 = trunc nuw i8 %104 to i1
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %107) #17
  br label %108

108:                                              ; preds = %102, %106
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %109

109:                                              ; preds = %6, %3, %108
  %110 = phi i32 [ %103, %108 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %110
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !100
  %8 = icmp ugt i64 %7, 101
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -102
  store i64 %10, ptr %6, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  store ptr %13, ptr %2, align 8, !tbaa !101
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !95
  call void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  %25 = load ptr, ptr %0, align 8, !tbaa !108
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %33, ptr %3, align 8, !tbaa !101
  call void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %35, ptr %4, align 8, !tbaa !101
  call void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %36 = load ptr, ptr %18, align 8, !tbaa !95
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  store ptr %37, ptr %5, align 8, !tbaa !101
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !95
  call void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !114
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #22, !noalias !114
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
          to label %51 unwind label %81

51:                                               ; preds = %45
  %52 = icmp samesign eq i64 %46, %22
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = icmp eq ptr %17, %19
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = ashr exact i64 %22, 3
  %57 = add nsw i64 %56, 1
  %58 = sdiv i64 %57, -2
  %59 = getelementptr inbounds ptr, ptr %48, i64 %58
  br label %64

60:                                               ; preds = %53
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #22
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #23
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !101
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !99
  %71 = load ptr, ptr %18, align 8, !tbaa !95
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !117
  store ptr %77, ptr %0, align 8, !tbaa !117
  store ptr %76, ptr %18, align 8, !tbaa !117
  store ptr %74, ptr %23, align 8, !tbaa !117
  store ptr %75, ptr %16, align 8, !tbaa !117
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #23
  br label %191

81:                                               ; preds = %45
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %188

83:                                               ; preds = %64, %169
  %84 = phi ptr [ %89, %169 ], [ %70, %64 ]
  %85 = phi ptr [ %172, %169 ], [ %67, %64 ]
  %86 = phi ptr [ %174, %169 ], [ %66, %64 ]
  %87 = phi ptr [ %179, %169 ], [ %69, %64 ]
  %88 = phi ptr [ %170, %169 ], [ %65, %64 ]
  %89 = getelementptr inbounds i8, ptr %84, i64 -8
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %85 to i64
  %92 = icmp eq ptr %86, %85
  br i1 %92, label %93, label %169

93:                                               ; preds = %83
  %94 = ptrtoint ptr %88 to i64
  %95 = ptrtoint ptr %87 to i64
  %96 = icmp eq ptr %88, %87
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = sub i64 %94, %95
  %99 = ashr exact i64 %98, 3
  %100 = add nsw i64 %99, 1
  %101 = sdiv i64 %100, 2
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = sub i64 %95, %90
  %104 = ashr exact i64 %103, 3
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !118
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #22
          to label %118 unwind label %184

118:                                              ; preds = %115
  %119 = ptrtoint ptr %117 to i64
  %120 = add nuw nsw i64 %111, 3
  %121 = lshr i64 %120, 2
  %122 = getelementptr inbounds nuw ptr, ptr %117, i64 %121
  %123 = getelementptr inbounds nuw ptr, ptr %117, i64 %111
  %124 = sub i64 %95, %90
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 %124
  br i1 %110, label %167, label %126

126:                                              ; preds = %118
  %127 = add i64 %95, -8
  %128 = sub i64 %127, %90
  %129 = lshr i64 %128, 3
  %130 = add nuw nsw i64 %129, 1
  %131 = icmp ult i64 %128, 56
  br i1 %131, label %157, label %132

132:                                              ; preds = %126
  %133 = shl nuw nsw i64 %121, 3
  %134 = add i64 %133, %119
  %135 = sub i64 %134, %90
  %136 = icmp ult i64 %135, 32
  br i1 %136, label %157, label %137

137:                                              ; preds = %132
  %138 = and i64 %130, 4611686018427387900
  %139 = shl i64 %138, 3
  %140 = getelementptr i8, ptr %122, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr i8, ptr %86, i64 %141
  br label %143

143:                                              ; preds = %143, %137
  %144 = phi i64 [ 0, %137 ], [ %153, %143 ]
  %145 = shl i64 %144, 3
  %146 = getelementptr i8, ptr %122, i64 %145
  %147 = shl i64 %144, 3
  %148 = getelementptr i8, ptr %86, i64 %147
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !101
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !101
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !101
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !101
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !127

155:                                              ; preds = %143
  %156 = icmp eq i64 %130, %138
  br i1 %156, label %167, label %157

157:                                              ; preds = %132, %126, %155
  %158 = phi ptr [ %122, %132 ], [ %122, %126 ], [ %140, %155 ]
  %159 = phi ptr [ %86, %132 ], [ %86, %126 ], [ %142, %155 ]
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi ptr [ %164, %160 ], [ %158, %157 ]
  %162 = phi ptr [ %165, %160 ], [ %159, %157 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !101
  store ptr %163, ptr %161, align 8, !tbaa !101
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !130

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #23
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !101
  store ptr %175, ptr %174, align 8, !tbaa !101
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !95
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #23
  br label %188

184:                                              ; preds = %115
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %188

186:                                              ; preds = %113
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %188

188:                                              ; preds = %81, %182, %186, %184
  %189 = phi { ptr, i32 } [ %82, %81 ], [ %183, %182 ], [ %185, %184 ], [ %187, %186 ]
  %190 = phi ptr [ %47, %81 ], [ %47, %182 ], [ %85, %184 ], [ %85, %186 ]
  tail call void @_ZdlPv(ptr noundef nonnull %190) #23
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = load ptr, ptr %0, align 8, !tbaa !108
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !131
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !95
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !95
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !140
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !140
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !95
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !101
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !101
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !101
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !101
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !143

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !101
  store ptr %83, ptr %81, align 8, !tbaa !101
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !144

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !117
  store ptr %37, ptr %0, align 8, !tbaa !117
  store ptr %39, ptr %11, align 8, !tbaa !117
  store ptr %40, ptr %5, align 8, !tbaa !117
  store ptr %88, ptr %3, align 8, !tbaa !117
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !101
  store ptr %94, ptr %93, align 8, !tbaa !101
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = load ptr, ptr %0, align 8, !tbaa !108
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !145
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !95
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !95
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !154
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !154
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !95
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !101
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !101
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !101
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !101
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !157

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !101
  store ptr %83, ptr %81, align 8, !tbaa !101
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !158

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !117
  store ptr %37, ptr %0, align 8, !tbaa !117
  store ptr %39, ptr %11, align 8, !tbaa !117
  store ptr %40, ptr %5, align 8, !tbaa !117
  store ptr %88, ptr %3, align 8, !tbaa !117
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !101
  store ptr %94, ptr %93, align 8, !tbaa !101
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %0, align 8, !tbaa !108
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = icmp eq ptr %13, %11
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  %18 = sub i64 %14, %15
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, 2
  %22 = getelementptr inbounds ptr, ptr %11, i64 %21
  %23 = sub i64 %15, %6
  %24 = ashr exact i64 %23, 3
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !159
  store ptr %22, ptr %10, align 8, !tbaa !99
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !168
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #22, !noalias !168
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !95
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %15, %43
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 %44
  %46 = icmp eq ptr %11, %42
  br i1 %46, label %88, label %47

47:                                               ; preds = %34
  %48 = add i64 %15, -8
  %49 = sub i64 %48, %43
  %50 = lshr i64 %49, 3
  %51 = add nuw nsw i64 %50, 1
  %52 = icmp ult i64 %49, 104
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = shl nuw nsw i64 %36, 3
  %55 = add i64 %54, %39
  %56 = sub i64 %55, %43
  %57 = icmp ult i64 %56, 32
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = and i64 %51, 4611686018427387900
  %60 = shl i64 %59, 3
  %61 = getelementptr i8, ptr %40, i64 %60
  %62 = shl i64 %59, 3
  %63 = getelementptr i8, ptr %42, i64 %62
  br label %64

64:                                               ; preds = %64, %58
  %65 = phi i64 [ 0, %58 ], [ %74, %64 ]
  %66 = shl i64 %65, 3
  %67 = getelementptr i8, ptr %40, i64 %66
  %68 = shl i64 %65, 3
  %69 = getelementptr i8, ptr %42, i64 %68
  %70 = getelementptr i8, ptr %69, i64 16
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !101
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !101
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !101
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !101
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !171

76:                                               ; preds = %64
  %77 = icmp eq i64 %51, %59
  br i1 %77, label %88, label %78

78:                                               ; preds = %53, %47, %76
  %79 = phi ptr [ %40, %53 ], [ %40, %47 ], [ %61, %76 ]
  %80 = phi ptr [ %42, %53 ], [ %42, %47 ], [ %63, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %85, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !101
  store ptr %84, ptr %82, align 8, !tbaa !101
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !172

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !117
  store ptr %38, ptr %0, align 8, !tbaa !117
  store ptr %40, ptr %3, align 8, !tbaa !117
  store ptr %41, ptr %12, align 8, !tbaa !117
  store ptr %89, ptr %10, align 8, !tbaa !117
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #23
  %93 = load ptr, ptr %3, align 8, !tbaa !95
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !101
  store ptr %97, ptr %96, align 8, !tbaa !101
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !99
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !95
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() local_unnamed_addr #10 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #17
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #24
  unreachable
}

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: noreturn
declare dso_local void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #15 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str.1) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #24
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #17
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !15
  ret void
}

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11channel_popEPvb(ptr dead_on_unwind noalias writable sret(%"class.std::__1::optional") align 8 %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::unique_lock", align 8
  %5 = alloca { i32, i32, double }, align 8
  %6 = alloca [15 x i8], align 1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %14, label %12

12:                                               ; preds = %3, %8
  store i8 0, ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %13, align 8, !tbaa !75
  br label %115

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %15, ptr %4, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %16, align 8, !tbaa !28
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %2, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %20 = load i64, ptr %19, align 8, !tbaa !62
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %24

24:                                               ; preds = %22, %27
  %25 = load i8, ptr %23, align 8, !tbaa !45, !range !23, !noundef !24
  %26 = trunc nuw i8 %25 to i1
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(9) %4) #17
  %28 = load i64, ptr %19, align 8, !tbaa !62
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %24, label %42, !llvm.loop !173

30:                                               ; preds = %14
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %32 = load i64, ptr %31, align 8, !tbaa !62
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %36 = load i8, ptr %35, align 8, !tbaa !45, !range !23, !noundef !24
  %37 = trunc nuw i8 %36 to i1
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  store i8 0, ptr %0, align 8, !tbaa !53
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %39, align 8, !tbaa !75
  br label %106

40:                                               ; preds = %24, %34
  store i8 0, ptr %0, align 8, !tbaa !53
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %41, align 8, !tbaa !75
  br label %106

42:                                               ; preds = %27, %30, %17
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %47 = load i64, ptr %46, align 8, !tbaa !100
  %48 = udiv i64 %47, 102
  %49 = getelementptr inbounds nuw ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = urem i64 %47, 102
  %52 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %50, i64 %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false)
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %54 = load i8, ptr %53, align 8
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(15) %55, i64 15, i1 false), !tbaa.struct !174
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %58 = load ptr, ptr %44, align 8, !tbaa !95
  %59 = load i64, ptr %46, align 8, !tbaa !100
  %60 = udiv i64 %59, 102
  %61 = getelementptr inbounds nuw ptr, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !101
  %63 = urem i64 %59, 102
  %64 = getelementptr inbounds nuw %"struct.__apo_stdlib::channel_value", ptr %62, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %42
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %71 = load ptr, ptr %70, align 8, !tbaa !53
  call void @_ZdlPv(ptr noundef %71) #23
  %72 = load i64, ptr %46, align 8, !tbaa !100
  br label %73

73:                                               ; preds = %69, %42
  %74 = phi i64 [ %59, %42 ], [ %72, %69 ]
  %75 = load i64, ptr %43, align 8, !tbaa !62
  %76 = add i64 %75, -1
  store i64 %76, ptr %43, align 8, !tbaa !62
  %77 = add i64 %74, 1
  store i64 %77, ptr %46, align 8, !tbaa !100
  %78 = icmp ult i64 %77, 204
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %44, align 8, !tbaa !95
  %81 = load ptr, ptr %80, align 8, !tbaa !101
  call void @_ZdlPv(ptr noundef %81) #23
  %82 = load ptr, ptr %44, align 8, !tbaa !95
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 8
  store ptr %83, ptr %44, align 8, !tbaa !95
  %84 = load i64, ptr %46, align 8, !tbaa !100
  %85 = add i64 %84, -102
  store i64 %85, ptr %46, align 8, !tbaa !100
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i8, ptr %16, align 8, !tbaa !28, !range !23, !noundef !24
  %88 = trunc nuw i8 %87 to i1
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef nonnull @.str) #24
          to label %90 unwind label %98

90:                                               ; preds = %89
  unreachable

91:                                               ; preds = %86
  %92 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #17
  store i8 0, ptr %16, align 8, !tbaa !28
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(8) %93) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %54, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %95, ptr noundef nonnull align 1 dereferenceable(15) %6, i64 15, i1 false), !tbaa.struct !174
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %57, ptr %96, align 8, !tbaa !53
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %97, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %106

98:                                               ; preds = %89
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = and i8 %54, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @_ZdlPv(ptr noundef %57) #23
  br label %103

103:                                              ; preds = %98, %102
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %104 = load i8, ptr %16, align 8, !tbaa !28, !range !23, !noundef !24
  %105 = trunc nuw i8 %104 to i1
  br i1 %105, label %112, label %114

106:                                              ; preds = %91, %40, %38
  %107 = load i8, ptr %16, align 8, !tbaa !28, !range !23, !noundef !24
  %108 = trunc nuw i8 %107 to i1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %110) #17
  br label %111

111:                                              ; preds = %106, %109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %115

112:                                              ; preds = %103
  %113 = load ptr, ptr %4, align 8, !tbaa !25
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %113) #17
  br label %114

114:                                              ; preds = %103, %112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %99

115:                                              ; preds = %111, %12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !82, !noalias !175
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !78, !noalias !175
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !83, !noalias !175
  %12 = udiv i64 %11, 170
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !90, !noalias !175
  %15 = urem i64 %11, 170
  %16 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !62, !noalias !178
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 170
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !90, !noalias !178
  %23 = urem i64 %19, 170
  %24 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %60
  %27 = load ptr, ptr %5, align 8, !tbaa !78
  %28 = load ptr, ptr %2, align 8, !tbaa !82
  br label %29

29:                                               ; preds = %26, %10, %8
  %30 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %6, %8 ]
  %31 = phi ptr [ %17, %26 ], [ %17, %10 ], [ %9, %8 ]
  %32 = phi ptr [ %28, %26 ], [ %3, %10 ], [ %3, %8 ]
  %33 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %3, %8 ]
  store i64 0, ptr %31, align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %32 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ugt i64 %37, 2
  br i1 %38, label %65, label %76

39:                                               ; preds = %10, %60
  %40 = phi ptr [ %61, %60 ], [ %14, %10 ]
  %41 = phi ptr [ %63, %60 ], [ %16, %10 ]
  %42 = phi ptr [ %62, %60 ], [ %13, %10 ]
  %43 = load i8, ptr %41, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  tail call void @_ZdlPv(ptr noundef %48) #23
  %49 = load ptr, ptr %42, align 8, !tbaa !90
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %49, %46 ], [ %40, %39 ]
  %52 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %51 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 4080
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !90
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %50 ]
  %62 = phi ptr [ %58, %57 ], [ %42, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %52, %50 ]
  %64 = icmp eq ptr %63, %24
  br i1 %64, label %26, label %39, !llvm.loop !181

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %69, %65 ], [ %32, %29 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !90
  tail call void @_ZdlPv(ptr noundef %67) #23
  %68 = load ptr, ptr %2, align 8, !tbaa !82
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %2, align 8, !tbaa !82
  %70 = load ptr, ptr %5, align 8, !tbaa !78
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %69 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp ugt i64 %74, 2
  br i1 %75, label %65, label %76

76:                                               ; preds = %65, %29
  %77 = phi ptr [ %30, %29 ], [ %70, %65 ]
  %78 = phi ptr [ %32, %29 ], [ %69, %65 ]
  %79 = phi i64 [ %37, %29 ], [ %74, %65 ]
  switch i64 %79, label %83 [
    i64 1, label %81
    i64 2, label %80
  ]

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i64 [ 170, %80 ], [ 85, %76 ]
  store i64 %82, ptr %4, align 8, !tbaa !83
  br label %83

83:                                               ; preds = %76, %81
  %84 = icmp eq ptr %78, %77
  br i1 %84, label %93, label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %78, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !90
  tail call void @_ZdlPv(ptr noundef %87) #23
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = icmp eq ptr %88, %77
  br i1 %89, label %90, label %85, !llvm.loop !182

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8, !tbaa !82
  %92 = load ptr, ptr %5, align 8, !tbaa !78
  br label %93

93:                                               ; preds = %90, %83
  %94 = phi ptr [ %92, %90 ], [ %77, %83 ]
  %95 = phi ptr [ %91, %90 ], [ %77, %83 ]
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %94 to i64
  %98 = sub i64 %97, %96
  %99 = lshr i64 %98, 3
  %100 = mul i64 %99, -8
  %101 = getelementptr i8, ptr %94, i64 %100
  store ptr %101, ptr %5, align 8, !tbaa !78
  %102 = load ptr, ptr %0, align 8, !tbaa !183
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @_ZdlPv(ptr noundef nonnull %102) #23
  br label %105

105:                                              ; preds = %93, %104
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = icmp ugt i64 %7, 169
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -170
  store i64 %10, ptr %6, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  store ptr %13, ptr %2, align 8, !tbaa !90
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !82
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !184
  %25 = load ptr, ptr %0, align 8, !tbaa !183
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %33, ptr %3, align 8, !tbaa !90
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %35, ptr %4, align 8, !tbaa !90
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %36 = load ptr, ptr %18, align 8, !tbaa !82
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  store ptr %37, ptr %5, align 8, !tbaa !90
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !82
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !185
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #22, !noalias !185
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
          to label %51 unwind label %81

51:                                               ; preds = %45
  %52 = icmp samesign eq i64 %46, %22
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = icmp eq ptr %17, %19
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = ashr exact i64 %22, 3
  %57 = add nsw i64 %56, 1
  %58 = sdiv i64 %57, -2
  %59 = getelementptr inbounds ptr, ptr %48, i64 %58
  br label %64

60:                                               ; preds = %53
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #22
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #23
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !90
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !78
  %71 = load ptr, ptr %18, align 8, !tbaa !82
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !188
  store ptr %77, ptr %0, align 8, !tbaa !188
  store ptr %76, ptr %18, align 8, !tbaa !188
  store ptr %74, ptr %23, align 8, !tbaa !188
  store ptr %75, ptr %16, align 8, !tbaa !188
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #23
  br label %191

81:                                               ; preds = %45
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %188

83:                                               ; preds = %64, %169
  %84 = phi ptr [ %89, %169 ], [ %70, %64 ]
  %85 = phi ptr [ %172, %169 ], [ %67, %64 ]
  %86 = phi ptr [ %174, %169 ], [ %66, %64 ]
  %87 = phi ptr [ %179, %169 ], [ %69, %64 ]
  %88 = phi ptr [ %170, %169 ], [ %65, %64 ]
  %89 = getelementptr inbounds i8, ptr %84, i64 -8
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %85 to i64
  %92 = icmp eq ptr %86, %85
  br i1 %92, label %93, label %169

93:                                               ; preds = %83
  %94 = ptrtoint ptr %88 to i64
  %95 = ptrtoint ptr %87 to i64
  %96 = icmp eq ptr %88, %87
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = sub i64 %94, %95
  %99 = ashr exact i64 %98, 3
  %100 = add nsw i64 %99, 1
  %101 = sdiv i64 %100, 2
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = sub i64 %95, %90
  %104 = ashr exact i64 %103, 3
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !189
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #22
          to label %118 unwind label %184

118:                                              ; preds = %115
  %119 = ptrtoint ptr %117 to i64
  %120 = add nuw nsw i64 %111, 3
  %121 = lshr i64 %120, 2
  %122 = getelementptr inbounds nuw ptr, ptr %117, i64 %121
  %123 = getelementptr inbounds nuw ptr, ptr %117, i64 %111
  %124 = sub i64 %95, %90
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 %124
  br i1 %110, label %167, label %126

126:                                              ; preds = %118
  %127 = add i64 %95, -8
  %128 = sub i64 %127, %90
  %129 = lshr i64 %128, 3
  %130 = add nuw nsw i64 %129, 1
  %131 = icmp ult i64 %128, 56
  br i1 %131, label %157, label %132

132:                                              ; preds = %126
  %133 = shl nuw nsw i64 %121, 3
  %134 = add i64 %133, %119
  %135 = sub i64 %134, %90
  %136 = icmp ult i64 %135, 32
  br i1 %136, label %157, label %137

137:                                              ; preds = %132
  %138 = and i64 %130, 4611686018427387900
  %139 = shl i64 %138, 3
  %140 = getelementptr i8, ptr %122, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr i8, ptr %86, i64 %141
  br label %143

143:                                              ; preds = %143, %137
  %144 = phi i64 [ 0, %137 ], [ %153, %143 ]
  %145 = shl i64 %144, 3
  %146 = getelementptr i8, ptr %122, i64 %145
  %147 = shl i64 %144, 3
  %148 = getelementptr i8, ptr %86, i64 %147
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !90
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !90
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !90
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !90
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !198

155:                                              ; preds = %143
  %156 = icmp eq i64 %130, %138
  br i1 %156, label %167, label %157

157:                                              ; preds = %132, %126, %155
  %158 = phi ptr [ %122, %132 ], [ %122, %126 ], [ %140, %155 ]
  %159 = phi ptr [ %86, %132 ], [ %86, %126 ], [ %142, %155 ]
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi ptr [ %164, %160 ], [ %158, %157 ]
  %162 = phi ptr [ %165, %160 ], [ %159, %157 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !90
  store ptr %163, ptr %161, align 8, !tbaa !90
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !199

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #23
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !90
  store ptr %175, ptr %174, align 8, !tbaa !90
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !82
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #23
  br label %188

184:                                              ; preds = %115
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %188

186:                                              ; preds = %113
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %188

188:                                              ; preds = %81, %182, %186, %184
  %189 = phi { ptr, i32 } [ %82, %81 ], [ %183, %182 ], [ %185, %184 ], [ %187, %186 ]
  %190 = phi ptr [ %47, %81 ], [ %47, %182 ], [ %85, %184 ], [ %85, %186 ]
  tail call void @_ZdlPv(ptr noundef nonnull %190) #23
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = load ptr, ptr %0, align 8, !tbaa !183
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !200
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !82
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !82
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !209
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !209
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !82
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !90
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !90
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !90
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !90
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !212

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !90
  store ptr %83, ptr %81, align 8, !tbaa !90
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !213

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !188
  store ptr %37, ptr %0, align 8, !tbaa !188
  store ptr %39, ptr %11, align 8, !tbaa !188
  store ptr %40, ptr %5, align 8, !tbaa !188
  store ptr %88, ptr %3, align 8, !tbaa !188
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %94, ptr %93, align 8, !tbaa !90
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = load ptr, ptr %0, align 8, !tbaa !183
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !214
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !82
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !82
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !223
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !223
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !82
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !90
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !90
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !90
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !90
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !226

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !90
  store ptr %83, ptr %81, align 8, !tbaa !90
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !227

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !188
  store ptr %37, ptr %0, align 8, !tbaa !188
  store ptr %39, ptr %11, align 8, !tbaa !188
  store ptr %40, ptr %5, align 8, !tbaa !188
  store ptr %88, ptr %3, align 8, !tbaa !188
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %94, ptr %93, align 8, !tbaa !90
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = load ptr, ptr %0, align 8, !tbaa !183
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = icmp eq ptr %13, %11
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  %18 = sub i64 %14, %15
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, 2
  %22 = getelementptr inbounds ptr, ptr %11, i64 %21
  %23 = sub i64 %15, %6
  %24 = ashr exact i64 %23, 3
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !228
  store ptr %22, ptr %10, align 8, !tbaa !78
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #24, !noalias !237
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #22, !noalias !237
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !82
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %15, %43
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 %44
  %46 = icmp eq ptr %11, %42
  br i1 %46, label %88, label %47

47:                                               ; preds = %34
  %48 = add i64 %15, -8
  %49 = sub i64 %48, %43
  %50 = lshr i64 %49, 3
  %51 = add nuw nsw i64 %50, 1
  %52 = icmp ult i64 %49, 104
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = shl nuw nsw i64 %36, 3
  %55 = add i64 %54, %39
  %56 = sub i64 %55, %43
  %57 = icmp ult i64 %56, 32
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = and i64 %51, 4611686018427387900
  %60 = shl i64 %59, 3
  %61 = getelementptr i8, ptr %40, i64 %60
  %62 = shl i64 %59, 3
  %63 = getelementptr i8, ptr %42, i64 %62
  br label %64

64:                                               ; preds = %64, %58
  %65 = phi i64 [ 0, %58 ], [ %74, %64 ]
  %66 = shl i64 %65, 3
  %67 = getelementptr i8, ptr %40, i64 %66
  %68 = shl i64 %65, 3
  %69 = getelementptr i8, ptr %42, i64 %68
  %70 = getelementptr i8, ptr %69, i64 16
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !90
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !90
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !90
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !90
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !240

76:                                               ; preds = %64
  %77 = icmp eq i64 %51, %59
  br i1 %77, label %88, label %78

78:                                               ; preds = %53, %47, %76
  %79 = phi ptr [ %40, %53 ], [ %40, %47 ], [ %61, %76 ]
  %80 = phi ptr [ %42, %53 ], [ %42, %47 ], [ %63, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %85, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !90
  store ptr %84, ptr %82, align 8, !tbaa !90
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !241

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !188
  store ptr %38, ptr %0, align 8, !tbaa !188
  store ptr %40, ptr %3, align 8, !tbaa !188
  store ptr %41, ptr %12, align 8, !tbaa !188
  store ptr %89, ptr %10, align 8, !tbaa !188
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #23
  %93 = load ptr, ptr %3, align 8, !tbaa !82
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %97, ptr %96, align 8, !tbaa !90
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !78
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !82
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = icmp ugt i64 %2, -10
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #24
  unreachable

6:                                                ; preds = %3
  %7 = icmp ult i64 %2, 23
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = trunc nuw nsw i64 %2 to i8
  %10 = shl nuw nsw i8 %9, 1
  store i8 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %21

12:                                               ; preds = %6
  %13 = and i64 %2, -8
  %14 = add nuw i64 %13, 8
  %15 = icmp eq i64 %14, 24
  %16 = select i1 %15, i64 26, i64 %14
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #22, !noalias !242
  %18 = or disjoint i64 %16, 1
  store i64 %18, ptr %0, align 8, !tbaa !53
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %17, ptr %20, align 8, !tbaa !63
  br label %21

21:                                               ; preds = %8, %12
  %22 = phi ptr [ %11, %8 ], [ %17, %12 ]
  %23 = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %23, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign/0bb32e5a2ee37d81.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"MaxTLSAlign", i32 65536}
!7 = !{!"clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !14, i64 8}
!14 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt3__15mutexE", !19, i64 0}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!21, !22, i64 24}
!21 = !{!"_ZTSN12__apo_stdlib12mutex_handleE", !13, i64 0, !18, i64 16, !22, i64 24}
!22 = !{!"bool", !10, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt3__111unique_lockINS_5mutexEEE", !27, i64 0, !22, i64 8}
!27 = !{!"p1 _ZTSNSt3__15mutexE", !19, i64 0}
!28 = !{!26, !22, i64 8}
!29 = !{!30, !32, i64 32}
!30 = !{!"_ZTSN12__apo_stdlib14condvar_handleE", !13, i64 0, !18, i64 16, !31, i64 24, !32, i64 32}
!31 = !{!"_ZTSNSt3__118condition_variableE", !19, i64 0}
!32 = !{!"long long", !10, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!37, !32, i64 88}
!37 = !{!"_ZTSN12__apo_stdlib14channel_handleE", !13, i64 0, !18, i64 16, !31, i64 24, !31, i64 32, !38, i64 40, !32, i64 88, !22, i64 96}
!38 = !{!"_ZTSNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEEE", !39, i64 0, !32, i64 32, !44, i64 40}
!39 = !{!"_ZTSNSt3__114__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS3_EENS_29__split_buffer_pointer_layoutEEE", !40, i64 0}
!40 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS4_EES0_EES4_S6_EE", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24}
!41 = !{!"p2 _ZTSN12__apo_stdlib13channel_valueE", !42, i64 0}
!42 = !{!"any p2 pointer", !19, i64 0}
!43 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPN12__apo_stdlib13channel_valueENS_9allocatorIS4_EES0_EES4_S6_EUt_E", !41, i64 0}
!44 = !{!"_ZTSNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEEUt_E", !32, i64 0}
!45 = !{!37, !22, i64 96}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN12__apo_stdlib13channel_valueE", !48, i64 0, !9, i64 4, !49, i64 8, !50, i64 16}
!48 = !{!"_ZTSN12__apo_stdlib18channel_value_kindE", !10, i64 0}
!49 = !{!"double", !10, i64 0}
!50 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !51, i64 0}
!51 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E", !10, i64 0}
!52 = !{!47, !9, i64 4}
!53 = !{!10, !10, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!56 = distinct !{!56, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!57 = !{!58, !60, !55}
!58 = distinct !{!58, !59, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!59 = distinct !{!59, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!60 = distinct !{!60, !61, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!61 = distinct !{!61, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!62 = !{!32, !32, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 omnipotent char", !19, i64 0}
!65 = !{!47, !49, i64 8}
!66 = !{i64 0, i64 24, !53}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!69 = distinct !{!69, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!70 = !{!71, !73, !68}
!71 = distinct !{!71, !72, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!72 = distinct !{!72, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!73 = distinct !{!73, !74, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!74 = distinct !{!74, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!75 = !{!76, !22, i64 40}
!76 = !{!"_ZTSNSt3__124__optional_destruct_baseIN12__apo_stdlib13channel_valueELb0EEE", !10, i64 0, !22, i64 40}
!77 = !{!"branch_weights", i32 1, i32 1023}
!78 = !{!79, !80, i64 16}
!79 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EE", !80, i64 0, !80, i64 8, !80, i64 16, !81, i64 24}
!80 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !42, i64 0}
!81 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EUt_E", !80, i64 0}
!82 = !{!79, !80, i64 8}
!83 = !{!84, !32, i64 32}
!84 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !85, i64 0, !32, i64 32, !86, i64 40}
!85 = !{!"_ZTSNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEEE", !79, i64 0}
!86 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !32, i64 0}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!89 = distinct !{!89, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !19, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!94 = distinct !{!94, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!95 = !{!40, !41, i64 8}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE5beginB9nqe220103Ev: argument 0"}
!98 = distinct !{!98, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE5beginB9nqe220103Ev"}
!99 = !{!40, !41, i64 16}
!100 = !{!38, !32, i64 32}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTSN12__apo_stdlib13channel_valueE", !19, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE3endB9nqe220103Ev: argument 0"}
!105 = distinct !{!105, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE3endB9nqe220103Ev"}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = !{!40, !41, i64 0}
!109 = distinct !{!109, !34}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE3endB9nqe220103Ev: argument 0"}
!112 = distinct !{!112, !"_ZNSt3__15dequeIN12__apo_stdlib13channel_valueENS_9allocatorIS2_EEE3endB9nqe220103Ev"}
!113 = !{!40, !41, i64 24}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: argument 0"}
!116 = distinct !{!116, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y"}
!117 = !{!41, !41, i64 0}
!118 = !{!119, !121, !123, !125}
!119 = distinct !{!119, !120, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_: argument 0"}
!120 = distinct !{!120, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_"}
!121 = distinct !{!121, !122, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: argument 0"}
!122 = distinct !{!122, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_"}
!123 = distinct !{!123, !124, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_: argument 0"}
!124 = distinct !{!124, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_"}
!125 = distinct !{!125, !126, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!126 = distinct !{!126, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!127 = distinct !{!127, !34, !128, !129}
!128 = !{!"llvm.loop.isvectorized", i32 1}
!129 = !{!"llvm.loop.unroll.runtime.disable"}
!130 = distinct !{!130, !34, !128}
!131 = !{!132, !134, !136, !138}
!132 = distinct !{!132, !133, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_: argument 0"}
!133 = distinct !{!133, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_"}
!134 = distinct !{!134, !135, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: argument 0"}
!135 = distinct !{!135, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_"}
!136 = distinct !{!136, !137, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_: argument 0"}
!137 = distinct !{!137, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_"}
!138 = distinct !{!138, !139, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!139 = distinct !{!139, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: argument 0"}
!142 = distinct !{!142, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y"}
!143 = distinct !{!143, !34, !128, !129}
!144 = distinct !{!144, !34, !128}
!145 = !{!146, !148, !150, !152}
!146 = distinct !{!146, !147, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_: argument 0"}
!147 = distinct !{!147, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_"}
!148 = distinct !{!148, !149, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: argument 0"}
!149 = distinct !{!149, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_"}
!150 = distinct !{!150, !151, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_: argument 0"}
!151 = distinct !{!151, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_"}
!152 = distinct !{!152, !153, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!153 = distinct !{!153, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: argument 0"}
!156 = distinct !{!156, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y"}
!157 = distinct !{!157, !34, !128, !129}
!158 = distinct !{!158, !34, !128}
!159 = !{!160, !162, !164, !166}
!160 = distinct !{!160, !161, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_: argument 0"}
!161 = distinct !{!161, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPN12__apo_stdlib13channel_valueES3_EENS_4pairIPT_PT0_EES6_S6_S8_"}
!162 = distinct !{!162, !163, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_: argument 0"}
!163 = distinct !{!163, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPN12__apo_stdlib13channel_valueES6_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS8_PS9_EESD_SD_SE_"}
!164 = distinct !{!164, !165, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_: argument 0"}
!165 = distinct !{!165, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPN12__apo_stdlib13channel_valueES7_S7_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS9_SA_EES9_T1_SA_"}
!166 = distinct !{!166, !167, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: argument 0"}
!167 = distinct !{!167, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPN12__apo_stdlib13channel_valueES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y: argument 0"}
!170 = distinct !{!170, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPN12__apo_stdlib13channel_valueEEENS_16allocator_traitsIS5_EEEENS_19__allocation_resultINT0_7pointerENS9_9size_typeEEERT_y"}
!171 = distinct !{!171, !34, !128, !129}
!172 = distinct !{!172, !34, !128}
!173 = distinct !{!173, !34}
!174 = !{i64 0, i64 23, !53}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev: argument 0"}
!177 = distinct !{!177, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!180 = distinct !{!180, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!181 = distinct !{!181, !34}
!182 = distinct !{!182, !34}
!183 = !{!79, !80, i64 0}
!184 = !{!79, !80, i64 24}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!187 = distinct !{!187, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!188 = !{!80, !80, i64 0}
!189 = !{!190, !192, !194, !196}
!190 = distinct !{!190, !191, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!191 = distinct !{!191, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!192 = distinct !{!192, !193, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!193 = distinct !{!193, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!194 = distinct !{!194, !195, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!195 = distinct !{!195, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!196 = distinct !{!196, !197, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!197 = distinct !{!197, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!198 = distinct !{!198, !34, !128, !129}
!199 = distinct !{!199, !34, !128}
!200 = !{!201, !203, !205, !207}
!201 = distinct !{!201, !202, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!202 = distinct !{!202, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!203 = distinct !{!203, !204, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!204 = distinct !{!204, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!205 = distinct !{!205, !206, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!206 = distinct !{!206, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!207 = distinct !{!207, !208, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!208 = distinct !{!208, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!211 = distinct !{!211, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!212 = distinct !{!212, !34, !128, !129}
!213 = distinct !{!213, !34, !128}
!214 = !{!215, !217, !219, !221}
!215 = distinct !{!215, !216, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!216 = distinct !{!216, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!217 = distinct !{!217, !218, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!218 = distinct !{!218, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!219 = distinct !{!219, !220, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!220 = distinct !{!220, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!221 = distinct !{!221, !222, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!222 = distinct !{!222, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!225 = distinct !{!225, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!226 = distinct !{!226, !34, !128, !129}
!227 = distinct !{!227, !34, !128}
!228 = !{!229, !231, !233, !235}
!229 = distinct !{!229, !230, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!230 = distinct !{!230, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!231 = distinct !{!231, !232, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!232 = distinct !{!232, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!233 = distinct !{!233, !234, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!234 = distinct !{!234, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!235 = distinct !{!235, !236, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!236 = distinct !{!236, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!239 = distinct !{!239, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!240 = distinct !{!240, !34, !128, !129}
!241 = distinct !{!241, !34, !128}
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!244 = distinct !{!244, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!245 = distinct !{!245, !246, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!246 = distinct !{!246, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
