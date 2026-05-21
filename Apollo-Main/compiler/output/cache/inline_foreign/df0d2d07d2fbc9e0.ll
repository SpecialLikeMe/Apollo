; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\output\cache\inline_foreign\df0d2d07d2fbc9e0.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign\\df0d2d07d2fbc9e0.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_021sys__native_div_floorEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = sdiv i32 %0, %1
  %6 = srem i32 %0, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %6, 0
  %10 = icmp sgt i32 %1, 0
  %11 = xor i1 %10, %9
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %5, %12
  br label %14

14:                                               ; preds = %2, %4, %8
  %15 = phi i32 [ 0, %2 ], [ %5, %4 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN30__apollo_inline_inline_108_5_019sys__native_mod_eucEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = srem i32 %0, %1
  %6 = icmp slt i32 %5, 0
  %7 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %8 = select i1 %6, i32 %7, i32 0
  %9 = add nsw i32 %8, %5
  br label %10

10:                                               ; preds = %2, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_026sys__native_saturating_addEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @llvm.sadd.sat.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_026sys__native_saturating_subEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @llvm.ssub.sat.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_026sys__native_saturating_mulEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = mul nsw i64 %4, %3
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 -2147483648)
  %7 = tail call i64 @llvm.smin.i64(i64 %6, i64 2147483647)
  %8 = trunc nsw i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_024sys__native_wrapping_addEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_024sys__native_wrapping_subEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sub i32 %0, %1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_026sys__overflowing_add_valueEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_108_5_029sys__overflowing_add_overflowEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = add nsw i64 %3, -2147483648
  %6 = add nsw i64 %5, %4
  %7 = icmp ult i64 %6, -4294967296
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN30__apollo_inline_inline_108_5_015sys__native_lcmEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = sext i32 %1 to i64
  %9 = tail call noundef i64 @llvm.abs.i64(i64 %7, i1 true)
  %10 = tail call noundef i64 @llvm.abs.i64(i64 %8, i1 true)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %10)
  %12 = tail call i64 @llvm.umax.i64(i64 %9, i64 %10)
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %6
  %15 = trunc nuw i64 %12 to i32
  %16 = trunc nuw i64 %11 to i32
  %17 = urem i32 %15, %16
  %18 = zext nneg i32 %17 to i64
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %18, i1 true)
  %22 = lshr exact i64 %18, %21
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %11, %20 ], [ %31, %23 ]
  %25 = phi i64 [ %22, %20 ], [ %32, %23 ]
  %26 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %24, i1 true)
  %27 = lshr exact i64 %24, %26
  %28 = icmp ugt i64 %25, %27
  %29 = sub nuw nsw i64 %25, %27
  %30 = sub nuw nsw i64 %27, %25
  %31 = select i1 %28, i64 %29, i64 %30
  %32 = tail call i64 @llvm.umin.i64(i64 %25, i64 %27)
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %23, !llvm.loop !12

34:                                               ; preds = %23
  %35 = or i64 %11, %18
  %36 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %35, i1 true)
  %37 = shl nuw nsw i64 %32, %36
  br label %38

38:                                               ; preds = %34, %14, %6
  %39 = phi i64 [ %37, %34 ], [ %12, %6 ], [ %11, %14 ]
  %40 = sdiv i64 %7, %39
  %41 = mul nsw i64 %40, %8
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 true)
  %43 = tail call i64 @llvm.umin.i64(i64 %42, i64 2147483647)
  %44 = trunc nuw nsw i64 %43 to i32
  br label %45

45:                                               ; preds = %2, %38
  %46 = phi i32 [ %44, %38 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_108_5_018sys__native_signumEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = ashr i32 %0, 31
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = or i32 %2, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_div_floor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = sdiv i32 %0, %1
  %6 = srem i32 %0, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %6, 0
  %10 = icmp sgt i32 %1, 0
  %11 = xor i1 %10, %9
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %5, %12
  br label %14

14:                                               ; preds = %2, %4, %8
  %15 = phi i32 [ 0, %2 ], [ %5, %4 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @sys__native_mod_euc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = srem i32 %0, %1
  %6 = icmp slt i32 %5, 0
  %7 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %8 = select i1 %6, i32 %7, i32 0
  %9 = add nsw i32 %8, %5
  br label %10

10:                                               ; preds = %2, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_saturating_add(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @llvm.sadd.sat.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_saturating_sub(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @llvm.ssub.sat.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_saturating_mul(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = mul nsw i64 %4, %3
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 -2147483648)
  %7 = tail call i64 @llvm.smin.i64(i64 %6, i64 2147483647)
  %8 = trunc nsw i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_wrapping_add(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_wrapping_sub(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sub i32 %0, %1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__overflowing_add_value(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @sys__overflowing_add_overflow(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = add nsw i64 %3, -2147483648
  %6 = add nsw i64 %5, %4
  %7 = icmp ult i64 %6, -4294967296
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, -2147483648) i32 @sys__native_lcm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = sext i32 %1 to i64
  %9 = tail call noundef i64 @llvm.abs.i64(i64 %7, i1 true)
  %10 = tail call noundef i64 @llvm.abs.i64(i64 %8, i1 true)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %10)
  %12 = tail call i64 @llvm.umax.i64(i64 %9, i64 %10)
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %6
  %15 = trunc nuw i64 %12 to i32
  %16 = trunc nuw i64 %11 to i32
  %17 = urem i32 %15, %16
  %18 = zext nneg i32 %17 to i64
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %18, i1 true)
  %22 = lshr exact i64 %18, %21
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %11, %20 ], [ %31, %23 ]
  %25 = phi i64 [ %22, %20 ], [ %32, %23 ]
  %26 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %24, i1 true)
  %27 = lshr exact i64 %24, %26
  %28 = icmp ugt i64 %25, %27
  %29 = sub nuw nsw i64 %25, %27
  %30 = sub nuw nsw i64 %27, %25
  %31 = select i1 %28, i64 %29, i64 %30
  %32 = tail call i64 @llvm.umin.i64(i64 %25, i64 %27)
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %23, !llvm.loop !12

34:                                               ; preds = %23
  %35 = or i64 %11, %18
  %36 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %35, i1 true)
  %37 = shl nuw nsw i64 %32, %36
  br label %38

38:                                               ; preds = %34, %14, %6
  %39 = phi i64 [ %37, %34 ], [ %12, %6 ], [ %11, %14 ]
  %40 = sdiv i64 %7, %39
  %41 = mul nsw i64 %40, %8
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 true)
  %43 = tail call i64 @llvm.umin.i64(i64 %42, i64 2147483647)
  %44 = trunc nuw nsw i64 %43 to i32
  br label %45

45:                                               ; preds = %2, %38
  %46 = phi i32 [ %44, %38 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_signum(i32 noundef %0) local_unnamed_addr #0 {
  %2 = ashr i32 %0, 31
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = or i32 %2, %4
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign/df0d2d07d2fbc9e0.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
