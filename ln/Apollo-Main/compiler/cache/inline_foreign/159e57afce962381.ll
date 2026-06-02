; ModuleID = 'C:\Users\devon\Apollo\ln\Apollo-Main\compiler\cache\inline_foreign\159e57afce962381.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\ln\\Apollo-Main\\compiler\\cache\\inline_foreign\\159e57afce962381.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress uwtable
define dso_local void @__apollo_inline_run_inline_10_9_1() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_Z46__apollo_inline_get_inline_2_5_0_foreign_valuev()
  %2 = tail call noundef i32 @_Z10read_valuev()
  %3 = add nsw i32 %2, 3
  %4 = tail call noundef ptr @_Z46__apollo_inline_get_inline_2_5_0_foreign_valuev()
  store i32 %3, ptr %4, align 4, !tbaa !8
  ret void
}

declare dso_local noundef ptr @_Z46__apollo_inline_get_inline_2_5_0_foreign_valuev() local_unnamed_addr #1

declare dso_local noundef i32 @_Z10read_valuev() local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\ln\\Apollo-Main\\compiler\\cache\\inline_foreign/159e57afce962381.cpp", directory: "C:/Users/devon/Apollo/ln/Apollo-Main/compiler/tests/grammar/pass")
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
