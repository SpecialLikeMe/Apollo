; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/904d29f062e09f29.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/904d29f062e09f29.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1725sys__native_hash_fnv1a_32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %57, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ -2128831035, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 16777619
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11, %6
  %58 = phi i32 [ poison, %6 ], [ %53, %11 ]
  %59 = phi i32 [ -2128831035, %6 ], [ %53, %11 ]
  %60 = phi ptr [ %0, %6 ], [ %54, %11 ]
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57, %62
  %63 = phi i32 [ %69, %62 ], [ %59, %57 ]
  %64 = phi ptr [ %70, %62 ], [ %60, %57 ]
  %65 = phi i64 [ %71, %62 ], [ 0, %57 ]
  %66 = load i8, ptr %64, align 1, !tbaa !5
  %67 = zext i8 %66 to i32
  %68 = xor i32 %63, %67
  %69 = mul i32 %68, 16777619
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %71 = add i64 %65, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %62, !llvm.loop !8

73:                                               ; preds = %57, %62, %1, %3
  %74 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %58, %57 ], [ %69, %62 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN32__apollo_inline_inline_2866_5_1725sys__native_hash_fnv1a_64EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %57, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ -3750763034362895579, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = xor i64 %12, %16
  %18 = mul i64 %17, 1099511628211
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = xor i64 %18, %21
  %23 = mul i64 %22, 1099511628211
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i64
  %27 = xor i64 %23, %26
  %28 = mul i64 %27, 1099511628211
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i64
  %32 = xor i64 %28, %31
  %33 = mul i64 %32, 1099511628211
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = xor i64 %33, %36
  %38 = mul i64 %37, 1099511628211
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = xor i64 %38, %41
  %43 = mul i64 %42, 1099511628211
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i64
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, 1099511628211
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, 1099511628211
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11, %6
  %58 = phi i64 [ poison, %6 ], [ %53, %11 ]
  %59 = phi i64 [ -3750763034362895579, %6 ], [ %53, %11 ]
  %60 = phi ptr [ %0, %6 ], [ %54, %11 ]
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ %69, %62 ], [ %59, %57 ]
  %64 = phi ptr [ %70, %62 ], [ %60, %57 ]
  %65 = phi i64 [ %71, %62 ], [ 0, %57 ]
  %66 = load i8, ptr %64, align 1, !tbaa !5
  %67 = zext i8 %66 to i64
  %68 = xor i64 %63, %67
  %69 = mul i64 %68, 1099511628211
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %71 = add i64 %65, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %62, !llvm.loop !10

73:                                               ; preds = %57, %62, %1, %3
  %74 = phi i64 [ -3750763034362895579, %3 ], [ -3750763034362895579, %1 ], [ %58, %57 ], [ %69, %62 ]
  ret i64 %74
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, -983040) i32 @_ZN32__apollo_inline_inline_2866_5_1724sys__native_hash_adler32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %4, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  br label %30

11:                                               ; preds = %30, %6
  %12 = phi i32 [ poison, %6 ], [ %45, %30 ]
  %13 = phi i32 [ poison, %6 ], [ %47, %30 ]
  %14 = phi i32 [ 1, %6 ], [ %45, %30 ]
  %15 = phi i32 [ 0, %6 ], [ %47, %30 ]
  %16 = phi ptr [ %0, %6 ], [ %48, %30 ]
  %17 = icmp eq i64 %7, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load i8, ptr %16, align 1, !tbaa !5
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %14, %20
  %22 = urem i32 %21, 65521
  %23 = add nuw nsw i32 %22, %15
  %24 = urem i32 %23, 65521
  br label %25

25:                                               ; preds = %11, %18
  %26 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %27 = phi i32 [ %13, %11 ], [ %24, %18 ]
  %28 = shl nuw i32 %27, 16
  %29 = or disjoint i32 %28, %26
  br label %51

30:                                               ; preds = %30, %9
  %31 = phi i32 [ 1, %9 ], [ %45, %30 ]
  %32 = phi i32 [ 0, %9 ], [ %47, %30 ]
  %33 = phi ptr [ %0, %9 ], [ %48, %30 ]
  %34 = phi i64 [ 0, %9 ], [ %49, %30 ]
  %35 = load i8, ptr %33, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %31, %36
  %38 = urem i32 %37, 65521
  %39 = add nuw nsw i32 %38, %32
  %40 = urem i32 %39, 65521
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %38, %43
  %45 = urem i32 %44, 65521
  %46 = add nuw nsw i32 %45, %40
  %47 = urem i32 %46, 65521
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 2
  %49 = add i64 %34, 2
  %50 = icmp eq i64 %49, %10
  br i1 %50, label %11, label %30

51:                                               ; preds = %1, %3, %25
  %52 = phi i32 [ 1, %3 ], [ %29, %25 ], [ 1, %1 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1722sys__native_hash_crc32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = xor i32 %10, %13
  %15 = lshr i32 %14, 1
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -306674912
  %19 = xor i32 %18, %15
  %20 = lshr i32 %19, 1
  %21 = and i32 %14, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -306674912
  %24 = xor i32 %20, %23
  %25 = lshr i32 %24, 6
  %26 = insertelement <4 x i32> poison, i32 %14, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer
  %28 = and <4 x i32> %27, <i32 8, i32 4, i32 16, i32 32>
  %29 = icmp eq <4 x i32> %28, zeroinitializer
  %30 = select <4 x i1> %29, <4 x i32> zeroinitializer, <4 x i32> <i32 249268274, i32 124634137, i32 498536548, i32 997073096>
  %31 = and i32 %19, 32
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 1994146192
  %34 = and i32 %24, 32
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 -306674912
  %37 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %30)
  %38 = xor i32 %37, %33
  %39 = xor i32 %36, %25
  %40 = xor i32 %38, %39
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %7, label %9

43:                                               ; preds = %1, %3, %7
  %44 = phi i32 [ 0, %3 ], [ %8, %7 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1727sys__native_hash_murmur3_32EPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %88, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  %10 = and i64 %9, 1
  %11 = and i32 %5, 2147483644
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = and i64 %9, 536870910
  %15 = getelementptr i8, ptr %0, i64 4
  br label %39

16:                                               ; preds = %39
  %17 = shl nsw i64 %63, 2
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ poison, %8 ], [ %62, %16 ]
  %20 = phi i64 [ 0, %8 ], [ %17, %16 ]
  %21 = phi i32 [ 0, %8 ], [ %62, %16 ]
  %22 = icmp eq i64 %10, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %25 = load i32, ptr %24, align 1
  %26 = mul i32 %25, -862048943
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 15)
  %28 = mul i32 %27, 461845907
  %29 = xor i32 %28, %21
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, 5
  %32 = add i32 %31, -430675100
  br label %33

33:                                               ; preds = %23, %18, %3
  %34 = phi i32 [ 0, %3 ], [ %19, %18 ], [ %32, %23 ]
  %35 = shl nsw i32 %6, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = and i32 %5, 3
  switch i32 %38, label %87 [
    i32 3, label %66
    i32 2, label %71
    i32 1, label %78
    i32 0, label %88
  ]

39:                                               ; preds = %39, %13
  %40 = phi i64 [ 0, %13 ], [ %63, %39 ]
  %41 = phi i32 [ 0, %13 ], [ %62, %39 ]
  %42 = phi i64 [ 0, %13 ], [ %64, %39 ]
  %43 = shl nsw i64 %40, 2
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 1
  %46 = mul i32 %45, -862048943
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 15)
  %48 = mul i32 %47, 461845907
  %49 = xor i32 %48, %41
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, 5
  %52 = add i32 %51, -430675100
  %53 = shl i64 %40, 2
  %54 = getelementptr i8, ptr %15, i64 %53
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -862048943
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 15)
  %58 = mul i32 %57, 461845907
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, 5
  %62 = add i32 %61, -430675100
  %63 = add nuw nsw i64 %40, 2
  %64 = add i64 %42, 2
  %65 = icmp eq i64 %64, %14
  br i1 %65, label %16, label %39, !llvm.loop !11

66:                                               ; preds = %33
  %67 = getelementptr inbounds nuw i8, ptr %37, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  br label %71

71:                                               ; preds = %66, %33
  %72 = phi i32 [ %70, %66 ], [ 0, %33 ]
  %73 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or disjoint i32 %76, %72
  br label %78

78:                                               ; preds = %71, %33
  %79 = phi i32 [ %77, %71 ], [ 0, %33 ]
  %80 = load i8, ptr %37, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = xor i32 %79, %81
  %83 = mul i32 %82, -862048943
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 15)
  %85 = mul i32 %84, 461845907
  %86 = xor i32 %85, %34
  br label %88

87:                                               ; preds = %33
  unreachable

88:                                               ; preds = %1, %33, %78
  %89 = phi i32 [ %5, %78 ], [ %5, %33 ], [ 0, %1 ]
  %90 = phi i32 [ %86, %78 ], [ %34, %33 ], [ 0, %1 ]
  %91 = xor i32 %90, %89
  %92 = lshr i32 %91, 16
  %93 = xor i32 %92, %91
  %94 = mul i32 %93, -2048144789
  %95 = lshr i32 %94, 13
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -1028477387
  %98 = lshr i32 %97, 16
  %99 = xor i32 %98, %97
  ret i32 %99
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_fnv1a_32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %57, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ -2128831035, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 16777619
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11, %6
  %58 = phi i32 [ poison, %6 ], [ %53, %11 ]
  %59 = phi i32 [ -2128831035, %6 ], [ %53, %11 ]
  %60 = phi ptr [ %0, %6 ], [ %54, %11 ]
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57, %62
  %63 = phi i32 [ %69, %62 ], [ %59, %57 ]
  %64 = phi ptr [ %70, %62 ], [ %60, %57 ]
  %65 = phi i64 [ %71, %62 ], [ 0, %57 ]
  %66 = load i8, ptr %64, align 1, !tbaa !5
  %67 = zext i8 %66 to i32
  %68 = xor i32 %63, %67
  %69 = mul i32 %68, 16777619
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %71 = add i64 %65, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %62, !llvm.loop !13

73:                                               ; preds = %57, %62, %1, %3
  %74 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %58, %57 ], [ %69, %62 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @sys__native_hash_fnv1a_64(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %57, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ -3750763034362895579, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = xor i64 %12, %16
  %18 = mul i64 %17, 1099511628211
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i64
  %22 = xor i64 %18, %21
  %23 = mul i64 %22, 1099511628211
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = zext i8 %25 to i64
  %27 = xor i64 %23, %26
  %28 = mul i64 %27, 1099511628211
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i64
  %32 = xor i64 %28, %31
  %33 = mul i64 %32, 1099511628211
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = xor i64 %33, %36
  %38 = mul i64 %37, 1099511628211
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = zext i8 %40 to i64
  %42 = xor i64 %38, %41
  %43 = mul i64 %42, 1099511628211
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !5
  %46 = zext i8 %45 to i64
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, 1099511628211
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !5
  %51 = zext i8 %50 to i64
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, 1099511628211
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11, %6
  %58 = phi i64 [ poison, %6 ], [ %53, %11 ]
  %59 = phi i64 [ -3750763034362895579, %6 ], [ %53, %11 ]
  %60 = phi ptr [ %0, %6 ], [ %54, %11 ]
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ %69, %62 ], [ %59, %57 ]
  %64 = phi ptr [ %70, %62 ], [ %60, %57 ]
  %65 = phi i64 [ %71, %62 ], [ 0, %57 ]
  %66 = load i8, ptr %64, align 1, !tbaa !5
  %67 = zext i8 %66 to i64
  %68 = xor i64 %63, %67
  %69 = mul i64 %68, 1099511628211
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %71 = add i64 %65, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %62, !llvm.loop !14

73:                                               ; preds = %57, %62, %1, %3
  %74 = phi i64 [ -3750763034362895579, %3 ], [ -3750763034362895579, %1 ], [ %58, %57 ], [ %69, %62 ]
  ret i64 %74
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, -983040) i32 @sys__native_hash_adler32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #3
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %4, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  br label %30

11:                                               ; preds = %30, %6
  %12 = phi i32 [ poison, %6 ], [ %45, %30 ]
  %13 = phi i32 [ poison, %6 ], [ %47, %30 ]
  %14 = phi i32 [ 1, %6 ], [ %45, %30 ]
  %15 = phi i32 [ 0, %6 ], [ %47, %30 ]
  %16 = phi ptr [ %0, %6 ], [ %48, %30 ]
  %17 = icmp eq i64 %7, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load i8, ptr %16, align 1, !tbaa !5
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %14, %20
  %22 = urem i32 %21, 65521
  %23 = add nuw nsw i32 %22, %15
  %24 = urem i32 %23, 65521
  br label %25

25:                                               ; preds = %11, %18
  %26 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %27 = phi i32 [ %13, %11 ], [ %24, %18 ]
  %28 = shl nuw i32 %27, 16
  %29 = or disjoint i32 %28, %26
  br label %51

30:                                               ; preds = %30, %9
  %31 = phi i32 [ 1, %9 ], [ %45, %30 ]
  %32 = phi i32 [ 0, %9 ], [ %47, %30 ]
  %33 = phi ptr [ %0, %9 ], [ %48, %30 ]
  %34 = phi i64 [ 0, %9 ], [ %49, %30 ]
  %35 = load i8, ptr %33, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %31, %36
  %38 = urem i32 %37, 65521
  %39 = add nuw nsw i32 %38, %32
  %40 = urem i32 %39, 65521
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %38, %43
  %45 = urem i32 %44, 65521
  %46 = add nuw nsw i32 %45, %40
  %47 = urem i32 %46, 65521
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 2
  %49 = add i64 %34, 2
  %50 = icmp eq i64 %49, %10
  br i1 %50, label %11, label %30

51:                                               ; preds = %1, %3, %25
  %52 = phi i32 [ 1, %3 ], [ %29, %25 ], [ 1, %1 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_crc32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = xor i32 %10, %13
  %15 = lshr i32 %14, 1
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -306674912
  %19 = xor i32 %18, %15
  %20 = lshr i32 %19, 1
  %21 = and i32 %14, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -306674912
  %24 = xor i32 %20, %23
  %25 = lshr i32 %24, 6
  %26 = insertelement <4 x i32> poison, i32 %14, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer
  %28 = and <4 x i32> %27, <i32 8, i32 4, i32 16, i32 32>
  %29 = icmp eq <4 x i32> %28, zeroinitializer
  %30 = select <4 x i1> %29, <4 x i32> zeroinitializer, <4 x i32> <i32 249268274, i32 124634137, i32 498536548, i32 997073096>
  %31 = and i32 %19, 32
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 1994146192
  %34 = and i32 %24, 32
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 -306674912
  %37 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %30)
  %38 = xor i32 %37, %33
  %39 = xor i32 %36, %25
  %40 = xor i32 %38, %39
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %7, label %9

43:                                               ; preds = %1, %3, %7
  %44 = phi i32 [ 0, %3 ], [ %8, %7 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_murmur3_32(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %88, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #3
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  %10 = and i64 %9, 1
  %11 = and i32 %5, 2147483644
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = and i64 %9, 536870910
  %15 = getelementptr i8, ptr %0, i64 4
  br label %39

16:                                               ; preds = %39
  %17 = shl nsw i64 %63, 2
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ poison, %8 ], [ %62, %16 ]
  %20 = phi i64 [ 0, %8 ], [ %17, %16 ]
  %21 = phi i32 [ 0, %8 ], [ %62, %16 ]
  %22 = icmp eq i64 %10, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %25 = load i32, ptr %24, align 1
  %26 = mul i32 %25, -862048943
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 15)
  %28 = mul i32 %27, 461845907
  %29 = xor i32 %28, %21
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, 5
  %32 = add i32 %31, -430675100
  br label %33

33:                                               ; preds = %23, %18, %3
  %34 = phi i32 [ 0, %3 ], [ %19, %18 ], [ %32, %23 ]
  %35 = shl nsw i32 %6, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = and i32 %5, 3
  switch i32 %38, label %87 [
    i32 3, label %66
    i32 2, label %71
    i32 1, label %78
    i32 0, label %88
  ]

39:                                               ; preds = %39, %13
  %40 = phi i64 [ 0, %13 ], [ %63, %39 ]
  %41 = phi i32 [ 0, %13 ], [ %62, %39 ]
  %42 = phi i64 [ 0, %13 ], [ %64, %39 ]
  %43 = shl nsw i64 %40, 2
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 1
  %46 = mul i32 %45, -862048943
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 15)
  %48 = mul i32 %47, 461845907
  %49 = xor i32 %48, %41
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, 5
  %52 = add i32 %51, -430675100
  %53 = shl i64 %40, 2
  %54 = getelementptr i8, ptr %15, i64 %53
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -862048943
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 15)
  %58 = mul i32 %57, 461845907
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, 5
  %62 = add i32 %61, -430675100
  %63 = add nuw nsw i64 %40, 2
  %64 = add i64 %42, 2
  %65 = icmp eq i64 %64, %14
  br i1 %65, label %16, label %39, !llvm.loop !11

66:                                               ; preds = %33
  %67 = getelementptr inbounds nuw i8, ptr %37, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !5
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  br label %71

71:                                               ; preds = %66, %33
  %72 = phi i32 [ %70, %66 ], [ 0, %33 ]
  %73 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !5
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or disjoint i32 %76, %72
  br label %78

78:                                               ; preds = %71, %33
  %79 = phi i32 [ %77, %71 ], [ 0, %33 ]
  %80 = load i8, ptr %37, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = xor i32 %79, %81
  %83 = mul i32 %82, -862048943
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 15)
  %85 = mul i32 %84, 461845907
  %86 = xor i32 %85, %34
  br label %88

87:                                               ; preds = %33
  unreachable

88:                                               ; preds = %1, %33, %78
  %89 = phi i32 [ %5, %78 ], [ %5, %33 ], [ 0, %1 ]
  %90 = phi i32 [ %86, %78 ], [ %34, %33 ], [ 0, %1 ]
  %91 = xor i32 %90, %89
  %92 = lshr i32 %91, 16
  %93 = xor i32 %92, %91
  %94 = mul i32 %93, -2048144789
  %95 = lshr i32 %94, 13
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -1028477387
  %98 = lshr i32 %97, 16
  %99 = xor i32 %98, %97
  ret i32 %99
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
