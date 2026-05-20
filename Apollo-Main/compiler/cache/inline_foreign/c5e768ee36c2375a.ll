; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\c5e768ee36c2375a.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\c5e768ee36c2375a.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 33) i32 @_ZN30__apollo_inline_inline_262_5_28sys__clzEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 33) i32 @_ZN30__apollo_inline_inline_262_5_28sys__ctzEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 false)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 33) i32 @_ZN30__apollo_inline_inline_262_5_213sys__popcountEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 34) i32 @_ZN30__apollo_inline_inline_262_5_28sys__ffsEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 false)
  %4 = add nuw nsw i32 %3, 1
  %5 = select i1 %2, i32 0, i32 %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_262_5_216sys__rotate_leftEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = srem i32 %1, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = shl i32 %0, %3
  %9 = sub nuw nsw i32 32, %3
  %10 = lshr i32 %0, %9
  %11 = or disjoint i32 %10, %8
  br label %18

12:                                               ; preds = %5
  %13 = sub nsw i32 0, %3
  %14 = lshr i32 %0, %13
  %15 = add nsw i32 %3, 32
  %16 = shl i32 %0, %15
  %17 = or i32 %16, %14
  br label %18

18:                                               ; preds = %2, %7, %12
  %19 = phi i32 [ %17, %12 ], [ %11, %7 ], [ %0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_262_5_217sys__rotate_rightEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = srem i32 %1, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = lshr i32 %0, %3
  %9 = sub nuw nsw i32 32, %3
  %10 = shl i32 %0, %9
  %11 = or disjoint i32 %10, %8
  br label %18

12:                                               ; preds = %5
  %13 = sub nsw i32 0, %3
  %14 = shl i32 %0, %13
  %15 = add nsw i32 %3, 32
  %16 = lshr i32 %0, %15
  %17 = or i32 %16, %14
  br label %18

18:                                               ; preds = %2, %7, %12
  %19 = phi i32 [ %17, %12 ], [ %11, %7 ], [ %0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_262_5_210sys__bswapEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 33) i32 @sys__ctz(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 false)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 33) i32 @sys__popcount(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 34) i32 @sys__ffs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 false)
  %4 = add nuw nsw i32 %3, 1
  %5 = select i1 %2, i32 0, i32 %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__rotate_left(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = srem i32 %1, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = shl i32 %0, %3
  %9 = sub nuw nsw i32 32, %3
  %10 = lshr i32 %0, %9
  %11 = or disjoint i32 %10, %8
  br label %18

12:                                               ; preds = %5
  %13 = sub nsw i32 0, %3
  %14 = lshr i32 %0, %13
  %15 = add nsw i32 %3, 32
  %16 = shl i32 %0, %15
  %17 = or i32 %16, %14
  br label %18

18:                                               ; preds = %2, %7, %12
  %19 = phi i32 [ %17, %12 ], [ %11, %7 ], [ %0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__rotate_right(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = srem i32 %1, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = lshr i32 %0, %3
  %9 = sub nuw nsw i32 32, %3
  %10 = shl i32 %0, %9
  %11 = or disjoint i32 %10, %8
  br label %18

12:                                               ; preds = %5
  %13 = sub nsw i32 0, %3
  %14 = shl i32 %0, %13
  %15 = add nsw i32 %3, 32
  %16 = lshr i32 %0, %15
  %17 = or i32 %16, %14
  br label %18

18:                                               ; preds = %2, %7, %12
  %19 = phi i32 [ %17, %12 ], [ %11, %7 ], [ %0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sys__bswap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/c5e768ee36c2375a.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
