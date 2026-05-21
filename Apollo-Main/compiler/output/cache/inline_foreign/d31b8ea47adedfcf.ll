; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/d31b8ea47adedfcf.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/d31b8ea47adedfcf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.1 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.1 = type { i64, [8 x i8] }
%"class.std::random_device" = type { %union.anon }
%union.anon = type { %"class.std::mersenne_twister_engine.0" }
%"class.std::mersenne_twister_engine.0" = type { [624 x i64], i64 }

$_ZN12__apo_stdlib13random_handleC2Ev = comdat any

$_ZN12__apo_stdlib13opaque_handleD2Ev = comdat any

$_ZN12__apo_stdlib13random_handleD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv = comdat any

$_ZTVN12__apo_stdlib13random_handleE = comdat any

$_ZTIN12__apo_stdlib13random_handleE = comdat any

$_ZTSN12__apo_stdlib13random_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

@_ZTVN12__apo_stdlib13random_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib13random_handleE, ptr @_ZN12__apo_stdlib13opaque_handleD2Ev, ptr @_ZN12__apo_stdlib13random_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib13random_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13random_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13random_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13random_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #15
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 2520) #16
  resume { ptr, i32 } %3

4:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN32__apollo_inline_inline_2594_5_1321sys__native_rand_seedEPvi(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = zext i32 %1 to i64
  store i64 %10, ptr %9, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %21, %8
  %12 = phi i64 [ %10, %8 ], [ %25, %21 ]
  %13 = phi i64 [ 1, %8 ], [ %27, %21 ]
  %14 = lshr i64 %12, 62
  %15 = xor i64 %14, %12
  %16 = mul i64 %15, 6364136223846793005
  %17 = add i64 %16, %13
  %18 = getelementptr inbounds nuw [312 x i64], ptr %9, i64 0, i64 %13
  store i64 %17, ptr %18, align 8, !tbaa !10
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 312
  br i1 %20, label %28, label %21, !llvm.loop !12

21:                                               ; preds = %11
  %22 = lshr i64 %17, 62
  %23 = xor i64 %22, %17
  %24 = mul i64 %23, 6364136223846793005
  %25 = add i64 %24, %19
  %26 = getelementptr inbounds nuw [312 x i64], ptr %9, i64 0, i64 %19
  store i64 %25, ptr %26, align 8, !tbaa !10
  %27 = add nuw nsw i64 %13, 2
  br label %11

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 312, ptr %29, align 8, !tbaa !14
  br label %30

30:                                               ; preds = %2, %4, %28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_i32EPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1326sys__native_rand_range_i32EPvii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = sext i32 %10 to i64
  %14 = sext i32 %11 to i64
  %15 = sub nsw i64 %13, %14
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %40, label %17

17:                                               ; preds = %9
  %18 = add nsw i64 %15, 1
  %19 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  %20 = zext i64 %19 to i128
  %21 = zext i64 %18 to i128
  %22 = mul nuw i128 %20, %21
  %23 = trunc i128 %22 to i64
  %24 = icmp ugt i64 %18, %23
  %25 = lshr i128 %22, 64
  %26 = trunc nuw i128 %25 to i64
  br i1 %24, label %27, label %42

27:                                               ; preds = %17
  %28 = xor i64 %15, -1
  %29 = urem i64 %28, %18
  %30 = icmp ugt i64 %29, %23
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %31
  %32 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, %21
  %35 = trunc i128 %34 to i64
  %36 = icmp ugt i64 %29, %35
  br i1 %36, label %31, label %37, !llvm.loop !16

37:                                               ; preds = %31
  %38 = lshr i128 %34, 64
  %39 = trunc nuw i128 %38 to i64
  br label %42

40:                                               ; preds = %9
  %41 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  br label %42

42:                                               ; preds = %40, %37, %27, %17
  %43 = phi i64 [ %41, %40 ], [ %26, %17 ], [ %39, %37 ], [ %26, %27 ]
  %44 = trunc i64 %43 to i32
  %45 = add i32 %11, %44
  br label %46

46:                                               ; preds = %3, %5, %42
  %47 = phi i32 [ %45, %42 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %47
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_f64EPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !17
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !17
  %11 = fdiv x86_fp80 %9, %10
  %12 = fptoui x86_fp80 %11 to i64
  %13 = add i64 %12, 52
  %14 = udiv i64 %13, %12
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  br label %19

16:                                               ; preds = %19
  %17 = fdiv double %25, %28
  %18 = fcmp ult double %17, 1.000000e+00
  br i1 %18, label %33, label %31, !prof !19

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %15, %7 ], [ %29, %19 ]
  %21 = phi double [ 1.000000e+00, %7 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %7 ], [ %25, %19 ]
  %23 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %24 = uitofp i64 %23 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %21, double %22)
  %26 = fpext double %21 to x86_fp80
  %27 = fmul x86_fp80 %26, 0xK403F8000000000000000
  %28 = fptrunc x86_fp80 %27 to double
  %29 = add i64 %20, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %16, label %19, !llvm.loop !20

31:                                               ; preds = %16
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #17, !tbaa !17
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fadd double %34, 0.000000e+00
  br label %36

36:                                               ; preds = %1, %3, %33
  %37 = phi double [ %35, %33 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %37
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2594_5_1321sys__native_rand_boolEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !17
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !17
  %11 = fdiv x86_fp80 %9, %10
  %12 = fptoui x86_fp80 %11 to i64
  %13 = add i64 %12, 52
  %14 = udiv i64 %13, %12
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  br label %19

16:                                               ; preds = %19
  %17 = fdiv double %25, %28
  %18 = fcmp ult double %17, 1.000000e+00
  br i1 %18, label %33, label %31, !prof !19

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %15, %7 ], [ %29, %19 ]
  %21 = phi double [ 1.000000e+00, %7 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %7 ], [ %25, %19 ]
  %23 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %24 = uitofp i64 %23 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %21, double %22)
  %26 = fpext double %21 to x86_fp80
  %27 = fmul x86_fp80 %26, 0xK403F8000000000000000
  %28 = fptrunc x86_fp80 %27 to double
  %29 = add i64 %20, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %16, label %19, !llvm.loop !20

31:                                               ; preds = %16
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #17, !tbaa !17
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fcmp olt double %34, 5.000000e-01
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %1, %3, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %38
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_rand_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #15
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 2520) #16
  resume { ptr, i32 } %3

4:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_rand_i32(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @sys__native_rand_range_i32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = sext i32 %10 to i64
  %14 = sext i32 %11 to i64
  %15 = sub nsw i64 %13, %14
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %40, label %17

17:                                               ; preds = %9
  %18 = add nsw i64 %15, 1
  %19 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  %20 = zext i64 %19 to i128
  %21 = zext i64 %18 to i128
  %22 = mul nuw i128 %20, %21
  %23 = trunc i128 %22 to i64
  %24 = icmp ugt i64 %18, %23
  %25 = lshr i128 %22, 64
  %26 = trunc nuw i128 %25 to i64
  br i1 %24, label %27, label %42

27:                                               ; preds = %17
  %28 = xor i64 %15, -1
  %29 = urem i64 %28, %18
  %30 = icmp ugt i64 %29, %23
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %31
  %32 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, %21
  %35 = trunc i128 %34 to i64
  %36 = icmp ugt i64 %29, %35
  br i1 %36, label %31, label %37, !llvm.loop !16

37:                                               ; preds = %31
  %38 = lshr i128 %34, 64
  %39 = trunc nuw i128 %38 to i64
  br label %42

40:                                               ; preds = %9
  %41 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %12)
  br label %42

42:                                               ; preds = %40, %37, %27, %17
  %43 = phi i64 [ %41, %40 ], [ %26, %17 ], [ %39, %37 ], [ %26, %27 ]
  %44 = trunc i64 %43 to i32
  %45 = add i32 %11, %44
  br label %46

46:                                               ; preds = %3, %5, %42
  %47 = phi i32 [ %45, %42 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %47
}

; Function Attrs: mustprogress uwtable
define dso_local double @sys__native_rand_f64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !17
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !17
  %11 = fdiv x86_fp80 %9, %10
  %12 = fptoui x86_fp80 %11 to i64
  %13 = add i64 %12, 52
  %14 = udiv i64 %13, %12
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  br label %19

16:                                               ; preds = %19
  %17 = fdiv double %25, %28
  %18 = fcmp ult double %17, 1.000000e+00
  br i1 %18, label %33, label %31, !prof !19

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %15, %7 ], [ %29, %19 ]
  %21 = phi double [ 1.000000e+00, %7 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %7 ], [ %25, %19 ]
  %23 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %24 = uitofp i64 %23 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %21, double %22)
  %26 = fpext double %21 to x86_fp80
  %27 = fmul x86_fp80 %26, 0xK403F8000000000000000
  %28 = fptrunc x86_fp80 %27 to double
  %29 = add i64 %20, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %16, label %19, !llvm.loop !20

31:                                               ; preds = %16
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #17, !tbaa !17
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fadd double %34, 0.000000e+00
  br label %36

36:                                               ; preds = %1, %3, %33
  %37 = phi double [ %35, %33 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %37
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @sys__native_rand_bool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !17
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !17
  %11 = fdiv x86_fp80 %9, %10
  %12 = fptoui x86_fp80 %11 to i64
  %13 = add i64 %12, 52
  %14 = udiv i64 %13, %12
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  br label %19

16:                                               ; preds = %19
  %17 = fdiv double %25, %28
  %18 = fcmp ult double %17, 1.000000e+00
  br i1 %18, label %33, label %31, !prof !19

19:                                               ; preds = %19, %7
  %20 = phi i64 [ %15, %7 ], [ %29, %19 ]
  %21 = phi double [ 1.000000e+00, %7 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %7 ], [ %25, %19 ]
  %23 = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %8)
  %24 = uitofp i64 %23 to double
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %21, double %22)
  %26 = fpext double %21 to x86_fp80
  %27 = fmul x86_fp80 %26, 0xK403F8000000000000000
  %28 = fptrunc x86_fp80 %27 to double
  %29 = add i64 %20, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %16, label %19, !llvm.loop !20

31:                                               ; preds = %16
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #17, !tbaa !17
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fcmp olt double %34, 5.000000e-01
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %1, %3, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %38
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::random_device", align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 12, ptr %4, align 8, !tbaa !5
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13random_handleE, i64 16), ptr %0, align 8, !tbaa !21
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(i64 5000, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %6, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %6, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %7, align 8, !tbaa !27
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %8, align 1, !tbaa !29
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %9 unwind label %18

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !30
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, ptr %7, align 8, !tbaa !27
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  br label %29

15:                                               ; preds = %9
  %16 = load i64, ptr %6, align 8, !tbaa !29
  %17 = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %17) #16
  br label %29

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %2, align 8, !tbaa !30
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, ptr %7, align 8, !tbaa !27
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  br label %28

25:                                               ; preds = %18
  %26 = load i64, ptr %6, align 8, !tbaa !29
  %27 = add i64 %26, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %27) #16
  br label %28

28:                                               ; preds = %25, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %61

29:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  %30 = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %31 unwind label %56

31:                                               ; preds = %29
  %32 = zext i32 %30 to i64
  store i64 %32, ptr %5, align 8, !tbaa !10
  br label %33

33:                                               ; preds = %43, %31
  %34 = phi i64 [ %32, %31 ], [ %47, %43 ]
  %35 = phi i64 [ 1, %31 ], [ %49, %43 ]
  %36 = lshr i64 %34, 62
  %37 = xor i64 %36, %34
  %38 = mul i64 %37, 6364136223846793005
  %39 = add i64 %38, %35
  %40 = getelementptr inbounds nuw [312 x i64], ptr %5, i64 0, i64 %35
  store i64 %39, ptr %40, align 8, !tbaa !10
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, 312
  br i1 %42, label %50, label %43, !llvm.loop !12

43:                                               ; preds = %33
  %44 = lshr i64 %39, 62
  %45 = xor i64 %44, %39
  %46 = mul i64 %45, 6364136223846793005
  %47 = add i64 %46, %41
  %48 = getelementptr inbounds nuw [312 x i64], ptr %5, i64 0, i64 %41
  store i64 %47, ptr %48, align 8, !tbaa !10
  %49 = add nuw nsw i64 %35, 2
  br label %33

50:                                               ; preds = %33
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 312, ptr %51, align 8, !tbaa !14
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %55 unwind label %52

52:                                               ; preds = %50
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #18
  unreachable

55:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 5000, ptr nonnull %3) #17
  ret void

56:                                               ; preds = %29
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %61 unwind label %58

58:                                               ; preds = %56
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #18
  unreachable

61:                                               ; preds = %56, %28
  %62 = phi { ptr, i32 } [ %19, %28 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 5000, ptr nonnull %3) #17
  resume { ptr, i32 } %62
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2520) #16
  ret void
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %3 = load i64, ptr %2, align 8, !tbaa !14
  %4 = icmp ugt i64 %3, 311
  br i1 %4, label %5, label %86

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8, !tbaa !10
  %7 = insertelement <2 x i64> poison, i64 %6, i64 1
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %28, %8 ]
  %10 = phi <2 x i64> [ %7, %5 ], [ %14, %8 ]
  %11 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %9
  %12 = or disjoint i64 %9, 1
  %13 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %12
  %14 = load <2 x i64>, ptr %13, align 8, !tbaa !10
  %15 = shufflevector <2 x i64> %10, <2 x i64> %14, <2 x i32> <i32 1, i32 2>
  %16 = and <2 x i64> %15, splat (i64 -2147483648)
  %17 = and <2 x i64> %14, splat (i64 2147483646)
  %18 = or disjoint <2 x i64> %17, %16
  %19 = add nuw nsw i64 %9, 156
  %20 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %19
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !10
  %22 = lshr exact <2 x i64> %18, splat (i64 1)
  %23 = xor <2 x i64> %22, %21
  %24 = and <2 x i64> %14, splat (i64 1)
  %25 = icmp eq <2 x i64> %24, zeroinitializer
  %26 = select <2 x i1> %25, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %27 = xor <2 x i64> %23, %26
  store <2 x i64> %27, ptr %11, align 8, !tbaa !10
  %28 = add nuw i64 %9, 2
  %29 = icmp eq i64 %28, 156
  br i1 %29, label %30, label %8, !llvm.loop !31

30:                                               ; preds = %8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %32 = load i64, ptr %31, align 8, !tbaa !10
  %33 = insertelement <2 x i64> poison, i64 %32, i64 1
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %54, %34 ]
  %36 = phi <2 x i64> [ %33, %30 ], [ %41, %34 ]
  %37 = add i64 %35, 156
  %38 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %37
  %39 = add i64 %35, 157
  %40 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %39
  %41 = load <2 x i64>, ptr %40, align 8, !tbaa !10
  %42 = shufflevector <2 x i64> %36, <2 x i64> %41, <2 x i32> <i32 1, i32 2>
  %43 = and <2 x i64> %42, splat (i64 -2147483648)
  %44 = and <2 x i64> %41, splat (i64 2147483646)
  %45 = or disjoint <2 x i64> %44, %43
  %46 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %35
  %47 = load <2 x i64>, ptr %46, align 8, !tbaa !10
  %48 = lshr exact <2 x i64> %45, splat (i64 1)
  %49 = xor <2 x i64> %48, %47
  %50 = and <2 x i64> %41, splat (i64 1)
  %51 = icmp eq <2 x i64> %50, zeroinitializer
  %52 = select <2 x i1> %51, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %53 = xor <2 x i64> %49, %52
  store <2 x i64> %53, ptr %38, align 8, !tbaa !10
  %54 = add nuw i64 %35, 2
  %55 = icmp eq i64 %54, 154
  br i1 %55, label %56, label %34, !llvm.loop !34

56:                                               ; preds = %34
  %57 = extractelement <2 x i64> %41, i64 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %59 = and i64 %57, -2147483648
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %61 = load i64, ptr %60, align 8, !tbaa !10
  %62 = and i64 %61, 2147483646
  %63 = or disjoint i64 %62, %59
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %65 = load i64, ptr %64, align 8, !tbaa !10
  %66 = lshr exact i64 %63, 1
  %67 = xor i64 %66, %65
  %68 = and i64 %61, 1
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %69, i64 0, i64 -5403634167711393303
  %71 = xor i64 %67, %70
  store i64 %71, ptr %58, align 8, !tbaa !10
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %73 = load i64, ptr %72, align 8, !tbaa !10
  %74 = and i64 %73, -2147483648
  %75 = load i64, ptr %0, align 8, !tbaa !10
  %76 = and i64 %75, 2147483646
  %77 = or disjoint i64 %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %79 = load i64, ptr %78, align 8, !tbaa !10
  %80 = lshr exact i64 %77, 1
  %81 = xor i64 %80, %79
  %82 = and i64 %75, 1
  %83 = icmp eq i64 %82, 0
  %84 = select i1 %83, i64 0, i64 -5403634167711393303
  %85 = xor i64 %81, %84
  store i64 %85, ptr %72, align 8, !tbaa !10
  br label %86

86:                                               ; preds = %56, %1
  %87 = phi i64 [ 0, %56 ], [ %3, %1 ]
  %88 = add nuw nsw i64 %87, 1
  store i64 %88, ptr %2, align 8, !tbaa !14
  %89 = getelementptr inbounds nuw [312 x i64], ptr %0, i64 0, i64 %87
  %90 = load i64, ptr %89, align 8, !tbaa !10
  %91 = lshr i64 %90, 29
  %92 = and i64 %91, 22906492245
  %93 = xor i64 %92, %90
  %94 = shl i64 %93, 17
  %95 = and i64 %94, 8202884508482404352
  %96 = xor i64 %95, %93
  %97 = shl i64 %96, 37
  %98 = and i64 %97, -2270628950310912
  %99 = xor i64 %98, %96
  %100 = lshr i64 %99, 43
  %101 = xor i64 %100, %99
  ret i64 %101
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }

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
!11 = !{!"long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !11, i64 2496}
!15 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !8, i64 0, !11, i64 2496}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !13}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !9, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !26, i64 0}
!26 = !{!"any pointer", !8, i64 0}
!27 = !{!28, !11, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !11, i64 8, !8, i64 16}
!29 = !{!8, !8, i64 0}
!30 = !{!28, !25, i64 0}
!31 = distinct !{!31, !13, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !13, !32, !33}
