; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\2c50186085edd822.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\2c50186085edd822.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::deque" = type { %"class.std::__1::__split_buffer", i64, %struct.anon.4 }
%"class.std::__1::__split_buffer" = type { %"class.std::__1::__split_buffer_pointer_layout" }
%"class.std::__1::__split_buffer_pointer_layout" = type { ptr, ptr, ptr, %struct.anon.3 }
%struct.anon.3 = type { ptr }
%struct.anon.4 = type { i64 }
%"class.std::__1::basic_string_view" = type { ptr, i64 }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }

$_ZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib10hex_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib10url_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib13base64_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNSt3__120__throw_length_errorB9nqe220103EPKc = comdat any

$_ZNSt12length_errorC2B9nqe220103EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB9nqe220103v = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_ = comdat any

$_ZZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits = comdat any

$_ZTISt12length_error = comdat any

$_ZTSSt12length_error = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt20bad_array_new_length = comdat any

$_ZTSSt20bad_array_new_length = comdat any

$_ZTISt9bad_alloc = comdat any

$_ZTSSt9bad_alloc = comdat any

$_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits = comdat any

$_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable = comdat any

@_ZZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits = linkonce_odr dso_local local_unnamed_addr constant [17 x i8] c"0123456789abcdef\00", comdat, align 16
@.str = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt20bad_array_new_length, ptr @_ZTISt9bad_alloc }, comdat, align 8
@_ZTSSt20bad_array_new_length = linkonce_odr dso_local constant [25 x i8] c"St20bad_array_new_length\00", comdat, align 1
@_ZTISt9bad_alloc = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt9bad_alloc, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt9bad_alloc = linkonce_odr dso_local constant [13 x i8] c"St9bad_alloc\00", comdat, align 1
@_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local global %"class.std::__1::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits = linkonce_odr dso_local local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", comdat, align 16
@_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable = linkonce_odr dso_local local_unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2723_5_1126sys__native_ascii_validateEPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %10 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2723_5_1125sys__native_utf8_validateEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %32 ], [ %27, %37 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = icmp slt i8 %12, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = and i32 %13, 224
  %17 = icmp eq i32 %16, 192
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = and i32 %13, 240
  %20 = icmp eq i32 %19, 224
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = and i32 %13, 248
  %23 = icmp eq i32 %22, 240
  br i1 %23, label %24, label %46

24:                                               ; preds = %21, %18, %15
  %25 = phi i1 [ true, %18 ], [ false, %21 ], [ false, %15 ]
  %26 = phi i64 [ 3, %18 ], [ 4, %21 ], [ 2, %15 ]
  %27 = add i64 %26, %10
  %28 = icmp ugt i64 %27, %4
  br i1 %28, label %46, label %42

29:                                               ; preds = %9
  %30 = add nuw i64 %10, 1
  %31 = icmp ult i64 %10, %4
  br i1 %31, label %6, label %46

32:                                               ; preds = %42
  br i1 %17, label %6, label %33, !llvm.loop !19

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !19

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %42 ], [ 0, %38 ], [ 0, %33 ], [ 0, %29 ], [ 0, %24 ], [ 1, %6 ], [ 0, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2723_5_1127sys__native_utf8_char_countEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !21
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %83, label %36

6:                                                ; preds = %65, %59, %64, %56
  %7 = phi i64 [ %57, %56 ], [ %54, %59 ], [ %54, %64 ], [ %54, %65 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = icmp ult i64 %4, 8
  br i1 %10, label %33, label %11

11:                                               ; preds = %9
  %12 = and i64 %4, -8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %27, %13 ]
  %15 = phi <4 x i32> [ zeroinitializer, %11 ], [ %25, %13 ]
  %16 = phi <4 x i32> [ zeroinitializer, %11 ], [ %26, %13 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !15
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !15
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !24

29:                                               ; preds = %13
  %30 = add <4 x i32> %26, %25
  %31 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %32 = icmp eq i64 %4, %12
  br i1 %32, label %83, label %33

33:                                               ; preds = %9, %29
  %34 = phi i64 [ 0, %9 ], [ %12, %29 ]
  %35 = phi i32 [ 0, %9 ], [ %31, %29 ]
  br label %73

36:                                               ; preds = %3, %6
  %37 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %38 = getelementptr i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = zext i8 %39 to i32
  %41 = icmp slt i8 %39, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = and i32 %40, 224
  %44 = icmp eq i32 %43, 192
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = and i32 %40, 240
  %47 = icmp eq i32 %46, 224
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = and i32 %40, 248
  %50 = icmp eq i32 %49, 240
  br i1 %50, label %51, label %83

51:                                               ; preds = %48, %45, %42
  %52 = phi i1 [ true, %45 ], [ false, %48 ], [ false, %42 ]
  %53 = phi i64 [ 3, %45 ], [ 4, %48 ], [ 2, %42 ]
  %54 = add i64 %53, %37
  %55 = icmp ugt i64 %54, %4
  br i1 %55, label %83, label %69

56:                                               ; preds = %36
  %57 = add nuw i64 %37, 1
  %58 = icmp ult i64 %37, %4
  br i1 %58, label %6, label %83

59:                                               ; preds = %69
  br i1 %44, label %6, label %60, !llvm.loop !19

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !19

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !15
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !27

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %80, %73 ], [ 0, %69 ], [ %31, %29 ], [ 0, %65 ], [ 0, %60 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1122sys__native_hex_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !28
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !28
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !28
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !28
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = shl i64 %5, 1
  %7 = icmp ugt i64 %6, -10
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #21
          to label %9 unwind label %73

9:                                                ; preds = %8
  unreachable

10:                                               ; preds = %1
  %11 = icmp ugt i64 %6, 22
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = and i64 %6, -8
  %14 = add nuw i64 %13, 8
  %15 = icmp eq i64 %14, 24
  %16 = select i1 %15, i64 26, i64 %14
  %17 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #22
          to label %18 unwind label %73

18:                                               ; preds = %12
  %19 = or disjoint i64 %16, 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %17, align 1
  %24 = load i64, ptr %4, align 8, !tbaa !36
  store i64 %19, ptr %2, align 8
  store i64 0, ptr %20, align 8
  store ptr %17, ptr %21, align 8, !tbaa !15
  %25 = trunc i64 %19 to i8
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %17, %18 ], [ null, %10 ]
  %28 = phi i8 [ %25, %18 ], [ 0, %10 ]
  %29 = phi i64 [ %24, %18 ], [ %5, %10 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %29
  %32 = icmp samesign eq i64 %29, 0
  br i1 %32, label %37, label %75

33:                                               ; preds = %88
  %34 = load i8, ptr %2, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi ptr [ %36, %33 ], [ %27, %26 ]
  %39 = phi i8 [ %34, %33 ], [ %28, %26 ]
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !37
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %42 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46, !prof !38

44:                                               ; preds = %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = icmp eq ptr %49, %51
  %57 = mul i64 %55, 170
  %58 = add i64 %57, -1
  %59 = select i1 %56, i64 0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %61 = load i64, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 40
  %63 = load i64, ptr %62, align 8, !tbaa !49
  %64 = add i64 %63, %61
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %46
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
          to label %67 unwind label %128

67:                                               ; preds = %66
  %68 = load i64, ptr %62, align 8, !tbaa !49, !noalias !50
  %69 = load i64, ptr %60, align 8, !tbaa !45, !noalias !50
  %70 = load ptr, ptr %50, align 8, !tbaa !44, !noalias !50
  %71 = load ptr, ptr %48, align 8, !tbaa !39, !noalias !50
  %72 = add i64 %69, %68
  br label %93

73:                                               ; preds = %12, %8
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %133

75:                                               ; preds = %26, %88
  %76 = phi ptr [ %89, %88 ], [ %30, %26 ]
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, 4
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %82)
          to label %83 unwind label %91

83:                                               ; preds = %75
  %84 = and i32 %78, 15
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %87)
          to label %88 unwind label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds nuw i8, ptr %76, i64 1
  %90 = icmp eq ptr %89, %31
  br i1 %90, label %33, label %75

91:                                               ; preds = %83, %75
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %133

93:                                               ; preds = %46, %67
  %94 = phi i64 [ %72, %67 ], [ %64, %46 ]
  %95 = phi ptr [ %71, %67 ], [ %49, %46 ]
  %96 = phi ptr [ %70, %67 ], [ %51, %46 ]
  %97 = udiv i64 %94, 170
  %98 = getelementptr inbounds nuw ptr, ptr %96, i64 %97
  %99 = icmp ne ptr %96, %95
  call void @llvm.assume(i1 %99)
  %100 = load ptr, ptr %98, align 8, !tbaa !53, !noalias !50
  %101 = urem i64 %94, 170
  %102 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %100, i64 %101
  store i8 %39, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %103, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 16
  store ptr %38, ptr %104, align 8, !tbaa !15
  %105 = load i64, ptr %62, align 8, !tbaa !49
  %106 = add i64 %105, 1
  store i64 %106, ptr %62, align 8, !tbaa !49
  %107 = load i64, ptr %60, align 8, !tbaa !45
  %108 = add i64 %107, %105
  %109 = load ptr, ptr %50, align 8, !tbaa !44
  %110 = udiv i64 %108, 170
  %111 = getelementptr inbounds nuw ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !53
  %113 = urem i64 %108, 170
  %114 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %112, i64 %113
  %115 = load i8, ptr %114, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = load i8, ptr %2, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %93
  %122 = load ptr, ptr %41, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %122) #23
  br label %123

123:                                              ; preds = %93, %121
  %124 = and i8 %115, 1
  %125 = icmp eq i8 %124, 0
  %126 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %127 = select i1 %125, ptr %126, ptr %117
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %127

128:                                              ; preds = %66
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = and i8 %39, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %38) #23
  br label %133

133:                                              ; preds = %132, %128, %91, %73
  %134 = phi { ptr, i32 } [ %92, %91 ], [ %74, %73 ], [ %129, %128 ], [ %129, %132 ]
  %135 = load i8, ptr %2, align 8
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %140 = load ptr, ptr %139, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %140) #23
  br label %141

141:                                              ; preds = %133, %138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %134
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1122sys__native_hex_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !55
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !55
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !55
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !55
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10hex_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !38

11:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %12 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp eq ptr %16, %18
  %24 = mul i64 %22, 170
  %25 = add i64 %24, -1
  %26 = select i1 %23, i64 0, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %28 = load i64, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %30 = load i64, ptr %29, align 8, !tbaa !49
  %31 = add i64 %30, %28
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %13
  tail call void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  %34 = load i64, ptr %29, align 8, !tbaa !49, !noalias !58
  %35 = load i64, ptr %27, align 8, !tbaa !45, !noalias !58
  %36 = load ptr, ptr %17, align 8, !tbaa !44, !noalias !58
  %37 = load ptr, ptr %15, align 8, !tbaa !39, !noalias !58
  %38 = add i64 %35, %34
  br label %39

39:                                               ; preds = %33, %13
  %40 = phi i64 [ %38, %33 ], [ %31, %13 ]
  %41 = phi ptr [ %37, %33 ], [ %16, %13 ]
  %42 = phi ptr [ %36, %33 ], [ %18, %13 ]
  %43 = udiv i64 %40, 170
  %44 = getelementptr inbounds nuw ptr, ptr %42, i64 %43
  %45 = icmp ne ptr %42, %41
  tail call void @llvm.assume(i1 %45)
  %46 = load ptr, ptr %44, align 8, !tbaa !53, !noalias !58
  %47 = urem i64 %40, 170
  %48 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %46, i64 %47
  store i8 0, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 1
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr null, ptr %50, align 8, !tbaa !15
  %51 = load i64, ptr %29, align 8, !tbaa !49
  %52 = add i64 %51, 1
  store i64 %52, ptr %29, align 8, !tbaa !49
  %53 = load i64, ptr %27, align 8, !tbaa !45
  %54 = add i64 %53, %51
  %55 = load ptr, ptr %17, align 8, !tbaa !44
  %56 = udiv i64 %54, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = urem i64 %54, 170
  %60 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %58, i64 %59
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %60, i64 1
  %67 = select i1 %63, ptr %66, ptr %65
  br label %298

68:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %69 = icmp ugt i64 %5, 44
  br i1 %69, label %70, label %96

70:                                               ; preds = %68
  %71 = lshr exact i64 %5, 1
  %72 = and i64 %71, 9223372036854775800
  %73 = add nuw i64 %72, 8
  %74 = icmp eq i64 %73, 24
  %75 = select i1 %74, i64 26, i64 %73
  %76 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %75) #22
          to label %77 unwind label %101

77:                                               ; preds = %70
  %78 = or disjoint i64 %75, 1
  %79 = load i8, ptr %2, align 8
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %83 = load i64, ptr %82, align 8
  %84 = lshr i8 %79, 1
  %85 = zext nneg i8 %84 to i64
  %86 = select i1 %81, i64 %85, i64 %83
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %90 = select i1 %81, ptr %89, ptr %88
  %91 = add i64 %86, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %76, ptr align 1 %90, i64 %91, i1 false)
  br i1 %81, label %93, label %92

92:                                               ; preds = %77
  tail call void @_ZdlPv(ptr noundef %88) #23
  br label %93

93:                                               ; preds = %92, %77
  store i64 %78, ptr %2, align 8
  store i64 %86, ptr %82, align 8
  store ptr %76, ptr %87, align 8, !tbaa !15
  %94 = load i64, ptr %4, align 8, !tbaa !36
  %95 = trunc i64 %78 to i8
  br label %96

96:                                               ; preds = %68, %93
  %97 = phi ptr [ null, %68 ], [ %76, %93 ]
  %98 = phi i8 [ 0, %68 ], [ %95, %93 ]
  %99 = phi i64 [ %5, %68 ], [ %94, %93 ]
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %210, label %103

101:                                              ; preds = %70
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %289

103:                                              ; preds = %96, %202
  %104 = phi i64 [ %203, %202 ], [ 0, %96 ]
  %105 = load ptr, ptr %0, align 8, !tbaa !31
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 %104
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = sext i8 %107 to i32
  %109 = add i8 %107, -48
  %110 = icmp ult i8 %109, 10
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = add nsw i32 %108, -48
  br label %123

113:                                              ; preds = %103
  %114 = add i8 %107, -97
  %115 = icmp ult i8 %114, 6
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = add nsw i32 %108, -87
  br label %123

118:                                              ; preds = %113
  %119 = add i8 %107, -65
  %120 = icmp ult i8 %119, 6
  %121 = add nsw i32 %108, -55
  %122 = select i1 %120, i32 %121, i32 -1
  br label %123

123:                                              ; preds = %111, %116, %118
  %124 = phi i32 [ %112, %111 ], [ %117, %116 ], [ %122, %118 ]
  %125 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !15
  %127 = sext i8 %126 to i32
  %128 = add i8 %126, -48
  %129 = icmp ult i8 %128, 10
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = add nsw i32 %127, -48
  br label %142

132:                                              ; preds = %123
  %133 = add i8 %126, -97
  %134 = icmp ult i8 %133, 6
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = add nsw i32 %127, -87
  br label %142

137:                                              ; preds = %132
  %138 = add i8 %126, -65
  %139 = icmp ult i8 %138, 6
  %140 = add nsw i32 %127, -55
  %141 = select i1 %139, i32 %140, i32 -1
  br label %142

142:                                              ; preds = %130, %135, %137
  %143 = phi i32 [ %131, %130 ], [ %136, %135 ], [ %141, %137 ]
  %144 = or i32 %143, %124
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %198, label %146

146:                                              ; preds = %142
  %147 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %151, !prof !38

149:                                              ; preds = %146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %150 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %151

151:                                              ; preds = %149, %146
  %152 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 16
  %154 = load ptr, ptr %153, align 8, !tbaa !39
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = ptrtoint ptr %154 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = ashr exact i64 %159, 3
  %161 = icmp eq ptr %154, %156
  %162 = mul i64 %160, 170
  %163 = add i64 %162, -1
  %164 = select i1 %161, i64 0, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %166 = load i64, ptr %165, align 8, !tbaa !45
  %167 = getelementptr inbounds nuw i8, ptr %152, i64 40
  %168 = load i64, ptr %167, align 8, !tbaa !49
  %169 = add i64 %168, %166
  %170 = icmp eq i64 %164, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %151
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %152)
          to label %172 unwind label %196

172:                                              ; preds = %171
  %173 = load i64, ptr %167, align 8, !tbaa !49, !noalias !61
  %174 = load i64, ptr %165, align 8, !tbaa !45, !noalias !61
  %175 = load ptr, ptr %155, align 8, !tbaa !44, !noalias !61
  %176 = load ptr, ptr %153, align 8, !tbaa !39, !noalias !61
  %177 = add i64 %174, %173
  br label %178

178:                                              ; preds = %172, %151
  %179 = phi i64 [ %177, %172 ], [ %169, %151 ]
  %180 = phi ptr [ %176, %172 ], [ %154, %151 ]
  %181 = phi ptr [ %175, %172 ], [ %156, %151 ]
  %182 = udiv i64 %179, 170
  %183 = getelementptr inbounds nuw ptr, ptr %181, i64 %182
  %184 = icmp ne ptr %181, %180
  call void @llvm.assume(i1 %184)
  %185 = load ptr, ptr %183, align 8, !tbaa !53, !noalias !61
  %186 = urem i64 %179, 170
  %187 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %185, i64 %186
  store i8 0, ptr %187, align 8
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 1
  store i8 0, ptr %188, align 1
  %189 = getelementptr inbounds nuw i8, ptr %187, i64 16
  store ptr null, ptr %189, align 8, !tbaa !15
  %190 = load i64, ptr %167, align 8, !tbaa !49
  %191 = add i64 %190, 1
  store i64 %191, ptr %167, align 8, !tbaa !49
  %192 = load i64, ptr %165, align 8, !tbaa !45
  %193 = add i64 %192, %190
  br label %266

194:                                              ; preds = %198
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %289

196:                                              ; preds = %171
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %289

198:                                              ; preds = %142
  %199 = shl nsw i32 %124, 4
  %200 = or i32 %143, %199
  %201 = trunc i32 %200 to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %201)
          to label %202 unwind label %194

202:                                              ; preds = %198
  %203 = add i64 %104, 2
  %204 = load i64, ptr %4, align 8, !tbaa !36
  %205 = icmp ult i64 %203, %204
  br i1 %205, label %103, label %206, !llvm.loop !64

206:                                              ; preds = %202
  %207 = load i8, ptr %2, align 8
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %209 = load ptr, ptr %208, align 8, !tbaa !15
  br label %210

210:                                              ; preds = %206, %96
  %211 = phi ptr [ %209, %206 ], [ %97, %96 ]
  %212 = phi i8 [ %207, %206 ], [ %98, %96 ]
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %213, i64 15, i1 false), !tbaa.struct !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %214 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %218, !prof !38

216:                                              ; preds = %210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %217 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %218

218:                                              ; preds = %216, %210
  %219 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %221 = load ptr, ptr %220, align 8, !tbaa !39
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %223 = load ptr, ptr %222, align 8, !tbaa !44
  %224 = ptrtoint ptr %221 to i64
  %225 = ptrtoint ptr %223 to i64
  %226 = sub i64 %224, %225
  %227 = ashr exact i64 %226, 3
  %228 = icmp eq ptr %221, %223
  %229 = mul i64 %227, 170
  %230 = add i64 %229, -1
  %231 = select i1 %228, i64 0, i64 %230
  %232 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %233 = load i64, ptr %232, align 8, !tbaa !45
  %234 = getelementptr inbounds nuw i8, ptr %219, i64 40
  %235 = load i64, ptr %234, align 8, !tbaa !49
  %236 = add i64 %235, %233
  %237 = icmp eq i64 %231, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %218
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %219)
          to label %239 unwind label %261

239:                                              ; preds = %238
  %240 = load i64, ptr %234, align 8, !tbaa !49, !noalias !65
  %241 = load i64, ptr %232, align 8, !tbaa !45, !noalias !65
  %242 = load ptr, ptr %222, align 8, !tbaa !44, !noalias !65
  %243 = load ptr, ptr %220, align 8, !tbaa !39, !noalias !65
  %244 = add i64 %241, %240
  br label %245

245:                                              ; preds = %218, %239
  %246 = phi i64 [ %244, %239 ], [ %236, %218 ]
  %247 = phi ptr [ %243, %239 ], [ %221, %218 ]
  %248 = phi ptr [ %242, %239 ], [ %223, %218 ]
  %249 = udiv i64 %246, 170
  %250 = getelementptr inbounds nuw ptr, ptr %248, i64 %249
  %251 = icmp ne ptr %248, %247
  call void @llvm.assume(i1 %251)
  %252 = load ptr, ptr %250, align 8, !tbaa !53, !noalias !65
  %253 = urem i64 %246, 170
  %254 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %252, i64 %253
  store i8 %212, ptr %254, align 8
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %255, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 16
  store ptr %211, ptr %256, align 8, !tbaa !15
  %257 = load i64, ptr %234, align 8, !tbaa !49
  %258 = add i64 %257, 1
  store i64 %258, ptr %234, align 8, !tbaa !49
  %259 = load i64, ptr %232, align 8, !tbaa !45
  %260 = add i64 %259, %257
  br label %266

261:                                              ; preds = %238
  %262 = landingpad { ptr, i32 }
          cleanup
  %263 = and i8 %212, 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %289, label %265

265:                                              ; preds = %261
  call void @_ZdlPv(ptr noundef %211) #23
  br label %289

266:                                              ; preds = %178, %245
  %267 = phi i64 [ %193, %178 ], [ %260, %245 ]
  %268 = phi ptr [ %155, %178 ], [ %222, %245 ]
  %269 = load ptr, ptr %268, align 8, !tbaa !44
  %270 = udiv i64 %267, 170
  %271 = getelementptr inbounds nuw ptr, ptr %269, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !53
  %273 = urem i64 %267, 170
  %274 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %272, i64 %273
  %275 = load i8, ptr %274, align 8
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 16
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds nuw i8, ptr %274, i64 1
  %281 = select i1 %277, ptr %280, ptr %279
  %282 = load i8, ptr %2, align 8
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %266
  %286 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %287 = load ptr, ptr %286, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %287) #23
  br label %288

288:                                              ; preds = %266, %285
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %298

289:                                              ; preds = %196, %265, %261, %194, %101
  %290 = phi { ptr, i32 } [ %262, %265 ], [ %102, %101 ], [ %195, %194 ], [ %197, %196 ], [ %262, %261 ]
  %291 = load i8, ptr %2, align 8
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %296 = load ptr, ptr %295, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %296) #23
  br label %297

297:                                              ; preds = %289, %294
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %290

298:                                              ; preds = %39, %288
  %299 = phi ptr [ %281, %288 ], [ %67, %39 ]
  ret ptr %299
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1122sys__native_url_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !68
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !68
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !68
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !68
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = mul i64 %5, 3
  %7 = icmp ugt i64 %6, -10
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #21
          to label %9 unwind label %73

9:                                                ; preds = %8
  unreachable

10:                                               ; preds = %1
  %11 = icmp ugt i64 %6, 22
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = and i64 %6, -8
  %14 = add nuw i64 %13, 8
  %15 = icmp eq i64 %14, 24
  %16 = select i1 %15, i64 26, i64 %14
  %17 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #22
          to label %18 unwind label %73

18:                                               ; preds = %12
  %19 = or disjoint i64 %16, 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %17, align 1
  %24 = load i64, ptr %4, align 8, !tbaa !36
  store i64 %19, ptr %2, align 8
  store i64 0, ptr %20, align 8
  store ptr %17, ptr %21, align 8, !tbaa !15
  %25 = trunc i64 %19 to i8
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %17, %18 ], [ null, %10 ]
  %28 = phi i8 [ %25, %18 ], [ 0, %10 ]
  %29 = phi i64 [ %24, %18 ], [ %5, %10 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !31
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %29
  %32 = icmp samesign eq i64 %29, 0
  br i1 %32, label %37, label %75

33:                                               ; preds = %98
  %34 = load i8, ptr %2, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi ptr [ %36, %33 ], [ %27, %26 ]
  %39 = phi i8 [ %34, %33 ], [ %28, %26 ]
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !37
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %42 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46, !prof !38

44:                                               ; preds = %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = icmp eq ptr %49, %51
  %57 = mul i64 %55, 170
  %58 = add i64 %57, -1
  %59 = select i1 %56, i64 0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %61 = load i64, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 40
  %63 = load i64, ptr %62, align 8, !tbaa !49
  %64 = add i64 %63, %61
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %46
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
          to label %67 unwind label %136

67:                                               ; preds = %66
  %68 = load i64, ptr %62, align 8, !tbaa !49, !noalias !71
  %69 = load i64, ptr %60, align 8, !tbaa !45, !noalias !71
  %70 = load ptr, ptr %50, align 8, !tbaa !44, !noalias !71
  %71 = load ptr, ptr %48, align 8, !tbaa !39, !noalias !71
  %72 = add i64 %69, %68
  br label %101

73:                                               ; preds = %12, %8
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %141

75:                                               ; preds = %26, %98
  %76 = phi ptr [ %99, %98 ], [ %30, %26 ]
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = zext i8 %77 to i32
  %79 = call i32 @isalnum(i32 noundef %78) #24
  %80 = freeze i32 %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  switch i8 %77, label %85 [
    i8 126, label %96
    i8 95, label %96
    i8 46, label %96
    i8 45, label %96
  ]

83:                                               ; preds = %96, %86, %85
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %141

85:                                               ; preds = %82
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef 37)
          to label %86 unwind label %83

86:                                               ; preds = %85
  %87 = lshr i32 %78, 4
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %90)
          to label %91 unwind label %83

91:                                               ; preds = %86
  %92 = and i32 %78, 15
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE7kDigits, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !15
  br label %96

96:                                               ; preds = %75, %82, %82, %82, %82, %91
  %97 = phi i8 [ %95, %91 ], [ %77, %82 ], [ %77, %82 ], [ %77, %82 ], [ %77, %82 ], [ %77, %75 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %97)
          to label %98 unwind label %83

98:                                               ; preds = %96
  %99 = getelementptr inbounds nuw i8, ptr %76, i64 1
  %100 = icmp eq ptr %99, %31
  br i1 %100, label %33, label %75

101:                                              ; preds = %46, %67
  %102 = phi i64 [ %72, %67 ], [ %64, %46 ]
  %103 = phi ptr [ %71, %67 ], [ %49, %46 ]
  %104 = phi ptr [ %70, %67 ], [ %51, %46 ]
  %105 = udiv i64 %102, 170
  %106 = getelementptr inbounds nuw ptr, ptr %104, i64 %105
  %107 = icmp ne ptr %104, %103
  call void @llvm.assume(i1 %107)
  %108 = load ptr, ptr %106, align 8, !tbaa !53, !noalias !71
  %109 = urem i64 %102, 170
  %110 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %108, i64 %109
  store i8 %39, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %111, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 16
  store ptr %38, ptr %112, align 8, !tbaa !15
  %113 = load i64, ptr %62, align 8, !tbaa !49
  %114 = add i64 %113, 1
  store i64 %114, ptr %62, align 8, !tbaa !49
  %115 = load i64, ptr %60, align 8, !tbaa !45
  %116 = add i64 %115, %113
  %117 = load ptr, ptr %50, align 8, !tbaa !44
  %118 = udiv i64 %116, 170
  %119 = getelementptr inbounds nuw ptr, ptr %117, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = urem i64 %116, 170
  %122 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %120, i64 %121
  %123 = load i8, ptr %122, align 8
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %125 = load ptr, ptr %124, align 8
  %126 = load i8, ptr %2, align 8
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %101
  %130 = load ptr, ptr %41, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %130) #23
  br label %131

131:                                              ; preds = %101, %129
  %132 = and i8 %123, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %135 = select i1 %133, ptr %134, ptr %125
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %135

136:                                              ; preds = %66
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = and i8 %39, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %38) #23
  br label %141

141:                                              ; preds = %140, %136, %83, %73
  %142 = phi { ptr, i32 } [ %84, %83 ], [ %74, %73 ], [ %137, %136 ], [ %137, %140 ]
  %143 = load i8, ptr %2, align 8
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %148 = load ptr, ptr %147, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %148) #23
  br label %149

149:                                              ; preds = %141, %146
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %142
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1122sys__native_url_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !74
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !74
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !74
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !74
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10url_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp ugt i64 %5, -10
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #21
          to label %8 unwind label %81

8:                                                ; preds = %7
  unreachable

9:                                                ; preds = %1
  %10 = icmp ugt i64 %5, 22
  br i1 %10, label %11, label %36

11:                                               ; preds = %9
  %12 = and i64 %5, -8
  %13 = add nuw i64 %12, 8
  %14 = icmp eq i64 %13, 24
  %15 = select i1 %14, i64 26, i64 %13
  %16 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %15) #22
          to label %17 unwind label %81

17:                                               ; preds = %11
  %18 = or disjoint i64 %15, 1
  %19 = load i8, ptr %2, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i64, ptr %22, align 8
  %24 = lshr i8 %19, 1
  %25 = zext nneg i8 %24 to i64
  %26 = select i1 %21, i64 %25, i64 %23
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %30 = select i1 %21, ptr %29, ptr %28
  %31 = add i64 %26, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %30, i64 %31, i1 false)
  br i1 %21, label %33, label %32

32:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %28) #23
  br label %33

33:                                               ; preds = %32, %17
  store i64 %18, ptr %2, align 8
  store i64 %26, ptr %22, align 8
  store ptr %16, ptr %27, align 8, !tbaa !15
  %34 = load i64, ptr %4, align 8, !tbaa !36
  %35 = trunc i64 %18 to i8
  br label %36

36:                                               ; preds = %9, %33
  %37 = phi ptr [ null, %9 ], [ %16, %33 ]
  %38 = phi i8 [ 0, %9 ], [ %35, %33 ]
  %39 = phi i64 [ %5, %9 ], [ %34, %33 ]
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %83

41:                                               ; preds = %143
  %42 = load i8, ptr %2, align 8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi ptr [ %44, %41 ], [ %37, %36 ]
  %47 = phi i8 [ %42, %41 ], [ %38, %36 ]
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %48, i64 15, i1 false), !tbaa.struct !37
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %50 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %54, !prof !38

52:                                               ; preds = %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %53 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %54

54:                                               ; preds = %52, %45
  %55 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !44
  %60 = ptrtoint ptr %57 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = ashr exact i64 %62, 3
  %64 = icmp eq ptr %57, %59
  %65 = mul i64 %63, 170
  %66 = add i64 %65, -1
  %67 = select i1 %64, i64 0, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %69 = load i64, ptr %68, align 8, !tbaa !45
  %70 = getelementptr inbounds nuw i8, ptr %55, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !49
  %72 = add i64 %71, %69
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %150

74:                                               ; preds = %54
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %55)
          to label %75 unwind label %185

75:                                               ; preds = %74
  %76 = load i64, ptr %70, align 8, !tbaa !49, !noalias !77
  %77 = load i64, ptr %68, align 8, !tbaa !45, !noalias !77
  %78 = load ptr, ptr %58, align 8, !tbaa !44, !noalias !77
  %79 = load ptr, ptr %56, align 8, !tbaa !39, !noalias !77
  %80 = add i64 %77, %76
  br label %150

81:                                               ; preds = %11, %7
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %190

83:                                               ; preds = %36, %143
  %84 = phi i64 [ %146, %143 ], [ %39, %36 ]
  %85 = phi i64 [ %145, %143 ], [ 0, %36 ]
  %86 = load ptr, ptr %0, align 8, !tbaa !31
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 %85
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = icmp eq i8 %88, 37
  br i1 %89, label %90, label %140

90:                                               ; preds = %83
  %91 = add i64 %85, 2
  %92 = icmp ult i64 %91, %84
  br i1 %92, label %93, label %140

93:                                               ; preds = %90
  %94 = getelementptr inbounds nuw i8, ptr %87, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = sext i8 %95 to i32
  %97 = add i8 %95, -48
  %98 = icmp ult i8 %97, 10
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = add nsw i32 %96, -48
  br label %111

101:                                              ; preds = %93
  %102 = add i8 %95, -97
  %103 = icmp ult i8 %102, 6
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = add nsw i32 %96, -87
  br label %111

106:                                              ; preds = %101
  %107 = add i8 %95, -65
  %108 = icmp ult i8 %107, 6
  %109 = add nsw i32 %96, -55
  %110 = select i1 %108, i32 %109, i32 -1
  br label %111

111:                                              ; preds = %99, %104, %106
  %112 = phi i32 [ %100, %99 ], [ %105, %104 ], [ %110, %106 ]
  %113 = getelementptr inbounds nuw i8, ptr %86, i64 %91
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = sext i8 %114 to i32
  %116 = add i8 %114, -48
  %117 = icmp ult i8 %116, 10
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = add nsw i32 %115, -48
  br label %130

120:                                              ; preds = %111
  %121 = add i8 %114, -97
  %122 = icmp ult i8 %121, 6
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = add nsw i32 %115, -87
  br label %130

125:                                              ; preds = %120
  %126 = add i8 %114, -65
  %127 = icmp ult i8 %126, 6
  %128 = add nsw i32 %115, -55
  %129 = select i1 %127, i32 %128, i32 -1
  br label %130

130:                                              ; preds = %118, %123, %125
  %131 = phi i32 [ %119, %118 ], [ %124, %123 ], [ %129, %125 ]
  %132 = or i32 %131, %112
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = shl nsw i32 %112, 4
  %136 = or i32 %131, %135
  %137 = trunc i32 %136 to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %137)
          to label %143 unwind label %138

138:                                              ; preds = %134
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %190

140:                                              ; preds = %130, %90, %83
  %141 = icmp eq i8 %88, 43
  %142 = select i1 %141, i8 32, i8 %88
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %142)
          to label %143 unwind label %148

143:                                              ; preds = %134, %140
  %144 = phi i64 [ %85, %140 ], [ %91, %134 ]
  %145 = add nuw i64 %144, 1
  %146 = load i64, ptr %4, align 8, !tbaa !36
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %83, label %41, !llvm.loop !80

148:                                              ; preds = %140
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %190

150:                                              ; preds = %54, %75
  %151 = phi i64 [ %80, %75 ], [ %72, %54 ]
  %152 = phi ptr [ %79, %75 ], [ %57, %54 ]
  %153 = phi ptr [ %78, %75 ], [ %59, %54 ]
  %154 = udiv i64 %151, 170
  %155 = getelementptr inbounds nuw ptr, ptr %153, i64 %154
  %156 = icmp ne ptr %153, %152
  call void @llvm.assume(i1 %156)
  %157 = load ptr, ptr %155, align 8, !tbaa !53, !noalias !77
  %158 = urem i64 %151, 170
  %159 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %157, i64 %158
  store i8 %47, ptr %159, align 8
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %160, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 16
  store ptr %46, ptr %161, align 8, !tbaa !15
  %162 = load i64, ptr %70, align 8, !tbaa !49
  %163 = add i64 %162, 1
  store i64 %163, ptr %70, align 8, !tbaa !49
  %164 = load i64, ptr %68, align 8, !tbaa !45
  %165 = add i64 %164, %162
  %166 = load ptr, ptr %58, align 8, !tbaa !44
  %167 = udiv i64 %165, 170
  %168 = getelementptr inbounds nuw ptr, ptr %166, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !53
  %170 = urem i64 %165, 170
  %171 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %169, i64 %170
  %172 = load i8, ptr %171, align 8
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = load ptr, ptr %173, align 8
  %175 = load i8, ptr %2, align 8
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %150
  %179 = load ptr, ptr %49, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %179) #23
  br label %180

180:                                              ; preds = %150, %178
  %181 = and i8 %172, 1
  %182 = icmp eq i8 %181, 0
  %183 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %184 = select i1 %182, ptr %183, ptr %174
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %184

185:                                              ; preds = %74
  %186 = landingpad { ptr, i32 }
          cleanup
  %187 = and i8 %47, 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  call void @_ZdlPv(ptr noundef %46) #23
  br label %190

190:                                              ; preds = %189, %185, %138, %148, %81
  %191 = phi { ptr, i32 } [ %82, %81 ], [ %139, %138 ], [ %149, %148 ], [ %186, %185 ], [ %186, %189 ]
  %192 = load i8, ptr %2, align 8
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %197 = load ptr, ptr %196, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %197) #23
  br label %198

198:                                              ; preds = %190, %195
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %191
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1125sys__native_base64_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !81
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !81
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !81
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !81
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = add i64 %5, 2
  %7 = udiv i64 %6, 3
  %8 = shl i64 %7, 2
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #21
          to label %11 unwind label %73

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %1
  %13 = icmp ugt i64 %8, 22
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = and i64 %8, -8
  %16 = add nuw i64 %15, 8
  %17 = icmp eq i64 %16, 24
  %18 = select i1 %17, i64 26, i64 %16
  %19 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %18) #22
          to label %20 unwind label %73

20:                                               ; preds = %14
  %21 = or disjoint i64 %18, 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %19, align 1
  %26 = load i64, ptr %4, align 8, !tbaa !36
  store i64 %21, ptr %2, align 8
  store i64 0, ptr %22, align 8
  store ptr %19, ptr %23, align 8, !tbaa !15
  %27 = trunc i64 %21 to i8
  br label %28

28:                                               ; preds = %12, %20
  %29 = phi ptr [ null, %12 ], [ %19, %20 ]
  %30 = phi i8 [ 0, %12 ], [ %27, %20 ]
  %31 = phi i64 [ %5, %12 ], [ %26, %20 ]
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %75

33:                                               ; preds = %133
  %34 = load i8, ptr %2, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi ptr [ %36, %33 ], [ %29, %28 ]
  %39 = phi i8 [ %34, %33 ], [ %30, %28 ]
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !37
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %42 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46, !prof !38

44:                                               ; preds = %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %45 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = icmp eq ptr %49, %51
  %57 = mul i64 %55, 170
  %58 = add i64 %57, -1
  %59 = select i1 %56, i64 0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %61 = load i64, ptr %60, align 8, !tbaa !45
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 40
  %63 = load i64, ptr %62, align 8, !tbaa !49
  %64 = add i64 %63, %61
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %46
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
          to label %67 unwind label %174

67:                                               ; preds = %66
  %68 = load i64, ptr %62, align 8, !tbaa !49, !noalias !84
  %69 = load i64, ptr %60, align 8, !tbaa !45, !noalias !84
  %70 = load ptr, ptr %50, align 8, !tbaa !44, !noalias !84
  %71 = load ptr, ptr %48, align 8, !tbaa !39, !noalias !84
  %72 = add i64 %69, %68
  br label %139

73:                                               ; preds = %14, %10
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %179

75:                                               ; preds = %28, %133
  %76 = phi i64 [ %135, %133 ], [ %31, %28 ]
  %77 = phi i64 [ %134, %133 ], [ 0, %28 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !31
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 %77
  %80 = load i8, ptr %79, align 1, !tbaa !15
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 16
  %83 = add nuw i64 %77, 1
  %84 = icmp ult i64 %83, %76
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 %83
  %87 = load i8, ptr %86, align 1, !tbaa !15
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  br label %90

90:                                               ; preds = %75, %85
  %91 = phi i32 [ %89, %85 ], [ 0, %75 ]
  %92 = or i32 %91, %82
  %93 = add i64 %77, 2
  %94 = icmp ult i64 %93, %76
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %78, i64 %93
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %90, %95
  %100 = phi i32 [ %98, %95 ], [ 0, %90 ]
  %101 = or disjoint i32 %100, %91
  %102 = lshr i32 %92, 18
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %105)
          to label %106 unwind label %137

106:                                              ; preds = %99
  %107 = lshr i32 %92, 12
  %108 = and i32 %107, 63
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !15
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %111)
          to label %112 unwind label %137

112:                                              ; preds = %106
  %113 = load i64, ptr %4, align 8, !tbaa !36
  %114 = icmp ult i64 %83, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = lshr i32 %101, 6
  %117 = and i32 %116, 63
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !15
  br label %121

121:                                              ; preds = %112, %115
  %122 = phi i8 [ %120, %115 ], [ 61, %112 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %122)
          to label %123 unwind label %137

123:                                              ; preds = %121
  %124 = load i64, ptr %4, align 8, !tbaa !36
  %125 = icmp ult i64 %93, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = and i32 %100, 63
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEE6kTable, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !15
  br label %131

131:                                              ; preds = %123, %126
  %132 = phi i8 [ %130, %126 ], [ 61, %123 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %132)
          to label %133 unwind label %137

133:                                              ; preds = %131
  %134 = add i64 %77, 3
  %135 = load i64, ptr %4, align 8, !tbaa !36
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %75, label %33, !llvm.loop !87

137:                                              ; preds = %131, %121, %106, %99
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %179

139:                                              ; preds = %46, %67
  %140 = phi i64 [ %72, %67 ], [ %64, %46 ]
  %141 = phi ptr [ %71, %67 ], [ %49, %46 ]
  %142 = phi ptr [ %70, %67 ], [ %51, %46 ]
  %143 = udiv i64 %140, 170
  %144 = getelementptr inbounds nuw ptr, ptr %142, i64 %143
  %145 = icmp ne ptr %142, %141
  call void @llvm.assume(i1 %145)
  %146 = load ptr, ptr %144, align 8, !tbaa !53, !noalias !84
  %147 = urem i64 %140, 170
  %148 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %146, i64 %147
  store i8 %39, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %149, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 16
  store ptr %38, ptr %150, align 8, !tbaa !15
  %151 = load i64, ptr %62, align 8, !tbaa !49
  %152 = add i64 %151, 1
  store i64 %152, ptr %62, align 8, !tbaa !49
  %153 = load i64, ptr %60, align 8, !tbaa !45
  %154 = add i64 %153, %151
  %155 = load ptr, ptr %50, align 8, !tbaa !44
  %156 = udiv i64 %154, 170
  %157 = getelementptr inbounds nuw ptr, ptr %155, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !53
  %159 = urem i64 %154, 170
  %160 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %158, i64 %159
  %161 = load i8, ptr %160, align 8
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %163 = load ptr, ptr %162, align 8
  %164 = load i8, ptr %2, align 8
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %139
  %168 = load ptr, ptr %41, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %168) #23
  br label %169

169:                                              ; preds = %139, %167
  %170 = and i8 %161, 1
  %171 = icmp eq i8 %170, 0
  %172 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %173 = select i1 %171, ptr %172, ptr %163
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %173

174:                                              ; preds = %66
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = and i8 %39, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %38) #23
  br label %179

179:                                              ; preds = %178, %174, %137, %73
  %180 = phi { ptr, i32 } [ %138, %137 ], [ %74, %73 ], [ %175, %174 ], [ %175, %178 ]
  %181 = load i8, ptr %2, align 8
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %186 = load ptr, ptr %185, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %186) #23
  br label %187

187:                                              ; preds = %179, %184
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %180
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2723_5_1125sys__native_base64_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !88
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !88
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !88
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !88
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib13base64_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca [15 x i8], align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !38

11:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %12 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = icmp eq ptr %16, %18
  %24 = mul i64 %22, 170
  %25 = add i64 %24, -1
  %26 = select i1 %23, i64 0, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %28 = load i64, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %30 = load i64, ptr %29, align 8, !tbaa !49
  %31 = add i64 %30, %28
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %13
  tail call void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  %34 = load i64, ptr %29, align 8, !tbaa !49, !noalias !91
  %35 = load i64, ptr %27, align 8, !tbaa !45, !noalias !91
  %36 = load ptr, ptr %17, align 8, !tbaa !44, !noalias !91
  %37 = load ptr, ptr %15, align 8, !tbaa !39, !noalias !91
  %38 = add i64 %35, %34
  br label %39

39:                                               ; preds = %33, %13
  %40 = phi i64 [ %38, %33 ], [ %31, %13 ]
  %41 = phi ptr [ %37, %33 ], [ %16, %13 ]
  %42 = phi ptr [ %36, %33 ], [ %18, %13 ]
  %43 = udiv i64 %40, 170
  %44 = getelementptr inbounds nuw ptr, ptr %42, i64 %43
  %45 = icmp ne ptr %42, %41
  tail call void @llvm.assume(i1 %45)
  %46 = load ptr, ptr %44, align 8, !tbaa !53, !noalias !91
  %47 = urem i64 %40, 170
  %48 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %46, i64 %47
  store i8 0, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 1
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr null, ptr %50, align 8, !tbaa !15
  %51 = load i64, ptr %29, align 8, !tbaa !49
  %52 = add i64 %51, 1
  store i64 %52, ptr %29, align 8, !tbaa !49
  %53 = load i64, ptr %27, align 8, !tbaa !45
  %54 = add i64 %53, %51
  %55 = load ptr, ptr %17, align 8, !tbaa !44
  %56 = udiv i64 %54, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = urem i64 %54, 170
  %60 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %58, i64 %59
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %60, i64 1
  %67 = select i1 %63, ptr %66, ptr %65
  br label %393

68:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %69 = icmp ugt i64 %5, 28
  br i1 %69, label %70, label %97

70:                                               ; preds = %68
  %71 = lshr exact i64 %5, 2
  %72 = mul nuw i64 %71, 3
  %73 = and i64 %72, -8
  %74 = add nuw i64 %73, 8
  %75 = icmp eq i64 %74, 24
  %76 = select i1 %75, i64 26, i64 %74
  %77 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %76) #22
          to label %78 unwind label %102

78:                                               ; preds = %70
  %79 = or disjoint i64 %76, 1
  %80 = load i8, ptr %2, align 8
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %84 = load i64, ptr %83, align 8
  %85 = lshr i8 %80, 1
  %86 = zext nneg i8 %85 to i64
  %87 = select i1 %82, i64 %86, i64 %84
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %91 = select i1 %82, ptr %90, ptr %89
  %92 = add i64 %87, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %77, ptr align 1 %91, i64 %92, i1 false)
  br i1 %82, label %94, label %93

93:                                               ; preds = %78
  tail call void @_ZdlPv(ptr noundef %89) #23
  br label %94

94:                                               ; preds = %93, %78
  store i64 %79, ptr %2, align 8
  store i64 %87, ptr %83, align 8
  store ptr %77, ptr %88, align 8, !tbaa !15
  %95 = load i64, ptr %4, align 8, !tbaa !36
  %96 = trunc i64 %79 to i8
  br label %97

97:                                               ; preds = %68, %94
  %98 = phi ptr [ null, %68 ], [ %77, %94 ]
  %99 = phi i8 [ 0, %68 ], [ %96, %94 ]
  %100 = phi i64 [ %5, %68 ], [ %95, %94 ]
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %305, label %104

102:                                              ; preds = %70
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %384

104:                                              ; preds = %97, %297
  %105 = phi i64 [ %298, %297 ], [ 0, %97 ]
  %106 = load ptr, ptr %0, align 8, !tbaa !31
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 %105
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = zext i8 %108 to i32
  %110 = add i8 %108, -65
  %111 = icmp ult i8 %110, 26
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = add nsw i32 %109, -65
  br label %129

114:                                              ; preds = %104
  %115 = add i8 %108, -97
  %116 = icmp ult i8 %115, 26
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = add nsw i32 %109, -71
  br label %129

119:                                              ; preds = %114
  %120 = add i8 %108, -48
  %121 = icmp ult i8 %120, 10
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = add nuw nsw i32 %109, 4
  br label %129

124:                                              ; preds = %119
  %125 = icmp eq i8 %108, 47
  %126 = select i1 %125, i32 63, i32 -1
  %127 = icmp eq i8 %108, 43
  %128 = select i1 %127, i32 62, i32 %126
  br label %129

129:                                              ; preds = %112, %117, %122, %124
  %130 = phi i32 [ %113, %112 ], [ %118, %117 ], [ %123, %122 ], [ %128, %124 ]
  %131 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = add i8 %132, -65
  %135 = icmp ult i8 %134, 26
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = add nsw i32 %133, -65
  br label %153

138:                                              ; preds = %129
  %139 = add i8 %132, -97
  %140 = icmp ult i8 %139, 26
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = add nsw i32 %133, -71
  br label %153

143:                                              ; preds = %138
  %144 = add i8 %132, -48
  %145 = icmp ult i8 %144, 10
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = add nuw nsw i32 %133, 4
  br label %153

148:                                              ; preds = %143
  %149 = icmp eq i8 %132, 47
  %150 = select i1 %149, i32 63, i32 -1
  %151 = icmp eq i8 %132, 43
  %152 = select i1 %151, i32 62, i32 %150
  br label %153

153:                                              ; preds = %136, %141, %146, %148
  %154 = phi i32 [ %137, %136 ], [ %142, %141 ], [ %147, %146 ], [ %152, %148 ]
  %155 = or disjoint i64 %105, 2
  %156 = getelementptr inbounds nuw i8, ptr %106, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = icmp eq i8 %157, 61
  br i1 %158, label %180, label %159

159:                                              ; preds = %153
  %160 = zext i8 %157 to i32
  %161 = add i8 %157, -65
  %162 = icmp ult i8 %161, 26
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = add nsw i32 %160, -65
  br label %180

165:                                              ; preds = %159
  %166 = add i8 %157, -97
  %167 = icmp ult i8 %166, 26
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = add nsw i32 %160, -71
  br label %180

170:                                              ; preds = %165
  %171 = add i8 %157, -48
  %172 = icmp ult i8 %171, 10
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = add nuw nsw i32 %160, 4
  br label %180

175:                                              ; preds = %170
  %176 = icmp eq i8 %157, 47
  %177 = select i1 %176, i32 63, i32 -1
  %178 = icmp eq i8 %157, 43
  %179 = select i1 %178, i32 62, i32 %177
  br label %180

180:                                              ; preds = %175, %173, %168, %163, %153
  %181 = phi i32 [ 0, %153 ], [ %164, %163 ], [ %169, %168 ], [ %174, %173 ], [ %179, %175 ]
  %182 = or disjoint i64 %105, 3
  %183 = getelementptr inbounds nuw i8, ptr %106, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !15
  %185 = icmp eq i8 %184, 61
  br i1 %185, label %207, label %186

186:                                              ; preds = %180
  %187 = zext i8 %184 to i32
  %188 = add i8 %184, -65
  %189 = icmp ult i8 %188, 26
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = add nsw i32 %187, -65
  br label %207

192:                                              ; preds = %186
  %193 = add i8 %184, -97
  %194 = icmp ult i8 %193, 26
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = add nsw i32 %187, -71
  br label %207

197:                                              ; preds = %192
  %198 = add i8 %184, -48
  %199 = icmp ult i8 %198, 10
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = add nuw nsw i32 %187, 4
  br label %207

202:                                              ; preds = %197
  %203 = icmp eq i8 %184, 47
  %204 = select i1 %203, i32 63, i32 -1
  %205 = icmp eq i8 %184, 43
  %206 = select i1 %205, i32 62, i32 %204
  br label %207

207:                                              ; preds = %202, %200, %195, %190, %180
  %208 = phi i32 [ 0, %180 ], [ %191, %190 ], [ %196, %195 ], [ %201, %200 ], [ %206, %202 ]
  %209 = or i32 %154, %130
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = icmp ne i8 %157, 61
  %213 = icmp slt i32 %181, 0
  %214 = and i1 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = icmp ne i8 %184, 61
  %217 = icmp slt i32 %208, 0
  %218 = and i1 %216, %217
  br i1 %218, label %219, label %269

219:                                              ; preds = %215, %211, %207
  %220 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %224, !prof !38

222:                                              ; preds = %219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %223 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %224

224:                                              ; preds = %222, %219
  %225 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 16
  %227 = load ptr, ptr %226, align 8, !tbaa !39
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %229 = load ptr, ptr %228, align 8, !tbaa !44
  %230 = ptrtoint ptr %227 to i64
  %231 = ptrtoint ptr %229 to i64
  %232 = sub i64 %230, %231
  %233 = ashr exact i64 %232, 3
  %234 = icmp eq ptr %227, %229
  %235 = mul i64 %233, 170
  %236 = add i64 %235, -1
  %237 = select i1 %234, i64 0, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %225, i64 32
  %239 = load i64, ptr %238, align 8, !tbaa !45
  %240 = getelementptr inbounds nuw i8, ptr %225, i64 40
  %241 = load i64, ptr %240, align 8, !tbaa !49
  %242 = add i64 %241, %239
  %243 = icmp eq i64 %237, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %224
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %225)
          to label %245 unwind label %267

245:                                              ; preds = %244
  %246 = load i64, ptr %240, align 8, !tbaa !49, !noalias !94
  %247 = load i64, ptr %238, align 8, !tbaa !45, !noalias !94
  %248 = load ptr, ptr %228, align 8, !tbaa !44, !noalias !94
  %249 = load ptr, ptr %226, align 8, !tbaa !39, !noalias !94
  %250 = add i64 %247, %246
  br label %251

251:                                              ; preds = %245, %224
  %252 = phi i64 [ %250, %245 ], [ %242, %224 ]
  %253 = phi ptr [ %249, %245 ], [ %227, %224 ]
  %254 = phi ptr [ %248, %245 ], [ %229, %224 ]
  %255 = udiv i64 %252, 170
  %256 = getelementptr inbounds nuw ptr, ptr %254, i64 %255
  %257 = icmp ne ptr %254, %253
  call void @llvm.assume(i1 %257)
  %258 = load ptr, ptr %256, align 8, !tbaa !53, !noalias !94
  %259 = urem i64 %252, 170
  %260 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %258, i64 %259
  store i8 0, ptr %260, align 8
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 1
  store i8 0, ptr %261, align 1
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 16
  store ptr null, ptr %262, align 8, !tbaa !15
  %263 = load i64, ptr %240, align 8, !tbaa !49
  %264 = add i64 %263, 1
  store i64 %264, ptr %240, align 8, !tbaa !49
  %265 = load i64, ptr %238, align 8, !tbaa !45
  %266 = add i64 %265, %263
  br label %361

267:                                              ; preds = %244
  %268 = landingpad { ptr, i32 }
          cleanup
  br label %384

269:                                              ; preds = %215
  %270 = shl nsw i32 %130, 18
  %271 = shl nsw i32 %154, 12
  %272 = or i32 %271, %270
  %273 = shl nsw i32 %181, 6
  %274 = or i32 %272, %273
  %275 = or i32 %274, %208
  %276 = lshr i32 %275, 16
  %277 = trunc i32 %276 to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %277)
          to label %278 unwind label %288

278:                                              ; preds = %269
  %279 = load ptr, ptr %0, align 8, !tbaa !31
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %155
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = icmp eq i8 %281, 61
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = lshr i32 %275, 8
  %285 = trunc i32 %284 to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %285)
          to label %286 unwind label %288

286:                                              ; preds = %283
  %287 = load ptr, ptr %0, align 8, !tbaa !31
  br label %290

288:                                              ; preds = %295, %283, %269
  %289 = landingpad { ptr, i32 }
          cleanup
  br label %384

290:                                              ; preds = %286, %278
  %291 = phi ptr [ %287, %286 ], [ %279, %278 ]
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %182
  %293 = load i8, ptr %292, align 1, !tbaa !15
  %294 = icmp eq i8 %293, 61
  br i1 %294, label %297, label %295

295:                                              ; preds = %290
  %296 = trunc i32 %275 to i8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %296)
          to label %297 unwind label %288

297:                                              ; preds = %290, %295
  %298 = add i64 %105, 4
  %299 = load i64, ptr %4, align 8, !tbaa !36
  %300 = icmp ult i64 %298, %299
  br i1 %300, label %104, label %301, !llvm.loop !97

301:                                              ; preds = %297
  %302 = load i8, ptr %2, align 8
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %304 = load ptr, ptr %303, align 8, !tbaa !15
  br label %305

305:                                              ; preds = %301, %97
  %306 = phi ptr [ %304, %301 ], [ %98, %97 ]
  %307 = phi i8 [ %302, %301 ], [ %99, %97 ]
  %308 = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %308, i64 15, i1 false), !tbaa.struct !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %309 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %313, !prof !38

311:                                              ; preds = %305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %312 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #16
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %313

313:                                              ; preds = %311, %305
  %314 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 16
  %316 = load ptr, ptr %315, align 8, !tbaa !39
  %317 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %318 = load ptr, ptr %317, align 8, !tbaa !44
  %319 = ptrtoint ptr %316 to i64
  %320 = ptrtoint ptr %318 to i64
  %321 = sub i64 %319, %320
  %322 = ashr exact i64 %321, 3
  %323 = icmp eq ptr %316, %318
  %324 = mul i64 %322, 170
  %325 = add i64 %324, -1
  %326 = select i1 %323, i64 0, i64 %325
  %327 = getelementptr inbounds nuw i8, ptr %314, i64 32
  %328 = load i64, ptr %327, align 8, !tbaa !45
  %329 = getelementptr inbounds nuw i8, ptr %314, i64 40
  %330 = load i64, ptr %329, align 8, !tbaa !49
  %331 = add i64 %330, %328
  %332 = icmp eq i64 %326, %331
  br i1 %332, label %333, label %340

333:                                              ; preds = %313
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %314)
          to label %334 unwind label %356

334:                                              ; preds = %333
  %335 = load i64, ptr %329, align 8, !tbaa !49, !noalias !98
  %336 = load i64, ptr %327, align 8, !tbaa !45, !noalias !98
  %337 = load ptr, ptr %317, align 8, !tbaa !44, !noalias !98
  %338 = load ptr, ptr %315, align 8, !tbaa !39, !noalias !98
  %339 = add i64 %336, %335
  br label %340

340:                                              ; preds = %313, %334
  %341 = phi i64 [ %339, %334 ], [ %331, %313 ]
  %342 = phi ptr [ %338, %334 ], [ %316, %313 ]
  %343 = phi ptr [ %337, %334 ], [ %318, %313 ]
  %344 = udiv i64 %341, 170
  %345 = getelementptr inbounds nuw ptr, ptr %343, i64 %344
  %346 = icmp ne ptr %343, %342
  call void @llvm.assume(i1 %346)
  %347 = load ptr, ptr %345, align 8, !tbaa !53, !noalias !98
  %348 = urem i64 %341, 170
  %349 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %347, i64 %348
  store i8 %307, ptr %349, align 8
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %350, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !37
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 16
  store ptr %306, ptr %351, align 8, !tbaa !15
  %352 = load i64, ptr %329, align 8, !tbaa !49
  %353 = add i64 %352, 1
  store i64 %353, ptr %329, align 8, !tbaa !49
  %354 = load i64, ptr %327, align 8, !tbaa !45
  %355 = add i64 %354, %352
  br label %361

356:                                              ; preds = %333
  %357 = landingpad { ptr, i32 }
          cleanup
  %358 = and i8 %307, 1
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %384, label %360

360:                                              ; preds = %356
  call void @_ZdlPv(ptr noundef %306) #23
  br label %384

361:                                              ; preds = %251, %340
  %362 = phi i64 [ %266, %251 ], [ %355, %340 ]
  %363 = phi ptr [ %228, %251 ], [ %317, %340 ]
  %364 = load ptr, ptr %363, align 8, !tbaa !44
  %365 = udiv i64 %362, 170
  %366 = getelementptr inbounds nuw ptr, ptr %364, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !53
  %368 = urem i64 %362, 170
  %369 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %367, i64 %368
  %370 = load i8, ptr %369, align 8
  %371 = and i8 %370, 1
  %372 = icmp eq i8 %371, 0
  %373 = getelementptr inbounds nuw i8, ptr %369, i64 16
  %374 = load ptr, ptr %373, align 8
  %375 = getelementptr inbounds nuw i8, ptr %369, i64 1
  %376 = select i1 %372, ptr %375, ptr %374
  %377 = load i8, ptr %2, align 8
  %378 = and i8 %377, 1
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %361
  %381 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %382 = load ptr, ptr %381, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %382) #23
  br label %383

383:                                              ; preds = %361, %380
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %393

384:                                              ; preds = %267, %360, %356, %288, %102
  %385 = phi { ptr, i32 } [ %357, %356 ], [ %103, %102 ], [ %289, %288 ], [ %357, %360 ], [ %268, %267 ]
  %386 = load i8, ptr %2, align 8
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %384
  %390 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %391 = load ptr, ptr %390, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef %391) #23
  br label %392

392:                                              ; preds = %384, %389
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %385

393:                                              ; preds = %39, %383
  %394 = phi ptr [ %376, %383 ], [ %67, %39 ]
  ret ptr %394
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_ascii_validate(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #16, !noalias !101
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 1, %7 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_utf8_validate(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #16, !noalias !104
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %32 ], [ %27, %37 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  %14 = icmp slt i8 %12, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = and i32 %13, 224
  %17 = icmp eq i32 %16, 192
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = and i32 %13, 240
  %20 = icmp eq i32 %19, 224
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = and i32 %13, 248
  %23 = icmp eq i32 %22, 240
  br i1 %23, label %24, label %46

24:                                               ; preds = %21, %18, %15
  %25 = phi i1 [ true, %18 ], [ false, %21 ], [ false, %15 ]
  %26 = phi i64 [ 3, %18 ], [ 4, %21 ], [ 2, %15 ]
  %27 = add i64 %26, %10
  %28 = icmp ugt i64 %27, %4
  br i1 %28, label %46, label %42

29:                                               ; preds = %9
  %30 = add nuw i64 %10, 1
  %31 = icmp ult i64 %10, %4
  br i1 %31, label %6, label %46

32:                                               ; preds = %42
  br i1 %17, label %6, label %33, !llvm.loop !19

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !19

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %42 ], [ 0, %38 ], [ 0, %33 ], [ 1, %6 ], [ 0, %24 ], [ 0, %29 ], [ 0, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_utf8_char_count(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #16, !noalias !107
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %83, label %36

6:                                                ; preds = %65, %59, %64, %56
  %7 = phi i64 [ %57, %56 ], [ %54, %59 ], [ %54, %64 ], [ %54, %65 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = icmp ult i64 %4, 8
  br i1 %10, label %33, label %11

11:                                               ; preds = %9
  %12 = and i64 %4, -8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %27, %13 ]
  %15 = phi <4 x i32> [ zeroinitializer, %11 ], [ %25, %13 ]
  %16 = phi <4 x i32> [ zeroinitializer, %11 ], [ %26, %13 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !15
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !15
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !110

29:                                               ; preds = %13
  %30 = add <4 x i32> %26, %25
  %31 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %32 = icmp eq i64 %4, %12
  br i1 %32, label %83, label %33

33:                                               ; preds = %9, %29
  %34 = phi i64 [ 0, %9 ], [ %12, %29 ]
  %35 = phi i32 [ 0, %9 ], [ %31, %29 ]
  br label %73

36:                                               ; preds = %3, %6
  %37 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %38 = getelementptr i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = zext i8 %39 to i32
  %41 = icmp slt i8 %39, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = and i32 %40, 224
  %44 = icmp eq i32 %43, 192
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = and i32 %40, 240
  %47 = icmp eq i32 %46, 224
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = and i32 %40, 248
  %50 = icmp eq i32 %49, 240
  br i1 %50, label %51, label %83

51:                                               ; preds = %48, %45, %42
  %52 = phi i1 [ true, %45 ], [ false, %48 ], [ false, %42 ]
  %53 = phi i64 [ 3, %45 ], [ 4, %48 ], [ 2, %42 ]
  %54 = add i64 %53, %37
  %55 = icmp ugt i64 %54, %4
  br i1 %55, label %83, label %69

56:                                               ; preds = %36
  %57 = add nuw i64 %37, 1
  %58 = icmp ult i64 %37, %4
  br i1 %58, label %6, label %83

59:                                               ; preds = %69
  br i1 %44, label %6, label %60, !llvm.loop !19

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !19

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !15
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !111

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %80, %73 ], [ 0, %69 ], [ %31, %29 ], [ 0, %65 ], [ 0, %60 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_hex_encode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !112
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !112
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !112
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !112
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10hex_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_hex_decode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !115
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !115
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !115
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !115
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10hex_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_encode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !118
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !118
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !118
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !118
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10url_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_url_decode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !121
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !121
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !121
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !121
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib10url_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_base64_encode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !124
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !124
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !124
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !124
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib13base64_encodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_base64_decode(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !127
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !31, !alias.scope !127
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16, !noalias !127
  store i64 %7, ptr %6, align 8, !tbaa !36, !alias.scope !127
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib13base64_decodeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #16
  invoke void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #21
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #16
  resume { ptr, i32 } %5
}

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !130
  ret void
}

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() local_unnamed_addr #8 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #16
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #21
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !44, !noalias !132
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !39, !noalias !132
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !45, !noalias !132
  %12 = udiv i64 %11, 170
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !53, !noalias !132
  %15 = urem i64 %11, 170
  %16 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !49, !noalias !135
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 170
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !53, !noalias !135
  %23 = urem i64 %19, 170
  %24 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %60
  %27 = load ptr, ptr %5, align 8, !tbaa !39
  %28 = load ptr, ptr %2, align 8, !tbaa !44
  br label %29

29:                                               ; preds = %26, %10, %8
  %30 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %6, %8 ]
  %31 = phi ptr [ %17, %26 ], [ %17, %10 ], [ %9, %8 ]
  %32 = phi ptr [ %28, %26 ], [ %3, %10 ], [ %3, %8 ]
  %33 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %3, %8 ]
  store i64 0, ptr %31, align 8, !tbaa !49
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %32 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ugt i64 %37, 2
  br i1 %38, label %65, label %76

39:                                               ; preds = %10, %60
  %40 = phi ptr [ %61, %60 ], [ %14, %10 ]
  %41 = phi ptr [ %63, %60 ], [ %16, %10 ]
  %42 = phi ptr [ %62, %60 ], [ %13, %10 ]
  %43 = load i8, ptr %41, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  tail call void @_ZdlPv(ptr noundef %48) #23
  %49 = load ptr, ptr %42, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %49, %46 ], [ %40, %39 ]
  %52 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %53 = ptrtoint ptr %52 to i64
  %54 = ptrtoint ptr %51 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 4080
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !53
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %50 ]
  %62 = phi ptr [ %58, %57 ], [ %42, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %52, %50 ]
  %64 = icmp eq ptr %63, %24
  br i1 %64, label %26, label %39, !llvm.loop !138

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %69, %65 ], [ %32, %29 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !53
  tail call void @_ZdlPv(ptr noundef %67) #23
  %68 = load ptr, ptr %2, align 8, !tbaa !44
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %2, align 8, !tbaa !44
  %70 = load ptr, ptr %5, align 8, !tbaa !39
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %69 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp ugt i64 %74, 2
  br i1 %75, label %65, label %76

76:                                               ; preds = %65, %29
  %77 = phi ptr [ %30, %29 ], [ %70, %65 ]
  %78 = phi ptr [ %32, %29 ], [ %69, %65 ]
  %79 = phi i64 [ %37, %29 ], [ %74, %65 ]
  switch i64 %79, label %83 [
    i64 1, label %81
    i64 2, label %80
  ]

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i64 [ 170, %80 ], [ 85, %76 ]
  store i64 %82, ptr %4, align 8, !tbaa !45
  br label %83

83:                                               ; preds = %76, %81
  %84 = icmp eq ptr %78, %77
  br i1 %84, label %93, label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %78, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  tail call void @_ZdlPv(ptr noundef %87) #23
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = icmp eq ptr %88, %77
  br i1 %89, label %90, label %85, !llvm.loop !139

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8, !tbaa !44
  %92 = load ptr, ptr %5, align 8, !tbaa !39
  br label %93

93:                                               ; preds = %90, %83
  %94 = phi ptr [ %92, %90 ], [ %77, %83 ]
  %95 = phi ptr [ %91, %90 ], [ %77, %83 ]
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %94 to i64
  %98 = sub i64 %97, %96
  %99 = lshr i64 %98, 3
  %100 = mul i64 %99, -8
  %101 = getelementptr i8, ptr %94, i64 %100
  store ptr %101, ptr %5, align 8, !tbaa !39
  %102 = load ptr, ptr %0, align 8, !tbaa !140
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @_ZdlPv(ptr noundef nonnull %102) #23
  br label %105

105:                                              ; preds = %93, %104
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !45
  %8 = icmp ugt i64 %7, 169
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -170
  store i64 %10, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  store ptr %13, ptr %2, align 8, !tbaa !53
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !44
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = load ptr, ptr %0, align 8, !tbaa !140
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %33, ptr %3, align 8, !tbaa !53
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
  store ptr %35, ptr %4, align 8, !tbaa !53
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %36 = load ptr, ptr %18, align 8, !tbaa !44
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  store ptr %37, ptr %5, align 8, !tbaa !53
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !44
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #21, !noalias !142
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #22, !noalias !142
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #22
          to label %51 unwind label %81

51:                                               ; preds = %45
  %52 = icmp samesign eq i64 %46, %22
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = icmp eq ptr %17, %19
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = ashr exact i64 %22, 3
  %57 = add nsw i64 %56, 1
  %58 = sdiv i64 %57, -2
  %59 = getelementptr inbounds ptr, ptr %48, i64 %58
  br label %64

60:                                               ; preds = %53
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #22
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #23
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !53
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !39
  %71 = load ptr, ptr %18, align 8, !tbaa !44
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !145
  store ptr %77, ptr %0, align 8, !tbaa !145
  store ptr %76, ptr %18, align 8, !tbaa !145
  store ptr %74, ptr %23, align 8, !tbaa !145
  store ptr %75, ptr %16, align 8, !tbaa !145
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #23
  br label %191

81:                                               ; preds = %45
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %188

83:                                               ; preds = %64, %169
  %84 = phi ptr [ %89, %169 ], [ %70, %64 ]
  %85 = phi ptr [ %172, %169 ], [ %67, %64 ]
  %86 = phi ptr [ %174, %169 ], [ %66, %64 ]
  %87 = phi ptr [ %179, %169 ], [ %69, %64 ]
  %88 = phi ptr [ %170, %169 ], [ %65, %64 ]
  %89 = getelementptr inbounds i8, ptr %84, i64 -8
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %85 to i64
  %92 = icmp eq ptr %86, %85
  br i1 %92, label %93, label %169

93:                                               ; preds = %83
  %94 = ptrtoint ptr %88 to i64
  %95 = ptrtoint ptr %87 to i64
  %96 = icmp eq ptr %88, %87
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = sub i64 %94, %95
  %99 = ashr exact i64 %98, 3
  %100 = add nsw i64 %99, 1
  %101 = sdiv i64 %100, 2
  %102 = getelementptr inbounds ptr, ptr %87, i64 %101
  %103 = sub i64 %95, %90
  %104 = ashr exact i64 %103, 3
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !146
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #21
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #22
          to label %118 unwind label %184

118:                                              ; preds = %115
  %119 = ptrtoint ptr %117 to i64
  %120 = add nuw nsw i64 %111, 3
  %121 = lshr i64 %120, 2
  %122 = getelementptr inbounds nuw ptr, ptr %117, i64 %121
  %123 = getelementptr inbounds nuw ptr, ptr %117, i64 %111
  %124 = sub i64 %95, %90
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 %124
  br i1 %110, label %167, label %126

126:                                              ; preds = %118
  %127 = add i64 %95, -8
  %128 = sub i64 %127, %90
  %129 = lshr i64 %128, 3
  %130 = add nuw nsw i64 %129, 1
  %131 = icmp ult i64 %128, 56
  br i1 %131, label %157, label %132

132:                                              ; preds = %126
  %133 = shl nuw nsw i64 %121, 3
  %134 = add i64 %133, %119
  %135 = sub i64 %134, %90
  %136 = icmp ult i64 %135, 32
  br i1 %136, label %157, label %137

137:                                              ; preds = %132
  %138 = and i64 %130, 4611686018427387900
  %139 = shl i64 %138, 3
  %140 = getelementptr i8, ptr %122, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr i8, ptr %86, i64 %141
  br label %143

143:                                              ; preds = %143, %137
  %144 = phi i64 [ 0, %137 ], [ %153, %143 ]
  %145 = shl i64 %144, 3
  %146 = getelementptr i8, ptr %122, i64 %145
  %147 = shl i64 %144, 3
  %148 = getelementptr i8, ptr %86, i64 %147
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !53
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !53
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !53
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !53
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !155

155:                                              ; preds = %143
  %156 = icmp eq i64 %130, %138
  br i1 %156, label %167, label %157

157:                                              ; preds = %132, %126, %155
  %158 = phi ptr [ %122, %132 ], [ %122, %126 ], [ %140, %155 ]
  %159 = phi ptr [ %86, %132 ], [ %86, %126 ], [ %142, %155 ]
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi ptr [ %164, %160 ], [ %158, %157 ]
  %162 = phi ptr [ %165, %160 ], [ %159, %157 ]
  %163 = load ptr, ptr %162, align 8, !tbaa !53
  store ptr %163, ptr %161, align 8, !tbaa !53
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !156

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #23
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !53
  store ptr %175, ptr %174, align 8, !tbaa !53
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !44
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #23
  br label %188

184:                                              ; preds = %115
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %188

186:                                              ; preds = %113
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %188

188:                                              ; preds = %81, %182, %186, %184
  %189 = phi { ptr, i32 } [ %82, %81 ], [ %183, %182 ], [ %185, %184 ], [ %187, %186 ]
  %190 = phi ptr [ %47, %81 ], [ %47, %182 ], [ %85, %184 ], [ %85, %186 ]
  tail call void @_ZdlPv(ptr noundef nonnull %190) #23
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %0, align 8, !tbaa !140
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !157
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !44
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !44
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #21, !noalias !166
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !166
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !44
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !53
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !53
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !53
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !53
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !169

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !53
  store ptr %83, ptr %81, align 8, !tbaa !53
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !170

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !145
  store ptr %37, ptr %0, align 8, !tbaa !145
  store ptr %39, ptr %11, align 8, !tbaa !145
  store ptr %40, ptr %5, align 8, !tbaa !145
  store ptr %88, ptr %3, align 8, !tbaa !145
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %94, ptr %93, align 8, !tbaa !53
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %0, align 8, !tbaa !140
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %12, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %17, %14
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, -2
  %22 = getelementptr inbounds ptr, ptr %12, i64 %21
  %23 = sub i64 %8, %17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !171
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !44
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !44
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #21, !noalias !180
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #22, !noalias !180
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !44
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %8, %42
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = icmp eq ptr %4, %41
  br i1 %45, label %87, label %46

46:                                               ; preds = %34
  %47 = add i64 %8, -8
  %48 = sub i64 %47, %42
  %49 = lshr i64 %48, 3
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %48, 104
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = shl nuw nsw i64 %35, 3
  %54 = add i64 %53, %38
  %55 = sub i64 %54, %42
  %56 = icmp ult i64 %55, 32
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = and i64 %50, 4611686018427387900
  %59 = shl i64 %58, 3
  %60 = getelementptr i8, ptr %39, i64 %59
  %61 = shl i64 %58, 3
  %62 = getelementptr i8, ptr %41, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i64 [ 0, %57 ], [ %73, %63 ]
  %65 = shl i64 %64, 3
  %66 = getelementptr i8, ptr %39, i64 %65
  %67 = shl i64 %64, 3
  %68 = getelementptr i8, ptr %41, i64 %67
  %69 = getelementptr i8, ptr %68, i64 16
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !53
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !53
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !53
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !53
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !183

75:                                               ; preds = %63
  %76 = icmp eq i64 %50, %58
  br i1 %76, label %87, label %77

77:                                               ; preds = %52, %46, %75
  %78 = phi ptr [ %39, %52 ], [ %39, %46 ], [ %60, %75 ]
  %79 = phi ptr [ %41, %52 ], [ %41, %46 ], [ %62, %75 ]
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %84, %80 ], [ %78, %77 ]
  %82 = phi ptr [ %85, %80 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !53
  store ptr %83, ptr %81, align 8, !tbaa !53
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !184

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !145
  store ptr %37, ptr %0, align 8, !tbaa !145
  store ptr %39, ptr %11, align 8, !tbaa !145
  store ptr %40, ptr %5, align 8, !tbaa !145
  store ptr %88, ptr %3, align 8, !tbaa !145
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #23
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %94, ptr %93, align 8, !tbaa !53
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %0, align 8, !tbaa !140
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = icmp eq ptr %13, %11
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  %18 = sub i64 %14, %15
  %19 = ashr exact i64 %18, 3
  %20 = add nsw i64 %19, 1
  %21 = sdiv i64 %20, 2
  %22 = getelementptr inbounds ptr, ptr %11, i64 %21
  %23 = sub i64 %15, %6
  %24 = ashr exact i64 %23, 3
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !185
  store ptr %22, ptr %10, align 8, !tbaa !39
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #21, !noalias !194
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #22, !noalias !194
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !44
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %15, %43
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 %44
  %46 = icmp eq ptr %11, %42
  br i1 %46, label %88, label %47

47:                                               ; preds = %34
  %48 = add i64 %15, -8
  %49 = sub i64 %48, %43
  %50 = lshr i64 %49, 3
  %51 = add nuw nsw i64 %50, 1
  %52 = icmp ult i64 %49, 104
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = shl nuw nsw i64 %36, 3
  %55 = add i64 %54, %39
  %56 = sub i64 %55, %43
  %57 = icmp ult i64 %56, 32
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = and i64 %51, 4611686018427387900
  %60 = shl i64 %59, 3
  %61 = getelementptr i8, ptr %40, i64 %60
  %62 = shl i64 %59, 3
  %63 = getelementptr i8, ptr %42, i64 %62
  br label %64

64:                                               ; preds = %64, %58
  %65 = phi i64 [ 0, %58 ], [ %74, %64 ]
  %66 = shl i64 %65, 3
  %67 = getelementptr i8, ptr %40, i64 %66
  %68 = shl i64 %65, 3
  %69 = getelementptr i8, ptr %42, i64 %68
  %70 = getelementptr i8, ptr %69, i64 16
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !53
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !53
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !53
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !53
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !197

76:                                               ; preds = %64
  %77 = icmp eq i64 %51, %59
  br i1 %77, label %88, label %78

78:                                               ; preds = %53, %47, %76
  %79 = phi ptr [ %40, %53 ], [ %40, %47 ], [ %61, %76 ]
  %80 = phi ptr [ %42, %53 ], [ %42, %47 ], [ %63, %76 ]
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %85, %81 ], [ %79, %78 ]
  %83 = phi ptr [ %86, %81 ], [ %80, %78 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !53
  store ptr %84, ptr %82, align 8, !tbaa !53
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !198

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !145
  store ptr %38, ptr %0, align 8, !tbaa !145
  store ptr %40, ptr %3, align 8, !tbaa !145
  store ptr %41, ptr %12, align 8, !tbaa !145
  store ptr %89, ptr %10, align 8, !tbaa !145
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #23
  %93 = load ptr, ptr %3, align 8, !tbaa !44
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !53
  store ptr %97, ptr %96, align 8, !tbaa !53
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !39
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !44
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isalnum(i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/2c50186085edd822.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!18 = distinct !{!18, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!23 = distinct !{!23, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!24 = distinct !{!24, !20, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !20, !26, !25}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!30 = distinct !{!30, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !33, i64 0, !35, i64 8}
!33 = !{!"p1 omnipotent char", !34, i64 0}
!34 = !{!"any pointer", !10, i64 0}
!35 = !{!"long long", !10, i64 0}
!36 = !{!32, !35, i64 8}
!37 = !{i64 0, i64 23, !15}
!38 = !{!"branch_weights", i32 1, i32 1023}
!39 = !{!40, !41, i64 16}
!40 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EE", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24}
!41 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !42, i64 0}
!42 = !{!"any p2 pointer", !34, i64 0}
!43 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EUt_E", !41, i64 0}
!44 = !{!40, !41, i64 8}
!45 = !{!46, !35, i64 32}
!46 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !47, i64 0, !35, i64 32, !48, i64 40}
!47 = !{!"_ZTSNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEEE", !40, i64 0}
!48 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !35, i64 0}
!49 = !{!35, !35, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!52 = distinct !{!52, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !34, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!57 = distinct !{!57, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!60 = distinct !{!60, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!63 = distinct !{!63, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!64 = distinct !{!64, !20}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!67 = distinct !{!67, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!70 = distinct !{!70, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!73 = distinct !{!73, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!76 = distinct !{!76, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!79 = distinct !{!79, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!80 = distinct !{!80, !20}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!83 = distinct !{!83, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!86 = distinct !{!86, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!87 = distinct !{!87, !20}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!90 = distinct !{!90, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!93 = distinct !{!93, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!96 = distinct !{!96, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!97 = distinct !{!97, !20}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!100 = distinct !{!100, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!103 = distinct !{!103, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!106 = distinct !{!106, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!109 = distinct !{!109, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!110 = distinct !{!110, !20, !25, !26}
!111 = distinct !{!111, !20, !26, !25}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!114 = distinct !{!114, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!117 = distinct !{!117, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!120 = distinct !{!120, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!123 = distinct !{!123, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!126 = distinct !{!126, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!129 = distinct !{!129, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!130 = !{!131, !131, i64 0}
!131 = !{!"vtable pointer", !11, i64 0}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev: argument 0"}
!134 = distinct !{!134, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!137 = distinct !{!137, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = !{!40, !41, i64 0}
!141 = !{!40, !41, i64 24}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!144 = distinct !{!144, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!145 = !{!41, !41, i64 0}
!146 = !{!147, !149, !151, !153}
!147 = distinct !{!147, !148, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!148 = distinct !{!148, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!149 = distinct !{!149, !150, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!150 = distinct !{!150, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!151 = distinct !{!151, !152, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!152 = distinct !{!152, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!153 = distinct !{!153, !154, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!154 = distinct !{!154, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!155 = distinct !{!155, !20, !25, !26}
!156 = distinct !{!156, !20, !25}
!157 = !{!158, !160, !162, !164}
!158 = distinct !{!158, !159, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!159 = distinct !{!159, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!160 = distinct !{!160, !161, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!161 = distinct !{!161, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!162 = distinct !{!162, !163, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!163 = distinct !{!163, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!164 = distinct !{!164, !165, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!165 = distinct !{!165, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!168 = distinct !{!168, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!169 = distinct !{!169, !20, !25, !26}
!170 = distinct !{!170, !20, !25}
!171 = !{!172, !174, !176, !178}
!172 = distinct !{!172, !173, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!173 = distinct !{!173, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!174 = distinct !{!174, !175, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!175 = distinct !{!175, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!176 = distinct !{!176, !177, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!177 = distinct !{!177, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!178 = distinct !{!178, !179, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!179 = distinct !{!179, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!182 = distinct !{!182, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!183 = distinct !{!183, !20, !25, !26}
!184 = distinct !{!184, !20, !25}
!185 = !{!186, !188, !190, !192}
!186 = distinct !{!186, !187, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!187 = distinct !{!187, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!188 = distinct !{!188, !189, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!189 = distinct !{!189, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!190 = distinct !{!190, !191, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!191 = distinct !{!191, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!192 = distinct !{!192, !193, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!193 = distinct !{!193, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!196 = distinct !{!196, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!197 = distinct !{!197, !20, !25, !26}
!198 = distinct !{!198, !20, !25}
