; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\f0dfcd96cc3b53fd.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\f0dfcd96cc3b53fd.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::uniform_int_distribution" = type { %"class.std::__1::uniform_int_distribution<>::param_type" }
%"class.std::__1::uniform_int_distribution<>::param_type" = type { i32, i32 }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }
%"class.std::__1::random_device" = type { i8 }

$_ZN12__apo_stdlib13random_handleC2Ev = comdat any

$_ZN12__apo_stdlib13opaque_handleD2Ev = comdat any

$_ZN12__apo_stdlib13random_handleD0Ev = comdat any

$_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEEEiRT_RKNS1_10param_typeE = comdat any

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
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_newEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwy(i64 noundef 2520) #13
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #14
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
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = zext i32 %1 to i64
  store i64 %10, ptr %9, align 8, !tbaa !15
  br label %11

11:                                               ; preds = %21, %8
  %12 = phi i64 [ %10, %8 ], [ %26, %21 ]
  %13 = phi i64 [ 1, %8 ], [ %27, %21 ]
  %14 = getelementptr i64, ptr %9, i64 %13
  %15 = lshr i64 %12, 62
  %16 = xor i64 %15, %12
  %17 = mul i64 %16, 6364136223846793005
  %18 = add i64 %17, %13
  store i64 %18, ptr %14, align 8, !tbaa !15
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 312
  br i1 %20, label %28, label %21, !llvm.loop !17

21:                                               ; preds = %11
  %22 = getelementptr i64, ptr %9, i64 %19
  %23 = lshr i64 %18, 62
  %24 = xor i64 %23, %18
  %25 = mul i64 %24, 6364136223846793005
  %26 = add i64 %25, %19
  store i64 %26, ptr %22, align 8, !tbaa !15
  %27 = add nuw nsw i64 %13, 2
  br label %11

28:                                               ; preds = %11
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 0, ptr %29, align 8, !tbaa !19
  br label %30

30:                                               ; preds = %2, %4, %28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_i32EPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2278188092751872
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %37
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %1, %3, %7
  %45 = phi i32 [ %43, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %45
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2594_5_1326sys__native_rand_range_i32EPvii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %"class.std::__1::uniform_int_distribution", align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 %11, ptr %4, align 4, !tbaa !21
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %12, ptr %13, align 4, !tbaa !23
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = call noundef i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEEEiRT_RKNS1_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(2504) %14, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %16

16:                                               ; preds = %3, %6, %10
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2594_5_1320sys__native_rand_f64EPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2270628950310912
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %40
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 0x3BF0000000000000
  br label %45

45:                                               ; preds = %1, %3, %7
  %46 = phi double [ %44, %7 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2594_5_1321sys__native_rand_boolEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2270628950310912
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %40
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 0x3BF0000000000000
  %45 = fcmp olt double %44, 5.000000e-01
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %1, %3, %7
  %48 = phi i32 [ %46, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %48
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_rand_new() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = tail call noalias noundef nonnull dereferenceable(2520) ptr @_Znwy(i64 noundef 2520) #13
  invoke void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %1)
          to label %4 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #14
  resume { ptr, i32 } %3

4:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @sys__native_rand_i32(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2278188092751872
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %37
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %1, %3, %7
  %45 = phi i32 [ %43, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %45
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_rand_range_i32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %"class.std::__1::uniform_int_distribution", align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 %11, ptr %4, align 4, !tbaa !21
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %12, ptr %13, align 4, !tbaa !23
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = call noundef i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEEEiRT_RKNS1_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(2504) %14, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %16

16:                                               ; preds = %3, %6, %10
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local double @sys__native_rand_f64(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2270628950310912
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %40
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 0x3BF0000000000000
  br label %45

45:                                               ; preds = %1, %3, %7
  %46 = phi double [ %44, %7 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret double %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_rand_bool(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %10 = load i64, ptr %9, align 8, !tbaa !19
  %11 = add i64 %10, 1
  %12 = urem i64 %11, 312
  %13 = getelementptr inbounds nuw i64, ptr %8, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = and i64 %14, -2147483648
  %16 = getelementptr inbounds nuw i64, ptr %8, i64 %12
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = and i64 %17, 2147483646
  %19 = or disjoint i64 %18, %15
  %20 = add i64 %10, 156
  %21 = urem i64 %20, 312
  %22 = getelementptr inbounds nuw i64, ptr %8, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = lshr exact i64 %19, 1
  %25 = trunc i64 %17 to i1
  %26 = select i1 %25, i64 -5403634167711393303, i64 0
  %27 = xor i64 %26, %23
  %28 = xor i64 %27, %24
  store i64 %28, ptr %13, align 8, !tbaa !15
  %29 = load i64, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i64, ptr %8, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = lshr i64 %31, 29
  %33 = and i64 %32, 22906492245
  %34 = xor i64 %33, %31
  store i64 %12, ptr %9, align 8, !tbaa !19
  %35 = shl i64 %34, 17
  %36 = and i64 %35, 8202884508482404352
  %37 = xor i64 %36, %34
  %38 = shl i64 %37, 37
  %39 = and i64 %38, -2270628950310912
  %40 = xor i64 %39, %37
  %41 = lshr i64 %40, 43
  %42 = xor i64 %41, %40
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 0x3BF0000000000000
  %45 = fcmp olt double %44, 5.000000e-01
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %1, %3, %7
  %48 = phi i32 [ %46, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %48
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleC2Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca %"class.std::__1::random_device", align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 12, ptr %4, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13random_handleE, i64 16), ptr %0, align 8, !tbaa !24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i8 24, ptr %2, align 8
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 0, ptr %7, align 1, !tbaa !26
  invoke void @_ZNSt3__113random_deviceC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %8 unwind label %15

8:                                                ; preds = %1
  %9 = load i8, ptr %2, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  call void @_ZdlPv(ptr noundef %14) #14
  br label %24

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load i8, ptr %2, align 8
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  call void @_ZdlPv(ptr noundef %22) #14
  br label %23

23:                                               ; preds = %20, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %49

24:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %25 = invoke noundef i32 @_ZNSt3__113random_deviceclEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %26 unwind label %47

26:                                               ; preds = %24
  %27 = zext i32 %25 to i64
  store i64 %27, ptr %5, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %38, %26
  %29 = phi i64 [ %27, %26 ], [ %43, %38 ]
  %30 = phi i64 [ 1, %26 ], [ %44, %38 ]
  %31 = getelementptr i64, ptr %5, i64 %30
  %32 = lshr i64 %29, 62
  %33 = xor i64 %32, %29
  %34 = mul i64 %33, 6364136223846793005
  %35 = add i64 %34, %30
  store i64 %35, ptr %31, align 8, !tbaa !15
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, 312
  br i1 %37, label %45, label %38, !llvm.loop !17

38:                                               ; preds = %28
  %39 = getelementptr i64, ptr %5, i64 %36
  %40 = lshr i64 %35, 62
  %41 = xor i64 %40, %35
  %42 = mul i64 %41, 6364136223846793005
  %43 = add i64 %42, %36
  store i64 %43, ptr %39, align 8, !tbaa !15
  %44 = add nuw nsw i64 %30, 2
  br label %28

45:                                               ; preds = %28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i64 0, ptr %46, align 8, !tbaa !19
  call void @_ZNSt3__113random_deviceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

47:                                               ; preds = %24
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113random_deviceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  br label %49

49:                                               ; preds = %23, %47
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %16, %23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %50
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare dso_local noundef i32 @_ZNSt3__113random_deviceclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113random_deviceD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13opaque_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #8 comdat align 2 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13random_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(2520) %0) unnamed_addr #9 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

declare dso_local void @_ZNSt3__113random_deviceC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEEEEiRT_RKNS1_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(2504) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !23
  %6 = load i32, ptr %2, align 4, !tbaa !21
  %7 = sub i32 %5, %6
  %8 = add i32 %7, 1
  %9 = icmp eq i32 %5, %6
  br i1 %9, label %99, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = add i64 %14, 1
  %16 = urem i64 %15, 312
  %17 = getelementptr inbounds nuw i64, ptr %1, i64 %14
  %18 = load i64, ptr %17, align 8, !tbaa !15
  %19 = and i64 %18, -2147483648
  %20 = getelementptr inbounds nuw i64, ptr %1, i64 %16
  %21 = load i64, ptr %20, align 8, !tbaa !15
  %22 = and i64 %21, 2147483646
  %23 = or disjoint i64 %22, %19
  %24 = add i64 %14, 156
  %25 = urem i64 %24, 312
  %26 = getelementptr inbounds nuw i64, ptr %1, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = lshr exact i64 %23, 1
  %29 = trunc i64 %21 to i1
  %30 = select i1 %29, i64 -5403634167711393303, i64 0
  %31 = xor i64 %30, %27
  %32 = xor i64 %31, %28
  store i64 %32, ptr %17, align 8, !tbaa !15
  %33 = load i64, ptr %13, align 8, !tbaa !19
  %34 = getelementptr inbounds nuw i64, ptr %1, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !15
  %36 = lshr i64 %35, 29
  %37 = and i64 %36, 22906492245
  %38 = xor i64 %37, %35
  store i64 %16, ptr %13, align 8, !tbaa !19
  %39 = shl i64 %38, 17
  %40 = and i64 %39, 8202884508482404352
  %41 = xor i64 %40, %38
  %42 = shl i64 %41, 37
  %43 = and i64 %42, -2278188092751872
  %44 = xor i64 %43, %41
  %45 = lshr i64 %44, 43
  %46 = xor i64 %45, %41
  %47 = trunc i64 %46 to i32
  br label %99

48:                                               ; preds = %10
  %49 = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %8, i1 true)
  %50 = lshr i32 2147483647, %49
  %51 = and i32 %50, %8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i64 -31, i64 -32
  %54 = or disjoint i32 %49, 64
  %55 = zext nneg i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = lshr i64 -1, %56
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %59 = load i64, ptr %58, align 8, !tbaa !19
  br label %60

60:                                               ; preds = %60, %48
  %61 = phi i64 [ %63, %60 ], [ %59, %48 ]
  %62 = add i64 %61, 1
  %63 = urem i64 %62, 312
  %64 = getelementptr inbounds nuw i64, ptr %1, i64 %61
  %65 = load i64, ptr %64, align 8, !tbaa !15
  %66 = and i64 %65, -2147483648
  %67 = getelementptr inbounds nuw i64, ptr %1, i64 %63
  %68 = load i64, ptr %67, align 8, !tbaa !15
  %69 = and i64 %68, 2147483646
  %70 = or disjoint i64 %69, %66
  %71 = add i64 %61, 156
  %72 = urem i64 %71, 312
  %73 = getelementptr inbounds nuw i64, ptr %1, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !15
  %75 = lshr exact i64 %70, 1
  %76 = trunc i64 %68 to i1
  %77 = select i1 %76, i64 -5403634167711393303, i64 0
  %78 = xor i64 %77, %74
  %79 = xor i64 %78, %75
  store i64 %79, ptr %64, align 8, !tbaa !15
  %80 = load i64, ptr %58, align 8, !tbaa !19
  %81 = getelementptr inbounds nuw i64, ptr %1, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !15
  %83 = lshr i64 %82, 29
  %84 = and i64 %83, 22906492245
  %85 = xor i64 %84, %82
  store i64 %63, ptr %58, align 8, !tbaa !19
  %86 = shl i64 %85, 17
  %87 = and i64 %86, 8202884508482404352
  %88 = xor i64 %87, %85
  %89 = shl i64 %88, 37
  %90 = and i64 %89, -2278188092751872
  %91 = xor i64 %90, %88
  %92 = lshr i64 %91, 43
  %93 = xor i64 %92, %88
  %94 = and i64 %93, %57
  %95 = trunc nuw i64 %94 to i32
  %96 = icmp ugt i32 %8, %95
  br i1 %96, label %97, label %60, !llvm.loop !27

97:                                               ; preds = %60
  %98 = add i32 %6, %95
  br label %99

99:                                               ; preds = %3, %12, %97
  %100 = phi i32 [ %98, %97 ], [ %47, %12 ], [ %5, %3 ]
  ret i32 %100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/f0dfcd96cc3b53fd.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!16 = !{!"long long", !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !16, i64 2496}
!20 = !{!"_ZTSNSt3__123mersenne_twister_engineIyLy64ELy312ELy156ELy31ELy13043109905998158313ELy29ELy6148914691236517205ELy17ELy8202884508482404352ELy37ELy18444473444759240704ELy43ELy6364136223846793005EEE", !10, i64 0, !16, i64 2496}
!21 = !{!22, !9, i64 0}
!22 = !{!"_ZTSNSt3__124uniform_int_distributionIiE10param_typeE", !9, i64 0, !9, i64 4}
!23 = !{!22, !9, i64 4}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !11, i64 0}
!26 = !{!10, !10, i64 0}
!27 = distinct !{!27, !18}
