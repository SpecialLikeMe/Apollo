; ModuleID = 'apollo_inline_inline_2_5_0.900071f9b8ee670c-cgu.0'
source_filename = "apollo_inline_inline_2_5_0.900071f9b8ee670c-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-gnu"

@_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E = internal global [4 x i8] c"\07\00\00\00", align 4

; apollo_inline_inline_2_5_0::apollo_inline_inline_2_5_0::four
; Function Attrs: nounwind uwtable
define internal i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE() unnamed_addr #0 {
start:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define ptr @__apollo_inline_get_inline_2_5_0_foreign_value() unnamed_addr #0 {
start:
  ret ptr @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E
}

; Function Attrs: nounwind uwtable
define i32 @four() unnamed_addr #0 {
start:
; call apollo_inline_inline_2_5_0::apollo_inline_inline_2_5_0::four
  %_0 = call i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE() #1
  ret i32 %_0
}

attributes #0 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
