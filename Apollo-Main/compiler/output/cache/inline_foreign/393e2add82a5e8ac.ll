; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\output\cache\inline_foreign\393e2add82a5e8ac.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign\\393e2add82a5e8ac.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2223_5_1725sys__native_hash_fnv1a_32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5, !noalias !12
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
  %15 = load i8, ptr %13, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !15
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
  %67 = load i8, ptr %65, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 16777619
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !16

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2223_5_1725sys__native_hash_fnv1a_64EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5, !noalias !18
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
  %12 = phi i32 [ -2078137563, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 435
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 435
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 435
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 435
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 435
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 435
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 435
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 435
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i32 [ -2078137563, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 435
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !21

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2078137563, %3 ], [ -2078137563, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, -983040) i32 @_ZN32__apollo_inline_inline_2223_5_1724sys__native_hash_adler32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5, !noalias !22
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
  %18 = load i8, ptr %16, align 1, !tbaa !15
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
  %34 = load i8, ptr %32, align 1, !tbaa !15
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %30, %35
  %37 = urem i32 %36, 65521
  %38 = add nuw nsw i32 %37, %31
  %39 = urem i32 %38, 65521
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !15
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

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2223_5_1722sys__native_hash_crc32EPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5, !noalias !25
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !15
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
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2223_5_1727sys__native_hash_murmur3_32EPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5, !noalias !28
  %5 = trunc i64 %4 to i32
  %6 = sdiv i32 %5, 4
  %7 = icmp sgt i32 %5, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  br label %16

10:                                               ; preds = %16, %3
  %11 = phi i32 [ 0, %3 ], [ %41, %16 ]
  %12 = shl nsw i32 %6, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = and i32 %5, 3
  switch i32 %15, label %67 [
    i32 3, label %44
    i32 2, label %49
    i32 1, label %56
    i32 0, label %68
  ]

16:                                               ; preds = %16, %8
  %17 = phi i64 [ 0, %8 ], [ %42, %16 ]
  %18 = phi i32 [ 0, %8 ], [ %41, %16 ]
  %19 = shl nsw i64 %17, 2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 1
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = or disjoint i32 %27, %31
  %33 = mul i32 %32, -862048943
  %34 = mul i32 %32, 380141568
  %35 = lshr i32 %33, 17
  %36 = or disjoint i32 %35, %34
  %37 = mul i32 %36, 461845907
  %38 = xor i32 %37, %18
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, 5
  %41 = add i32 %40, -430675100
  %42 = add nuw nsw i64 %17, 1
  %43 = icmp eq i64 %42, %9
  br i1 %43, label %10, label %16, !llvm.loop !31

44:                                               ; preds = %10
  %45 = getelementptr inbounds nuw i8, ptr %14, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  br label %49

49:                                               ; preds = %44, %10
  %50 = phi i32 [ %48, %44 ], [ 0, %10 ]
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or disjoint i32 %54, %50
  br label %56

56:                                               ; preds = %49, %10
  %57 = phi i32 [ %55, %49 ], [ 0, %10 ]
  %58 = load i8, ptr %14, align 1, !tbaa !15
  %59 = zext i8 %58 to i32
  %60 = xor i32 %57, %59
  %61 = mul i32 %60, -862048943
  %62 = mul i32 %60, 380141568
  %63 = lshr i32 %61, 17
  %64 = or disjoint i32 %63, %62
  %65 = mul i32 %64, 461845907
  %66 = xor i32 %65, %11
  br label %68

67:                                               ; preds = %10
  unreachable

68:                                               ; preds = %1, %10, %56
  %69 = phi i32 [ %5, %56 ], [ %5, %10 ], [ 0, %1 ]
  %70 = phi i32 [ %66, %56 ], [ %11, %10 ], [ 0, %1 ]
  %71 = xor i32 %70, %69
  %72 = lshr i32 %71, 16
  %73 = xor i32 %72, %71
  %74 = mul i32 %73, -2048144789
  %75 = lshr i32 %74, 13
  %76 = xor i32 %75, %74
  %77 = mul i32 %76, -1028477387
  %78 = lshr i32 %77, 16
  %79 = xor i32 %78, %77
  ret i32 %79
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_fnv1a_32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5, !noalias !33
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
  %15 = load i8, ptr %13, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 16777619
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 16777619
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 16777619
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 16777619
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 16777619
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 16777619
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 16777619
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !15
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
  %67 = load i8, ptr %65, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 16777619
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !36

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2128831035, %3 ], [ -2128831035, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_fnv1a_64(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5, !noalias !37
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
  %12 = phi i32 [ -2078137563, %9 ], [ %53, %11 ]
  %13 = phi ptr [ %0, %9 ], [ %54, %11 ]
  %14 = phi i64 [ 0, %9 ], [ %55, %11 ]
  %15 = load i8, ptr %13, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = mul i32 %17, 435
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = zext i8 %20 to i32
  %22 = xor i32 %18, %21
  %23 = mul i32 %22, 435
  %24 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = zext i8 %25 to i32
  %27 = xor i32 %23, %26
  %28 = mul i32 %27, 435
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = xor i32 %28, %31
  %33 = mul i32 %32, 435
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = mul i32 %37, 435
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = xor i32 %38, %41
  %43 = mul i32 %42, 435
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = xor i32 %43, %46
  %48 = mul i32 %47, 435
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = xor i32 %48, %51
  %53 = mul i32 %52, 435
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %55 = add i64 %14, 8
  %56 = icmp eq i64 %55, %10
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = icmp eq i64 %7, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %57, %6
  %60 = phi i32 [ -2078137563, %6 ], [ %53, %57 ]
  %61 = phi ptr [ %0, %6 ], [ %54, %57 ]
  %62 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %62)
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i32 [ %70, %63 ], [ %60, %59 ]
  %65 = phi ptr [ %71, %63 ], [ %61, %59 ]
  %66 = phi i64 [ %72, %63 ], [ 0, %59 ]
  %67 = load i8, ptr %65, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, 435
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = add i64 %66, 1
  %73 = icmp eq i64 %72, %7
  br i1 %73, label %74, label %63, !llvm.loop !40

74:                                               ; preds = %57, %63, %1, %3
  %75 = phi i32 [ -2078137563, %3 ], [ -2078137563, %1 ], [ %53, %57 ], [ %70, %63 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, -983040) i32 @sys__native_hash_adler32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5, !noalias !41
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
  %18 = load i8, ptr %16, align 1, !tbaa !15
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
  %34 = load i8, ptr %32, align 1, !tbaa !15
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %30, %35
  %37 = urem i32 %36, 65521
  %38 = add nuw nsw i32 %37, %31
  %39 = urem i32 %38, 65521
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !15
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

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_hash_crc32(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #5, !noalias !44
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %43, label %9

7:                                                ; preds = %9
  %8 = xor i32 %40, -1
  br label %43

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %40, %9 ], [ -1, %3 ]
  %11 = phi ptr [ %41, %9 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !15
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
define dso_local noundef i32 @sys__native_hash_murmur3_32(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN32__apollo_inline_inline_2223_5_1727sys__native_hash_murmur3_32EPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign/393e2add82a5e8ac.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!14 = distinct !{!14, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!20 = distinct !{!20, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!21 = distinct !{!21, !17}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!24 = distinct !{!24, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!27 = distinct !{!27, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!30 = distinct !{!30, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!35 = distinct !{!35, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!36 = distinct !{!36, !17}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!39 = distinct !{!39, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!40 = distinct !{!40, !17}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!43 = distinct !{!43, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!46 = distinct !{!46, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
