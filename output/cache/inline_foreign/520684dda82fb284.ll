; ModuleID = 'apollo_inline_inline_2_5_0.900071f9b8ee670c-cgu.0'
source_filename = "apollo_inline_inline_2_5_0.900071f9b8ee670c-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E = internal global [4 x i8] c"\07\00\00\00", align 4

; apollo_inline_inline_2_5_0::apollo_inline_inline_2_5_0::four
; Function Attrs: uwtable
define internal i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE() unnamed_addr #0 {
start:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define ptr @__apollo_inline_get_inline_2_5_0_foreign_value() unnamed_addr #1 {
start:
  ret ptr @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_013foreign_value17h85fbcf6293d486d4E
}

; Function Attrs: nounwind uwtable
define i32 @four() unnamed_addr #1 personality ptr @__CxxFrameHandler3 {
start:
; invoke apollo_inline_inline_2_5_0::apollo_inline_inline_2_5_0::four
  %_0 = invoke i32 @_ZN26apollo_inline_inline_2_5_026apollo_inline_inline_2_5_04four17h84c0ba5d8722b00fE()
          to label %bb1 unwind label %cs_terminate

cs_terminate:                                     ; preds = %start
  %catchswitch = catchswitch within none [label %cp_terminate] unwind to caller

cp_terminate:                                     ; preds = %cs_terminate
  %catchpad = catchpad within %catchswitch [ptr null, i32 64, ptr null]
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h8096a73a325ef2caE() #4 [ "funclet"(token %catchpad) ]
  unreachable

bb1:                                              ; preds = %start
  ret i32 %_0
}

declare i32 @__CxxFrameHandler3(...) unnamed_addr #2

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h8096a73a325ef2caE() unnamed_addr #3

attributes #0 = { uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #1 = { nounwind uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #2 = { "target-cpu"="x86-64" }
attributes #3 = { cold minsize noinline noreturn nounwind optsize uwtable "target-cpu"="x86-64" "target-features"="+cx16,+sse,+sse2,+sse3,+sahf" }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.94.1 (e408947bf 2026-03-25)"}
