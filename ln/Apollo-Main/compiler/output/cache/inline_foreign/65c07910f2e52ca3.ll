; ModuleID = 'C:\Users\devon\Apollo\ln\Apollo-Main\compiler\output\cache\inline_foreign\65c07910f2e52ca3.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\ln\\Apollo-Main\\compiler\\output\\cache\\inline_foreign\\65c07910f2e52ca3.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_215sys__native_clzEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ -2147483648, %3 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %3 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = lshr i32 %6, 1
  %10 = and i32 %9, %0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !12

12:                                               ; preds = %5, %1, %3
  %13 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_215sys__native_ctzEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %3 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = lshr exact i32 %8, 1
  %11 = and i32 %8, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !14

13:                                               ; preds = %6, %1, %3
  %14 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_220sys__native_popcountEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ %0, %1 ]
  %6 = and i32 %5, 1
  %7 = add nuw nsw i32 %6, %4
  %8 = lshr i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %3, !llvm.loop !15

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_215sys__native_ffsEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %3 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = lshr exact i32 %8, 1
  %11 = and i32 %8, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !14

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %7, 2
  br label %15

15:                                               ; preds = %1, %3, %13
  %16 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_223sys__native_rotate_leftEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_224sys__native_rotate_rightEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_727_5_217sys__native_bswapEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_clz(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ -2147483648, %3 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %3 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = lshr i32 %6, 1
  %10 = and i32 %9, %0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !12

12:                                               ; preds = %5, %1, %3
  %13 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_ctz(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %3 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = lshr exact i32 %8, 1
  %11 = and i32 %8, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !14

13:                                               ; preds = %6, %1, %3
  %14 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_popcount(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ %0, %1 ]
  %6 = and i32 %5, 1
  %7 = add nuw nsw i32 %6, %4
  %8 = lshr i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %3, !llvm.loop !15

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__native_ffs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %3 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = lshr exact i32 %8, 1
  %11 = and i32 %8, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !14

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %7, 2
  br label %15

15:                                               ; preds = %1, %3, %13
  %16 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_rotate_left(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_rotate_right(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_bswap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\ln\\Apollo-Main\\compiler\\output\\cache\\inline_foreign/65c07910f2e52ca3.cpp", directory: "C:/Users/devon/AppData/Local/Temp/apollo-set-int-0f007f078f2a43ba8a3fc9afca306e30/build/.apollo-bundles")
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
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
