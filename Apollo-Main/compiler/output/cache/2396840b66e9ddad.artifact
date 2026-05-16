; ModuleID = 'inline_foreign_rust_surface'
source_filename = "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass/inline_foreign_rust_surface.apollo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E = internal global [4 x i8] c"\07\00\00\00", align 4
@apollo.print.fmt = private unnamed_addr constant [6 x i8] c"%lld\0A\00"
@apollo.print.fmt.1 = private unnamed_addr constant [6 x i8] c"%lld\0A\00"

; Function Attrs: nounwind uwtable
define ptr @__apollo_inline_get_inline_2_5_0_foreign_value() unnamed_addr #0 {
start:
  ret ptr @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E
}

; Function Attrs: nounwind uwtable
define i32 @four() unnamed_addr #0 {
start:
  %_0 = call i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE() #1
  ret i32 %_0
}

; Function Attrs: nounwind uwtable
define internal i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE() unnamed_addr #0 {
start:
  ret i32 4
}

define i32 @main() {
entry:
  %0 = call ptr @__apollo_inline_get_inline_2_5_0_foreign_value()
  %1 = call i32 @four()
  %2 = sext i32 %1 to i64
  %3 = call i32 (ptr, ...) @printf(ptr @apollo.print.fmt, i64 %2)
  %4 = load i32, ptr %0, align 4
  %5 = sext i32 %4 to i64
  %6 = call i32 (ptr, ...) @printf(ptr @apollo.print.fmt.1, i64 %5)
  ret i32 0
}

declare i32 @printf(ptr, ...)

attributes #0 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { nounwind }

!apollo.backend = !{!0}
!apollo.runtime.features = !{!1}
!apollo.soa.mode = !{!2}
!apollo.primitive.types = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}
!llvm.module.flags = !{!20}

!0 = !{!"direct-ir-prototype", !"llvm-cpp-api", !"inline_foreign_rust_surface"}
!1 = !{!"autofmt", i1 false, !"gui", i1 false, !"go_async", i1 false, !"ir_runtime", i1 false, !"isc", i1 false, !"file", i1 false, !"memstruct", i1 false, !"scheduler", i1 false, !"runtime_extensions", i1 false, !"total_program_gc", i1 false, !"borrow_checker_off", i1 false}
!2 = !{!"default_full_soa", i1 true, !"uses_full_soa_layouts", i1 false}
!3 = !{!"i32", !"i32"}
!4 = !{!"short", !"i16"}
!5 = !{!"bool", !"i1"}
!6 = !{!"i8", !"i8"}
!7 = !{!"u8", !"i8"}
!8 = !{!"i16", !"i16"}
!9 = !{!"u16", !"i16"}
!10 = !{!"u32", !"i32"}
!11 = !{!"int", !"i32"}
!12 = !{!"i64", !"i64"}
!13 = !{!"u64", !"i64"}
!14 = !{!"long", !"i64"}
!15 = !{!"float", !"float"}
!16 = !{!"double", !"double"}
!17 = !{!"f64", !"double"}
!18 = !{!"void", !"void"}
!19 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
!20 = !{i32 8, !"PIC Level", i32 2}
