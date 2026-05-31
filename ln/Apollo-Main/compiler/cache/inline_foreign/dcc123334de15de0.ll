; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\dcc123334de15de0.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\dcc123334de15de0.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

$__clang_call_terminate = comdat any

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN32__apollo_inline_inline_3499_5_1629sys__native_thread_get_raw_idEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = invoke noundef i32 @_ZNSt3__130__libcpp_thread_get_current_idEv()
          to label %5 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #4
  unreachable

5:                                                ; preds = %0
  %6 = and i32 %1, 2147483647
  ret i32 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN32__apollo_inline_inline_3499_5_1624sys__native_thread_yieldEv() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  invoke void @_ZNSt3__121__libcpp_thread_yieldEv()
          to label %4 unwind label %1

1:                                                ; preds = %0
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  tail call void @__clang_call_terminate(ptr %3) #4
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @sys__native_thread_get_raw_id() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = invoke noundef i32 @_ZNSt3__130__libcpp_thread_get_current_idEv()
          to label %5 unwind label %2

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #4
  unreachable

5:                                                ; preds = %0
  %6 = and i32 %1, 2147483647
  ret i32 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @sys__native_thread_yield() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  invoke void @_ZNSt3__121__libcpp_thread_yieldEv()
          to label %4 unwind label %1

1:                                                ; preds = %0
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  tail call void @__clang_call_terminate(ptr %3) #4
  unreachable

4:                                                ; preds = %0
  ret void
}

declare dso_local noundef i32 @_ZNSt3__130__libcpp_thread_get_current_idEv() local_unnamed_addr #1

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #5
  tail call void @_ZSt9terminatev() #4
  unreachable
}

declare dso_local ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare dso_local void @_ZSt9terminatev() local_unnamed_addr #3

declare dso_local void @_ZNSt3__121__libcpp_thread_yieldEv() local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/dcc123334de15de0.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
