; ModuleID = 'loop_forin_smoke'
source_filename = "loop_forin_smoke.apollo"

define i32 @main() {
entry:
  %n = alloca i32, align 4
  %i.end = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %i, align 4
  store i32 5, ptr %i.end, align 4
  br label %forin.range.cond

forin.range.cond:                                 ; preds = %forin.range.step, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %i.end, align 4
  %2 = icmp slt i32 %0, %1
  br i1 %2, label %forin.range.body, label %forin.range.end

forin.range.body:                                 ; preds = %forin.range.cond
  %3 = load i32, ptr %sum, align 4
  %4 = load i32, ptr %i, align 4
  %5 = add i32 %3, %4
  store i32 %5, ptr %sum, align 4
  br label %forin.range.step

forin.range.step:                                 ; preds = %forin.range.body
  %6 = load i32, ptr %i, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %i, align 4
  br label %forin.range.cond

forin.range.end:                                  ; preds = %forin.range.cond
  store i32 0, ptr %n, align 4
  br label %loop.body

loop.body:                                        ; preds = %if.end, %forin.range.end
  %8 = load i32, ptr %n, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %n, align 4
  %10 = load i32, ptr %n, align 4
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %if.then, label %if.end

loop.end:                                         ; No predecessors!
  ret i32 0

if.then:                                          ; preds = %loop.body
  %12 = load i32, ptr %sum, align 4
  %13 = load i32, ptr %n, align 4
  %14 = add i32 %12, %13
  ret i32 %14

if.end:                                           ; preds = %loop.body
  br label %loop.body
}

!apollo.backend = !{!0}
!apollo.runtime.features = !{!1}
!apollo.soa.mode = !{!2}
!apollo.primitive.types = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}

!0 = !{!"direct-ir-prototype", !"llvm-cpp-api", !"loop_forin_smoke"}
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
