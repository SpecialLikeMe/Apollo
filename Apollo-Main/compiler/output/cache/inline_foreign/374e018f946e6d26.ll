; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/374e018f946e6d26.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/374e018f946e6d26.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN12__apo_stdlib15buffer_push_i64EPvl = comdat any

$_ZN12__apo_stdlib11buffer_textEPv = comdat any

$_ZN12__apo_stdlib13buffer_handleD2Ev = comdat any

$_ZN12__apo_stdlib13buffer_handleD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZTVN12__apo_stdlib13buffer_handleE = comdat any

$_ZTIN12__apo_stdlib13buffer_handleE = comdat any

$_ZTSN12__apo_stdlib13buffer_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

@_ZTVN12__apo_stdlib13buffer_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib13buffer_handleE, ptr @_ZN12__apo_stdlib13buffer_handleD2Ev, ptr @_ZN12__apo_stdlib13buffer_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib13buffer_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13buffer_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13buffer_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13buffer_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.3 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2052_5_618sys__native_bufferEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13buffer_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %5, align 8, !tbaa !18
  store i8 0, ptr %4, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_2052_5_627sys__native_buffer_push_strEPvPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %0, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i64, ptr %15, align 8, !tbaa !18
  %17 = icmp ult i64 %16, 9223372036854775807
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 9223372036854775806, %16
  %19 = icmp ult i64 %18, %7
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

21:                                               ; preds = %13
  %22 = add nuw i64 %16, %7
  %23 = load ptr, ptr %14, align 8, !tbaa !22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = icmp samesign ult i64 %16, 16
  tail call void @llvm.assume(i1 %27)
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i64, ptr %24, align 8
  %30 = select i1 %25, i64 15, i64 %29
  %31 = icmp samesign ugt i64 %30, 14
  tail call void @llvm.assume(i1 %31)
  %32 = icmp ult i64 %30, 9223372036854775807
  tail call void @llvm.assume(i1 %32)
  %33 = icmp ugt i64 %22, %30
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = icmp eq i64 %7, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %23, i64 %16
  %38 = icmp eq i64 %7, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8, ptr %1, align 1, !tbaa !21
  store i8 %40, ptr %37, align 1, !tbaa !21
  br label %43

41:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %1, i64 %7, i1 false)
  br label %43

42:                                               ; preds = %28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %16, i64 noundef 0, ptr noundef %1, i64 noundef %7)
  br label %43

43:                                               ; preds = %42, %41, %39, %34
  store i64 %22, ptr %15, align 8, !tbaa !18
  %44 = load ptr, ptr %14, align 8, !tbaa !22
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 %22
  store i8 0, ptr %45, align 1, !tbaa !21
  br label %46

46:                                               ; preds = %6, %9, %43
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_2052_5_627sys__native_buffer_push_i32EPvi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  tail call void @_ZN12__apo_stdlib15buffer_push_i64EPvl(ptr noundef %0, i64 noundef %3)
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15buffer_push_i64EPvl(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %101

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %10 = lshr i64 %1, 63
  %11 = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  %12 = icmp ult i64 %11, 10
  br i1 %12, label %31, label %13

13:                                               ; preds = %9, %27
  %14 = phi i64 [ %28, %27 ], [ %11, %9 ]
  %15 = phi i32 [ %29, %27 ], [ 1, %9 ]
  %16 = icmp ult i64 %14, 100
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  br label %31

19:                                               ; preds = %13
  %20 = icmp ult i64 %14, 1000
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = add i32 %15, 2
  br label %31

23:                                               ; preds = %19
  %24 = icmp ult i64 %14, 10000
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = add i32 %15, 3
  br label %31

27:                                               ; preds = %23
  %28 = udiv i64 %14, 10000
  %29 = add i32 %15, 4
  %30 = icmp ult i64 %14, 100000
  br i1 %30, label %31, label %13, !llvm.loop !23

31:                                               ; preds = %27, %25, %21, %17, %9
  %32 = phi i32 [ %26, %25 ], [ %18, %17 ], [ %22, %21 ], [ 1, %9 ], [ %29, %27 ]
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %33, ptr %3, align 8, !tbaa !14, !alias.scope !25
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %34, align 8, !tbaa !18, !alias.scope !25
  store i8 0, ptr %33, align 8, !tbaa !21, !alias.scope !25
  %35 = trunc nuw nsw i64 %10 to i32
  %36 = add i32 %32, %35
  %37 = zext i32 %36 to i64
  %38 = zext i32 %32 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %37, i64 %40, i64 %11)
          to label %50 unwind label %41

41:                                               ; preds = %31
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !25
  %44 = icmp eq ptr %43, %33
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, ptr %33, align 8, !tbaa !21, !alias.scope !25
  %47 = add i64 %46, 1
  call void @_ZdlPvm(ptr noundef %43, i64 noundef %47) #22
  br label %48

48:                                               ; preds = %41, %45, %100
  %49 = phi { ptr, i32 } [ %94, %100 ], [ %42, %45 ], [ %42, %41 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %31
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = load ptr, ptr %3, align 8, !tbaa !22
  %53 = load i64, ptr %34, align 8, !tbaa !18
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %56 = load i64, ptr %55, align 8, !tbaa !18
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = sub nuw nsw i64 9223372036854775806, %56
  %59 = icmp samesign ult i64 %58, %53
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %61 unwind label %93

61:                                               ; preds = %60
  unreachable

62:                                               ; preds = %50
  %63 = add nuw i64 %56, %53
  %64 = load ptr, ptr %51, align 8, !tbaa !22
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = icmp samesign ult i64 %56, 16
  call void @llvm.assume(i1 %68)
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i64, ptr %65, align 8
  %71 = select i1 %66, i64 15, i64 %70
  %72 = icmp samesign ugt i64 %71, 14
  call void @llvm.assume(i1 %72)
  %73 = icmp ult i64 %71, 9223372036854775807
  call void @llvm.assume(i1 %73)
  %74 = icmp ugt i64 %63, %71
  br i1 %74, label %83, label %75

75:                                               ; preds = %69
  %76 = icmp eq i64 %53, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %64, i64 %56
  %79 = icmp eq i64 %53, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i8, ptr %52, align 1, !tbaa !21
  store i8 %81, ptr %78, align 1, !tbaa !21
  br label %84

82:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr align 1 %52, i64 %53, i1 false)
  br label %84

83:                                               ; preds = %69
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %51, i64 noundef %56, i64 noundef 0, ptr noundef %52, i64 noundef %53)
          to label %84 unwind label %93

84:                                               ; preds = %82, %80, %75, %83
  store i64 %63, ptr %55, align 8, !tbaa !18
  %85 = load ptr, ptr %51, align 8, !tbaa !22
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 %63
  store i8 0, ptr %86, align 1, !tbaa !21
  %87 = load ptr, ptr %3, align 8, !tbaa !22
  %88 = icmp eq ptr %87, %33
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i64, ptr %33, align 8, !tbaa !21
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %87, i64 noundef %91) #22
  br label %92

92:                                               ; preds = %84, %89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %101

93:                                               ; preds = %83, %60
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %3, align 8, !tbaa !22
  %96 = icmp eq ptr %95, %33
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %33, align 8, !tbaa !21
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %99) #22
  br label %100

100:                                              ; preds = %93, %97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %48

101:                                              ; preds = %5, %2, %92
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2052_5_623sys__native_buffer_textEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib11buffer_textEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11buffer_textEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %89

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %11, ptr %2, align 8, !tbaa !14
  %12 = load ptr, ptr %10, align 8, !tbaa !22
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i64, ptr %13, align 8, !tbaa !18
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = icmp samesign ugt i64 %14, 15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = add nuw nsw i64 %14, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #20
  store ptr %19, ptr %2, align 8, !tbaa !22
  store i64 %14, ptr %11, align 8, !tbaa !21
  br label %26

20:                                               ; preds = %9
  %21 = icmp eq i64 %14, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = add nuw nsw i64 %14, 1
  br label %26

24:                                               ; preds = %20
  %25 = load i8, ptr %12, align 1, !tbaa !21
  store i8 %25, ptr %11, align 8, !tbaa !21
  br label %29

26:                                               ; preds = %22, %17
  %27 = phi i64 [ %23, %22 ], [ %18, %17 ]
  %28 = phi ptr [ %11, %22 ], [ %19, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %12, i64 %27, i1 false)
  br label %29

29:                                               ; preds = %24, %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %14, ptr %30, align 8, !tbaa !18
  %31 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36, !prof !28

33:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %34 unwind label %83

34:                                               ; preds = %33
  %35 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #14
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds i8, ptr %41, i64 -32
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %45, ptr %39, align 8, !tbaa !14
  %46 = load ptr, ptr %2, align 8, !tbaa !22
  %47 = icmp eq ptr %46, %11
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, ptr %30, align 8, !tbaa !18
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  %51 = add nuw nsw i64 %49, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %45, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %51, i1 false)
  br label %55

52:                                               ; preds = %44
  store ptr %46, ptr %39, align 8, !tbaa !22
  %53 = load i64, ptr %11, align 8, !tbaa !21
  store i64 %53, ptr %45, align 8, !tbaa !21
  %54 = load i64, ptr %30, align 8, !tbaa !18
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i64 [ %54, %52 ], [ %49, %48 ]
  %57 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %56, ptr %58, align 8, !tbaa !18
  store ptr %11, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %30, align 8, !tbaa !18
  store i8 0, ptr %11, align 8, !tbaa !21
  %59 = load ptr, ptr %38, align 8, !tbaa !29
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  store ptr %60, ptr %38, align 8, !tbaa !29
  br label %64

61:                                               ; preds = %36
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %62 unwind label %83

62:                                               ; preds = %61
  %63 = load ptr, ptr %38, align 8, !tbaa !36, !noalias !37
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi ptr [ %60, %55 ], [ %63, %62 ]
  %66 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %67 = load ptr, ptr %66, align 8, !tbaa !40, !noalias !37
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %37, i64 72
  %71 = load ptr, ptr %70, align 8, !tbaa !41, !noalias !37
  %72 = getelementptr inbounds i8, ptr %71, i64 -8
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 512
  br label %75

75:                                               ; preds = %69, %64
  %76 = phi ptr [ %74, %69 ], [ %65, %64 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 -32
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = load ptr, ptr %2, align 8, !tbaa !22
  %80 = icmp eq ptr %79, %11
  br i1 %80, label %155, label %81

81:                                               ; preds = %75
  %82 = load i64, ptr %11, align 8, !tbaa !21
  br label %150

83:                                               ; preds = %61, %33
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %2, align 8, !tbaa !22
  %86 = icmp eq ptr %85, %11
  br i1 %86, label %162, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %11, align 8, !tbaa !21
  br label %157

89:                                               ; preds = %5, %1
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %90, ptr %3, align 8, !tbaa !14
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %91, align 8, !tbaa !18
  store i8 0, ptr %90, align 8, !tbaa !21
  %92 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97, !prof !28

94:                                               ; preds = %89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %95 unwind label %144

95:                                               ; preds = %94
  %96 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #14
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %97

97:                                               ; preds = %95, %89
  %98 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 48
  %100 = load ptr, ptr %99, align 8, !tbaa !29
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 64
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds i8, ptr %102, i64 -32
  %104 = icmp eq ptr %100, %103
  br i1 %104, label %122, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds nuw i8, ptr %100, i64 16
  store ptr %106, ptr %100, align 8, !tbaa !14
  %107 = load ptr, ptr %3, align 8, !tbaa !22
  %108 = icmp eq ptr %107, %90
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, ptr %91, align 8, !tbaa !18
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  %112 = add nuw nsw i64 %110, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %106, ptr noundef nonnull align 8 dereferenceable(1) %90, i64 %112, i1 false)
  br label %116

113:                                              ; preds = %105
  store ptr %107, ptr %100, align 8, !tbaa !22
  %114 = load i64, ptr %90, align 8, !tbaa !21
  store i64 %114, ptr %106, align 8, !tbaa !21
  %115 = load i64, ptr %91, align 8, !tbaa !18
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi i64 [ %115, %113 ], [ %110, %109 ]
  %118 = icmp ult i64 %117, 9223372036854775807
  call void @llvm.assume(i1 %118)
  %119 = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i64 %117, ptr %119, align 8, !tbaa !18
  store ptr %90, ptr %3, align 8, !tbaa !22
  store i64 0, ptr %91, align 8, !tbaa !18
  store i8 0, ptr %90, align 8, !tbaa !21
  %120 = load ptr, ptr %99, align 8, !tbaa !29
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 32
  store ptr %121, ptr %99, align 8, !tbaa !29
  br label %125

122:                                              ; preds = %97
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %98, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %144

123:                                              ; preds = %122
  %124 = load ptr, ptr %99, align 8, !tbaa !36, !noalias !43
  br label %125

125:                                              ; preds = %123, %116
  %126 = phi ptr [ %121, %116 ], [ %124, %123 ]
  %127 = getelementptr inbounds nuw i8, ptr %98, i64 56
  %128 = load ptr, ptr %127, align 8, !tbaa !40, !noalias !43
  %129 = icmp eq ptr %126, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %98, i64 72
  %132 = load ptr, ptr %131, align 8, !tbaa !41, !noalias !43
  %133 = getelementptr inbounds i8, ptr %132, i64 -8
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 512
  br label %136

136:                                              ; preds = %130, %125
  %137 = phi ptr [ %135, %130 ], [ %126, %125 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 -32
  %139 = load ptr, ptr %138, align 8, !tbaa !22
  %140 = load ptr, ptr %3, align 8, !tbaa !22
  %141 = icmp eq ptr %140, %90
  br i1 %141, label %155, label %142

142:                                              ; preds = %136
  %143 = load i64, ptr %90, align 8, !tbaa !21
  br label %150

144:                                              ; preds = %122, %94
  %145 = landingpad { ptr, i32 }
          cleanup
  %146 = load ptr, ptr %3, align 8, !tbaa !22
  %147 = icmp eq ptr %146, %90
  br i1 %147, label %162, label %148

148:                                              ; preds = %144
  %149 = load i64, ptr %90, align 8, !tbaa !21
  br label %157

150:                                              ; preds = %142, %81
  %151 = phi i64 [ %82, %81 ], [ %143, %142 ]
  %152 = phi ptr [ %79, %81 ], [ %140, %142 ]
  %153 = phi ptr [ %78, %81 ], [ %139, %142 ]
  %154 = add i64 %151, 1
  call void @_ZdlPvm(ptr noundef %152, i64 noundef %154) #22
  br label %155

155:                                              ; preds = %150, %136, %75
  %156 = phi ptr [ %139, %136 ], [ %78, %75 ], [ %153, %150 ]
  ret ptr %156

157:                                              ; preds = %87, %148
  %158 = phi i64 [ %149, %148 ], [ %88, %87 ]
  %159 = phi ptr [ %146, %148 ], [ %85, %87 ]
  %160 = phi { ptr, i32 } [ %145, %148 ], [ %84, %87 ]
  %161 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %159, i64 noundef %161) #22
  br label %162

162:                                              ; preds = %157, %144, %83
  %163 = phi { ptr, i32 } [ %145, %144 ], [ %84, %83 ], [ %160, %157 ]
  resume { ptr, i32 } %163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable
define dso_local void @_ZN31__apollo_inline_inline_2052_5_624sys__native_buffer_clearEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %9, align 8, !tbaa !18
  %10 = load ptr, ptr %8, align 8, !tbaa !22
  store i8 0, ptr %10, align 1, !tbaa !21
  br label %11

11:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define dso_local void @_ZN31__apollo_inline_inline_2052_5_619sys__handle_destroyEPv(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(12) %0) #14
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_buffer() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %2, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13buffer_handleE, i64 16), ptr %1, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %5, align 8, !tbaa !18
  store i8 0, ptr %4, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_buffer_text(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib11buffer_textEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13buffer_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !21
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #22
  br label %9

9:                                                ; preds = %1, %6
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13buffer_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !21
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #22
  br label %9

9:                                                ; preds = %1, %6
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #22
  ret void
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !18
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !22
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = icmp samesign ult i64 %7, 16
  tail call void @llvm.assume(i1 %17)
  br label %18

18:                                               ; preds = %5, %16
  %19 = load i64, ptr %14, align 8
  %20 = select i1 %15, i64 15, i64 %19
  %21 = icmp samesign ugt i64 %20, 14
  tail call void @llvm.assume(i1 %21)
  %22 = icmp ult i64 %20, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = icmp ugt i64 %12, 9223372036854775806
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
  unreachable

25:                                               ; preds = %18
  %26 = icmp samesign ugt i64 %12, %20
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = shl nuw i64 %20, 1
  %29 = icmp ult i64 %12, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i64 @llvm.umin.i64(i64 %28, i64 9223372036854775806)
  br label %32

32:                                               ; preds = %25, %27, %30
  %33 = phi i64 [ %31, %30 ], [ %12, %27 ], [ %12, %25 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #20
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !21
  store i8 %37, ptr %35, align 1, !tbaa !21
  br label %39

38:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %13, i64 %1, i1 false)
  br label %39

39:                                               ; preds = %32, %38, %36
  %40 = icmp ne ptr %3, null
  %41 = icmp ne i64 %4, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 %1
  %45 = icmp eq i64 %4, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8, ptr %3, align 1, !tbaa !21
  store i8 %47, ptr %44, align 1, !tbaa !21
  br label %49

48:                                               ; preds = %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %49

49:                                               ; preds = %48, %46, %39
  %50 = icmp eq i64 %7, %9
  br i1 %50, label %60, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 %1
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %4
  %54 = getelementptr inbounds nuw i8, ptr %13, i64 %1
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %2
  %56 = icmp eq i64 %10, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i8, ptr %55, align 1, !tbaa !21
  store i8 %58, ptr %53, align 1, !tbaa !21
  br label %60

59:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %55, i64 %10, i1 false)
  br label %60

60:                                               ; preds = %59, %57, %49
  br i1 %15, label %61, label %63

61:                                               ; preds = %60
  %62 = icmp samesign ult i64 %7, 16
  tail call void @llvm.assume(i1 %62)
  br label %65

63:                                               ; preds = %60
  %64 = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #22
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !22
  store i64 %33, ptr %14, align 8, !tbaa !21
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = lshr i64 %2, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !22
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  %10 = load i64, ptr %8, align 8
  %11 = select i1 %9, i64 15, i64 %10
  %12 = icmp samesign ugt i64 %11, 14
  tail call void @llvm.assume(i1 %12)
  %13 = icmp ult i64 %11, 9223372036854775807
  tail call void @llvm.assume(i1 %13)
  %14 = icmp ugt i64 %1, %11
  br i1 %14, label %15, label %39

15:                                               ; preds = %4
  %16 = icmp ugt i64 %1, 9223372036854775806
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
  unreachable

18:                                               ; preds = %15
  %19 = shl nuw i64 %11, 1
  %20 = icmp ult i64 %1, %19
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 9223372036854775806)
  %22 = select i1 %20, i64 %21, i64 %1
  %23 = add nuw nsw i64 %22, 1
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !18
  %27 = icmp ult i64 %26, 9223372036854775807
  tail call void @llvm.assume(i1 %27)
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i8, ptr %7, align 1, !tbaa !21
  store i8 %30, ptr %24, align 1, !tbaa !21
  br label %33

31:                                               ; preds = %18
  %32 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %31, %29
  br i1 %9, label %34, label %36

34:                                               ; preds = %33
  %35 = icmp samesign ult i64 %26, 16
  tail call void @llvm.assume(i1 %35)
  br label %38

36:                                               ; preds = %33
  %37 = add i64 %10, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %37) #22
  br label %38

38:                                               ; preds = %36, %34
  store ptr %24, ptr %0, align 8, !tbaa !22
  store i64 %22, ptr %8, align 8, !tbaa !21
  br label %39

39:                                               ; preds = %4, %38
  %40 = phi ptr [ %7, %4 ], [ %24, %38 ]
  store i8 45, ptr %40, align 1, !tbaa !21
  %41 = and i64 %2, 255
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 %41
  %43 = icmp ugt i64 %3, 99
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = add i32 %6, -1
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i64 [ %51, %46 ], [ %3, %44 ]
  %48 = phi i32 [ %61, %46 ], [ %45, %44 ]
  %49 = urem i64 %47, 100
  %50 = shl nuw nsw i64 %49, 1
  %51 = udiv i64 %47, 100
  %52 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %50
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !21
  %55 = zext i32 %48 to i64
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !21
  %57 = load i8, ptr %52, align 2, !tbaa !21
  %58 = add i32 %48, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %42, i64 %59
  store i8 %57, ptr %60, align 1, !tbaa !21
  %61 = add i32 %48, -2
  %62 = icmp ugt i64 %47, 9999
  br i1 %62, label %46, label %63, !llvm.loop !46

63:                                               ; preds = %46, %39
  %64 = phi i64 [ %3, %39 ], [ %51, %46 ]
  %65 = icmp samesign ugt i64 %64, 9
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = shl nuw nsw i64 %64, 1
  %68 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !21
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !21
  %72 = load i8, ptr %68, align 2, !tbaa !21
  br label %76

73:                                               ; preds = %63
  %74 = trunc nuw nsw i64 %64 to i8
  %75 = or disjoint i8 %74, 48
  br label %76

76:                                               ; preds = %66, %73
  %77 = phi i8 [ %75, %73 ], [ %72, %66 ]
  store i8 %77, ptr %42, align 1, !tbaa !21
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %78, align 8, !tbaa !18
  %79 = load ptr, ptr %0, align 8, !tbaa !22
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %1
  store i8 0, ptr %80, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !42, !noalias !47
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !42
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !50, !noalias !47
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !50
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !42, !noalias !51
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !42
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !50, !noalias !51
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !50
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !54
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !55
  %21 = load ptr, ptr %9, align 8, !tbaa !56
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #22
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !57

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !54
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !58
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #22
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
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !58
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !59

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #20
  store ptr %12, ptr %0, align 8, !tbaa !54
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
  store ptr %20, ptr %19, align 8, !tbaa !42
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !60

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #14
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #22
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !57

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
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #14
  %44 = load ptr, ptr %0, align 8, !tbaa !54
  %45 = load i64, ptr %6, align 8, !tbaa !58
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #22
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
  store ptr %15, ptr %52, align 8, !tbaa !41
  %53 = load ptr, ptr %15, align 8, !tbaa !42
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !40
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !61
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !41
  %60 = load ptr, ptr %58, align 8, !tbaa !42
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !40
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !61
  store ptr %53, ptr %51, align 8, !tbaa !62
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !29
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

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !41
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !36
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !21
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #22
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !21
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #22
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !21
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #22
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !21
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #22
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !21
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #22
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !21
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #22
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !21
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #22
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !21
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #22
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !21
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #22
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !21
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #22
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !21
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #22
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !22
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !21
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #22
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !22
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !21
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #22
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !22
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !21
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #22
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !22
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !21
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #22
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !22
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !21
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #22
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !41
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !63

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !61
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !21
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #22
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !64

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !40
  %168 = load ptr, ptr %2, align 8, !tbaa !36
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !22
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !21
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #22
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !64

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !36
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !22
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !21
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #22
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !64

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !36
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = load ptr, ptr %4, align 8, !tbaa !36
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !58
  %39 = load ptr, ptr %0, align 8, !tbaa !54
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !56
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !42
  %51 = load ptr, ptr %3, align 8, !tbaa !29
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !14
  %53 = load ptr, ptr %1, align 8, !tbaa !22
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
  store ptr %53, ptr %51, align 8, !tbaa !22
  %62 = load i64, ptr %54, align 8, !tbaa !21
  store i64 %62, ptr %52, align 8, !tbaa !21
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !18
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !18
  store ptr %54, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %64, align 8, !tbaa !18
  store i8 0, ptr %54, align 8, !tbaa !21
  %68 = load ptr, ptr %5, align 8, !tbaa !56
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !41
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  store ptr %70, ptr %18, align 8, !tbaa !40
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !61
  store ptr %70, ptr %3, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !58
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !54
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
  br i1 %30, label %31, label %32, !prof !65

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %35, ptr %24, align 8, !tbaa !42
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !66

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %48, ptr %42, align 8, !tbaa !42
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
  br i1 %64, label %65, label %66, !prof !65

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %69, ptr %60, align 8, !tbaa !42
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !54
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #22
  store ptr %55, ptr %0, align 8, !tbaa !54
  store i64 %52, ptr %14, align 8, !tbaa !58
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !41
  %75 = load ptr, ptr %74, align 8, !tbaa !42
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !40
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !61
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !41
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !40
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { cold noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !11, i64 8}
!11 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !20, i64 8, !7, i64 16}
!20 = !{!"long", !7, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!19, !16, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!27 = distinct !{!27, !"_ZNSt7__cxx119to_stringEl"}
!28 = !{!"branch_weights", i32 1, i32 1023}
!29 = !{!30, !34, i64 48}
!30 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !31, i64 0, !20, i64 8, !33, i64 16, !33, i64 48}
!31 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!32 = !{!"any p2 pointer", !17, i64 0}
!33 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !34, i64 0, !34, i64 8, !34, i64 16, !31, i64 24}
!34 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!35 = !{!30, !34, i64 64}
!36 = !{!33, !34, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!39 = distinct !{!39, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!40 = !{!33, !34, i64 8}
!41 = !{!33, !31, i64 24}
!42 = !{!34, !34, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!45 = distinct !{!45, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!46 = distinct !{!46, !24}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!49 = distinct !{!49, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!50 = !{!17, !17, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!54 = !{!30, !31, i64 0}
!55 = !{!30, !31, i64 40}
!56 = !{!30, !31, i64 72}
!57 = distinct !{!57, !24}
!58 = !{!30, !20, i64 8}
!59 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!60 = distinct !{!60, !24}
!61 = !{!33, !34, i64 16}
!62 = !{!30, !34, i64 16}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
