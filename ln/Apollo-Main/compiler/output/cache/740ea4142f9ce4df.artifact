; ModuleID = 'support/helper'
source_filename = "support/helper.apollo"

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
!apollo.primitive.types = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}

!0 = !{!"direct-ir-prototype", !"llvm-cpp-api", !"support/helper"}
!1 = !{!"autofmt", i1 false, !"gui", i1 false, !"go_async", i1 false, !"ir_runtime", i1 false, !"isc", i1 false, !"file", i1 false, !"memstruct", i1 false, !"scheduler", i1 false, !"runtime_extensions", i1 false, !"total_program_gc", i1 false, !"borrow_checker_off", i1 false}
!2 = !{!"default_full_soa", i1 true, !"uses_full_soa_layouts", i1 false}
!3 = !{!"float", !"float"}
!4 = !{!"long", !"i64"}
!5 = !{!"isize", !"i64"}
!6 = !{!"i64", !"i64"}
!7 = !{!"short", !"i16"}
!8 = !{!"u32", !"i32"}
!9 = !{!"bool", !"i1"}
!10 = !{!"int", !"i32"}
!11 = !{!"void", !"void"}
!12 = !{!"u16", !"i16"}
!13 = !{!"i16", !"i16"}
!14 = !{!"u64", !"i64"}
!15 = !{!"u8", !"i8"}
!16 = !{!"f64", !"double"}
!17 = !{!"i32", !"i32"}
!18 = !{!"double", !"double"}
!19 = !{!"usize", !"i64"}
!20 = !{!"byte", !"i8"}
!21 = !{!"i8", !"i8"}
!22 = !{!"char", !"i32"}
