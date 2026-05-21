; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/0b2dd3a3b44221dc.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/0b2dd3a3b44221dc.cpp"
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #14
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 2520) #15
  resume { ptr, i32 } %3

4:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @_ZN32__apollo_inline_inline_2594_5_1321sys__native_rand_seedEPvi(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = zext i32 %1 to i64
  store i64 %10, ptr %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %21, %8
  %12 = phi i64 [ %10, %8 ], [ %26, %21 ]
  %13 = phi i64 [ 1, %8 ], [ %27, %21 ]
  %14 = getelementptr i64, ptr %9, i64 %13
  %15 = lshr i64 %12, 62
  %16 = xor i64 %15, %12
  %17 = mul i64 %16, 6364136223846793005
  %18 = add i64 %17, %13
  store i64 %18, ptr %14, align 8, !tbaa !12
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 312
  br i1 %20, label %28, label %21, !llvm.loop !14

21:                                               ; preds = %11
  %22 = getelementptr i64, ptr %9, i64 %19
  %23 = lshr i64 %18, 62
  %24 = xor i64 %23, %18
  %25 = mul i64 %24, 6364136223846793005
  %26 = add i64 %25, %19
  store i64 %26, ptr %22, align 8, !tbaa !12
  %27 = add nuw nsw i64 %13, 2
  br label %11

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 312, ptr %29, align 8, !tbaa !16
  br label %30

30:                                               ; preds = %2, %4, %28
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_i32EPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1326sys__native_rand_range_i32EPvii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !9
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
  br i1 %36, label %31, label %37, !llvm.loop !18

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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_f64EPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !5
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !5
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
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #16, !tbaa !5
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fadd double %34, 0.000000e+00
  br label %36

36:                                               ; preds = %1, %3, %33
  %37 = phi double [ %35, %33 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %37
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2594_5_1321sys__native_rand_boolEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !5
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !5
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
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #16, !tbaa !5
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_rand_new() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwm(i64 noundef 2520) #14
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 2520) #15
  resume { ptr, i32 } %3

4:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_rand_i32(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local i32 @sys__native_rand_range_i32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !9
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
  br i1 %36, label %31, label %37, !llvm.loop !18

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

; Function Attrs: mustprogress sspstrong uwtable
define dso_local double @sys__native_rand_f64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !5
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !5
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
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #16, !tbaa !5
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi double [ %32, %31 ], [ %17, %16 ]
  %35 = fadd double %34, 0.000000e+00
  br label %36

36:                                               ; preds = %1, %3, %33
  %37 = phi double [ %35, %33 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %37
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_rand_bool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK403F8000000000000000), !tbaa !5
  %10 = tail call x86_fp80 @llvm.log.f80(x86_fp80 0xK40008000000000000000), !tbaa !5
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
  %32 = tail call double @nextafter(double noundef 1.000000e+00, double noundef 0.000000e+00) #16, !tbaa !5
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::random_device", align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 12, ptr %4, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13random_handleE, i64 16), ptr %0, align 8, !tbaa !21
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %6, ptr %2, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %6, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %7, align 8, !tbaa !27
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %8, align 1, !tbaa !29
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %9 unwind label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !30
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load i64, ptr %6, align 8, !tbaa !29
  %14 = add i64 %13, 1
  call void @_ZdlPvm(ptr noundef %10, i64 noundef %14) #15
  br label %23

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %2, align 8, !tbaa !30
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %6, align 8, !tbaa !29
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %21) #15
  br label %22

22:                                               ; preds = %15, %19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %55

23:                                               ; preds = %9, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %24 = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %25 unwind label %50

25:                                               ; preds = %23
  %26 = zext i32 %24 to i64
  store i64 %26, ptr %5, align 8, !tbaa !12
  br label %27

27:                                               ; preds = %37, %25
  %28 = phi i64 [ %26, %25 ], [ %42, %37 ]
  %29 = phi i64 [ 1, %25 ], [ %43, %37 ]
  %30 = getelementptr i64, ptr %5, i64 %29
  %31 = lshr i64 %28, 62
  %32 = xor i64 %31, %28
  %33 = mul i64 %32, 6364136223846793005
  %34 = add i64 %33, %29
  store i64 %34, ptr %30, align 8, !tbaa !12
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, 312
  br i1 %36, label %44, label %37, !llvm.loop !14

37:                                               ; preds = %27
  %38 = getelementptr i64, ptr %5, i64 %35
  %39 = lshr i64 %34, 62
  %40 = xor i64 %39, %34
  %41 = mul i64 %40, 6364136223846793005
  %42 = add i64 %41, %35
  store i64 %42, ptr %38, align 8, !tbaa !12
  %43 = add nuw nsw i64 %29, 2
  br label %27

44:                                               ; preds = %27
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 312, ptr %45, align 8, !tbaa !16
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %49 unwind label %46

46:                                               ; preds = %44
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #17
  unreachable

49:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

50:                                               ; preds = %23
  %51 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %55 unwind label %52

52:                                               ; preds = %50
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #17
  unreachable

55:                                               ; preds = %50, %22
  %56 = phi { ptr, i32 } [ %16, %22 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %56
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2520) #15
  ret void
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %3 = load i64, ptr %2, align 8, !tbaa !16
  %4 = icmp ugt i64 %3, 311
  br i1 %4, label %5, label %84

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8, !tbaa !12
  %7 = insertelement <2 x i64> poison, i64 %6, i64 1
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %27, %8 ]
  %10 = phi <2 x i64> [ %7, %5 ], [ %14, %8 ]
  %11 = getelementptr inbounds nuw i64, ptr %0, i64 %9
  %12 = getelementptr inbounds nuw i64, ptr %0, i64 %9
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load <2 x i64>, ptr %13, align 8, !tbaa !12
  %15 = shufflevector <2 x i64> %10, <2 x i64> %14, <2 x i32> <i32 1, i32 2>
  %16 = and <2 x i64> %15, splat (i64 -2147483648)
  %17 = and <2 x i64> %14, splat (i64 2147483646)
  %18 = or disjoint <2 x i64> %17, %16
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 1248
  %20 = load <2 x i64>, ptr %19, align 8, !tbaa !12
  %21 = lshr exact <2 x i64> %18, splat (i64 1)
  %22 = xor <2 x i64> %21, %20
  %23 = and <2 x i64> %14, splat (i64 1)
  %24 = icmp eq <2 x i64> %23, zeroinitializer
  %25 = select <2 x i1> %24, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %26 = xor <2 x i64> %22, %25
  store <2 x i64> %26, ptr %11, align 8, !tbaa !12
  %27 = add nuw i64 %9, 2
  %28 = icmp eq i64 %27, 156
  br i1 %28, label %29, label %8, !llvm.loop !31

29:                                               ; preds = %8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %31 = load i64, ptr %30, align 8, !tbaa !12
  %32 = insertelement <2 x i64> poison, i64 %31, i64 1
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i64 [ 0, %29 ], [ %52, %33 ]
  %35 = phi <2 x i64> [ %32, %29 ], [ %40, %33 ]
  %36 = getelementptr i64, ptr %0, i64 %34
  %37 = getelementptr i8, ptr %36, i64 1248
  %38 = getelementptr i64, ptr %0, i64 %34
  %39 = getelementptr i8, ptr %38, i64 1256
  %40 = load <2 x i64>, ptr %39, align 8, !tbaa !12
  %41 = shufflevector <2 x i64> %35, <2 x i64> %40, <2 x i32> <i32 1, i32 2>
  %42 = and <2 x i64> %41, splat (i64 -2147483648)
  %43 = and <2 x i64> %40, splat (i64 2147483646)
  %44 = or disjoint <2 x i64> %43, %42
  %45 = load <2 x i64>, ptr %36, align 8, !tbaa !12
  %46 = lshr exact <2 x i64> %44, splat (i64 1)
  %47 = xor <2 x i64> %46, %45
  %48 = and <2 x i64> %40, splat (i64 1)
  %49 = icmp eq <2 x i64> %48, zeroinitializer
  %50 = select <2 x i1> %49, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %51 = xor <2 x i64> %47, %50
  store <2 x i64> %51, ptr %37, align 8, !tbaa !12
  %52 = add nuw i64 %34, 2
  %53 = icmp eq i64 %52, 154
  br i1 %53, label %54, label %33, !llvm.loop !34

54:                                               ; preds = %33
  %55 = extractelement <2 x i64> %40, i64 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %57 = and i64 %55, -2147483648
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %59 = load i64, ptr %58, align 8, !tbaa !12
  %60 = and i64 %59, 2147483646
  %61 = or disjoint i64 %60, %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %63 = load i64, ptr %62, align 8, !tbaa !12
  %64 = lshr exact i64 %61, 1
  %65 = xor i64 %64, %63
  %66 = and i64 %59, 1
  %67 = icmp eq i64 %66, 0
  %68 = select i1 %67, i64 0, i64 -5403634167711393303
  %69 = xor i64 %65, %68
  store i64 %69, ptr %56, align 8, !tbaa !12
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %71 = load i64, ptr %70, align 8, !tbaa !12
  %72 = and i64 %71, -2147483648
  %73 = load i64, ptr %0, align 8, !tbaa !12
  %74 = and i64 %73, 2147483646
  %75 = or disjoint i64 %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %77 = load i64, ptr %76, align 8, !tbaa !12
  %78 = lshr exact i64 %75, 1
  %79 = xor i64 %78, %77
  %80 = and i64 %73, 1
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, i64 0, i64 -5403634167711393303
  %83 = xor i64 %79, %82
  store i64 %83, ptr %70, align 8, !tbaa !12
  br label %84

84:                                               ; preds = %54, %1
  %85 = phi i64 [ 0, %54 ], [ %3, %1 ]
  %86 = add nuw nsw i64 %85, 1
  store i64 %86, ptr %2, align 8, !tbaa !16
  %87 = getelementptr inbounds nuw i64, ptr %0, i64 %85
  %88 = load i64, ptr %87, align 8, !tbaa !12
  %89 = lshr i64 %88, 29
  %90 = and i64 %89, 22906492245
  %91 = xor i64 %90, %88
  %92 = shl i64 %91, 17
  %93 = and i64 %92, 8202884508482404352
  %94 = xor i64 %93, %91
  %95 = shl i64 %94, 37
  %96 = and i64 %95, -2270628950310912
  %97 = xor i64 %96, %94
  %98 = lshr i64 %97, 43
  %99 = xor i64 %98, %97
  ret i64 %99
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

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
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !13, i64 2496}
!17 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !7, i64 0, !13, i64 2496}
!18 = distinct !{!18, !15}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = distinct !{!20, !15}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!25 = !{!"p1 omnipotent char", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!28, !13, i64 8}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !13, i64 8, !7, i64 16}
!29 = !{!7, !7, i64 0}
!30 = !{!28, !25, i64 0}
!31 = distinct !{!31, !15, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !15, !32, !33}
