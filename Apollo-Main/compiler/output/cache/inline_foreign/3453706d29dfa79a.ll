; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/3453706d29dfa79a.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/3453706d29dfa79a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1725sys__native_hash_fnv1a_32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %59, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ -2128831035, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 16777619
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i32 [ -2128831035, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 16777619
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !10

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN32__apollo_inline_inline_2866_5_1725sys__native_hash_fnv1a_64EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %59, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ -3750763034362895579, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = xor i64 %12, %16
  %18 = mul i64 %17, 1099511628211
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = xor i64 %18, %21
  %23 = mul i64 %22, 1099511628211
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = xor i64 %23, %26
  %28 = mul i64 %27, 1099511628211
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i64
  %32 = xor i64 %28, %31
  %33 = mul i64 %32, 1099511628211
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = zext i8 %35 to i64
  %37 = xor i64 %33, %36
  %38 = mul i64 %37, 1099511628211
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = xor i64 %38, %41
  %43 = mul i64 %42, 1099511628211
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, 1099511628211
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i64
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, 1099511628211
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i64 [ -3750763034362895579, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = xor i64 %64, %68
  %70 = mul i64 %69, 1099511628211
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !12

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i64 [ -3750763034362895579, %3 ], [ -3750763034362895579, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, -983040) i32 @_ZN32__apollo_inline_inline_2866_5_1724sys__native_hash_adler32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %4, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  br label %29

11:                                               ; preds = %29
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ 1, %6 ], [ %44, %11 ]
  %15 = phi i32 [ 0, %6 ], [ %46, %11 ]
  %16 = phi ptr [ %0, %6 ], [ %47, %11 ]
  %17 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %17)
  %18 = load i8, ptr %16, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %14, %19
  %21 = urem i32 %20, 65521
  %22 = add nuw nsw i32 %21, %15
  %23 = urem i32 %22, 65521
  br label %24

24:                                               ; preds = %11, %13
  %25 = phi i32 [ %44, %11 ], [ %21, %13 ]
  %26 = phi i32 [ %46, %11 ], [ %23, %13 ]
  %27 = shl nuw i32 %26, 16
  %28 = or disjoint i32 %27, %25
  br label %50

29:                                               ; preds = %29, %9
  %30 = phi i32 [ 1, %9 ], [ %44, %29 ]
  %31 = phi i32 [ 0, %9 ], [ %46, %29 ]
  %32 = phi ptr [ %0, %9 ], [ %47, %29 ]
  %33 = phi i64 [ 0, %9 ], [ %48, %29 ]
  %34 = load i8, ptr %32, align 1, !tbaa !9
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %30, %35
  %37 = urem i32 %36, 65521
  %38 = add nuw nsw i32 %37, %31
  %39 = urem i32 %38, 65521
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %37, %42
  %44 = urem i32 %43, 65521
  %45 = add nuw nsw i32 %44, %39
  %46 = urem i32 %45, 65521
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 2
  %48 = add i64 %33, 2
  %49 = icmp eq i64 %48, %10
  br i1 %49, label %11, label %29

50:                                               ; preds = %1, %3, %24
  %51 = phi i32 [ 1, %3 ], [ %28, %24 ], [ 1, %1 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1722sys__native_hash_crc32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2866_5_1727sys__native_hash_murmur3_32EPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %87, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  %10 = and i64 %9, 1
  %11 = and i32 %5, 2147483644
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = and i64 %9, 536870910
  br label %37

15:                                               ; preds = %37
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %15, %8
  %18 = phi i64 [ 0, %8 ], [ %62, %15 ]
  %19 = phi i32 [ 0, %8 ], [ %61, %15 ]
  %20 = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %20)
  %21 = shl nsw i64 %18, 2
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -862048943
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 15)
  %26 = mul i32 %25, 461845907
  %27 = xor i32 %26, %19
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, 5
  %30 = add i32 %29, -430675100
  br label %31

31:                                               ; preds = %17, %15, %3
  %32 = phi i32 [ 0, %3 ], [ %61, %15 ], [ %30, %17 ]
  %33 = shl nsw i32 %6, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = and i32 %5, 3
  switch i32 %36, label %86 [
    i32 3, label %65
    i32 2, label %70
    i32 1, label %77
    i32 0, label %87
  ]

37:                                               ; preds = %37, %13
  %38 = phi i64 [ 0, %13 ], [ %62, %37 ]
  %39 = phi i32 [ 0, %13 ], [ %61, %37 ]
  %40 = phi i64 [ 0, %13 ], [ %63, %37 ]
  %41 = shl nsw i64 %38, 2
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %41
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -862048943
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 15)
  %46 = mul i32 %45, 461845907
  %47 = xor i32 %46, %39
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, 5
  %50 = add i32 %49, -430675100
  %51 = shl i64 %38, 2
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %54 = load i32, ptr %53, align 1
  %55 = mul i32 %54, -862048943
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 15)
  %57 = mul i32 %56, 461845907
  %58 = xor i32 %57, %50
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, 5
  %61 = add i32 %60, -430675100
  %62 = add nuw nsw i64 %38, 2
  %63 = add i64 %40, 2
  %64 = icmp eq i64 %63, %14
  br i1 %64, label %15, label %37, !llvm.loop !13

65:                                               ; preds = %31
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  br label %70

70:                                               ; preds = %65, %31
  %71 = phi i32 [ %69, %65 ], [ 0, %31 ]
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or disjoint i32 %75, %71
  br label %77

77:                                               ; preds = %70, %31
  %78 = phi i32 [ %76, %70 ], [ 0, %31 ]
  %79 = load i8, ptr %35, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = xor i32 %78, %80
  %82 = mul i32 %81, -862048943
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 15)
  %84 = mul i32 %83, 461845907
  %85 = xor i32 %84, %32
  br label %87

86:                                               ; preds = %31
  unreachable

87:                                               ; preds = %1, %31, %77
  %88 = phi i32 [ %5, %77 ], [ %5, %31 ], [ 0, %1 ]
  %89 = phi i32 [ %85, %77 ], [ %32, %31 ], [ 0, %1 ]
  %90 = xor i32 %89, %88
  %91 = lshr i32 %90, 16
  %92 = xor i32 %91, %90
  %93 = mul i32 %92, -2048144789
  %94 = lshr i32 %93, 13
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -1028477387
  %97 = lshr i32 %96, 16
  %98 = xor i32 %97, %96
  ret i32 %98
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_fnv1a_32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %59, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ -2128831035, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 16777619
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i32 [ -2128831035, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 16777619
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !15

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @sys__native_hash_fnv1a_64(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 7
  %8 = icmp ult i64 %4, 8
  br i1 %8, label %59, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -8
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ -3750763034362895579, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = xor i64 %12, %16
  %18 = mul i64 %17, 1099511628211
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = xor i64 %18, %21
  %23 = mul i64 %22, 1099511628211
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = xor i64 %23, %26
  %28 = mul i64 %27, 1099511628211
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i64
  %32 = xor i64 %28, %31
  %33 = mul i64 %32, 1099511628211
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = zext i8 %35 to i64
  %37 = xor i64 %33, %36
  %38 = mul i64 %37, 1099511628211
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = xor i64 %38, %41
  %43 = mul i64 %42, 1099511628211
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, 1099511628211
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i64
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, 1099511628211
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i64 [ -3750763034362895579, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = xor i64 %64, %68
  %70 = mul i64 %69, 1099511628211
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !16

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i64 [ -3750763034362895579, %3 ], [ -3750763034362895579, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, -983040) i32 @sys__native_hash_adler32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5
  %5 = icmp samesign eq i64 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %3
  %7 = and i64 %4, 1
  %8 = icmp eq i64 %4, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = and i64 %4, -2
  br label %29

11:                                               ; preds = %29
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ 1, %6 ], [ %44, %11 ]
  %15 = phi i32 [ 0, %6 ], [ %46, %11 ]
  %16 = phi ptr [ %0, %6 ], [ %47, %11 ]
  %17 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %17)
  %18 = load i8, ptr %16, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %14, %19
  %21 = urem i32 %20, 65521
  %22 = add nuw nsw i32 %21, %15
  %23 = urem i32 %22, 65521
  br label %24

24:                                               ; preds = %11, %13
  %25 = phi i32 [ %44, %11 ], [ %21, %13 ]
  %26 = phi i32 [ %46, %11 ], [ %23, %13 ]
  %27 = shl nuw i32 %26, 16
  %28 = or disjoint i32 %27, %25
  br label %50

29:                                               ; preds = %29, %9
  %30 = phi i32 [ 1, %9 ], [ %44, %29 ]
  %31 = phi i32 [ 0, %9 ], [ %46, %29 ]
  %32 = phi ptr [ %0, %9 ], [ %47, %29 ]
  %33 = phi i64 [ 0, %9 ], [ %48, %29 ]
  %34 = load i8, ptr %32, align 1, !tbaa !9
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %30, %35
  %37 = urem i32 %36, 65521
  %38 = add nuw nsw i32 %37, %31
  %39 = urem i32 %38, 65521
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %37, %42
  %44 = urem i32 %43, 65521
  %45 = add nuw nsw i32 %44, %39
  %46 = urem i32 %45, 65521
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 2
  %48 = add i64 %33, 2
  %49 = icmp eq i64 %48, %10
  br i1 %49, label %11, label %29

50:                                               ; preds = %1, %3, %24
  %51 = phi i32 [ 1, %3 ], [ %28, %24 ], [ 1, %1 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_crc32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
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

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_murmur3_32(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %87, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  %10 = and i64 %9, 1
  %11 = and i32 %5, 2147483644
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = and i64 %9, 536870910
  br label %37

15:                                               ; preds = %37
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %15, %8
  %18 = phi i64 [ 0, %8 ], [ %62, %15 ]
  %19 = phi i32 [ 0, %8 ], [ %61, %15 ]
  %20 = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %20)
  %21 = shl nsw i64 %18, 2
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -862048943
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 15)
  %26 = mul i32 %25, 461845907
  %27 = xor i32 %26, %19
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, 5
  %30 = add i32 %29, -430675100
  br label %31

31:                                               ; preds = %17, %15, %3
  %32 = phi i32 [ 0, %3 ], [ %61, %15 ], [ %30, %17 ]
  %33 = shl nsw i32 %6, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = and i32 %5, 3
  switch i32 %36, label %86 [
    i32 3, label %65
    i32 2, label %70
    i32 1, label %77
    i32 0, label %87
  ]

37:                                               ; preds = %37, %13
  %38 = phi i64 [ 0, %13 ], [ %62, %37 ]
  %39 = phi i32 [ 0, %13 ], [ %61, %37 ]
  %40 = phi i64 [ 0, %13 ], [ %63, %37 ]
  %41 = shl nsw i64 %38, 2
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %41
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -862048943
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 15)
  %46 = mul i32 %45, 461845907
  %47 = xor i32 %46, %39
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, 5
  %50 = add i32 %49, -430675100
  %51 = shl i64 %38, 2
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %54 = load i32, ptr %53, align 1
  %55 = mul i32 %54, -862048943
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 15)
  %57 = mul i32 %56, 461845907
  %58 = xor i32 %57, %50
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, 5
  %61 = add i32 %60, -430675100
  %62 = add nuw nsw i64 %38, 2
  %63 = add i64 %40, 2
  %64 = icmp eq i64 %63, %14
  br i1 %64, label %15, label %37, !llvm.loop !13

65:                                               ; preds = %31
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  br label %70

70:                                               ; preds = %65, %31
  %71 = phi i32 [ %69, %65 ], [ 0, %31 ]
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or disjoint i32 %75, %71
  br label %77

77:                                               ; preds = %70, %31
  %78 = phi i32 [ %76, %70 ], [ 0, %31 ]
  %79 = load i8, ptr %35, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = xor i32 %78, %80
  %82 = mul i32 %81, -862048943
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 15)
  %84 = mul i32 %83, 461845907
  %85 = xor i32 %84, %32
  br label %87

86:                                               ; preds = %31
  unreachable

87:                                               ; preds = %1, %31, %77
  %88 = phi i32 [ %5, %77 ], [ %5, %31 ], [ 0, %1 ]
  %89 = phi i32 [ %85, %77 ], [ %32, %31 ], [ 0, %1 ]
  %90 = xor i32 %89, %88
  %91 = lshr i32 %90, 16
  %92 = xor i32 %91, %90
  %93 = mul i32 %92, -2048144789
  %94 = lshr i32 %93, 13
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -1028477387
  %97 = lshr i32 %96, 16
  %98 = xor i32 %97, %96
  ret i32 %98
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 22.1.5"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
