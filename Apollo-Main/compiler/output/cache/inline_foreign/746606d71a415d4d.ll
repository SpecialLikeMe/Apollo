; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/746606d71a415d4d.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/746606d71a415d4d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib10hex_decodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib10url_decodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib13base64_decodeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits = comdat any

$_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable = comdat any

@_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits = linkonce_odr dso_local local_unnamed_addr constant [17 x i8] c"0123456789abcdef\00", comdat, align 16
@.str = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits = linkonce_odr dso_local local_unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", comdat, align 16
@_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable = linkonce_odr dso_local local_unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2514_5_1126sys__native_ascii_validateEPKc(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %10 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2514_5_1125sys__native_utf8_validateEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %32 ], [ %27, %37 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
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
  br i1 %17, label %6, label %33, !llvm.loop !10

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !10

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %42 ], [ 0, %38 ], [ 0, %33 ], [ 0, %29 ], [ 0, %24 ], [ 1, %6 ], [ 0, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2514_5_1127sys__native_utf8_char_countEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
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
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !9
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !9
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !12

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
  %39 = load i8, ptr %38, align 1, !tbaa !9
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
  br i1 %44, label %6, label %60, !llvm.loop !10

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !10

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !15

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %80, %73 ], [ 0, %69 ], [ %31, %29 ], [ 0, %65 ], [ 0, %60 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1122sys__native_hex_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %7 = shl i64 %0, 1
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = icmp ugt i64 %7, 9223372036854775806
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %12 unwind label %83

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @llvm.umax.i64(i64 %7, i64 30)
  %15 = or disjoint i64 %14, 1
  %16 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #21
          to label %17 unwind label %83

17:                                               ; preds = %13
  store i8 0, ptr %16, align 1, !tbaa !9
  store ptr %16, ptr %3, align 8, !tbaa !23
  store i64 %14, ptr %5, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi ptr [ %16, %17 ], [ %5, %2 ]
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %21 = icmp samesign eq i64 %0, 0
  br i1 %21, label %24, label %85

22:                                               ; preds = %160
  %23 = load ptr, ptr %3, align 8, !tbaa !23
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %19, %18 ]
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %26, ptr %4, align 8, !tbaa !16
  %27 = icmp eq ptr %25, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !tbaa !20
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %31, i1 false)
  br label %35

32:                                               ; preds = %24
  store ptr %25, ptr %4, align 8, !tbaa !23
  %33 = load i64, ptr %5, align 8, !tbaa !9
  store i64 %33, ptr %26, align 8, !tbaa !9
  %34 = load i64, ptr %6, align 8, !tbaa !20
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi i64 [ %29, %28 ], [ %34, %32 ]
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %36, ptr %38, align 8, !tbaa !20
  store ptr %5, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !24

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %187

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !16
  %54 = load ptr, ptr %4, align 8, !tbaa !23
  %55 = icmp eq ptr %54, %26
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !20
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %59, i1 false)
  br label %63

60:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !23
  %61 = load i64, ptr %26, align 8, !tbaa !9
  store i64 %61, ptr %53, align 8, !tbaa !9
  %62 = load i64, ptr %38, align 8, !tbaa !20
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %64, ptr %66, align 8, !tbaa !20
  store ptr %26, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %38, align 8, !tbaa !20
  store i8 0, ptr %26, align 8, !tbaa !9
  %67 = load ptr, ptr %46, align 8, !tbaa !25
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %68, ptr %46, align 8, !tbaa !25
  br label %72

69:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %70 unwind label %187

70:                                               ; preds = %69
  %71 = load ptr, ptr %46, align 8, !tbaa !32, !noalias !33
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %68, %63 ], [ %71, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %75 = load ptr, ptr %74, align 8, !tbaa !36, !noalias !33
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %79 = load ptr, ptr %78, align 8, !tbaa !37, !noalias !33
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 512
  br label %171

83:                                               ; preds = %13, %11
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %194

85:                                               ; preds = %18, %160
  %86 = phi ptr [ %165, %160 ], [ %1, %18 ]
  %87 = load i8, ptr %86, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = lshr i32 %88, 4
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = load i64, ptr %6, align 8, !tbaa !20
  %94 = icmp ult i64 %93, 9223372036854775807
  call void @llvm.assume(i1 %94)
  %95 = add nuw nsw i64 %93, 1
  %96 = load ptr, ptr %3, align 8, !tbaa !23
  %97 = icmp eq ptr %96, %5
  %98 = load i64, ptr %5, align 8
  br i1 %97, label %99, label %101

99:                                               ; preds = %85
  %100 = icmp samesign ugt i64 %93, 14
  br i1 %100, label %105, label %123

101:                                              ; preds = %85
  %102 = icmp samesign ugt i64 %98, 14
  call void @llvm.assume(i1 %102)
  %103 = icmp ult i64 %98, 9223372036854775807
  call void @llvm.assume(i1 %103)
  %104 = icmp samesign ult i64 %93, %98
  br i1 %104, label %123, label %105

105:                                              ; preds = %101, %99
  %106 = phi i64 [ %98, %101 ], [ 15, %99 ]
  %107 = icmp eq i64 %95, 9223372036854775807
  br i1 %107, label %108, label %110

108:                                              ; preds = %144, %105
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %109 unwind label %169

109:                                              ; preds = %108
  unreachable

110:                                              ; preds = %105
  %111 = shl nuw i64 %106, 1
  %112 = icmp ult i64 %95, %111
  %113 = call i64 @llvm.umin.i64(i64 %111, i64 9223372036854775806)
  %114 = select i1 %112, i64 %113, i64 %95
  %115 = add nuw nsw i64 %114, 1
  %116 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %115) #21
          to label %117 unwind label %167

117:                                              ; preds = %110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %116, ptr align 1 %96, i64 %93, i1 false)
  br i1 %97, label %118, label %120

118:                                              ; preds = %117
  %119 = icmp samesign ult i64 %93, 16
  call void @llvm.assume(i1 %119)
  br label %122

120:                                              ; preds = %117
  %121 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %96, i64 noundef %121) #22
  br label %122

122:                                              ; preds = %120, %118
  store ptr %116, ptr %3, align 8, !tbaa !23
  store i64 %114, ptr %5, align 8, !tbaa !9
  br label %123

123:                                              ; preds = %122, %101, %99
  %124 = phi ptr [ %96, %101 ], [ %116, %122 ], [ %96, %99 ]
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 %93
  store i8 %92, ptr %125, align 1, !tbaa !9
  store i64 %95, ptr %6, align 8, !tbaa !20
  %126 = load ptr, ptr %3, align 8, !tbaa !23
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %95
  store i8 0, ptr %127, align 1, !tbaa !9
  %128 = and i32 %88, 15
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !9
  %132 = load i64, ptr %6, align 8, !tbaa !20
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = add nuw nsw i64 %132, 1
  %135 = load ptr, ptr %3, align 8, !tbaa !23
  %136 = icmp eq ptr %135, %5
  %137 = load i64, ptr %5, align 8
  br i1 %136, label %138, label %140

138:                                              ; preds = %123
  %139 = icmp samesign ugt i64 %132, 14
  br i1 %139, label %144, label %160

140:                                              ; preds = %123
  %141 = icmp samesign ugt i64 %137, 14
  call void @llvm.assume(i1 %141)
  %142 = icmp ult i64 %137, 9223372036854775807
  call void @llvm.assume(i1 %142)
  %143 = icmp samesign ult i64 %132, %137
  br i1 %143, label %160, label %144

144:                                              ; preds = %140, %138
  %145 = phi i64 [ %137, %140 ], [ 15, %138 ]
  %146 = icmp eq i64 %134, 9223372036854775807
  br i1 %146, label %108, label %147

147:                                              ; preds = %144
  %148 = shl nuw i64 %145, 1
  %149 = icmp ult i64 %134, %148
  %150 = call i64 @llvm.umin.i64(i64 %148, i64 9223372036854775806)
  %151 = select i1 %149, i64 %150, i64 %134
  %152 = add nuw nsw i64 %151, 1
  %153 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %152) #21
          to label %154 unwind label %167

154:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %153, ptr align 1 %135, i64 %132, i1 false)
  br i1 %136, label %155, label %157

155:                                              ; preds = %154
  %156 = icmp samesign ult i64 %132, 16
  call void @llvm.assume(i1 %156)
  br label %159

157:                                              ; preds = %154
  %158 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %135, i64 noundef %158) #22
  br label %159

159:                                              ; preds = %157, %155
  store ptr %153, ptr %3, align 8, !tbaa !23
  store i64 %151, ptr %5, align 8, !tbaa !9
  br label %160

160:                                              ; preds = %159, %140, %138
  %161 = phi ptr [ %135, %140 ], [ %153, %159 ], [ %135, %138 ]
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 %132
  store i8 %131, ptr %162, align 1, !tbaa !9
  store i64 %134, ptr %6, align 8, !tbaa !20
  %163 = load ptr, ptr %3, align 8, !tbaa !23
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 %134
  store i8 0, ptr %164, align 1, !tbaa !9
  %165 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %166 = icmp eq ptr %165, %20
  br i1 %166, label %22, label %85

167:                                              ; preds = %110, %147
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %194

169:                                              ; preds = %108
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %194

171:                                              ; preds = %77, %72
  %172 = phi ptr [ %82, %77 ], [ %73, %72 ]
  %173 = getelementptr inbounds i8, ptr %172, i64 -32
  %174 = load ptr, ptr %173, align 8, !tbaa !23
  %175 = load ptr, ptr %4, align 8, !tbaa !23
  %176 = icmp eq ptr %175, %26
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = load i64, ptr %26, align 8, !tbaa !9
  %179 = add i64 %178, 1
  call void @_ZdlPvm(ptr noundef %175, i64 noundef %179) #22
  br label %180

180:                                              ; preds = %171, %177
  %181 = load ptr, ptr %3, align 8, !tbaa !23
  %182 = icmp eq ptr %181, %5
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i64, ptr %5, align 8, !tbaa !9
  %185 = add i64 %184, 1
  call void @_ZdlPvm(ptr noundef %181, i64 noundef %185) #22
  br label %186

186:                                              ; preds = %180, %183
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %174

187:                                              ; preds = %69, %41
  %188 = landingpad { ptr, i32 }
          cleanup
  %189 = load ptr, ptr %4, align 8, !tbaa !23
  %190 = icmp eq ptr %189, %26
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load i64, ptr %26, align 8, !tbaa !9
  %193 = add i64 %192, 1
  call void @_ZdlPvm(ptr noundef %189, i64 noundef %193) #22
  br label %194

194:                                              ; preds = %187, %167, %169, %191, %83
  %195 = phi { ptr, i32 } [ %188, %191 ], [ %84, %83 ], [ %170, %169 ], [ %168, %167 ], [ %188, %187 ]
  %196 = load ptr, ptr %3, align 8, !tbaa !23
  %197 = icmp eq ptr %196, %5
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i64, ptr %5, align 8, !tbaa !9
  %200 = add i64 %199, 1
  call void @_ZdlPvm(ptr noundef %196, i64 noundef %200) #22
  br label %201

201:                                              ; preds = %194, %198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %195
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1122sys__native_hex_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10hex_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = and i64 %0, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %10, ptr %3, align 8, !tbaa !16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %11, align 8, !tbaa !20
  store i8 0, ptr %10, align 8, !tbaa !9
  %12 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17, !prof !24

14:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %15 unwind label %65

15:                                               ; preds = %14
  %16 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds i8, ptr %22, i64 -32
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %26, ptr %20, align 8, !tbaa !16
  %27 = load ptr, ptr %3, align 8, !tbaa !23
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %11, align 8, !tbaa !20
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %27, ptr %20, align 8, !tbaa !23
  %34 = load i64, ptr %10, align 8, !tbaa !9
  store i64 %34, ptr %26, align 8, !tbaa !9
  %35 = load i64, ptr %11, align 8, !tbaa !20
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %35, %33 ], [ %30, %29 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !20
  store ptr %10, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %11, align 8, !tbaa !20
  store i8 0, ptr %10, align 8, !tbaa !9
  %40 = load ptr, ptr %19, align 8, !tbaa !25
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %19, align 8, !tbaa !25
  br label %45

42:                                               ; preds = %17
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %65

43:                                               ; preds = %42
  %44 = load ptr, ptr %19, align 8, !tbaa !32, !noalias !39
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !36, !noalias !39
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !37, !noalias !39
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = load ptr, ptr %3, align 8, !tbaa !23
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %337, label %62

62:                                               ; preds = %56
  %63 = load i64, ptr %10, align 8, !tbaa !9
  %64 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %64) #22
  br label %337

65:                                               ; preds = %42, %14
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %3, align 8, !tbaa !23
  %68 = icmp eq ptr %67, %10
  br i1 %68, label %339, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %10, align 8, !tbaa !9
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %67, i64 noundef %71) #22
  br label %339

72:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %73, ptr %4, align 8, !tbaa !16
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %74, align 8, !tbaa !20
  store i8 0, ptr %73, align 8, !tbaa !9
  %75 = lshr exact i64 %0, 1
  %76 = icmp ugt i64 %0, 30
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = icmp eq i64 %0, -2
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %80 unwind label %89

80:                                               ; preds = %79
  unreachable

81:                                               ; preds = %77
  %82 = call i64 @llvm.umax.i64(i64 %75, i64 30)
  %83 = add nuw nsw i64 %82, 1
  %84 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %83) #21
          to label %85 unwind label %89

85:                                               ; preds = %81
  store i8 0, ptr %84, align 1, !tbaa !9
  store ptr %84, ptr %4, align 8, !tbaa !23
  store i64 %82, ptr %73, align 8, !tbaa !9
  br label %88

86:                                               ; preds = %72
  %87 = icmp eq i64 %0, 0
  br i1 %87, label %242, label %88

88:                                               ; preds = %85, %86
  br label %91

89:                                               ; preds = %81, %79
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %329

91:                                               ; preds = %88, %233
  %92 = phi i64 [ %238, %233 ], [ 0, %88 ]
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = sext i8 %94 to i32
  %96 = add i8 %94, -48
  %97 = icmp ult i8 %96, 10
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = add nsw i32 %95, -48
  br label %110

100:                                              ; preds = %91
  %101 = add i8 %94, -97
  %102 = icmp ult i8 %101, 6
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = add nsw i32 %95, -87
  br label %110

105:                                              ; preds = %100
  %106 = add i8 %94, -65
  %107 = icmp ult i8 %106, 6
  %108 = add nsw i32 %95, -55
  %109 = select i1 %107, i32 %108, i32 -1
  br label %110

110:                                              ; preds = %98, %103, %105
  %111 = phi i32 [ %99, %98 ], [ %104, %103 ], [ %109, %105 ]
  %112 = getelementptr inbounds nuw i8, ptr %93, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = sext i8 %113 to i32
  %115 = add i8 %113, -48
  %116 = icmp ult i8 %115, 10
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = add nsw i32 %114, -48
  br label %129

119:                                              ; preds = %110
  %120 = add i8 %113, -97
  %121 = icmp ult i8 %120, 6
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = add nsw i32 %114, -87
  br label %129

124:                                              ; preds = %119
  %125 = add i8 %113, -65
  %126 = icmp ult i8 %125, 6
  %127 = add nsw i32 %114, -55
  %128 = select i1 %126, i32 %127, i32 -1
  br label %129

129:                                              ; preds = %117, %122, %124
  %130 = phi i32 [ %118, %117 ], [ %123, %122 ], [ %128, %124 ]
  %131 = or i32 %130, %111
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %199, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %134, ptr %5, align 8, !tbaa !16
  %135 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %135, align 8, !tbaa !20
  store i8 0, ptr %134, align 8, !tbaa !9
  %136 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %141, !prof !24

138:                                              ; preds = %133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %139 unwind label %192

139:                                              ; preds = %138
  %140 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %141

141:                                              ; preds = %139, %133
  %142 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 48
  %144 = load ptr, ptr %143, align 8, !tbaa !25
  %145 = getelementptr inbounds nuw i8, ptr %142, i64 64
  %146 = load ptr, ptr %145, align 8, !tbaa !31
  %147 = getelementptr inbounds i8, ptr %146, i64 -32
  %148 = icmp eq ptr %144, %147
  br i1 %148, label %166, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds nuw i8, ptr %144, i64 16
  store ptr %150, ptr %144, align 8, !tbaa !16
  %151 = load ptr, ptr %5, align 8, !tbaa !23
  %152 = icmp eq ptr %151, %134
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, ptr %135, align 8, !tbaa !20
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  %156 = add nuw nsw i64 %154, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %150, ptr noundef nonnull align 8 dereferenceable(1) %134, i64 %156, i1 false)
  br label %160

157:                                              ; preds = %149
  store ptr %151, ptr %144, align 8, !tbaa !23
  %158 = load i64, ptr %134, align 8, !tbaa !9
  store i64 %158, ptr %150, align 8, !tbaa !9
  %159 = load i64, ptr %135, align 8, !tbaa !20
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi i64 [ %159, %157 ], [ %154, %153 ]
  %162 = icmp ult i64 %161, 9223372036854775807
  call void @llvm.assume(i1 %162)
  %163 = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i64 %161, ptr %163, align 8, !tbaa !20
  store ptr %134, ptr %5, align 8, !tbaa !23
  store i64 0, ptr %135, align 8, !tbaa !20
  store i8 0, ptr %134, align 8, !tbaa !9
  %164 = load ptr, ptr %143, align 8, !tbaa !25
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 32
  store ptr %165, ptr %143, align 8, !tbaa !25
  br label %169

166:                                              ; preds = %141
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %142, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %167 unwind label %192

167:                                              ; preds = %166
  %168 = load ptr, ptr %143, align 8, !tbaa !32, !noalias !42
  br label %169

169:                                              ; preds = %167, %160
  %170 = phi ptr [ %165, %160 ], [ %168, %167 ]
  %171 = getelementptr inbounds nuw i8, ptr %142, i64 56
  %172 = load ptr, ptr %171, align 8, !tbaa !36, !noalias !42
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = getelementptr inbounds nuw i8, ptr %142, i64 72
  %176 = load ptr, ptr %175, align 8, !tbaa !37, !noalias !42
  %177 = getelementptr inbounds i8, ptr %176, i64 -8
  %178 = load ptr, ptr %177, align 8, !tbaa !38
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 512
  br label %180

180:                                              ; preds = %174, %169
  %181 = phi ptr [ %179, %174 ], [ %170, %169 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 -32
  %183 = load ptr, ptr %182, align 8, !tbaa !23
  %184 = load ptr, ptr %5, align 8, !tbaa !23
  %185 = icmp eq ptr %184, %134
  br i1 %185, label %321, label %186

186:                                              ; preds = %180
  %187 = load i64, ptr %134, align 8, !tbaa !9
  br label %316

188:                                              ; preds = %220
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %329

190:                                              ; preds = %218
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %329

192:                                              ; preds = %166, %138
  %193 = landingpad { ptr, i32 }
          cleanup
  %194 = load ptr, ptr %5, align 8, !tbaa !23
  %195 = icmp eq ptr %194, %134
  br i1 %195, label %329, label %196

196:                                              ; preds = %192
  %197 = load i64, ptr %134, align 8, !tbaa !9
  %198 = add i64 %197, 1
  call void @_ZdlPvm(ptr noundef %194, i64 noundef %198) #22
  br label %329

199:                                              ; preds = %129
  %200 = shl nsw i32 %111, 4
  %201 = or i32 %130, %200
  %202 = trunc i32 %201 to i8
  %203 = load i64, ptr %74, align 8, !tbaa !20
  %204 = icmp ult i64 %203, 9223372036854775807
  call void @llvm.assume(i1 %204)
  %205 = add nuw nsw i64 %203, 1
  %206 = load ptr, ptr %4, align 8, !tbaa !23
  %207 = icmp eq ptr %206, %73
  %208 = load i64, ptr %73, align 8
  br i1 %207, label %209, label %211

209:                                              ; preds = %199
  %210 = icmp samesign ugt i64 %203, 14
  br i1 %210, label %215, label %233

211:                                              ; preds = %199
  %212 = icmp samesign ugt i64 %208, 14
  call void @llvm.assume(i1 %212)
  %213 = icmp ult i64 %208, 9223372036854775807
  call void @llvm.assume(i1 %213)
  %214 = icmp samesign ult i64 %203, %208
  br i1 %214, label %233, label %215

215:                                              ; preds = %211, %209
  %216 = phi i64 [ %208, %211 ], [ 15, %209 ]
  %217 = icmp eq i64 %205, 9223372036854775807
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %219 unwind label %190

219:                                              ; preds = %218
  unreachable

220:                                              ; preds = %215
  %221 = shl nuw i64 %216, 1
  %222 = icmp ult i64 %205, %221
  %223 = call i64 @llvm.umin.i64(i64 %221, i64 9223372036854775806)
  %224 = select i1 %222, i64 %223, i64 %205
  %225 = add nuw nsw i64 %224, 1
  %226 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %225) #21
          to label %227 unwind label %188

227:                                              ; preds = %220
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %226, ptr align 1 %206, i64 %203, i1 false)
  br i1 %207, label %228, label %230

228:                                              ; preds = %227
  %229 = icmp samesign ult i64 %203, 16
  call void @llvm.assume(i1 %229)
  br label %232

230:                                              ; preds = %227
  %231 = add i64 %208, 1
  call void @_ZdlPvm(ptr noundef %206, i64 noundef %231) #22
  br label %232

232:                                              ; preds = %230, %228
  store ptr %226, ptr %4, align 8, !tbaa !23
  store i64 %224, ptr %73, align 8, !tbaa !9
  br label %233

233:                                              ; preds = %209, %211, %232
  %234 = phi ptr [ %206, %211 ], [ %226, %232 ], [ %206, %209 ]
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 %203
  store i8 %202, ptr %235, align 1, !tbaa !9
  store i64 %205, ptr %74, align 8, !tbaa !20
  %236 = load ptr, ptr %4, align 8, !tbaa !23
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 %205
  store i8 0, ptr %237, align 1, !tbaa !9
  %238 = add i64 %92, 2
  %239 = icmp ult i64 %238, %0
  br i1 %239, label %91, label %240, !llvm.loop !45

240:                                              ; preds = %233
  %241 = load ptr, ptr %4, align 8, !tbaa !23
  br label %242

242:                                              ; preds = %240, %86
  %243 = phi ptr [ %241, %240 ], [ %73, %86 ]
  %244 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %244, ptr %6, align 8, !tbaa !16
  %245 = icmp eq ptr %243, %73
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i64, ptr %74, align 8, !tbaa !20
  %248 = icmp ult i64 %247, 16
  call void @llvm.assume(i1 %248)
  %249 = add nuw nsw i64 %247, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %244, ptr noundef nonnull align 8 dereferenceable(1) %73, i64 %249, i1 false)
  br label %253

250:                                              ; preds = %242
  store ptr %243, ptr %6, align 8, !tbaa !23
  %251 = load i64, ptr %73, align 8, !tbaa !9
  store i64 %251, ptr %244, align 8, !tbaa !9
  %252 = load i64, ptr %74, align 8, !tbaa !20
  br label %253

253:                                              ; preds = %246, %250
  %254 = phi i64 [ %247, %246 ], [ %252, %250 ]
  %255 = icmp ult i64 %254, 9223372036854775807
  call void @llvm.assume(i1 %255)
  %256 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %254, ptr %256, align 8, !tbaa !20
  store ptr %73, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %74, align 8, !tbaa !20
  store i8 0, ptr %73, align 8, !tbaa !9
  %257 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %262, !prof !24

259:                                              ; preds = %253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %260 unwind label %309

260:                                              ; preds = %259
  %261 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %262

262:                                              ; preds = %260, %253
  %263 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 48
  %265 = load ptr, ptr %264, align 8, !tbaa !25
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 64
  %267 = load ptr, ptr %266, align 8, !tbaa !31
  %268 = getelementptr inbounds i8, ptr %267, i64 -32
  %269 = icmp eq ptr %265, %268
  br i1 %269, label %287, label %270

270:                                              ; preds = %262
  %271 = getelementptr inbounds nuw i8, ptr %265, i64 16
  store ptr %271, ptr %265, align 8, !tbaa !16
  %272 = load ptr, ptr %6, align 8, !tbaa !23
  %273 = icmp eq ptr %272, %244
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load i64, ptr %256, align 8, !tbaa !20
  %276 = icmp ult i64 %275, 16
  call void @llvm.assume(i1 %276)
  %277 = add nuw nsw i64 %275, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %271, ptr noundef nonnull align 8 dereferenceable(1) %244, i64 %277, i1 false)
  br label %281

278:                                              ; preds = %270
  store ptr %272, ptr %265, align 8, !tbaa !23
  %279 = load i64, ptr %244, align 8, !tbaa !9
  store i64 %279, ptr %271, align 8, !tbaa !9
  %280 = load i64, ptr %256, align 8, !tbaa !20
  br label %281

281:                                              ; preds = %278, %274
  %282 = phi i64 [ %280, %278 ], [ %275, %274 ]
  %283 = icmp ult i64 %282, 9223372036854775807
  call void @llvm.assume(i1 %283)
  %284 = getelementptr inbounds nuw i8, ptr %265, i64 8
  store i64 %282, ptr %284, align 8, !tbaa !20
  store ptr %244, ptr %6, align 8, !tbaa !23
  store i64 0, ptr %256, align 8, !tbaa !20
  store i8 0, ptr %244, align 8, !tbaa !9
  %285 = load ptr, ptr %264, align 8, !tbaa !25
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 32
  store ptr %286, ptr %264, align 8, !tbaa !25
  br label %290

287:                                              ; preds = %262
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %263, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %288 unwind label %309

288:                                              ; preds = %287
  %289 = load ptr, ptr %264, align 8, !tbaa !32, !noalias !46
  br label %290

290:                                              ; preds = %288, %281
  %291 = phi ptr [ %286, %281 ], [ %289, %288 ]
  %292 = getelementptr inbounds nuw i8, ptr %263, i64 56
  %293 = load ptr, ptr %292, align 8, !tbaa !36, !noalias !46
  %294 = icmp eq ptr %291, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = getelementptr inbounds nuw i8, ptr %263, i64 72
  %297 = load ptr, ptr %296, align 8, !tbaa !37, !noalias !46
  %298 = getelementptr inbounds i8, ptr %297, i64 -8
  %299 = load ptr, ptr %298, align 8, !tbaa !38
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 512
  br label %301

301:                                              ; preds = %295, %290
  %302 = phi ptr [ %300, %295 ], [ %291, %290 ]
  %303 = getelementptr inbounds i8, ptr %302, i64 -32
  %304 = load ptr, ptr %303, align 8, !tbaa !23
  %305 = load ptr, ptr %6, align 8, !tbaa !23
  %306 = icmp eq ptr %305, %244
  br i1 %306, label %321, label %307

307:                                              ; preds = %301
  %308 = load i64, ptr %244, align 8, !tbaa !9
  br label %316

309:                                              ; preds = %287, %259
  %310 = landingpad { ptr, i32 }
          cleanup
  %311 = load ptr, ptr %6, align 8, !tbaa !23
  %312 = icmp eq ptr %311, %244
  br i1 %312, label %329, label %313

313:                                              ; preds = %309
  %314 = load i64, ptr %244, align 8, !tbaa !9
  %315 = add i64 %314, 1
  call void @_ZdlPvm(ptr noundef %311, i64 noundef %315) #22
  br label %329

316:                                              ; preds = %307, %186
  %317 = phi i64 [ %187, %186 ], [ %308, %307 ]
  %318 = phi ptr [ %184, %186 ], [ %305, %307 ]
  %319 = phi ptr [ %183, %186 ], [ %304, %307 ]
  %320 = add i64 %317, 1
  call void @_ZdlPvm(ptr noundef %318, i64 noundef %320) #22
  br label %321

321:                                              ; preds = %316, %301, %180
  %322 = phi ptr [ %304, %301 ], [ %183, %180 ], [ %319, %316 ]
  %323 = load ptr, ptr %4, align 8, !tbaa !23
  %324 = icmp eq ptr %323, %73
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = load i64, ptr %73, align 8, !tbaa !9
  %327 = add i64 %326, 1
  call void @_ZdlPvm(ptr noundef %323, i64 noundef %327) #22
  br label %328

328:                                              ; preds = %321, %325
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %337

329:                                              ; preds = %309, %192, %188, %190, %313, %196, %89
  %330 = phi { ptr, i32 } [ %193, %196 ], [ %90, %89 ], [ %193, %192 ], [ %310, %313 ], [ %191, %190 ], [ %189, %188 ], [ %310, %309 ]
  %331 = load ptr, ptr %4, align 8, !tbaa !23
  %332 = icmp eq ptr %331, %73
  br i1 %332, label %336, label %333

333:                                              ; preds = %329
  %334 = load i64, ptr %73, align 8, !tbaa !9
  %335 = add i64 %334, 1
  call void @_ZdlPvm(ptr noundef %331, i64 noundef %335) #22
  br label %336

336:                                              ; preds = %329, %333
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %339

337:                                              ; preds = %56, %62, %328
  %338 = phi ptr [ %322, %328 ], [ %59, %62 ], [ %59, %56 ]
  ret ptr %338

339:                                              ; preds = %65, %69, %336
  %340 = phi { ptr, i32 } [ %330, %336 ], [ %66, %69 ], [ %66, %65 ]
  resume { ptr, i32 } %340
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1122sys__native_url_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %7 = mul i64 %0, 3
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = icmp ugt i64 %7, 9223372036854775806
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %12 unwind label %83

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @llvm.umax.i64(i64 %7, i64 30)
  %15 = add nuw nsw i64 %14, 1
  %16 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #21
          to label %17 unwind label %83

17:                                               ; preds = %13
  store i8 0, ptr %16, align 1, !tbaa !9
  store ptr %16, ptr %3, align 8, !tbaa !23
  store i64 %14, ptr %5, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi ptr [ %16, %17 ], [ %5, %2 ]
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %21 = icmp samesign eq i64 %0, 0
  br i1 %21, label %24, label %85

22:                                               ; preds = %237
  %23 = load ptr, ptr %3, align 8, !tbaa !23
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %19, %18 ]
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %26, ptr %4, align 8, !tbaa !16
  %27 = icmp eq ptr %25, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !tbaa !20
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %31, i1 false)
  br label %35

32:                                               ; preds = %24
  store ptr %25, ptr %4, align 8, !tbaa !23
  %33 = load i64, ptr %5, align 8, !tbaa !9
  store i64 %33, ptr %26, align 8, !tbaa !9
  %34 = load i64, ptr %6, align 8, !tbaa !20
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi i64 [ %29, %28 ], [ %34, %32 ]
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %36, ptr %38, align 8, !tbaa !20
  store ptr %5, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !24

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %259

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !16
  %54 = load ptr, ptr %4, align 8, !tbaa !23
  %55 = icmp eq ptr %54, %26
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !20
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %59, i1 false)
  br label %63

60:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !23
  %61 = load i64, ptr %26, align 8, !tbaa !9
  store i64 %61, ptr %53, align 8, !tbaa !9
  %62 = load i64, ptr %38, align 8, !tbaa !20
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %64, ptr %66, align 8, !tbaa !20
  store ptr %26, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %38, align 8, !tbaa !20
  store i8 0, ptr %26, align 8, !tbaa !9
  %67 = load ptr, ptr %46, align 8, !tbaa !25
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %68, ptr %46, align 8, !tbaa !25
  br label %72

69:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %70 unwind label %259

70:                                               ; preds = %69
  %71 = load ptr, ptr %46, align 8, !tbaa !32, !noalias !49
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %68, %63 ], [ %71, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %75 = load ptr, ptr %74, align 8, !tbaa !36, !noalias !49
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %243

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %79 = load ptr, ptr %78, align 8, !tbaa !37, !noalias !49
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 512
  br label %243

83:                                               ; preds = %13, %11
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %266

85:                                               ; preds = %18, %237
  %86 = phi ptr [ %241, %237 ], [ %1, %18 ]
  %87 = load i8, ptr %86, align 1, !tbaa !9
  %88 = zext i8 %87 to i32
  %89 = call i32 @isalnum(i32 noundef %88) #23
  %90 = freeze i32 %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  switch i8 %87, label %131 [
    i8 126, label %93
    i8 95, label %93
    i8 46, label %93
    i8 45, label %93
  ]

93:                                               ; preds = %92, %92, %92, %92, %85
  %94 = load i64, ptr %6, align 8, !tbaa !20
  %95 = icmp ult i64 %94, 9223372036854775807
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  %97 = load ptr, ptr %3, align 8, !tbaa !23
  %98 = icmp eq ptr %97, %5
  %99 = load i64, ptr %5, align 8
  br i1 %98, label %100, label %102

100:                                              ; preds = %93
  %101 = icmp samesign ugt i64 %94, 14
  br i1 %101, label %106, label %124

102:                                              ; preds = %93
  %103 = icmp samesign ugt i64 %99, 14
  call void @llvm.assume(i1 %103)
  %104 = icmp ult i64 %99, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = icmp samesign ult i64 %94, %99
  br i1 %105, label %124, label %106

106:                                              ; preds = %102, %100
  %107 = phi i64 [ %99, %102 ], [ 15, %100 ]
  %108 = icmp eq i64 %96, 9223372036854775807
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %218, %181, %144
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %110 unwind label %129

110:                                              ; preds = %109
  unreachable

111:                                              ; preds = %106
  %112 = shl nuw i64 %107, 1
  %113 = icmp ult i64 %96, %112
  %114 = call i64 @llvm.umin.i64(i64 %112, i64 9223372036854775806)
  %115 = select i1 %113, i64 %114, i64 %96
  %116 = add nuw nsw i64 %115, 1
  %117 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %116) #21
          to label %118 unwind label %127

118:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %117, ptr align 1 %97, i64 %94, i1 false)
  br i1 %98, label %119, label %121

119:                                              ; preds = %118
  %120 = icmp samesign ult i64 %94, 16
  call void @llvm.assume(i1 %120)
  br label %123

121:                                              ; preds = %118
  %122 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %122) #22
  br label %123

123:                                              ; preds = %121, %119
  store ptr %117, ptr %3, align 8, !tbaa !23
  store i64 %115, ptr %5, align 8, !tbaa !9
  br label %124

124:                                              ; preds = %100, %102, %123
  %125 = phi ptr [ %97, %102 ], [ %117, %123 ], [ %97, %100 ]
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 %94
  store i8 %87, ptr %126, align 1, !tbaa !9
  br label %237

127:                                              ; preds = %111, %147, %184, %221
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %266

129:                                              ; preds = %109
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %266

131:                                              ; preds = %92
  %132 = load i64, ptr %6, align 8, !tbaa !20
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = add nuw nsw i64 %132, 1
  %135 = load ptr, ptr %3, align 8, !tbaa !23
  %136 = icmp eq ptr %135, %5
  %137 = load i64, ptr %5, align 8
  br i1 %136, label %138, label %140

138:                                              ; preds = %131
  %139 = icmp samesign ugt i64 %132, 14
  br i1 %139, label %144, label %160

140:                                              ; preds = %131
  %141 = icmp samesign ugt i64 %137, 14
  call void @llvm.assume(i1 %141)
  %142 = icmp ult i64 %137, 9223372036854775807
  call void @llvm.assume(i1 %142)
  %143 = icmp samesign ult i64 %132, %137
  br i1 %143, label %160, label %144

144:                                              ; preds = %140, %138
  %145 = phi i64 [ %137, %140 ], [ 15, %138 ]
  %146 = icmp eq i64 %134, 9223372036854775807
  br i1 %146, label %109, label %147

147:                                              ; preds = %144
  %148 = shl nuw i64 %145, 1
  %149 = icmp ult i64 %134, %148
  %150 = call i64 @llvm.umin.i64(i64 %148, i64 9223372036854775806)
  %151 = select i1 %149, i64 %150, i64 %134
  %152 = add nuw nsw i64 %151, 1
  %153 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %152) #21
          to label %154 unwind label %127

154:                                              ; preds = %147
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %153, ptr align 1 %135, i64 %132, i1 false)
  br i1 %136, label %155, label %157

155:                                              ; preds = %154
  %156 = icmp samesign ult i64 %132, 16
  call void @llvm.assume(i1 %156)
  br label %159

157:                                              ; preds = %154
  %158 = add i64 %137, 1
  call void @_ZdlPvm(ptr noundef %135, i64 noundef %158) #22
  br label %159

159:                                              ; preds = %157, %155
  store ptr %153, ptr %3, align 8, !tbaa !23
  store i64 %151, ptr %5, align 8, !tbaa !9
  br label %160

160:                                              ; preds = %159, %140, %138
  %161 = phi ptr [ %135, %140 ], [ %153, %159 ], [ %135, %138 ]
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 %132
  store i8 37, ptr %162, align 1, !tbaa !9
  store i64 %134, ptr %6, align 8, !tbaa !20
  %163 = load ptr, ptr %3, align 8, !tbaa !23
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 %134
  store i8 0, ptr %164, align 1, !tbaa !9
  %165 = lshr i32 %88, 4
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !9
  %169 = load i64, ptr %6, align 8, !tbaa !20
  %170 = icmp ult i64 %169, 9223372036854775807
  call void @llvm.assume(i1 %170)
  %171 = add nuw nsw i64 %169, 1
  %172 = load ptr, ptr %3, align 8, !tbaa !23
  %173 = icmp eq ptr %172, %5
  %174 = load i64, ptr %5, align 8
  br i1 %173, label %175, label %177

175:                                              ; preds = %160
  %176 = icmp samesign ugt i64 %169, 14
  br i1 %176, label %181, label %197

177:                                              ; preds = %160
  %178 = icmp samesign ugt i64 %174, 14
  call void @llvm.assume(i1 %178)
  %179 = icmp ult i64 %174, 9223372036854775807
  call void @llvm.assume(i1 %179)
  %180 = icmp samesign ult i64 %169, %174
  br i1 %180, label %197, label %181

181:                                              ; preds = %177, %175
  %182 = phi i64 [ %174, %177 ], [ 15, %175 ]
  %183 = icmp eq i64 %171, 9223372036854775807
  br i1 %183, label %109, label %184

184:                                              ; preds = %181
  %185 = shl nuw i64 %182, 1
  %186 = icmp ult i64 %171, %185
  %187 = call i64 @llvm.umin.i64(i64 %185, i64 9223372036854775806)
  %188 = select i1 %186, i64 %187, i64 %171
  %189 = add nuw nsw i64 %188, 1
  %190 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %189) #21
          to label %191 unwind label %127

191:                                              ; preds = %184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %190, ptr align 1 %172, i64 %169, i1 false)
  br i1 %173, label %192, label %194

192:                                              ; preds = %191
  %193 = icmp samesign ult i64 %169, 16
  call void @llvm.assume(i1 %193)
  br label %196

194:                                              ; preds = %191
  %195 = add i64 %174, 1
  call void @_ZdlPvm(ptr noundef %172, i64 noundef %195) #22
  br label %196

196:                                              ; preds = %194, %192
  store ptr %190, ptr %3, align 8, !tbaa !23
  store i64 %188, ptr %5, align 8, !tbaa !9
  br label %197

197:                                              ; preds = %196, %177, %175
  %198 = phi ptr [ %172, %177 ], [ %190, %196 ], [ %172, %175 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 %169
  store i8 %168, ptr %199, align 1, !tbaa !9
  store i64 %171, ptr %6, align 8, !tbaa !20
  %200 = load ptr, ptr %3, align 8, !tbaa !23
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 %171
  store i8 0, ptr %201, align 1, !tbaa !9
  %202 = and i32 %88, 15
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = load i64, ptr %6, align 8, !tbaa !20
  %207 = icmp ult i64 %206, 9223372036854775807
  call void @llvm.assume(i1 %207)
  %208 = add nuw nsw i64 %206, 1
  %209 = load ptr, ptr %3, align 8, !tbaa !23
  %210 = icmp eq ptr %209, %5
  %211 = load i64, ptr %5, align 8
  br i1 %210, label %212, label %214

212:                                              ; preds = %197
  %213 = icmp samesign ugt i64 %206, 14
  br i1 %213, label %218, label %234

214:                                              ; preds = %197
  %215 = icmp samesign ugt i64 %211, 14
  call void @llvm.assume(i1 %215)
  %216 = icmp ult i64 %211, 9223372036854775807
  call void @llvm.assume(i1 %216)
  %217 = icmp samesign ult i64 %206, %211
  br i1 %217, label %234, label %218

218:                                              ; preds = %214, %212
  %219 = phi i64 [ %211, %214 ], [ 15, %212 ]
  %220 = icmp eq i64 %208, 9223372036854775807
  br i1 %220, label %109, label %221

221:                                              ; preds = %218
  %222 = shl nuw i64 %219, 1
  %223 = icmp ult i64 %208, %222
  %224 = call i64 @llvm.umin.i64(i64 %222, i64 9223372036854775806)
  %225 = select i1 %223, i64 %224, i64 %208
  %226 = add nuw nsw i64 %225, 1
  %227 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %226) #21
          to label %228 unwind label %127

228:                                              ; preds = %221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %227, ptr align 1 %209, i64 %206, i1 false)
  br i1 %210, label %229, label %231

229:                                              ; preds = %228
  %230 = icmp samesign ult i64 %206, 16
  call void @llvm.assume(i1 %230)
  br label %233

231:                                              ; preds = %228
  %232 = add i64 %211, 1
  call void @_ZdlPvm(ptr noundef %209, i64 noundef %232) #22
  br label %233

233:                                              ; preds = %231, %229
  store ptr %227, ptr %3, align 8, !tbaa !23
  store i64 %225, ptr %5, align 8, !tbaa !9
  br label %234

234:                                              ; preds = %212, %214, %233
  %235 = phi ptr [ %209, %214 ], [ %227, %233 ], [ %209, %212 ]
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 %206
  store i8 %205, ptr %236, align 1, !tbaa !9
  br label %237

237:                                              ; preds = %234, %124
  %238 = phi i64 [ %208, %234 ], [ %96, %124 ]
  store i64 %238, ptr %6, align 8, !tbaa !20
  %239 = load ptr, ptr %3, align 8, !tbaa !23
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 %238
  store i8 0, ptr %240, align 1, !tbaa !9
  %241 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %242 = icmp eq ptr %241, %20
  br i1 %242, label %22, label %85

243:                                              ; preds = %77, %72
  %244 = phi ptr [ %82, %77 ], [ %73, %72 ]
  %245 = getelementptr inbounds i8, ptr %244, i64 -32
  %246 = load ptr, ptr %245, align 8, !tbaa !23
  %247 = load ptr, ptr %4, align 8, !tbaa !23
  %248 = icmp eq ptr %247, %26
  br i1 %248, label %252, label %249

249:                                              ; preds = %243
  %250 = load i64, ptr %26, align 8, !tbaa !9
  %251 = add i64 %250, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %251) #22
  br label %252

252:                                              ; preds = %243, %249
  %253 = load ptr, ptr %3, align 8, !tbaa !23
  %254 = icmp eq ptr %253, %5
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = load i64, ptr %5, align 8, !tbaa !9
  %257 = add i64 %256, 1
  call void @_ZdlPvm(ptr noundef %253, i64 noundef %257) #22
  br label %258

258:                                              ; preds = %252, %255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %246

259:                                              ; preds = %69, %41
  %260 = landingpad { ptr, i32 }
          cleanup
  %261 = load ptr, ptr %4, align 8, !tbaa !23
  %262 = icmp eq ptr %261, %26
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i64, ptr %26, align 8, !tbaa !9
  %265 = add i64 %264, 1
  call void @_ZdlPvm(ptr noundef %261, i64 noundef %265) #22
  br label %266

266:                                              ; preds = %259, %127, %129, %263, %83
  %267 = phi { ptr, i32 } [ %260, %263 ], [ %84, %83 ], [ %130, %129 ], [ %128, %127 ], [ %260, %259 ]
  %268 = load ptr, ptr %3, align 8, !tbaa !23
  %269 = icmp eq ptr %268, %5
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load i64, ptr %5, align 8, !tbaa !9
  %272 = add i64 %271, 1
  call void @_ZdlPvm(ptr noundef %268, i64 noundef %272) #22
  br label %273

273:                                              ; preds = %266, %270
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %267
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1122sys__native_url_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10url_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %7 = icmp ugt i64 %0, 15
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = icmp ugt i64 %0, 9223372036854775806
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %11 unwind label %83

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %8
  %13 = call i64 @llvm.umax.i64(i64 %0, i64 30)
  %14 = add nuw nsw i64 %13, 1
  %15 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #21
          to label %16 unwind label %83

16:                                               ; preds = %12
  store i8 0, ptr %15, align 1, !tbaa !9
  store ptr %15, ptr %3, align 8, !tbaa !23
  store i64 %13, ptr %5, align 8, !tbaa !9
  br label %19

17:                                               ; preds = %2
  %18 = icmp eq i64 %0, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %17
  br label %85

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %21, ptr %4, align 8, !tbaa !16
  br label %26

22:                                               ; preds = %211
  %23 = load ptr, ptr %3, align 8, !tbaa !23
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %24, ptr %4, align 8, !tbaa !16
  %25 = icmp eq ptr %23, %5
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %22
  %27 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %28 = load i64, ptr %6, align 8, !tbaa !20
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %30, i1 false)
  br label %34

31:                                               ; preds = %22
  store ptr %23, ptr %4, align 8, !tbaa !23
  %32 = load i64, ptr %5, align 8, !tbaa !9
  store i64 %32, ptr %24, align 8, !tbaa !9
  %33 = load i64, ptr %6, align 8, !tbaa !20
  br label %34

34:                                               ; preds = %26, %31
  %35 = phi ptr [ %27, %26 ], [ %24, %31 ]
  %36 = phi i64 [ %28, %26 ], [ %33, %31 ]
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %36, ptr %38, align 8, !tbaa !20
  store ptr %5, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !24

41:                                               ; preds = %34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %238

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %34
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !16
  %54 = load ptr, ptr %4, align 8, !tbaa !23
  %55 = icmp eq ptr %54, %35
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !20
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %35, i64 %59, i1 false)
  br label %63

60:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !23
  %61 = load i64, ptr %35, align 8, !tbaa !9
  store i64 %61, ptr %53, align 8, !tbaa !9
  %62 = load i64, ptr %38, align 8, !tbaa !20
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %64, ptr %66, align 8, !tbaa !20
  store ptr %35, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %38, align 8, !tbaa !20
  store i8 0, ptr %35, align 1, !tbaa !9
  %67 = load ptr, ptr %46, align 8, !tbaa !25
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %68, ptr %46, align 8, !tbaa !25
  br label %72

69:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %70 unwind label %238

70:                                               ; preds = %69
  %71 = load ptr, ptr %46, align 8, !tbaa !32, !noalias !52
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %68, %63 ], [ %71, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %75 = load ptr, ptr %74, align 8, !tbaa !36, !noalias !52
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %222

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %79 = load ptr, ptr %78, align 8, !tbaa !37, !noalias !52
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 512
  br label %222

83:                                               ; preds = %12, %10
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %245

85:                                               ; preds = %19, %211
  %86 = phi i64 [ %216, %211 ], [ 0, %19 ]
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = icmp eq i8 %88, 37
  br i1 %89, label %90, label %175

90:                                               ; preds = %85
  %91 = add i64 %86, 2
  %92 = icmp ult i64 %91, %0
  br i1 %92, label %93, label %175

93:                                               ; preds = %90
  %94 = getelementptr inbounds nuw i8, ptr %87, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !9
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
  %113 = getelementptr inbounds nuw i8, ptr %1, i64 %91
  %114 = load i8, ptr %113, align 1, !tbaa !9
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
  br i1 %133, label %134, label %175

134:                                              ; preds = %130
  %135 = shl nsw i32 %112, 4
  %136 = or i32 %131, %135
  %137 = trunc i32 %136 to i8
  %138 = load i64, ptr %6, align 8, !tbaa !20
  %139 = icmp ult i64 %138, 9223372036854775807
  call void @llvm.assume(i1 %139)
  %140 = add nuw nsw i64 %138, 1
  %141 = load ptr, ptr %3, align 8, !tbaa !23
  %142 = icmp eq ptr %141, %5
  %143 = load i64, ptr %5, align 8
  br i1 %142, label %144, label %146

144:                                              ; preds = %134
  %145 = icmp samesign ugt i64 %138, 14
  br i1 %145, label %150, label %172

146:                                              ; preds = %134
  %147 = icmp samesign ugt i64 %143, 14
  call void @llvm.assume(i1 %147)
  %148 = icmp ult i64 %143, 9223372036854775807
  call void @llvm.assume(i1 %148)
  %149 = icmp samesign ult i64 %138, %143
  br i1 %149, label %172, label %150

150:                                              ; preds = %146, %144
  %151 = phi i64 [ %143, %146 ], [ 15, %144 ]
  %152 = icmp eq i64 %140, 9223372036854775807
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %154 unwind label %170

154:                                              ; preds = %153
  unreachable

155:                                              ; preds = %150
  %156 = shl nuw i64 %151, 1
  %157 = icmp ult i64 %140, %156
  %158 = call i64 @llvm.umin.i64(i64 %156, i64 9223372036854775806)
  %159 = select i1 %157, i64 %158, i64 %140
  %160 = add nuw nsw i64 %159, 1
  %161 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %160) #21
          to label %162 unwind label %168

162:                                              ; preds = %155
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %161, ptr align 1 %141, i64 %138, i1 false)
  br i1 %142, label %163, label %165

163:                                              ; preds = %162
  %164 = icmp samesign ult i64 %138, 16
  call void @llvm.assume(i1 %164)
  br label %167

165:                                              ; preds = %162
  %166 = add i64 %143, 1
  call void @_ZdlPvm(ptr noundef %141, i64 noundef %166) #22
  br label %167

167:                                              ; preds = %165, %163
  store ptr %161, ptr %3, align 8, !tbaa !23
  store i64 %159, ptr %5, align 8, !tbaa !9
  br label %172

168:                                              ; preds = %155
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %245

170:                                              ; preds = %153
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %245

172:                                              ; preds = %167, %146, %144
  %173 = phi ptr [ %141, %146 ], [ %161, %167 ], [ %141, %144 ]
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 %138
  store i8 %137, ptr %174, align 1, !tbaa !9
  br label %211

175:                                              ; preds = %130, %90, %85
  %176 = icmp eq i8 %88, 43
  %177 = select i1 %176, i8 32, i8 %88
  %178 = load i64, ptr %6, align 8, !tbaa !20
  %179 = icmp ult i64 %178, 9223372036854775807
  call void @llvm.assume(i1 %179)
  %180 = add nuw nsw i64 %178, 1
  %181 = load ptr, ptr %3, align 8, !tbaa !23
  %182 = icmp eq ptr %181, %5
  %183 = load i64, ptr %5, align 8
  br i1 %182, label %184, label %186

184:                                              ; preds = %175
  %185 = icmp samesign ugt i64 %178, 14
  br i1 %185, label %190, label %208

186:                                              ; preds = %175
  %187 = icmp samesign ugt i64 %183, 14
  call void @llvm.assume(i1 %187)
  %188 = icmp ult i64 %183, 9223372036854775807
  call void @llvm.assume(i1 %188)
  %189 = icmp samesign ult i64 %178, %183
  br i1 %189, label %208, label %190

190:                                              ; preds = %186, %184
  %191 = phi i64 [ %183, %186 ], [ 15, %184 ]
  %192 = icmp eq i64 %180, 9223372036854775807
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %194 unwind label %220

194:                                              ; preds = %193
  unreachable

195:                                              ; preds = %190
  %196 = shl nuw i64 %191, 1
  %197 = icmp ult i64 %180, %196
  %198 = call i64 @llvm.umin.i64(i64 %196, i64 9223372036854775806)
  %199 = select i1 %197, i64 %198, i64 %180
  %200 = add nuw nsw i64 %199, 1
  %201 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %200) #21
          to label %202 unwind label %218

202:                                              ; preds = %195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %201, ptr align 1 %181, i64 %178, i1 false)
  br i1 %182, label %203, label %205

203:                                              ; preds = %202
  %204 = icmp samesign ult i64 %178, 16
  call void @llvm.assume(i1 %204)
  br label %207

205:                                              ; preds = %202
  %206 = add i64 %183, 1
  call void @_ZdlPvm(ptr noundef %181, i64 noundef %206) #22
  br label %207

207:                                              ; preds = %205, %203
  store ptr %201, ptr %3, align 8, !tbaa !23
  store i64 %199, ptr %5, align 8, !tbaa !9
  br label %208

208:                                              ; preds = %184, %186, %207
  %209 = phi ptr [ %181, %186 ], [ %201, %207 ], [ %181, %184 ]
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 %178
  store i8 %177, ptr %210, align 1, !tbaa !9
  br label %211

211:                                              ; preds = %172, %208
  %212 = phi i64 [ %140, %172 ], [ %180, %208 ]
  %213 = phi i64 [ %91, %172 ], [ %86, %208 ]
  store i64 %212, ptr %6, align 8, !tbaa !20
  %214 = load ptr, ptr %3, align 8, !tbaa !23
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 %212
  store i8 0, ptr %215, align 1, !tbaa !9
  %216 = add nuw i64 %213, 1
  %217 = icmp ult i64 %216, %0
  br i1 %217, label %85, label %22, !llvm.loop !55

218:                                              ; preds = %195
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %245

220:                                              ; preds = %193
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %245

222:                                              ; preds = %77, %72
  %223 = phi ptr [ %82, %77 ], [ %73, %72 ]
  %224 = getelementptr inbounds i8, ptr %223, i64 -32
  %225 = load ptr, ptr %224, align 8, !tbaa !23
  %226 = load ptr, ptr %4, align 8, !tbaa !23
  %227 = icmp eq ptr %226, %35
  br i1 %227, label %231, label %228

228:                                              ; preds = %222
  %229 = load i64, ptr %35, align 8, !tbaa !9
  %230 = add i64 %229, 1
  call void @_ZdlPvm(ptr noundef %226, i64 noundef %230) #22
  br label %231

231:                                              ; preds = %222, %228
  %232 = load ptr, ptr %3, align 8, !tbaa !23
  %233 = icmp eq ptr %232, %5
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i64, ptr %5, align 8, !tbaa !9
  %236 = add i64 %235, 1
  call void @_ZdlPvm(ptr noundef %232, i64 noundef %236) #22
  br label %237

237:                                              ; preds = %231, %234
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %225

238:                                              ; preds = %69, %41
  %239 = landingpad { ptr, i32 }
          cleanup
  %240 = load ptr, ptr %4, align 8, !tbaa !23
  %241 = icmp eq ptr %240, %35
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = load i64, ptr %35, align 8, !tbaa !9
  %244 = add i64 %243, 1
  call void @_ZdlPvm(ptr noundef %240, i64 noundef %244) #22
  br label %245

245:                                              ; preds = %238, %218, %220, %168, %170, %242, %83
  %246 = phi { ptr, i32 } [ %84, %83 ], [ %239, %242 ], [ %171, %170 ], [ %221, %220 ], [ %169, %168 ], [ %219, %218 ], [ %239, %238 ]
  %247 = load ptr, ptr %3, align 8, !tbaa !23
  %248 = icmp eq ptr %247, %5
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load i64, ptr %5, align 8, !tbaa !9
  %251 = add i64 %250, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %251) #22
  br label %252

252:                                              ; preds = %245, %249
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %246
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1125sys__native_base64_encodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %7 = add i64 %0, 2
  %8 = udiv i64 %7, 3
  %9 = shl i64 %8, 2
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = icmp ugt i64 %9, 9223372036854775806
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %14 unwind label %84

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %11
  %16 = call i64 @llvm.umax.i64(i64 %9, i64 30)
  %17 = or disjoint i64 %16, 1
  %18 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #21
          to label %19 unwind label %84

19:                                               ; preds = %15
  store i8 0, ptr %18, align 1, !tbaa !9
  store ptr %18, ptr %3, align 8, !tbaa !23
  store i64 %16, ptr %5, align 8, !tbaa !9
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi ptr [ %5, %2 ], [ %18, %19 ]
  %22 = icmp eq i64 %0, 0
  br i1 %22, label %25, label %86

23:                                               ; preds = %264
  %24 = load ptr, ptr %3, align 8, !tbaa !23
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %27, ptr %4, align 8, !tbaa !16
  %28 = icmp eq ptr %26, %5
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %6, align 8, !tbaa !20
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %26, ptr %4, align 8, !tbaa !23
  %34 = load i64, ptr %5, align 8, !tbaa !9
  store i64 %34, ptr %27, align 8, !tbaa !9
  %35 = load i64, ptr %6, align 8, !tbaa !20
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i64 [ %30, %29 ], [ %35, %33 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !20
  store ptr %5, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %6, align 8, !tbaa !20
  store i8 0, ptr %5, align 8, !tbaa !9
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !24

42:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %291

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !16
  %55 = load ptr, ptr %4, align 8, !tbaa !23
  %56 = icmp eq ptr %55, %27
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, ptr %39, align 8, !tbaa !20
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !23
  %62 = load i64, ptr %27, align 8, !tbaa !9
  store i64 %62, ptr %54, align 8, !tbaa !9
  %63 = load i64, ptr %39, align 8, !tbaa !20
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %58, %57 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !20
  store ptr %27, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %39, align 8, !tbaa !20
  store i8 0, ptr %27, align 8, !tbaa !9
  %68 = load ptr, ptr %47, align 8, !tbaa !25
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %69, ptr %47, align 8, !tbaa !25
  br label %73

70:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %71 unwind label %291

71:                                               ; preds = %70
  %72 = load ptr, ptr %47, align 8, !tbaa !32, !noalias !56
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %69, %64 ], [ %72, %71 ]
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %76 = load ptr, ptr %75, align 8, !tbaa !36, !noalias !56
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %275

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %80 = load ptr, ptr %79, align 8, !tbaa !37, !noalias !56
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 512
  br label %275

84:                                               ; preds = %15, %13
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %298

86:                                               ; preds = %20, %264
  %87 = phi i64 [ %269, %264 ], [ 0, %20 ]
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = add nuw i64 %87, 1
  %93 = icmp ult i64 %92, %0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 %92
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  br label %99

99:                                               ; preds = %86, %94
  %100 = phi i32 [ %98, %94 ], [ 0, %86 ]
  %101 = or i32 %100, %91
  %102 = add i64 %87, 2
  %103 = icmp ult i64 %102, %0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  %106 = load i8, ptr %105, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %99, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %99 ]
  %110 = or disjoint i32 %109, %100
  %111 = lshr i32 %101, 18
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !9
  %115 = load i64, ptr %6, align 8, !tbaa !20
  %116 = icmp ult i64 %115, 9223372036854775807
  call void @llvm.assume(i1 %116)
  %117 = add nuw nsw i64 %115, 1
  %118 = load ptr, ptr %3, align 8, !tbaa !23
  %119 = icmp eq ptr %118, %5
  %120 = load i64, ptr %5, align 8
  br i1 %119, label %121, label %123

121:                                              ; preds = %108
  %122 = icmp samesign ugt i64 %115, 14
  br i1 %122, label %127, label %145

123:                                              ; preds = %108
  %124 = icmp samesign ugt i64 %120, 14
  call void @llvm.assume(i1 %124)
  %125 = icmp ult i64 %120, 9223372036854775807
  call void @llvm.assume(i1 %125)
  %126 = icmp samesign ult i64 %115, %120
  br i1 %126, label %145, label %127

127:                                              ; preds = %123, %121
  %128 = phi i64 [ %120, %123 ], [ 15, %121 ]
  %129 = icmp eq i64 %117, 9223372036854775807
  br i1 %129, label %130, label %132

130:                                              ; preds = %248, %208, %167, %127
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %131 unwind label %273

131:                                              ; preds = %130
  unreachable

132:                                              ; preds = %127
  %133 = shl nuw i64 %128, 1
  %134 = icmp ult i64 %117, %133
  %135 = call i64 @llvm.umin.i64(i64 %133, i64 9223372036854775806)
  %136 = select i1 %134, i64 %135, i64 %117
  %137 = add nuw nsw i64 %136, 1
  %138 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %137) #21
          to label %139 unwind label %271

139:                                              ; preds = %132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %138, ptr align 1 %118, i64 %115, i1 false)
  br i1 %119, label %140, label %142

140:                                              ; preds = %139
  %141 = icmp samesign ult i64 %115, 16
  call void @llvm.assume(i1 %141)
  br label %144

142:                                              ; preds = %139
  %143 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %143) #22
  br label %144

144:                                              ; preds = %142, %140
  store ptr %138, ptr %3, align 8, !tbaa !23
  store i64 %136, ptr %5, align 8, !tbaa !9
  br label %145

145:                                              ; preds = %144, %123, %121
  %146 = phi ptr [ %118, %123 ], [ %138, %144 ], [ %118, %121 ]
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %115
  store i8 %114, ptr %147, align 1, !tbaa !9
  store i64 %117, ptr %6, align 8, !tbaa !20
  %148 = load ptr, ptr %3, align 8, !tbaa !23
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 %117
  store i8 0, ptr %149, align 1, !tbaa !9
  %150 = lshr i32 %101, 12
  %151 = and i32 %150, 63
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !9
  %155 = load i64, ptr %6, align 8, !tbaa !20
  %156 = icmp ult i64 %155, 9223372036854775807
  call void @llvm.assume(i1 %156)
  %157 = add nuw nsw i64 %155, 1
  %158 = load ptr, ptr %3, align 8, !tbaa !23
  %159 = icmp eq ptr %158, %5
  %160 = load i64, ptr %5, align 8
  br i1 %159, label %161, label %163

161:                                              ; preds = %145
  %162 = icmp samesign ugt i64 %155, 14
  br i1 %162, label %167, label %183

163:                                              ; preds = %145
  %164 = icmp samesign ugt i64 %160, 14
  call void @llvm.assume(i1 %164)
  %165 = icmp ult i64 %160, 9223372036854775807
  call void @llvm.assume(i1 %165)
  %166 = icmp samesign ult i64 %155, %160
  br i1 %166, label %183, label %167

167:                                              ; preds = %163, %161
  %168 = phi i64 [ %160, %163 ], [ 15, %161 ]
  %169 = icmp eq i64 %157, 9223372036854775807
  br i1 %169, label %130, label %170

170:                                              ; preds = %167
  %171 = shl nuw i64 %168, 1
  %172 = icmp ult i64 %157, %171
  %173 = call i64 @llvm.umin.i64(i64 %171, i64 9223372036854775806)
  %174 = select i1 %172, i64 %173, i64 %157
  %175 = add nuw nsw i64 %174, 1
  %176 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %175) #21
          to label %177 unwind label %271

177:                                              ; preds = %170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %176, ptr align 1 %158, i64 %155, i1 false)
  br i1 %159, label %178, label %180

178:                                              ; preds = %177
  %179 = icmp samesign ult i64 %155, 16
  call void @llvm.assume(i1 %179)
  br label %182

180:                                              ; preds = %177
  %181 = add i64 %160, 1
  call void @_ZdlPvm(ptr noundef %158, i64 noundef %181) #22
  br label %182

182:                                              ; preds = %180, %178
  store ptr %176, ptr %3, align 8, !tbaa !23
  store i64 %174, ptr %5, align 8, !tbaa !9
  br label %183

183:                                              ; preds = %182, %163, %161
  %184 = phi ptr [ %158, %163 ], [ %176, %182 ], [ %158, %161 ]
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %155
  store i8 %154, ptr %185, align 1, !tbaa !9
  store i64 %157, ptr %6, align 8, !tbaa !20
  %186 = load ptr, ptr %3, align 8, !tbaa !23
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 %157
  store i8 0, ptr %187, align 1, !tbaa !9
  br i1 %93, label %188, label %194

188:                                              ; preds = %183
  %189 = lshr i32 %110, 6
  %190 = and i32 %189, 63
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !9
  br label %194

194:                                              ; preds = %183, %188
  %195 = phi i8 [ %193, %188 ], [ 61, %183 ]
  %196 = load i64, ptr %6, align 8, !tbaa !20
  %197 = icmp ult i64 %196, 9223372036854775807
  call void @llvm.assume(i1 %197)
  %198 = add nuw nsw i64 %196, 1
  %199 = load ptr, ptr %3, align 8, !tbaa !23
  %200 = icmp eq ptr %199, %5
  %201 = load i64, ptr %5, align 8
  br i1 %200, label %202, label %204

202:                                              ; preds = %194
  %203 = icmp samesign ugt i64 %196, 14
  br i1 %203, label %208, label %224

204:                                              ; preds = %194
  %205 = icmp samesign ugt i64 %201, 14
  call void @llvm.assume(i1 %205)
  %206 = icmp ult i64 %201, 9223372036854775807
  call void @llvm.assume(i1 %206)
  %207 = icmp samesign ult i64 %196, %201
  br i1 %207, label %224, label %208

208:                                              ; preds = %204, %202
  %209 = phi i64 [ %201, %204 ], [ 15, %202 ]
  %210 = icmp eq i64 %198, 9223372036854775807
  br i1 %210, label %130, label %211

211:                                              ; preds = %208
  %212 = shl nuw i64 %209, 1
  %213 = icmp ult i64 %198, %212
  %214 = call i64 @llvm.umin.i64(i64 %212, i64 9223372036854775806)
  %215 = select i1 %213, i64 %214, i64 %198
  %216 = add nuw nsw i64 %215, 1
  %217 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %216) #21
          to label %218 unwind label %271

218:                                              ; preds = %211
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %217, ptr align 1 %199, i64 %196, i1 false)
  br i1 %200, label %219, label %221

219:                                              ; preds = %218
  %220 = icmp samesign ult i64 %196, 16
  call void @llvm.assume(i1 %220)
  br label %223

221:                                              ; preds = %218
  %222 = add i64 %201, 1
  call void @_ZdlPvm(ptr noundef %199, i64 noundef %222) #22
  br label %223

223:                                              ; preds = %221, %219
  store ptr %217, ptr %3, align 8, !tbaa !23
  store i64 %215, ptr %5, align 8, !tbaa !9
  br label %224

224:                                              ; preds = %223, %204, %202
  %225 = phi ptr [ %199, %204 ], [ %217, %223 ], [ %199, %202 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 %196
  store i8 %195, ptr %226, align 1, !tbaa !9
  store i64 %198, ptr %6, align 8, !tbaa !20
  %227 = load ptr, ptr %3, align 8, !tbaa !23
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 %198
  store i8 0, ptr %228, align 1, !tbaa !9
  br i1 %103, label %229, label %234

229:                                              ; preds = %224
  %230 = and i32 %109, 63
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !9
  br label %234

234:                                              ; preds = %224, %229
  %235 = phi i8 [ %233, %229 ], [ 61, %224 ]
  %236 = load i64, ptr %6, align 8, !tbaa !20
  %237 = icmp ult i64 %236, 9223372036854775807
  call void @llvm.assume(i1 %237)
  %238 = add nuw nsw i64 %236, 1
  %239 = load ptr, ptr %3, align 8, !tbaa !23
  %240 = icmp eq ptr %239, %5
  %241 = load i64, ptr %5, align 8
  br i1 %240, label %242, label %244

242:                                              ; preds = %234
  %243 = icmp samesign ugt i64 %236, 14
  br i1 %243, label %248, label %264

244:                                              ; preds = %234
  %245 = icmp samesign ugt i64 %241, 14
  call void @llvm.assume(i1 %245)
  %246 = icmp ult i64 %241, 9223372036854775807
  call void @llvm.assume(i1 %246)
  %247 = icmp samesign ult i64 %236, %241
  br i1 %247, label %264, label %248

248:                                              ; preds = %244, %242
  %249 = phi i64 [ %241, %244 ], [ 15, %242 ]
  %250 = icmp eq i64 %238, 9223372036854775807
  br i1 %250, label %130, label %251

251:                                              ; preds = %248
  %252 = shl nuw i64 %249, 1
  %253 = icmp ult i64 %238, %252
  %254 = call i64 @llvm.umin.i64(i64 %252, i64 9223372036854775806)
  %255 = select i1 %253, i64 %254, i64 %238
  %256 = add nuw nsw i64 %255, 1
  %257 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %256) #21
          to label %258 unwind label %271

258:                                              ; preds = %251
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %257, ptr align 1 %239, i64 %236, i1 false)
  br i1 %240, label %259, label %261

259:                                              ; preds = %258
  %260 = icmp samesign ult i64 %236, 16
  call void @llvm.assume(i1 %260)
  br label %263

261:                                              ; preds = %258
  %262 = add i64 %241, 1
  call void @_ZdlPvm(ptr noundef %239, i64 noundef %262) #22
  br label %263

263:                                              ; preds = %261, %259
  store ptr %257, ptr %3, align 8, !tbaa !23
  store i64 %255, ptr %5, align 8, !tbaa !9
  br label %264

264:                                              ; preds = %263, %244, %242
  %265 = phi ptr [ %239, %244 ], [ %257, %263 ], [ %239, %242 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %236
  store i8 %235, ptr %266, align 1, !tbaa !9
  store i64 %238, ptr %6, align 8, !tbaa !20
  %267 = load ptr, ptr %3, align 8, !tbaa !23
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 %238
  store i8 0, ptr %268, align 1, !tbaa !9
  %269 = add i64 %87, 3
  %270 = icmp ult i64 %269, %0
  br i1 %270, label %86, label %23, !llvm.loop !59

271:                                              ; preds = %132, %170, %211, %251
  %272 = landingpad { ptr, i32 }
          cleanup
  br label %298

273:                                              ; preds = %130
  %274 = landingpad { ptr, i32 }
          cleanup
  br label %298

275:                                              ; preds = %78, %73
  %276 = phi ptr [ %83, %78 ], [ %74, %73 ]
  %277 = getelementptr inbounds i8, ptr %276, i64 -32
  %278 = load ptr, ptr %277, align 8, !tbaa !23
  %279 = load ptr, ptr %4, align 8, !tbaa !23
  %280 = icmp eq ptr %279, %27
  br i1 %280, label %284, label %281

281:                                              ; preds = %275
  %282 = load i64, ptr %27, align 8, !tbaa !9
  %283 = add i64 %282, 1
  call void @_ZdlPvm(ptr noundef %279, i64 noundef %283) #22
  br label %284

284:                                              ; preds = %275, %281
  %285 = load ptr, ptr %3, align 8, !tbaa !23
  %286 = icmp eq ptr %285, %5
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i64, ptr %5, align 8, !tbaa !9
  %289 = add i64 %288, 1
  call void @_ZdlPvm(ptr noundef %285, i64 noundef %289) #22
  br label %290

290:                                              ; preds = %284, %287
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %278

291:                                              ; preds = %70, %42
  %292 = landingpad { ptr, i32 }
          cleanup
  %293 = load ptr, ptr %4, align 8, !tbaa !23
  %294 = icmp eq ptr %293, %27
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = load i64, ptr %27, align 8, !tbaa !9
  %297 = add i64 %296, 1
  call void @_ZdlPvm(ptr noundef %293, i64 noundef %297) #22
  br label %298

298:                                              ; preds = %291, %271, %273, %295, %84
  %299 = phi { ptr, i32 } [ %292, %295 ], [ %85, %84 ], [ %274, %273 ], [ %272, %271 ], [ %292, %291 ]
  %300 = load ptr, ptr %3, align 8, !tbaa !23
  %301 = icmp eq ptr %300, %5
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = load i64, ptr %5, align 8, !tbaa !9
  %304 = add i64 %303, 1
  call void @_ZdlPvm(ptr noundef %300, i64 noundef %304) #22
  br label %305

305:                                              ; preds = %298, %302
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %299
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2514_5_1125sys__native_base64_decodeEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib13base64_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = and i64 %0, 3
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %10, ptr %3, align 8, !tbaa !16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %11, align 8, !tbaa !20
  store i8 0, ptr %10, align 8, !tbaa !9
  %12 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17, !prof !24

14:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %15 unwind label %65

15:                                               ; preds = %14
  %16 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = getelementptr inbounds i8, ptr %22, i64 -32
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %26, ptr %20, align 8, !tbaa !16
  %27 = load ptr, ptr %3, align 8, !tbaa !23
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %11, align 8, !tbaa !20
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %27, ptr %20, align 8, !tbaa !23
  %34 = load i64, ptr %10, align 8, !tbaa !9
  store i64 %34, ptr %26, align 8, !tbaa !9
  %35 = load i64, ptr %11, align 8, !tbaa !20
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %35, %33 ], [ %30, %29 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !20
  store ptr %10, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %11, align 8, !tbaa !20
  store i8 0, ptr %10, align 8, !tbaa !9
  %40 = load ptr, ptr %19, align 8, !tbaa !25
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %19, align 8, !tbaa !25
  br label %45

42:                                               ; preds = %17
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %65

43:                                               ; preds = %42
  %44 = load ptr, ptr %19, align 8, !tbaa !32, !noalias !60
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !36, !noalias !60
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !37, !noalias !60
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = load ptr, ptr %3, align 8, !tbaa !23
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %490, label %62

62:                                               ; preds = %56
  %63 = load i64, ptr %10, align 8, !tbaa !9
  %64 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %64) #22
  br label %490

65:                                               ; preds = %42, %14
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %3, align 8, !tbaa !23
  %68 = icmp eq ptr %67, %10
  br i1 %68, label %492, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %10, align 8, !tbaa !9
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %67, i64 noundef %71) #22
  br label %492

72:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %73, ptr %4, align 8, !tbaa !16
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %74, align 8, !tbaa !20
  store i8 0, ptr %73, align 8, !tbaa !9
  %75 = lshr exact i64 %0, 2
  %76 = mul nuw i64 %75, 3
  %77 = icmp ugt i64 %0, 20
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = icmp ugt i64 %0, -6148914691236517208
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %81 unwind label %90

81:                                               ; preds = %80
  unreachable

82:                                               ; preds = %78
  %83 = call i64 @llvm.umax.i64(i64 %76, i64 30)
  %84 = add nuw nsw i64 %83, 1
  %85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %84) #21
          to label %86 unwind label %90

86:                                               ; preds = %82
  store i8 0, ptr %85, align 1, !tbaa !9
  store ptr %85, ptr %4, align 8, !tbaa !23
  store i64 %83, ptr %73, align 8, !tbaa !9
  br label %89

87:                                               ; preds = %72
  %88 = icmp eq i64 %0, 0
  br i1 %88, label %395, label %89

89:                                               ; preds = %86, %87
  br label %92

90:                                               ; preds = %82, %80
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %482

92:                                               ; preds = %89, %390
  %93 = phi i64 [ %391, %390 ], [ 0, %89 ]
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = zext i8 %95 to i32
  %97 = add i8 %95, -65
  %98 = icmp ult i8 %97, 26
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = add nsw i32 %96, -65
  br label %116

101:                                              ; preds = %92
  %102 = add i8 %95, -97
  %103 = icmp ult i8 %102, 26
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = add nsw i32 %96, -71
  br label %116

106:                                              ; preds = %101
  %107 = add i8 %95, -48
  %108 = icmp ult i8 %107, 10
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = add nuw nsw i32 %96, 4
  br label %116

111:                                              ; preds = %106
  %112 = icmp eq i8 %95, 47
  %113 = select i1 %112, i32 63, i32 -1
  %114 = icmp eq i8 %95, 43
  %115 = select i1 %114, i32 62, i32 %113
  br label %116

116:                                              ; preds = %99, %104, %109, %111
  %117 = phi i32 [ %100, %99 ], [ %105, %104 ], [ %110, %109 ], [ %115, %111 ]
  %118 = getelementptr inbounds nuw i8, ptr %94, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  %121 = add i8 %119, -65
  %122 = icmp ult i8 %121, 26
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = add nsw i32 %120, -65
  br label %140

125:                                              ; preds = %116
  %126 = add i8 %119, -97
  %127 = icmp ult i8 %126, 26
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = add nsw i32 %120, -71
  br label %140

130:                                              ; preds = %125
  %131 = add i8 %119, -48
  %132 = icmp ult i8 %131, 10
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = add nuw nsw i32 %120, 4
  br label %140

135:                                              ; preds = %130
  %136 = icmp eq i8 %119, 47
  %137 = select i1 %136, i32 63, i32 -1
  %138 = icmp eq i8 %119, 43
  %139 = select i1 %138, i32 62, i32 %137
  br label %140

140:                                              ; preds = %123, %128, %133, %135
  %141 = phi i32 [ %124, %123 ], [ %129, %128 ], [ %134, %133 ], [ %139, %135 ]
  %142 = getelementptr inbounds nuw i8, ptr %94, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = icmp eq i8 %143, 61
  br i1 %144, label %166, label %145

145:                                              ; preds = %140
  %146 = zext i8 %143 to i32
  %147 = add i8 %143, -65
  %148 = icmp ult i8 %147, 26
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = add nsw i32 %146, -65
  br label %166

151:                                              ; preds = %145
  %152 = add i8 %143, -97
  %153 = icmp ult i8 %152, 26
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = add nsw i32 %146, -71
  br label %166

156:                                              ; preds = %151
  %157 = add i8 %143, -48
  %158 = icmp ult i8 %157, 10
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = add nuw nsw i32 %146, 4
  br label %166

161:                                              ; preds = %156
  %162 = icmp eq i8 %143, 47
  %163 = select i1 %162, i32 63, i32 -1
  %164 = icmp eq i8 %143, 43
  %165 = select i1 %164, i32 62, i32 %163
  br label %166

166:                                              ; preds = %161, %159, %154, %149, %140
  %167 = phi i32 [ 0, %140 ], [ %150, %149 ], [ %155, %154 ], [ %160, %159 ], [ %165, %161 ]
  %168 = getelementptr inbounds nuw i8, ptr %94, i64 3
  %169 = load i8, ptr %168, align 1, !tbaa !9
  %170 = icmp eq i8 %169, 61
  br i1 %170, label %192, label %171

171:                                              ; preds = %166
  %172 = zext i8 %169 to i32
  %173 = add i8 %169, -65
  %174 = icmp ult i8 %173, 26
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = add nsw i32 %172, -65
  br label %192

177:                                              ; preds = %171
  %178 = add i8 %169, -97
  %179 = icmp ult i8 %178, 26
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = add nsw i32 %172, -71
  br label %192

182:                                              ; preds = %177
  %183 = add i8 %169, -48
  %184 = icmp ult i8 %183, 10
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = add nuw nsw i32 %172, 4
  br label %192

187:                                              ; preds = %182
  %188 = icmp eq i8 %169, 47
  %189 = select i1 %188, i32 63, i32 -1
  %190 = icmp eq i8 %169, 43
  %191 = select i1 %190, i32 62, i32 %189
  br label %192

192:                                              ; preds = %187, %185, %180, %175, %166
  %193 = phi i32 [ 0, %166 ], [ %176, %175 ], [ %181, %180 ], [ %186, %185 ], [ %191, %187 ]
  %194 = or i32 %141, %117
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = icmp ne i8 %143, 61
  %198 = icmp slt i32 %167, 0
  %199 = and i1 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = icmp ne i8 %169, 61
  %202 = icmp slt i32 %193, 0
  %203 = and i1 %201, %202
  br i1 %203, label %204, label %266

204:                                              ; preds = %200, %196, %192
  %205 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %205, ptr %5, align 8, !tbaa !16
  %206 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %206, align 8, !tbaa !20
  store i8 0, ptr %205, align 8, !tbaa !9
  %207 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %212, !prof !24

209:                                              ; preds = %204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %210 unwind label %259

210:                                              ; preds = %209
  %211 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %212

212:                                              ; preds = %210, %204
  %213 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 48
  %215 = load ptr, ptr %214, align 8, !tbaa !25
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 64
  %217 = load ptr, ptr %216, align 8, !tbaa !31
  %218 = getelementptr inbounds i8, ptr %217, i64 -32
  %219 = icmp eq ptr %215, %218
  br i1 %219, label %237, label %220

220:                                              ; preds = %212
  %221 = getelementptr inbounds nuw i8, ptr %215, i64 16
  store ptr %221, ptr %215, align 8, !tbaa !16
  %222 = load ptr, ptr %5, align 8, !tbaa !23
  %223 = icmp eq ptr %222, %205
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i64, ptr %206, align 8, !tbaa !20
  %226 = icmp ult i64 %225, 16
  call void @llvm.assume(i1 %226)
  %227 = add nuw nsw i64 %225, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %221, ptr noundef nonnull align 8 dereferenceable(1) %205, i64 %227, i1 false)
  br label %231

228:                                              ; preds = %220
  store ptr %222, ptr %215, align 8, !tbaa !23
  %229 = load i64, ptr %205, align 8, !tbaa !9
  store i64 %229, ptr %221, align 8, !tbaa !9
  %230 = load i64, ptr %206, align 8, !tbaa !20
  br label %231

231:                                              ; preds = %228, %224
  %232 = phi i64 [ %230, %228 ], [ %225, %224 ]
  %233 = icmp ult i64 %232, 9223372036854775807
  call void @llvm.assume(i1 %233)
  %234 = getelementptr inbounds nuw i8, ptr %215, i64 8
  store i64 %232, ptr %234, align 8, !tbaa !20
  store ptr %205, ptr %5, align 8, !tbaa !23
  store i64 0, ptr %206, align 8, !tbaa !20
  store i8 0, ptr %205, align 8, !tbaa !9
  %235 = load ptr, ptr %214, align 8, !tbaa !25
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 32
  store ptr %236, ptr %214, align 8, !tbaa !25
  br label %240

237:                                              ; preds = %212
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %213, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %238 unwind label %259

238:                                              ; preds = %237
  %239 = load ptr, ptr %214, align 8, !tbaa !32, !noalias !63
  br label %240

240:                                              ; preds = %238, %231
  %241 = phi ptr [ %236, %231 ], [ %239, %238 ]
  %242 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %243 = load ptr, ptr %242, align 8, !tbaa !36, !noalias !63
  %244 = icmp eq ptr %241, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = getelementptr inbounds nuw i8, ptr %213, i64 72
  %247 = load ptr, ptr %246, align 8, !tbaa !37, !noalias !63
  %248 = getelementptr inbounds i8, ptr %247, i64 -8
  %249 = load ptr, ptr %248, align 8, !tbaa !38
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 512
  br label %251

251:                                              ; preds = %245, %240
  %252 = phi ptr [ %250, %245 ], [ %241, %240 ]
  %253 = getelementptr inbounds i8, ptr %252, i64 -32
  %254 = load ptr, ptr %253, align 8, !tbaa !23
  %255 = load ptr, ptr %5, align 8, !tbaa !23
  %256 = icmp eq ptr %255, %205
  br i1 %256, label %474, label %257

257:                                              ; preds = %251
  %258 = load i64, ptr %205, align 8, !tbaa !9
  br label %469

259:                                              ; preds = %237, %209
  %260 = landingpad { ptr, i32 }
          cleanup
  %261 = load ptr, ptr %5, align 8, !tbaa !23
  %262 = icmp eq ptr %261, %205
  br i1 %262, label %482, label %263

263:                                              ; preds = %259
  %264 = load i64, ptr %205, align 8, !tbaa !9
  %265 = add i64 %264, 1
  call void @_ZdlPvm(ptr noundef %261, i64 noundef %265) #22
  br label %482

266:                                              ; preds = %200
  %267 = shl nsw i32 %117, 18
  %268 = shl nsw i32 %141, 12
  %269 = or i32 %268, %267
  %270 = shl nsw i32 %167, 6
  %271 = or i32 %269, %270
  %272 = or i32 %271, %193
  %273 = lshr i32 %272, 16
  %274 = trunc i32 %273 to i8
  %275 = load i64, ptr %74, align 8, !tbaa !20
  %276 = icmp ult i64 %275, 9223372036854775807
  call void @llvm.assume(i1 %276)
  %277 = add nuw nsw i64 %275, 1
  %278 = load ptr, ptr %4, align 8, !tbaa !23
  %279 = icmp eq ptr %278, %73
  %280 = load i64, ptr %73, align 8
  br i1 %279, label %281, label %283

281:                                              ; preds = %266
  %282 = icmp samesign ugt i64 %275, 14
  br i1 %282, label %287, label %305

283:                                              ; preds = %266
  %284 = icmp samesign ugt i64 %280, 14
  call void @llvm.assume(i1 %284)
  %285 = icmp ult i64 %280, 9223372036854775807
  call void @llvm.assume(i1 %285)
  %286 = icmp samesign ult i64 %275, %280
  br i1 %286, label %305, label %287

287:                                              ; preds = %283, %281
  %288 = phi i64 [ %280, %283 ], [ 15, %281 ]
  %289 = icmp eq i64 %277, 9223372036854775807
  br i1 %289, label %290, label %292

290:                                              ; preds = %327, %287, %369
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %291 unwind label %350

291:                                              ; preds = %290
  unreachable

292:                                              ; preds = %287
  %293 = shl nuw i64 %288, 1
  %294 = icmp ult i64 %277, %293
  %295 = call i64 @llvm.umin.i64(i64 %293, i64 9223372036854775806)
  %296 = select i1 %294, i64 %295, i64 %277
  %297 = add nuw nsw i64 %296, 1
  %298 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %297) #21
          to label %299 unwind label %348

299:                                              ; preds = %292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %298, ptr align 1 %278, i64 %275, i1 false)
  br i1 %279, label %300, label %302

300:                                              ; preds = %299
  %301 = icmp samesign ult i64 %275, 16
  call void @llvm.assume(i1 %301)
  br label %304

302:                                              ; preds = %299
  %303 = add i64 %280, 1
  call void @_ZdlPvm(ptr noundef %278, i64 noundef %303) #22
  br label %304

304:                                              ; preds = %302, %300
  store ptr %298, ptr %4, align 8, !tbaa !23
  store i64 %296, ptr %73, align 8, !tbaa !9
  br label %305

305:                                              ; preds = %304, %283, %281
  %306 = phi ptr [ %278, %283 ], [ %298, %304 ], [ %278, %281 ]
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %275
  store i8 %274, ptr %307, align 1, !tbaa !9
  store i64 %277, ptr %74, align 8, !tbaa !20
  %308 = load ptr, ptr %4, align 8, !tbaa !23
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 %277
  store i8 0, ptr %309, align 1, !tbaa !9
  %310 = load i8, ptr %142, align 1, !tbaa !9
  %311 = icmp eq i8 %310, 61
  br i1 %311, label %352, label %312

312:                                              ; preds = %305
  %313 = lshr i32 %272, 8
  %314 = trunc i32 %313 to i8
  %315 = load i64, ptr %74, align 8, !tbaa !20
  %316 = icmp ult i64 %315, 9223372036854775807
  call void @llvm.assume(i1 %316)
  %317 = add nuw nsw i64 %315, 1
  %318 = load ptr, ptr %4, align 8, !tbaa !23
  %319 = icmp eq ptr %318, %73
  %320 = load i64, ptr %73, align 8
  br i1 %319, label %321, label %323

321:                                              ; preds = %312
  %322 = icmp samesign ugt i64 %315, 14
  br i1 %322, label %327, label %343

323:                                              ; preds = %312
  %324 = icmp samesign ugt i64 %320, 14
  call void @llvm.assume(i1 %324)
  %325 = icmp ult i64 %320, 9223372036854775807
  call void @llvm.assume(i1 %325)
  %326 = icmp samesign ult i64 %315, %320
  br i1 %326, label %343, label %327

327:                                              ; preds = %323, %321
  %328 = phi i64 [ %320, %323 ], [ 15, %321 ]
  %329 = icmp eq i64 %317, 9223372036854775807
  br i1 %329, label %290, label %330

330:                                              ; preds = %327
  %331 = shl nuw i64 %328, 1
  %332 = icmp ult i64 %317, %331
  %333 = call i64 @llvm.umin.i64(i64 %331, i64 9223372036854775806)
  %334 = select i1 %332, i64 %333, i64 %317
  %335 = add nuw nsw i64 %334, 1
  %336 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %335) #21
          to label %337 unwind label %348

337:                                              ; preds = %330
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %336, ptr align 1 %318, i64 %315, i1 false)
  br i1 %319, label %338, label %340

338:                                              ; preds = %337
  %339 = icmp samesign ult i64 %315, 16
  call void @llvm.assume(i1 %339)
  br label %342

340:                                              ; preds = %337
  %341 = add i64 %320, 1
  call void @_ZdlPvm(ptr noundef %318, i64 noundef %341) #22
  br label %342

342:                                              ; preds = %340, %338
  store ptr %336, ptr %4, align 8, !tbaa !23
  store i64 %334, ptr %73, align 8, !tbaa !9
  br label %343

343:                                              ; preds = %321, %323, %342
  %344 = phi ptr [ %318, %323 ], [ %336, %342 ], [ %318, %321 ]
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %315
  store i8 %314, ptr %345, align 1, !tbaa !9
  store i64 %317, ptr %74, align 8, !tbaa !20
  %346 = load ptr, ptr %4, align 8, !tbaa !23
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %317
  store i8 0, ptr %347, align 1, !tbaa !9
  br label %352

348:                                              ; preds = %292, %330, %372
  %349 = landingpad { ptr, i32 }
          cleanup
  br label %482

350:                                              ; preds = %290
  %351 = landingpad { ptr, i32 }
          cleanup
  br label %482

352:                                              ; preds = %343, %305
  %353 = load i8, ptr %168, align 1, !tbaa !9
  %354 = icmp eq i8 %353, 61
  br i1 %354, label %390, label %355

355:                                              ; preds = %352
  %356 = trunc i32 %272 to i8
  %357 = load i64, ptr %74, align 8, !tbaa !20
  %358 = icmp ult i64 %357, 9223372036854775807
  call void @llvm.assume(i1 %358)
  %359 = add nuw nsw i64 %357, 1
  %360 = load ptr, ptr %4, align 8, !tbaa !23
  %361 = icmp eq ptr %360, %73
  %362 = load i64, ptr %73, align 8
  br i1 %361, label %363, label %365

363:                                              ; preds = %355
  %364 = icmp samesign ugt i64 %357, 14
  br i1 %364, label %369, label %385

365:                                              ; preds = %355
  %366 = icmp samesign ugt i64 %362, 14
  call void @llvm.assume(i1 %366)
  %367 = icmp ult i64 %362, 9223372036854775807
  call void @llvm.assume(i1 %367)
  %368 = icmp samesign ult i64 %357, %362
  br i1 %368, label %385, label %369

369:                                              ; preds = %365, %363
  %370 = phi i64 [ %362, %365 ], [ 15, %363 ]
  %371 = icmp eq i64 %359, 9223372036854775807
  br i1 %371, label %290, label %372

372:                                              ; preds = %369
  %373 = shl nuw i64 %370, 1
  %374 = icmp ult i64 %359, %373
  %375 = call i64 @llvm.umin.i64(i64 %373, i64 9223372036854775806)
  %376 = select i1 %374, i64 %375, i64 %359
  %377 = add nuw nsw i64 %376, 1
  %378 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %377) #21
          to label %379 unwind label %348

379:                                              ; preds = %372
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %378, ptr align 1 %360, i64 %357, i1 false)
  br i1 %361, label %380, label %382

380:                                              ; preds = %379
  %381 = icmp samesign ult i64 %357, 16
  call void @llvm.assume(i1 %381)
  br label %384

382:                                              ; preds = %379
  %383 = add i64 %362, 1
  call void @_ZdlPvm(ptr noundef %360, i64 noundef %383) #22
  br label %384

384:                                              ; preds = %382, %380
  store ptr %378, ptr %4, align 8, !tbaa !23
  store i64 %376, ptr %73, align 8, !tbaa !9
  br label %385

385:                                              ; preds = %363, %365, %384
  %386 = phi ptr [ %360, %365 ], [ %378, %384 ], [ %360, %363 ]
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 %357
  store i8 %356, ptr %387, align 1, !tbaa !9
  store i64 %359, ptr %74, align 8, !tbaa !20
  %388 = load ptr, ptr %4, align 8, !tbaa !23
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 %359
  store i8 0, ptr %389, align 1, !tbaa !9
  br label %390

390:                                              ; preds = %352, %385
  %391 = add i64 %93, 4
  %392 = icmp ult i64 %391, %0
  br i1 %392, label %92, label %393, !llvm.loop !66

393:                                              ; preds = %390
  %394 = load ptr, ptr %4, align 8, !tbaa !23
  br label %395

395:                                              ; preds = %393, %87
  %396 = phi ptr [ %394, %393 ], [ %73, %87 ]
  %397 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %397, ptr %6, align 8, !tbaa !16
  %398 = icmp eq ptr %396, %73
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i64, ptr %74, align 8, !tbaa !20
  %401 = icmp ult i64 %400, 16
  call void @llvm.assume(i1 %401)
  %402 = add nuw nsw i64 %400, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %397, ptr noundef nonnull align 8 dereferenceable(1) %73, i64 %402, i1 false)
  br label %406

403:                                              ; preds = %395
  store ptr %396, ptr %6, align 8, !tbaa !23
  %404 = load i64, ptr %73, align 8, !tbaa !9
  store i64 %404, ptr %397, align 8, !tbaa !9
  %405 = load i64, ptr %74, align 8, !tbaa !20
  br label %406

406:                                              ; preds = %399, %403
  %407 = phi i64 [ %400, %399 ], [ %405, %403 ]
  %408 = icmp ult i64 %407, 9223372036854775807
  call void @llvm.assume(i1 %408)
  %409 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %407, ptr %409, align 8, !tbaa !20
  store ptr %73, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %74, align 8, !tbaa !20
  store i8 0, ptr %73, align 8, !tbaa !9
  %410 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %415, !prof !24

412:                                              ; preds = %406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %413 unwind label %462

413:                                              ; preds = %412
  %414 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %415

415:                                              ; preds = %413, %406
  %416 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %417 = getelementptr inbounds nuw i8, ptr %416, i64 48
  %418 = load ptr, ptr %417, align 8, !tbaa !25
  %419 = getelementptr inbounds nuw i8, ptr %416, i64 64
  %420 = load ptr, ptr %419, align 8, !tbaa !31
  %421 = getelementptr inbounds i8, ptr %420, i64 -32
  %422 = icmp eq ptr %418, %421
  br i1 %422, label %440, label %423

423:                                              ; preds = %415
  %424 = getelementptr inbounds nuw i8, ptr %418, i64 16
  store ptr %424, ptr %418, align 8, !tbaa !16
  %425 = load ptr, ptr %6, align 8, !tbaa !23
  %426 = icmp eq ptr %425, %397
  br i1 %426, label %427, label %431

427:                                              ; preds = %423
  %428 = load i64, ptr %409, align 8, !tbaa !20
  %429 = icmp ult i64 %428, 16
  call void @llvm.assume(i1 %429)
  %430 = add nuw nsw i64 %428, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %424, ptr noundef nonnull align 8 dereferenceable(1) %397, i64 %430, i1 false)
  br label %434

431:                                              ; preds = %423
  store ptr %425, ptr %418, align 8, !tbaa !23
  %432 = load i64, ptr %397, align 8, !tbaa !9
  store i64 %432, ptr %424, align 8, !tbaa !9
  %433 = load i64, ptr %409, align 8, !tbaa !20
  br label %434

434:                                              ; preds = %431, %427
  %435 = phi i64 [ %433, %431 ], [ %428, %427 ]
  %436 = icmp ult i64 %435, 9223372036854775807
  call void @llvm.assume(i1 %436)
  %437 = getelementptr inbounds nuw i8, ptr %418, i64 8
  store i64 %435, ptr %437, align 8, !tbaa !20
  store ptr %397, ptr %6, align 8, !tbaa !23
  store i64 0, ptr %409, align 8, !tbaa !20
  store i8 0, ptr %397, align 8, !tbaa !9
  %438 = load ptr, ptr %417, align 8, !tbaa !25
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 32
  store ptr %439, ptr %417, align 8, !tbaa !25
  br label %443

440:                                              ; preds = %415
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %416, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %441 unwind label %462

441:                                              ; preds = %440
  %442 = load ptr, ptr %417, align 8, !tbaa !32, !noalias !67
  br label %443

443:                                              ; preds = %441, %434
  %444 = phi ptr [ %439, %434 ], [ %442, %441 ]
  %445 = getelementptr inbounds nuw i8, ptr %416, i64 56
  %446 = load ptr, ptr %445, align 8, !tbaa !36, !noalias !67
  %447 = icmp eq ptr %444, %446
  br i1 %447, label %448, label %454

448:                                              ; preds = %443
  %449 = getelementptr inbounds nuw i8, ptr %416, i64 72
  %450 = load ptr, ptr %449, align 8, !tbaa !37, !noalias !67
  %451 = getelementptr inbounds i8, ptr %450, i64 -8
  %452 = load ptr, ptr %451, align 8, !tbaa !38
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 512
  br label %454

454:                                              ; preds = %448, %443
  %455 = phi ptr [ %453, %448 ], [ %444, %443 ]
  %456 = getelementptr inbounds i8, ptr %455, i64 -32
  %457 = load ptr, ptr %456, align 8, !tbaa !23
  %458 = load ptr, ptr %6, align 8, !tbaa !23
  %459 = icmp eq ptr %458, %397
  br i1 %459, label %474, label %460

460:                                              ; preds = %454
  %461 = load i64, ptr %397, align 8, !tbaa !9
  br label %469

462:                                              ; preds = %440, %412
  %463 = landingpad { ptr, i32 }
          cleanup
  %464 = load ptr, ptr %6, align 8, !tbaa !23
  %465 = icmp eq ptr %464, %397
  br i1 %465, label %482, label %466

466:                                              ; preds = %462
  %467 = load i64, ptr %397, align 8, !tbaa !9
  %468 = add i64 %467, 1
  call void @_ZdlPvm(ptr noundef %464, i64 noundef %468) #22
  br label %482

469:                                              ; preds = %460, %257
  %470 = phi i64 [ %258, %257 ], [ %461, %460 ]
  %471 = phi ptr [ %255, %257 ], [ %458, %460 ]
  %472 = phi ptr [ %254, %257 ], [ %457, %460 ]
  %473 = add i64 %470, 1
  call void @_ZdlPvm(ptr noundef %471, i64 noundef %473) #22
  br label %474

474:                                              ; preds = %469, %454, %251
  %475 = phi ptr [ %457, %454 ], [ %254, %251 ], [ %472, %469 ]
  %476 = load ptr, ptr %4, align 8, !tbaa !23
  %477 = icmp eq ptr %476, %73
  br i1 %477, label %481, label %478

478:                                              ; preds = %474
  %479 = load i64, ptr %73, align 8, !tbaa !9
  %480 = add i64 %479, 1
  call void @_ZdlPvm(ptr noundef %476, i64 noundef %480) #22
  br label %481

481:                                              ; preds = %474, %478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %490

482:                                              ; preds = %462, %259, %348, %350, %466, %263, %90
  %483 = phi { ptr, i32 } [ %260, %263 ], [ %91, %90 ], [ %260, %259 ], [ %463, %466 ], [ %351, %350 ], [ %349, %348 ], [ %463, %462 ]
  %484 = load ptr, ptr %4, align 8, !tbaa !23
  %485 = icmp eq ptr %484, %73
  br i1 %485, label %489, label %486

486:                                              ; preds = %482
  %487 = load i64, ptr %73, align 8, !tbaa !9
  %488 = add i64 %487, 1
  call void @_ZdlPvm(ptr noundef %484, i64 noundef %488) #22
  br label %489

489:                                              ; preds = %482, %486
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %492

490:                                              ; preds = %56, %62, %481
  %491 = phi ptr [ %475, %481 ], [ %59, %62 ], [ %59, %56 ]
  ret ptr %491

492:                                              ; preds = %65, %69, %489
  %493 = phi { ptr, i32 } [ %483, %489 ], [ %66, %69 ], [ %66, %65 ]
  resume { ptr, i32 } %493
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_ascii_validate(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = icmp samesign eq i64 %4, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %0, %3 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 1, %7 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_utf8_validate(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %32 ], [ %27, %37 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
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
  br i1 %17, label %6, label %33, !llvm.loop !10

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !10

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %42 ], [ 0, %38 ], [ 0, %33 ], [ 1, %6 ], [ 0, %24 ], [ 0, %29 ], [ 0, %21 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_utf8_char_count(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
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
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !9
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !9
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !70

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
  %39 = load i8, ptr %38, align 1, !tbaa !9
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
  br i1 %44, label %6, label %60, !llvm.loop !10

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !10

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !71

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %80, %73 ], [ 0, %69 ], [ %31, %29 ], [ 0, %65 ], [ 0, %60 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_hex_encode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_hex_decode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10hex_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_encode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_url_decode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib10url_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_base64_encode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_base64_decode(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib13base64_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 16
  %3 = alloca %"struct.std::_Deque_iterator", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !38, !noalias !72
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !38
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !75, !noalias !72
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !75
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !38, !noalias !76
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !38
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !75, !noalias !76
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !75
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !79
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !80
  %21 = load ptr, ptr %9, align 8, !tbaa !81
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #22
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !82

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !79
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !83
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #22
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !83
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !84

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #21
  store ptr %12, ptr %0, align 8, !tbaa !79
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !38
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !85

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #13
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #22
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !82

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #25
          to label %40 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %41 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #24
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #13
  %44 = load ptr, ptr %0, align 8, !tbaa !79
  %45 = load i64, ptr %6, align 8, !tbaa !83
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %69 unwind label %47

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %49 unwind label %66

49:                                               ; preds = %47
  resume { ptr, i32 } %48

50:                                               ; preds = %21
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %15, ptr %52, align 8, !tbaa !37
  %53 = load ptr, ptr %15, align 8, !tbaa !38
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !36
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !86
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !37
  %60 = load ptr, ptr %58, align 8, !tbaa !38
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !36
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !86
  store ptr %53, ptr %51, align 8, !tbaa !87
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !25
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #24
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !37
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !37
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !32
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !9
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #22
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !9
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #22
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !23
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !9
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #22
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !9
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #22
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !23
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !9
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #22
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !9
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #22
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !23
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !9
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #22
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !23
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !9
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #22
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !23
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !9
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #22
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !23
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !9
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #22
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !23
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !9
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #22
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !23
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !9
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #22
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !9
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #22
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !23
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !9
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #22
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !23
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !9
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #22
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !23
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !9
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #22
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !37
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !88

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !86
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !23
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !9
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #22
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !89

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !36
  %168 = load ptr, ptr %2, align 8, !tbaa !32
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !23
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !9
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #22
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !89

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !32
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !23
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !9
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #22
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !89

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = load ptr, ptr %4, align 8, !tbaa !32
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 5
  %32 = add nsw i64 %24, %31
  %33 = icmp ult i64 %32, 576460752303423488
  tail call void @llvm.assume(i1 %33)
  %34 = icmp eq i64 %32, 576460752303423487
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !83
  %39 = load ptr, ptr %0, align 8, !tbaa !79
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !81
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !38
  %51 = load ptr, ptr %3, align 8, !tbaa !25
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !16
  %53 = load ptr, ptr %1, align 8, !tbaa !23
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !20
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !23
  %62 = load i64, ptr %54, align 8, !tbaa !9
  store i64 %62, ptr %52, align 8, !tbaa !9
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !20
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !20
  store ptr %54, ptr %1, align 8, !tbaa !23
  store i64 0, ptr %64, align 8, !tbaa !20
  store i8 0, ptr %54, align 8, !tbaa !9
  %68 = load ptr, ptr %5, align 8, !tbaa !81
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !37
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  store ptr %70, ptr %18, align 8, !tbaa !36
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !86
  store ptr %70, ptr %3, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !79
  %20 = sub i64 %15, %13
  %21 = lshr i64 %20, 1
  %22 = getelementptr inbounds nuw ptr, ptr %19, i64 %21
  %23 = select i1 %2, i64 %1, i64 0
  %24 = getelementptr inbounds nuw ptr, ptr %22, i64 %23
  %25 = icmp ult ptr %24, %7
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %25, label %27, label %36

27:                                               ; preds = %18
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %28, %9
  %30 = icmp sgt i64 %29, 8
  br i1 %30, label %31, label %32, !prof !90

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %35, ptr %24, align 8, !tbaa !38
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !91

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %48, ptr %42, align 8, !tbaa !38
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #21
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !90

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !38
  store ptr %69, ptr %60, align 8, !tbaa !38
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !79
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #22
  store ptr %55, ptr %0, align 8, !tbaa !79
  store i64 %52, ptr %14, align 8, !tbaa !83
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !37
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !36
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !86
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !37
  %81 = load ptr, ptr %80, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !36
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress nofree norecurse nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }

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
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !14, !13}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !22, i64 8, !7, i64 16}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !18, i64 0}
!24 = !{!"branch_weights", i32 1, i32 1023}
!25 = !{!26, !30, i64 48}
!26 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !27, i64 0, !22, i64 8, !29, i64 16, !29, i64 48}
!27 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!28 = !{!"any p2 pointer", !19, i64 0}
!29 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !30, i64 0, !30, i64 8, !30, i64 16, !27, i64 24}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!31 = !{!26, !30, i64 64}
!32 = !{!29, !30, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!35 = distinct !{!35, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!36 = !{!29, !30, i64 8}
!37 = !{!29, !27, i64 24}
!38 = !{!30, !30, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!41 = distinct !{!41, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!44 = distinct !{!44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!45 = distinct !{!45, !11}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!48 = distinct !{!48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!51 = distinct !{!51, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!54 = distinct !{!54, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!55 = distinct !{!55, !11}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!58 = distinct !{!58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!59 = distinct !{!59, !11}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!62 = distinct !{!62, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!65 = distinct !{!65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!66 = distinct !{!66, !11}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!69 = distinct !{!69, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!70 = distinct !{!70, !11, !13, !14}
!71 = distinct !{!71, !11, !14, !13}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!74 = distinct !{!74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!75 = !{!19, !19, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!78 = distinct !{!78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!79 = !{!26, !27, i64 0}
!80 = !{!26, !27, i64 40}
!81 = !{!26, !27, i64 72}
!82 = distinct !{!82, !11}
!83 = !{!26, !22, i64 8}
!84 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!85 = distinct !{!85, !11}
!86 = !{!29, !30, i64 16}
!87 = !{!26, !30, i64 16}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!91 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
