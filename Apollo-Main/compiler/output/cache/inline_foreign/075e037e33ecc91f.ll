; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/075e037e33ecc91f.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/075e037e33ecc91f.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_119sys__native_abs_f64Ed(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_ceilEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.ceil.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_floorEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.floor.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_roundEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.round.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_truncEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.trunc.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_sqrtEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @sqrt(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_cbrtEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @cbrt(double noundef %0) #10
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_hypotEdd(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call double @hypot(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_sinEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @sin(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_cosEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @cos(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_tanEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @tan(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_asinEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @asin(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_acosEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @acos(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_atanEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @atan(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_atan2Edd(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call double @atan2(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_sinhEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @sinh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_coshEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @cosh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_tanhEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @tanh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_asinhEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @asinh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_acoshEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @acosh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @acosh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_atanhEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @atanh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_expEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @exp(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_exp2Ed(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @exp2(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp2(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_expm1Ed(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @expm1(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_logEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @log(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_116sys__native_log2Ed(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @log2(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_log10Ed(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @log10(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_log1pEd(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call double @log1p(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_powEdd(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call double @pow(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_115sys__native_fmaEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call double @llvm.fma.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_120sys__native_copysignEdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call double @llvm.copysign.f64(double %0, double %1)
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_121sys__native_nextafterEdd(double noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = tail call double @nextafter(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_117sys__native_ldexpEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call double @ldexp(double noundef %0, i32 noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_119sys__frexp_fractionEd(double noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = call noundef double @frexp(double noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_611_5_119sys__frexp_exponentEd(double noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = call double @frexp(double noundef %0, ptr noundef nonnull %2) #9
  %4 = load i32, ptr %2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_118sys__modf_fractionEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call { double, double } @llvm.modf.f64(double %0)
  %3 = extractvalue { double, double } %2, 0
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_118sys__modf_integralEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call { double, double } @llvm.modf.f64(double %0)
  %3 = extractvalue { double, double } %2, 1
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_611_5_117sys__native_isnanEd(double noundef %0) local_unnamed_addr #0 {
  %2 = fcmp uno double %0, 0.000000e+00
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_611_5_117sys__native_isinfEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp oeq double %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_611_5_120sys__native_isfiniteEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp one double %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_611_5_120sys__native_isnormalEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i1 @llvm.is.fpclass.f64(double %0, i32 264)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_611_5_122sys__native_signum_f64Ed(double noundef %0) local_unnamed_addr #0 {
  %2 = fcmp uno double %0, 0.000000e+00
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt double %0, 0.000000e+00
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = select i1 %6, double -1.000000e+00, double 0.000000e+00
  br label %8

8:                                                ; preds = %1, %3, %5
  %9 = phi double [ 0.000000e+00, %1 ], [ 1.000000e+00, %3 ], [ %7, %5 ]
  ret double %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_abs_f64(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @llvm.fabs.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_ceil(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @llvm.ceil.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_floor(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @llvm.floor.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_round(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @llvm.round.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_trunc(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @llvm.trunc.f64(double %0)
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_sqrt(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @sqrt(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_cbrt(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef double @cbrt(double noundef %0) #10
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_hypot(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef double @hypot(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_sin(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @sin(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_cos(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @cos(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_tan(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @tan(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_asin(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @asin(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_acos(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @acos(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_atan(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @atan(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_atan2(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef double @atan2(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_sinh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @sinh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_cosh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @cosh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_tanh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @tanh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_asinh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @asinh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_acosh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @acosh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_atanh(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @atanh(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_exp(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @exp(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_exp2(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @exp2(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_expm1(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @expm1(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_log(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @log(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_log2(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @log2(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_log10(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @log10(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_log1p(double noundef %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @log1p(double noundef %0) #9, !tbaa !5
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_pow(double noundef %0, double noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef double @pow(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_fma(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call noundef double @llvm.fma.f64(double %0, double %1, double %2)
  ret double %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_copysign(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef double @llvm.copysign.f64(double %0, double %1)
  ret double %3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @sys__native_nextafter(double noundef %0, double noundef %1) local_unnamed_addr #5 {
  %3 = tail call noundef double @nextafter(double noundef %0, double noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @sys__native_ldexp(double noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef double @ldexp(double noundef %0, i32 noundef %1) #9, !tbaa !5
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__frexp_fraction(double noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = call noundef double @frexp(double noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @sys__frexp_exponent(double noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = call double @frexp(double noundef %0, ptr noundef nonnull %2) #9
  %4 = load i32, ptr %2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @sys__modf_fraction(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call { double, double } @llvm.modf.f64(double %0)
  %3 = extractvalue { double, double } %2, 0
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @sys__modf_integral(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call { double, double } @llvm.modf.f64(double %0)
  %3 = extractvalue { double, double } %2, 1
  ret double %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_isnan(double noundef %0) local_unnamed_addr #0 {
  %2 = fcmp uno double %0, 0.000000e+00
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_isinf(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp oeq double %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_isfinite(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp one double %2, 0x7FF0000000000000
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_isnormal(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i1 @llvm.is.fpclass.f64(double %0, i32 264)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @sys__native_signum_f64(double noundef %0) local_unnamed_addr #0 {
  %2 = fcmp uno double %0, 0.000000e+00
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt double %0, 0.000000e+00
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = fcmp olt double %0, 0.000000e+00
  %7 = select i1 %6, double -1.000000e+00, double 0.000000e+00
  br label %8

8:                                                ; preds = %1, %3, %5
  %9 = phi double [ 0.000000e+00, %1 ], [ 1.000000e+00, %3 ], [ %7, %5 ]
  ret double %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
