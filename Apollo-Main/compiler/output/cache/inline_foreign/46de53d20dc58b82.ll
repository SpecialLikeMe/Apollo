; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/46de53d20dc58b82.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/46de53d20dc58b82.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_215sys__native_clzEi(i32 noundef %0) local_unnamed_addr #0 {
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
  br i1 %11, label %5, label %12, !llvm.loop !9

12:                                               ; preds = %5, %1, %3
  %13 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_215sys__native_ctzEi(i32 noundef %0) local_unnamed_addr #0 {
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
  br i1 %12, label %6, label %13, !llvm.loop !11

13:                                               ; preds = %6, %1, %3
  %14 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_220sys__native_popcountEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ %0, %1 ]
  %6 = and i32 %5, 1
  %7 = add nuw nsw i32 %6, %4
  %8 = lshr i32 %5, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %3, !llvm.loop !12

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_215sys__native_ffsEi(i32 noundef %0) local_unnamed_addr #0 {
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
  br i1 %12, label %6, label %13, !llvm.loop !11

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %7, 2
  br label %15

15:                                               ; preds = %1, %3, %13
  %16 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_223sys__native_rotate_leftEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_224sys__native_rotate_rightEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_726_5_217sys__native_bswapEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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
  br i1 %11, label %5, label %12, !llvm.loop !9

12:                                               ; preds = %5, %1, %3
  %13 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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
  br i1 %12, label %6, label %13, !llvm.loop !11

13:                                               ; preds = %6, %1, %3
  %14 = phi i32 [ 32, %1 ], [ 0, %3 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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
  br i1 %9, label %10, label %3, !llvm.loop !12

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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
  br i1 %12, label %6, label %13, !llvm.loop !11

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %7, 2
  br label %15

15:                                               ; preds = %1, %3, %13
  %16 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_rotate_left(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i32 @sys__native_rotate_right(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 31
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %1)
  %6 = select i1 %4, i32 %0, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
