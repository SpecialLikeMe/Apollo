; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\output\cache\inline_foreign\35864910354db4a0.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign\\35864910354db4a0.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::deque" = type { %"class.std::__1::__split_buffer", i64, %struct.anon.4 }
%"class.std::__1::__split_buffer" = type { %"class.std::__1::__split_buffer_pointer_layout" }
%"class.std::__1::__split_buffer_pointer_layout" = type { ptr, ptr, ptr, %struct.anon.3 }
%struct.anon.3 = type { ptr }
%struct.anon.4 = type { i64 }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_ = comdat any

$_ZSt28__throw_bad_array_new_lengthB9nqe220103v = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNSt3__120__throw_length_errorB9nqe220103EPKc = comdat any

$_ZNSt12length_errorC2B9nqe220103EPKc = comdat any

$_ZNSt3__120__throw_out_of_rangeB9nqe220103EPKc = comdat any

$_ZNSt12out_of_rangeC2B9nqe220103EPKc = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB9nqe220103Ev = comdat any

$_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZTISt20bad_array_new_length = comdat any

$_ZTSSt20bad_array_new_length = comdat any

$_ZTISt9bad_alloc = comdat any

$_ZTSSt9bad_alloc = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt12length_error = comdat any

$_ZTSSt12length_error = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

$_ZTISt12out_of_range = comdat any

$_ZTSSt12out_of_range = comdat any

@_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local global %"class.std::__1::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTISt20bad_array_new_length = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt20bad_array_new_length, ptr @_ZTISt9bad_alloc }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt20bad_array_new_length = linkonce_odr dso_local constant [25 x i8] c"St20bad_array_new_length\00", comdat, align 1
@_ZTISt9bad_alloc = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt9bad_alloc, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt9bad_alloc = linkonce_odr dso_local constant [13 x i8] c"St9bad_alloc\00", comdat, align 1
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"string_view::substr\00", align 1
@_ZTISt12out_of_range = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12out_of_range, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12out_of_range = linkonce_odr dso_local constant [17 x i8] c"St12out_of_range\00", comdat, align 1
@_ZTVSt12out_of_range = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_332_5_312sys__str_lenEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !12
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_315sys__str_concatEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca [15 x i8], align 1
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !15
  br label %30

8:                                                ; preds = %2
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !15
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !15
  unreachable

12:                                               ; preds = %8
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc nuw nsw i64 %9 to i8
  %16 = shl nuw nsw i8 %15, 1
  store i8 %16, ptr %4, align 8, !alias.scope !15
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %27

18:                                               ; preds = %12
  %19 = and i64 %9, -8
  %20 = add nuw i64 %19, 8
  %21 = icmp eq i64 %20, 24
  %22 = select i1 %21, i64 26, i64 %20
  %23 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %22) #24, !noalias !18
  %24 = or disjoint i64 %22, 1
  store i64 %24, ptr %4, align 8, !tbaa !23, !alias.scope !15
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %25, align 8, !tbaa !24, !alias.scope !15
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %23, ptr %26, align 8, !tbaa !26, !alias.scope !15
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi ptr [ %17, %14 ], [ %23, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %9, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %9
  store i8 0, ptr %29, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %7, %27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %31 = icmp eq ptr %1, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !29
  br label %62

33:                                               ; preds = %30
  %34 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !29
  %35 = icmp ugt i64 %34, -10
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23
          to label %37 unwind label %153

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %33
  %39 = icmp ult i64 %34, 23
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = trunc nuw nsw i64 %34 to i8
  %42 = shl nuw nsw i8 %41, 1
  store i8 %42, ptr %5, align 8, !alias.scope !29
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %54

44:                                               ; preds = %38
  %45 = and i64 %34, -8
  %46 = add nuw i64 %45, 8
  %47 = icmp eq i64 %46, 24
  %48 = select i1 %47, i64 26, i64 %46
  %49 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %48) #24
          to label %50 unwind label %153

50:                                               ; preds = %44
  %51 = or disjoint i64 %48, 1
  store i64 %51, ptr %5, align 8, !tbaa !23, !alias.scope !29
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %34, ptr %52, align 8, !tbaa !24, !alias.scope !29
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %49, ptr %53, align 8, !tbaa !26, !alias.scope !29
  br label %54

54:                                               ; preds = %50, %40
  %55 = phi ptr [ %43, %40 ], [ %49, %50 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %55, ptr nonnull align 1 %1, i64 %34, i1 false)
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %34
  store i8 0, ptr %56, align 1, !tbaa !23
  %57 = load i8, ptr %5, align 8, !noalias !32
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %59 = load ptr, ptr %58, align 8, !noalias !32
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %61 = load i64, ptr %60, align 8, !noalias !32
  br label %62

62:                                               ; preds = %54, %32
  %63 = phi i64 [ %61, %54 ], [ 0, %32 ]
  %64 = phi ptr [ %59, %54 ], [ null, %32 ]
  %65 = phi i8 [ %57, %54 ], [ 0, %32 ]
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %70 = select i1 %67, ptr %69, ptr %64
  %71 = lshr i8 %65, 1
  %72 = zext nneg i8 %71 to i64
  %73 = select i1 %67, i64 %72, i64 %63
  %74 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %70, i64 noundef %73)
          to label %75 unwind label %155

75:                                               ; preds = %62
  %76 = load i8, ptr %74, align 8
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %77, i64 15, i1 false), !tbaa.struct !35
  %78 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false), !noalias !32
  %80 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84, !prof !36

82:                                               ; preds = %75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %83 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !37
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = ptrtoint ptr %87 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp eq ptr %87, %89
  %95 = mul i64 %93, 170
  %96 = add i64 %95, -1
  %97 = select i1 %94, i64 0, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %99 = load i64, ptr %98, align 8, !tbaa !43
  %100 = getelementptr inbounds nuw i8, ptr %85, i64 40
  %101 = load i64, ptr %100, align 8, !tbaa !24
  %102 = add i64 %101, %99
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %84
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %85)
          to label %105 unwind label %157

105:                                              ; preds = %104
  %106 = load i64, ptr %100, align 8, !tbaa !24, !noalias !47
  %107 = load i64, ptr %98, align 8, !tbaa !43, !noalias !47
  %108 = load ptr, ptr %88, align 8, !tbaa !42, !noalias !47
  %109 = load ptr, ptr %86, align 8, !tbaa !37, !noalias !47
  %110 = add i64 %107, %106
  br label %111

111:                                              ; preds = %84, %105
  %112 = phi i64 [ %110, %105 ], [ %102, %84 ]
  %113 = phi ptr [ %109, %105 ], [ %87, %84 ]
  %114 = phi ptr [ %108, %105 ], [ %89, %84 ]
  %115 = udiv i64 %112, 170
  %116 = getelementptr inbounds nuw ptr, ptr %114, i64 %115
  %117 = icmp ne ptr %114, %113
  call void @llvm.assume(i1 %117)
  %118 = load ptr, ptr %116, align 8, !tbaa !50, !noalias !47
  %119 = urem i64 %112, 170
  %120 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %118, i64 %119
  store i8 %76, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %121, ptr noundef nonnull align 1 dereferenceable(15) %3, i64 15, i1 false), !tbaa.struct !35
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 16
  store ptr %79, ptr %122, align 8, !tbaa !23
  %123 = load i64, ptr %100, align 8, !tbaa !24
  %124 = add i64 %123, 1
  store i64 %124, ptr %100, align 8, !tbaa !24
  %125 = load i64, ptr %98, align 8, !tbaa !43
  %126 = add i64 %125, %123
  %127 = load ptr, ptr %88, align 8, !tbaa !42
  %128 = udiv i64 %126, 170
  %129 = getelementptr inbounds nuw ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = urem i64 %126, 170
  %132 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %130, i64 %131
  %133 = load i8, ptr %132, align 8
  %134 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %135 = load ptr, ptr %134, align 8
  %136 = load i8, ptr %5, align 8
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %111
  %140 = load ptr, ptr %68, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %111, %139
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %142 = load i8, ptr %4, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %147) #25
  br label %148

148:                                              ; preds = %141, %145
  %149 = and i8 %133, 1
  %150 = icmp eq i8 %149, 0
  %151 = getelementptr inbounds nuw i8, ptr %132, i64 1
  %152 = select i1 %150, ptr %151, ptr %135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %152

153:                                              ; preds = %44, %36
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %169

155:                                              ; preds = %62
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %162

157:                                              ; preds = %104
  %158 = landingpad { ptr, i32 }
          cleanup
  %159 = and i8 %76, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  call void @_ZdlPv(ptr noundef %79) #25
  br label %162

162:                                              ; preds = %161, %157, %155
  %163 = phi { ptr, i32 } [ %156, %155 ], [ %158, %157 ], [ %158, %161 ]
  %164 = load i8, ptr %5, align 8
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %162
  %168 = load ptr, ptr %68, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %168) #25
  br label %169

169:                                              ; preds = %167, %162, %153
  %170 = phi { ptr, i32 } [ %154, %153 ], [ %163, %162 ], [ %163, %167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %171 = load i8, ptr %4, align 8
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %176 = load ptr, ptr %175, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %176) #25
  br label %177

177:                                              ; preds = %169, %174
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %170
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_313sys__str_trimEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !23, !noalias !55
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #26, !noalias !55
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %7, !llvm.loop !58

17:                                               ; preds = %14, %7, %1, %4
  %18 = phi i64 [ 0, %4 ], [ 0, %1 ], [ %5, %7 ], [ %5, %14 ]
  %19 = phi i64 [ 0, %4 ], [ 0, %1 ], [ %5, %14 ], [ %8, %7 ]
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi i64 [ %18, %17 ], [ %24, %23 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = add i64 %21, -1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !23, !noalias !55
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @isspace(i32 noundef %27) #26, !noalias !55
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !60

30:                                               ; preds = %23
  %31 = icmp ugt i64 %21, %19
  br i1 %31, label %33, label %32

32:                                               ; preds = %20, %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !55
  br label %56

33:                                               ; preds = %30
  %34 = sub nuw i64 %21, %19
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %36 = icmp ugt i64 %34, -10
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !55
  unreachable

38:                                               ; preds = %33
  %39 = icmp ult i64 %34, 23
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = trunc nuw nsw i64 %34 to i8
  %42 = shl nuw nsw i8 %41, 1
  store i8 %42, ptr %2, align 8, !alias.scope !55
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %53

44:                                               ; preds = %38
  %45 = and i64 %34, -8
  %46 = add nuw i64 %45, 8
  %47 = icmp eq i64 %46, 24
  %48 = select i1 %47, i64 26, i64 %46
  %49 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %48) #24, !noalias !61
  %50 = or disjoint i64 %48, 1
  store i64 %50, ptr %2, align 8, !tbaa !23, !alias.scope !55
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %34, ptr %51, align 8, !tbaa !24, !alias.scope !55
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %49, ptr %52, align 8, !tbaa !26, !alias.scope !55
  br label %53

53:                                               ; preds = %44, %40
  %54 = phi ptr [ %43, %40 ], [ %49, %44 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr align 1 %35, i64 %34, i1 false)
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %34
  store i8 0, ptr %55, align 1, !tbaa !23
  br label %56

56:                                               ; preds = %32, %53
  %57 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61, !prof !36

59:                                               ; preds = %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %60 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !37
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = ptrtoint ptr %64 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  %70 = ashr exact i64 %69, 3
  %71 = icmp eq ptr %64, %66
  %72 = mul i64 %70, 170
  %73 = add i64 %72, -1
  %74 = select i1 %71, i64 0, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %76 = load i64, ptr %75, align 8, !tbaa !43
  %77 = getelementptr inbounds nuw i8, ptr %62, i64 40
  %78 = load i64, ptr %77, align 8, !tbaa !24
  %79 = add i64 %78, %76
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %61
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %62)
          to label %82 unwind label %115

82:                                               ; preds = %81
  %83 = load i64, ptr %77, align 8, !tbaa !24, !noalias !66
  %84 = load i64, ptr %75, align 8, !tbaa !43, !noalias !66
  %85 = load ptr, ptr %65, align 8, !tbaa !42, !noalias !66
  %86 = load ptr, ptr %63, align 8, !tbaa !37, !noalias !66
  %87 = add i64 %84, %83
  br label %88

88:                                               ; preds = %61, %82
  %89 = phi i64 [ %87, %82 ], [ %79, %61 ]
  %90 = phi ptr [ %86, %82 ], [ %64, %61 ]
  %91 = phi ptr [ %85, %82 ], [ %66, %61 ]
  %92 = udiv i64 %89, 170
  %93 = getelementptr inbounds nuw ptr, ptr %91, i64 %92
  %94 = icmp ne ptr %91, %90
  tail call void @llvm.assume(i1 %94)
  %95 = load ptr, ptr %93, align 8, !tbaa !50, !noalias !66
  %96 = urem i64 %89, 170
  %97 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %95, i64 %96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !69
  %98 = load i64, ptr %77, align 8, !tbaa !24
  %99 = add i64 %98, 1
  store i64 %99, ptr %77, align 8, !tbaa !24
  %100 = load ptr, ptr %65, align 8, !tbaa !42
  %101 = load i64, ptr %75, align 8, !tbaa !43
  %102 = add i64 %101, %98
  %103 = udiv i64 %102, 170
  %104 = getelementptr inbounds nuw ptr, ptr %100, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !50
  %106 = urem i64 %102, 170
  %107 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %105, i64 %106
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 16
  %109 = load ptr, ptr %108, align 8
  %110 = load i8, ptr %107, align 8
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = getelementptr inbounds nuw i8, ptr %107, i64 1
  %114 = select i1 %112, ptr %113, ptr %109
  ret ptr %114

115:                                              ; preds = %81
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load i8, ptr %2, align 8
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %122 = load ptr, ptr %121, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %122) #25
  br label %123

123:                                              ; preds = %115, %120
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_319sys__str_trim_startEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !70
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !23, !noalias !73
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #26, !noalias !73
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %20, label %7, !llvm.loop !58

17:                                               ; preds = %7
  %18 = icmp ugt i64 %8, %5
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @_ZNSt3__120__throw_out_of_rangeB9nqe220103EPKc(ptr noundef nonnull @.str.2) #23, !noalias !76
  unreachable

20:                                               ; preds = %14, %1, %17, %4
  %21 = phi i64 [ %5, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %22 = phi i64 [ %8, %17 ], [ 0, %4 ], [ 0, %1 ], [ %5, %14 ]
  %23 = sub nuw i64 %21, %22
  %24 = icmp ugt i64 %23, -10
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !73
  unreachable

26:                                               ; preds = %20
  %27 = icmp ult i64 %23, 23
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = trunc nuw nsw i64 %23 to i8
  %30 = shl nuw nsw i8 %29, 1
  store i8 %30, ptr %2, align 8, !alias.scope !73
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %41

32:                                               ; preds = %26
  %33 = and i64 %23, -8
  %34 = add nuw i64 %33, 8
  %35 = icmp eq i64 %34, 24
  %36 = select i1 %35, i64 26, i64 %34
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #24, !noalias !79
  %38 = or disjoint i64 %36, 1
  store i64 %38, ptr %2, align 8, !tbaa !23, !alias.scope !73
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %23, ptr %39, align 8, !tbaa !24, !alias.scope !73
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %37, ptr %40, align 8, !tbaa !26, !alias.scope !73
  br label %41

41:                                               ; preds = %28, %32
  %42 = phi ptr [ %31, %28 ], [ %37, %32 ]
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 %22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %43, i64 %23, i1 false)
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 %23
  store i8 0, ptr %44, align 1, !tbaa !23
  %45 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49, !prof !36

47:                                               ; preds = %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %48 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %52 = load ptr, ptr %51, align 8, !tbaa !37
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = ptrtoint ptr %52 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 3
  %59 = icmp eq ptr %52, %54
  %60 = mul i64 %58, 170
  %61 = add i64 %60, -1
  %62 = select i1 %59, i64 0, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %64 = load i64, ptr %63, align 8, !tbaa !43
  %65 = getelementptr inbounds nuw i8, ptr %50, i64 40
  %66 = load i64, ptr %65, align 8, !tbaa !24
  %67 = add i64 %66, %64
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %49
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %50)
          to label %70 unwind label %103

70:                                               ; preds = %69
  %71 = load i64, ptr %65, align 8, !tbaa !24, !noalias !84
  %72 = load i64, ptr %63, align 8, !tbaa !43, !noalias !84
  %73 = load ptr, ptr %53, align 8, !tbaa !42, !noalias !84
  %74 = load ptr, ptr %51, align 8, !tbaa !37, !noalias !84
  %75 = add i64 %72, %71
  br label %76

76:                                               ; preds = %49, %70
  %77 = phi i64 [ %75, %70 ], [ %67, %49 ]
  %78 = phi ptr [ %74, %70 ], [ %52, %49 ]
  %79 = phi ptr [ %73, %70 ], [ %54, %49 ]
  %80 = udiv i64 %77, 170
  %81 = getelementptr inbounds nuw ptr, ptr %79, i64 %80
  %82 = icmp ne ptr %79, %78
  tail call void @llvm.assume(i1 %82)
  %83 = load ptr, ptr %81, align 8, !tbaa !50, !noalias !84
  %84 = urem i64 %77, 170
  %85 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %83, i64 %84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !69
  %86 = load i64, ptr %65, align 8, !tbaa !24
  %87 = add i64 %86, 1
  store i64 %87, ptr %65, align 8, !tbaa !24
  %88 = load ptr, ptr %53, align 8, !tbaa !42
  %89 = load i64, ptr %63, align 8, !tbaa !43
  %90 = add i64 %89, %86
  %91 = udiv i64 %90, 170
  %92 = getelementptr inbounds nuw ptr, ptr %88, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = urem i64 %90, 170
  %95 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %93, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 16
  %97 = load ptr, ptr %96, align 8
  %98 = load i8, ptr %95, align 8
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = getelementptr inbounds nuw i8, ptr %95, i64 1
  %102 = select i1 %100, ptr %101, ptr %97
  ret ptr %102

103:                                              ; preds = %69
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = load i8, ptr %2, align 8
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %110) #25
  br label %111

111:                                              ; preds = %103, %108
  resume { ptr, i32 } %104
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_317sys__str_trim_endEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !87
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  br label %8

8:                                                ; preds = %11, %6
  %9 = phi i64 [ %7, %6 ], [ %12, %11 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = add i64 %9, -1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !23, !noalias !90
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @isspace(i32 noundef %15) #26, !noalias !90
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !60

18:                                               ; preds = %11, %8
  %19 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9)
  %20 = icmp ugt i64 %19, -10
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !90
  unreachable

22:                                               ; preds = %18
  %23 = icmp ult i64 %19, 23
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = trunc nuw nsw i64 %19 to i8
  %26 = shl nuw nsw i8 %25, 1
  store i8 %26, ptr %2, align 8, !alias.scope !90
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %37

28:                                               ; preds = %22
  %29 = and i64 %19, -8
  %30 = add nuw i64 %29, 8
  %31 = icmp eq i64 %30, 24
  %32 = select i1 %31, i64 26, i64 %30
  %33 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %32) #24, !noalias !93
  %34 = or disjoint i64 %32, 1
  store i64 %34, ptr %2, align 8, !tbaa !23, !alias.scope !90
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %19, ptr %35, align 8, !tbaa !24, !alias.scope !90
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %33, ptr %36, align 8, !tbaa !26, !alias.scope !90
  br label %37

37:                                               ; preds = %24, %28
  %38 = phi ptr [ %27, %24 ], [ %33, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %0, i64 %19, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 %19
  store i8 0, ptr %39, align 1, !tbaa !23
  %40 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44, !prof !36

42:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %43 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %47 = load ptr, ptr %46, align 8, !tbaa !37
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = ptrtoint ptr %47 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 3
  %54 = icmp eq ptr %47, %49
  %55 = mul i64 %53, 170
  %56 = add i64 %55, -1
  %57 = select i1 %54, i64 0, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %59 = load i64, ptr %58, align 8, !tbaa !43
  %60 = getelementptr inbounds nuw i8, ptr %45, i64 40
  %61 = load i64, ptr %60, align 8, !tbaa !24
  %62 = add i64 %61, %59
  %63 = icmp eq i64 %57, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %44
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %65 unwind label %98

65:                                               ; preds = %64
  %66 = load i64, ptr %60, align 8, !tbaa !24, !noalias !98
  %67 = load i64, ptr %58, align 8, !tbaa !43, !noalias !98
  %68 = load ptr, ptr %48, align 8, !tbaa !42, !noalias !98
  %69 = load ptr, ptr %46, align 8, !tbaa !37, !noalias !98
  %70 = add i64 %67, %66
  br label %71

71:                                               ; preds = %44, %65
  %72 = phi i64 [ %70, %65 ], [ %62, %44 ]
  %73 = phi ptr [ %69, %65 ], [ %47, %44 ]
  %74 = phi ptr [ %68, %65 ], [ %49, %44 ]
  %75 = udiv i64 %72, 170
  %76 = getelementptr inbounds nuw ptr, ptr %74, i64 %75
  %77 = icmp ne ptr %74, %73
  tail call void @llvm.assume(i1 %77)
  %78 = load ptr, ptr %76, align 8, !tbaa !50, !noalias !98
  %79 = urem i64 %72, 170
  %80 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %78, i64 %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !69
  %81 = load i64, ptr %60, align 8, !tbaa !24
  %82 = add i64 %81, 1
  store i64 %82, ptr %60, align 8, !tbaa !24
  %83 = load ptr, ptr %48, align 8, !tbaa !42
  %84 = load i64, ptr %58, align 8, !tbaa !43
  %85 = add i64 %84, %81
  %86 = udiv i64 %85, 170
  %87 = getelementptr inbounds nuw ptr, ptr %83, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !50
  %89 = urem i64 %85, 170
  %90 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %88, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %92 = load ptr, ptr %91, align 8
  %93 = load i8, ptr %90, align 8
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 1
  %97 = select i1 %95, ptr %96, ptr %92
  ret ptr %97

98:                                               ; preds = %64
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load i8, ptr %2, align 8
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %105) #25
  br label %106

106:                                              ; preds = %98, %103
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_lowercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca [15 x i8], align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !101
  br label %33

6:                                                ; preds = %1
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !101
  %8 = icmp ugt i64 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !101
  unreachable

10:                                               ; preds = %6
  %11 = icmp ult i64 %7, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = trunc nuw nsw i64 %7 to i8
  %14 = shl nuw nsw i8 %13, 1
  store i8 %14, ptr %3, align 8, !alias.scope !101
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %25

16:                                               ; preds = %10
  %17 = and i64 %7, -8
  %18 = add nuw i64 %17, 8
  %19 = icmp eq i64 %18, 24
  %20 = select i1 %19, i64 26, i64 %18
  %21 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %20) #24, !noalias !104
  %22 = or disjoint i64 %20, 1
  store i64 %22, ptr %3, align 8, !tbaa !23, !alias.scope !101
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %23, align 8, !tbaa !24, !alias.scope !101
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %21, ptr %24, align 8, !tbaa !26, !alias.scope !101
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi ptr [ %15, %12 ], [ %21, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %0, i64 %7, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %7
  store i8 0, ptr %27, align 1, !tbaa !23
  %28 = load i8, ptr %3, align 8, !noalias !109
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %30 = load ptr, ptr %29, align 8, !noalias !109
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %32 = load i64, ptr %31, align 8, !noalias !109
  br label %33

33:                                               ; preds = %5, %25
  %34 = phi i64 [ 0, %5 ], [ %32, %25 ]
  %35 = phi ptr [ null, %5 ], [ %30, %25 ]
  %36 = phi i8 [ 0, %5 ], [ %28, %25 ]
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %41 = select i1 %38, ptr %40, ptr %35
  %42 = lshr i8 %36, 1
  %43 = zext nneg i8 %42 to i64
  %44 = select i1 %38, i64 %43, i64 %34
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44
  %46 = icmp samesign eq i64 %44, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %33, %47
  %48 = phi ptr [ %53, %47 ], [ %41, %33 ]
  %49 = load i8, ptr %48, align 1, !tbaa !23, !noalias !109
  %50 = zext i8 %49 to i32
  %51 = call i32 @tolower(i32 noundef %50) #26, !noalias !109
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %48, align 1, !tbaa !23, !noalias !109
  %53 = getelementptr inbounds nuw i8, ptr %48, i64 1
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %55, label %47

55:                                               ; preds = %47
  %56 = load i8, ptr %3, align 8
  %57 = load ptr, ptr %39, align 8, !tbaa !23
  br label %58

58:                                               ; preds = %55, %33
  %59 = phi ptr [ %57, %55 ], [ %35, %33 ]
  %60 = phi i8 [ %56, %55 ], [ %36, %33 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !109
  %61 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65, !prof !36

63:                                               ; preds = %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %64 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp eq ptr %68, %70
  %76 = mul i64 %74, 170
  %77 = add i64 %76, -1
  %78 = select i1 %75, i64 0, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %80 = load i64, ptr %79, align 8, !tbaa !43
  %81 = getelementptr inbounds nuw i8, ptr %66, i64 40
  %82 = load i64, ptr %81, align 8, !tbaa !24
  %83 = add i64 %82, %80
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %66)
          to label %86 unwind label %121

86:                                               ; preds = %85
  %87 = load i64, ptr %81, align 8, !tbaa !24, !noalias !112
  %88 = load i64, ptr %79, align 8, !tbaa !43, !noalias !112
  %89 = load ptr, ptr %69, align 8, !tbaa !42, !noalias !112
  %90 = load ptr, ptr %67, align 8, !tbaa !37, !noalias !112
  %91 = add i64 %88, %87
  br label %92

92:                                               ; preds = %86, %65
  %93 = phi i64 [ %91, %86 ], [ %83, %65 ]
  %94 = phi ptr [ %90, %86 ], [ %68, %65 ]
  %95 = phi ptr [ %89, %86 ], [ %70, %65 ]
  %96 = udiv i64 %93, 170
  %97 = getelementptr inbounds nuw ptr, ptr %95, i64 %96
  %98 = icmp ne ptr %95, %94
  call void @llvm.assume(i1 %98)
  %99 = load ptr, ptr %97, align 8, !tbaa !50, !noalias !112
  %100 = urem i64 %93, 170
  %101 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %99, i64 %100
  store i8 %60, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %102, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 15, i1 false), !tbaa.struct !35
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 16
  store ptr %59, ptr %103, align 8, !tbaa !23
  %104 = load i64, ptr %81, align 8, !tbaa !24
  %105 = add i64 %104, 1
  store i64 %105, ptr %81, align 8, !tbaa !24
  %106 = load ptr, ptr %69, align 8, !tbaa !42
  %107 = load i64, ptr %79, align 8, !tbaa !43
  %108 = add i64 %107, %104
  %109 = udiv i64 %108, 170
  %110 = getelementptr inbounds nuw ptr, ptr %106, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !50
  %112 = urem i64 %108, 170
  %113 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %111, i64 %112
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load ptr, ptr %114, align 8
  %116 = load i8, ptr %113, align 8
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  %119 = getelementptr inbounds nuw i8, ptr %113, i64 1
  %120 = select i1 %118, ptr %119, ptr %115
  ret ptr %120

121:                                              ; preds = %85
  %122 = landingpad { ptr, i32 }
          cleanup
  %123 = and i8 %60, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %59) #25
  %126 = load i8, ptr %3, align 8
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %39, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %130) #25
  br label %131

131:                                              ; preds = %121, %125, %129
  resume { ptr, i32 } %122
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_uppercaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca [15 x i8], align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !115
  br label %33

6:                                                ; preds = %1
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !115
  %8 = icmp ugt i64 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !115
  unreachable

10:                                               ; preds = %6
  %11 = icmp ult i64 %7, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = trunc nuw nsw i64 %7 to i8
  %14 = shl nuw nsw i8 %13, 1
  store i8 %14, ptr %3, align 8, !alias.scope !115
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %25

16:                                               ; preds = %10
  %17 = and i64 %7, -8
  %18 = add nuw i64 %17, 8
  %19 = icmp eq i64 %18, 24
  %20 = select i1 %19, i64 26, i64 %18
  %21 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %20) #24, !noalias !118
  %22 = or disjoint i64 %20, 1
  store i64 %22, ptr %3, align 8, !tbaa !23, !alias.scope !115
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %23, align 8, !tbaa !24, !alias.scope !115
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %21, ptr %24, align 8, !tbaa !26, !alias.scope !115
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi ptr [ %15, %12 ], [ %21, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %0, i64 %7, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %7
  store i8 0, ptr %27, align 1, !tbaa !23
  %28 = load i8, ptr %3, align 8, !noalias !123
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %30 = load ptr, ptr %29, align 8, !noalias !123
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %32 = load i64, ptr %31, align 8, !noalias !123
  br label %33

33:                                               ; preds = %5, %25
  %34 = phi i64 [ 0, %5 ], [ %32, %25 ]
  %35 = phi ptr [ null, %5 ], [ %30, %25 ]
  %36 = phi i8 [ 0, %5 ], [ %28, %25 ]
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %41 = select i1 %38, ptr %40, ptr %35
  %42 = lshr i8 %36, 1
  %43 = zext nneg i8 %42 to i64
  %44 = select i1 %38, i64 %43, i64 %34
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44
  %46 = icmp samesign eq i64 %44, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %33, %47
  %48 = phi ptr [ %53, %47 ], [ %41, %33 ]
  %49 = load i8, ptr %48, align 1, !tbaa !23, !noalias !123
  %50 = zext i8 %49 to i32
  %51 = call i32 @toupper(i32 noundef %50) #26, !noalias !123
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %48, align 1, !tbaa !23, !noalias !123
  %53 = getelementptr inbounds nuw i8, ptr %48, i64 1
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %55, label %47

55:                                               ; preds = %47
  %56 = load i8, ptr %3, align 8
  %57 = load ptr, ptr %39, align 8, !tbaa !23
  br label %58

58:                                               ; preds = %55, %33
  %59 = phi ptr [ %57, %55 ], [ %35, %33 ]
  %60 = phi i8 [ %56, %55 ], [ %36, %33 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !123
  %61 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65, !prof !36

63:                                               ; preds = %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %64 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %65

65:                                               ; preds = %63, %58
  %66 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp eq ptr %68, %70
  %76 = mul i64 %74, 170
  %77 = add i64 %76, -1
  %78 = select i1 %75, i64 0, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %80 = load i64, ptr %79, align 8, !tbaa !43
  %81 = getelementptr inbounds nuw i8, ptr %66, i64 40
  %82 = load i64, ptr %81, align 8, !tbaa !24
  %83 = add i64 %82, %80
  %84 = icmp eq i64 %78, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %66)
          to label %86 unwind label %121

86:                                               ; preds = %85
  %87 = load i64, ptr %81, align 8, !tbaa !24, !noalias !126
  %88 = load i64, ptr %79, align 8, !tbaa !43, !noalias !126
  %89 = load ptr, ptr %69, align 8, !tbaa !42, !noalias !126
  %90 = load ptr, ptr %67, align 8, !tbaa !37, !noalias !126
  %91 = add i64 %88, %87
  br label %92

92:                                               ; preds = %86, %65
  %93 = phi i64 [ %91, %86 ], [ %83, %65 ]
  %94 = phi ptr [ %90, %86 ], [ %68, %65 ]
  %95 = phi ptr [ %89, %86 ], [ %70, %65 ]
  %96 = udiv i64 %93, 170
  %97 = getelementptr inbounds nuw ptr, ptr %95, i64 %96
  %98 = icmp ne ptr %95, %94
  call void @llvm.assume(i1 %98)
  %99 = load ptr, ptr %97, align 8, !tbaa !50, !noalias !126
  %100 = urem i64 %93, 170
  %101 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %99, i64 %100
  store i8 %60, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %102, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 15, i1 false), !tbaa.struct !35
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 16
  store ptr %59, ptr %103, align 8, !tbaa !23
  %104 = load i64, ptr %81, align 8, !tbaa !24
  %105 = add i64 %104, 1
  store i64 %105, ptr %81, align 8, !tbaa !24
  %106 = load ptr, ptr %69, align 8, !tbaa !42
  %107 = load i64, ptr %79, align 8, !tbaa !43
  %108 = add i64 %107, %104
  %109 = udiv i64 %108, 170
  %110 = getelementptr inbounds nuw ptr, ptr %106, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !50
  %112 = urem i64 %108, 170
  %113 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %111, i64 %112
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %115 = load ptr, ptr %114, align 8
  %116 = load i8, ptr %113, align 8
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  %119 = getelementptr inbounds nuw i8, ptr %113, i64 1
  %120 = select i1 %118, ptr %119, ptr %115
  ret ptr %120

121:                                              ; preds = %85
  %122 = landingpad { ptr, i32 }
          cleanup
  %123 = and i8 %60, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %59) #25
  %126 = load i8, ptr %3, align 8
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %39, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %130) #25
  br label %131

131:                                              ; preds = %121, %125, %129
  resume { ptr, i32 } %122
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_titlecaseEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca [15 x i8], align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !129
  br label %33

6:                                                ; preds = %1
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !129
  %8 = icmp ugt i64 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !129
  unreachable

10:                                               ; preds = %6
  %11 = icmp ult i64 %7, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = trunc nuw nsw i64 %7 to i8
  %14 = shl nuw nsw i8 %13, 1
  store i8 %14, ptr %3, align 8, !alias.scope !129
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %25

16:                                               ; preds = %10
  %17 = and i64 %7, -8
  %18 = add nuw i64 %17, 8
  %19 = icmp eq i64 %18, 24
  %20 = select i1 %19, i64 26, i64 %18
  %21 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %20) #24, !noalias !132
  %22 = or disjoint i64 %20, 1
  store i64 %22, ptr %3, align 8, !tbaa !23, !alias.scope !129
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %23, align 8, !tbaa !24, !alias.scope !129
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %21, ptr %24, align 8, !tbaa !26, !alias.scope !129
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi ptr [ %15, %12 ], [ %21, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull align 1 %0, i64 %7, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %7
  store i8 0, ptr %27, align 1, !tbaa !23
  %28 = load i8, ptr %3, align 8, !noalias !137
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %30 = load ptr, ptr %29, align 8, !noalias !137
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %32 = load i64, ptr %31, align 8, !noalias !137
  br label %33

33:                                               ; preds = %5, %25
  %34 = phi i64 [ 0, %5 ], [ %32, %25 ]
  %35 = phi ptr [ null, %5 ], [ %30, %25 ]
  %36 = phi i8 [ 0, %5 ], [ %28, %25 ]
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %41 = select i1 %38, ptr %40, ptr %35
  %42 = lshr i8 %36, 1
  %43 = zext nneg i8 %42 to i64
  %44 = select i1 %38, i64 %43, i64 %34
  %45 = getelementptr inbounds nuw i8, ptr %41, i64 %44
  %46 = icmp samesign eq i64 %44, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %33, %62
  %48 = phi i1 [ %53, %62 ], [ true, %33 ]
  %49 = phi ptr [ %63, %62 ], [ %41, %33 ]
  %50 = load i8, ptr %49, align 1, !tbaa !23, !noalias !137
  %51 = zext i8 %50 to i32
  %52 = call i32 @isalnum(i32 noundef %51) #26, !noalias !137
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  br i1 %48, label %55, label %57

55:                                               ; preds = %54
  %56 = call i32 @toupper(i32 noundef %51) #26, !noalias !137
  br label %59

57:                                               ; preds = %54
  %58 = call i32 @tolower(i32 noundef %51) #26, !noalias !137
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %58, %57 ], [ %56, %55 ]
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %49, align 1, !tbaa !23, !noalias !137
  br label %62

62:                                               ; preds = %59, %47
  %63 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %64 = icmp eq ptr %63, %45
  br i1 %64, label %65, label %47

65:                                               ; preds = %62
  %66 = load i8, ptr %3, align 8
  %67 = load ptr, ptr %39, align 8, !tbaa !23
  br label %68

68:                                               ; preds = %65, %33
  %69 = phi ptr [ %67, %65 ], [ %35, %33 ]
  %70 = phi i8 [ %66, %65 ], [ %36, %33 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !137
  %71 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %75, !prof !36

73:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %74 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %75

75:                                               ; preds = %73, %68
  %76 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 16
  %78 = load ptr, ptr %77, align 8, !tbaa !37
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = ptrtoint ptr %78 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = ashr exact i64 %83, 3
  %85 = icmp eq ptr %78, %80
  %86 = mul i64 %84, 170
  %87 = add i64 %86, -1
  %88 = select i1 %85, i64 0, i64 %87
  %89 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %90 = load i64, ptr %89, align 8, !tbaa !43
  %91 = getelementptr inbounds nuw i8, ptr %76, i64 40
  %92 = load i64, ptr %91, align 8, !tbaa !24
  %93 = add i64 %92, %90
  %94 = icmp eq i64 %88, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %75
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %76)
          to label %96 unwind label %131

96:                                               ; preds = %95
  %97 = load i64, ptr %91, align 8, !tbaa !24, !noalias !140
  %98 = load i64, ptr %89, align 8, !tbaa !43, !noalias !140
  %99 = load ptr, ptr %79, align 8, !tbaa !42, !noalias !140
  %100 = load ptr, ptr %77, align 8, !tbaa !37, !noalias !140
  %101 = add i64 %98, %97
  br label %102

102:                                              ; preds = %96, %75
  %103 = phi i64 [ %101, %96 ], [ %93, %75 ]
  %104 = phi ptr [ %100, %96 ], [ %78, %75 ]
  %105 = phi ptr [ %99, %96 ], [ %80, %75 ]
  %106 = udiv i64 %103, 170
  %107 = getelementptr inbounds nuw ptr, ptr %105, i64 %106
  %108 = icmp ne ptr %105, %104
  call void @llvm.assume(i1 %108)
  %109 = load ptr, ptr %107, align 8, !tbaa !50, !noalias !140
  %110 = urem i64 %103, 170
  %111 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %109, i64 %110
  store i8 %70, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %112, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 15, i1 false), !tbaa.struct !35
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 16
  store ptr %69, ptr %113, align 8, !tbaa !23
  %114 = load i64, ptr %91, align 8, !tbaa !24
  %115 = add i64 %114, 1
  store i64 %115, ptr %91, align 8, !tbaa !24
  %116 = load ptr, ptr %79, align 8, !tbaa !42
  %117 = load i64, ptr %89, align 8, !tbaa !43
  %118 = add i64 %117, %114
  %119 = udiv i64 %118, 170
  %120 = getelementptr inbounds nuw ptr, ptr %116, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !50
  %122 = urem i64 %118, 170
  %123 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %121, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 16
  %125 = load ptr, ptr %124, align 8
  %126 = load i8, ptr %123, align 8
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  %129 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %130 = select i1 %128, ptr %129, ptr %125
  ret ptr %130

131:                                              ; preds = %95
  %132 = landingpad { ptr, i32 }
          cleanup
  %133 = and i8 %70, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  call void @_ZdlPv(ptr noundef %69) #25
  %136 = load i8, ptr %3, align 8
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %39, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %131, %135, %139
  resume { ptr, i32 } %132
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_317sys__str_containsEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !143
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !143
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !143
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %3, align 8, !alias.scope !143
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #24, !noalias !146
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %3, align 8, !tbaa !23, !alias.scope !143
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !24, !alias.scope !143
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !26, !alias.scope !143
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %0, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !23
  br label %29

29:                                               ; preds = %6, %26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !151
  br label %61

32:                                               ; preds = %29
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !151
  %34 = icmp ugt i64 %33, -10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23
          to label %36 unwind label %127

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %32
  %38 = icmp ult i64 %33, 23
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = trunc nuw nsw i64 %33 to i8
  %41 = shl nuw nsw i8 %40, 1
  store i8 %41, ptr %4, align 8, !alias.scope !151
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %53

43:                                               ; preds = %37
  %44 = and i64 %33, -8
  %45 = add nuw i64 %44, 8
  %46 = icmp eq i64 %45, 24
  %47 = select i1 %46, i64 26, i64 %45
  %48 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %47) #24
          to label %49 unwind label %127

49:                                               ; preds = %43
  %50 = or disjoint i64 %47, 1
  store i64 %50, ptr %4, align 8, !tbaa !23, !alias.scope !151
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %33, ptr %51, align 8, !tbaa !24, !alias.scope !151
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %48, ptr %52, align 8, !tbaa !26, !alias.scope !151
  br label %53

53:                                               ; preds = %49, %39
  %54 = phi ptr [ %42, %39 ], [ %48, %49 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr nonnull align 1 %1, i64 %33, i1 false)
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %33
  store i8 0, ptr %55, align 1, !tbaa !23
  %56 = load i8, ptr %4, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %53, %31
  %62 = phi i64 [ %60, %53 ], [ 0, %31 ]
  %63 = phi ptr [ %58, %53 ], [ null, %31 ]
  %64 = phi i8 [ %56, %53 ], [ 0, %31 ]
  %65 = load i8, ptr %3, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %71 = select i1 %67, ptr %70, ptr %69
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %73 = load i64, ptr %72, align 8
  %74 = lshr i8 %65, 1
  %75 = zext nneg i8 %74 to i64
  %76 = select i1 %67, i64 %75, i64 %73
  %77 = and i8 %64, 1
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %80 = select i1 %78, ptr %79, ptr %63
  %81 = lshr i8 %64, 1
  %82 = zext nneg i8 %81 to i64
  %83 = select i1 %78, i64 %82, i64 %62
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %116, label %85

85:                                               ; preds = %61
  %86 = getelementptr inbounds nuw i8, ptr %71, i64 %76
  %87 = ptrtoint ptr %86 to i64
  %88 = icmp slt i64 %76, %83
  br i1 %88, label %107, label %89

89:                                               ; preds = %85
  %90 = load i8, ptr %80, align 1, !tbaa !23
  %91 = sext i8 %90 to i32
  br label %92

92:                                               ; preds = %89, %102
  %93 = phi i64 [ %105, %102 ], [ %76, %89 ]
  %94 = phi ptr [ %103, %102 ], [ %71, %89 ]
  %95 = sub i64 %93, %83
  %96 = add i64 %95, 1
  %97 = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef %91, i64 noundef %96) #9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %92
  %100 = call noundef i32 @memcmp(ptr noundef nonnull %97, ptr noundef nonnull %80, i64 noundef %83) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds nuw i8, ptr %97, i64 1
  %104 = ptrtoint ptr %103 to i64
  %105 = sub i64 %87, %104
  %106 = icmp slt i64 %105, %83
  br i1 %106, label %107, label %92, !llvm.loop !154

107:                                              ; preds = %102, %99, %92, %85
  %108 = phi ptr [ %86, %85 ], [ %86, %102 ], [ %97, %99 ], [ %86, %92 ]
  %109 = icmp ne ptr %108, %86
  %110 = ptrtoint ptr %108 to i64
  %111 = ptrtoint ptr %71 to i64
  %112 = sub i64 %110, %111
  %113 = icmp ne i64 %112, -1
  %114 = select i1 %109, i1 %113, i1 false
  %115 = zext i1 %114 to i32
  br label %116

116:                                              ; preds = %61, %107
  %117 = phi i32 [ %115, %107 ], [ 1, %61 ]
  br i1 %78, label %121, label %118

118:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %63) #25
  %119 = load i8, ptr %3, align 8
  %120 = and i8 %119, 1
  br label %121

121:                                              ; preds = %116, %118
  %122 = phi i8 [ %66, %116 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %68, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %125) #25
  br label %126

126:                                              ; preds = %121, %124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %117

127:                                              ; preds = %43, %35
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %129 = load i8, ptr %3, align 8
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %134 = load ptr, ptr %133, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %134) #25
  br label %135

135:                                              ; preds = %127, %132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %128
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_320sys__str_starts_withEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !155
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !158
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = tail call noundef i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %12) #9
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %14
  %19 = phi i32 [ 0, %11 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_318sys__str_ends_withEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !161
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !164
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = sub nuw i64 %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = tail call noundef i32 @memcmp(ptr noundef %16, ptr noundef %1, i64 noundef %12) #9
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %14
  %21 = phi i32 [ 0, %11 ], [ %19, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_332_5_313sys__str_findEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !167
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !167
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !167
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %3, align 8, !alias.scope !167
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #24, !noalias !170
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %3, align 8, !tbaa !23, !alias.scope !167
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !24, !alias.scope !167
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !26, !alias.scope !167
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %0, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !23
  br label %29

29:                                               ; preds = %6, %26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !175
  br label %61

32:                                               ; preds = %29
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !175
  %34 = icmp ugt i64 %33, -10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23
          to label %36 unwind label %126

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %32
  %38 = icmp ult i64 %33, 23
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = trunc nuw nsw i64 %33 to i8
  %41 = shl nuw nsw i8 %40, 1
  store i8 %41, ptr %4, align 8, !alias.scope !175
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %53

43:                                               ; preds = %37
  %44 = and i64 %33, -8
  %45 = add nuw i64 %44, 8
  %46 = icmp eq i64 %45, 24
  %47 = select i1 %46, i64 26, i64 %45
  %48 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %47) #24
          to label %49 unwind label %126

49:                                               ; preds = %43
  %50 = or disjoint i64 %47, 1
  store i64 %50, ptr %4, align 8, !tbaa !23, !alias.scope !175
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %33, ptr %51, align 8, !tbaa !24, !alias.scope !175
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %48, ptr %52, align 8, !tbaa !26, !alias.scope !175
  br label %53

53:                                               ; preds = %49, %39
  %54 = phi ptr [ %42, %39 ], [ %48, %49 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr nonnull align 1 %1, i64 %33, i1 false)
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %33
  store i8 0, ptr %55, align 1, !tbaa !23
  %56 = load i8, ptr %4, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %53, %31
  %62 = phi i64 [ %60, %53 ], [ 0, %31 ]
  %63 = phi ptr [ %58, %53 ], [ null, %31 ]
  %64 = phi i8 [ %56, %53 ], [ 0, %31 ]
  %65 = load i8, ptr %3, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %71 = select i1 %67, ptr %70, ptr %69
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %73 = load i64, ptr %72, align 8
  %74 = lshr i8 %65, 1
  %75 = zext nneg i8 %74 to i64
  %76 = select i1 %67, i64 %75, i64 %73
  %77 = and i8 %64, 1
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %80 = select i1 %78, ptr %79, ptr %63
  %81 = lshr i8 %64, 1
  %82 = zext nneg i8 %81 to i64
  %83 = select i1 %78, i64 %82, i64 %62
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %61
  %86 = getelementptr inbounds nuw i8, ptr %71, i64 %76
  %87 = ptrtoint ptr %86 to i64
  %88 = icmp slt i64 %76, %83
  br i1 %88, label %107, label %89

89:                                               ; preds = %85
  %90 = load i8, ptr %80, align 1, !tbaa !23
  %91 = sext i8 %90 to i32
  br label %92

92:                                               ; preds = %89, %102
  %93 = phi i64 [ %105, %102 ], [ %76, %89 ]
  %94 = phi ptr [ %103, %102 ], [ %71, %89 ]
  %95 = sub i64 %93, %83
  %96 = add i64 %95, 1
  %97 = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef %91, i64 noundef %96) #9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %92
  %100 = call noundef i32 @memcmp(ptr noundef nonnull %97, ptr noundef nonnull %80, i64 noundef %83) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds nuw i8, ptr %97, i64 1
  %104 = ptrtoint ptr %103 to i64
  %105 = sub i64 %87, %104
  %106 = icmp slt i64 %105, %83
  br i1 %106, label %107, label %92, !llvm.loop !154

107:                                              ; preds = %102, %99, %92, %85
  %108 = phi ptr [ %86, %85 ], [ %86, %102 ], [ %97, %99 ], [ %86, %92 ]
  %109 = icmp eq ptr %108, %86
  %110 = ptrtoint ptr %108 to i64
  %111 = ptrtoint ptr %71 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = select i1 %109, i32 -1, i32 %113
  br label %115

115:                                              ; preds = %61, %107
  %116 = phi i32 [ %114, %107 ], [ 0, %61 ]
  br i1 %78, label %120, label %117

117:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %63) #25
  %118 = load i8, ptr %3, align 8
  %119 = and i8 %118, 1
  br label %120

120:                                              ; preds = %115, %117
  %121 = phi i8 [ %66, %115 ], [ %119, %117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %68, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %124) #25
  br label %125

125:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %116

126:                                              ; preds = %43, %35
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %128 = load i8, ptr %3, align 8
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %133 = load ptr, ptr %132, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %133) #25
  br label %134

134:                                              ; preds = %126, %131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %127
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_332_5_314sys__str_rfindEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !178
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !178
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !178
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %3, align 8, !alias.scope !178
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #24, !noalias !181
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %3, align 8, !tbaa !23, !alias.scope !178
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !24, !alias.scope !178
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !26, !alias.scope !178
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %0, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !23
  br label %29

29:                                               ; preds = %6, %26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !186
  br label %61

32:                                               ; preds = %29
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !186
  %34 = icmp ugt i64 %33, -10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23
          to label %36 unwind label %132

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %32
  %38 = icmp ult i64 %33, 23
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = trunc nuw nsw i64 %33 to i8
  %41 = shl nuw nsw i8 %40, 1
  store i8 %41, ptr %4, align 8, !alias.scope !186
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %53

43:                                               ; preds = %37
  %44 = and i64 %33, -8
  %45 = add nuw i64 %44, 8
  %46 = icmp eq i64 %45, 24
  %47 = select i1 %46, i64 26, i64 %45
  %48 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %47) #24
          to label %49 unwind label %132

49:                                               ; preds = %43
  %50 = or disjoint i64 %47, 1
  store i64 %50, ptr %4, align 8, !tbaa !23, !alias.scope !186
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %33, ptr %51, align 8, !tbaa !24, !alias.scope !186
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %48, ptr %52, align 8, !tbaa !26, !alias.scope !186
  br label %53

53:                                               ; preds = %49, %39
  %54 = phi ptr [ %42, %39 ], [ %48, %49 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr nonnull align 1 %1, i64 %33, i1 false)
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %33
  store i8 0, ptr %55, align 1, !tbaa !23
  %56 = load i8, ptr %4, align 8
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %53, %31
  %62 = phi i64 [ %60, %53 ], [ 0, %31 ]
  %63 = phi ptr [ %58, %53 ], [ null, %31 ]
  %64 = phi i8 [ %56, %53 ], [ 0, %31 ]
  %65 = load i8, ptr %3, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %71 = select i1 %67, ptr %70, ptr %69
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %73 = load i64, ptr %72, align 8
  %74 = lshr i8 %65, 1
  %75 = zext nneg i8 %74 to i64
  %76 = select i1 %67, i64 %75, i64 %73
  %77 = and i8 %64, 1
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %80 = select i1 %78, ptr %79, ptr %63
  %81 = lshr i8 %64, 1
  %82 = zext nneg i8 %81 to i64
  %83 = select i1 %78, i64 %82, i64 %62
  %84 = getelementptr inbounds nuw i8, ptr %71, i64 %76
  %85 = icmp samesign eq i64 %83, 0
  %86 = icmp slt i64 %76, %83
  %87 = or i1 %85, %86
  br i1 %87, label %118, label %88

88:                                               ; preds = %61
  %89 = getelementptr inbounds nuw i8, ptr %80, i64 %83
  %90 = getelementptr i8, ptr %71, i64 %83
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = getelementptr inbounds i8, ptr %89, i64 -1
  %93 = sub i64 0, %83
  br label %95

94:                                               ; preds = %112
  br label %95, !llvm.loop !189

95:                                               ; preds = %94, %88
  %96 = phi ptr [ %84, %88 ], [ %103, %94 ]
  %97 = getelementptr i8, ptr %96, i64 %93
  br label %98

98:                                               ; preds = %102, %95
  %99 = phi ptr [ %107, %102 ], [ %97, %95 ]
  %100 = phi ptr [ %103, %102 ], [ %96, %95 ]
  %101 = icmp eq ptr %91, %100
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %100, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !23, !noalias !190
  %105 = load i8, ptr %92, align 1, !tbaa !23, !noalias !190
  %106 = icmp eq i8 %104, %105
  %107 = getelementptr i8, ptr %99, i64 -1
  br i1 %106, label %108, label %98, !llvm.loop !193

108:                                              ; preds = %102, %112
  %109 = phi ptr [ %113, %112 ], [ %103, %102 ]
  %110 = phi ptr [ %114, %112 ], [ %92, %102 ]
  %111 = icmp eq ptr %110, %80
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds i8, ptr %109, i64 -1
  %114 = getelementptr inbounds i8, ptr %110, i64 -1
  %115 = load i8, ptr %113, align 1, !tbaa !23, !noalias !190
  %116 = load i8, ptr %114, align 1, !tbaa !23, !noalias !190
  %117 = icmp eq i8 %115, %116
  br i1 %117, label %108, label %94, !llvm.loop !189

118:                                              ; preds = %98, %108, %61
  %119 = phi ptr [ %99, %108 ], [ %84, %61 ], [ %84, %98 ]
  br i1 %78, label %121, label %120

120:                                              ; preds = %118
  call void @_ZdlPv(ptr noundef %63) #25
  br label %121

121:                                              ; preds = %118, %120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br i1 %67, label %123, label %122

122:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %69) #25
  br label %123

123:                                              ; preds = %121, %122
  %124 = icmp ne i64 %83, 0
  %125 = icmp eq ptr %119, %84
  %126 = select i1 %124, i1 %125, i1 false
  %127 = ptrtoint ptr %119 to i64
  %128 = ptrtoint ptr %71 to i64
  %129 = sub i64 %127, %128
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %130 = trunc i64 %129 to i32
  %131 = select i1 %126, i32 -1, i32 %130
  ret i32 %131

132:                                              ; preds = %43, %35
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %134 = load i8, ptr %3, align 8
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %139 = load ptr, ptr %138, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %139) #25
  br label %140

140:                                              ; preds = %132, %137
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %133
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_316sys__str_replaceEPKcS1_S1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca [15 x i8], align 1
  %5 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !194
  br label %30

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !194
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !194
  unreachable

12:                                               ; preds = %8
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc nuw nsw i64 %9 to i8
  %16 = shl nuw nsw i8 %15, 1
  store i8 %16, ptr %5, align 8, !alias.scope !194
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %27

18:                                               ; preds = %12
  %19 = and i64 %9, -8
  %20 = add nuw i64 %19, 8
  %21 = icmp eq i64 %20, 24
  %22 = select i1 %21, i64 26, i64 %20
  %23 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %22) #24, !noalias !197
  %24 = or disjoint i64 %22, 1
  store i64 %24, ptr %5, align 8, !tbaa !23, !alias.scope !194
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %9, ptr %25, align 8, !tbaa !24, !alias.scope !194
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %23, ptr %26, align 8, !tbaa !26, !alias.scope !194
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi ptr [ %17, %14 ], [ %23, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %9, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %9
  store i8 0, ptr %29, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %7, %27
  %31 = icmp eq ptr %1, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !202
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %33, %32 ], [ 0, %30 ]
  %36 = icmp eq ptr %2, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9, !noalias !205
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i64 [ %38, %37 ], [ 0, %34 ]
  %41 = icmp eq i64 %35, 0
  br i1 %41, label %101, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %46 = load i8, ptr %5, align 8, !noalias !208
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = load i64, ptr %43, align 8, !noalias !208
  %50 = lshr i8 %46, 1
  %51 = zext nneg i8 %50 to i64
  %52 = select i1 %48, i64 %51, i64 %49
  br label %53

53:                                               ; preds = %42, %91
  %54 = phi i64 [ %52, %42 ], [ %99, %91 ]
  %55 = phi i1 [ %48, %42 ], [ %95, %91 ]
  %56 = phi i64 [ 0, %42 ], [ %92, %91 ]
  %57 = load ptr, ptr %44, align 8, !noalias !208
  %58 = select i1 %55, ptr %45, ptr %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 %54
  %60 = ptrtoint ptr %59 to i64
  %61 = sub nuw nsw i64 %54, %56
  %62 = icmp slt i64 %61, %35
  br i1 %62, label %101, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds nuw i8, ptr %58, i64 %56
  %65 = load i8, ptr %1, align 1, !tbaa !23, !noalias !208
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %63, %77
  %68 = phi i64 [ %80, %77 ], [ %61, %63 ]
  %69 = phi ptr [ %78, %77 ], [ %64, %63 ]
  %70 = sub i64 %68, %35
  %71 = add i64 %70, 1
  %72 = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %69, i32 noundef %66, i64 noundef %71) #9, !noalias !208
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %67
  %75 = call noundef i32 @memcmp(ptr noundef nonnull %72, ptr noundef nonnull %1, i64 noundef %35) #9, !noalias !208
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw i8, ptr %72, i64 1
  %79 = ptrtoint ptr %78 to i64
  %80 = sub i64 %60, %79
  %81 = icmp slt i64 %80, %35
  br i1 %81, label %101, label %67, !llvm.loop !154

82:                                               ; preds = %74
  %83 = icmp eq ptr %72, %59
  %84 = ptrtoint ptr %72 to i64
  %85 = ptrtoint ptr %58 to i64
  %86 = sub i64 %84, %85
  %87 = icmp eq i64 %86, -1
  %88 = select i1 %83, i1 true, i1 %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %82
  %90 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEyyPKcy(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %86, i64 noundef %35, ptr noundef %2, i64 noundef %40)
          to label %91 unwind label %172

91:                                               ; preds = %89
  %92 = add i64 %86, %40
  %93 = load i8, ptr %5, align 8, !noalias !208
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = load i64, ptr %43, align 8, !noalias !208
  %97 = lshr i8 %93, 1
  %98 = zext nneg i8 %97 to i64
  %99 = select i1 %95, i64 %98, i64 %96
  %100 = icmp ugt i64 %92, %99
  br i1 %100, label %101, label %53

101:                                              ; preds = %82, %53, %91, %77, %67, %39
  %102 = load i8, ptr %5, align 8
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %103, i64 15, i1 false)
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = load ptr, ptr %104, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !208
  %106 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110, !prof !36

108:                                              ; preds = %101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %109 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %110

110:                                              ; preds = %108, %101
  %111 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !37
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = ptrtoint ptr %113 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = ashr exact i64 %118, 3
  %120 = icmp eq ptr %113, %115
  %121 = mul i64 %119, 170
  %122 = add i64 %121, -1
  %123 = select i1 %120, i64 0, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %125 = load i64, ptr %124, align 8, !tbaa !43
  %126 = getelementptr inbounds nuw i8, ptr %111, i64 40
  %127 = load i64, ptr %126, align 8, !tbaa !24
  %128 = add i64 %127, %125
  %129 = icmp eq i64 %123, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %110
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %111)
          to label %131 unwind label %174

131:                                              ; preds = %130
  %132 = load i64, ptr %126, align 8, !tbaa !24, !noalias !211
  %133 = load i64, ptr %124, align 8, !tbaa !43, !noalias !211
  %134 = load ptr, ptr %114, align 8, !tbaa !42, !noalias !211
  %135 = load ptr, ptr %112, align 8, !tbaa !37, !noalias !211
  %136 = add i64 %133, %132
  br label %137

137:                                              ; preds = %110, %131
  %138 = phi i64 [ %136, %131 ], [ %128, %110 ]
  %139 = phi ptr [ %135, %131 ], [ %113, %110 ]
  %140 = phi ptr [ %134, %131 ], [ %115, %110 ]
  %141 = udiv i64 %138, 170
  %142 = getelementptr inbounds nuw ptr, ptr %140, i64 %141
  %143 = icmp ne ptr %140, %139
  call void @llvm.assume(i1 %143)
  %144 = load ptr, ptr %142, align 8, !tbaa !50, !noalias !211
  %145 = urem i64 %138, 170
  %146 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %144, i64 %145
  store i8 %102, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %147, ptr noundef nonnull align 1 dereferenceable(15) %4, i64 15, i1 false), !tbaa.struct !35
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 16
  store ptr %105, ptr %148, align 8, !tbaa !23
  %149 = load i64, ptr %126, align 8, !tbaa !24
  %150 = add i64 %149, 1
  store i64 %150, ptr %126, align 8, !tbaa !24
  %151 = load i64, ptr %124, align 8, !tbaa !43
  %152 = add i64 %151, %149
  %153 = load ptr, ptr %114, align 8, !tbaa !42
  %154 = udiv i64 %152, 170
  %155 = getelementptr inbounds nuw ptr, ptr %153, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !50
  %157 = urem i64 %152, 170
  %158 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %156, i64 %157
  %159 = load i8, ptr %158, align 8
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %161 = load ptr, ptr %160, align 8
  %162 = load i8, ptr %5, align 8
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %137
  %166 = load ptr, ptr %104, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %166) #25
  br label %167

167:                                              ; preds = %137, %165
  %168 = and i8 %159, 1
  %169 = icmp eq i8 %168, 0
  %170 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %171 = select i1 %169, ptr %170, ptr %161
  ret ptr %171

172:                                              ; preds = %89
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %179

174:                                              ; preds = %130
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = and i8 %102, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %105) #25
  br label %179

179:                                              ; preds = %178, %174, %172
  %180 = phi { ptr, i32 } [ %173, %172 ], [ %175, %174 ], [ %175, %178 ]
  %181 = load i8, ptr %5, align 8
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %186 = load ptr, ptr %185, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %186) #25
  br label %187

187:                                              ; preds = %179, %184
  resume { ptr, i32 } %180
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_replace_nEPKcS1_S1_i(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %5 = alloca [15 x i8], align 1
  %6 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !214
  br label %31

9:                                                ; preds = %4
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !214
  %11 = icmp ugt i64 %10, -10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !214
  unreachable

13:                                               ; preds = %9
  %14 = icmp ult i64 %10, 23
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = trunc nuw nsw i64 %10 to i8
  %17 = shl nuw nsw i8 %16, 1
  store i8 %17, ptr %6, align 8, !alias.scope !214
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 1
  br label %28

19:                                               ; preds = %13
  %20 = and i64 %10, -8
  %21 = add nuw i64 %20, 8
  %22 = icmp eq i64 %21, 24
  %23 = select i1 %22, i64 26, i64 %21
  %24 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %23) #24, !noalias !217
  %25 = or disjoint i64 %23, 1
  store i64 %25, ptr %6, align 8, !tbaa !23, !alias.scope !214
  %26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %10, ptr %26, align 8, !tbaa !24, !alias.scope !214
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %24, ptr %27, align 8, !tbaa !26, !alias.scope !214
  br label %28

28:                                               ; preds = %19, %15
  %29 = phi ptr [ %18, %15 ], [ %24, %19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull align 1 %0, i64 %10, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %10
  store i8 0, ptr %30, align 1, !tbaa !23
  br label %31

31:                                               ; preds = %8, %28
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !222
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %34, %33 ], [ 0, %31 ]
  %37 = icmp eq ptr %2, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9, !noalias !225
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i64 [ %39, %38 ], [ 0, %35 ]
  %42 = icmp eq i64 %36, 0
  %43 = icmp eq i32 %3, 0
  %44 = or i1 %43, %42
  br i1 %44, label %101, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %47 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %48 = getelementptr inbounds nuw i8, ptr %6, i64 1
  br label %49

49:                                               ; preds = %96, %45
  %50 = phi i32 [ %3, %45 ], [ %99, %96 ]
  %51 = phi i64 [ 0, %45 ], [ %97, %96 ]
  %52 = icmp sgt i32 %50, 0
  %53 = load i8, ptr %6, align 8, !noalias !228
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = load i64, ptr %46, align 8, !noalias !228
  %57 = lshr i8 %53, 1
  %58 = zext nneg i8 %57 to i64
  %59 = select i1 %55, i64 %58, i64 %56
  %60 = icmp ugt i64 %51, %59
  br i1 %60, label %101, label %61

61:                                               ; preds = %49
  %62 = load ptr, ptr %47, align 8, !noalias !228
  %63 = select i1 %55, ptr %48, ptr %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 %59
  %65 = ptrtoint ptr %64 to i64
  %66 = sub nuw nsw i64 %59, %51
  %67 = icmp slt i64 %66, %36
  br i1 %67, label %101, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 %51
  %70 = load i8, ptr %1, align 1, !tbaa !23, !noalias !228
  %71 = sext i8 %70 to i32
  br label %72

72:                                               ; preds = %68, %82
  %73 = phi i64 [ %85, %82 ], [ %66, %68 ]
  %74 = phi ptr [ %83, %82 ], [ %69, %68 ]
  %75 = sub i64 %73, %36
  %76 = add i64 %75, 1
  %77 = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %74, i32 noundef %71, i64 noundef %76) #9, !noalias !228
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %72
  %80 = call noundef i32 @memcmp(ptr noundef nonnull %77, ptr noundef nonnull %1, i64 noundef %36) #9, !noalias !228
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds nuw i8, ptr %77, i64 1
  %84 = ptrtoint ptr %83 to i64
  %85 = sub i64 %65, %84
  %86 = icmp slt i64 %85, %36
  br i1 %86, label %101, label %72, !llvm.loop !154

87:                                               ; preds = %79
  %88 = icmp eq ptr %77, %64
  %89 = ptrtoint ptr %77 to i64
  %90 = ptrtoint ptr %63 to i64
  %91 = sub i64 %89, %90
  %92 = icmp eq i64 %91, -1
  %93 = select i1 %88, i1 true, i1 %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEyyPKcy(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %91, i64 noundef %36, ptr noundef %2, i64 noundef %41)
          to label %96 unwind label %172

96:                                               ; preds = %94
  %97 = add i64 %91, %41
  %98 = sext i1 %52 to i32
  %99 = add nsw i32 %50, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %49

101:                                              ; preds = %96, %87, %61, %49, %82, %72, %40
  %102 = load i8, ptr %6, align 8
  %103 = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) %103, i64 15, i1 false)
  %104 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %105 = load ptr, ptr %104, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !228
  %106 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %110, !prof !36

108:                                              ; preds = %101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %109 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %110

110:                                              ; preds = %108, %101
  %111 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %113 = load ptr, ptr %112, align 8, !tbaa !37
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = ptrtoint ptr %113 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = ashr exact i64 %118, 3
  %120 = icmp eq ptr %113, %115
  %121 = mul i64 %119, 170
  %122 = add i64 %121, -1
  %123 = select i1 %120, i64 0, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %125 = load i64, ptr %124, align 8, !tbaa !43
  %126 = getelementptr inbounds nuw i8, ptr %111, i64 40
  %127 = load i64, ptr %126, align 8, !tbaa !24
  %128 = add i64 %127, %125
  %129 = icmp eq i64 %123, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %110
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %111)
          to label %131 unwind label %174

131:                                              ; preds = %130
  %132 = load i64, ptr %126, align 8, !tbaa !24, !noalias !231
  %133 = load i64, ptr %124, align 8, !tbaa !43, !noalias !231
  %134 = load ptr, ptr %114, align 8, !tbaa !42, !noalias !231
  %135 = load ptr, ptr %112, align 8, !tbaa !37, !noalias !231
  %136 = add i64 %133, %132
  br label %137

137:                                              ; preds = %110, %131
  %138 = phi i64 [ %136, %131 ], [ %128, %110 ]
  %139 = phi ptr [ %135, %131 ], [ %113, %110 ]
  %140 = phi ptr [ %134, %131 ], [ %115, %110 ]
  %141 = udiv i64 %138, 170
  %142 = getelementptr inbounds nuw ptr, ptr %140, i64 %141
  %143 = icmp ne ptr %140, %139
  call void @llvm.assume(i1 %143)
  %144 = load ptr, ptr %142, align 8, !tbaa !50, !noalias !231
  %145 = urem i64 %138, 170
  %146 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %144, i64 %145
  store i8 %102, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %147, ptr noundef nonnull align 1 dereferenceable(15) %5, i64 15, i1 false), !tbaa.struct !35
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 16
  store ptr %105, ptr %148, align 8, !tbaa !23
  %149 = load i64, ptr %126, align 8, !tbaa !24
  %150 = add i64 %149, 1
  store i64 %150, ptr %126, align 8, !tbaa !24
  %151 = load i64, ptr %124, align 8, !tbaa !43
  %152 = add i64 %151, %149
  %153 = load ptr, ptr %114, align 8, !tbaa !42
  %154 = udiv i64 %152, 170
  %155 = getelementptr inbounds nuw ptr, ptr %153, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !50
  %157 = urem i64 %152, 170
  %158 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %156, i64 %157
  %159 = load i8, ptr %158, align 8
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %161 = load ptr, ptr %160, align 8
  %162 = load i8, ptr %6, align 8
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %137
  %166 = load ptr, ptr %104, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %166) #25
  br label %167

167:                                              ; preds = %137, %165
  %168 = and i8 %159, 1
  %169 = icmp eq i8 %168, 0
  %170 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %171 = select i1 %169, ptr %170, ptr %161
  ret ptr %171

172:                                              ; preds = %94
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %179

174:                                              ; preds = %130
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = and i8 %102, 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %105) #25
  br label %179

179:                                              ; preds = %178, %174, %172
  %180 = phi { ptr, i32 } [ %173, %172 ], [ %175, %174 ], [ %175, %178 ]
  %181 = load i8, ptr %6, align 8
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %186 = load ptr, ptr %185, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %186) #25
  br label %187

187:                                              ; preds = %179, %184
  resume { ptr, i32 } %180
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_315sys__str_repeatEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %75

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !234
  br label %34

10:                                               ; preds = %7
  %11 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !234
  %12 = icmp ugt i64 %11, -10
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23
          to label %14 unwind label %49

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %10
  %16 = icmp ult i64 %11, 23
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = trunc nuw nsw i64 %11 to i8
  %19 = shl nuw nsw i8 %18, 1
  store i8 %19, ptr %4, align 8, !alias.scope !234
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %31

21:                                               ; preds = %15
  %22 = and i64 %11, -8
  %23 = add nuw i64 %22, 8
  %24 = icmp eq i64 %23, 24
  %25 = select i1 %24, i64 26, i64 %23
  %26 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %25) #24
          to label %27 unwind label %49

27:                                               ; preds = %21
  %28 = or disjoint i64 %25, 1
  store i64 %28, ptr %4, align 8, !tbaa !23, !alias.scope !234
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %11, ptr %29, align 8, !tbaa !24, !alias.scope !234
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %26, ptr %30, align 8, !tbaa !26, !alias.scope !234
  br label %31

31:                                               ; preds = %27, %17
  %32 = phi ptr [ %20, %17 ], [ %26, %27 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %0, i64 %11, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %11
  store i8 0, ptr %33, align 1, !tbaa !23
  br label %34

34:                                               ; preds = %31, %9
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %51

38:                                               ; preds = %63
  %39 = load i8, ptr %4, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %44) #25
  br label %45

45:                                               ; preds = %38, %42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %46 = load i8, ptr %3, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  br label %75

49:                                               ; preds = %21, %13
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %73

51:                                               ; preds = %34, %63
  %52 = phi i32 [ 0, %34 ], [ %64, %63 ]
  %53 = load i8, ptr %4, align 8
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = load ptr, ptr %35, align 8
  %57 = select i1 %55, ptr %36, ptr %56
  %58 = load i64, ptr %37, align 8
  %59 = lshr i8 %53, 1
  %60 = zext nneg i8 %59 to i64
  %61 = select i1 %55, i64 %60, i64 %58
  %62 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %57, i64 noundef %61)
          to label %63 unwind label %66

63:                                               ; preds = %51
  %64 = add nuw nsw i32 %52, 1
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %38, label %51, !llvm.loop !237

66:                                               ; preds = %51
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load i8, ptr %4, align 8
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %35, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %72) #25
  br label %73

73:                                               ; preds = %71, %66, %49
  %74 = phi { ptr, i32 } [ %50, %49 ], [ %67, %66 ], [ %67, %71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %151

75:                                               ; preds = %45, %2
  %76 = phi ptr [ %48, %45 ], [ null, %2 ]
  %77 = phi i8 [ %46, %45 ], [ 0, %2 ]
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) %78, i64 15, i1 false), !tbaa.struct !35
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %80 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84, !prof !36

82:                                               ; preds = %75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %83 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !37
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = ptrtoint ptr %87 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp eq ptr %87, %89
  %95 = mul i64 %93, 170
  %96 = add i64 %95, -1
  %97 = select i1 %94, i64 0, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %99 = load i64, ptr %98, align 8, !tbaa !43
  %100 = getelementptr inbounds nuw i8, ptr %85, i64 40
  %101 = load i64, ptr %100, align 8, !tbaa !24
  %102 = add i64 %101, %99
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %84
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %85)
          to label %105 unwind label %146

105:                                              ; preds = %104
  %106 = load i64, ptr %100, align 8, !tbaa !24, !noalias !238
  %107 = load i64, ptr %98, align 8, !tbaa !43, !noalias !238
  %108 = load ptr, ptr %88, align 8, !tbaa !42, !noalias !238
  %109 = load ptr, ptr %86, align 8, !tbaa !37, !noalias !238
  %110 = add i64 %107, %106
  br label %111

111:                                              ; preds = %84, %105
  %112 = phi i64 [ %110, %105 ], [ %102, %84 ]
  %113 = phi ptr [ %109, %105 ], [ %87, %84 ]
  %114 = phi ptr [ %108, %105 ], [ %89, %84 ]
  %115 = udiv i64 %112, 170
  %116 = getelementptr inbounds nuw ptr, ptr %114, i64 %115
  %117 = icmp ne ptr %114, %113
  call void @llvm.assume(i1 %117)
  %118 = load ptr, ptr %116, align 8, !tbaa !50, !noalias !238
  %119 = urem i64 %112, 170
  %120 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %118, i64 %119
  store i8 %77, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %121, ptr noundef nonnull align 1 dereferenceable(15) %5, i64 15, i1 false), !tbaa.struct !35
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 16
  store ptr %76, ptr %122, align 8, !tbaa !23
  %123 = load i64, ptr %100, align 8, !tbaa !24
  %124 = add i64 %123, 1
  store i64 %124, ptr %100, align 8, !tbaa !24
  %125 = load i64, ptr %98, align 8, !tbaa !43
  %126 = add i64 %125, %123
  %127 = load ptr, ptr %88, align 8, !tbaa !42
  %128 = udiv i64 %126, 170
  %129 = getelementptr inbounds nuw ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !50
  %131 = urem i64 %126, 170
  %132 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %130, i64 %131
  %133 = load i8, ptr %132, align 8
  %134 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %135 = load ptr, ptr %134, align 8
  %136 = load i8, ptr %3, align 8
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %111
  %140 = load ptr, ptr %79, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %140) #25
  br label %141

141:                                              ; preds = %111, %139
  %142 = and i8 %133, 1
  %143 = icmp eq i8 %142, 0
  %144 = getelementptr inbounds nuw i8, ptr %132, i64 1
  %145 = select i1 %143, ptr %144, ptr %135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %145

146:                                              ; preds = %104
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = and i8 %77, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %76) #25
  br label %151

151:                                              ; preds = %150, %146, %73
  %152 = phi { ptr, i32 } [ %74, %73 ], [ %147, %146 ], [ %147, %150 ]
  %153 = load i8, ptr %3, align 8
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %158) #25
  br label %159

159:                                              ; preds = %151, %156
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_317sys__str_pad_leftEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !241
  br label %30

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !241
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !241
  unreachable

12:                                               ; preds = %8
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc nuw nsw i64 %9 to i8
  %16 = shl nuw nsw i8 %15, 1
  store i8 %16, ptr %4, align 8, !alias.scope !241
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %27

18:                                               ; preds = %12
  %19 = and i64 %9, -8
  %20 = add nuw i64 %19, 8
  %21 = icmp eq i64 %20, 24
  %22 = select i1 %21, i64 26, i64 %20
  %23 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %22) #24, !noalias !244
  %24 = or disjoint i64 %22, 1
  store i64 %24, ptr %4, align 8, !tbaa !23, !alias.scope !241
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %25, align 8, !tbaa !24, !alias.scope !241
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %23, ptr %26, align 8, !tbaa !26, !alias.scope !241
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi ptr [ %17, %14 ], [ %23, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %9, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %9
  store i8 0, ptr %29, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %7, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load i8, ptr %2, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 32, i8 %33
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i8 [ 32, %30 ], [ %35, %32 ]
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %41

41:                                               ; preds = %51, %36
  %42 = load i8, ptr %4, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  %45 = load i64, ptr %38, align 8
  %46 = lshr i8 %42, 1
  %47 = zext nneg i8 %46 to i64
  %48 = select i1 %44, i64 %47, i64 %45
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %1, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load ptr, ptr %39, align 8
  %53 = select i1 %44, ptr %40, ptr %52
  %54 = ptrtoint ptr %53 to i64
  %55 = invoke i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %54, i8 noundef %37)
          to label %41 unwind label %56, !llvm.loop !249

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %129

58:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) %40, i64 15, i1 false), !tbaa.struct !35
  %59 = load ptr, ptr %39, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %60 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64, !prof !36

62:                                               ; preds = %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %63 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %67 = load ptr, ptr %66, align 8, !tbaa !37
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = ptrtoint ptr %67 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = ashr exact i64 %72, 3
  %74 = icmp eq ptr %67, %69
  %75 = mul i64 %73, 170
  %76 = add i64 %75, -1
  %77 = select i1 %74, i64 0, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %79 = load i64, ptr %78, align 8, !tbaa !43
  %80 = getelementptr inbounds nuw i8, ptr %65, i64 40
  %81 = load i64, ptr %80, align 8, !tbaa !24
  %82 = add i64 %81, %79
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %64
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %65)
          to label %85 unwind label %126

85:                                               ; preds = %84
  %86 = load i64, ptr %80, align 8, !tbaa !24, !noalias !250
  %87 = load i64, ptr %78, align 8, !tbaa !43, !noalias !250
  %88 = load ptr, ptr %68, align 8, !tbaa !42, !noalias !250
  %89 = load ptr, ptr %66, align 8, !tbaa !37, !noalias !250
  %90 = add i64 %87, %86
  br label %91

91:                                               ; preds = %64, %85
  %92 = phi i64 [ %90, %85 ], [ %82, %64 ]
  %93 = phi ptr [ %89, %85 ], [ %67, %64 ]
  %94 = phi ptr [ %88, %85 ], [ %69, %64 ]
  %95 = udiv i64 %92, 170
  %96 = getelementptr inbounds nuw ptr, ptr %94, i64 %95
  %97 = icmp ne ptr %94, %93
  call void @llvm.assume(i1 %97)
  %98 = load ptr, ptr %96, align 8, !tbaa !50, !noalias !250
  %99 = urem i64 %92, 170
  %100 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %98, i64 %99
  store i8 %42, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %101, ptr noundef nonnull align 1 dereferenceable(15) %5, i64 15, i1 false), !tbaa.struct !35
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 16
  store ptr %59, ptr %102, align 8, !tbaa !23
  %103 = load i64, ptr %80, align 8, !tbaa !24
  %104 = add i64 %103, 1
  store i64 %104, ptr %80, align 8, !tbaa !24
  %105 = load i64, ptr %78, align 8, !tbaa !43
  %106 = add i64 %105, %103
  %107 = load ptr, ptr %68, align 8, !tbaa !42
  %108 = udiv i64 %106, 170
  %109 = getelementptr inbounds nuw ptr, ptr %107, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !50
  %111 = urem i64 %106, 170
  %112 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %110, i64 %111
  %113 = load i8, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %115 = load ptr, ptr %114, align 8
  %116 = load i8, ptr %4, align 8
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %91
  %120 = load ptr, ptr %39, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %120) #25
  br label %121

121:                                              ; preds = %91, %119
  %122 = and i8 %113, 1
  %123 = icmp eq i8 %122, 0
  %124 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %125 = select i1 %123, ptr %124, ptr %115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %125

126:                                              ; preds = %84
  %127 = landingpad { ptr, i32 }
          cleanup
  br i1 %44, label %129, label %128

128:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %59) #25
  br label %129

129:                                              ; preds = %128, %126, %56
  %130 = phi { ptr, i32 } [ %57, %56 ], [ %127, %128 ], [ %127, %126 ]
  %131 = load i8, ptr %4, align 8
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %39, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %135) #25
  br label %136

136:                                              ; preds = %129, %134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %130
}

; Function Attrs: mustprogress uwtable
declare dso_local i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc(ptr noundef nonnull align 8 dereferenceable(24), i64, i8 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_pad_rightEPKciS1_(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !253
  br label %30

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !253
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !253
  unreachable

12:                                               ; preds = %8
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc nuw nsw i64 %9 to i8
  %16 = shl nuw nsw i8 %15, 1
  store i8 %16, ptr %4, align 8, !alias.scope !253
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %27

18:                                               ; preds = %12
  %19 = and i64 %9, -8
  %20 = add nuw i64 %19, 8
  %21 = icmp eq i64 %20, 24
  %22 = select i1 %21, i64 26, i64 %20
  %23 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %22) #24, !noalias !256
  %24 = or disjoint i64 %22, 1
  store i64 %24, ptr %4, align 8, !tbaa !23, !alias.scope !253
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %25, align 8, !tbaa !24, !alias.scope !253
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %23, ptr %26, align 8, !tbaa !26, !alias.scope !253
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi ptr [ %17, %14 ], [ %23, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %9, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %9
  store i8 0, ptr %29, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %7, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load i8, ptr %2, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 32, i8 %33
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i8 [ 32, %30 ], [ %35, %32 ]
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %39

39:                                               ; preds = %49, %36
  %40 = load i8, ptr %4, align 8
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  %43 = load i64, ptr %38, align 8
  %44 = lshr i8 %40, 1
  %45 = zext nneg i8 %44 to i64
  %46 = select i1 %42, i64 %45, i64 %43
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %1, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef %37)
          to label %39 unwind label %50, !llvm.loop !261

50:                                               ; preds = %49
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %125

52:                                               ; preds = %39
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) %53, i64 15, i1 false), !tbaa.struct !35
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %55 = load ptr, ptr %54, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %56 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60, !prof !36

58:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %59 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = load ptr, ptr %62, align 8, !tbaa !37
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = ptrtoint ptr %63 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 3
  %70 = icmp eq ptr %63, %65
  %71 = mul i64 %69, 170
  %72 = add i64 %71, -1
  %73 = select i1 %70, i64 0, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %75 = load i64, ptr %74, align 8, !tbaa !43
  %76 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %77 = load i64, ptr %76, align 8, !tbaa !24
  %78 = add i64 %77, %75
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %60
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %61)
          to label %81 unwind label %122

81:                                               ; preds = %80
  %82 = load i64, ptr %76, align 8, !tbaa !24, !noalias !262
  %83 = load i64, ptr %74, align 8, !tbaa !43, !noalias !262
  %84 = load ptr, ptr %64, align 8, !tbaa !42, !noalias !262
  %85 = load ptr, ptr %62, align 8, !tbaa !37, !noalias !262
  %86 = add i64 %83, %82
  br label %87

87:                                               ; preds = %60, %81
  %88 = phi i64 [ %86, %81 ], [ %78, %60 ]
  %89 = phi ptr [ %85, %81 ], [ %63, %60 ]
  %90 = phi ptr [ %84, %81 ], [ %65, %60 ]
  %91 = udiv i64 %88, 170
  %92 = getelementptr inbounds nuw ptr, ptr %90, i64 %91
  %93 = icmp ne ptr %90, %89
  call void @llvm.assume(i1 %93)
  %94 = load ptr, ptr %92, align 8, !tbaa !50, !noalias !262
  %95 = urem i64 %88, 170
  %96 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %94, i64 %95
  store i8 %40, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %97, ptr noundef nonnull align 1 dereferenceable(15) %5, i64 15, i1 false), !tbaa.struct !35
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr %55, ptr %98, align 8, !tbaa !23
  %99 = load i64, ptr %76, align 8, !tbaa !24
  %100 = add i64 %99, 1
  store i64 %100, ptr %76, align 8, !tbaa !24
  %101 = load i64, ptr %74, align 8, !tbaa !43
  %102 = add i64 %101, %99
  %103 = load ptr, ptr %64, align 8, !tbaa !42
  %104 = udiv i64 %102, 170
  %105 = getelementptr inbounds nuw ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !50
  %107 = urem i64 %102, 170
  %108 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %106, i64 %107
  %109 = load i8, ptr %108, align 8
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %111 = load ptr, ptr %110, align 8
  %112 = load i8, ptr %4, align 8
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %87
  %116 = load ptr, ptr %54, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %116) #25
  br label %117

117:                                              ; preds = %87, %115
  %118 = and i8 %109, 1
  %119 = icmp eq i8 %118, 0
  %120 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %121 = select i1 %119, ptr %120, ptr %111
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %121

122:                                              ; preds = %80
  %123 = landingpad { ptr, i32 }
          cleanup
  br i1 %42, label %125, label %124

124:                                              ; preds = %122
  call void @_ZdlPv(ptr noundef %55) #25
  br label %125

125:                                              ; preds = %124, %122, %50
  %126 = phi { ptr, i32 } [ %51, %50 ], [ %123, %122 ], [ %123, %124 ]
  %127 = load i8, ptr %4, align 8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %132) #25
  br label %133

133:                                              ; preds = %125, %130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %126
}

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_332_5_318sys__str_substringEPKcii(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !265
  br label %30

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !265
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !265
  unreachable

12:                                               ; preds = %8
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = trunc nuw nsw i64 %9 to i8
  %16 = shl nuw nsw i8 %15, 1
  store i8 %16, ptr %4, align 8, !alias.scope !265
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %27

18:                                               ; preds = %12
  %19 = and i64 %9, -8
  %20 = add nuw i64 %19, 8
  %21 = icmp eq i64 %20, 24
  %22 = select i1 %21, i64 26, i64 %20
  %23 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %22) #24, !noalias !268
  %24 = or disjoint i64 %22, 1
  store i64 %24, ptr %4, align 8, !tbaa !23, !alias.scope !265
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %9, ptr %25, align 8, !tbaa !24, !alias.scope !265
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %23, ptr %26, align 8, !tbaa !26, !alias.scope !265
  br label %27

27:                                               ; preds = %18, %14
  %28 = phi ptr [ %17, %14 ], [ %23, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %0, i64 %9, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %9
  store i8 0, ptr %29, align 1, !tbaa !23
  br label %30

30:                                               ; preds = %7, %27
  %31 = icmp slt i32 %1, 0
  %32 = icmp slt i32 %2, 1
  %33 = or i1 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %4, align 8
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %39 = load i64, ptr %38, align 8
  %40 = lshr i8 %35, 1
  %41 = zext nneg i8 %40 to i64
  %42 = select i1 %37, i64 %41, i64 %39
  %43 = trunc i64 %42 to i32
  %44 = icmp slt i32 %1, %43
  br i1 %44, label %97, label %45

45:                                               ; preds = %34, %30
  %46 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50, !prof !36

48:                                               ; preds = %45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %49 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = ptrtoint ptr %53 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp eq ptr %53, %55
  %61 = mul i64 %59, 170
  %62 = add i64 %61, -1
  %63 = select i1 %60, i64 0, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %65 = load i64, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds nuw i8, ptr %51, i64 40
  %67 = load i64, ptr %66, align 8, !tbaa !24
  %68 = add i64 %67, %65
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %50
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %51)
          to label %71 unwind label %95

71:                                               ; preds = %70
  %72 = load i64, ptr %66, align 8, !tbaa !24, !noalias !273
  %73 = load i64, ptr %64, align 8, !tbaa !43, !noalias !273
  %74 = load ptr, ptr %54, align 8, !tbaa !42, !noalias !273
  %75 = load ptr, ptr %52, align 8, !tbaa !37, !noalias !273
  %76 = add i64 %73, %72
  br label %77

77:                                               ; preds = %71, %50
  %78 = phi i64 [ %76, %71 ], [ %68, %50 ]
  %79 = phi ptr [ %75, %71 ], [ %53, %50 ]
  %80 = phi ptr [ %74, %71 ], [ %55, %50 ]
  %81 = udiv i64 %78, 170
  %82 = getelementptr inbounds nuw ptr, ptr %80, i64 %81
  %83 = icmp ne ptr %80, %79
  tail call void @llvm.assume(i1 %83)
  %84 = load ptr, ptr %82, align 8, !tbaa !50, !noalias !273
  %85 = urem i64 %78, 170
  %86 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %84, i64 %85
  store i8 0, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 1
  store i8 0, ptr %87, align 1
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 16
  store ptr null, ptr %88, align 8, !tbaa !23
  %89 = load i64, ptr %66, align 8, !tbaa !24
  %90 = add i64 %89, 1
  store i64 %90, ptr %66, align 8, !tbaa !24
  %91 = load i64, ptr %64, align 8, !tbaa !43
  %92 = add i64 %91, %89
  br label %182

93:                                               ; preds = %113, %100
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %205

95:                                               ; preds = %70
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %205

97:                                               ; preds = %34
  %98 = zext nneg i32 %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %99 = icmp ult i64 %42, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB9nqe220103Ev() #23
          to label %101 unwind label %93

101:                                              ; preds = %100
  unreachable

102:                                              ; preds = %97
  %103 = zext nneg i32 %2 to i64
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %105 = load ptr, ptr %104, align 8, !noalias !276
  %106 = sub nuw i64 %42, %98
  %107 = tail call i64 @llvm.umin.i64(i64 %106, i64 %103)
  %108 = icmp samesign ult i64 %107, 23
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = trunc nuw nsw i64 %107 to i8
  %111 = shl nuw nsw i8 %110, 1
  store i8 %111, ptr %5, align 8, !alias.scope !276
  %112 = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %123

113:                                              ; preds = %102
  %114 = and i64 %107, 2147483640
  %115 = add nuw nsw i64 %114, 8
  %116 = icmp eq i64 %115, 24
  %117 = select i1 %116, i64 26, i64 %115
  %118 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %117) #24
          to label %119 unwind label %93

119:                                              ; preds = %113
  %120 = or disjoint i64 %117, 1
  store i64 %120, ptr %5, align 8, !tbaa !23, !alias.scope !276
  %121 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %107, ptr %121, align 8, !tbaa !24, !alias.scope !276
  %122 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %118, ptr %122, align 8, !tbaa !26, !alias.scope !276
  br label %123

123:                                              ; preds = %119, %109
  %124 = phi ptr [ %112, %109 ], [ %118, %119 ]
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %126 = select i1 %37, ptr %125, ptr %105
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %124, ptr align 1 %127, i64 %107, i1 false)
  %128 = getelementptr inbounds nuw i8, ptr %124, i64 %107
  store i8 0, ptr %128, align 1, !tbaa !23
  %129 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133, !prof !36

131:                                              ; preds = %123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %132 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #9
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %133

133:                                              ; preds = %131, %123
  %134 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %136 = load ptr, ptr %135, align 8, !tbaa !37
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 8
  %138 = load ptr, ptr %137, align 8, !tbaa !42
  %139 = ptrtoint ptr %136 to i64
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %139, %140
  %142 = ashr exact i64 %141, 3
  %143 = icmp eq ptr %136, %138
  %144 = mul i64 %142, 170
  %145 = add i64 %144, -1
  %146 = select i1 %143, i64 0, i64 %145
  %147 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %148 = load i64, ptr %147, align 8, !tbaa !43
  %149 = getelementptr inbounds nuw i8, ptr %134, i64 40
  %150 = load i64, ptr %149, align 8, !tbaa !24
  %151 = add i64 %150, %148
  %152 = icmp eq i64 %146, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %133
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %134)
          to label %154 unwind label %174

154:                                              ; preds = %153
  %155 = load i64, ptr %149, align 8, !tbaa !24, !noalias !279
  %156 = load i64, ptr %147, align 8, !tbaa !43, !noalias !279
  %157 = load ptr, ptr %137, align 8, !tbaa !42, !noalias !279
  %158 = load ptr, ptr %135, align 8, !tbaa !37, !noalias !279
  %159 = add i64 %156, %155
  br label %160

160:                                              ; preds = %154, %133
  %161 = phi i64 [ %159, %154 ], [ %151, %133 ]
  %162 = phi ptr [ %158, %154 ], [ %136, %133 ]
  %163 = phi ptr [ %157, %154 ], [ %138, %133 ]
  %164 = udiv i64 %161, 170
  %165 = getelementptr inbounds nuw ptr, ptr %163, i64 %164
  %166 = icmp ne ptr %163, %162
  tail call void @llvm.assume(i1 %166)
  %167 = load ptr, ptr %165, align 8, !tbaa !50, !noalias !279
  %168 = urem i64 %161, 170
  %169 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %167, i64 %168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %169, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !69
  %170 = load i64, ptr %149, align 8, !tbaa !24
  %171 = add i64 %170, 1
  store i64 %171, ptr %149, align 8, !tbaa !24
  %172 = load i64, ptr %147, align 8, !tbaa !43
  %173 = add i64 %172, %170
  br label %182

174:                                              ; preds = %153
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = load i8, ptr %5, align 8
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %205, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %181 = load ptr, ptr %180, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %181) #25
  br label %205

182:                                              ; preds = %160, %77
  %183 = phi i64 [ %173, %160 ], [ %92, %77 ]
  %184 = phi ptr [ %137, %160 ], [ %54, %77 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !42
  %186 = udiv i64 %183, 170
  %187 = getelementptr inbounds nuw ptr, ptr %185, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !50
  %189 = urem i64 %183, 170
  %190 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %188, i64 %189
  %191 = load i8, ptr %190, align 8
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 16
  %193 = load ptr, ptr %192, align 8
  %194 = load i8, ptr %4, align 8
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %182
  %198 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %199 = load ptr, ptr %198, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %199) #25
  br label %200

200:                                              ; preds = %182, %197
  %201 = and i8 %191, 1
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %204 = select i1 %202, ptr %203, ptr %193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %204

205:                                              ; preds = %95, %179, %174, %93
  %206 = phi { ptr, i32 } [ %175, %179 ], [ %94, %93 ], [ %96, %95 ], [ %175, %174 ]
  %207 = load i8, ptr %4, align 8
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %212 = load ptr, ptr %211, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %212) #25
  br label %213

213:                                              ; preds = %205, %210
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %206
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN30__apollo_inline_inline_332_5_312sys__str_cmpEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !282
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !285
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = tail call noundef i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = icmp ult i64 %7, %12
  br i1 %17, label %24, label %21

18:                                               ; preds = %11
  %19 = icmp sgt i32 %14, -1
  %20 = select i1 %19, i32 1, i32 -1
  br label %24

21:                                               ; preds = %16
  %22 = icmp ne i64 %7, %12
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %16, %18, %21
  %25 = phi i32 [ -1, %16 ], [ %20, %18 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZN30__apollo_inline_inline_332_5_316sys__str_casecmpEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !288
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9, !noalias !291
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %18

15:                                               ; preds = %31
  %16 = add nuw i64 %19, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %33, label %18, !llvm.loop !294

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !23
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #26
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !23
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @tolower(i32 noundef %26) #26
  %28 = and i32 %23, 255
  %29 = and i32 %27, 255
  %30 = icmp samesign ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = icmp samesign ugt i32 %28, %29
  br i1 %32, label %35, label %15

33:                                               ; preds = %15, %11
  %34 = tail call i32 @llvm.ucmp.i32.i64(i64 %7, i64 %12)
  br label %35

35:                                               ; preds = %18, %31, %33
  %36 = phi i32 [ %34, %33 ], [ -1, %18 ], [ 1, %31 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_332_5_314sys__parse_intEPKci(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !23, !noalias !298
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @isspace(i32 noundef %13) #26, !noalias !298
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %9, !llvm.loop !58

19:                                               ; preds = %16, %9, %2, %6
  %20 = phi i64 [ 0, %6 ], [ 0, %2 ], [ %7, %9 ], [ %7, %16 ]
  %21 = phi i64 [ 0, %6 ], [ 0, %2 ], [ %7, %16 ], [ %10, %9 ]
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi i64 [ %20, %19 ], [ %26, %25 ]
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = add i64 %23, -1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !23, !noalias !298
  %29 = zext i8 %28 to i32
  %30 = tail call i32 @isspace(i32 noundef %29) #26, !noalias !298
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !60

32:                                               ; preds = %25
  %33 = icmp ugt i64 %23, %21
  br i1 %33, label %35, label %34

34:                                               ; preds = %22, %32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !298
  br label %61

35:                                               ; preds = %32
  %36 = sub nuw i64 %23, %21
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %38 = icmp ugt i64 %36, -10
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !298
  unreachable

40:                                               ; preds = %35
  %41 = icmp ult i64 %36, 23
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = trunc nuw nsw i64 %36 to i8
  %44 = shl nuw nsw i8 %43, 1
  store i8 %44, ptr %3, align 8, !alias.scope !298
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %55

46:                                               ; preds = %40
  %47 = and i64 %36, -8
  %48 = add nuw i64 %47, 8
  %49 = icmp eq i64 %48, 24
  %50 = select i1 %49, i64 26, i64 %48
  %51 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %50) #24, !noalias !301
  %52 = or disjoint i64 %50, 1
  store i64 %52, ptr %3, align 8, !tbaa !23, !alias.scope !298
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %36, ptr %53, align 8, !tbaa !24, !alias.scope !298
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %51, ptr %54, align 8, !tbaa !26, !alias.scope !298
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi ptr [ %45, %42 ], [ %51, %46 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %37, i64 %36, i1 false)
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %36
  store i8 0, ptr %57, align 1, !tbaa !23
  %58 = load i8, ptr %3, align 8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %34, %55
  %62 = phi i64 [ 0, %34 ], [ %60, %55 ]
  %63 = phi i8 [ 0, %34 ], [ %58, %55 ]
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = lshr i8 %63, 1
  %67 = zext nneg i8 %66 to i64
  %68 = select i1 %65, i64 %67, i64 %62
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !26
  %71 = icmp eq i32 %1, 0
  %72 = add i32 %1, -37
  %73 = icmp ult i32 %72, -35
  %74 = select i1 %73, i32 10, i32 %1
  %75 = select i1 %71, i32 0, i32 %74
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %79 = select i1 %65, ptr %78, ptr %77
  %80 = call i32 @strtol(ptr noundef %79, ptr noundef nonnull %4, i32 noundef %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %81

81:                                               ; preds = %61, %70
  %82 = phi i32 [ %80, %70 ], [ 0, %61 ]
  br i1 %65, label %86, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %85 = load ptr, ptr %84, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %85) #25
  br label %86

86:                                               ; preds = %81, %83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %82
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare dso_local i32 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN30__apollo_inline_inline_332_5_316sys__parse_floatEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9, !noalias !306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5, %15
  %9 = phi i64 [ %16, %15 ], [ 0, %5 ]
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !23, !noalias !309
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @isspace(i32 noundef %12) #26, !noalias !309
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = add nuw i64 %9, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %8, !llvm.loop !58

18:                                               ; preds = %15, %8, %1, %5
  %19 = phi i64 [ 0, %5 ], [ 0, %1 ], [ %6, %8 ], [ %6, %15 ]
  %20 = phi i64 [ 0, %5 ], [ 0, %1 ], [ %6, %15 ], [ %9, %8 ]
  br label %21

21:                                               ; preds = %24, %18
  %22 = phi i64 [ %19, %18 ], [ %25, %24 ]
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = add i64 %22, -1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !23, !noalias !309
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @isspace(i32 noundef %28) #26, !noalias !309
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !60

31:                                               ; preds = %24
  %32 = icmp ugt i64 %22, %20
  br i1 %32, label %34, label %33

33:                                               ; preds = %21, %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !309
  br label %60

34:                                               ; preds = %31
  %35 = sub nuw i64 %22, %20
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %37 = icmp ugt i64 %35, -10
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #23, !noalias !309
  unreachable

39:                                               ; preds = %34
  %40 = icmp ult i64 %35, 23
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = trunc nuw nsw i64 %35 to i8
  %43 = shl nuw nsw i8 %42, 1
  store i8 %43, ptr %2, align 8, !alias.scope !309
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %54

45:                                               ; preds = %39
  %46 = and i64 %35, -8
  %47 = add nuw i64 %46, 8
  %48 = icmp eq i64 %47, 24
  %49 = select i1 %48, i64 26, i64 %47
  %50 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %49) #24, !noalias !312
  %51 = or disjoint i64 %49, 1
  store i64 %51, ptr %2, align 8, !tbaa !23, !alias.scope !309
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %35, ptr %52, align 8, !tbaa !24, !alias.scope !309
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %50, ptr %53, align 8, !tbaa !26, !alias.scope !309
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi ptr [ %44, %41 ], [ %50, %45 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %55, ptr align 1 %36, i64 %35, i1 false)
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %35
  store i8 0, ptr %56, align 1, !tbaa !23
  %57 = load i8, ptr %2, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %59 = load i64, ptr %58, align 8
  br label %60

60:                                               ; preds = %33, %54
  %61 = phi i64 [ 0, %33 ], [ %59, %54 ]
  %62 = phi i8 [ 0, %33 ], [ %57, %54 ]
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = lshr i8 %62, 1
  %66 = zext nneg i8 %65 to i64
  %67 = select i1 %64, i64 %66, i64 %61
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !26
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %73 = select i1 %64, ptr %72, ptr %71
  %74 = call double @strtod(ptr noundef %73, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %75

75:                                               ; preds = %60, %69
  %76 = phi double [ %74, %69 ], [ 0.000000e+00, %60 ]
  br i1 %64, label %80, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  call void @_ZdlPv(ptr noundef %79) #25
  br label %80

80:                                               ; preds = %75, %77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret double %76
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare dso_local double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_alphaEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalpha(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isalpha(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_digitEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = add i8 %4, -48
  %8 = icmp ult i8 %7, 10
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %3, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_alnumEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalnum(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isalnum(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_318sys__is_whitespaceEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isspace(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isspace(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_315sys__is_controlEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @iscntrl(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @iscntrl(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_319sys__is_punctuationEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @ispunct(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @ispunct(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_graphEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isgraph(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isgraph(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_printEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isprint(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isprint(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_317sys__is_hex_digitEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isxdigit(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @isxdigit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_332_5_313sys__is_asciiEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i8 %4, -1
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ %8, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__str_contains(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_332_5_317sys__str_containsEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__str_starts_with(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9, !noalias !317
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #9, !noalias !320
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = tail call noundef i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %12) #9
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %14
  %19 = phi i32 [ 0, %11 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__str_ends_with(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9, !noalias !323
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #9, !noalias !326
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = sub nuw i64 %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = tail call noundef i32 @memcmp(ptr noundef readonly %16, ptr noundef readonly %1, i64 noundef %12) #9
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %14
  %21 = phi i32 [ 0, %11 ], [ %19, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__str_find(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_332_5_313sys__str_findEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__str_rfind(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_332_5_314sys__str_rfindEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @sys__str_cmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9, !noalias !329
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #9, !noalias !332
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = tail call noundef i32 @memcmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = icmp ult i64 %7, %12
  br i1 %17, label %24, label %21

18:                                               ; preds = %11
  %19 = icmp sgt i32 %14, -1
  %20 = select i1 %19, i32 1, i32 -1
  br label %24

21:                                               ; preds = %16
  %22 = icmp ne i64 %7, %12
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %16, %18, %21
  %25 = phi i32 [ -1, %16 ], [ %20, %18 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 -1, 2) i32 @sys__str_casecmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #9, !noalias !335
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #9, !noalias !338
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %7)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %18

15:                                               ; preds = %31
  %16 = add nuw i64 %19, 1
  %17 = icmp eq i64 %16, %13
  br i1 %17, label %33, label %18, !llvm.loop !294

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !23
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @tolower(i32 noundef %22) #26
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !23
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @tolower(i32 noundef %26) #26
  %28 = and i32 %23, 255
  %29 = and i32 %27, 255
  %30 = icmp samesign ult i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = icmp samesign ugt i32 %28, %29
  br i1 %32, label %35, label %15

33:                                               ; preds = %15, %11
  %34 = tail call i32 @llvm.ucmp.i32.i64(i64 %7, i64 %12)
  br label %35

35:                                               ; preds = %18, %31, %33
  %36 = phi i32 [ %34, %33 ], [ 1, %31 ], [ -1, %18 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__parse_int(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call noundef i32 @_ZN30__apollo_inline_inline_332_5_314sys__parse_intEPKci(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @sys__parse_float(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = tail call noundef double @_ZN30__apollo_inline_inline_332_5_316sys__parse_floatEPKc(ptr noundef %0)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_alpha(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalpha(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_digit(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = add i8 %4, -48
  %8 = icmp ult i8 %7, 10
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %3, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_alnum(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isalnum(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_whitespace(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isspace(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_control(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @iscntrl(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_punctuation(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @ispunct(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_graph(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isgraph(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_print(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isprint(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_hex_digit(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %5, %3 ]
  %8 = tail call i32 @isxdigit(i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__is_ascii(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i8 %4, -1
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi i32 [ %8, %6 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !42, !noalias !341
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !37, !noalias !341
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !43, !noalias !341
  %12 = udiv i64 %11, 170
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !50, !noalias !341
  %15 = urem i64 %11, 170
  %16 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !24, !noalias !344
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 170
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !50, !noalias !344
  %23 = urem i64 %19, 170
  %24 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %60
  %27 = load ptr, ptr %5, align 8, !tbaa !37
  %28 = load ptr, ptr %2, align 8, !tbaa !42
  br label %29

29:                                               ; preds = %26, %10, %8
  %30 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %6, %8 ]
  %31 = phi ptr [ %17, %26 ], [ %17, %10 ], [ %9, %8 ]
  %32 = phi ptr [ %28, %26 ], [ %3, %10 ], [ %3, %8 ]
  %33 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %3, %8 ]
  store i64 0, ptr %31, align 8, !tbaa !24
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
  %48 = load ptr, ptr %47, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %48) #25
  %49 = load ptr, ptr %42, align 8, !tbaa !50
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
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %50 ]
  %62 = phi ptr [ %58, %57 ], [ %42, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %52, %50 ]
  %64 = icmp eq ptr %63, %24
  br i1 %64, label %26, label %39, !llvm.loop !347

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %69, %65 ], [ %32, %29 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  tail call void @_ZdlPv(ptr noundef %67) #25
  %68 = load ptr, ptr %2, align 8, !tbaa !42
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %2, align 8, !tbaa !42
  %70 = load ptr, ptr %5, align 8, !tbaa !37
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
  store i64 %82, ptr %4, align 8, !tbaa !43
  br label %83

83:                                               ; preds = %76, %81
  %84 = icmp eq ptr %78, %77
  br i1 %84, label %93, label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %78, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !50
  tail call void @_ZdlPv(ptr noundef %87) #25
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = icmp eq ptr %88, %77
  br i1 %89, label %90, label %85, !llvm.loop !348

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8, !tbaa !42
  %92 = load ptr, ptr %5, align 8, !tbaa !37
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
  store ptr %101, ptr %5, align 8, !tbaa !37
  %102 = load ptr, ptr %0, align 8, !tbaa !349
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @_ZdlPv(ptr noundef nonnull %102) #25
  br label %105

105:                                              ; preds = %93, %104
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = icmp ugt i64 %7, 169
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -170
  store i64 %10, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  store ptr %13, ptr %2, align 8, !tbaa !50
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !42
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !350
  %25 = load ptr, ptr %0, align 8, !tbaa !349
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #24
  store ptr %33, ptr %3, align 8, !tbaa !50
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #24
  store ptr %35, ptr %4, align 8, !tbaa !50
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %36 = load ptr, ptr %18, align 8, !tbaa !42
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  store ptr %37, ptr %5, align 8, !tbaa !50
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !42
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #23, !noalias !351
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #24, !noalias !351
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #24
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
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #24
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #25
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !50
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !37
  %71 = load ptr, ptr %18, align 8, !tbaa !42
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !354
  store ptr %77, ptr %0, align 8, !tbaa !354
  store ptr %76, ptr %18, align 8, !tbaa !354
  store ptr %74, ptr %23, align 8, !tbaa !354
  store ptr %75, ptr %16, align 8, !tbaa !354
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #25
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !355
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #23
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #24
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
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !50
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !50
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !50
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !50
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !364

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
  %163 = load ptr, ptr %162, align 8, !tbaa !50
  store ptr %163, ptr %161, align 8, !tbaa !50
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !367

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #25
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !50
  store ptr %175, ptr %174, align 8, !tbaa !50
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !42
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #25
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
  tail call void @_ZdlPv(ptr noundef nonnull %190) #25
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !350
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load ptr, ptr %0, align 8, !tbaa !349
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !368
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !42
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #23, !noalias !377
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #24, !noalias !377
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !42
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !50
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !50
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !50
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !50
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !380

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
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  store ptr %83, ptr %81, align 8, !tbaa !50
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !381

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !354
  store ptr %37, ptr %0, align 8, !tbaa !354
  store ptr %39, ptr %11, align 8, !tbaa !354
  store ptr %40, ptr %5, align 8, !tbaa !354
  store ptr %88, ptr %3, align 8, !tbaa !354
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #25
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %94, ptr %93, align 8, !tbaa !50
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !350
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load ptr, ptr %0, align 8, !tbaa !349
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !382
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !42
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #23, !noalias !391
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #24, !noalias !391
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !42
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !50
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !50
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !50
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !50
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !394

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
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  store ptr %83, ptr %81, align 8, !tbaa !50
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !395

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !354
  store ptr %37, ptr %0, align 8, !tbaa !354
  store ptr %39, ptr %11, align 8, !tbaa !354
  store ptr %40, ptr %5, align 8, !tbaa !354
  store ptr %88, ptr %3, align 8, !tbaa !354
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #25
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %94, ptr %93, align 8, !tbaa !50
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load ptr, ptr %0, align 8, !tbaa !349
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !350
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !396
  store ptr %22, ptr %10, align 8, !tbaa !37
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #23, !noalias !405
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #24, !noalias !405
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !42
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
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !50
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !50
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !50
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !50
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !408

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
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  store ptr %84, ptr %82, align 8, !tbaa !50
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !409

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !354
  store ptr %38, ptr %0, align 8, !tbaa !354
  store ptr %40, ptr %3, align 8, !tbaa !354
  store ptr %41, ptr %12, align 8, !tbaa !354
  store ptr %89, ptr %10, align 8, !tbaa !354
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #25
  %93 = load ptr, ptr %3, align 8, !tbaa !42
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %97, ptr %96, align 8, !tbaa !50
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !37
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !42
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() local_unnamed_addr #13 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #9
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #23
  unreachable
}

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #18 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str.1) #23
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #23
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #9
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !410
  ret void
}

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #14

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #19

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_out_of_rangeB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZNSt12out_of_rangeC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #23
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #9
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12out_of_rangeC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !410
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @tolower(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dllimport i32 @toupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEyyPKcy(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_out_of_rangeB9nqe220103Ev() local_unnamed_addr #18 comdat align 2 {
  tail call void @_ZNSt3__120__throw_out_of_rangeB9nqe220103EPKc(ptr noundef nonnull @.str.1) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\output\\cache\\inline_foreign/35864910354db4a0.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!17 = distinct !{!17, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!18 = !{!19, !21, !16}
!19 = distinct !{!19, !20, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!20 = distinct !{!20, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!21 = distinct !{!21, !22, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!22 = distinct !{!22, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!23 = !{!10, !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long long", !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !28, i64 0}
!28 = !{!"any pointer", !10, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!31 = distinct !{!31, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_SA_: argument 0"}
!34 = distinct !{!34, !"_ZNSt3__1plB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_SA_"}
!35 = !{i64 0, i64 23, !23}
!36 = !{!"branch_weights", i32 1, i32 1023}
!37 = !{!38, !39, i64 16}
!38 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EE", !39, i64 0, !39, i64 8, !39, i64 16, !41, i64 24}
!39 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !40, i64 0}
!40 = !{!"any p2 pointer", !28, i64 0}
!41 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EUt_E", !39, i64 0}
!42 = !{!38, !39, i64 8}
!43 = !{!44, !25, i64 32}
!44 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !45, i64 0, !25, i64 32, !46, i64 40}
!45 = !{!"_ZTSNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEEE", !38, i64 0}
!46 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !25, i64 0}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!49 = distinct !{!49, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !28, i64 0}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!54 = distinct !{!54, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: argument 0"}
!57 = distinct !{!57, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE"}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !59}
!61 = !{!62, !64, !56}
!62 = distinct !{!62, !63, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!63 = distinct !{!63, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!64 = distinct !{!64, !65, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!65 = distinct !{!65, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!68 = distinct !{!68, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!69 = !{i64 0, i64 24, !23}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!72 = distinct !{!72, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN12__apo_stdlib15trim_start_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: argument 0"}
!75 = distinct !{!75, !"_ZN12__apo_stdlib15trim_start_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE"}
!76 = !{!77, !74}
!77 = distinct !{!77, !78, !"_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB9nqe220103Eyy: argument 0"}
!78 = distinct !{!78, !"_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6substrB9nqe220103Eyy"}
!79 = !{!80, !82, !74}
!80 = distinct !{!80, !81, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!81 = distinct !{!81, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!82 = distinct !{!82, !83, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!83 = distinct !{!83, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!86 = distinct !{!86, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!89 = distinct !{!89, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN12__apo_stdlib13trim_end_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: argument 0"}
!92 = distinct !{!92, !"_ZN12__apo_stdlib13trim_end_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE"}
!93 = !{!94, !96, !91}
!94 = distinct !{!94, !95, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!95 = distinct !{!95, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!96 = distinct !{!96, !97, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!97 = distinct !{!97, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!100 = distinct !{!100, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!103 = distinct !{!103, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!104 = !{!105, !107, !102}
!105 = distinct !{!105, !106, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!106 = distinct !{!106, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!107 = distinct !{!107, !108, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!108 = distinct !{!108, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: argument 0"}
!111 = distinct !{!111, !"_ZN12__apo_stdlib20lowercase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!114 = distinct !{!114, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!117 = distinct !{!117, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!118 = !{!119, !121, !116}
!119 = distinct !{!119, !120, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!120 = distinct !{!120, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!121 = distinct !{!121, !122, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!122 = distinct !{!122, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: argument 0"}
!125 = distinct !{!125, !"_ZN12__apo_stdlib20uppercase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!128 = distinct !{!128, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!131 = distinct !{!131, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!132 = !{!133, !135, !130}
!133 = distinct !{!133, !134, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!134 = distinct !{!134, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!135 = distinct !{!135, !136, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!136 = distinct !{!136, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: argument 0"}
!139 = distinct !{!139, !"_ZN12__apo_stdlib20titlecase_ascii_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!142 = distinct !{!142, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!145 = distinct !{!145, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!146 = !{!147, !149, !144}
!147 = distinct !{!147, !148, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!148 = distinct !{!148, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!149 = distinct !{!149, !150, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!150 = distinct !{!150, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!153 = distinct !{!153, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!154 = distinct !{!154, !59}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!157 = distinct !{!157, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!160 = distinct !{!160, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!163 = distinct !{!163, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!166 = distinct !{!166, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!169 = distinct !{!169, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!170 = !{!171, !173, !168}
!171 = distinct !{!171, !172, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!172 = distinct !{!172, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!173 = distinct !{!173, !174, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!174 = distinct !{!174, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!177 = distinct !{!177, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!180 = distinct !{!180, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!181 = !{!182, !184, !179}
!182 = distinct !{!182, !183, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!183 = distinct !{!183, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!184 = distinct !{!184, !185, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!185 = distinct !{!185, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!188 = distinct !{!188, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!189 = distinct !{!189, !59}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZNSt3__115__find_end_implB9nqe220103INS_17_ClassicAlgPolicyEDoFbccEPKcS4_S4_S4_NS_10__identityES5_EENS_4pairIT1_S7_EES7_T2_T3_T4_RT0_RT5_RT6_NS_26random_access_iterator_tagESI_: argument 0"}
!192 = distinct !{!192, !"_ZNSt3__115__find_end_implB9nqe220103INS_17_ClassicAlgPolicyEDoFbccEPKcS4_S4_S4_NS_10__identityES5_EENS_4pairIT1_S7_EES7_T2_T3_T4_RT0_RT5_RT6_NS_26random_access_iterator_tagESI_"}
!193 = distinct !{!193, !59}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!196 = distinct !{!196, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!197 = !{!198, !200, !195}
!198 = distinct !{!198, !199, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!199 = distinct !{!199, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!200 = distinct !{!200, !201, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!201 = distinct !{!201, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!204 = distinct !{!204, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!207 = distinct !{!207, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN12__apo_stdlib14replace_n_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_17basic_string_viewIcS3_EES8_i: argument 0"}
!210 = distinct !{!210, !"_ZN12__apo_stdlib14replace_n_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_17basic_string_viewIcS3_EES8_i"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!213 = distinct !{!213, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!216 = distinct !{!216, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!217 = !{!218, !220, !215}
!218 = distinct !{!218, !219, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!219 = distinct !{!219, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!220 = distinct !{!220, !221, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!221 = distinct !{!221, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!224 = distinct !{!224, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!227 = distinct !{!227, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN12__apo_stdlib14replace_n_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_17basic_string_viewIcS3_EES8_i: argument 0"}
!230 = distinct !{!230, !"_ZN12__apo_stdlib14replace_n_copyENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_17basic_string_viewIcS3_EES8_i"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!233 = distinct !{!233, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!236 = distinct !{!236, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!237 = distinct !{!237, !59}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!240 = distinct !{!240, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!243 = distinct !{!243, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!244 = !{!245, !247, !242}
!245 = distinct !{!245, !246, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!246 = distinct !{!246, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!247 = distinct !{!247, !248, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!248 = distinct !{!248, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!249 = distinct !{!249, !59}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!252 = distinct !{!252, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!255 = distinct !{!255, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!256 = !{!257, !259, !254}
!257 = distinct !{!257, !258, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!258 = distinct !{!258, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!259 = distinct !{!259, !260, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!260 = distinct !{!260, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!261 = distinct !{!261, !59}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!264 = distinct !{!264, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!267 = distinct !{!267, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!268 = !{!269, !271, !266}
!269 = distinct !{!269, !270, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!270 = distinct !{!270, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!271 = distinct !{!271, !272, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!272 = distinct !{!272, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!275 = distinct !{!275, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB9nqe220103Eyy: argument 0"}
!278 = distinct !{!278, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB9nqe220103Eyy"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!281 = distinct !{!281, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!284 = distinct !{!284, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!287 = distinct !{!287, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!290 = distinct !{!290, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!293 = distinct !{!293, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!294 = distinct !{!294, !59}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!297 = distinct !{!297, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: argument 0"}
!300 = distinct !{!300, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE"}
!301 = !{!302, !304, !299}
!302 = distinct !{!302, !303, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!303 = distinct !{!303, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!304 = distinct !{!304, !305, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!305 = distinct !{!305, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!308 = distinct !{!308, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!309 = !{!310}
!310 = distinct !{!310, !311, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: argument 0"}
!311 = distinct !{!311, !"_ZN12__apo_stdlib9trim_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE"}
!312 = !{!313, !315, !310}
!313 = distinct !{!313, !314, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!314 = distinct !{!314, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!315 = distinct !{!315, !316, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!316 = distinct !{!316, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!319 = distinct !{!319, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!322 = distinct !{!322, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!325 = distinct !{!325, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!328 = distinct !{!328, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!331 = distinct !{!331, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!334 = distinct !{!334, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!337 = distinct !{!337, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!340 = distinct !{!340, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev: argument 0"}
!343 = distinct !{!343, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!346 = distinct !{!346, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!347 = distinct !{!347, !59}
!348 = distinct !{!348, !59}
!349 = !{!38, !39, i64 0}
!350 = !{!38, !39, i64 24}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!353 = distinct !{!353, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!354 = !{!39, !39, i64 0}
!355 = !{!356, !358, !360, !362}
!356 = distinct !{!356, !357, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!357 = distinct !{!357, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!358 = distinct !{!358, !359, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!359 = distinct !{!359, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!360 = distinct !{!360, !361, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!361 = distinct !{!361, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!362 = distinct !{!362, !363, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!363 = distinct !{!363, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!364 = distinct !{!364, !59, !365, !366}
!365 = !{!"llvm.loop.isvectorized", i32 1}
!366 = !{!"llvm.loop.unroll.runtime.disable"}
!367 = distinct !{!367, !59, !365}
!368 = !{!369, !371, !373, !375}
!369 = distinct !{!369, !370, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!370 = distinct !{!370, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!371 = distinct !{!371, !372, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!372 = distinct !{!372, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!373 = distinct !{!373, !374, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!374 = distinct !{!374, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!375 = distinct !{!375, !376, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!376 = distinct !{!376, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!379 = distinct !{!379, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!380 = distinct !{!380, !59, !365, !366}
!381 = distinct !{!381, !59, !365}
!382 = !{!383, !385, !387, !389}
!383 = distinct !{!383, !384, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!384 = distinct !{!384, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!385 = distinct !{!385, !386, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!386 = distinct !{!386, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!387 = distinct !{!387, !388, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!388 = distinct !{!388, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!389 = distinct !{!389, !390, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!390 = distinct !{!390, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!393 = distinct !{!393, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!394 = distinct !{!394, !59, !365, !366}
!395 = distinct !{!395, !59, !365}
!396 = !{!397, !399, !401, !403}
!397 = distinct !{!397, !398, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!398 = distinct !{!398, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!399 = distinct !{!399, !400, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!400 = distinct !{!400, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!401 = distinct !{!401, !402, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!402 = distinct !{!402, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!403 = distinct !{!403, !404, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!404 = distinct !{!404, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!407 = distinct !{!407, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!408 = distinct !{!408, !59, !365, !366}
!409 = distinct !{!409, !59, !365}
!410 = !{!411, !411, i64 0}
!411 = !{!"vtable pointer", !11, i64 0}
