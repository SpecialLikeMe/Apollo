; ModuleID = 'apollo_inline_inline_4_5_0.50cbc4938b1ae567-cgu.0'
source_filename = "apollo_inline_inline_4_5_0.50cbc4938b1ae567-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @__apollo_inline_run_inline_4_5_0() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @four() unnamed_addr #0 {
start:
  ret i32 4
}

attributes #0 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
