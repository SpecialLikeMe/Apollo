; ModuleID = 'apollo_inline_inline_28_3_0.f691f64e95a20b35-cgu.0'
source_filename = "apollo_inline_inline_28_3_0.f691f64e95a20b35-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-gnu"

@alloc_df03e4a3fea9799ae8a4548fcad9a043 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @__apollo_inline_run_inline_28_3_0(ptr %__apollo_capture_0) unnamed_addr #0 {
start:
  %_2 = call i32 (ptr, ...) @printf(ptr @alloc_df03e4a3fea9799ae8a4548fcad9a043, ptr %__apollo_capture_0) #1
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @printf(ptr, ...) unnamed_addr #0

attributes #0 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
