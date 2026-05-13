; ModuleID = 'support/helper'
source_filename = "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass/support/helper.apollo"

@apollo.print.fmt = private unnamed_addr constant [6 x i8] c"%lld\0A\00"

define i32 @helper_value() {
entry:
  %0 = call i32 (ptr, ...) @printf(ptr @apollo.print.fmt, i64 11)
  ret i32 11
}

declare i32 @printf(ptr, ...)

!apollo.backend = !{!0}
!apollo.runtime.features = !{!1}
!apollo.soa.mode = !{!2}
!apollo.primitive.types = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}

!0 = !{!"direct-ir-prototype", !"llvm-cpp-api", !"support/helper"}
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
