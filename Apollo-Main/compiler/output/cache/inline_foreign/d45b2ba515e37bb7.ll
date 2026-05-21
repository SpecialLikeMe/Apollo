; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/d45b2ba515e37bb7.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/d45b2ba515e37bb7.cpp"
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

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
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
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %10 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN32__apollo_inline_inline_2514_5_1125sys__native_utf8_validateEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %37 ], [ %27, %32 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
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
  %25 = phi i1 [ false, %15 ], [ true, %18 ], [ false, %21 ]
  %26 = phi i64 [ 2, %15 ], [ 3, %18 ], [ 4, %21 ]
  %27 = add i64 %26, %10
  %28 = icmp ugt i64 %27, %4
  br i1 %28, label %46, label %42

29:                                               ; preds = %9
  %30 = add nuw i64 %10, 1
  %31 = icmp ult i64 %10, %4
  br i1 %31, label %6, label %46

32:                                               ; preds = %42
  br i1 %17, label %6, label %33, !llvm.loop !8

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !8

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %38 ], [ 0, %33 ], [ 0, %42 ], [ 0, %24 ], [ 0, %21 ], [ 1, %6 ], [ 0, %29 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2514_5_1127sys__native_utf8_char_countEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %83, label %36

6:                                                ; preds = %65, %59, %64, %56
  %7 = phi i64 [ %57, %56 ], [ %54, %64 ], [ %54, %59 ], [ %54, %65 ]
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
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !5
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !5
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !10

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
  %39 = load i8, ptr %38, align 1, !tbaa !5
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
  %52 = phi i1 [ false, %42 ], [ true, %45 ], [ false, %48 ]
  %53 = phi i64 [ 2, %42 ], [ 3, %45 ], [ 4, %48 ]
  %54 = add i64 %53, %37
  %55 = icmp ugt i64 %54, %4
  br i1 %55, label %83, label %69

56:                                               ; preds = %36
  %57 = add nuw i64 %37, 1
  %58 = icmp ult i64 %37, %4
  br i1 %58, label %6, label %83

59:                                               ; preds = %69
  br i1 %44, label %6, label %60, !llvm.loop !8

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !8

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !13

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %31, %29 ], [ %80, %73 ], [ 0, %65 ], [ 0, %60 ], [ 0, %69 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %7 = shl i64 %0, 1
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = icmp ugt i64 %7, 9223372036854775806
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %12 unwind label %83

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @llvm.umax.i64(i64 %7, i64 30)
  %15 = or disjoint i64 %14, 1
  %16 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #20
          to label %17 unwind label %83

17:                                               ; preds = %13
  store i8 0, ptr %16, align 1, !tbaa !5
  store ptr %16, ptr %3, align 8, !tbaa !21
  store i64 %14, ptr %5, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi ptr [ %16, %17 ], [ %5, %2 ]
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %21 = icmp samesign eq i64 %0, 0
  br i1 %21, label %24, label %85

22:                                               ; preds = %160
  %23 = load ptr, ptr %3, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %19, %18 ]
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %26, ptr %4, align 8, !tbaa !14
  %27 = icmp eq ptr %25, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !tbaa !18
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %31, i1 false)
  br label %35

32:                                               ; preds = %24
  store ptr %25, ptr %4, align 8, !tbaa !21
  %33 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %33, ptr %26, align 8, !tbaa !5
  %34 = load i64, ptr %6, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi i64 [ %29, %28 ], [ %34, %32 ]
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %36, ptr %38, align 8, !tbaa !18
  store ptr %5, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !22

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %193

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !14
  %54 = load ptr, ptr %4, align 8, !tbaa !21
  %55 = icmp eq ptr %54, %26
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !18
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %59, i1 false)
  br label %63

60:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !21
  %61 = load i64, ptr %26, align 8, !tbaa !5
  store i64 %61, ptr %53, align 8, !tbaa !5
  %62 = load i64, ptr %38, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %64, ptr %66, align 8, !tbaa !18
  store ptr %26, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %38, align 8, !tbaa !18
  store i8 0, ptr %26, align 8, !tbaa !5
  %67 = load ptr, ptr %46, align 8, !tbaa !23
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %68, ptr %46, align 8, !tbaa !23
  br label %72

69:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %70 unwind label %193

70:                                               ; preds = %69
  %71 = load ptr, ptr %46, align 8, !tbaa !30, !noalias !31
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %68, %63 ], [ %71, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %75 = load ptr, ptr %74, align 8, !tbaa !34, !noalias !31
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %79 = load ptr, ptr %78, align 8, !tbaa !35, !noalias !31
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 512
  br label %171

83:                                               ; preds = %13, %11
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %203

85:                                               ; preds = %18, %160
  %86 = phi ptr [ %165, %160 ], [ %1, %18 ]
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i32
  %89 = lshr i32 %88, 4
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [17 x i8], ptr @_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !5
  %93 = load i64, ptr %6, align 8, !tbaa !18
  %94 = icmp ult i64 %93, 9223372036854775807
  call void @llvm.assume(i1 %94)
  %95 = add nuw nsw i64 %93, 1
  %96 = load ptr, ptr %3, align 8, !tbaa !21
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %109 unwind label %169

109:                                              ; preds = %108
  unreachable

110:                                              ; preds = %105
  %111 = shl nuw i64 %106, 1
  %112 = icmp ult i64 %95, %111
  %113 = call i64 @llvm.umin.i64(i64 %111, i64 9223372036854775806)
  %114 = select i1 %112, i64 %113, i64 %95
  %115 = add nuw nsw i64 %114, 1
  %116 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %115) #20
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
  call void @_ZdlPvm(ptr noundef %96, i64 noundef %121) #21
  br label %122

122:                                              ; preds = %120, %118
  store ptr %116, ptr %3, align 8, !tbaa !21
  store i64 %114, ptr %5, align 8, !tbaa !5
  br label %123

123:                                              ; preds = %122, %101, %99
  %124 = phi ptr [ %96, %101 ], [ %116, %122 ], [ %96, %99 ]
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 %93
  store i8 %92, ptr %125, align 1, !tbaa !5
  store i64 %95, ptr %6, align 8, !tbaa !18
  %126 = load ptr, ptr %3, align 8, !tbaa !21
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %95
  store i8 0, ptr %127, align 1, !tbaa !5
  %128 = and i32 %88, 15
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds nuw [17 x i8], ptr @_ZZN12__apo_stdlib10hex_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = load i64, ptr %6, align 8, !tbaa !18
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = add nuw nsw i64 %132, 1
  %135 = load ptr, ptr %3, align 8, !tbaa !21
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
  %153 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %152) #20
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
  call void @_ZdlPvm(ptr noundef %135, i64 noundef %158) #21
  br label %159

159:                                              ; preds = %157, %155
  store ptr %153, ptr %3, align 8, !tbaa !21
  store i64 %151, ptr %5, align 8, !tbaa !5
  br label %160

160:                                              ; preds = %159, %140, %138
  %161 = phi ptr [ %135, %140 ], [ %153, %159 ], [ %135, %138 ]
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 %132
  store i8 %131, ptr %162, align 1, !tbaa !5
  store i64 %134, ptr %6, align 8, !tbaa !18
  %163 = load ptr, ptr %3, align 8, !tbaa !21
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 %134
  store i8 0, ptr %164, align 1, !tbaa !5
  %165 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %166 = icmp eq ptr %165, %20
  br i1 %166, label %22, label %85

167:                                              ; preds = %110, %147
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %203

169:                                              ; preds = %108
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %203

171:                                              ; preds = %77, %72
  %172 = phi ptr [ %82, %77 ], [ %73, %72 ]
  %173 = getelementptr inbounds i8, ptr %172, i64 -32
  %174 = load ptr, ptr %173, align 8, !tbaa !21
  %175 = load ptr, ptr %4, align 8, !tbaa !21
  %176 = icmp eq ptr %175, %26
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i64, ptr %38, align 8, !tbaa !18
  %179 = icmp ult i64 %178, 16
  call void @llvm.assume(i1 %179)
  br label %183

180:                                              ; preds = %171
  %181 = load i64, ptr %26, align 8, !tbaa !5
  %182 = add i64 %181, 1
  call void @_ZdlPvm(ptr noundef %175, i64 noundef %182) #21
  br label %183

183:                                              ; preds = %177, %180
  %184 = load ptr, ptr %3, align 8, !tbaa !21
  %185 = icmp eq ptr %184, %5
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i64, ptr %6, align 8, !tbaa !18
  %188 = icmp ult i64 %187, 16
  call void @llvm.assume(i1 %188)
  br label %192

189:                                              ; preds = %183
  %190 = load i64, ptr %5, align 8, !tbaa !5
  %191 = add i64 %190, 1
  call void @_ZdlPvm(ptr noundef %184, i64 noundef %191) #21
  br label %192

192:                                              ; preds = %186, %189
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %174

193:                                              ; preds = %69, %41
  %194 = landingpad { ptr, i32 }
          cleanup
  %195 = load ptr, ptr %4, align 8, !tbaa !21
  %196 = icmp eq ptr %195, %26
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i64, ptr %38, align 8, !tbaa !18
  %199 = icmp ult i64 %198, 16
  call void @llvm.assume(i1 %199)
  br label %203

200:                                              ; preds = %193
  %201 = load i64, ptr %26, align 8, !tbaa !5
  %202 = add i64 %201, 1
  call void @_ZdlPvm(ptr noundef %195, i64 noundef %202) #21
  br label %203

203:                                              ; preds = %167, %169, %200, %197, %83
  %204 = phi { ptr, i32 } [ %84, %83 ], [ %194, %197 ], [ %194, %200 ], [ %168, %167 ], [ %170, %169 ]
  %205 = load ptr, ptr %3, align 8, !tbaa !21
  %206 = icmp eq ptr %205, %5
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i64, ptr %6, align 8, !tbaa !18
  %209 = icmp ult i64 %208, 16
  call void @llvm.assume(i1 %209)
  br label %213

210:                                              ; preds = %203
  %211 = load i64, ptr %5, align 8, !tbaa !5
  %212 = add i64 %211, 1
  call void @_ZdlPvm(ptr noundef %205, i64 noundef %212) #21
  br label %213

213:                                              ; preds = %207, %210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %204
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10hex_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = and i64 %0, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %78, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %10, ptr %3, align 8, !tbaa !14
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %11, align 8, !tbaa !18
  store i8 0, ptr %10, align 8, !tbaa !5
  %12 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17, !prof !22

14:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %15 unwind label %68

15:                                               ; preds = %14
  %16 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %22, i64 -32
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %26, ptr %20, align 8, !tbaa !14
  %27 = load ptr, ptr %3, align 8, !tbaa !21
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %11, align 8, !tbaa !18
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %27, ptr %20, align 8, !tbaa !21
  %34 = load i64, ptr %10, align 8, !tbaa !5
  store i64 %34, ptr %26, align 8, !tbaa !5
  %35 = load i64, ptr %11, align 8, !tbaa !18
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %35, %33 ], [ %30, %29 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !18
  store ptr %10, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %11, align 8, !tbaa !18
  store i8 0, ptr %10, align 8, !tbaa !5
  %40 = load ptr, ptr %19, align 8, !tbaa !23
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %19, align 8, !tbaa !23
  br label %45

42:                                               ; preds = %17
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %68

43:                                               ; preds = %42
  %44 = load ptr, ptr %19, align 8, !tbaa !30, !noalias !37
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !34, !noalias !37
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !35, !noalias !37
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = load ptr, ptr %3, align 8, !tbaa !21
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, ptr %11, align 8, !tbaa !18
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %359

65:                                               ; preds = %56
  %66 = load i64, ptr %10, align 8, !tbaa !5
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %67) #21
  br label %359

68:                                               ; preds = %42, %14
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %3, align 8, !tbaa !21
  %71 = icmp eq ptr %70, %10
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, ptr %11, align 8, !tbaa !18
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  br label %361

75:                                               ; preds = %68
  %76 = load i64, ptr %10, align 8, !tbaa !5
  %77 = add i64 %76, 1
  call void @_ZdlPvm(ptr noundef %70, i64 noundef %77) #21
  br label %361

78:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %79, ptr %4, align 8, !tbaa !14
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %80, align 8, !tbaa !18
  store i8 0, ptr %79, align 8, !tbaa !5
  %81 = lshr exact i64 %0, 1
  %82 = icmp ugt i64 %0, 30
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = icmp eq i64 %0, -2
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %86 unwind label %96

86:                                               ; preds = %85
  unreachable

87:                                               ; preds = %83
  %88 = call i64 @llvm.umax.i64(i64 %81, i64 30)
  %89 = add nuw nsw i64 %88, 1
  %90 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %89) #20
          to label %91 unwind label %96

91:                                               ; preds = %87
  store i8 0, ptr %90, align 1, !tbaa !5
  store ptr %90, ptr %4, align 8, !tbaa !21
  store i64 %88, ptr %79, align 8, !tbaa !5
  br label %94

92:                                               ; preds = %78
  %93 = icmp eq i64 %0, 0
  br i1 %93, label %256, label %94

94:                                               ; preds = %91, %92
  %95 = getelementptr i8, ptr %1, i64 1
  br label %98

96:                                               ; preds = %87, %85
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %348

98:                                               ; preds = %94, %247
  %99 = phi i64 [ %252, %247 ], [ 0, %94 ]
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !5
  %102 = sext i8 %101 to i32
  %103 = add i8 %101, -48
  %104 = icmp ult i8 %103, 10
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = add nsw i32 %102, -48
  br label %117

107:                                              ; preds = %98
  %108 = add i8 %101, -97
  %109 = icmp ult i8 %108, 6
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = add nsw i32 %102, -87
  br label %117

112:                                              ; preds = %107
  %113 = add i8 %101, -65
  %114 = icmp ult i8 %113, 6
  %115 = add nsw i32 %102, -55
  %116 = select i1 %114, i32 %115, i32 -1
  br label %117

117:                                              ; preds = %105, %110, %112
  %118 = phi i32 [ %106, %105 ], [ %111, %110 ], [ %116, %112 ]
  %119 = getelementptr i8, ptr %95, i64 %99
  %120 = load i8, ptr %119, align 1, !tbaa !5
  %121 = sext i8 %120 to i32
  %122 = add i8 %120, -48
  %123 = icmp ult i8 %122, 10
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = add nsw i32 %121, -48
  br label %136

126:                                              ; preds = %117
  %127 = add i8 %120, -97
  %128 = icmp ult i8 %127, 6
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = add nsw i32 %121, -87
  br label %136

131:                                              ; preds = %126
  %132 = add i8 %120, -65
  %133 = icmp ult i8 %132, 6
  %134 = add nsw i32 %121, -55
  %135 = select i1 %133, i32 %134, i32 -1
  br label %136

136:                                              ; preds = %124, %129, %131
  %137 = phi i32 [ %125, %124 ], [ %130, %129 ], [ %135, %131 ]
  %138 = or i32 %137, %118
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %213, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %141, ptr %5, align 8, !tbaa !14
  %142 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %142, align 8, !tbaa !18
  store i8 0, ptr %141, align 8, !tbaa !5
  %143 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %148, !prof !22

145:                                              ; preds = %140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %146 unwind label %203

146:                                              ; preds = %145
  %147 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %148

148:                                              ; preds = %146, %140
  %149 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 48
  %151 = load ptr, ptr %150, align 8, !tbaa !23
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 64
  %153 = load ptr, ptr %152, align 8, !tbaa !29
  %154 = getelementptr inbounds i8, ptr %153, i64 -32
  %155 = icmp eq ptr %151, %154
  br i1 %155, label %173, label %156

156:                                              ; preds = %148
  %157 = getelementptr inbounds nuw i8, ptr %151, i64 16
  store ptr %157, ptr %151, align 8, !tbaa !14
  %158 = load ptr, ptr %5, align 8, !tbaa !21
  %159 = icmp eq ptr %158, %141
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, ptr %142, align 8, !tbaa !18
  %162 = icmp ult i64 %161, 16
  call void @llvm.assume(i1 %162)
  %163 = add nuw nsw i64 %161, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %157, ptr noundef nonnull align 8 dereferenceable(1) %141, i64 %163, i1 false)
  br label %167

164:                                              ; preds = %156
  store ptr %158, ptr %151, align 8, !tbaa !21
  %165 = load i64, ptr %141, align 8, !tbaa !5
  store i64 %165, ptr %157, align 8, !tbaa !5
  %166 = load i64, ptr %142, align 8, !tbaa !18
  br label %167

167:                                              ; preds = %164, %160
  %168 = phi i64 [ %166, %164 ], [ %161, %160 ]
  %169 = icmp ult i64 %168, 9223372036854775807
  call void @llvm.assume(i1 %169)
  %170 = getelementptr inbounds nuw i8, ptr %151, i64 8
  store i64 %168, ptr %170, align 8, !tbaa !18
  store ptr %141, ptr %5, align 8, !tbaa !21
  store i64 0, ptr %142, align 8, !tbaa !18
  store i8 0, ptr %141, align 8, !tbaa !5
  %171 = load ptr, ptr %150, align 8, !tbaa !23
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 32
  store ptr %172, ptr %150, align 8, !tbaa !23
  br label %176

173:                                              ; preds = %148
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %149, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %174 unwind label %203

174:                                              ; preds = %173
  %175 = load ptr, ptr %150, align 8, !tbaa !30, !noalias !40
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi ptr [ %172, %167 ], [ %175, %174 ]
  %178 = getelementptr inbounds nuw i8, ptr %149, i64 56
  %179 = load ptr, ptr %178, align 8, !tbaa !34, !noalias !40
  %180 = icmp eq ptr %177, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = getelementptr inbounds nuw i8, ptr %149, i64 72
  %183 = load ptr, ptr %182, align 8, !tbaa !35, !noalias !40
  %184 = getelementptr inbounds i8, ptr %183, i64 -8
  %185 = load ptr, ptr %184, align 8, !tbaa !36
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 512
  br label %187

187:                                              ; preds = %181, %176
  %188 = phi ptr [ %186, %181 ], [ %177, %176 ]
  %189 = getelementptr inbounds i8, ptr %188, i64 -32
  %190 = load ptr, ptr %189, align 8, !tbaa !21
  %191 = load ptr, ptr %5, align 8, !tbaa !21
  %192 = icmp eq ptr %191, %141
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i64, ptr %142, align 8, !tbaa !18
  %195 = icmp ult i64 %194, 16
  call void @llvm.assume(i1 %195)
  br label %337

196:                                              ; preds = %187
  %197 = load i64, ptr %141, align 8, !tbaa !5
  %198 = add i64 %197, 1
  call void @_ZdlPvm(ptr noundef %191, i64 noundef %198) #21
  br label %337

199:                                              ; preds = %234
  %200 = landingpad { ptr, i32 }
          cleanup
  br label %348

201:                                              ; preds = %232
  %202 = landingpad { ptr, i32 }
          cleanup
  br label %348

203:                                              ; preds = %173, %145
  %204 = landingpad { ptr, i32 }
          cleanup
  %205 = load ptr, ptr %5, align 8, !tbaa !21
  %206 = icmp eq ptr %205, %141
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load i64, ptr %142, align 8, !tbaa !18
  %209 = icmp ult i64 %208, 16
  call void @llvm.assume(i1 %209)
  br label %348

210:                                              ; preds = %203
  %211 = load i64, ptr %141, align 8, !tbaa !5
  %212 = add i64 %211, 1
  call void @_ZdlPvm(ptr noundef %205, i64 noundef %212) #21
  br label %348

213:                                              ; preds = %136
  %214 = shl nsw i32 %118, 4
  %215 = or i32 %137, %214
  %216 = trunc i32 %215 to i8
  %217 = load i64, ptr %80, align 8, !tbaa !18
  %218 = icmp ult i64 %217, 9223372036854775807
  call void @llvm.assume(i1 %218)
  %219 = add nuw nsw i64 %217, 1
  %220 = load ptr, ptr %4, align 8, !tbaa !21
  %221 = icmp eq ptr %220, %79
  %222 = load i64, ptr %79, align 8
  br i1 %221, label %223, label %225

223:                                              ; preds = %213
  %224 = icmp samesign ugt i64 %217, 14
  br i1 %224, label %229, label %247

225:                                              ; preds = %213
  %226 = icmp samesign ugt i64 %222, 14
  call void @llvm.assume(i1 %226)
  %227 = icmp ult i64 %222, 9223372036854775807
  call void @llvm.assume(i1 %227)
  %228 = icmp samesign ult i64 %217, %222
  br i1 %228, label %247, label %229

229:                                              ; preds = %225, %223
  %230 = phi i64 [ %222, %225 ], [ 15, %223 ]
  %231 = icmp eq i64 %219, 9223372036854775807
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %233 unwind label %201

233:                                              ; preds = %232
  unreachable

234:                                              ; preds = %229
  %235 = shl nuw i64 %230, 1
  %236 = icmp ult i64 %219, %235
  %237 = call i64 @llvm.umin.i64(i64 %235, i64 9223372036854775806)
  %238 = select i1 %236, i64 %237, i64 %219
  %239 = add nuw nsw i64 %238, 1
  %240 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %239) #20
          to label %241 unwind label %199

241:                                              ; preds = %234
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %240, ptr align 1 %220, i64 %217, i1 false)
  br i1 %221, label %242, label %244

242:                                              ; preds = %241
  %243 = icmp samesign ult i64 %217, 16
  call void @llvm.assume(i1 %243)
  br label %246

244:                                              ; preds = %241
  %245 = add i64 %222, 1
  call void @_ZdlPvm(ptr noundef %220, i64 noundef %245) #21
  br label %246

246:                                              ; preds = %244, %242
  store ptr %240, ptr %4, align 8, !tbaa !21
  store i64 %238, ptr %79, align 8, !tbaa !5
  br label %247

247:                                              ; preds = %223, %225, %246
  %248 = phi ptr [ %220, %225 ], [ %240, %246 ], [ %220, %223 ]
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 %217
  store i8 %216, ptr %249, align 1, !tbaa !5
  store i64 %219, ptr %80, align 8, !tbaa !18
  %250 = load ptr, ptr %4, align 8, !tbaa !21
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %219
  store i8 0, ptr %251, align 1, !tbaa !5
  %252 = add i64 %99, 2
  %253 = icmp ult i64 %252, %0
  br i1 %253, label %98, label %254, !llvm.loop !43

254:                                              ; preds = %247
  %255 = load ptr, ptr %4, align 8, !tbaa !21
  br label %256

256:                                              ; preds = %254, %92
  %257 = phi ptr [ %255, %254 ], [ %79, %92 ]
  %258 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %258, ptr %6, align 8, !tbaa !14
  %259 = icmp eq ptr %257, %79
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i64, ptr %80, align 8, !tbaa !18
  %262 = icmp ult i64 %261, 16
  call void @llvm.assume(i1 %262)
  %263 = add nuw nsw i64 %261, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %258, ptr noundef nonnull align 8 dereferenceable(1) %79, i64 %263, i1 false)
  br label %267

264:                                              ; preds = %256
  store ptr %257, ptr %6, align 8, !tbaa !21
  %265 = load i64, ptr %79, align 8, !tbaa !5
  store i64 %265, ptr %258, align 8, !tbaa !5
  %266 = load i64, ptr %80, align 8, !tbaa !18
  br label %267

267:                                              ; preds = %260, %264
  %268 = phi i64 [ %261, %260 ], [ %266, %264 ]
  %269 = icmp ult i64 %268, 9223372036854775807
  call void @llvm.assume(i1 %269)
  %270 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %268, ptr %270, align 8, !tbaa !18
  store ptr %79, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %80, align 8, !tbaa !18
  store i8 0, ptr %79, align 8, !tbaa !5
  %271 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %276, !prof !22

273:                                              ; preds = %267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %274 unwind label %327

274:                                              ; preds = %273
  %275 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %276

276:                                              ; preds = %274, %267
  %277 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 48
  %279 = load ptr, ptr %278, align 8, !tbaa !23
  %280 = getelementptr inbounds nuw i8, ptr %277, i64 64
  %281 = load ptr, ptr %280, align 8, !tbaa !29
  %282 = getelementptr inbounds i8, ptr %281, i64 -32
  %283 = icmp eq ptr %279, %282
  br i1 %283, label %301, label %284

284:                                              ; preds = %276
  %285 = getelementptr inbounds nuw i8, ptr %279, i64 16
  store ptr %285, ptr %279, align 8, !tbaa !14
  %286 = load ptr, ptr %6, align 8, !tbaa !21
  %287 = icmp eq ptr %286, %258
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load i64, ptr %270, align 8, !tbaa !18
  %290 = icmp ult i64 %289, 16
  call void @llvm.assume(i1 %290)
  %291 = add nuw nsw i64 %289, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %285, ptr noundef nonnull align 8 dereferenceable(1) %258, i64 %291, i1 false)
  br label %295

292:                                              ; preds = %284
  store ptr %286, ptr %279, align 8, !tbaa !21
  %293 = load i64, ptr %258, align 8, !tbaa !5
  store i64 %293, ptr %285, align 8, !tbaa !5
  %294 = load i64, ptr %270, align 8, !tbaa !18
  br label %295

295:                                              ; preds = %292, %288
  %296 = phi i64 [ %294, %292 ], [ %289, %288 ]
  %297 = icmp ult i64 %296, 9223372036854775807
  call void @llvm.assume(i1 %297)
  %298 = getelementptr inbounds nuw i8, ptr %279, i64 8
  store i64 %296, ptr %298, align 8, !tbaa !18
  store ptr %258, ptr %6, align 8, !tbaa !21
  store i64 0, ptr %270, align 8, !tbaa !18
  store i8 0, ptr %258, align 8, !tbaa !5
  %299 = load ptr, ptr %278, align 8, !tbaa !23
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 32
  store ptr %300, ptr %278, align 8, !tbaa !23
  br label %304

301:                                              ; preds = %276
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %277, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %302 unwind label %327

302:                                              ; preds = %301
  %303 = load ptr, ptr %278, align 8, !tbaa !30, !noalias !44
  br label %304

304:                                              ; preds = %302, %295
  %305 = phi ptr [ %300, %295 ], [ %303, %302 ]
  %306 = getelementptr inbounds nuw i8, ptr %277, i64 56
  %307 = load ptr, ptr %306, align 8, !tbaa !34, !noalias !44
  %308 = icmp eq ptr %305, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = getelementptr inbounds nuw i8, ptr %277, i64 72
  %311 = load ptr, ptr %310, align 8, !tbaa !35, !noalias !44
  %312 = getelementptr inbounds i8, ptr %311, i64 -8
  %313 = load ptr, ptr %312, align 8, !tbaa !36
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 512
  br label %315

315:                                              ; preds = %309, %304
  %316 = phi ptr [ %314, %309 ], [ %305, %304 ]
  %317 = getelementptr inbounds i8, ptr %316, i64 -32
  %318 = load ptr, ptr %317, align 8, !tbaa !21
  %319 = load ptr, ptr %6, align 8, !tbaa !21
  %320 = icmp eq ptr %319, %258
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load i64, ptr %270, align 8, !tbaa !18
  %323 = icmp ult i64 %322, 16
  call void @llvm.assume(i1 %323)
  br label %337

324:                                              ; preds = %315
  %325 = load i64, ptr %258, align 8, !tbaa !5
  %326 = add i64 %325, 1
  call void @_ZdlPvm(ptr noundef %319, i64 noundef %326) #21
  br label %337

327:                                              ; preds = %301, %273
  %328 = landingpad { ptr, i32 }
          cleanup
  %329 = load ptr, ptr %6, align 8, !tbaa !21
  %330 = icmp eq ptr %329, %258
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = load i64, ptr %270, align 8, !tbaa !18
  %333 = icmp ult i64 %332, 16
  call void @llvm.assume(i1 %333)
  br label %348

334:                                              ; preds = %327
  %335 = load i64, ptr %258, align 8, !tbaa !5
  %336 = add i64 %335, 1
  call void @_ZdlPvm(ptr noundef %329, i64 noundef %336) #21
  br label %348

337:                                              ; preds = %196, %193, %324, %321
  %338 = phi ptr [ %318, %321 ], [ %318, %324 ], [ %190, %193 ], [ %190, %196 ]
  %339 = load ptr, ptr %4, align 8, !tbaa !21
  %340 = icmp eq ptr %339, %79
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load i64, ptr %80, align 8, !tbaa !18
  %343 = icmp ult i64 %342, 16
  call void @llvm.assume(i1 %343)
  br label %347

344:                                              ; preds = %337
  %345 = load i64, ptr %79, align 8, !tbaa !5
  %346 = add i64 %345, 1
  call void @_ZdlPvm(ptr noundef %339, i64 noundef %346) #21
  br label %347

347:                                              ; preds = %341, %344
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %359

348:                                              ; preds = %199, %201, %334, %331, %207, %210, %96
  %349 = phi { ptr, i32 } [ %97, %96 ], [ %204, %207 ], [ %204, %210 ], [ %328, %331 ], [ %328, %334 ], [ %200, %199 ], [ %202, %201 ]
  %350 = load ptr, ptr %4, align 8, !tbaa !21
  %351 = icmp eq ptr %350, %79
  br i1 %351, label %352, label %355

352:                                              ; preds = %348
  %353 = load i64, ptr %80, align 8, !tbaa !18
  %354 = icmp ult i64 %353, 16
  call void @llvm.assume(i1 %354)
  br label %358

355:                                              ; preds = %348
  %356 = load i64, ptr %79, align 8, !tbaa !5
  %357 = add i64 %356, 1
  call void @_ZdlPvm(ptr noundef %350, i64 noundef %357) #21
  br label %358

358:                                              ; preds = %352, %355
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %361

359:                                              ; preds = %65, %62, %347
  %360 = phi ptr [ %338, %347 ], [ %59, %62 ], [ %59, %65 ]
  ret ptr %360

361:                                              ; preds = %72, %75, %358
  %362 = phi { ptr, i32 } [ %349, %358 ], [ %69, %72 ], [ %69, %75 ]
  resume { ptr, i32 } %362
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %7 = mul i64 %0, 3
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = icmp ugt i64 %7, 9223372036854775806
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %12 unwind label %83

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @llvm.umax.i64(i64 %7, i64 30)
  %15 = add nuw nsw i64 %14, 1
  %16 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #20
          to label %17 unwind label %83

17:                                               ; preds = %13
  store i8 0, ptr %16, align 1, !tbaa !5
  store ptr %16, ptr %3, align 8, !tbaa !21
  store i64 %14, ptr %5, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi ptr [ %16, %17 ], [ %5, %2 ]
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %21 = icmp samesign eq i64 %0, 0
  br i1 %21, label %24, label %85

22:                                               ; preds = %237
  %23 = load ptr, ptr %3, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %19, %18 ]
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %26, ptr %4, align 8, !tbaa !14
  %27 = icmp eq ptr %25, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !tbaa !18
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %31, i1 false)
  br label %35

32:                                               ; preds = %24
  store ptr %25, ptr %4, align 8, !tbaa !21
  %33 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %33, ptr %26, align 8, !tbaa !5
  %34 = load i64, ptr %6, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi i64 [ %29, %28 ], [ %34, %32 ]
  %37 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %36, ptr %38, align 8, !tbaa !18
  store ptr %5, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !22

41:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %265

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !14
  %54 = load ptr, ptr %4, align 8, !tbaa !21
  %55 = icmp eq ptr %54, %26
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, ptr %38, align 8, !tbaa !18
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %59, i1 false)
  br label %63

60:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !21
  %61 = load i64, ptr %26, align 8, !tbaa !5
  store i64 %61, ptr %53, align 8, !tbaa !5
  %62 = load i64, ptr %38, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %57, %56 ]
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %64, ptr %66, align 8, !tbaa !18
  store ptr %26, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %38, align 8, !tbaa !18
  store i8 0, ptr %26, align 8, !tbaa !5
  %67 = load ptr, ptr %46, align 8, !tbaa !23
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  store ptr %68, ptr %46, align 8, !tbaa !23
  br label %72

69:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %70 unwind label %265

70:                                               ; preds = %69
  %71 = load ptr, ptr %46, align 8, !tbaa !30, !noalias !47
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %68, %63 ], [ %71, %70 ]
  %74 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %75 = load ptr, ptr %74, align 8, !tbaa !34, !noalias !47
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %77, label %243

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %79 = load ptr, ptr %78, align 8, !tbaa !35, !noalias !47
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 512
  br label %243

83:                                               ; preds = %13, %11
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %275

85:                                               ; preds = %18, %237
  %86 = phi ptr [ %241, %237 ], [ %1, %18 ]
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = zext i8 %87 to i32
  %89 = call i32 @isalnum(i32 noundef %88) #22
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
  %94 = load i64, ptr %6, align 8, !tbaa !18
  %95 = icmp ult i64 %94, 9223372036854775807
  call void @llvm.assume(i1 %95)
  %96 = add nuw nsw i64 %94, 1
  %97 = load ptr, ptr %3, align 8, !tbaa !21
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %110 unwind label %129

110:                                              ; preds = %109
  unreachable

111:                                              ; preds = %106
  %112 = shl nuw i64 %107, 1
  %113 = icmp ult i64 %96, %112
  %114 = call i64 @llvm.umin.i64(i64 %112, i64 9223372036854775806)
  %115 = select i1 %113, i64 %114, i64 %96
  %116 = add nuw nsw i64 %115, 1
  %117 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %116) #20
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
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %122) #21
  br label %123

123:                                              ; preds = %121, %119
  store ptr %117, ptr %3, align 8, !tbaa !21
  store i64 %115, ptr %5, align 8, !tbaa !5
  br label %124

124:                                              ; preds = %100, %102, %123
  %125 = phi ptr [ %97, %102 ], [ %117, %123 ], [ %97, %100 ]
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 %94
  store i8 %87, ptr %126, align 1, !tbaa !5
  br label %237

127:                                              ; preds = %111, %147, %184, %221
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %275

129:                                              ; preds = %109
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %275

131:                                              ; preds = %92
  %132 = load i64, ptr %6, align 8, !tbaa !18
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = add nuw nsw i64 %132, 1
  %135 = load ptr, ptr %3, align 8, !tbaa !21
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
  %153 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %152) #20
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
  call void @_ZdlPvm(ptr noundef %135, i64 noundef %158) #21
  br label %159

159:                                              ; preds = %157, %155
  store ptr %153, ptr %3, align 8, !tbaa !21
  store i64 %151, ptr %5, align 8, !tbaa !5
  br label %160

160:                                              ; preds = %159, %140, %138
  %161 = phi ptr [ %135, %140 ], [ %153, %159 ], [ %135, %138 ]
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 %132
  store i8 37, ptr %162, align 1, !tbaa !5
  store i64 %134, ptr %6, align 8, !tbaa !18
  %163 = load ptr, ptr %3, align 8, !tbaa !21
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 %134
  store i8 0, ptr %164, align 1, !tbaa !5
  %165 = lshr i32 %88, 4
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds nuw [17 x i8], ptr @_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !5
  %169 = load i64, ptr %6, align 8, !tbaa !18
  %170 = icmp ult i64 %169, 9223372036854775807
  call void @llvm.assume(i1 %170)
  %171 = add nuw nsw i64 %169, 1
  %172 = load ptr, ptr %3, align 8, !tbaa !21
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
  %190 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %189) #20
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
  call void @_ZdlPvm(ptr noundef %172, i64 noundef %195) #21
  br label %196

196:                                              ; preds = %194, %192
  store ptr %190, ptr %3, align 8, !tbaa !21
  store i64 %188, ptr %5, align 8, !tbaa !5
  br label %197

197:                                              ; preds = %196, %177, %175
  %198 = phi ptr [ %172, %177 ], [ %190, %196 ], [ %172, %175 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 %169
  store i8 %168, ptr %199, align 1, !tbaa !5
  store i64 %171, ptr %6, align 8, !tbaa !18
  %200 = load ptr, ptr %3, align 8, !tbaa !21
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 %171
  store i8 0, ptr %201, align 1, !tbaa !5
  %202 = and i32 %88, 15
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds nuw [17 x i8], ptr @_ZZN12__apo_stdlib10url_encodeESt17basic_string_viewIcSt11char_traitsIcEEE7kDigits, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !5
  %206 = load i64, ptr %6, align 8, !tbaa !18
  %207 = icmp ult i64 %206, 9223372036854775807
  call void @llvm.assume(i1 %207)
  %208 = add nuw nsw i64 %206, 1
  %209 = load ptr, ptr %3, align 8, !tbaa !21
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
  %227 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %226) #20
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
  call void @_ZdlPvm(ptr noundef %209, i64 noundef %232) #21
  br label %233

233:                                              ; preds = %231, %229
  store ptr %227, ptr %3, align 8, !tbaa !21
  store i64 %225, ptr %5, align 8, !tbaa !5
  br label %234

234:                                              ; preds = %212, %214, %233
  %235 = phi ptr [ %209, %214 ], [ %227, %233 ], [ %209, %212 ]
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 %206
  store i8 %205, ptr %236, align 1, !tbaa !5
  br label %237

237:                                              ; preds = %234, %124
  %238 = phi i64 [ %208, %234 ], [ %96, %124 ]
  store i64 %238, ptr %6, align 8, !tbaa !18
  %239 = load ptr, ptr %3, align 8, !tbaa !21
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 %238
  store i8 0, ptr %240, align 1, !tbaa !5
  %241 = getelementptr inbounds nuw i8, ptr %86, i64 1
  %242 = icmp eq ptr %241, %20
  br i1 %242, label %22, label %85

243:                                              ; preds = %77, %72
  %244 = phi ptr [ %82, %77 ], [ %73, %72 ]
  %245 = getelementptr inbounds i8, ptr %244, i64 -32
  %246 = load ptr, ptr %245, align 8, !tbaa !21
  %247 = load ptr, ptr %4, align 8, !tbaa !21
  %248 = icmp eq ptr %247, %26
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load i64, ptr %38, align 8, !tbaa !18
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %255

252:                                              ; preds = %243
  %253 = load i64, ptr %26, align 8, !tbaa !5
  %254 = add i64 %253, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %254) #21
  br label %255

255:                                              ; preds = %249, %252
  %256 = load ptr, ptr %3, align 8, !tbaa !21
  %257 = icmp eq ptr %256, %5
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i64, ptr %6, align 8, !tbaa !18
  %260 = icmp ult i64 %259, 16
  call void @llvm.assume(i1 %260)
  br label %264

261:                                              ; preds = %255
  %262 = load i64, ptr %5, align 8, !tbaa !5
  %263 = add i64 %262, 1
  call void @_ZdlPvm(ptr noundef %256, i64 noundef %263) #21
  br label %264

264:                                              ; preds = %258, %261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %246

265:                                              ; preds = %69, %41
  %266 = landingpad { ptr, i32 }
          cleanup
  %267 = load ptr, ptr %4, align 8, !tbaa !21
  %268 = icmp eq ptr %267, %26
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i64, ptr %38, align 8, !tbaa !18
  %271 = icmp ult i64 %270, 16
  call void @llvm.assume(i1 %271)
  br label %275

272:                                              ; preds = %265
  %273 = load i64, ptr %26, align 8, !tbaa !5
  %274 = add i64 %273, 1
  call void @_ZdlPvm(ptr noundef %267, i64 noundef %274) #21
  br label %275

275:                                              ; preds = %127, %129, %272, %269, %83
  %276 = phi { ptr, i32 } [ %84, %83 ], [ %266, %269 ], [ %266, %272 ], [ %128, %127 ], [ %130, %129 ]
  %277 = load ptr, ptr %3, align 8, !tbaa !21
  %278 = icmp eq ptr %277, %5
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load i64, ptr %6, align 8, !tbaa !18
  %281 = icmp ult i64 %280, 16
  call void @llvm.assume(i1 %281)
  br label %285

282:                                              ; preds = %275
  %283 = load i64, ptr %5, align 8, !tbaa !5
  %284 = add i64 %283, 1
  call void @_ZdlPvm(ptr noundef %277, i64 noundef %284) #21
  br label %285

285:                                              ; preds = %279, %282
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %276
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib10url_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %7 = icmp ugt i64 %0, 15
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = icmp ugt i64 %0, 9223372036854775806
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %11 unwind label %84

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %8
  %13 = call i64 @llvm.umax.i64(i64 %0, i64 30)
  %14 = add nuw nsw i64 %13, 1
  %15 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #20
          to label %16 unwind label %84

16:                                               ; preds = %12
  store i8 0, ptr %15, align 1, !tbaa !5
  store ptr %15, ptr %3, align 8, !tbaa !21
  store i64 %13, ptr %5, align 8, !tbaa !5
  br label %21

17:                                               ; preds = %2
  %18 = icmp eq i64 %0, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %20, ptr %4, align 8, !tbaa !14
  br label %27

21:                                               ; preds = %16, %17
  %22 = getelementptr i8, ptr %1, i64 1
  br label %86

23:                                               ; preds = %212
  %24 = load ptr, ptr %3, align 8, !tbaa !21
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %25, ptr %4, align 8, !tbaa !14
  %26 = icmp eq ptr %24, %5
  br i1 %26, label %27, label %32

27:                                               ; preds = %19, %23
  %28 = phi ptr [ %20, %19 ], [ %25, %23 ]
  %29 = load i64, ptr %6, align 8, !tbaa !18
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %31, i1 false)
  br label %35

32:                                               ; preds = %23
  store ptr %24, ptr %4, align 8, !tbaa !21
  %33 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %33, ptr %25, align 8, !tbaa !5
  %34 = load i64, ptr %6, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %28, %27 ], [ %25, %32 ]
  %37 = phi i64 [ %29, %27 ], [ %34, %32 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !18
  store ptr %5, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !22

42:                                               ; preds = %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %245

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %35
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !14
  %55 = load ptr, ptr %4, align 8, !tbaa !21
  %56 = icmp eq ptr %55, %36
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, ptr %39, align 8, !tbaa !18
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %36, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !21
  %62 = load i64, ptr %36, align 8, !tbaa !5
  store i64 %62, ptr %54, align 8, !tbaa !5
  %63 = load i64, ptr %39, align 8, !tbaa !18
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %58, %57 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !18
  store ptr %36, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %39, align 8, !tbaa !18
  store i8 0, ptr %36, align 1, !tbaa !5
  %68 = load ptr, ptr %47, align 8, !tbaa !23
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %69, ptr %47, align 8, !tbaa !23
  br label %73

70:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %71 unwind label %245

71:                                               ; preds = %70
  %72 = load ptr, ptr %47, align 8, !tbaa !30, !noalias !50
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %69, %64 ], [ %72, %71 ]
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %76 = load ptr, ptr %75, align 8, !tbaa !34, !noalias !50
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %223

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %80 = load ptr, ptr %79, align 8, !tbaa !35, !noalias !50
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 512
  br label %223

84:                                               ; preds = %12, %10
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %255

86:                                               ; preds = %21, %212
  %87 = phi i64 [ %217, %212 ], [ 0, %21 ]
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = icmp eq i8 %89, 37
  br i1 %90, label %91, label %176

91:                                               ; preds = %86
  %92 = add i64 %87, 2
  %93 = icmp ult i64 %92, %0
  br i1 %93, label %94, label %176

94:                                               ; preds = %91
  %95 = getelementptr i8, ptr %22, i64 %87
  %96 = load i8, ptr %95, align 1, !tbaa !5
  %97 = sext i8 %96 to i32
  %98 = add i8 %96, -48
  %99 = icmp ult i8 %98, 10
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = add nsw i32 %97, -48
  br label %112

102:                                              ; preds = %94
  %103 = add i8 %96, -97
  %104 = icmp ult i8 %103, 6
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = add nsw i32 %97, -87
  br label %112

107:                                              ; preds = %102
  %108 = add i8 %96, -65
  %109 = icmp ult i8 %108, 6
  %110 = add nsw i32 %97, -55
  %111 = select i1 %109, i32 %110, i32 -1
  br label %112

112:                                              ; preds = %100, %105, %107
  %113 = phi i32 [ %101, %100 ], [ %106, %105 ], [ %111, %107 ]
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 %92
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = sext i8 %115 to i32
  %117 = add i8 %115, -48
  %118 = icmp ult i8 %117, 10
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = add nsw i32 %116, -48
  br label %131

121:                                              ; preds = %112
  %122 = add i8 %115, -97
  %123 = icmp ult i8 %122, 6
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = add nsw i32 %116, -87
  br label %131

126:                                              ; preds = %121
  %127 = add i8 %115, -65
  %128 = icmp ult i8 %127, 6
  %129 = add nsw i32 %116, -55
  %130 = select i1 %128, i32 %129, i32 -1
  br label %131

131:                                              ; preds = %119, %124, %126
  %132 = phi i32 [ %120, %119 ], [ %125, %124 ], [ %130, %126 ]
  %133 = or i32 %132, %113
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %176

135:                                              ; preds = %131
  %136 = shl nsw i32 %113, 4
  %137 = or i32 %132, %136
  %138 = trunc i32 %137 to i8
  %139 = load i64, ptr %6, align 8, !tbaa !18
  %140 = icmp ult i64 %139, 9223372036854775807
  call void @llvm.assume(i1 %140)
  %141 = add nuw nsw i64 %139, 1
  %142 = load ptr, ptr %3, align 8, !tbaa !21
  %143 = icmp eq ptr %142, %5
  %144 = load i64, ptr %5, align 8
  br i1 %143, label %145, label %147

145:                                              ; preds = %135
  %146 = icmp samesign ugt i64 %139, 14
  br i1 %146, label %151, label %173

147:                                              ; preds = %135
  %148 = icmp samesign ugt i64 %144, 14
  call void @llvm.assume(i1 %148)
  %149 = icmp ult i64 %144, 9223372036854775807
  call void @llvm.assume(i1 %149)
  %150 = icmp samesign ult i64 %139, %144
  br i1 %150, label %173, label %151

151:                                              ; preds = %147, %145
  %152 = phi i64 [ %144, %147 ], [ 15, %145 ]
  %153 = icmp eq i64 %141, 9223372036854775807
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %155 unwind label %171

155:                                              ; preds = %154
  unreachable

156:                                              ; preds = %151
  %157 = shl nuw i64 %152, 1
  %158 = icmp ult i64 %141, %157
  %159 = call i64 @llvm.umin.i64(i64 %157, i64 9223372036854775806)
  %160 = select i1 %158, i64 %159, i64 %141
  %161 = add nuw nsw i64 %160, 1
  %162 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %161) #20
          to label %163 unwind label %169

163:                                              ; preds = %156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %162, ptr align 1 %142, i64 %139, i1 false)
  br i1 %143, label %164, label %166

164:                                              ; preds = %163
  %165 = icmp samesign ult i64 %139, 16
  call void @llvm.assume(i1 %165)
  br label %168

166:                                              ; preds = %163
  %167 = add i64 %144, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %167) #21
  br label %168

168:                                              ; preds = %166, %164
  store ptr %162, ptr %3, align 8, !tbaa !21
  store i64 %160, ptr %5, align 8, !tbaa !5
  br label %173

169:                                              ; preds = %156
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %255

171:                                              ; preds = %154
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %255

173:                                              ; preds = %168, %147, %145
  %174 = phi ptr [ %142, %147 ], [ %162, %168 ], [ %142, %145 ]
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 %139
  store i8 %138, ptr %175, align 1, !tbaa !5
  br label %212

176:                                              ; preds = %131, %91, %86
  %177 = icmp eq i8 %89, 43
  %178 = select i1 %177, i8 32, i8 %89
  %179 = load i64, ptr %6, align 8, !tbaa !18
  %180 = icmp ult i64 %179, 9223372036854775807
  call void @llvm.assume(i1 %180)
  %181 = add nuw nsw i64 %179, 1
  %182 = load ptr, ptr %3, align 8, !tbaa !21
  %183 = icmp eq ptr %182, %5
  %184 = load i64, ptr %5, align 8
  br i1 %183, label %185, label %187

185:                                              ; preds = %176
  %186 = icmp samesign ugt i64 %179, 14
  br i1 %186, label %191, label %209

187:                                              ; preds = %176
  %188 = icmp samesign ugt i64 %184, 14
  call void @llvm.assume(i1 %188)
  %189 = icmp ult i64 %184, 9223372036854775807
  call void @llvm.assume(i1 %189)
  %190 = icmp samesign ult i64 %179, %184
  br i1 %190, label %209, label %191

191:                                              ; preds = %187, %185
  %192 = phi i64 [ %184, %187 ], [ 15, %185 ]
  %193 = icmp eq i64 %181, 9223372036854775807
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %195 unwind label %221

195:                                              ; preds = %194
  unreachable

196:                                              ; preds = %191
  %197 = shl nuw i64 %192, 1
  %198 = icmp ult i64 %181, %197
  %199 = call i64 @llvm.umin.i64(i64 %197, i64 9223372036854775806)
  %200 = select i1 %198, i64 %199, i64 %181
  %201 = add nuw nsw i64 %200, 1
  %202 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %201) #20
          to label %203 unwind label %219

203:                                              ; preds = %196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %202, ptr align 1 %182, i64 %179, i1 false)
  br i1 %183, label %204, label %206

204:                                              ; preds = %203
  %205 = icmp samesign ult i64 %179, 16
  call void @llvm.assume(i1 %205)
  br label %208

206:                                              ; preds = %203
  %207 = add i64 %184, 1
  call void @_ZdlPvm(ptr noundef %182, i64 noundef %207) #21
  br label %208

208:                                              ; preds = %206, %204
  store ptr %202, ptr %3, align 8, !tbaa !21
  store i64 %200, ptr %5, align 8, !tbaa !5
  br label %209

209:                                              ; preds = %185, %187, %208
  %210 = phi ptr [ %182, %187 ], [ %202, %208 ], [ %182, %185 ]
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 %179
  store i8 %178, ptr %211, align 1, !tbaa !5
  br label %212

212:                                              ; preds = %173, %209
  %213 = phi i64 [ %141, %173 ], [ %181, %209 ]
  %214 = phi i64 [ %92, %173 ], [ %87, %209 ]
  store i64 %213, ptr %6, align 8, !tbaa !18
  %215 = load ptr, ptr %3, align 8, !tbaa !21
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 %213
  store i8 0, ptr %216, align 1, !tbaa !5
  %217 = add nuw i64 %214, 1
  %218 = icmp ult i64 %217, %0
  br i1 %218, label %86, label %23, !llvm.loop !53

219:                                              ; preds = %196
  %220 = landingpad { ptr, i32 }
          cleanup
  br label %255

221:                                              ; preds = %194
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %255

223:                                              ; preds = %78, %73
  %224 = phi ptr [ %83, %78 ], [ %74, %73 ]
  %225 = getelementptr inbounds i8, ptr %224, i64 -32
  %226 = load ptr, ptr %225, align 8, !tbaa !21
  %227 = load ptr, ptr %4, align 8, !tbaa !21
  %228 = icmp eq ptr %227, %36
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i64, ptr %39, align 8, !tbaa !18
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %235

232:                                              ; preds = %223
  %233 = load i64, ptr %36, align 8, !tbaa !5
  %234 = add i64 %233, 1
  call void @_ZdlPvm(ptr noundef %227, i64 noundef %234) #21
  br label %235

235:                                              ; preds = %229, %232
  %236 = load ptr, ptr %3, align 8, !tbaa !21
  %237 = icmp eq ptr %236, %5
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i64, ptr %6, align 8, !tbaa !18
  %240 = icmp ult i64 %239, 16
  call void @llvm.assume(i1 %240)
  br label %244

241:                                              ; preds = %235
  %242 = load i64, ptr %5, align 8, !tbaa !5
  %243 = add i64 %242, 1
  call void @_ZdlPvm(ptr noundef %236, i64 noundef %243) #21
  br label %244

244:                                              ; preds = %238, %241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %226

245:                                              ; preds = %70, %42
  %246 = landingpad { ptr, i32 }
          cleanup
  %247 = load ptr, ptr %4, align 8, !tbaa !21
  %248 = icmp eq ptr %247, %36
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i64, ptr %39, align 8, !tbaa !18
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %255

252:                                              ; preds = %245
  %253 = load i64, ptr %36, align 8, !tbaa !5
  %254 = add i64 %253, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %254) #21
  br label %255

255:                                              ; preds = %219, %221, %169, %171, %252, %249, %84
  %256 = phi { ptr, i32 } [ %85, %84 ], [ %246, %249 ], [ %246, %252 ], [ %170, %169 ], [ %172, %171 ], [ %220, %219 ], [ %222, %221 ]
  %257 = load ptr, ptr %3, align 8, !tbaa !21
  %258 = icmp eq ptr %257, %5
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i64, ptr %6, align 8, !tbaa !18
  %261 = icmp ult i64 %260, 16
  call void @llvm.assume(i1 %261)
  br label %265

262:                                              ; preds = %255
  %263 = load i64, ptr %5, align 8, !tbaa !5
  %264 = add i64 %263, 1
  call void @_ZdlPvm(ptr noundef %257, i64 noundef %264) #21
  br label %265

265:                                              ; preds = %259, %262
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %256
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %3, align 8, !tbaa !14
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %7 = add i64 %0, 2
  %8 = udiv i64 %7, 3
  %9 = shl i64 %8, 2
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = icmp ugt i64 %9, 9223372036854775806
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %14 unwind label %84

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %11
  %16 = call i64 @llvm.umax.i64(i64 %9, i64 30)
  %17 = or disjoint i64 %16, 1
  %18 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #20
          to label %19 unwind label %84

19:                                               ; preds = %15
  store i8 0, ptr %18, align 1, !tbaa !5
  store ptr %18, ptr %3, align 8, !tbaa !21
  store i64 %16, ptr %5, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi ptr [ %5, %2 ], [ %18, %19 ]
  %22 = icmp eq i64 %0, 0
  br i1 %22, label %25, label %86

23:                                               ; preds = %264
  %24 = load ptr, ptr %3, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %27, ptr %4, align 8, !tbaa !14
  %28 = icmp eq ptr %26, %5
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %6, align 8, !tbaa !18
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %26, ptr %4, align 8, !tbaa !21
  %34 = load i64, ptr %5, align 8, !tbaa !5
  store i64 %34, ptr %27, align 8, !tbaa !5
  %35 = load i64, ptr %6, align 8, !tbaa !18
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i64 [ %30, %29 ], [ %35, %33 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !18
  store ptr %5, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %6, align 8, !tbaa !18
  store i8 0, ptr %5, align 8, !tbaa !5
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45, !prof !22

42:                                               ; preds = %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %43 unwind label %297

43:                                               ; preds = %42
  %44 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %54, ptr %48, align 8, !tbaa !14
  %55 = load ptr, ptr %4, align 8, !tbaa !21
  %56 = icmp eq ptr %55, %27
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, ptr %39, align 8, !tbaa !18
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %53
  store ptr %55, ptr %48, align 8, !tbaa !21
  %62 = load i64, ptr %27, align 8, !tbaa !5
  store i64 %62, ptr %54, align 8, !tbaa !5
  %63 = load i64, ptr %39, align 8, !tbaa !18
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %63, %61 ], [ %58, %57 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !18
  store ptr %27, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %39, align 8, !tbaa !18
  store i8 0, ptr %27, align 8, !tbaa !5
  %68 = load ptr, ptr %47, align 8, !tbaa !23
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  store ptr %69, ptr %47, align 8, !tbaa !23
  br label %73

70:                                               ; preds = %45
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %46, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %71 unwind label %297

71:                                               ; preds = %70
  %72 = load ptr, ptr %47, align 8, !tbaa !30, !noalias !54
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %69, %64 ], [ %72, %71 ]
  %75 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %76 = load ptr, ptr %75, align 8, !tbaa !34, !noalias !54
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %275

78:                                               ; preds = %73
  %79 = getelementptr inbounds nuw i8, ptr %46, i64 72
  %80 = load ptr, ptr %79, align 8, !tbaa !35, !noalias !54
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 512
  br label %275

84:                                               ; preds = %15, %13
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %307

86:                                               ; preds = %20, %264
  %87 = phi i64 [ %269, %264 ], [ 0, %20 ]
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = add nuw i64 %87, 1
  %93 = icmp ult i64 %92, %0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 %92
  %96 = load i8, ptr %95, align 1, !tbaa !5
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
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %99, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %99 ]
  %110 = or disjoint i32 %109, %100
  %111 = lshr i32 %101, 18
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds nuw [65 x i8], ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = load i64, ptr %6, align 8, !tbaa !18
  %116 = icmp ult i64 %115, 9223372036854775807
  call void @llvm.assume(i1 %116)
  %117 = add nuw nsw i64 %115, 1
  %118 = load ptr, ptr %3, align 8, !tbaa !21
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %131 unwind label %273

131:                                              ; preds = %130
  unreachable

132:                                              ; preds = %127
  %133 = shl nuw i64 %128, 1
  %134 = icmp ult i64 %117, %133
  %135 = call i64 @llvm.umin.i64(i64 %133, i64 9223372036854775806)
  %136 = select i1 %134, i64 %135, i64 %117
  %137 = add nuw nsw i64 %136, 1
  %138 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %137) #20
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
  call void @_ZdlPvm(ptr noundef %118, i64 noundef %143) #21
  br label %144

144:                                              ; preds = %142, %140
  store ptr %138, ptr %3, align 8, !tbaa !21
  store i64 %136, ptr %5, align 8, !tbaa !5
  br label %145

145:                                              ; preds = %144, %123, %121
  %146 = phi ptr [ %118, %123 ], [ %138, %144 ], [ %118, %121 ]
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %115
  store i8 %114, ptr %147, align 1, !tbaa !5
  store i64 %117, ptr %6, align 8, !tbaa !18
  %148 = load ptr, ptr %3, align 8, !tbaa !21
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 %117
  store i8 0, ptr %149, align 1, !tbaa !5
  %150 = lshr i32 %101, 12
  %151 = and i32 %150, 63
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [65 x i8], ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !5
  %155 = load i64, ptr %6, align 8, !tbaa !18
  %156 = icmp ult i64 %155, 9223372036854775807
  call void @llvm.assume(i1 %156)
  %157 = add nuw nsw i64 %155, 1
  %158 = load ptr, ptr %3, align 8, !tbaa !21
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
  %176 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %175) #20
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
  call void @_ZdlPvm(ptr noundef %158, i64 noundef %181) #21
  br label %182

182:                                              ; preds = %180, %178
  store ptr %176, ptr %3, align 8, !tbaa !21
  store i64 %174, ptr %5, align 8, !tbaa !5
  br label %183

183:                                              ; preds = %182, %163, %161
  %184 = phi ptr [ %158, %163 ], [ %176, %182 ], [ %158, %161 ]
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %155
  store i8 %154, ptr %185, align 1, !tbaa !5
  store i64 %157, ptr %6, align 8, !tbaa !18
  %186 = load ptr, ptr %3, align 8, !tbaa !21
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 %157
  store i8 0, ptr %187, align 1, !tbaa !5
  br i1 %93, label %188, label %194

188:                                              ; preds = %183
  %189 = lshr i32 %110, 6
  %190 = and i32 %189, 63
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [65 x i8], ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !5
  br label %194

194:                                              ; preds = %183, %188
  %195 = phi i8 [ %193, %188 ], [ 61, %183 ]
  %196 = load i64, ptr %6, align 8, !tbaa !18
  %197 = icmp ult i64 %196, 9223372036854775807
  call void @llvm.assume(i1 %197)
  %198 = add nuw nsw i64 %196, 1
  %199 = load ptr, ptr %3, align 8, !tbaa !21
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
  %217 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %216) #20
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
  call void @_ZdlPvm(ptr noundef %199, i64 noundef %222) #21
  br label %223

223:                                              ; preds = %221, %219
  store ptr %217, ptr %3, align 8, !tbaa !21
  store i64 %215, ptr %5, align 8, !tbaa !5
  br label %224

224:                                              ; preds = %223, %204, %202
  %225 = phi ptr [ %199, %204 ], [ %217, %223 ], [ %199, %202 ]
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 %196
  store i8 %195, ptr %226, align 1, !tbaa !5
  store i64 %198, ptr %6, align 8, !tbaa !18
  %227 = load ptr, ptr %3, align 8, !tbaa !21
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 %198
  store i8 0, ptr %228, align 1, !tbaa !5
  br i1 %103, label %229, label %234

229:                                              ; preds = %224
  %230 = and i32 %109, 63
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds nuw [65 x i8], ptr @_ZZN12__apo_stdlib13base64_encodeESt17basic_string_viewIcSt11char_traitsIcEEE6kTable, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !5
  br label %234

234:                                              ; preds = %224, %229
  %235 = phi i8 [ %233, %229 ], [ 61, %224 ]
  %236 = load i64, ptr %6, align 8, !tbaa !18
  %237 = icmp ult i64 %236, 9223372036854775807
  call void @llvm.assume(i1 %237)
  %238 = add nuw nsw i64 %236, 1
  %239 = load ptr, ptr %3, align 8, !tbaa !21
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
  %257 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %256) #20
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
  call void @_ZdlPvm(ptr noundef %239, i64 noundef %262) #21
  br label %263

263:                                              ; preds = %261, %259
  store ptr %257, ptr %3, align 8, !tbaa !21
  store i64 %255, ptr %5, align 8, !tbaa !5
  br label %264

264:                                              ; preds = %263, %244, %242
  %265 = phi ptr [ %239, %244 ], [ %257, %263 ], [ %239, %242 ]
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %236
  store i8 %235, ptr %266, align 1, !tbaa !5
  store i64 %238, ptr %6, align 8, !tbaa !18
  %267 = load ptr, ptr %3, align 8, !tbaa !21
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 %238
  store i8 0, ptr %268, align 1, !tbaa !5
  %269 = add i64 %87, 3
  %270 = icmp ult i64 %269, %0
  br i1 %270, label %86, label %23, !llvm.loop !57

271:                                              ; preds = %132, %170, %211, %251
  %272 = landingpad { ptr, i32 }
          cleanup
  br label %307

273:                                              ; preds = %130
  %274 = landingpad { ptr, i32 }
          cleanup
  br label %307

275:                                              ; preds = %78, %73
  %276 = phi ptr [ %83, %78 ], [ %74, %73 ]
  %277 = getelementptr inbounds i8, ptr %276, i64 -32
  %278 = load ptr, ptr %277, align 8, !tbaa !21
  %279 = load ptr, ptr %4, align 8, !tbaa !21
  %280 = icmp eq ptr %279, %27
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = load i64, ptr %39, align 8, !tbaa !18
  %283 = icmp ult i64 %282, 16
  call void @llvm.assume(i1 %283)
  br label %287

284:                                              ; preds = %275
  %285 = load i64, ptr %27, align 8, !tbaa !5
  %286 = add i64 %285, 1
  call void @_ZdlPvm(ptr noundef %279, i64 noundef %286) #21
  br label %287

287:                                              ; preds = %281, %284
  %288 = load ptr, ptr %3, align 8, !tbaa !21
  %289 = icmp eq ptr %288, %5
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i64, ptr %6, align 8, !tbaa !18
  %292 = icmp ult i64 %291, 16
  call void @llvm.assume(i1 %292)
  br label %296

293:                                              ; preds = %287
  %294 = load i64, ptr %5, align 8, !tbaa !5
  %295 = add i64 %294, 1
  call void @_ZdlPvm(ptr noundef %288, i64 noundef %295) #21
  br label %296

296:                                              ; preds = %290, %293
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %278

297:                                              ; preds = %70, %42
  %298 = landingpad { ptr, i32 }
          cleanup
  %299 = load ptr, ptr %4, align 8, !tbaa !21
  %300 = icmp eq ptr %299, %27
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load i64, ptr %39, align 8, !tbaa !18
  %303 = icmp ult i64 %302, 16
  call void @llvm.assume(i1 %303)
  br label %307

304:                                              ; preds = %297
  %305 = load i64, ptr %27, align 8, !tbaa !5
  %306 = add i64 %305, 1
  call void @_ZdlPvm(ptr noundef %299, i64 noundef %306) #21
  br label %307

307:                                              ; preds = %271, %273, %304, %301, %84
  %308 = phi { ptr, i32 } [ %85, %84 ], [ %298, %301 ], [ %298, %304 ], [ %272, %271 ], [ %274, %273 ]
  %309 = load ptr, ptr %3, align 8, !tbaa !21
  %310 = icmp eq ptr %309, %5
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i64, ptr %6, align 8, !tbaa !18
  %313 = icmp ult i64 %312, 16
  call void @llvm.assume(i1 %313)
  br label %317

314:                                              ; preds = %307
  %315 = load i64, ptr %5, align 8, !tbaa !5
  %316 = add i64 %315, 1
  call void @_ZdlPvm(ptr noundef %309, i64 noundef %316) #21
  br label %317

317:                                              ; preds = %311, %314
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %308
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13base64_decodeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = and i64 %0, 3
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %78, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %10, ptr %3, align 8, !tbaa !14
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %11, align 8, !tbaa !18
  store i8 0, ptr %10, align 8, !tbaa !5
  %12 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17, !prof !22

14:                                               ; preds = %9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %15 unwind label %68

15:                                               ; preds = %14
  %16 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = getelementptr inbounds i8, ptr %22, i64 -32
  %24 = icmp eq ptr %20, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %26, ptr %20, align 8, !tbaa !14
  %27 = load ptr, ptr %3, align 8, !tbaa !21
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, ptr %11, align 8, !tbaa !18
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = add nuw nsw i64 %30, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %32, i1 false)
  br label %36

33:                                               ; preds = %25
  store ptr %27, ptr %20, align 8, !tbaa !21
  %34 = load i64, ptr %10, align 8, !tbaa !5
  store i64 %34, ptr %26, align 8, !tbaa !5
  %35 = load i64, ptr %11, align 8, !tbaa !18
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i64 [ %35, %33 ], [ %30, %29 ]
  %38 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %37, ptr %39, align 8, !tbaa !18
  store ptr %10, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %11, align 8, !tbaa !18
  store i8 0, ptr %10, align 8, !tbaa !5
  %40 = load ptr, ptr %19, align 8, !tbaa !23
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %19, align 8, !tbaa !23
  br label %45

42:                                               ; preds = %17
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %68

43:                                               ; preds = %42
  %44 = load ptr, ptr %19, align 8, !tbaa !30, !noalias !58
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %41, %36 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !34, !noalias !58
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !35, !noalias !58
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = load ptr, ptr %3, align 8, !tbaa !21
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, ptr %11, align 8, !tbaa !18
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %514

65:                                               ; preds = %56
  %66 = load i64, ptr %10, align 8, !tbaa !5
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %67) #21
  br label %514

68:                                               ; preds = %42, %14
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %3, align 8, !tbaa !21
  %71 = icmp eq ptr %70, %10
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, ptr %11, align 8, !tbaa !18
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  br label %516

75:                                               ; preds = %68
  %76 = load i64, ptr %10, align 8, !tbaa !5
  %77 = add i64 %76, 1
  call void @_ZdlPvm(ptr noundef %70, i64 noundef %77) #21
  br label %516

78:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %79, ptr %4, align 8, !tbaa !14
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %80, align 8, !tbaa !18
  store i8 0, ptr %79, align 8, !tbaa !5
  %81 = lshr exact i64 %0, 2
  %82 = mul nuw i64 %81, 3
  %83 = icmp ugt i64 %0, 20
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = icmp ugt i64 %0, -6148914691236517208
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %87 unwind label %99

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %84
  %89 = call i64 @llvm.umax.i64(i64 %82, i64 30)
  %90 = add nuw nsw i64 %89, 1
  %91 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %90) #20
          to label %92 unwind label %99

92:                                               ; preds = %88
  store i8 0, ptr %91, align 1, !tbaa !5
  store ptr %91, ptr %4, align 8, !tbaa !21
  store i64 %89, ptr %79, align 8, !tbaa !5
  br label %95

93:                                               ; preds = %78
  %94 = icmp eq i64 %0, 0
  br i1 %94, label %411, label %95

95:                                               ; preds = %92, %93
  %96 = getelementptr i8, ptr %1, i64 1
  %97 = getelementptr i8, ptr %1, i64 2
  %98 = getelementptr i8, ptr %1, i64 3
  br label %101

99:                                               ; preds = %88, %86
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %503

101:                                              ; preds = %95, %406
  %102 = phi i64 [ %407, %406 ], [ 0, %95 ]
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  %106 = add i8 %104, -65
  %107 = icmp ult i8 %106, 26
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = add nsw i32 %105, -65
  br label %125

110:                                              ; preds = %101
  %111 = add i8 %104, -97
  %112 = icmp ult i8 %111, 26
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = add nsw i32 %105, -71
  br label %125

115:                                              ; preds = %110
  %116 = add i8 %104, -48
  %117 = icmp ult i8 %116, 10
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = add nuw nsw i32 %105, 4
  br label %125

120:                                              ; preds = %115
  %121 = icmp eq i8 %104, 47
  %122 = select i1 %121, i32 63, i32 -1
  %123 = icmp eq i8 %104, 43
  %124 = select i1 %123, i32 62, i32 %122
  br label %125

125:                                              ; preds = %108, %113, %118, %120
  %126 = phi i32 [ %109, %108 ], [ %114, %113 ], [ %119, %118 ], [ %124, %120 ]
  %127 = getelementptr i8, ptr %96, i64 %102
  %128 = load i8, ptr %127, align 1, !tbaa !5
  %129 = zext i8 %128 to i32
  %130 = add i8 %128, -65
  %131 = icmp ult i8 %130, 26
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = add nsw i32 %129, -65
  br label %149

134:                                              ; preds = %125
  %135 = add i8 %128, -97
  %136 = icmp ult i8 %135, 26
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = add nsw i32 %129, -71
  br label %149

139:                                              ; preds = %134
  %140 = add i8 %128, -48
  %141 = icmp ult i8 %140, 10
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = add nuw nsw i32 %129, 4
  br label %149

144:                                              ; preds = %139
  %145 = icmp eq i8 %128, 47
  %146 = select i1 %145, i32 63, i32 -1
  %147 = icmp eq i8 %128, 43
  %148 = select i1 %147, i32 62, i32 %146
  br label %149

149:                                              ; preds = %132, %137, %142, %144
  %150 = phi i32 [ %133, %132 ], [ %138, %137 ], [ %143, %142 ], [ %148, %144 ]
  %151 = getelementptr i8, ptr %97, i64 %102
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = icmp eq i8 %152, 61
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = zext i8 %152 to i32
  %156 = add i8 %152, -65
  %157 = icmp ult i8 %156, 26
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = add nsw i32 %155, -65
  br label %175

160:                                              ; preds = %154
  %161 = add i8 %152, -97
  %162 = icmp ult i8 %161, 26
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = add nsw i32 %155, -71
  br label %175

165:                                              ; preds = %160
  %166 = add i8 %152, -48
  %167 = icmp ult i8 %166, 10
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = add nuw nsw i32 %155, 4
  br label %175

170:                                              ; preds = %165
  %171 = icmp eq i8 %152, 47
  %172 = select i1 %171, i32 63, i32 -1
  %173 = icmp eq i8 %152, 43
  %174 = select i1 %173, i32 62, i32 %172
  br label %175

175:                                              ; preds = %170, %168, %163, %158, %149
  %176 = phi i32 [ 0, %149 ], [ %159, %158 ], [ %164, %163 ], [ %169, %168 ], [ %174, %170 ]
  %177 = getelementptr i8, ptr %98, i64 %102
  %178 = load i8, ptr %177, align 1, !tbaa !5
  %179 = icmp eq i8 %178, 61
  br i1 %179, label %201, label %180

180:                                              ; preds = %175
  %181 = zext i8 %178 to i32
  %182 = add i8 %178, -65
  %183 = icmp ult i8 %182, 26
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = add nsw i32 %181, -65
  br label %201

186:                                              ; preds = %180
  %187 = add i8 %178, -97
  %188 = icmp ult i8 %187, 26
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = add nsw i32 %181, -71
  br label %201

191:                                              ; preds = %186
  %192 = add i8 %178, -48
  %193 = icmp ult i8 %192, 10
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = add nuw nsw i32 %181, 4
  br label %201

196:                                              ; preds = %191
  %197 = icmp eq i8 %178, 47
  %198 = select i1 %197, i32 63, i32 -1
  %199 = icmp eq i8 %178, 43
  %200 = select i1 %199, i32 62, i32 %198
  br label %201

201:                                              ; preds = %196, %194, %189, %184, %175
  %202 = phi i32 [ 0, %175 ], [ %185, %184 ], [ %190, %189 ], [ %195, %194 ], [ %200, %196 ]
  %203 = or i32 %150, %126
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = icmp ne i8 %152, 61
  %207 = icmp slt i32 %176, 0
  %208 = and i1 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = icmp ne i8 %178, 61
  %211 = icmp slt i32 %202, 0
  %212 = and i1 %210, %211
  br i1 %212, label %213, label %282

213:                                              ; preds = %209, %205, %201
  %214 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %214, ptr %5, align 8, !tbaa !14
  %215 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %215, align 8, !tbaa !18
  store i8 0, ptr %214, align 8, !tbaa !5
  %216 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %221, !prof !22

218:                                              ; preds = %213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %219 unwind label %272

219:                                              ; preds = %218
  %220 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %221

221:                                              ; preds = %219, %213
  %222 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 48
  %224 = load ptr, ptr %223, align 8, !tbaa !23
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 64
  %226 = load ptr, ptr %225, align 8, !tbaa !29
  %227 = getelementptr inbounds i8, ptr %226, i64 -32
  %228 = icmp eq ptr %224, %227
  br i1 %228, label %246, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds nuw i8, ptr %224, i64 16
  store ptr %230, ptr %224, align 8, !tbaa !14
  %231 = load ptr, ptr %5, align 8, !tbaa !21
  %232 = icmp eq ptr %231, %214
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i64, ptr %215, align 8, !tbaa !18
  %235 = icmp ult i64 %234, 16
  call void @llvm.assume(i1 %235)
  %236 = add nuw nsw i64 %234, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %230, ptr noundef nonnull align 8 dereferenceable(1) %214, i64 %236, i1 false)
  br label %240

237:                                              ; preds = %229
  store ptr %231, ptr %224, align 8, !tbaa !21
  %238 = load i64, ptr %214, align 8, !tbaa !5
  store i64 %238, ptr %230, align 8, !tbaa !5
  %239 = load i64, ptr %215, align 8, !tbaa !18
  br label %240

240:                                              ; preds = %237, %233
  %241 = phi i64 [ %239, %237 ], [ %234, %233 ]
  %242 = icmp ult i64 %241, 9223372036854775807
  call void @llvm.assume(i1 %242)
  %243 = getelementptr inbounds nuw i8, ptr %224, i64 8
  store i64 %241, ptr %243, align 8, !tbaa !18
  store ptr %214, ptr %5, align 8, !tbaa !21
  store i64 0, ptr %215, align 8, !tbaa !18
  store i8 0, ptr %214, align 8, !tbaa !5
  %244 = load ptr, ptr %223, align 8, !tbaa !23
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 32
  store ptr %245, ptr %223, align 8, !tbaa !23
  br label %249

246:                                              ; preds = %221
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %222, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %247 unwind label %272

247:                                              ; preds = %246
  %248 = load ptr, ptr %223, align 8, !tbaa !30, !noalias !61
  br label %249

249:                                              ; preds = %247, %240
  %250 = phi ptr [ %245, %240 ], [ %248, %247 ]
  %251 = getelementptr inbounds nuw i8, ptr %222, i64 56
  %252 = load ptr, ptr %251, align 8, !tbaa !34, !noalias !61
  %253 = icmp eq ptr %250, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = getelementptr inbounds nuw i8, ptr %222, i64 72
  %256 = load ptr, ptr %255, align 8, !tbaa !35, !noalias !61
  %257 = getelementptr inbounds i8, ptr %256, i64 -8
  %258 = load ptr, ptr %257, align 8, !tbaa !36
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 512
  br label %260

260:                                              ; preds = %254, %249
  %261 = phi ptr [ %259, %254 ], [ %250, %249 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 -32
  %263 = load ptr, ptr %262, align 8, !tbaa !21
  %264 = load ptr, ptr %5, align 8, !tbaa !21
  %265 = icmp eq ptr %264, %214
  br i1 %265, label %266, label %269

266:                                              ; preds = %260
  %267 = load i64, ptr %215, align 8, !tbaa !18
  %268 = icmp ult i64 %267, 16
  call void @llvm.assume(i1 %268)
  br label %492

269:                                              ; preds = %260
  %270 = load i64, ptr %214, align 8, !tbaa !5
  %271 = add i64 %270, 1
  call void @_ZdlPvm(ptr noundef %264, i64 noundef %271) #21
  br label %492

272:                                              ; preds = %246, %218
  %273 = landingpad { ptr, i32 }
          cleanup
  %274 = load ptr, ptr %5, align 8, !tbaa !21
  %275 = icmp eq ptr %274, %214
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i64, ptr %215, align 8, !tbaa !18
  %278 = icmp ult i64 %277, 16
  call void @llvm.assume(i1 %278)
  br label %503

279:                                              ; preds = %272
  %280 = load i64, ptr %214, align 8, !tbaa !5
  %281 = add i64 %280, 1
  call void @_ZdlPvm(ptr noundef %274, i64 noundef %281) #21
  br label %503

282:                                              ; preds = %209
  %283 = shl nsw i32 %126, 18
  %284 = shl nsw i32 %150, 12
  %285 = or i32 %284, %283
  %286 = shl nsw i32 %176, 6
  %287 = or i32 %285, %286
  %288 = or i32 %287, %202
  %289 = lshr i32 %288, 16
  %290 = trunc i32 %289 to i8
  %291 = load i64, ptr %80, align 8, !tbaa !18
  %292 = icmp ult i64 %291, 9223372036854775807
  call void @llvm.assume(i1 %292)
  %293 = add nuw nsw i64 %291, 1
  %294 = load ptr, ptr %4, align 8, !tbaa !21
  %295 = icmp eq ptr %294, %79
  %296 = load i64, ptr %79, align 8
  br i1 %295, label %297, label %299

297:                                              ; preds = %282
  %298 = icmp samesign ugt i64 %291, 14
  br i1 %298, label %303, label %321

299:                                              ; preds = %282
  %300 = icmp samesign ugt i64 %296, 14
  call void @llvm.assume(i1 %300)
  %301 = icmp ult i64 %296, 9223372036854775807
  call void @llvm.assume(i1 %301)
  %302 = icmp samesign ult i64 %291, %296
  br i1 %302, label %321, label %303

303:                                              ; preds = %299, %297
  %304 = phi i64 [ %296, %299 ], [ 15, %297 ]
  %305 = icmp eq i64 %293, 9223372036854775807
  br i1 %305, label %306, label %308

306:                                              ; preds = %343, %303, %385
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %307 unwind label %366

307:                                              ; preds = %306
  unreachable

308:                                              ; preds = %303
  %309 = shl nuw i64 %304, 1
  %310 = icmp ult i64 %293, %309
  %311 = call i64 @llvm.umin.i64(i64 %309, i64 9223372036854775806)
  %312 = select i1 %310, i64 %311, i64 %293
  %313 = add nuw nsw i64 %312, 1
  %314 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %313) #20
          to label %315 unwind label %364

315:                                              ; preds = %308
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %314, ptr align 1 %294, i64 %291, i1 false)
  br i1 %295, label %316, label %318

316:                                              ; preds = %315
  %317 = icmp samesign ult i64 %291, 16
  call void @llvm.assume(i1 %317)
  br label %320

318:                                              ; preds = %315
  %319 = add i64 %296, 1
  call void @_ZdlPvm(ptr noundef %294, i64 noundef %319) #21
  br label %320

320:                                              ; preds = %318, %316
  store ptr %314, ptr %4, align 8, !tbaa !21
  store i64 %312, ptr %79, align 8, !tbaa !5
  br label %321

321:                                              ; preds = %320, %299, %297
  %322 = phi ptr [ %294, %299 ], [ %314, %320 ], [ %294, %297 ]
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %291
  store i8 %290, ptr %323, align 1, !tbaa !5
  store i64 %293, ptr %80, align 8, !tbaa !18
  %324 = load ptr, ptr %4, align 8, !tbaa !21
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 %293
  store i8 0, ptr %325, align 1, !tbaa !5
  %326 = load i8, ptr %151, align 1, !tbaa !5
  %327 = icmp eq i8 %326, 61
  br i1 %327, label %368, label %328

328:                                              ; preds = %321
  %329 = lshr i32 %288, 8
  %330 = trunc i32 %329 to i8
  %331 = load i64, ptr %80, align 8, !tbaa !18
  %332 = icmp ult i64 %331, 9223372036854775807
  call void @llvm.assume(i1 %332)
  %333 = add nuw nsw i64 %331, 1
  %334 = load ptr, ptr %4, align 8, !tbaa !21
  %335 = icmp eq ptr %334, %79
  %336 = load i64, ptr %79, align 8
  br i1 %335, label %337, label %339

337:                                              ; preds = %328
  %338 = icmp samesign ugt i64 %331, 14
  br i1 %338, label %343, label %359

339:                                              ; preds = %328
  %340 = icmp samesign ugt i64 %336, 14
  call void @llvm.assume(i1 %340)
  %341 = icmp ult i64 %336, 9223372036854775807
  call void @llvm.assume(i1 %341)
  %342 = icmp samesign ult i64 %331, %336
  br i1 %342, label %359, label %343

343:                                              ; preds = %339, %337
  %344 = phi i64 [ %336, %339 ], [ 15, %337 ]
  %345 = icmp eq i64 %333, 9223372036854775807
  br i1 %345, label %306, label %346

346:                                              ; preds = %343
  %347 = shl nuw i64 %344, 1
  %348 = icmp ult i64 %333, %347
  %349 = call i64 @llvm.umin.i64(i64 %347, i64 9223372036854775806)
  %350 = select i1 %348, i64 %349, i64 %333
  %351 = add nuw nsw i64 %350, 1
  %352 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %351) #20
          to label %353 unwind label %364

353:                                              ; preds = %346
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %352, ptr align 1 %334, i64 %331, i1 false)
  br i1 %335, label %354, label %356

354:                                              ; preds = %353
  %355 = icmp samesign ult i64 %331, 16
  call void @llvm.assume(i1 %355)
  br label %358

356:                                              ; preds = %353
  %357 = add i64 %336, 1
  call void @_ZdlPvm(ptr noundef %334, i64 noundef %357) #21
  br label %358

358:                                              ; preds = %356, %354
  store ptr %352, ptr %4, align 8, !tbaa !21
  store i64 %350, ptr %79, align 8, !tbaa !5
  br label %359

359:                                              ; preds = %337, %339, %358
  %360 = phi ptr [ %334, %339 ], [ %352, %358 ], [ %334, %337 ]
  %361 = getelementptr inbounds nuw i8, ptr %360, i64 %331
  store i8 %330, ptr %361, align 1, !tbaa !5
  store i64 %333, ptr %80, align 8, !tbaa !18
  %362 = load ptr, ptr %4, align 8, !tbaa !21
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 %333
  store i8 0, ptr %363, align 1, !tbaa !5
  br label %368

364:                                              ; preds = %308, %346, %388
  %365 = landingpad { ptr, i32 }
          cleanup
  br label %503

366:                                              ; preds = %306
  %367 = landingpad { ptr, i32 }
          cleanup
  br label %503

368:                                              ; preds = %359, %321
  %369 = load i8, ptr %177, align 1, !tbaa !5
  %370 = icmp eq i8 %369, 61
  br i1 %370, label %406, label %371

371:                                              ; preds = %368
  %372 = trunc i32 %288 to i8
  %373 = load i64, ptr %80, align 8, !tbaa !18
  %374 = icmp ult i64 %373, 9223372036854775807
  call void @llvm.assume(i1 %374)
  %375 = add nuw nsw i64 %373, 1
  %376 = load ptr, ptr %4, align 8, !tbaa !21
  %377 = icmp eq ptr %376, %79
  %378 = load i64, ptr %79, align 8
  br i1 %377, label %379, label %381

379:                                              ; preds = %371
  %380 = icmp samesign ugt i64 %373, 14
  br i1 %380, label %385, label %401

381:                                              ; preds = %371
  %382 = icmp samesign ugt i64 %378, 14
  call void @llvm.assume(i1 %382)
  %383 = icmp ult i64 %378, 9223372036854775807
  call void @llvm.assume(i1 %383)
  %384 = icmp samesign ult i64 %373, %378
  br i1 %384, label %401, label %385

385:                                              ; preds = %381, %379
  %386 = phi i64 [ %378, %381 ], [ 15, %379 ]
  %387 = icmp eq i64 %375, 9223372036854775807
  br i1 %387, label %306, label %388

388:                                              ; preds = %385
  %389 = shl nuw i64 %386, 1
  %390 = icmp ult i64 %375, %389
  %391 = call i64 @llvm.umin.i64(i64 %389, i64 9223372036854775806)
  %392 = select i1 %390, i64 %391, i64 %375
  %393 = add nuw nsw i64 %392, 1
  %394 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %393) #20
          to label %395 unwind label %364

395:                                              ; preds = %388
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %394, ptr align 1 %376, i64 %373, i1 false)
  br i1 %377, label %396, label %398

396:                                              ; preds = %395
  %397 = icmp samesign ult i64 %373, 16
  call void @llvm.assume(i1 %397)
  br label %400

398:                                              ; preds = %395
  %399 = add i64 %378, 1
  call void @_ZdlPvm(ptr noundef %376, i64 noundef %399) #21
  br label %400

400:                                              ; preds = %398, %396
  store ptr %394, ptr %4, align 8, !tbaa !21
  store i64 %392, ptr %79, align 8, !tbaa !5
  br label %401

401:                                              ; preds = %379, %381, %400
  %402 = phi ptr [ %376, %381 ], [ %394, %400 ], [ %376, %379 ]
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 %373
  store i8 %372, ptr %403, align 1, !tbaa !5
  store i64 %375, ptr %80, align 8, !tbaa !18
  %404 = load ptr, ptr %4, align 8, !tbaa !21
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 %375
  store i8 0, ptr %405, align 1, !tbaa !5
  br label %406

406:                                              ; preds = %401, %368
  %407 = add i64 %102, 4
  %408 = icmp ult i64 %407, %0
  br i1 %408, label %101, label %409, !llvm.loop !64

409:                                              ; preds = %406
  %410 = load ptr, ptr %4, align 8, !tbaa !21
  br label %411

411:                                              ; preds = %409, %93
  %412 = phi ptr [ %410, %409 ], [ %79, %93 ]
  %413 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %413, ptr %6, align 8, !tbaa !14
  %414 = icmp eq ptr %412, %79
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i64, ptr %80, align 8, !tbaa !18
  %417 = icmp ult i64 %416, 16
  call void @llvm.assume(i1 %417)
  %418 = add nuw nsw i64 %416, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %413, ptr noundef nonnull align 8 dereferenceable(1) %79, i64 %418, i1 false)
  br label %422

419:                                              ; preds = %411
  store ptr %412, ptr %6, align 8, !tbaa !21
  %420 = load i64, ptr %79, align 8, !tbaa !5
  store i64 %420, ptr %413, align 8, !tbaa !5
  %421 = load i64, ptr %80, align 8, !tbaa !18
  br label %422

422:                                              ; preds = %415, %419
  %423 = phi i64 [ %416, %415 ], [ %421, %419 ]
  %424 = icmp ult i64 %423, 9223372036854775807
  call void @llvm.assume(i1 %424)
  %425 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %423, ptr %425, align 8, !tbaa !18
  store ptr %79, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %80, align 8, !tbaa !18
  store i8 0, ptr %79, align 8, !tbaa !5
  %426 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %431, !prof !22

428:                                              ; preds = %422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %429 unwind label %482

429:                                              ; preds = %428
  %430 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #13
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %431

431:                                              ; preds = %429, %422
  %432 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 48
  %434 = load ptr, ptr %433, align 8, !tbaa !23
  %435 = getelementptr inbounds nuw i8, ptr %432, i64 64
  %436 = load ptr, ptr %435, align 8, !tbaa !29
  %437 = getelementptr inbounds i8, ptr %436, i64 -32
  %438 = icmp eq ptr %434, %437
  br i1 %438, label %456, label %439

439:                                              ; preds = %431
  %440 = getelementptr inbounds nuw i8, ptr %434, i64 16
  store ptr %440, ptr %434, align 8, !tbaa !14
  %441 = load ptr, ptr %6, align 8, !tbaa !21
  %442 = icmp eq ptr %441, %413
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = load i64, ptr %425, align 8, !tbaa !18
  %445 = icmp ult i64 %444, 16
  call void @llvm.assume(i1 %445)
  %446 = add nuw nsw i64 %444, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %440, ptr noundef nonnull align 8 dereferenceable(1) %413, i64 %446, i1 false)
  br label %450

447:                                              ; preds = %439
  store ptr %441, ptr %434, align 8, !tbaa !21
  %448 = load i64, ptr %413, align 8, !tbaa !5
  store i64 %448, ptr %440, align 8, !tbaa !5
  %449 = load i64, ptr %425, align 8, !tbaa !18
  br label %450

450:                                              ; preds = %447, %443
  %451 = phi i64 [ %449, %447 ], [ %444, %443 ]
  %452 = icmp ult i64 %451, 9223372036854775807
  call void @llvm.assume(i1 %452)
  %453 = getelementptr inbounds nuw i8, ptr %434, i64 8
  store i64 %451, ptr %453, align 8, !tbaa !18
  store ptr %413, ptr %6, align 8, !tbaa !21
  store i64 0, ptr %425, align 8, !tbaa !18
  store i8 0, ptr %413, align 8, !tbaa !5
  %454 = load ptr, ptr %433, align 8, !tbaa !23
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 32
  store ptr %455, ptr %433, align 8, !tbaa !23
  br label %459

456:                                              ; preds = %431
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %432, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %457 unwind label %482

457:                                              ; preds = %456
  %458 = load ptr, ptr %433, align 8, !tbaa !30, !noalias !65
  br label %459

459:                                              ; preds = %457, %450
  %460 = phi ptr [ %455, %450 ], [ %458, %457 ]
  %461 = getelementptr inbounds nuw i8, ptr %432, i64 56
  %462 = load ptr, ptr %461, align 8, !tbaa !34, !noalias !65
  %463 = icmp eq ptr %460, %462
  br i1 %463, label %464, label %470

464:                                              ; preds = %459
  %465 = getelementptr inbounds nuw i8, ptr %432, i64 72
  %466 = load ptr, ptr %465, align 8, !tbaa !35, !noalias !65
  %467 = getelementptr inbounds i8, ptr %466, i64 -8
  %468 = load ptr, ptr %467, align 8, !tbaa !36
  %469 = getelementptr inbounds nuw i8, ptr %468, i64 512
  br label %470

470:                                              ; preds = %464, %459
  %471 = phi ptr [ %469, %464 ], [ %460, %459 ]
  %472 = getelementptr inbounds i8, ptr %471, i64 -32
  %473 = load ptr, ptr %472, align 8, !tbaa !21
  %474 = load ptr, ptr %6, align 8, !tbaa !21
  %475 = icmp eq ptr %474, %413
  br i1 %475, label %476, label %479

476:                                              ; preds = %470
  %477 = load i64, ptr %425, align 8, !tbaa !18
  %478 = icmp ult i64 %477, 16
  call void @llvm.assume(i1 %478)
  br label %492

479:                                              ; preds = %470
  %480 = load i64, ptr %413, align 8, !tbaa !5
  %481 = add i64 %480, 1
  call void @_ZdlPvm(ptr noundef %474, i64 noundef %481) #21
  br label %492

482:                                              ; preds = %456, %428
  %483 = landingpad { ptr, i32 }
          cleanup
  %484 = load ptr, ptr %6, align 8, !tbaa !21
  %485 = icmp eq ptr %484, %413
  br i1 %485, label %486, label %489

486:                                              ; preds = %482
  %487 = load i64, ptr %425, align 8, !tbaa !18
  %488 = icmp ult i64 %487, 16
  call void @llvm.assume(i1 %488)
  br label %503

489:                                              ; preds = %482
  %490 = load i64, ptr %413, align 8, !tbaa !5
  %491 = add i64 %490, 1
  call void @_ZdlPvm(ptr noundef %484, i64 noundef %491) #21
  br label %503

492:                                              ; preds = %269, %266, %479, %476
  %493 = phi ptr [ %473, %476 ], [ %473, %479 ], [ %263, %266 ], [ %263, %269 ]
  %494 = load ptr, ptr %4, align 8, !tbaa !21
  %495 = icmp eq ptr %494, %79
  br i1 %495, label %496, label %499

496:                                              ; preds = %492
  %497 = load i64, ptr %80, align 8, !tbaa !18
  %498 = icmp ult i64 %497, 16
  call void @llvm.assume(i1 %498)
  br label %502

499:                                              ; preds = %492
  %500 = load i64, ptr %79, align 8, !tbaa !5
  %501 = add i64 %500, 1
  call void @_ZdlPvm(ptr noundef %494, i64 noundef %501) #21
  br label %502

502:                                              ; preds = %496, %499
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %514

503:                                              ; preds = %364, %366, %489, %486, %276, %279, %99
  %504 = phi { ptr, i32 } [ %100, %99 ], [ %273, %276 ], [ %273, %279 ], [ %483, %486 ], [ %483, %489 ], [ %365, %364 ], [ %367, %366 ]
  %505 = load ptr, ptr %4, align 8, !tbaa !21
  %506 = icmp eq ptr %505, %79
  br i1 %506, label %507, label %510

507:                                              ; preds = %503
  %508 = load i64, ptr %80, align 8, !tbaa !18
  %509 = icmp ult i64 %508, 16
  call void @llvm.assume(i1 %509)
  br label %513

510:                                              ; preds = %503
  %511 = load i64, ptr %79, align 8, !tbaa !5
  %512 = add i64 %511, 1
  call void @_ZdlPvm(ptr noundef %505, i64 noundef %512) #21
  br label %513

513:                                              ; preds = %507, %510
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %516

514:                                              ; preds = %65, %62, %502
  %515 = phi ptr [ %493, %502 ], [ %59, %62 ], [ %59, %65 ]
  ret ptr %515

516:                                              ; preds = %72, %75, %513
  %517 = phi { ptr, i32 } [ %504, %513 ], [ %69, %72 ], [ %69, %75 ]
  resume { ptr, i32 } %517
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
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
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %10, %1, %3
  %15 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 1, %7 ], [ 0, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_utf8_validate(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %46, label %9

6:                                                ; preds = %38, %32, %37, %29
  %7 = phi i64 [ %30, %29 ], [ %27, %37 ], [ %27, %32 ], [ %27, %38 ]
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
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
  %25 = phi i1 [ false, %15 ], [ true, %18 ], [ false, %21 ]
  %26 = phi i64 [ 2, %15 ], [ 3, %18 ], [ 4, %21 ]
  %27 = add i64 %26, %10
  %28 = icmp ugt i64 %27, %4
  br i1 %28, label %46, label %42

29:                                               ; preds = %9
  %30 = add nuw i64 %10, 1
  %31 = icmp ult i64 %10, %4
  br i1 %31, label %6, label %46

32:                                               ; preds = %42
  br i1 %17, label %6, label %33, !llvm.loop !8

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %11, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !5
  %36 = icmp slt i8 %35, -64
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  br i1 %25, label %6, label %38, !llvm.loop !8

38:                                               ; preds = %37
  %39 = getelementptr i8, ptr %11, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp slt i8 %40, -64
  br i1 %41, label %6, label %46

42:                                               ; preds = %24
  %43 = getelementptr i8, ptr %11, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !5
  %45 = icmp slt i8 %44, -64
  br i1 %45, label %32, label %46

46:                                               ; preds = %6, %21, %24, %29, %42, %33, %38, %1, %3
  %47 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 0, %38 ], [ 0, %33 ], [ 0, %42 ], [ 0, %29 ], [ 1, %6 ], [ 0, %21 ], [ 0, %24 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_utf8_char_count(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #13
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %83, label %36

6:                                                ; preds = %65, %59, %64, %56
  %7 = phi i64 [ %57, %56 ], [ %54, %64 ], [ %54, %59 ], [ %54, %65 ]
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
  %19 = load <4 x i8>, ptr %17, align 1, !tbaa !5
  %20 = load <4 x i8>, ptr %18, align 1, !tbaa !5
  %21 = icmp sgt <4 x i8> %19, splat (i8 -65)
  %22 = icmp sgt <4 x i8> %20, splat (i8 -65)
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %15, %23
  %26 = add <4 x i32> %16, %24
  %27 = add nuw i64 %14, 8
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !68

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
  %39 = load i8, ptr %38, align 1, !tbaa !5
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
  %52 = phi i1 [ false, %42 ], [ true, %45 ], [ false, %48 ]
  %53 = phi i64 [ 2, %42 ], [ 3, %45 ], [ 4, %48 ]
  %54 = add i64 %53, %37
  %55 = icmp ugt i64 %54, %4
  br i1 %55, label %83, label %69

56:                                               ; preds = %36
  %57 = add nuw i64 %37, 1
  %58 = icmp ult i64 %37, %4
  br i1 %58, label %6, label %83

59:                                               ; preds = %69
  br i1 %44, label %6, label %60, !llvm.loop !8

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %38, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !5
  %63 = icmp slt i8 %62, -64
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  br i1 %52, label %6, label %65, !llvm.loop !8

65:                                               ; preds = %64
  %66 = getelementptr i8, ptr %38, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = icmp slt i8 %67, -64
  br i1 %68, label %6, label %83

69:                                               ; preds = %51
  %70 = getelementptr i8, ptr %38, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = icmp slt i8 %71, -64
  br i1 %72, label %59, label %83

73:                                               ; preds = %33, %73
  %74 = phi i64 [ %81, %73 ], [ %34, %33 ]
  %75 = phi i32 [ %80, %73 ], [ %35, %33 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = icmp sgt i8 %77, -65
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = add nuw i64 %74, 1
  %82 = icmp eq i64 %81, %4
  br i1 %82, label %83, label %73, !llvm.loop !69

83:                                               ; preds = %48, %51, %56, %69, %60, %65, %73, %29, %1, %3
  %84 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %31, %29 ], [ %80, %73 ], [ 0, %65 ], [ 0, %60 ], [ 0, %69 ], [ 0, %56 ], [ 0, %51 ], [ 0, %48 ]
  ret i32 %84
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #23
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 16
  %3 = alloca %"struct.std::_Deque_iterator", align 16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !36, !noalias !70
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !36
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !73, !noalias !70
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !73
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !36, !noalias !74
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !36
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !73, !noalias !74
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !73
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !78
  %21 = load ptr, ptr %9, align 8, !tbaa !79
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #21
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !80

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !77
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !81
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #21
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #23
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !81
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !82

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  store ptr %12, ptr %0, align 8, !tbaa !77
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !36
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !83

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #13
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #21
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !80

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %39) #23
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #13
  %44 = load ptr, ptr %0, align 8, !tbaa !77
  %45 = load i64, ptr %6, align 8, !tbaa !81
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #24
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
  store ptr %15, ptr %52, align 8, !tbaa !35
  %53 = load ptr, ptr %15, align 8, !tbaa !36
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !84
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !35
  %60 = load ptr, ptr %58, align 8, !tbaa !36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !84
  store ptr %53, ptr %51, align 8, !tbaa !85
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !23
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #23
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !35
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !30
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !18
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !5
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #21
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !5
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #21
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !18
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !5
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #21
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !18
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !5
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #21
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !18
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !5
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #21
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !18
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !21
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !5
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #21
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !18
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !5
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #21
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !18
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !21
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !5
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #21
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !18
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !21
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !5
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #21
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !18
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !21
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !5
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #21
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !18
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !21
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !5
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #21
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !18
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !21
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !5
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #21
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !18
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !21
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !5
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #21
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !18
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !5
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #21
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !18
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !21
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !5
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #21
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !18
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !21
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !5
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #21
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !18
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !35
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !86

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !84
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !21
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !18
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !5
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #21
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !87

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !34
  %236 = load ptr, ptr %2, align 8, !tbaa !30
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !21
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !18
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !5
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #21
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !87

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !30
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !21
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !18
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !5
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #21
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !87

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = load ptr, ptr %4, align 8, !tbaa !30
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !81
  %39 = load ptr, ptr %0, align 8, !tbaa !77
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !79
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !36
  %51 = load ptr, ptr %3, align 8, !tbaa !23
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !14
  %53 = load ptr, ptr %1, align 8, !tbaa !21
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !18
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !21
  %62 = load i64, ptr %54, align 8, !tbaa !5
  store i64 %62, ptr %52, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !18
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !18
  store ptr %54, ptr %1, align 8, !tbaa !21
  store i64 0, ptr %64, align 8, !tbaa !18
  store i8 0, ptr %54, align 8, !tbaa !5
  %68 = load ptr, ptr %5, align 8, !tbaa !79
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !35
  %70 = load ptr, ptr %69, align 8, !tbaa !36
  store ptr %70, ptr %18, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !84
  store ptr %70, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !81
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !77
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
  br i1 %30, label %31, label %32, !prof !88

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %35, ptr %24, align 8, !tbaa !36
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !89

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %48, ptr %42, align 8, !tbaa !36
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #20
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !88

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %69, ptr %60, align 8, !tbaa !36
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !77
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #21
  store ptr %55, ptr %0, align 8, !tbaa !77
  store i64 %52, ptr %14, align 8, !tbaa !81
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !35
  %75 = load ptr, ptr %74, align 8, !tbaa !36
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !34
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !84
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !35
  %81 = load ptr, ptr %80, align 8, !tbaa !36
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !34
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !84
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }

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
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !12, !11}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !20, i64 8, !6, i64 16}
!20 = !{!"long", !6, i64 0}
!21 = !{!19, !16, i64 0}
!22 = !{!"branch_weights", i32 1, i32 1023}
!23 = !{!24, !28, i64 48}
!24 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !25, i64 0, !20, i64 8, !27, i64 16, !27, i64 48}
!25 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!26 = !{!"any p2 pointer", !17, i64 0}
!27 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !28, i64 0, !28, i64 8, !28, i64 16, !25, i64 24}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!29 = !{!24, !28, i64 64}
!30 = !{!27, !28, i64 0}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!33 = distinct !{!33, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!34 = !{!27, !28, i64 8}
!35 = !{!27, !25, i64 24}
!36 = !{!28, !28, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!39 = distinct !{!39, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!42 = distinct !{!42, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!43 = distinct !{!43, !9}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!46 = distinct !{!46, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!49 = distinct !{!49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!52 = distinct !{!52, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!53 = distinct !{!53, !9}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!56 = distinct !{!56, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!57 = distinct !{!57, !9}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!60 = distinct !{!60, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!63 = distinct !{!63, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!64 = distinct !{!64, !9}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!68 = distinct !{!68, !9, !11, !12}
!69 = distinct !{!69, !9, !12, !11}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!73 = !{!17, !17, i64 0}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!76 = distinct !{!76, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!77 = !{!24, !25, i64 0}
!78 = !{!24, !25, i64 40}
!79 = !{!24, !25, i64 72}
!80 = distinct !{!80, !9}
!81 = !{!24, !20, i64 8}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = distinct !{!83, !9}
!84 = !{!27, !28, i64 16}
!85 = !{!24, !28, i64 16}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
