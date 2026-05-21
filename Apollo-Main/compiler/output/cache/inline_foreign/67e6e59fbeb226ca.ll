; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/67e6e59fbeb226ca.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/67e6e59fbeb226ca.cpp"
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
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::filesystem::__cxx11::directory_iterator" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::allocator" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }

$_ZN12__apo_stdlib11file_createENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN12__apo_stdlib10file_writeEPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib13file_read_allEPv = comdat any

$_ZN12__apo_stdlib9file_pathEPv = comdat any

$_ZN12__apo_stdlib13file_metadataEPv = comdat any

$_ZN12__apo_stdlib17metadata_modifiedEPv = comdat any

$_ZN12__apo_stdlib17metadata_accessedEPv = comdat any

$_ZN12__apo_stdlib16metadata_createdEPv = comdat any

$_ZN12__apo_stdlib13fs_create_dirESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib17fs_create_dir_allESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib9fs_renameESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib7fs_copyESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib11fs_read_dirESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib12fs_hard_linkESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib10fs_symlinkESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$_ZN12__apo_stdlib12fs_read_linkESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib11path_parentESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib14path_file_nameESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib14path_extensionESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib14path_file_stemESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib16path_to_absoluteESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib17path_canonicalizeESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib15path_componentsESt17basic_string_viewIcSt11char_traitsIcEES3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib11file_handleD2Ev = comdat any

$_ZN12__apo_stdlib11file_handleD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_ = comdat any

$_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag = comdat any

$_ZN12__apo_stdlib15metadata_handleD2Ev = comdat any

$_ZN12__apo_stdlib15metadata_handleD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringExEUlPcmE_EEvmT_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev = comdat any

$_ZNKSt10filesystem7__cxx114path8filenameEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNKSt10filesystem7__cxx114path9extensionEv = comdat any

$_ZNKSt10filesystem7__cxx114path4stemEv = comdat any

$_ZTVN12__apo_stdlib11file_handleE = comdat any

$_ZTIN12__apo_stdlib11file_handleE = comdat any

$_ZTSN12__apo_stdlib11file_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZTVN12__apo_stdlib15metadata_handleE = comdat any

$_ZTIN12__apo_stdlib15metadata_handleE = comdat any

$_ZTSN12__apo_stdlib15metadata_handleE = comdat any

@_ZTVN12__apo_stdlib11file_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib11file_handleE, ptr @_ZN12__apo_stdlib11file_handleD2Ev, ptr @_ZN12__apo_stdlib11file_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib11file_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib11file_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib11file_handleE = linkonce_odr dso_local constant [30 x i8] c"N12__apo_stdlib11file_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib15metadata_handleE, ptr @_ZN12__apo_stdlib15metadata_handleD2Ev, ptr @_ZN12__apo_stdlib15metadata_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib15metadata_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local constant [34 x i8] c"N12__apo_stdlib15metadata_handleE\00", comdat, align 1
@__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_append\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_openEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %8, ptr %5, align 8, !tbaa !12, !alias.scope !9
  br i1 %7, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %10, align 8, !tbaa !16, !alias.scope !9
  store i8 0, ptr %8, align 8, !tbaa !19, !alias.scope !9
  br label %28

11:                                               ; preds = %2
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17, !noalias !9
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp ugt i64 %12, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %12, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  store ptr %19, ptr %5, align 8, !tbaa !20, !alias.scope !9
  store i64 %12, ptr %8, align 8, !tbaa !19, !alias.scope !9
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !19, !noalias !9
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !16, !alias.scope !9
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !19
  br label %28

28:                                               ; preds = %9, %25
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %29 = icmp eq ptr %1, null
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %30, ptr %6, align 8, !tbaa !12, !alias.scope !21
  br i1 %29, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16, !alias.scope !21
  store i8 0, ptr %30, align 8, !tbaa !19, !alias.scope !21
  br label %52

33:                                               ; preds = %28
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17, !noalias !21
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
          to label %39 unwind label %109

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
          to label %43 unwind label %109

43:                                               ; preds = %40
  store ptr %42, ptr %6, align 8, !tbaa !20, !alias.scope !21
  store i64 %34, ptr %30, align 8, !tbaa !19, !alias.scope !21
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %30, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !19, !noalias !21
  store i8 %47, ptr %45, align 1, !tbaa !19
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %48, %46, %44
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !16, !alias.scope !21
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !19
  br label %52

52:                                               ; preds = %49, %31
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %53 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %54 unwind label %111

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %56 = load ptr, ptr %5, align 8, !tbaa !20
  %57 = icmp eq ptr %56, %8
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %62, i1 false)
  br label %67

63:                                               ; preds = %54
  %64 = load i64, ptr %8, align 8, !tbaa !19
  store i64 %64, ptr %55, align 8, !tbaa !19
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !16
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi ptr [ %55, %58 ], [ %56, %63 ]
  %69 = phi i64 [ %60, %58 ], [ %66, %63 ]
  %70 = icmp ult i64 %69, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %72 = load ptr, ptr %6, align 8, !tbaa !20
  %73 = icmp eq ptr %72, %30
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %76 = load i64, ptr %75, align 8, !tbaa !16
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %30, i64 %78, i1 false)
  br label %83

79:                                               ; preds = %67
  %80 = load i64, ptr %30, align 8, !tbaa !19
  store i64 %80, ptr %71, align 8, !tbaa !19
  %81 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !16
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi ptr [ %71, %74 ], [ %72, %79 ]
  %85 = phi i64 [ %76, %74 ], [ %82, %79 ]
  %86 = icmp ult i64 %85, 9223372036854775807
  call void @llvm.assume(i1 %86)
  %87 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 1, ptr %87, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %53, align 8, !tbaa !27
  %88 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %89 = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %89, ptr %88, align 8, !tbaa !12
  %90 = icmp eq ptr %68, %55
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = icmp samesign ult i64 %69, 16
  call void @llvm.assume(i1 %92)
  %93 = add nuw nsw i64 %69, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %89, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %93, i1 false)
  br label %96

94:                                               ; preds = %83
  store ptr %68, ptr %88, align 8, !tbaa !20
  %95 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %95, ptr %89, align 8, !tbaa !19
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i64 %69, ptr %97, align 8, !tbaa !16
  %98 = getelementptr inbounds nuw i8, ptr %53, i64 48
  %99 = getelementptr inbounds nuw i8, ptr %53, i64 64
  store ptr %99, ptr %98, align 8, !tbaa !12
  %100 = icmp eq ptr %84, %71
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = icmp samesign ult i64 %85, 16
  call void @llvm.assume(i1 %102)
  %103 = add nuw nsw i64 %85, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, ptr noundef nonnull align 8 dereferenceable(1) %71, i64 %103, i1 false)
  br label %106

104:                                              ; preds = %96
  store ptr %84, ptr %98, align 8, !tbaa !20
  %105 = load i64, ptr %71, align 8, !tbaa !19
  store i64 %105, ptr %99, align 8, !tbaa !19
  br label %106

106:                                              ; preds = %104, %101
  %107 = getelementptr inbounds nuw i8, ptr %53, i64 56
  store i64 %85, ptr %107, align 8, !tbaa !16
  %108 = getelementptr inbounds nuw i8, ptr %53, i64 80
  store i8 0, ptr %108, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %53

109:                                              ; preds = %40, %38
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %118

111:                                              ; preds = %52
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = load ptr, ptr %6, align 8, !tbaa !20
  %114 = icmp eq ptr %113, %30
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i64, ptr %30, align 8, !tbaa !19
  %117 = add i64 %116, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %117) #27
  br label %118

118:                                              ; preds = %111, %115, %109
  %119 = phi { ptr, i32 } [ %110, %109 ], [ %112, %115 ], [ %112, %111 ]
  %120 = load ptr, ptr %5, align 8, !tbaa !20
  %121 = icmp eq ptr %120, %8
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i64, ptr %8, align 8, !tbaa !19
  %124 = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %120, i64 noundef %124) #27
  br label %125

125:                                              ; preds = %118, %122
  resume { ptr, i32 } %119
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_file_createEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %2, align 8, !tbaa !12, !alias.scope !32
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8, !tbaa !16, !alias.scope !32
  store i8 0, ptr %4, align 8, !tbaa !19, !alias.scope !32
  br label %24

7:                                                ; preds = %1
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17, !noalias !32
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #26
  store ptr %15, ptr %2, align 8, !tbaa !20, !alias.scope !32
  store i64 %8, ptr %4, align 8, !tbaa !19, !alias.scope !32
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !19, !noalias !32
  store i8 %19, ptr %17, align 1, !tbaa !19
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !16, !alias.scope !32
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !19
  br label %24

24:                                               ; preds = %5, %21
  %25 = invoke noundef ptr @_ZN12__apo_stdlib11file_createENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %26 unwind label %33

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !20
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %4, align 8, !tbaa !19
  %31 = add i64 %30, 1
  call void @_ZdlPvm(ptr noundef %27, i64 noundef %31) #27
  br label %32

32:                                               ; preds = %26, %29
  ret ptr %25

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %2, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %4, align 8, !tbaa !19
  %39 = add i64 %38, 1
  call void @_ZdlPvm(ptr noundef %35, i64 noundef %39) #27
  br label %40

40:                                               ; preds = %33, %37
  resume { ptr, i32 } %34
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11file_createENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = alloca %"class.std::basic_ofstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext 2)
  %7 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %9 unwind label %24

9:                                                ; preds = %8
  %10 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %11 unwind label %26

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %13) #17
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !35
  %17 = load ptr, ptr %3, align 8, !tbaa !20
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8, !tbaa !19
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %22) #27
  br label %23

23:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %30

24:                                               ; preds = %8
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %98

30:                                               ; preds = %23, %1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %32) #17
  br label %35

35:                                               ; preds = %34, %30
  store ptr null, ptr %31, align 8, !tbaa !35
  %36 = load ptr, ptr %2, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8, !tbaa !19
  %41 = add i64 %40, 1
  call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #27
  br label %42

42:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 48)
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %44 = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %43)
          to label %45 unwind label %96

45:                                               ; preds = %42
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %45
  %48 = load ptr, ptr %4, align 8, !tbaa !27
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %4, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %53 = load i32, ptr %52, align 8, !tbaa !37
  %54 = or i32 %53, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %51, i32 noundef %54)
          to label %55 unwind label %96

55:                                               ; preds = %45, %47
  %56 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %57 unwind label %96

57:                                               ; preds = %55
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %59 = load ptr, ptr %0, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %64 = load i64, ptr %63, align 8, !tbaa !16
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %58, ptr noundef nonnull align 8 dereferenceable(1) %60, i64 %66, i1 false)
  br label %71

67:                                               ; preds = %57
  store ptr %59, ptr %5, align 8, !tbaa !20
  %68 = load i64, ptr %60, align 8, !tbaa !19
  store i64 %68, ptr %58, align 8, !tbaa !19
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !16
  br label %71

71:                                               ; preds = %62, %67
  %72 = phi ptr [ %58, %62 ], [ %59, %67 ]
  %73 = phi i64 [ %64, %62 ], [ %70, %67 ]
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = icmp ult i64 %73, 9223372036854775807
  call void @llvm.assume(i1 %75)
  store ptr %60, ptr %0, align 8, !tbaa !20
  store i64 0, ptr %74, align 8, !tbaa !16
  store i8 0, ptr %60, align 8, !tbaa !19
  %76 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 119, ptr %76, align 8, !tbaa !19
  %77 = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %77, align 1, !tbaa !19
  %78 = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 1, ptr %78, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %56, align 8, !tbaa !27
  %79 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %80 = getelementptr inbounds nuw i8, ptr %56, i64 32
  store ptr %80, ptr %79, align 8, !tbaa !12
  %81 = icmp eq ptr %72, %58
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = icmp samesign ult i64 %73, 16
  call void @llvm.assume(i1 %83)
  %84 = add nuw nsw i64 %73, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %80, ptr noundef nonnull align 8 dereferenceable(1) %58, i64 %84, i1 false)
  br label %87

85:                                               ; preds = %71
  store ptr %72, ptr %79, align 8, !tbaa !20
  %86 = load i64, ptr %58, align 8, !tbaa !19
  store i64 %86, ptr %80, align 8, !tbaa !19
  br label %87

87:                                               ; preds = %85, %82
  %88 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %90 = getelementptr inbounds nuw i8, ptr %56, i64 24
  store i64 %73, ptr %90, align 8, !tbaa !16
  store ptr %58, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %89, align 8, !tbaa !16
  store i8 0, ptr %58, align 8, !tbaa !19
  %91 = getelementptr inbounds nuw i8, ptr %56, i64 48
  %92 = getelementptr inbounds nuw i8, ptr %56, i64 64
  store ptr %92, ptr %91, align 8, !tbaa !12
  %93 = load i16, ptr %76, align 8
  store i16 %93, ptr %92, align 8
  %94 = getelementptr inbounds nuw i8, ptr %56, i64 56
  store i64 1, ptr %94, align 8, !tbaa !16
  store ptr %76, ptr %6, align 8, !tbaa !20
  store i64 0, ptr %88, align 8, !tbaa !16
  store i8 0, ptr %76, align 8, !tbaa !19
  %95 = getelementptr inbounds nuw i8, ptr %56, i64 80
  store i8 0, ptr %95, align 8, !tbaa !29
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %56

96:                                               ; preds = %47, %42, %55
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %98

98:                                               ; preds = %96, %28
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %29, %28 ]
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_722sys__native_file_writeEPvPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = tail call noundef i32 @_ZN12__apo_stdlib10file_writeEPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %7, ptr %1)
  ret i32 %8
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib10file_writeEPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::basic_ofstream", align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %96

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = load i8, ptr %13, align 8, !tbaa !29, !range !46, !noundef !47
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %96, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load i64, ptr %17, align 8, !tbaa !16
  %19 = icmp ult i64 %18, 9223372036854775807
  tail call void @llvm.assume(i1 %19)
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = tail call ptr @memchr(ptr noundef %23, i32 noundef 97, i64 noundef %18) #17
  %25 = icmp eq ptr %24, null
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %23 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq i64 %28, -1
  %30 = or i1 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21, %16
  br label %32

32:                                               ; preds = %21, %31
  %33 = phi i32 [ 48, %31 ], [ 17, %21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %34, i8 noundef zeroext 2)
  %35 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %37 unwind label %52

37:                                               ; preds = %36
  %38 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %39 unwind label %54

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %41) #17
  br label %44

44:                                               ; preds = %43, %39
  store ptr null, ptr %40, align 8, !tbaa !35
  %45 = load ptr, ptr %5, align 8, !tbaa !20
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8, !tbaa !19
  %50 = add i64 %49, 1
  call void @_ZdlPvm(ptr noundef %45, i64 noundef %50) #27
  br label %51

51:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %58

52:                                               ; preds = %36
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %37
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %94

58:                                               ; preds = %51, %32
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull %60) #17
  br label %63

63:                                               ; preds = %62, %58
  store ptr null, ptr %59, align 8, !tbaa !35
  %64 = load ptr, ptr %4, align 8, !tbaa !20
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %65, align 8, !tbaa !19
  %69 = add i64 %68, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %69) #27
  br label %70

70:                                               ; preds = %63, %67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef %33)
  %71 = load ptr, ptr %6, align 8, !tbaa !27
  %72 = getelementptr i8, ptr %71, i64 -24
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds i8, ptr %6, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 32
  %76 = load i32, ptr %75, align 8, !tbaa !37
  %77 = and i32 %76, 5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %92

79:                                               ; preds = %81
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %94

81:                                               ; preds = %70
  %82 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, i64 noundef %1)
          to label %83 unwind label %79

83:                                               ; preds = %81
  %84 = load ptr, ptr %6, align 8, !tbaa !27
  %85 = getelementptr i8, ptr %84, i64 -24
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds i8, ptr %6, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %89 = load i32, ptr %88, align 8, !tbaa !37
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  br label %92

92:                                               ; preds = %70, %83
  %93 = phi i32 [ %91, %83 ], [ 0, %70 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %96

94:                                               ; preds = %79, %56
  %95 = phi { ptr, i32 } [ %80, %79 ], [ %57, %56 ]
  resume { ptr, i32 } %95

96:                                               ; preds = %8, %3, %12, %92
  %97 = phi i32 [ %93, %92 ], [ 0, %12 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %97
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_read_allEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::basic_ifstream", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %75, label %12

12:                                               ; preds = %1, %8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %13, ptr %2, align 8, !tbaa !12
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %14, align 8, !tbaa !16
  store i8 0, ptr %13, align 8, !tbaa !19
  %15 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !48

17:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %18 unwind label %68

18:                                               ; preds = %17
  %19 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %20

20:                                               ; preds = %18, %12
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds i8, ptr %25, i64 -32
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %29, ptr %23, align 8, !tbaa !12
  %30 = load ptr, ptr %2, align 8, !tbaa !20
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, ptr %14, align 8, !tbaa !16
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %13, i64 %35, i1 false)
  br label %39

36:                                               ; preds = %28
  store ptr %30, ptr %23, align 8, !tbaa !20
  %37 = load i64, ptr %13, align 8, !tbaa !19
  store i64 %37, ptr %29, align 8, !tbaa !19
  %38 = load i64, ptr %14, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = icmp ult i64 %40, 9223372036854775807
  call void @llvm.assume(i1 %41)
  %42 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %40, ptr %42, align 8, !tbaa !16
  store ptr %13, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %14, align 8, !tbaa !16
  store i8 0, ptr %13, align 8, !tbaa !19
  %43 = load ptr, ptr %22, align 8, !tbaa !49
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %44, ptr %22, align 8, !tbaa !49
  br label %48

45:                                               ; preds = %20
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %46 unwind label %68

46:                                               ; preds = %45
  %47 = load ptr, ptr %22, align 8, !tbaa !56, !noalias !57
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ %44, %39 ], [ %47, %46 ]
  %50 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %51 = load ptr, ptr %50, align 8, !tbaa !60, !noalias !57
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds nuw i8, ptr %21, i64 72
  %55 = load ptr, ptr %54, align 8, !tbaa !61, !noalias !57
  %56 = getelementptr inbounds i8, ptr %55, i64 -8
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 512
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi ptr [ %58, %53 ], [ %49, %48 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 -32
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  %63 = load ptr, ptr %2, align 8, !tbaa !20
  %64 = icmp eq ptr %63, %13
  br i1 %64, label %249, label %65

65:                                               ; preds = %59
  %66 = load i64, ptr %13, align 8, !tbaa !19
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %67) #27
  br label %249

68:                                               ; preds = %45, %17
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %2, align 8, !tbaa !20
  %71 = icmp eq ptr %70, %13
  br i1 %71, label %251, label %72

72:                                               ; preds = %68
  %73 = load i64, ptr %13, align 8, !tbaa !19
  %74 = add i64 %73, 1
  call void @_ZdlPvm(ptr noundef %70, i64 noundef %74) #27
  br label %251

75:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(32) %76, i32 noundef 4)
  %77 = load ptr, ptr %3, align 8, !tbaa !27
  %78 = getelementptr i8, ptr %77, i64 -24
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds i8, ptr %3, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = load i32, ptr %81, align 8, !tbaa !37
  %83 = and i32 %82, 5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %148, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %86, ptr %4, align 8, !tbaa !12
  %87 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %87, align 8, !tbaa !16
  store i8 0, ptr %86, align 8, !tbaa !19
  %88 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93, !prof !48

90:                                               ; preds = %85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %91 unwind label %141

91:                                               ; preds = %90
  %92 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %93

93:                                               ; preds = %91, %85
  %94 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 48
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 64
  %98 = load ptr, ptr %97, align 8, !tbaa !55
  %99 = getelementptr inbounds i8, ptr %98, i64 -32
  %100 = icmp eq ptr %96, %99
  br i1 %100, label %118, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr %102, ptr %96, align 8, !tbaa !12
  %103 = load ptr, ptr %4, align 8, !tbaa !20
  %104 = icmp eq ptr %103, %86
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64, ptr %87, align 8, !tbaa !16
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  %108 = add nuw nsw i64 %106, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %102, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %108, i1 false)
  br label %112

109:                                              ; preds = %101
  store ptr %103, ptr %96, align 8, !tbaa !20
  %110 = load i64, ptr %86, align 8, !tbaa !19
  store i64 %110, ptr %102, align 8, !tbaa !19
  %111 = load i64, ptr %87, align 8, !tbaa !16
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i64 [ %111, %109 ], [ %106, %105 ]
  %114 = icmp ult i64 %113, 9223372036854775807
  call void @llvm.assume(i1 %114)
  %115 = getelementptr inbounds nuw i8, ptr %96, i64 8
  store i64 %113, ptr %115, align 8, !tbaa !16
  store ptr %86, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %87, align 8, !tbaa !16
  store i8 0, ptr %86, align 8, !tbaa !19
  %116 = load ptr, ptr %95, align 8, !tbaa !49
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 32
  store ptr %117, ptr %95, align 8, !tbaa !49
  br label %121

118:                                              ; preds = %93
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %94, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %119 unwind label %141

119:                                              ; preds = %118
  %120 = load ptr, ptr %95, align 8, !tbaa !56, !noalias !63
  br label %121

121:                                              ; preds = %119, %112
  %122 = phi ptr [ %117, %112 ], [ %120, %119 ]
  %123 = getelementptr inbounds nuw i8, ptr %94, i64 56
  %124 = load ptr, ptr %123, align 8, !tbaa !60, !noalias !63
  %125 = icmp eq ptr %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = getelementptr inbounds nuw i8, ptr %94, i64 72
  %128 = load ptr, ptr %127, align 8, !tbaa !61, !noalias !63
  %129 = getelementptr inbounds i8, ptr %128, i64 -8
  %130 = load ptr, ptr %129, align 8, !tbaa !62
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 512
  br label %132

132:                                              ; preds = %126, %121
  %133 = phi ptr [ %131, %126 ], [ %122, %121 ]
  %134 = getelementptr inbounds i8, ptr %133, i64 -32
  %135 = load ptr, ptr %134, align 8, !tbaa !20
  %136 = load ptr, ptr %4, align 8, !tbaa !20
  %137 = icmp eq ptr %136, %86
  br i1 %137, label %245, label %138

138:                                              ; preds = %132
  %139 = load i64, ptr %86, align 8, !tbaa !19
  %140 = add i64 %139, 1
  call void @_ZdlPvm(ptr noundef %136, i64 noundef %140) #27
  br label %245

141:                                              ; preds = %118, %90
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = load ptr, ptr %4, align 8, !tbaa !20
  %144 = icmp eq ptr %143, %86
  br i1 %144, label %247, label %145

145:                                              ; preds = %141
  %146 = load i64, ptr %86, align 8, !tbaa !19
  %147 = add i64 %146, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %147) #27
  br label %247

148:                                              ; preds = %75
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %149 = getelementptr inbounds nuw i8, ptr %80, i64 232
  %150 = load ptr, ptr %149, align 8, !tbaa !66
  %151 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %151, ptr %5, align 8, !tbaa !12
  %152 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %152, align 8, !tbaa !16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %150, i32 -1, ptr null, i32 -1)
          to label %153 unwind label %228

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %154, ptr %6, align 8, !tbaa !12
  %155 = load ptr, ptr %5, align 8, !tbaa !20
  %156 = icmp eq ptr %155, %151
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64, ptr %152, align 8, !tbaa !16
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  %160 = add nuw nsw i64 %158, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %154, ptr noundef nonnull align 8 dereferenceable(1) %151, i64 %160, i1 false)
  br label %164

161:                                              ; preds = %153
  store ptr %155, ptr %6, align 8, !tbaa !20
  %162 = load i64, ptr %151, align 8, !tbaa !19
  store i64 %162, ptr %154, align 8, !tbaa !19
  %163 = load i64, ptr %152, align 8, !tbaa !16
  br label %164

164:                                              ; preds = %157, %161
  %165 = phi i64 [ %158, %157 ], [ %163, %161 ]
  %166 = icmp ult i64 %165, 9223372036854775807
  call void @llvm.assume(i1 %166)
  %167 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %165, ptr %167, align 8, !tbaa !16
  store ptr %151, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %152, align 8, !tbaa !16
  store i8 0, ptr %151, align 8, !tbaa !19
  %168 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %173, !prof !48

170:                                              ; preds = %164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %171 unwind label %230

171:                                              ; preds = %170
  %172 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %173

173:                                              ; preds = %171, %164
  %174 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 48
  %176 = load ptr, ptr %175, align 8, !tbaa !49
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 64
  %178 = load ptr, ptr %177, align 8, !tbaa !55
  %179 = getelementptr inbounds i8, ptr %178, i64 -32
  %180 = icmp eq ptr %176, %179
  br i1 %180, label %198, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds nuw i8, ptr %176, i64 16
  store ptr %182, ptr %176, align 8, !tbaa !12
  %183 = load ptr, ptr %6, align 8, !tbaa !20
  %184 = icmp eq ptr %183, %154
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i64, ptr %167, align 8, !tbaa !16
  %187 = icmp ult i64 %186, 16
  call void @llvm.assume(i1 %187)
  %188 = add nuw nsw i64 %186, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %182, ptr noundef nonnull align 8 dereferenceable(1) %154, i64 %188, i1 false)
  br label %192

189:                                              ; preds = %181
  store ptr %183, ptr %176, align 8, !tbaa !20
  %190 = load i64, ptr %154, align 8, !tbaa !19
  store i64 %190, ptr %182, align 8, !tbaa !19
  %191 = load i64, ptr %167, align 8, !tbaa !16
  br label %192

192:                                              ; preds = %189, %185
  %193 = phi i64 [ %191, %189 ], [ %186, %185 ]
  %194 = icmp ult i64 %193, 9223372036854775807
  call void @llvm.assume(i1 %194)
  %195 = getelementptr inbounds nuw i8, ptr %176, i64 8
  store i64 %193, ptr %195, align 8, !tbaa !16
  store ptr %154, ptr %6, align 8, !tbaa !20
  store i64 0, ptr %167, align 8, !tbaa !16
  store i8 0, ptr %154, align 8, !tbaa !19
  %196 = load ptr, ptr %175, align 8, !tbaa !49
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 32
  store ptr %197, ptr %175, align 8, !tbaa !49
  br label %201

198:                                              ; preds = %173
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %174, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %199 unwind label %230

199:                                              ; preds = %198
  %200 = load ptr, ptr %175, align 8, !tbaa !56, !noalias !73
  br label %201

201:                                              ; preds = %199, %192
  %202 = phi ptr [ %197, %192 ], [ %200, %199 ]
  %203 = getelementptr inbounds nuw i8, ptr %174, i64 56
  %204 = load ptr, ptr %203, align 8, !tbaa !60, !noalias !73
  %205 = icmp eq ptr %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = getelementptr inbounds nuw i8, ptr %174, i64 72
  %208 = load ptr, ptr %207, align 8, !tbaa !61, !noalias !73
  %209 = getelementptr inbounds i8, ptr %208, i64 -8
  %210 = load ptr, ptr %209, align 8, !tbaa !62
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 512
  br label %212

212:                                              ; preds = %206, %201
  %213 = phi ptr [ %211, %206 ], [ %202, %201 ]
  %214 = getelementptr inbounds i8, ptr %213, i64 -32
  %215 = load ptr, ptr %214, align 8, !tbaa !20
  %216 = load ptr, ptr %6, align 8, !tbaa !20
  %217 = icmp eq ptr %216, %154
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = load i64, ptr %154, align 8, !tbaa !19
  %220 = add i64 %219, 1
  call void @_ZdlPvm(ptr noundef %216, i64 noundef %220) #27
  br label %221

221:                                              ; preds = %212, %218
  %222 = load ptr, ptr %5, align 8, !tbaa !20
  %223 = icmp eq ptr %222, %151
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i64, ptr %151, align 8, !tbaa !19
  %226 = add i64 %225, 1
  call void @_ZdlPvm(ptr noundef %222, i64 noundef %226) #27
  br label %227

227:                                              ; preds = %221, %224
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %245

228:                                              ; preds = %148
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %243

230:                                              ; preds = %198, %170
  %231 = landingpad { ptr, i32 }
          cleanup
  %232 = load ptr, ptr %6, align 8, !tbaa !20
  %233 = icmp eq ptr %232, %154
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load i64, ptr %154, align 8, !tbaa !19
  %236 = add i64 %235, 1
  call void @_ZdlPvm(ptr noundef %232, i64 noundef %236) #27
  br label %237

237:                                              ; preds = %230, %234
  %238 = load ptr, ptr %5, align 8, !tbaa !20
  %239 = icmp eq ptr %238, %151
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i64, ptr %151, align 8, !tbaa !19
  %242 = add i64 %241, 1
  call void @_ZdlPvm(ptr noundef %238, i64 noundef %242) #27
  br label %243

243:                                              ; preds = %237, %240, %228
  %244 = phi { ptr, i32 } [ %229, %228 ], [ %231, %240 ], [ %231, %237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %247

245:                                              ; preds = %132, %138, %227
  %246 = phi ptr [ %215, %227 ], [ %135, %138 ], [ %135, %132 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %249

247:                                              ; preds = %141, %145, %243
  %248 = phi { ptr, i32 } [ %142, %145 ], [ %244, %243 ], [ %142, %141 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %251

249:                                              ; preds = %59, %65, %245
  %250 = phi ptr [ %246, %245 ], [ %62, %65 ], [ %62, %59 ]
  ret ptr %250

251:                                              ; preds = %68, %72, %247
  %252 = phi { ptr, i32 } [ %248, %247 ], [ %69, %72 ], [ %69, %68 ]
  resume { ptr, i32 } %252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_722sys__native_file_closeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %8, align 8, !tbaa !29
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  store ptr %18, ptr %2, align 8, !tbaa !20
  store i64 %13, ptr %10, align 8, !tbaa !19
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %24, ptr %10, align 8, !tbaa !19
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !16
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16
  store i8 0, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !48

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !12
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !20
  %58 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %58, ptr %48, align 8, !tbaa !19
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !16
  store ptr %50, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %50, align 8, !tbaa !19
  %66 = load ptr, ptr %41, align 8, !tbaa !49
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !49
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !56, !noalias !76
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !60, !noalias !76
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !76
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load ptr, ptr %2, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i64, ptr %87, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #27
  br label %92

92:                                               ; preds = %82, %89
  ret ptr %85

93:                                               ; preds = %68, %36
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %2, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_sync_allEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2)
  %10 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %11 unwind label %29

11:                                               ; preds = %8
  %12 = and i64 %10, 255
  %13 = icmp ne i64 %12, 0
  %14 = icmp ne i64 %12, 255
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %19, %11
  store ptr null, ptr %16, align 8, !tbaa !35
  %21 = load ptr, ptr %2, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8, !tbaa !19
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %26) #27
  br label %27

27:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %28 = zext i1 %15 to i32
  br label %31

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %30

31:                                               ; preds = %1, %4, %27
  %32 = phi i32 [ %28, %27 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_file_sync_dataEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2)
  %10 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %11 unwind label %29

11:                                               ; preds = %8
  %12 = and i64 %10, 255
  %13 = icmp ne i64 %12, 0
  %14 = icmp ne i64 %12, 255
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %19, %11
  store ptr null, ptr %16, align 8, !tbaa !35
  %21 = load ptr, ptr %2, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %22, align 8, !tbaa !19
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %26) #27
  br label %27

27:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %28 = zext i1 %15 to i32
  br label %31

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %30

31:                                               ; preds = %1, %4, %27
  %32 = phi i32 [ %28, %27 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_file_set_lenEPvl(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp ne i32 %7, 1
  %9 = icmp slt i64 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %35, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef zeroext 2)
          to label %13 unwind label %27

13:                                               ; preds = %11
  invoke void @_ZNSt10filesystem11resize_fileERKNS_7__cxx114pathEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %1)
          to label %14 unwind label %29

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !35
  %20 = load ptr, ptr %3, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #27
  br label %26

26:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %35

27:                                               ; preds = %11
  %28 = landingpad { ptr, i32 }
          catch ptr null
  br label %31

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %34 = call ptr @__cxa_begin_catch(ptr %33) #17
  call void @__cxa_end_catch()
  br label %35

35:                                               ; preds = %2, %5, %26, %31
  %36 = phi i32 [ 0, %31 ], [ 1, %26 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %36
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_metadataEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, ptr %0, ptr null
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ null, %1 ], [ %9, %5 ]
  %12 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 16, ptr %13, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib15metadata_handleE, i64 16), ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %14, align 8, !tbaa !79
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %16, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %17, align 8, !tbaa !16
  store i8 0, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %19, ptr %18, align 8, !tbaa !12
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %20, align 8, !tbaa !16
  store i8 0, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %22, ptr %21, align 8, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i64 0, ptr %23, align 8, !tbaa !16
  store i8 0, ptr %22, align 8, !tbaa !19
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i8 0, ptr %24, align 8, !tbaa !81
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 121
  store i8 0, ptr %25, align 1, !tbaa !82
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 122
  store i8 0, ptr %26, align 2, !tbaa !83
  %27 = icmp eq ptr %11, null
  br i1 %27, label %229, label %28

28:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %29, i8 noundef zeroext 2)
          to label %30 unwind label %51

30:                                               ; preds = %28
  %31 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %32 unwind label %53

32:                                               ; preds = %30
  %33 = and i64 %31, 255
  %34 = icmp eq i64 %33, 2
  %35 = zext i1 %34 to i8
  store i8 %35, ptr %24, align 8, !tbaa !81
  %36 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %37 unwind label %53

37:                                               ; preds = %32
  %38 = and i64 %36, 255
  %39 = icmp eq i64 %38, 1
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %25, align 1, !tbaa !82
  %41 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %42 unwind label %55

42:                                               ; preds = %37
  %43 = and i64 %41, 549755813888
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %26, align 2, !tbaa !83
  %46 = load i8, ptr %25, align 1, !tbaa !82, !range !46, !noundef !47
  %47 = trunc nuw i8 %46 to i1
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = invoke noundef i64 @_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %50 unwind label %53

50:                                               ; preds = %48
  store i64 %49, ptr %14, align 8, !tbaa !79
  br label %57

51:                                               ; preds = %28
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %225

53:                                               ; preds = %32, %30, %48
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %223

55:                                               ; preds = %37
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %223

57:                                               ; preds = %50, %42
  %58 = invoke i64 @_ZNSt10filesystem15last_write_timeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %59 unwind label %220

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %60 = lshr i64 %58, 63
  %61 = call i64 @llvm.abs.i64(i64 %58, i1 false)
  %62 = icmp ult i64 %61, 10
  br i1 %62, label %81, label %63

63:                                               ; preds = %59, %77
  %64 = phi i64 [ %78, %77 ], [ %61, %59 ]
  %65 = phi i32 [ %79, %77 ], [ 1, %59 ]
  %66 = icmp ult i64 %64, 100
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = add i32 %65, 1
  br label %81

69:                                               ; preds = %63
  %70 = icmp ult i64 %64, 1000
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = add i32 %65, 2
  br label %81

73:                                               ; preds = %69
  %74 = icmp ult i64 %64, 10000
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = add i32 %65, 3
  br label %81

77:                                               ; preds = %73
  %78 = udiv i64 %64, 10000
  %79 = add i32 %65, 4
  %80 = icmp ult i64 %64, 100000
  br i1 %80, label %81, label %63, !llvm.loop !84

81:                                               ; preds = %77, %75, %71, %67, %59
  %82 = phi i32 [ %76, %75 ], [ %68, %67 ], [ %72, %71 ], [ 1, %59 ], [ %79, %77 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %83, ptr %3, align 8, !tbaa !12, !alias.scope !86
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %84, align 8, !tbaa !16, !alias.scope !86
  store i8 0, ptr %83, align 8, !tbaa !19, !alias.scope !86
  %85 = trunc nuw nsw i64 %60 to i32
  %86 = add i32 %82, %85
  %87 = zext i32 %86 to i64
  %88 = zext i32 %82 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringExEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %87, i64 %90, i64 %61)
          to label %98 unwind label %91

91:                                               ; preds = %81
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !86
  %94 = icmp eq ptr %93, %83
  br i1 %94, label %222, label %95

95:                                               ; preds = %91
  %96 = load i64, ptr %83, align 8, !tbaa !19, !alias.scope !86
  %97 = add i64 %96, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %97) #27
  br label %222

98:                                               ; preds = %81
  %99 = load ptr, ptr %15, align 8, !tbaa !20
  %100 = icmp eq ptr %99, %16
  %101 = load ptr, ptr %3, align 8, !tbaa !20
  %102 = icmp eq ptr %101, %83
  br i1 %100, label %103, label %104

103:                                              ; preds = %98
  br i1 %102, label %105, label %119

104:                                              ; preds = %98
  br i1 %102, label %105, label %117

105:                                              ; preds = %104, %103
  %106 = load i64, ptr %84, align 8, !tbaa !16
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  switch i64 %106, label %110 [
    i64 0, label %111
    i64 1, label %108
  ]

108:                                              ; preds = %105
  %109 = load i8, ptr %101, align 1, !tbaa !19
  store i8 %109, ptr %99, align 1, !tbaa !19
  br label %111

110:                                              ; preds = %105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %99, ptr align 1 %101, i64 %106, i1 false)
  br label %111

111:                                              ; preds = %110, %108, %105
  %112 = load i64, ptr %84, align 8, !tbaa !16
  %113 = icmp ult i64 %112, 9223372036854775807
  call void @llvm.assume(i1 %113)
  store i64 %112, ptr %17, align 8, !tbaa !16
  %114 = load ptr, ptr %15, align 8, !tbaa !20
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 %112
  store i8 0, ptr %115, align 1, !tbaa !19
  %116 = load ptr, ptr %3, align 8, !tbaa !20
  br label %128

117:                                              ; preds = %104
  %118 = load i64, ptr %16, align 8, !tbaa !19
  br label %119

119:                                              ; preds = %117, %103
  %120 = phi ptr [ %99, %117 ], [ null, %103 ]
  %121 = phi i64 [ %118, %117 ], [ undef, %103 ]
  store ptr %101, ptr %15, align 8, !tbaa !20
  %122 = load i64, ptr %84, align 8, !tbaa !16
  %123 = icmp ult i64 %122, 9223372036854775807
  call void @llvm.assume(i1 %123)
  store i64 %122, ptr %17, align 8, !tbaa !16
  %124 = load i64, ptr %83, align 8, !tbaa !19
  store i64 %124, ptr %16, align 8, !tbaa !19
  %125 = icmp eq ptr %120, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store ptr %120, ptr %3, align 8, !tbaa !20
  store i64 %121, ptr %83, align 8, !tbaa !19
  br label %128

127:                                              ; preds = %119
  store ptr %83, ptr %3, align 8, !tbaa !20
  br label %128

128:                                              ; preds = %111, %126, %127
  %129 = phi ptr [ %120, %126 ], [ %83, %127 ], [ %116, %111 ]
  store i64 0, ptr %84, align 8, !tbaa !16
  store i8 0, ptr %129, align 1, !tbaa !19
  %130 = load ptr, ptr %3, align 8, !tbaa !20
  %131 = icmp eq ptr %130, %83
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i64, ptr %83, align 8, !tbaa !19
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %134) #27
  br label %135

135:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %136 = load i64, ptr %17, align 8, !tbaa !16
  %137 = icmp ult i64 %136, 9223372036854775807
  call void @llvm.assume(i1 %137)
  %138 = load ptr, ptr %18, align 8, !tbaa !20
  %139 = icmp eq ptr %138, %19
  %140 = load i64, ptr %19, align 8
  %141 = select i1 %139, i64 15, i64 %140
  %142 = icmp samesign ugt i64 %141, 14
  call void @llvm.assume(i1 %142)
  %143 = icmp ult i64 %141, 9223372036854775807
  call void @llvm.assume(i1 %143)
  %144 = icmp samesign ugt i64 %136, %141
  br i1 %144, label %145, label %157

145:                                              ; preds = %135
  %146 = shl nuw i64 %141, 1
  %147 = icmp ult i64 %136, %146
  %148 = call i64 @llvm.umin.i64(i64 %146, i64 9223372036854775806)
  %149 = select i1 %147, i64 %148, i64 %136
  %150 = add nuw nsw i64 %149, 1
  %151 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %150) #26
          to label %152 unwind label %220

152:                                              ; preds = %145
  br i1 %139, label %155, label %153

153:                                              ; preds = %152
  %154 = add i64 %140, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %154) #27
  br label %155

155:                                              ; preds = %152, %153
  store ptr %151, ptr %18, align 8, !tbaa !20
  store i64 %149, ptr %19, align 8, !tbaa !19
  %156 = load ptr, ptr %15, align 8, !tbaa !20
  br label %165

157:                                              ; preds = %135
  %158 = icmp eq i64 %136, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  store i64 0, ptr %20, align 8, !tbaa !16
  store i8 0, ptr %138, align 1, !tbaa !19
  br label %171

160:                                              ; preds = %157
  %161 = load ptr, ptr %15, align 8, !tbaa !20
  %162 = icmp eq i64 %136, 1
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i8, ptr %161, align 1, !tbaa !19
  store i8 %164, ptr %138, align 1, !tbaa !19
  br label %168

165:                                              ; preds = %160, %155
  %166 = phi ptr [ %156, %155 ], [ %161, %160 ]
  %167 = phi ptr [ %151, %155 ], [ %138, %160 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %167, ptr align 1 %166, i64 %136, i1 false)
  br label %168

168:                                              ; preds = %165, %163
  store i64 %136, ptr %20, align 8, !tbaa !16
  %169 = load ptr, ptr %18, align 8, !tbaa !20
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 %136
  store i8 0, ptr %170, align 1, !tbaa !19
  br label %171

171:                                              ; preds = %168, %159
  %172 = load i64, ptr %17, align 8, !tbaa !16
  %173 = icmp ult i64 %172, 9223372036854775807
  call void @llvm.assume(i1 %173)
  %174 = load ptr, ptr %21, align 8, !tbaa !20
  %175 = icmp eq ptr %174, %22
  %176 = load i64, ptr %22, align 8
  %177 = select i1 %175, i64 15, i64 %176
  %178 = icmp samesign ugt i64 %177, 14
  call void @llvm.assume(i1 %178)
  %179 = icmp ult i64 %177, 9223372036854775807
  call void @llvm.assume(i1 %179)
  %180 = icmp samesign ugt i64 %172, %177
  br i1 %180, label %181, label %193

181:                                              ; preds = %171
  %182 = shl nuw i64 %177, 1
  %183 = icmp ult i64 %172, %182
  %184 = call i64 @llvm.umin.i64(i64 %182, i64 9223372036854775806)
  %185 = select i1 %183, i64 %184, i64 %172
  %186 = add nuw nsw i64 %185, 1
  %187 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %186) #26
          to label %188 unwind label %220

188:                                              ; preds = %181
  br i1 %175, label %191, label %189

189:                                              ; preds = %188
  %190 = add i64 %176, 1
  call void @_ZdlPvm(ptr noundef %174, i64 noundef %190) #27
  br label %191

191:                                              ; preds = %188, %189
  store ptr %187, ptr %21, align 8, !tbaa !20
  store i64 %185, ptr %22, align 8, !tbaa !19
  %192 = load ptr, ptr %15, align 8, !tbaa !20
  br label %201

193:                                              ; preds = %171
  %194 = icmp eq i64 %172, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %193
  store i64 0, ptr %23, align 8, !tbaa !16
  store i8 0, ptr %174, align 1, !tbaa !19
  br label %207

196:                                              ; preds = %193
  %197 = load ptr, ptr %15, align 8, !tbaa !20
  %198 = icmp eq i64 %172, 1
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i8, ptr %197, align 1, !tbaa !19
  store i8 %200, ptr %174, align 1, !tbaa !19
  br label %204

201:                                              ; preds = %196, %191
  %202 = phi ptr [ %192, %191 ], [ %197, %196 ]
  %203 = phi ptr [ %187, %191 ], [ %174, %196 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %203, ptr align 1 %202, i64 %172, i1 false)
  br label %204

204:                                              ; preds = %201, %199
  store i64 %172, ptr %23, align 8, !tbaa !16
  %205 = load ptr, ptr %21, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 %172
  store i8 0, ptr %206, align 1, !tbaa !19
  br label %207

207:                                              ; preds = %204, %195
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %209 = load ptr, ptr %208, align 8, !tbaa !35
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %208, ptr noundef nonnull %209) #17
  br label %212

212:                                              ; preds = %211, %207
  store ptr null, ptr %208, align 8, !tbaa !35
  %213 = load ptr, ptr %2, align 8, !tbaa !20
  %214 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %215 = icmp eq ptr %213, %214
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load i64, ptr %214, align 8, !tbaa !19
  %218 = add i64 %217, 1
  call void @_ZdlPvm(ptr noundef %213, i64 noundef %218) #27
  br label %219

219:                                              ; preds = %212, %216
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %229

220:                                              ; preds = %181, %145, %57
  %221 = landingpad { ptr, i32 }
          catch ptr null
  br label %223

222:                                              ; preds = %91, %95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %223

223:                                              ; preds = %220, %222, %55, %53
  %224 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ], [ %221, %220 ], [ %92, %222 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  br label %225

225:                                              ; preds = %223, %51
  %226 = phi { ptr, i32 } [ %224, %223 ], [ %52, %51 ]
  %227 = extractvalue { ptr, i32 } %226, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %228 = call ptr @__cxa_begin_catch(ptr %227) #17
  call void @__cxa_end_catch()
  br label %229

229:                                              ; preds = %219, %225, %10
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN31__apollo_inline_inline_2221_5_721sys__native_meta_sizeEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !79
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_meta_modifiedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  store ptr %18, ptr %2, align 8, !tbaa !20
  store i64 %13, ptr %10, align 8, !tbaa !19
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %24, ptr %10, align 8, !tbaa !19
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !16
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16
  store i8 0, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !48

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !12
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !20
  %58 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %58, ptr %48, align 8, !tbaa !19
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !16
  store ptr %50, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %50, align 8, !tbaa !19
  %66 = load ptr, ptr %41, align 8, !tbaa !49
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !49
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !56, !noalias !91
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !60, !noalias !91
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !91
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load ptr, ptr %2, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i64, ptr %87, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #27
  br label %92

92:                                               ; preds = %82, %89
  ret ptr %85

93:                                               ; preds = %68, %36
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %2, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_meta_accessedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  store ptr %18, ptr %2, align 8, !tbaa !20
  store i64 %13, ptr %10, align 8, !tbaa !19
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %24, ptr %10, align 8, !tbaa !19
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !16
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16
  store i8 0, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !48

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !12
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !20
  %58 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %58, ptr %48, align 8, !tbaa !19
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !16
  store ptr %50, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %50, align 8, !tbaa !19
  %66 = load ptr, ptr %41, align 8, !tbaa !49
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !49
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !56, !noalias !94
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !60, !noalias !94
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !94
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load ptr, ptr %2, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i64, ptr %87, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #27
  br label %92

92:                                               ; preds = %82, %89
  ret ptr %85

93:                                               ; preds = %68, %36
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %2, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_724sys__native_meta_createdEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !12
  %11 = load ptr, ptr %9, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  store ptr %18, ptr %2, align 8, !tbaa !20
  store i64 %13, ptr %10, align 8, !tbaa !19
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !19
  store i8 %24, ptr %10, align 8, !tbaa !19
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !16
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !16
  store i8 0, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !48

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %93

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !12
  %49 = load ptr, ptr %2, align 8, !tbaa !20
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !20
  %58 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %58, ptr %48, align 8, !tbaa !19
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !16
  store ptr %50, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !16
  store i8 0, ptr %50, align 8, !tbaa !19
  %66 = load ptr, ptr %41, align 8, !tbaa !49
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !49
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %93

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !56, !noalias !97
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !60, !noalias !97
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !61, !noalias !97
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !20
  %86 = load ptr, ptr %2, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i64, ptr %87, align 8, !tbaa !19
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #27
  br label %92

92:                                               ; preds = %82, %89
  ret ptr %85

93:                                               ; preds = %68, %36
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %2, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %93, %98
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_723sys__native_meta_is_dirEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i8, ptr %8, align 8, !tbaa !81, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_meta_is_fileEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %9 = load i8, ptr %8, align 1, !tbaa !82, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_perm_readonlyEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %9 = load i8, ptr %8, align 2, !tbaa !83, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_fs_create_dirEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib13fs_create_dirESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib13fs_create_dirESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %7 unwind label %45

7:                                                ; preds = %2
  %8 = invoke noundef zeroext i1 @_ZNSt10filesystem16create_directoryERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %9 unwind label %47

9:                                                ; preds = %7
  br i1 %8, label %31, label %10

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %11 unwind label %49

11:                                               ; preds = %10
  %12 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %13 unwind label %51

13:                                               ; preds = %11
  %14 = and i64 %12, 255
  %15 = icmp ne i64 %14, 0
  %16 = icmp ne i64 %14, 255
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %22, %13
  store ptr null, ptr %19, align 8, !tbaa !35
  %24 = load ptr, ptr %5, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %25, align 8, !tbaa !19
  %29 = add i64 %28, 1
  call void @_ZdlPvm(ptr noundef %24, i64 noundef %29) #27
  br label %30

30:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %31

31:                                               ; preds = %9, %30
  %32 = phi i32 [ %18, %30 ], [ 1, %9 ]
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %34) #17
  br label %37

37:                                               ; preds = %36, %31
  store ptr null, ptr %33, align 8, !tbaa !35
  %38 = load ptr, ptr %4, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8, !tbaa !19
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %38, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %61

45:                                               ; preds = %2
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

47:                                               ; preds = %7
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

49:                                               ; preds = %10
  %50 = landingpad { ptr, i32 }
          catch ptr null
  br label %53

51:                                               ; preds = %11
  %52 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %48, %47 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %46, %45 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %60 = call ptr @__cxa_begin_catch(ptr %59) #17
  call void @__cxa_end_catch()
  br label %61

61:                                               ; preds = %57, %44
  %62 = phi i32 [ %32, %44 ], [ 0, %57 ]
  ret i32 %62
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_729sys__native_fs_create_dir_allEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %7 unwind label %45

7:                                                ; preds = %2
  %8 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %9 unwind label %47

9:                                                ; preds = %7
  br i1 %8, label %31, label %10

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %11 unwind label %49

11:                                               ; preds = %10
  %12 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %13 unwind label %51

13:                                               ; preds = %11
  %14 = and i64 %12, 255
  %15 = icmp ne i64 %14, 0
  %16 = icmp ne i64 %14, 255
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %22, %13
  store ptr null, ptr %19, align 8, !tbaa !35
  %24 = load ptr, ptr %5, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %25, align 8, !tbaa !19
  %29 = add i64 %28, 1
  call void @_ZdlPvm(ptr noundef %24, i64 noundef %29) #27
  br label %30

30:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %31

31:                                               ; preds = %9, %30
  %32 = phi i32 [ %18, %30 ], [ 1, %9 ]
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %34) #17
  br label %37

37:                                               ; preds = %36, %31
  store ptr null, ptr %33, align 8, !tbaa !35
  %38 = load ptr, ptr %4, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8, !tbaa !19
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %38, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %61

45:                                               ; preds = %2
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

47:                                               ; preds = %7
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

49:                                               ; preds = %10
  %50 = landingpad { ptr, i32 }
          catch ptr null
  br label %53

51:                                               ; preds = %11
  %52 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %48, %47 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %46, %45 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %60 = call ptr @__cxa_begin_catch(ptr %59) #17
  call void @__cxa_end_catch()
  br label %61

61:                                               ; preds = %57, %44
  %62 = phi i32 [ %32, %44 ], [ 0, %57 ]
  ret i32 %62
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_fs_remove_fileEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %26

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %28

12:                                               ; preds = %10
  %13 = zext i1 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %3, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %34

26:                                               ; preds = %7
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %10
  %29 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %33 = call ptr @__cxa_begin_catch(ptr %32) #17
  call void @__cxa_end_catch()
  br label %34

34:                                               ; preds = %25, %30
  %35 = phi i32 [ %13, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %35
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_fs_remove_dirEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %26

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %28

12:                                               ; preds = %10
  %13 = zext i1 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %3, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %34

26:                                               ; preds = %7
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %10
  %29 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %33 = call ptr @__cxa_begin_catch(ptr %32) #17
  call void @__cxa_end_catch()
  br label %34

34:                                               ; preds = %25, %30
  %35 = phi i32 [ %13, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %35
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_729sys__native_fs_remove_dir_allEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %26

10:                                               ; preds = %7
  %11 = invoke noundef i64 @_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %28

12:                                               ; preds = %10
  %13 = trunc i64 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %3, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %34

26:                                               ; preds = %7
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %10
  %29 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %33 = call ptr @__cxa_begin_catch(ptr %32) #17
  call void @__cxa_end_catch()
  br label %34

34:                                               ; preds = %25, %30
  %35 = phi i32 [ %13, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %35
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_721sys__native_fs_renameEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib9fs_renameESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib9fs_renameESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %5, align 8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %38

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %40

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %42

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %8, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %29, %25
  store ptr null, ptr %26, align 8, !tbaa !35
  %31 = load ptr, ptr %7, align 8, !tbaa !20
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8, !tbaa !19
  %36 = add i64 %35, 1
  call void @_ZdlPvm(ptr noundef %31, i64 noundef %36) #27
  br label %37

37:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %50

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          catch ptr null
  br label %46

40:                                               ; preds = %11
  %41 = landingpad { ptr, i32 }
          catch ptr null
  br label %44

42:                                               ; preds = %12
  %43 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %39, %38 ]
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %49 = call ptr @__cxa_begin_catch(ptr %48) #17
  call void @__cxa_end_catch()
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i32 [ 1, %37 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_719sys__native_fs_copyEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib7fs_copyESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib7fs_copyESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %5, align 8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %39

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %41

12:                                               ; preds = %11
  %13 = invoke noundef zeroext i1 @_ZNSt10filesystem9copy_fileERKNS_7__cxx114pathES3_NS_12copy_optionsE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 2)
          to label %14 unwind label %43

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !35
  %20 = load ptr, ptr %8, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #27
  br label %26

26:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %28) #17
  br label %31

31:                                               ; preds = %30, %26
  store ptr null, ptr %27, align 8, !tbaa !35
  %32 = load ptr, ptr %7, align 8, !tbaa !20
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %33, align 8, !tbaa !19
  %37 = add i64 %36, 1
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #27
  br label %38

38:                                               ; preds = %31, %35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %51

39:                                               ; preds = %4
  %40 = landingpad { ptr, i32 }
          catch ptr null
  br label %47

41:                                               ; preds = %11
  %42 = landingpad { ptr, i32 }
          catch ptr null
  br label %45

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %40, %39 ]
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %50 = call ptr @__cxa_begin_catch(ptr %49) #17
  call void @__cxa_end_catch()
  br label %51

51:                                               ; preds = %47, %38
  %52 = phi i32 [ 1, %38 ], [ 0, %47 ]
  ret i32 %52
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_fs_read_dirEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib11fs_read_dirESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11fs_read_dirESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %9 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %10 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  store i64 %0, ptr %5, align 8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %15 unwind label %202

15:                                               ; preds = %4
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, i8 noundef zeroext 0, ptr noundef null)
          to label %16 unwind label %204

16:                                               ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %18) #17
  br label %21

21:                                               ; preds = %20, %16
  store ptr null, ptr %17, align 8, !tbaa !35
  %22 = load ptr, ptr %8, align 8, !tbaa !20
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8, !tbaa !19
  %27 = add i64 %26, 1
  call void @_ZdlPvm(ptr noundef %22, i64 noundef %27) #27
  br label %28

28:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %29 = load ptr, ptr %7, align 8, !tbaa !100
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store ptr %29, ptr %9, align 8, !tbaa !100, !alias.scope !106
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %34, align 8, !tbaa !105, !alias.scope !106
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  br label %59

35:                                               ; preds = %28
  %36 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %37 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %36, align 4, !tbaa !5
  store ptr %29, ptr %9, align 8, !tbaa !100, !alias.scope !109
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %31, ptr %42, align 8, !tbaa !105, !alias.scope !109
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  br label %48

43:                                               ; preds = %35
  %44 = atomicrmw volatile add ptr %36, i32 1 acq_rel, align 4
  %45 = load ptr, ptr %30, align 8, !tbaa !105
  store ptr %29, ptr %9, align 8, !tbaa !100, !alias.scope !109
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %31, ptr %46, align 8, !tbaa !105, !alias.scope !109
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %47 = icmp eq ptr %45, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %39, %43
  %49 = phi ptr [ %42, %39 ], [ %46, %43 ]
  %50 = phi ptr [ %31, %39 ], [ %45, %43 ]
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %52 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %51, align 4, !tbaa !5
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %51, align 4, !tbaa !5
  br label %61

57:                                               ; preds = %48
  %58 = atomicrmw volatile add ptr %51, i32 1 acq_rel, align 4
  br label %61

59:                                               ; preds = %33, %43
  %60 = phi ptr [ %46, %43 ], [ %34, %33 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !111
  br label %84

61:                                               ; preds = %57, %54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !114
  %62 = load atomic i64, ptr %51 acquire, align 8
  %63 = icmp eq i64 %62, 4294967297
  %64 = trunc i64 %62 to i32
  br i1 %63, label %65, label %73

65:                                               ; preds = %61
  store i32 0, ptr %51, align 8, !tbaa !116
  %66 = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 0, ptr %66, align 4, !tbaa !118
  %67 = load ptr, ptr %50, align 8, !tbaa !27
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %69 = load ptr, ptr %68, align 8
  call void %69(ptr noundef nonnull align 8 dereferenceable(16) %50) #17
  %70 = load ptr, ptr %50, align 8, !tbaa !27
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 24
  %72 = load ptr, ptr %71, align 8
  call void %72(ptr noundef nonnull align 8 dereferenceable(16) %50) #17
  br label %84

73:                                               ; preds = %61
  %74 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = add nsw i32 %64, -1
  store i32 %77, ptr %51, align 4, !tbaa !5
  br label %80

78:                                               ; preds = %73
  %79 = atomicrmw volatile add ptr %51, i32 -1 acq_rel, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %64, %76 ], [ %79, %78 ]
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84, !prof !119

83:                                               ; preds = %80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %50) #17
  br label %84

84:                                               ; preds = %59, %65, %80, %83
  %85 = phi ptr [ %60, %59 ], [ %49, %83 ], [ %49, %65 ], [ %49, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %87 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %88 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %89 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %90 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %91 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %92 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %93 = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %94

94:                                               ; preds = %268, %84
  %95 = load ptr, ptr %86, align 8, !tbaa !105
  %96 = load ptr, ptr %85, align 8, !tbaa !105
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %98, label %208

98:                                               ; preds = %94
  %99 = icmp eq ptr %95, null
  br i1 %99, label %124, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds nuw i8, ptr %95, i64 8
  %102 = load atomic i64, ptr %101 acquire, align 8
  %103 = icmp eq i64 %102, 4294967297
  %104 = trunc i64 %102 to i32
  br i1 %103, label %105, label %113

105:                                              ; preds = %100
  store i32 0, ptr %101, align 8, !tbaa !116
  %106 = getelementptr inbounds nuw i8, ptr %95, i64 12
  store i32 0, ptr %106, align 4, !tbaa !118
  %107 = load ptr, ptr %95, align 8, !tbaa !27
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 16
  %109 = load ptr, ptr %108, align 8
  call void %109(ptr noundef nonnull align 8 dereferenceable(16) %95) #17
  %110 = load ptr, ptr %95, align 8, !tbaa !27
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 24
  %112 = load ptr, ptr %111, align 8
  call void %112(ptr noundef nonnull align 8 dereferenceable(16) %95) #17
  br label %124

113:                                              ; preds = %100
  %114 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = add nsw i32 %104, -1
  store i32 %117, ptr %101, align 4, !tbaa !5
  br label %120

118:                                              ; preds = %113
  %119 = atomicrmw volatile add ptr %101, i32 -1 acq_rel, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %104, %116 ], [ %119, %118 ]
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %124, !prof !119

123:                                              ; preds = %120
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %95) #17
  br label %124

124:                                              ; preds = %98, %105, %120, %123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %125 = load ptr, ptr %85, align 8, !tbaa !105
  %126 = icmp eq ptr %125, null
  br i1 %126, label %151, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %129 = load atomic i64, ptr %128 acquire, align 8
  %130 = icmp eq i64 %129, 4294967297
  %131 = trunc i64 %129 to i32
  br i1 %130, label %132, label %140

132:                                              ; preds = %127
  store i32 0, ptr %128, align 8, !tbaa !116
  %133 = getelementptr inbounds nuw i8, ptr %125, i64 12
  store i32 0, ptr %133, align 4, !tbaa !118
  %134 = load ptr, ptr %125, align 8, !tbaa !27
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 16
  %136 = load ptr, ptr %135, align 8
  call void %136(ptr noundef nonnull align 8 dereferenceable(16) %125) #17
  %137 = load ptr, ptr %125, align 8, !tbaa !27
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 24
  %139 = load ptr, ptr %138, align 8
  call void %139(ptr noundef nonnull align 8 dereferenceable(16) %125) #17
  br label %151

140:                                              ; preds = %127
  %141 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = add nsw i32 %131, -1
  store i32 %144, ptr %128, align 4, !tbaa !5
  br label %147

145:                                              ; preds = %140
  %146 = atomicrmw volatile add ptr %128, i32 -1 acq_rel, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %131, %143 ], [ %146, %145 ]
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %151, !prof !119

150:                                              ; preds = %147
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %125) #17
  br label %151

151:                                              ; preds = %124, %132, %147, %150
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %152 = load ptr, ptr %30, align 8, !tbaa !105
  %153 = icmp eq ptr %152, null
  br i1 %153, label %178, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %156 = load atomic i64, ptr %155 acquire, align 8
  %157 = icmp eq i64 %156, 4294967297
  %158 = trunc i64 %156 to i32
  br i1 %157, label %159, label %167

159:                                              ; preds = %154
  store i32 0, ptr %155, align 8, !tbaa !116
  %160 = getelementptr inbounds nuw i8, ptr %152, i64 12
  store i32 0, ptr %160, align 4, !tbaa !118
  %161 = load ptr, ptr %152, align 8, !tbaa !27
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 16
  %163 = load ptr, ptr %162, align 8
  call void %163(ptr noundef nonnull align 8 dereferenceable(16) %152) #17
  %164 = load ptr, ptr %152, align 8, !tbaa !27
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 24
  %166 = load ptr, ptr %165, align 8
  call void %166(ptr noundef nonnull align 8 dereferenceable(16) %152) #17
  br label %178

167:                                              ; preds = %154
  %168 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = add nsw i32 %158, -1
  store i32 %171, ptr %155, align 4, !tbaa !5
  br label %174

172:                                              ; preds = %167
  %173 = atomicrmw volatile add ptr %155, i32 -1 acq_rel, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %158, %170 ], [ %173, %172 ]
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178, !prof !119

177:                                              ; preds = %174
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %152) #17
  br label %178

178:                                              ; preds = %151, %159, %174, %177
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %179 = load ptr, ptr %6, align 8, !tbaa !62
  %180 = load ptr, ptr %90, align 8, !tbaa !62
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %299, label %182

182:                                              ; preds = %178
  %183 = ptrtoint ptr %180 to i64
  %184 = ptrtoint ptr %179 to i64
  %185 = sub i64 %183, %184
  %186 = ashr exact i64 %185, 5
  %187 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %186, i1 true)
  %188 = shl nuw nsw i64 %187, 1
  %189 = xor i64 %188, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %179, ptr %180, i64 noundef %189)
          to label %190 unwind label %293

190:                                              ; preds = %182
  %191 = icmp sgt i64 %185, 512
  br i1 %191, label %192, label %201

192:                                              ; preds = %190
  %193 = getelementptr inbounds nuw i8, ptr %179, i64 512
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %179, ptr nonnull %193)
          to label %194 unwind label %293

194:                                              ; preds = %192
  %195 = icmp eq ptr %193, %180
  br i1 %195, label %299, label %196

196:                                              ; preds = %194, %198
  %197 = phi ptr [ %199, %198 ], [ %193, %194 ]
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %197)
          to label %198 unwind label %291

198:                                              ; preds = %196
  %199 = getelementptr inbounds nuw i8, ptr %197, i64 32
  %200 = icmp eq ptr %199, %180
  br i1 %200, label %299, label %196, !llvm.loop !120

201:                                              ; preds = %190
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %179, ptr %180)
          to label %299 unwind label %293

202:                                              ; preds = %4
  %203 = landingpad { ptr, i32 }
          catch ptr null
  br label %206

204:                                              ; preds = %15
  %205 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi { ptr, i32 } [ %205, %204 ], [ %203, %202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %295

208:                                              ; preds = %94
  %209 = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %209)
          to label %210 unwind label %270

210:                                              ; preds = %208
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %211 = load ptr, ptr %12, align 8, !tbaa !20, !noalias !127
  %212 = load i64, ptr %87, align 8, !tbaa !16, !noalias !127
  %213 = icmp ult i64 %212, 9223372036854775807
  call void @llvm.assume(i1 %213)
  store ptr %88, ptr %11, align 8, !tbaa !12, !alias.scope !127
  %214 = icmp eq ptr %211, null
  %215 = icmp ne i64 %212, 0
  %216 = and i1 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %218 unwind label %274

218:                                              ; preds = %217
  unreachable

219:                                              ; preds = %210
  %220 = icmp samesign ugt i64 %212, 15
  br i1 %220, label %221, label %225

221:                                              ; preds = %219
  %222 = add nuw nsw i64 %212, 1
  %223 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %222) #26
          to label %224 unwind label %272

224:                                              ; preds = %221
  store ptr %223, ptr %11, align 8, !tbaa !20, !alias.scope !127
  store i64 %212, ptr %88, align 8, !tbaa !19, !alias.scope !127
  br label %225

225:                                              ; preds = %224, %219
  %226 = phi ptr [ %223, %224 ], [ %88, %219 ]
  switch i64 %212, label %229 [
    i64 1, label %227
    i64 0, label %230
  ]

227:                                              ; preds = %225
  %228 = load i8, ptr %211, align 1, !tbaa !19
  store i8 %228, ptr %226, align 1, !tbaa !19
  br label %230

229:                                              ; preds = %225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %226, ptr align 1 %211, i64 %212, i1 false)
  br label %230

230:                                              ; preds = %229, %227, %225
  store i64 %212, ptr %89, align 8, !tbaa !16, !alias.scope !127
  %231 = getelementptr inbounds nuw i8, ptr %226, i64 %212
  store i8 0, ptr %231, align 1, !tbaa !19
  %232 = load ptr, ptr %90, align 8, !tbaa !128
  %233 = load ptr, ptr %91, align 8, !tbaa !130
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %251, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds nuw i8, ptr %232, i64 16
  store ptr %236, ptr %232, align 8, !tbaa !12
  %237 = load ptr, ptr %11, align 8, !tbaa !20
  %238 = icmp eq ptr %237, %88
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i64, ptr %89, align 8, !tbaa !16
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  %242 = add nuw nsw i64 %240, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %236, ptr noundef nonnull align 8 dereferenceable(1) %88, i64 %242, i1 false)
  br label %246

243:                                              ; preds = %235
  store ptr %237, ptr %232, align 8, !tbaa !20
  %244 = load i64, ptr %88, align 8, !tbaa !19
  store i64 %244, ptr %236, align 8, !tbaa !19
  %245 = load i64, ptr %89, align 8, !tbaa !16
  br label %246

246:                                              ; preds = %239, %243
  %247 = phi i64 [ %245, %243 ], [ %240, %239 ]
  %248 = icmp ult i64 %247, 9223372036854775807
  call void @llvm.assume(i1 %248)
  %249 = getelementptr inbounds nuw i8, ptr %232, i64 8
  store i64 %247, ptr %249, align 8, !tbaa !16
  store ptr %88, ptr %11, align 8, !tbaa !20
  store i64 0, ptr %89, align 8, !tbaa !16
  store i8 0, ptr %88, align 8, !tbaa !19
  %250 = getelementptr inbounds nuw i8, ptr %232, i64 32
  store ptr %250, ptr %90, align 8, !tbaa !128
  br label %258

251:                                              ; preds = %230
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %252 unwind label %276

252:                                              ; preds = %251
  %253 = load ptr, ptr %11, align 8, !tbaa !20
  %254 = icmp eq ptr %253, %88
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = load i64, ptr %88, align 8, !tbaa !19
  %257 = add i64 %256, 1
  call void @_ZdlPvm(ptr noundef %253, i64 noundef %257) #27
  br label %258

258:                                              ; preds = %252, %246, %255
  %259 = load ptr, ptr %92, align 8, !tbaa !35
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull %259) #17
  br label %262

262:                                              ; preds = %261, %258
  store ptr null, ptr %92, align 8, !tbaa !35
  %263 = load ptr, ptr %12, align 8, !tbaa !20
  %264 = icmp eq ptr %263, %93
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load i64, ptr %93, align 8, !tbaa !19
  %267 = add i64 %266, 1
  call void @_ZdlPvm(ptr noundef %263, i64 noundef %267) #27
  br label %268

268:                                              ; preds = %262, %265
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %269 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %94 unwind label %287

270:                                              ; preds = %208
  %271 = landingpad { ptr, i32 }
          catch ptr null
  br label %285

272:                                              ; preds = %221
  %273 = landingpad { ptr, i32 }
          catch ptr null
  br label %283

274:                                              ; preds = %217
  %275 = landingpad { ptr, i32 }
          catch ptr null
  br label %283

276:                                              ; preds = %251
  %277 = landingpad { ptr, i32 }
          catch ptr null
  %278 = load ptr, ptr %11, align 8, !tbaa !20
  %279 = icmp eq ptr %278, %88
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = load i64, ptr %88, align 8, !tbaa !19
  %282 = add i64 %281, 1
  call void @_ZdlPvm(ptr noundef %278, i64 noundef %282) #27
  br label %283

283:                                              ; preds = %276, %272, %274, %280
  %284 = phi { ptr, i32 } [ %277, %280 ], [ %275, %274 ], [ %273, %272 ], [ %277, %276 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #17
  br label %285

285:                                              ; preds = %283, %270
  %286 = phi { ptr, i32 } [ %284, %283 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %289

287:                                              ; preds = %268
  %288 = landingpad { ptr, i32 }
          catch ptr null
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi { ptr, i32 } [ %288, %287 ], [ %286, %285 ]
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %295

291:                                              ; preds = %196
  %292 = landingpad { ptr, i32 }
          catch ptr null
  br label %295

293:                                              ; preds = %182, %192, %201
  %294 = landingpad { ptr, i32 }
          catch ptr null
  br label %295

295:                                              ; preds = %291, %293, %206, %289
  %296 = phi { ptr, i32 } [ %207, %206 ], [ %290, %289 ], [ %292, %291 ], [ %294, %293 ]
  %297 = extractvalue { ptr, i32 } %296, 0
  %298 = call ptr @__cxa_begin_catch(ptr %297) #17
  invoke void @__cxa_end_catch()
          to label %299 unwind label %389

299:                                              ; preds = %198, %194, %178, %201, %295
  %300 = load ptr, ptr %6, align 8, !tbaa !62, !noalias !131
  %301 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %302 = load ptr, ptr %301, align 8, !tbaa !62, !noalias !131
  invoke void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr %300, ptr %302, i64 %2, ptr %3)
          to label %303 unwind label %389

303:                                              ; preds = %299
  %304 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %309, !prof !48

306:                                              ; preds = %303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %307 unwind label %391

307:                                              ; preds = %306
  %308 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %309

309:                                              ; preds = %307, %303
  %310 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8, !tbaa !49
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 64
  %314 = load ptr, ptr %313, align 8, !tbaa !55
  %315 = getelementptr inbounds i8, ptr %314, i64 -32
  %316 = icmp eq ptr %312, %315
  br i1 %316, label %338, label %317

317:                                              ; preds = %309
  %318 = getelementptr inbounds nuw i8, ptr %312, i64 16
  store ptr %318, ptr %312, align 8, !tbaa !12
  %319 = load ptr, ptr %13, align 8, !tbaa !20
  %320 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %321 = icmp eq ptr %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %324 = load i64, ptr %323, align 8, !tbaa !16
  %325 = icmp ult i64 %324, 16
  call void @llvm.assume(i1 %325)
  %326 = add nuw nsw i64 %324, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %318, ptr noundef nonnull align 8 dereferenceable(1) %320, i64 %326, i1 false)
  br label %331

327:                                              ; preds = %317
  store ptr %319, ptr %312, align 8, !tbaa !20
  %328 = load i64, ptr %320, align 8, !tbaa !19
  store i64 %328, ptr %318, align 8, !tbaa !19
  %329 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %330 = load i64, ptr %329, align 8, !tbaa !16
  br label %331

331:                                              ; preds = %327, %322
  %332 = phi i64 [ %330, %327 ], [ %324, %322 ]
  %333 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %334 = icmp ult i64 %332, 9223372036854775807
  call void @llvm.assume(i1 %334)
  %335 = getelementptr inbounds nuw i8, ptr %312, i64 8
  store i64 %332, ptr %335, align 8, !tbaa !16
  store ptr %320, ptr %13, align 8, !tbaa !20
  store i64 0, ptr %333, align 8, !tbaa !16
  store i8 0, ptr %320, align 8, !tbaa !19
  %336 = load ptr, ptr %311, align 8, !tbaa !49
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 32
  store ptr %337, ptr %311, align 8, !tbaa !49
  br label %341

338:                                              ; preds = %309
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %310, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %339 unwind label %391

339:                                              ; preds = %338
  %340 = load ptr, ptr %311, align 8, !tbaa !56, !noalias !134
  br label %341

341:                                              ; preds = %339, %331
  %342 = phi ptr [ %337, %331 ], [ %340, %339 ]
  %343 = getelementptr inbounds nuw i8, ptr %310, i64 56
  %344 = load ptr, ptr %343, align 8, !tbaa !60, !noalias !134
  %345 = icmp eq ptr %342, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = getelementptr inbounds nuw i8, ptr %310, i64 72
  %348 = load ptr, ptr %347, align 8, !tbaa !61, !noalias !134
  %349 = getelementptr inbounds i8, ptr %348, i64 -8
  %350 = load ptr, ptr %349, align 8, !tbaa !62
  %351 = getelementptr inbounds nuw i8, ptr %350, i64 512
  br label %352

352:                                              ; preds = %346, %341
  %353 = phi ptr [ %351, %346 ], [ %342, %341 ]
  %354 = getelementptr inbounds i8, ptr %353, i64 -32
  %355 = load ptr, ptr %354, align 8, !tbaa !20
  %356 = load ptr, ptr %13, align 8, !tbaa !20
  %357 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %358 = icmp eq ptr %356, %357
  br i1 %358, label %362, label %359

359:                                              ; preds = %352
  %360 = load i64, ptr %357, align 8, !tbaa !19
  %361 = add i64 %360, 1
  call void @_ZdlPvm(ptr noundef %356, i64 noundef %361) #27
  br label %362

362:                                              ; preds = %352, %359
  %363 = load ptr, ptr %6, align 8, !tbaa !137
  %364 = load ptr, ptr %301, align 8, !tbaa !128
  %365 = icmp eq ptr %363, %364
  br i1 %365, label %379, label %366

366:                                              ; preds = %362, %374
  %367 = phi ptr [ %375, %374 ], [ %363, %362 ]
  %368 = load ptr, ptr %367, align 8, !tbaa !20
  %369 = getelementptr inbounds nuw i8, ptr %367, i64 16
  %370 = icmp eq ptr %368, %369
  br i1 %370, label %374, label %371

371:                                              ; preds = %366
  %372 = load i64, ptr %369, align 8, !tbaa !19
  %373 = add i64 %372, 1
  call void @_ZdlPvm(ptr noundef %368, i64 noundef %373) #27
  br label %374

374:                                              ; preds = %366, %371
  %375 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %376 = icmp eq ptr %375, %364
  br i1 %376, label %377, label %366, !llvm.loop !138

377:                                              ; preds = %374
  %378 = load ptr, ptr %6, align 8, !tbaa !137
  br label %379

379:                                              ; preds = %377, %362
  %380 = phi ptr [ %378, %377 ], [ %363, %362 ]
  %381 = icmp eq ptr %380, null
  br i1 %381, label %388, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %384 = load ptr, ptr %383, align 8, !tbaa !130
  %385 = ptrtoint ptr %384 to i64
  %386 = ptrtoint ptr %380 to i64
  %387 = sub i64 %385, %386
  call void @_ZdlPvm(ptr noundef nonnull %380, i64 noundef %387) #27
  br label %388

388:                                              ; preds = %379, %382
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %355

389:                                              ; preds = %299, %295
  %390 = landingpad { ptr, i32 }
          cleanup
  br label %399

391:                                              ; preds = %338, %306
  %392 = landingpad { ptr, i32 }
          cleanup
  %393 = load ptr, ptr %13, align 8, !tbaa !20
  %394 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %395 = icmp eq ptr %393, %394
  br i1 %395, label %399, label %396

396:                                              ; preds = %391
  %397 = load i64, ptr %394, align 8, !tbaa !19
  %398 = add i64 %397, 1
  call void @_ZdlPvm(ptr noundef %393, i64 noundef %398) #27
  br label %399

399:                                              ; preds = %391, %396, %389
  %400 = phi { ptr, i32 } [ %390, %389 ], [ %392, %396 ], [ %392, %391 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %400
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_fs_hard_linkEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib12fs_hard_linkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12fs_hard_linkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %5, align 8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %38

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %40

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem16create_hard_linkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %42

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %8, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %29, %25
  store ptr null, ptr %26, align 8, !tbaa !35
  %31 = load ptr, ptr %7, align 8, !tbaa !20
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8, !tbaa !19
  %36 = add i64 %35, 1
  call void @_ZdlPvm(ptr noundef %31, i64 noundef %36) #27
  br label %37

37:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %50

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          catch ptr null
  br label %46

40:                                               ; preds = %11
  %41 = landingpad { ptr, i32 }
          catch ptr null
  br label %44

42:                                               ; preds = %12
  %43 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %39, %38 ]
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %49 = call ptr @__cxa_begin_catch(ptr %48) #17
  call void @__cxa_end_catch()
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i32 [ 1, %37 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2221_5_722sys__native_fs_symlinkEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib10fs_symlinkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib10fs_symlinkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %5, align 8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %38

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %40

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem14create_symlinkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %42

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !35
  %19 = load ptr, ptr %8, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %29, %25
  store ptr null, ptr %26, align 8, !tbaa !35
  %31 = load ptr, ptr %7, align 8, !tbaa !20
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8, !tbaa !19
  %36 = add i64 %35, 1
  call void @_ZdlPvm(ptr noundef %31, i64 noundef %36) #27
  br label %37

37:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %50

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          catch ptr null
  br label %46

40:                                               ; preds = %11
  %41 = landingpad { ptr, i32 }
          catch ptr null
  br label %44

42:                                               ; preds = %12
  %43 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %39, %38 ]
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %49 = call ptr @__cxa_begin_catch(ptr %48) #17
  call void @__cxa_end_catch()
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi i32 [ 1, %37 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_724sys__native_fs_read_linkEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib12fs_read_linkESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12fs_read_linkESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  store i64 %0, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %114

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem12read_symlinkERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %116

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %12 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !145
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !16, !noalias !145
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !12, !alias.scope !145
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %118

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %118

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !145
  store i64 %14, ptr %16, align 8, !tbaa !19, !alias.scope !145
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %31, ptr %29, align 1, !tbaa !19
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !16, !alias.scope !145
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !19
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !48

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %120

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !12
  %51 = load ptr, ptr %4, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !20
  %58 = load i64, ptr %16, align 8, !tbaa !19
  store i64 %58, ptr %50, align 8, !tbaa !19
  %59 = load i64, ptr %34, align 8, !tbaa !16
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !16
  store ptr %16, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %34, align 8, !tbaa !16
  store i8 0, ptr %16, align 8, !tbaa !19
  %64 = load ptr, ptr %43, align 8, !tbaa !49
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !49
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %120

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !56, !noalias !146
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !60, !noalias !146
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !61, !noalias !146
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  %84 = load ptr, ptr %4, align 8, !tbaa !20
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i64, ptr %16, align 8, !tbaa !19
  %88 = add i64 %87, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %88) #27
  br label %89

89:                                               ; preds = %80, %86
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull %91) #17
  br label %94

94:                                               ; preds = %93, %89
  store ptr null, ptr %90, align 8, !tbaa !35
  %95 = load ptr, ptr %5, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !35
  %107 = load ptr, ptr %6, align 8, !tbaa !20
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %108, align 8, !tbaa !19
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %112) #27
  br label %113

113:                                              ; preds = %106, %110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %157

114:                                              ; preds = %2
  %115 = landingpad { ptr, i32 }
          catch ptr null
  br label %131

116:                                              ; preds = %10
  %117 = landingpad { ptr, i32 }
          catch ptr null
  br label %129

118:                                              ; preds = %24, %20
  %119 = landingpad { ptr, i32 }
          catch ptr null
  br label %127

120:                                              ; preds = %66, %38
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = load ptr, ptr %4, align 8, !tbaa !20
  %123 = icmp eq ptr %122, %16
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i64, ptr %16, align 8, !tbaa !19
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %126) #27
  br label %127

127:                                              ; preds = %120, %124, %118
  %128 = phi { ptr, i32 } [ %119, %118 ], [ %121, %124 ], [ %121, %120 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %129

129:                                              ; preds = %127, %116
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %117, %116 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %131

131:                                              ; preds = %129, %114
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %115, %114 ]
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %134 = call ptr @__cxa_begin_catch(ptr %133) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %135 unwind label %145

135:                                              ; preds = %131
  %136 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %137 unwind label %147

137:                                              ; preds = %135
  %138 = load ptr, ptr %7, align 8, !tbaa !20
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %139, align 8, !tbaa !19
  %143 = add i64 %142, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %143) #27
  br label %144

144:                                              ; preds = %137, %141
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %157

145:                                              ; preds = %131
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %155

147:                                              ; preds = %135
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = load ptr, ptr %7, align 8, !tbaa !20
  %150 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i64, ptr %150, align 8, !tbaa !19
  %154 = add i64 %153, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %154) #27
  br label %155

155:                                              ; preds = %147, %152, %145
  %156 = phi { ptr, i32 } [ %146, %145 ], [ %148, %152 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %159 unwind label %160

157:                                              ; preds = %144, %113
  %158 = phi ptr [ %83, %113 ], [ %136, %144 ]
  ret ptr %158

159:                                              ; preds = %155
  resume { ptr, i32 } %156

160:                                              ; preds = %155
  %161 = landingpad { ptr, i32 }
          catch ptr null
  %162 = extractvalue { ptr, i32 } %161, 0
  call void @__clang_call_terminate(ptr %162) #28
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_721sys__native_fs_existsEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %30

10:                                               ; preds = %7
  %11 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = and i64 %11, 255
  %14 = icmp ne i64 %13, 0
  %15 = icmp ne i64 %13, 255
  %16 = and i1 %14, %15
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %19) #17
  br label %22

22:                                               ; preds = %21, %12
  store ptr null, ptr %18, align 8, !tbaa !35
  %23 = load ptr, ptr %3, align 8, !tbaa !20
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, ptr %24, align 8, !tbaa !19
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %28) #27
  br label %29

29:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %38

30:                                               ; preds = %7
  %31 = landingpad { ptr, i32 }
          catch ptr null
  br label %34

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %37 = call ptr @__cxa_begin_catch(ptr %36) #17
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %17, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %39
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_path_parentEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib11path_parentESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11path_parentESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %122

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !16, !noalias !149
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !12, !alias.scope !149
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !16, !alias.scope !149
  store i8 0, ptr %13, align 8, !tbaa !19, !alias.scope !149
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %16 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !158
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !12, !alias.scope !158
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %124

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %124

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !158
  store i64 %10, ptr %18, align 8, !tbaa !19, !alias.scope !158
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !19
  store i8 %31, ptr %18, align 8, !tbaa !19, !alias.scope !149
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !16, !alias.scope !158
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !19
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !48

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %126

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %63 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %63, ptr %53, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %68, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %71 = load ptr, ptr %46, align 8, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !49
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %126

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !56, !noalias !159
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !60, !noalias !159
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !61, !noalias !159
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load ptr, ptr %4, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %92, align 8, !tbaa !19
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #27
  br label %97

97:                                               ; preds = %87, %94
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %99) #17
  br label %102

102:                                              ; preds = %101, %97
  store ptr null, ptr %98, align 8, !tbaa !35
  %103 = load ptr, ptr %5, align 8, !tbaa !20
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8, !tbaa !19
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %103, i64 noundef %108) #27
  br label %109

109:                                              ; preds = %102, %106
  %110 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %111) #17
  br label %114

114:                                              ; preds = %113, %109
  store ptr null, ptr %110, align 8, !tbaa !35
  %115 = load ptr, ptr %6, align 8, !tbaa !20
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %116, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %120) #27
  br label %121

121:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %90

122:                                              ; preds = %2
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %136

124:                                              ; preds = %24, %20
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %134

126:                                              ; preds = %73, %41
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %4, align 8, !tbaa !20
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !19
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #27
  br label %134

134:                                              ; preds = %126, %131, %124
  %135 = phi { ptr, i32 } [ %125, %124 ], [ %127, %131 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %123, %122 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_726sys__native_path_file_nameEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_file_nameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_nameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %122

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !16, !noalias !162
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !12, !alias.scope !162
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !16, !alias.scope !162
  store i8 0, ptr %13, align 8, !tbaa !19, !alias.scope !162
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %16 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !171
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !12, !alias.scope !171
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %124

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %124

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !171
  store i64 %10, ptr %18, align 8, !tbaa !19, !alias.scope !171
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !19
  store i8 %31, ptr %18, align 8, !tbaa !19, !alias.scope !162
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !16, !alias.scope !171
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !19
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !48

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %126

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %63 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %63, ptr %53, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %68, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %71 = load ptr, ptr %46, align 8, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !49
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %126

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !56, !noalias !172
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !60, !noalias !172
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !61, !noalias !172
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load ptr, ptr %4, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %92, align 8, !tbaa !19
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #27
  br label %97

97:                                               ; preds = %87, %94
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %99) #17
  br label %102

102:                                              ; preds = %101, %97
  store ptr null, ptr %98, align 8, !tbaa !35
  %103 = load ptr, ptr %5, align 8, !tbaa !20
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8, !tbaa !19
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %103, i64 noundef %108) #27
  br label %109

109:                                              ; preds = %102, %106
  %110 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %111) #17
  br label %114

114:                                              ; preds = %113, %109
  store ptr null, ptr %110, align 8, !tbaa !35
  %115 = load ptr, ptr %6, align 8, !tbaa !20
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %116, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %120) #27
  br label %121

121:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %90

122:                                              ; preds = %2
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %136

124:                                              ; preds = %24, %20
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %134

126:                                              ; preds = %73, %41
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %4, align 8, !tbaa !20
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !19
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #27
  br label %134

134:                                              ; preds = %126, %131, %124
  %135 = phi { ptr, i32 } [ %125, %124 ], [ %127, %131 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %123, %122 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_726sys__native_path_extensionEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_extensionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_extensionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path9extensionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %122

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !16, !noalias !175
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !12, !alias.scope !175
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !16, !alias.scope !175
  store i8 0, ptr %13, align 8, !tbaa !19, !alias.scope !175
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %16 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !184
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !12, !alias.scope !184
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %124

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %124

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !184
  store i64 %10, ptr %18, align 8, !tbaa !19, !alias.scope !184
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !19
  store i8 %31, ptr %18, align 8, !tbaa !19, !alias.scope !175
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !16, !alias.scope !184
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !19
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !48

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %126

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %63 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %63, ptr %53, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %68, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %71 = load ptr, ptr %46, align 8, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !49
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %126

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !56, !noalias !185
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !60, !noalias !185
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !61, !noalias !185
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load ptr, ptr %4, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %92, align 8, !tbaa !19
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #27
  br label %97

97:                                               ; preds = %87, %94
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %99) #17
  br label %102

102:                                              ; preds = %101, %97
  store ptr null, ptr %98, align 8, !tbaa !35
  %103 = load ptr, ptr %5, align 8, !tbaa !20
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8, !tbaa !19
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %103, i64 noundef %108) #27
  br label %109

109:                                              ; preds = %102, %106
  %110 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %111) #17
  br label %114

114:                                              ; preds = %113, %109
  store ptr null, ptr %110, align 8, !tbaa !35
  %115 = load ptr, ptr %6, align 8, !tbaa !20
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %116, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %120) #27
  br label %121

121:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %90

122:                                              ; preds = %2
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %136

124:                                              ; preds = %24, %20
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %134

126:                                              ; preds = %73, %41
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %4, align 8, !tbaa !20
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !19
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #27
  br label %134

134:                                              ; preds = %126, %131, %124
  %135 = phi { ptr, i32 } [ %125, %124 ], [ %127, %131 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %123, %122 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_726sys__native_path_file_stemEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_file_stemESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_stemESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %122

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !16, !noalias !188
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !12, !alias.scope !188
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !16, !alias.scope !188
  store i8 0, ptr %13, align 8, !tbaa !19, !alias.scope !188
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %16 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !197
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !12, !alias.scope !197
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %124

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %124

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !197
  store i64 %10, ptr %18, align 8, !tbaa !19, !alias.scope !197
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !19
  store i8 %31, ptr %18, align 8, !tbaa !19, !alias.scope !188
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !16, !alias.scope !197
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !19
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !48

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %126

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !12
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !20
  %63 = load i64, ptr %55, align 8, !tbaa !19
  store i64 %63, ptr %53, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !16
  store ptr %55, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %68, align 8, !tbaa !16
  store i8 0, ptr %55, align 8, !tbaa !19
  %71 = load ptr, ptr %46, align 8, !tbaa !49
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !49
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %126

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !56, !noalias !198
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !60, !noalias !198
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !61, !noalias !198
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load ptr, ptr %4, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i64, ptr %92, align 8, !tbaa !19
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %96) #27
  br label %97

97:                                               ; preds = %87, %94
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %99) #17
  br label %102

102:                                              ; preds = %101, %97
  store ptr null, ptr %98, align 8, !tbaa !35
  %103 = load ptr, ptr %5, align 8, !tbaa !20
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8, !tbaa !19
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %103, i64 noundef %108) #27
  br label %109

109:                                              ; preds = %102, %106
  %110 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %111) #17
  br label %114

114:                                              ; preds = %113, %109
  store ptr null, ptr %110, align 8, !tbaa !35
  %115 = load ptr, ptr %6, align 8, !tbaa !20
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %116, align 8, !tbaa !19
  %120 = add i64 %119, 1
  call void @_ZdlPvm(ptr noundef %115, i64 noundef %120) #27
  br label %121

121:                                              ; preds = %114, %118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %90

122:                                              ; preds = %2
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %136

124:                                              ; preds = %24, %20
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %134

126:                                              ; preds = %73, %41
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = load ptr, ptr %4, align 8, !tbaa !20
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !19
  %133 = add i64 %132, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #27
  br label %134

134:                                              ; preds = %126, %131, %124
  %135 = phi { ptr, i32 } [ %125, %124 ], [ %127, %131 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %136

136:                                              ; preds = %134, %122
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %123, %122 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %137
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_728sys__native_path_is_absoluteEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !35
  %16 = load ptr, ptr %3, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8, !tbaa !19
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %21) #27
  br label %22

22:                                               ; preds = %15, %19
  %23 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %23
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_728sys__native_path_is_relativeEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !35
  %16 = load ptr, ptr %3, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8, !tbaa !19
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %21) #27
  br label %22

22:                                               ; preds = %15, %19
  %23 = xor i1 %10, true
  %24 = zext i1 %23 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %24
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_728sys__native_path_to_absoluteEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib16path_to_absoluteESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16path_to_absoluteESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  store i64 %0, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %114

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem8absoluteERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %116

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %12 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !207
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !16, !noalias !207
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !12, !alias.scope !207
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %118

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %118

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !207
  store i64 %14, ptr %16, align 8, !tbaa !19, !alias.scope !207
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %31, ptr %29, align 1, !tbaa !19
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !16, !alias.scope !207
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !19
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !48

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %120

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !12
  %51 = load ptr, ptr %4, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !20
  %58 = load i64, ptr %16, align 8, !tbaa !19
  store i64 %58, ptr %50, align 8, !tbaa !19
  %59 = load i64, ptr %34, align 8, !tbaa !16
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !16
  store ptr %16, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %34, align 8, !tbaa !16
  store i8 0, ptr %16, align 8, !tbaa !19
  %64 = load ptr, ptr %43, align 8, !tbaa !49
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !49
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %120

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !56, !noalias !208
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !60, !noalias !208
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !61, !noalias !208
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  %84 = load ptr, ptr %4, align 8, !tbaa !20
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i64, ptr %16, align 8, !tbaa !19
  %88 = add i64 %87, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %88) #27
  br label %89

89:                                               ; preds = %80, %86
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull %91) #17
  br label %94

94:                                               ; preds = %93, %89
  store ptr null, ptr %90, align 8, !tbaa !35
  %95 = load ptr, ptr %5, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !35
  %107 = load ptr, ptr %6, align 8, !tbaa !20
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %108, align 8, !tbaa !19
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %112) #27
  br label %113

113:                                              ; preds = %106, %110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %157

114:                                              ; preds = %2
  %115 = landingpad { ptr, i32 }
          catch ptr null
  br label %131

116:                                              ; preds = %10
  %117 = landingpad { ptr, i32 }
          catch ptr null
  br label %129

118:                                              ; preds = %24, %20
  %119 = landingpad { ptr, i32 }
          catch ptr null
  br label %127

120:                                              ; preds = %66, %38
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = load ptr, ptr %4, align 8, !tbaa !20
  %123 = icmp eq ptr %122, %16
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i64, ptr %16, align 8, !tbaa !19
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %126) #27
  br label %127

127:                                              ; preds = %120, %124, %118
  %128 = phi { ptr, i32 } [ %119, %118 ], [ %121, %124 ], [ %121, %120 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %129

129:                                              ; preds = %127, %116
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %117, %116 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %131

131:                                              ; preds = %129, %114
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %115, %114 ]
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %134 = call ptr @__cxa_begin_catch(ptr %133) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %135 unwind label %145

135:                                              ; preds = %131
  %136 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %137 unwind label %147

137:                                              ; preds = %135
  %138 = load ptr, ptr %7, align 8, !tbaa !20
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %139, align 8, !tbaa !19
  %143 = add i64 %142, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %143) #27
  br label %144

144:                                              ; preds = %137, %141
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %157

145:                                              ; preds = %131
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %155

147:                                              ; preds = %135
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = load ptr, ptr %7, align 8, !tbaa !20
  %150 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i64, ptr %150, align 8, !tbaa !19
  %154 = add i64 %153, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %154) #27
  br label %155

155:                                              ; preds = %147, %152, %145
  %156 = phi { ptr, i32 } [ %146, %145 ], [ %148, %152 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %159 unwind label %160

157:                                              ; preds = %144, %113
  %158 = phi ptr [ %83, %113 ], [ %136, %144 ]
  ret ptr %158

159:                                              ; preds = %155
  resume { ptr, i32 } %156

160:                                              ; preds = %155
  %161 = landingpad { ptr, i32 }
          catch ptr null
  %162 = extractvalue { ptr, i32 } %161, 0
  call void @__clang_call_terminate(ptr %162) #28
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_729sys__native_path_canonicalizeEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib17path_canonicalizeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17path_canonicalizeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  store i64 %0, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %114

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem16weakly_canonicalERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %116

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %12 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !217
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !16, !noalias !217
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !12, !alias.scope !217
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %21 unwind label %118

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #26
          to label %27 unwind label %118

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !20, !alias.scope !217
  store i64 %14, ptr %16, align 8, !tbaa !19, !alias.scope !217
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %31, ptr %29, align 1, !tbaa !19
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !16, !alias.scope !217
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !19
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !48

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %120

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !12
  %51 = load ptr, ptr %4, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !16
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !20
  %58 = load i64, ptr %16, align 8, !tbaa !19
  store i64 %58, ptr %50, align 8, !tbaa !19
  %59 = load i64, ptr %34, align 8, !tbaa !16
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !16
  store ptr %16, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %34, align 8, !tbaa !16
  store i8 0, ptr %16, align 8, !tbaa !19
  %64 = load ptr, ptr %43, align 8, !tbaa !49
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !49
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %120

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !56, !noalias !218
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !60, !noalias !218
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !61, !noalias !218
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !20
  %84 = load ptr, ptr %4, align 8, !tbaa !20
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i64, ptr %16, align 8, !tbaa !19
  %88 = add i64 %87, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %88) #27
  br label %89

89:                                               ; preds = %80, %86
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull %91) #17
  br label %94

94:                                               ; preds = %93, %89
  store ptr null, ptr %90, align 8, !tbaa !35
  %95 = load ptr, ptr %5, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %96, align 8, !tbaa !19
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %100) #27
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !35
  %107 = load ptr, ptr %6, align 8, !tbaa !20
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i64, ptr %108, align 8, !tbaa !19
  %112 = add i64 %111, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %112) #27
  br label %113

113:                                              ; preds = %106, %110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %157

114:                                              ; preds = %2
  %115 = landingpad { ptr, i32 }
          catch ptr null
  br label %131

116:                                              ; preds = %10
  %117 = landingpad { ptr, i32 }
          catch ptr null
  br label %129

118:                                              ; preds = %24, %20
  %119 = landingpad { ptr, i32 }
          catch ptr null
  br label %127

120:                                              ; preds = %66, %38
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = load ptr, ptr %4, align 8, !tbaa !20
  %123 = icmp eq ptr %122, %16
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i64, ptr %16, align 8, !tbaa !19
  %126 = add i64 %125, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %126) #27
  br label %127

127:                                              ; preds = %120, %124, %118
  %128 = phi { ptr, i32 } [ %119, %118 ], [ %121, %124 ], [ %121, %120 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %129

129:                                              ; preds = %127, %116
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %117, %116 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %131

131:                                              ; preds = %129, %114
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %115, %114 ]
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %134 = call ptr @__cxa_begin_catch(ptr %133) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %135 unwind label %145

135:                                              ; preds = %131
  %136 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %137 unwind label %147

137:                                              ; preds = %135
  %138 = load ptr, ptr %7, align 8, !tbaa !20
  %139 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %139, align 8, !tbaa !19
  %143 = add i64 %142, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %143) #27
  br label %144

144:                                              ; preds = %137, %141
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %157

145:                                              ; preds = %131
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %155

147:                                              ; preds = %135
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = load ptr, ptr %7, align 8, !tbaa !20
  %150 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i64, ptr %150, align 8, !tbaa !19
  %154 = add i64 %153, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %154) #27
  br label %155

155:                                              ; preds = %147, %152, %145
  %156 = phi { ptr, i32 } [ %146, %145 ], [ %148, %152 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %159 unwind label %160

157:                                              ; preds = %144, %113
  %158 = phi ptr [ %83, %113 ], [ %136, %144 ]
  ret ptr %158

159:                                              ; preds = %155
  resume { ptr, i32 } %156

160:                                              ; preds = %155
  %161 = landingpad { ptr, i32 }
          catch ptr null
  %162 = extractvalue { ptr, i32 } %161, 0
  call void @__clang_call_terminate(ptr %162) #28
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_727sys__native_path_componentsEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib15path_componentsESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15path_componentsESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  store i64 %0, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %69

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !35, !noalias !221
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 3
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !16, !noalias !221
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i8
  %22 = and i64 %14, 3
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %30

24:                                               ; preds = %11
  %25 = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17, !noalias !221
  %26 = load ptr, ptr %12, align 8, !tbaa !35, !noalias !224
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 3
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %44

30:                                               ; preds = %17
  br i1 %20, label %54, label %44

31:                                               ; preds = %24, %17
  %32 = phi i8 [ 0, %24 ], [ %21, %17 ]
  %33 = phi ptr [ %25, %24 ], [ null, %17 ]
  %34 = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17, !noalias !224
  %35 = load ptr, ptr %12, align 8, !tbaa !35
  %36 = freeze ptr %35
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 3
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = icmp eq ptr %33, %34
  br i1 %41, label %54, label %44

42:                                               ; preds = %31
  %43 = icmp eq i8 %32, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %24, %30, %40, %42
  %45 = phi i8 [ %32, %40 ], [ %32, %42 ], [ 0, %30 ], [ 0, %24 ]
  %46 = phi ptr [ %33, %40 ], [ %33, %42 ], [ null, %30 ], [ %25, %24 ]
  %47 = phi ptr [ %36, %40 ], [ %36, %42 ], [ %13, %30 ], [ %26, %24 ]
  %48 = phi ptr [ %34, %40 ], [ %34, %42 ], [ null, %30 ], [ null, %24 ]
  %49 = phi i8 [ 0, %40 ], [ 0, %42 ], [ 1, %30 ], [ 1, %24 ]
  %50 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %51 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %52 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %53 = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %71

54:                                               ; preds = %128, %30, %40, %42
  %55 = phi ptr [ %13, %30 ], [ %36, %42 ], [ %36, %40 ], [ %129, %128 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %55) #17
  br label %58

58:                                               ; preds = %57, %54
  store ptr null, ptr %12, align 8, !tbaa !35
  %59 = load ptr, ptr %7, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %60, align 8, !tbaa !19
  %64 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %64) #27
  br label %65

65:                                               ; preds = %58, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %66 = load ptr, ptr %6, align 8, !tbaa !62, !noalias !227
  %67 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !62, !noalias !227
  invoke void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr %66, ptr %68, i64 %2, ptr %3)
          to label %152 unwind label %238

69:                                               ; preds = %4
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %248

71:                                               ; preds = %44, %128
  %72 = phi ptr [ %47, %44 ], [ %129, %128 ]
  %73 = phi ptr [ %46, %44 ], [ %135, %128 ]
  %74 = phi i8 [ %45, %44 ], [ %133, %128 ]
  %75 = ptrtoint ptr %72 to i64
  %76 = and i64 %75, 3
  %77 = icmp eq i64 %76, 0
  %78 = select i1 %77, ptr %73, ptr %7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %79 = load ptr, ptr %78, align 8, !tbaa !20, !noalias !236
  %80 = select i1 %77, ptr %73, ptr %7
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !16, !noalias !236
  %83 = icmp ult i64 %82, 9223372036854775807
  call void @llvm.assume(i1 %83)
  store ptr %50, ptr %8, align 8, !tbaa !12, !alias.scope !236
  %84 = icmp eq ptr %79, null
  %85 = icmp ne i64 %82, 0
  %86 = and i1 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
          to label %88 unwind label %141

88:                                               ; preds = %87
  unreachable

89:                                               ; preds = %71
  %90 = icmp samesign ugt i64 %82, 15
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = add nuw nsw i64 %82, 1
  %93 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %92) #26
          to label %94 unwind label %139

94:                                               ; preds = %91
  store ptr %93, ptr %8, align 8, !tbaa !20, !alias.scope !236
  store i64 %82, ptr %50, align 8, !tbaa !19, !alias.scope !236
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi ptr [ %93, %94 ], [ %50, %89 ]
  switch i64 %82, label %99 [
    i64 1, label %97
    i64 0, label %100
  ]

97:                                               ; preds = %95
  %98 = load i8, ptr %79, align 1, !tbaa !19
  store i8 %98, ptr %96, align 1, !tbaa !19
  br label %100

99:                                               ; preds = %95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %96, ptr align 1 %79, i64 %82, i1 false)
  br label %100

100:                                              ; preds = %99, %97, %95
  store i64 %82, ptr %51, align 8, !tbaa !16, !alias.scope !236
  %101 = getelementptr inbounds nuw i8, ptr %96, i64 %82
  store i8 0, ptr %101, align 1, !tbaa !19
  %102 = load ptr, ptr %52, align 8, !tbaa !128
  %103 = load ptr, ptr %53, align 8, !tbaa !130
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds nuw i8, ptr %102, i64 16
  store ptr %106, ptr %102, align 8, !tbaa !12
  %107 = load ptr, ptr %8, align 8, !tbaa !20
  %108 = icmp eq ptr %107, %50
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, ptr %51, align 8, !tbaa !16
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  %112 = add nuw nsw i64 %110, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %106, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %112, i1 false)
  br label %116

113:                                              ; preds = %105
  store ptr %107, ptr %102, align 8, !tbaa !20
  %114 = load i64, ptr %50, align 8, !tbaa !19
  store i64 %114, ptr %106, align 8, !tbaa !19
  %115 = load i64, ptr %51, align 8, !tbaa !16
  br label %116

116:                                              ; preds = %109, %113
  %117 = phi i64 [ %115, %113 ], [ %110, %109 ]
  %118 = icmp ult i64 %117, 9223372036854775807
  call void @llvm.assume(i1 %118)
  %119 = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i64 %117, ptr %119, align 8, !tbaa !16
  store ptr %50, ptr %8, align 8, !tbaa !20
  store i64 0, ptr %51, align 8, !tbaa !16
  %120 = getelementptr inbounds nuw i8, ptr %102, i64 32
  store ptr %120, ptr %52, align 8, !tbaa !128
  br label %128

121:                                              ; preds = %100
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %122 unwind label %143

122:                                              ; preds = %121
  %123 = load ptr, ptr %8, align 8, !tbaa !20
  %124 = icmp eq ptr %123, %50
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %50, align 8, !tbaa !19
  %127 = add i64 %126, 1
  call void @_ZdlPvm(ptr noundef %123, i64 noundef %127) #27
  br label %128

128:                                              ; preds = %122, %116, %125
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %129 = load ptr, ptr %12, align 8, !tbaa !35
  %130 = ptrtoint ptr %129 to i64
  %131 = and i64 %130, 3
  %132 = icmp eq i64 %131, 0
  %133 = select i1 %132, i8 %74, i8 1
  %134 = select i1 %132, i64 48, i64 0
  %135 = getelementptr inbounds nuw i8, ptr %73, i64 %134
  %136 = icmp ne i8 %133, %49
  %137 = icmp ne ptr %135, %48
  %138 = select i1 %132, i1 %137, i1 %136
  br i1 %138, label %71, label %54

139:                                              ; preds = %91
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %150

141:                                              ; preds = %87
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %150

143:                                              ; preds = %121
  %144 = landingpad { ptr, i32 }
          cleanup
  %145 = load ptr, ptr %8, align 8, !tbaa !20
  %146 = icmp eq ptr %145, %50
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load i64, ptr %50, align 8, !tbaa !19
  %149 = add i64 %148, 1
  call void @_ZdlPvm(ptr noundef %145, i64 noundef %149) #27
  br label %150

150:                                              ; preds = %143, %139, %141, %147
  %151 = phi { ptr, i32 } [ %144, %147 ], [ %142, %141 ], [ %140, %139 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %248

152:                                              ; preds = %65
  %153 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %158, !prof !48

155:                                              ; preds = %152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %156 unwind label %240

156:                                              ; preds = %155
  %157 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %158

158:                                              ; preds = %156, %152
  %159 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load ptr, ptr %160, align 8, !tbaa !49
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 64
  %163 = load ptr, ptr %162, align 8, !tbaa !55
  %164 = getelementptr inbounds i8, ptr %163, i64 -32
  %165 = icmp eq ptr %161, %164
  br i1 %165, label %187, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i8, ptr %161, i64 16
  store ptr %167, ptr %161, align 8, !tbaa !12
  %168 = load ptr, ptr %9, align 8, !tbaa !20
  %169 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %173 = load i64, ptr %172, align 8, !tbaa !16
  %174 = icmp ult i64 %173, 16
  call void @llvm.assume(i1 %174)
  %175 = add nuw nsw i64 %173, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %167, ptr noundef nonnull align 8 dereferenceable(1) %169, i64 %175, i1 false)
  br label %180

176:                                              ; preds = %166
  store ptr %168, ptr %161, align 8, !tbaa !20
  %177 = load i64, ptr %169, align 8, !tbaa !19
  store i64 %177, ptr %167, align 8, !tbaa !19
  %178 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %179 = load i64, ptr %178, align 8, !tbaa !16
  br label %180

180:                                              ; preds = %176, %171
  %181 = phi i64 [ %179, %176 ], [ %173, %171 ]
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %183 = icmp ult i64 %181, 9223372036854775807
  call void @llvm.assume(i1 %183)
  %184 = getelementptr inbounds nuw i8, ptr %161, i64 8
  store i64 %181, ptr %184, align 8, !tbaa !16
  store ptr %169, ptr %9, align 8, !tbaa !20
  store i64 0, ptr %182, align 8, !tbaa !16
  store i8 0, ptr %169, align 8, !tbaa !19
  %185 = load ptr, ptr %160, align 8, !tbaa !49
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 32
  store ptr %186, ptr %160, align 8, !tbaa !49
  br label %190

187:                                              ; preds = %158
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %159, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %188 unwind label %240

188:                                              ; preds = %187
  %189 = load ptr, ptr %160, align 8, !tbaa !56, !noalias !237
  br label %190

190:                                              ; preds = %188, %180
  %191 = phi ptr [ %186, %180 ], [ %189, %188 ]
  %192 = getelementptr inbounds nuw i8, ptr %159, i64 56
  %193 = load ptr, ptr %192, align 8, !tbaa !60, !noalias !237
  %194 = icmp eq ptr %191, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = getelementptr inbounds nuw i8, ptr %159, i64 72
  %197 = load ptr, ptr %196, align 8, !tbaa !61, !noalias !237
  %198 = getelementptr inbounds i8, ptr %197, i64 -8
  %199 = load ptr, ptr %198, align 8, !tbaa !62
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 512
  br label %201

201:                                              ; preds = %195, %190
  %202 = phi ptr [ %200, %195 ], [ %191, %190 ]
  %203 = getelementptr inbounds i8, ptr %202, i64 -32
  %204 = load ptr, ptr %203, align 8, !tbaa !20
  %205 = load ptr, ptr %9, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %207 = icmp eq ptr %205, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load i64, ptr %206, align 8, !tbaa !19
  %210 = add i64 %209, 1
  call void @_ZdlPvm(ptr noundef %205, i64 noundef %210) #27
  br label %211

211:                                              ; preds = %201, %208
  %212 = load ptr, ptr %6, align 8, !tbaa !137
  %213 = load ptr, ptr %67, align 8, !tbaa !128
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %228, label %215

215:                                              ; preds = %211, %223
  %216 = phi ptr [ %224, %223 ], [ %212, %211 ]
  %217 = load ptr, ptr %216, align 8, !tbaa !20
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = load i64, ptr %218, align 8, !tbaa !19
  %222 = add i64 %221, 1
  call void @_ZdlPvm(ptr noundef %217, i64 noundef %222) #27
  br label %223

223:                                              ; preds = %215, %220
  %224 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %225 = icmp eq ptr %224, %213
  br i1 %225, label %226, label %215, !llvm.loop !138

226:                                              ; preds = %223
  %227 = load ptr, ptr %6, align 8, !tbaa !137
  br label %228

228:                                              ; preds = %226, %211
  %229 = phi ptr [ %227, %226 ], [ %212, %211 ]
  %230 = icmp eq ptr %229, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %233 = load ptr, ptr %232, align 8, !tbaa !130
  %234 = ptrtoint ptr %233 to i64
  %235 = ptrtoint ptr %229 to i64
  %236 = sub i64 %234, %235
  call void @_ZdlPvm(ptr noundef nonnull %229, i64 noundef %236) #27
  br label %237

237:                                              ; preds = %228, %231
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %204

238:                                              ; preds = %65
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %248

240:                                              ; preds = %187, %155
  %241 = landingpad { ptr, i32 }
          cleanup
  %242 = load ptr, ptr %9, align 8, !tbaa !20
  %243 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %244 = icmp eq ptr %242, %243
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = load i64, ptr %243, align 8, !tbaa !19
  %247 = add i64 %246, 1
  call void @_ZdlPvm(ptr noundef %242, i64 noundef %247) #27
  br label %248

248:                                              ; preds = %240, %245, %69, %150, %238
  %249 = phi { ptr, i32 } [ %239, %238 ], [ %70, %69 ], [ %151, %150 ], [ %241, %245 ], [ %241, %240 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %249
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef nonnull ptr @sys__native_file_open(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_openEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_file_create(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_file_createEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_file_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = tail call noundef i32 @_ZN12__apo_stdlib10file_writeEPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %7, ptr %1)
  ret i32 %8
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_file_read_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_file_close(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %8, align 8, !tbaa !29
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_file_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_sync_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_sync_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_file_sync_dataEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_set_len(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_file_set_lenEPvl(ptr noundef %0, i64 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_file_metadata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @sys__native_meta_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !79
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_meta_modified(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_meta_accessed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_meta_created(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_dir(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i8, ptr %8, align 8, !tbaa !81, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_file(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %9 = load i8, ptr %8, align 1, !tbaa !82, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_perm_readonly(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %9 = load i8, ptr %8, align 2, !tbaa !83, !range !46, !noundef !47
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_create_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib13fs_create_dirESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_create_dir_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_fs_remove_fileEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_fs_remove_dirEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_remove_dir_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_729sys__native_fs_remove_dir_allEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib9fs_renameESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib7fs_copyESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_fs_read_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib11fs_read_dirESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_hard_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib12fs_hard_linkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_fs_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef i32 @_ZN12__apo_stdlib10fs_symlinkESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret i32 %13
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_fs_read_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib12fs_read_linkESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_exists(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_721sys__native_fs_existsEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_parent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib11path_parentESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_file_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_file_nameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_extension(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_extensionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_file_stem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14path_file_stemESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_path_is_absolute(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !35
  %16 = load ptr, ptr %3, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8, !tbaa !19
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %21) #27
  br label %22

22:                                               ; preds = %15, %19
  %23 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %23
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local range(i32 0, 2) i32 @sys__native_path_is_relative(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !35
  %16 = load ptr, ptr %3, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8, !tbaa !19
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %21) #27
  br label %22

22:                                               ; preds = %15, %19
  %23 = xor i1 %10, true
  %24 = zext i1 %23 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %24
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_to_absolute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib16path_to_absoluteESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_canonicalize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib17path_canonicalizeESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_path_components(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call noundef ptr @_ZN12__apo_stdlib15path_componentsESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %7, ptr %0, i64 %12, ptr %1)
  ret ptr %13
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8, !tbaa !19
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #27
  br label %17

17:                                               ; preds = %9, %14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8, !tbaa !19
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #27
  br label %17

17:                                               ; preds = %9, %14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #27
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !12
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #26
  store ptr %15, ptr %0, align 8, !tbaa !20
  store i64 %8, ptr %4, align 8, !tbaa !19
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %19, ptr %17, align 1, !tbaa !19
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !19
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %0, align 8, !tbaa !12
  %9 = icmp eq ptr %4, null
  %10 = icmp ne i64 %6, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

13:                                               ; preds = %3
  %14 = icmp samesign ugt i64 %6, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add nuw nsw i64 %6, 1
  %17 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #26
  store ptr %17, ptr %0, align 8, !tbaa !20
  store i64 %6, ptr %8, align 8, !tbaa !19
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %17, %15 ], [ %8, %13 ]
  switch i64 %6, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %21, ptr %19, align 1, !tbaa !19
  br label %23

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %4, i64 %6, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %24, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %6
  store i8 0, ptr %25, align 1, !tbaa !19
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %27 unwind label %29

27:                                               ; preds = %23
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %28 unwind label %31

28:                                               ; preds = %27
  ret void

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %37

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %26, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %33) #17
  br label %36

36:                                               ; preds = %31, %35
  store ptr null, ptr %26, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi { ptr, i32 } [ %32, %36 ], [ %30, %29 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !20
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %8, align 8, !tbaa !19
  %43 = add i64 %42, 1
  tail call void @_ZdlPvm(ptr noundef %39, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %37, %41
  resume { ptr, i32 } %38
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

declare noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !35
  %7 = load ptr, ptr %0, align 8, !tbaa !20
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8, !tbaa !19
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %12) #27
  br label %13

13:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #16 align 2

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !240
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !12
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  store ptr %19, ptr %0, align 8, !tbaa !20
  store i64 %4, ptr %7, align 8, !tbaa !19
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !19
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !19
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #14

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #15

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !48

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
  %5 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds i8, ptr %11, i64 -32
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %15, ptr %9, align 8, !tbaa !12
  %16 = load ptr, ptr %0, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !16
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  %23 = add nuw nsw i64 %21, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %23, i1 false)
  br label %26

24:                                               ; preds = %14
  store ptr %16, ptr %9, align 8, !tbaa !20
  %25 = load i64, ptr %17, align 8, !tbaa !19
  store i64 %25, ptr %15, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !16
  %29 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %29)
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %28, ptr %30, align 8, !tbaa !16
  store ptr %17, ptr %0, align 8, !tbaa !20
  store i64 0, ptr %27, align 8, !tbaa !16
  store i8 0, ptr %17, align 8, !tbaa !19
  %31 = load ptr, ptr %8, align 8, !tbaa !49
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %32, ptr %8, align 8, !tbaa !49
  br label %35

33:                                               ; preds = %6
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %34 = load ptr, ptr %8, align 8, !tbaa !56, !noalias !242
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %32, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %38 = load ptr, ptr %37, align 8, !tbaa !60, !noalias !242
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load ptr, ptr %41, align 8, !tbaa !61, !noalias !242
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 512
  br label %46

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %45, %40 ], [ %36, %35 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  ret ptr %49
}

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #16 align 2

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !62, !noalias !245
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !62
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !248, !noalias !245
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !248
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !62, !noalias !249
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !62
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !248, !noalias !249
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !248
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !252
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !253
  %21 = load ptr, ptr %9, align 8, !tbaa !254
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #27
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !255

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !252
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !256
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #27
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #28
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !256
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !119

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  store ptr %12, ptr %0, align 8, !tbaa !252
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !62
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !257

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #17
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #27
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !255

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #29
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
  tail call void @__clang_call_terminate(ptr %39) #28
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #17
  %44 = load ptr, ptr %0, align 8, !tbaa !252
  %45 = load i64, ptr %6, align 8, !tbaa !256
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #29
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
  store ptr %15, ptr %52, align 8, !tbaa !61
  %53 = load ptr, ptr %15, align 8, !tbaa !62
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !60
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !258
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !61
  %60 = load ptr, ptr %58, align 8, !tbaa !62
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !60
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !258
  store ptr %53, ptr %51, align 8, !tbaa !259
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !49
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #28
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !61
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !61
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !56
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !19
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #27
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !19
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #27
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !19
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #27
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !19
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #27
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !19
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #27
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !19
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !19
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #27
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !19
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #27
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !19
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #27
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !19
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #27
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !20
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !19
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #27
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !20
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !19
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #27
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !20
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !19
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #27
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !20
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !19
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #27
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !19
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #27
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !20
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !19
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #27
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !61
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !260

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !258
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !20
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !19
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #27
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !138

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !60
  %168 = load ptr, ptr %2, align 8, !tbaa !56
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !20
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !19
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #27
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !138

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !56
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !20
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !19
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #27
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !138

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !56
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !258
  %27 = load ptr, ptr %4, align 8, !tbaa !56
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !256
  %39 = load ptr, ptr %0, align 8, !tbaa !252
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !254
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !62
  %51 = load ptr, ptr %3, align 8, !tbaa !49
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !12
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !16
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !20
  %62 = load i64, ptr %54, align 8, !tbaa !19
  store i64 %62, ptr %52, align 8, !tbaa !19
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !16
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !16
  store ptr %54, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %64, align 8, !tbaa !16
  store i8 0, ptr %54, align 8, !tbaa !19
  %68 = load ptr, ptr %5, align 8, !tbaa !254
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !61
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  store ptr %70, ptr %18, align 8, !tbaa !60
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !258
  store ptr %70, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !254
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !253
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !256
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !252
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
  br i1 %30, label %31, label %32, !prof !261

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !62
  store ptr %35, ptr %24, align 8, !tbaa !62
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !262

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !62
  store ptr %48, ptr %42, align 8, !tbaa !62
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #26
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !261

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !62
  store ptr %69, ptr %60, align 8, !tbaa !62
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !252
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #27
  store ptr %55, ptr %0, align 8, !tbaa !252
  store i64 %52, ptr %14, align 8, !tbaa !256
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !61
  %75 = load ptr, ptr %74, align 8, !tbaa !62
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !60
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !258
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !61
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !60
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = icmp eq i32 %4, -1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = icmp ne ptr %1, null
  %9 = icmp eq i32 %2, -1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !263
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !265
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %24, label %17, !prof !261

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8, !tbaa !27
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %22 = icmp eq i32 %21, -1
  %23 = select i1 %22, ptr null, ptr %1
  br label %27

24:                                               ; preds = %11
  %25 = load i8, ptr %13, align 1, !tbaa !19
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %17, %5
  %28 = phi ptr [ %1, %24 ], [ %1, %5 ], [ %23, %17 ]
  %29 = phi i32 [ %26, %24 ], [ %2, %5 ], [ %21, %17 ]
  %30 = icmp ne ptr %3, null
  %31 = select i1 %30, i1 %6, i1 false
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %34 = load ptr, ptr %33, align 8, !tbaa !263
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !265
  %37 = icmp ult ptr %34, %36
  br i1 %37, label %45, label %38, !prof !261

38:                                               ; preds = %32
  %39 = load ptr, ptr %3, align 8, !tbaa !27
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 72
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %43 = icmp eq i32 %42, -1
  %44 = select i1 %43, ptr null, ptr %3
  br label %47

45:                                               ; preds = %32
  %46 = icmp eq i32 %29, -1
  br i1 %46, label %53, label %135

47:                                               ; preds = %38, %27
  %48 = phi ptr [ %44, %38 ], [ %3, %27 ]
  %49 = phi i32 [ %42, %38 ], [ %4, %27 ]
  %50 = icmp eq i32 %29, -1
  %51 = icmp eq i32 %49, -1
  %52 = xor i1 %50, %51
  br i1 %52, label %53, label %135

53:                                               ; preds = %45, %47
  %54 = phi ptr [ %3, %45 ], [ %48, %47 ]
  %55 = icmp ne ptr %28, null
  %56 = select i1 %55, i1 %9, i1 false
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %59 = load ptr, ptr %58, align 8, !tbaa !263
  %60 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %61 = load ptr, ptr %60, align 8, !tbaa !265
  %62 = icmp ult ptr %59, %61
  br i1 %62, label %70, label %63, !prof !261

63:                                               ; preds = %57
  %64 = load ptr, ptr %28, align 8, !tbaa !27
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 72
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(64) %28)
  %68 = icmp eq i32 %67, -1
  %69 = select i1 %68, ptr null, ptr %28
  br label %73

70:                                               ; preds = %57
  %71 = load i8, ptr %59, align 1, !tbaa !19
  %72 = zext i8 %71 to i32
  br label %73

73:                                               ; preds = %70, %63, %53
  %74 = phi ptr [ %28, %70 ], [ %28, %53 ], [ %69, %63 ]
  %75 = phi i32 [ %72, %70 ], [ %2, %53 ], [ %67, %63 ]
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %7, align 8, !tbaa !19
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %78 = load ptr, ptr %77, align 8, !tbaa !263
  %79 = getelementptr inbounds nuw i8, ptr %74, i64 24
  %80 = load ptr, ptr %79, align 8, !tbaa !265
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %87, label %82, !prof !261

82:                                               ; preds = %73
  %83 = load ptr, ptr %74, align 8, !tbaa !27
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 80
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(64) %74)
  br label %89

87:                                               ; preds = %73
  %88 = getelementptr inbounds nuw i8, ptr %78, i64 1
  store ptr %88, ptr %77, align 8, !tbaa !263
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %270, %89
  %91 = phi ptr [ %74, %89 ], [ %259, %270 ]
  %92 = phi ptr [ %54, %89 ], [ %129, %270 ]
  %93 = phi i64 [ 1, %89 ], [ %261, %270 ]
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !263
  %96 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %97 = load ptr, ptr %96, align 8, !tbaa !265
  %98 = icmp ult ptr %95, %97
  br i1 %98, label %107, label %99, !prof !261

99:                                               ; preds = %90
  %100 = load ptr, ptr %91, align 8, !tbaa !27
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 72
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef i32 %102(ptr noundef nonnull align 8 dereferenceable(64) %91)
  %104 = icmp eq i32 %103, -1
  %105 = select i1 %104, ptr null, ptr %91
  %106 = icmp eq i32 %103, -1
  br label %107

107:                                              ; preds = %90, %99
  %108 = phi ptr [ %105, %99 ], [ %91, %90 ]
  %109 = phi i1 [ %106, %99 ], [ false, %90 ]
  %110 = icmp ne ptr %92, null
  %111 = select i1 %110, i1 %6, i1 false
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = getelementptr inbounds nuw i8, ptr %92, i64 16
  %114 = load ptr, ptr %113, align 8, !tbaa !263
  %115 = getelementptr inbounds nuw i8, ptr %92, i64 24
  %116 = load ptr, ptr %115, align 8, !tbaa !265
  %117 = icmp ult ptr %114, %116
  br i1 %117, label %118, label %121, !prof !261

118:                                              ; preds = %112
  %119 = load i8, ptr %114, align 1, !tbaa !19
  %120 = zext i8 %119 to i32
  br label %128

121:                                              ; preds = %112
  %122 = load ptr, ptr %92, align 8, !tbaa !27
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 72
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef i32 %124(ptr noundef nonnull align 8 dereferenceable(64) %92)
  %126 = icmp eq i32 %125, -1
  %127 = select i1 %126, ptr null, ptr %92
  br label %128

128:                                              ; preds = %121, %107, %118
  %129 = phi ptr [ %92, %118 ], [ %92, %107 ], [ %127, %121 ]
  %130 = phi i32 [ %120, %118 ], [ %4, %107 ], [ %125, %121 ]
  %131 = icmp eq i32 %130, -1
  %132 = xor i1 %109, %131
  %133 = icmp samesign ult i64 %93, 15
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %240, label %135

135:                                              ; preds = %128, %45, %47
  %136 = phi ptr [ %48, %47 ], [ %3, %45 ], [ %129, %128 ]
  %137 = phi ptr [ %28, %47 ], [ %28, %45 ], [ %108, %128 ]
  %138 = phi i32 [ %2, %47 ], [ %2, %45 ], [ -1, %128 ]
  %139 = phi i64 [ 0, %47 ], [ 0, %45 ], [ %93, %128 ]
  %140 = icmp ne i32 %4, -1
  %141 = icmp ne ptr %137, null
  %142 = icmp eq i32 %138, -1
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %161

144:                                              ; preds = %135
  %145 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %146 = load ptr, ptr %145, align 8, !tbaa !263
  %147 = getelementptr inbounds nuw i8, ptr %137, i64 24
  %148 = load ptr, ptr %147, align 8, !tbaa !265
  %149 = icmp ult ptr %146, %148
  br i1 %149, label %158, label %150, !prof !261

150:                                              ; preds = %144
  %151 = load ptr, ptr %137, align 8, !tbaa !27
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 72
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef i32 %153(ptr noundef nonnull align 8 dereferenceable(64) %137)
          to label %155 unwind label %352

155:                                              ; preds = %150
  %156 = icmp eq i32 %154, -1
  %157 = select i1 %156, ptr null, ptr %137
  br label %161

158:                                              ; preds = %144
  %159 = load i8, ptr %146, align 1, !tbaa !19
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %158, %155, %135
  %162 = phi ptr [ %137, %158 ], [ %137, %135 ], [ %157, %155 ]
  %163 = phi i32 [ %160, %158 ], [ %138, %135 ], [ %154, %155 ]
  %164 = icmp ne ptr %136, null
  %165 = select i1 %164, i1 %6, i1 false
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = icmp eq i32 %163, -1
  %168 = xor i1 %140, %167
  br i1 %168, label %402, label %186

169:                                              ; preds = %161
  %170 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %171 = load ptr, ptr %170, align 8, !tbaa !263
  %172 = getelementptr inbounds nuw i8, ptr %136, i64 24
  %173 = load ptr, ptr %172, align 8, !tbaa !265
  %174 = icmp ult ptr %171, %173
  br i1 %174, label %184, label %175, !prof !261

175:                                              ; preds = %169
  %176 = load ptr, ptr %136, align 8, !tbaa !27
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 72
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef i32 %178(ptr noundef nonnull align 8 dereferenceable(64) %136)
          to label %180 unwind label %352

180:                                              ; preds = %175
  %181 = icmp eq i32 %179, -1
  br i1 %181, label %182, label %184

182:                                              ; preds = %180
  %183 = icmp eq i32 %163, -1
  br i1 %183, label %402, label %186

184:                                              ; preds = %180, %169
  %185 = icmp eq i32 %163, -1
  br i1 %185, label %186, label %402

186:                                              ; preds = %184, %182, %166
  %187 = phi ptr [ %136, %184 ], [ %136, %166 ], [ null, %182 ]
  %188 = icmp eq i64 %139, 15
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %0, align 8, !tbaa !20
  br label %200

191:                                              ; preds = %186
  %192 = invoke noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #26
          to label %193 unwind label %356

193:                                              ; preds = %191
  %194 = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %192, ptr noundef nonnull align 1 dereferenceable(15) %194, i64 15, i1 false)
  %195 = icmp eq ptr %194, %7
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i64, ptr %7, align 8, !tbaa !19
  %198 = add i64 %197, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %194, i64 noundef %198) #27
  br label %199

199:                                              ; preds = %193, %196
  store ptr %192, ptr %0, align 8, !tbaa !20
  store i64 30, ptr %7, align 8, !tbaa !19
  br label %200

200:                                              ; preds = %189, %199
  %201 = phi ptr [ %192, %199 ], [ %190, %189 ]
  %202 = phi i64 [ 30, %199 ], [ 15, %189 ]
  %203 = icmp ne ptr %162, null
  %204 = select i1 %203, i1 %142, i1 false
  br i1 %204, label %205, label %222

205:                                              ; preds = %200
  %206 = getelementptr inbounds nuw i8, ptr %162, i64 16
  %207 = load ptr, ptr %206, align 8, !tbaa !263
  %208 = getelementptr inbounds nuw i8, ptr %162, i64 24
  %209 = load ptr, ptr %208, align 8, !tbaa !265
  %210 = icmp ult ptr %207, %209
  br i1 %210, label %219, label %211, !prof !261

211:                                              ; preds = %205
  %212 = load ptr, ptr %162, align 8, !tbaa !27
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 72
  %214 = load ptr, ptr %213, align 8
  %215 = invoke noundef i32 %214(ptr noundef nonnull align 8 dereferenceable(64) %162)
          to label %216 unwind label %400

216:                                              ; preds = %211
  %217 = icmp eq i32 %215, -1
  %218 = select i1 %217, ptr null, ptr %162
  br label %222

219:                                              ; preds = %205
  %220 = load i8, ptr %207, align 1, !tbaa !19
  %221 = zext i8 %220 to i32
  br label %222

222:                                              ; preds = %219, %216, %200
  %223 = phi ptr [ %162, %219 ], [ %162, %200 ], [ %218, %216 ]
  %224 = phi i32 [ %221, %219 ], [ %138, %200 ], [ %215, %216 ]
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds nuw i8, ptr %201, i64 %139
  store i8 %225, ptr %226, align 1, !tbaa !19
  %227 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %228 = load ptr, ptr %227, align 8, !tbaa !263
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 24
  %230 = load ptr, ptr %229, align 8, !tbaa !265
  %231 = icmp ult ptr %228, %230
  br i1 %231, label %238, label %232, !prof !261

232:                                              ; preds = %222
  %233 = load ptr, ptr %223, align 8, !tbaa !27
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 80
  %235 = load ptr, ptr %234, align 8
  %236 = invoke noundef i32 %235(ptr noundef nonnull align 8 dereferenceable(64) %223)
          to label %237 unwind label %352

237:                                              ; preds = %238, %232
  br label %276

238:                                              ; preds = %222
  %239 = getelementptr inbounds nuw i8, ptr %228, i64 1
  store ptr %239, ptr %227, align 8, !tbaa !263
  br label %237

240:                                              ; preds = %128
  %241 = icmp eq ptr %108, null
  br i1 %241, label %258, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %244 = load ptr, ptr %243, align 8, !tbaa !263
  %245 = getelementptr inbounds nuw i8, ptr %108, i64 24
  %246 = load ptr, ptr %245, align 8, !tbaa !265
  %247 = icmp ult ptr %244, %246
  br i1 %247, label %248, label %250, !prof !261

248:                                              ; preds = %242
  %249 = load i8, ptr %244, align 1, !tbaa !19
  br label %258

250:                                              ; preds = %242
  %251 = load ptr, ptr %108, align 8, !tbaa !27
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 72
  %253 = load ptr, ptr %252, align 8
  %254 = tail call noundef i32 %253(ptr noundef nonnull align 8 dereferenceable(64) %108)
  %255 = icmp eq i32 %254, -1
  %256 = select i1 %255, ptr null, ptr %108
  %257 = trunc i32 %254 to i8
  br label %258

258:                                              ; preds = %250, %240, %248
  %259 = phi ptr [ %108, %248 ], [ null, %240 ], [ %256, %250 ]
  %260 = phi i8 [ %249, %248 ], [ -1, %240 ], [ %257, %250 ]
  %261 = add nuw nsw i64 %93, 1
  %262 = getelementptr inbounds nuw i8, ptr %7, i64 %93
  store i8 %260, ptr %262, align 1, !tbaa !19
  %263 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %264 = load ptr, ptr %263, align 8, !tbaa !263
  %265 = getelementptr inbounds nuw i8, ptr %259, i64 24
  %266 = load ptr, ptr %265, align 8, !tbaa !265
  %267 = icmp ult ptr %264, %266
  br i1 %267, label %268, label %271, !prof !261

268:                                              ; preds = %258
  %269 = getelementptr inbounds nuw i8, ptr %264, i64 1
  store ptr %269, ptr %263, align 8, !tbaa !263
  br label %270

270:                                              ; preds = %268, %271
  br label %90, !llvm.loop !266

271:                                              ; preds = %258
  %272 = load ptr, ptr %259, align 8, !tbaa !27
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 80
  %274 = load ptr, ptr %273, align 8
  %275 = tail call noundef i32 %274(ptr noundef nonnull align 8 dereferenceable(64) %259)
  br label %270

276:                                              ; preds = %397, %237
  %277 = phi ptr [ %223, %237 ], [ %382, %397 ]
  %278 = phi ptr [ %187, %237 ], [ %319, %397 ]
  %279 = phi i64 [ %202, %237 ], [ %362, %397 ]
  %280 = phi i64 [ %139, %237 ], [ %281, %397 ]
  %281 = add i64 %280, 1
  %282 = getelementptr inbounds nuw i8, ptr %277, i64 16
  %283 = load ptr, ptr %282, align 8, !tbaa !263
  %284 = getelementptr inbounds nuw i8, ptr %277, i64 24
  %285 = load ptr, ptr %284, align 8, !tbaa !265
  %286 = icmp ult ptr %283, %285
  br i1 %286, label %296, label %287, !prof !261

287:                                              ; preds = %276
  %288 = load ptr, ptr %277, align 8, !tbaa !27
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 72
  %290 = load ptr, ptr %289, align 8
  %291 = invoke noundef i32 %290(ptr noundef nonnull align 8 dereferenceable(64) %277)
          to label %292 unwind label %350

292:                                              ; preds = %287
  %293 = icmp eq i32 %291, -1
  %294 = select i1 %293, ptr null, ptr %277
  %295 = icmp eq i32 %291, -1
  br label %296

296:                                              ; preds = %276, %292
  %297 = phi ptr [ %294, %292 ], [ %277, %276 ]
  %298 = phi i1 [ %295, %292 ], [ false, %276 ]
  %299 = icmp ne ptr %278, null
  %300 = select i1 %299, i1 %6, i1 false
  br i1 %300, label %301, label %316

301:                                              ; preds = %296
  %302 = getelementptr inbounds nuw i8, ptr %278, i64 16
  %303 = load ptr, ptr %302, align 8, !tbaa !263
  %304 = getelementptr inbounds nuw i8, ptr %278, i64 24
  %305 = load ptr, ptr %304, align 8, !tbaa !265
  %306 = icmp ult ptr %303, %305
  br i1 %306, label %315, label %307, !prof !261

307:                                              ; preds = %301
  %308 = load ptr, ptr %278, align 8, !tbaa !27
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 72
  %310 = load ptr, ptr %309, align 8
  %311 = invoke noundef i32 %310(ptr noundef nonnull align 8 dereferenceable(64) %278)
          to label %312 unwind label %350

312:                                              ; preds = %307
  %313 = icmp eq i32 %311, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %312
  br i1 %298, label %402, label %318

315:                                              ; preds = %301, %312
  br i1 %298, label %318, label %402

316:                                              ; preds = %296
  %317 = xor i1 %140, %298
  br i1 %317, label %402, label %318

318:                                              ; preds = %314, %315, %316
  %319 = phi ptr [ %278, %315 ], [ %278, %316 ], [ null, %314 ]
  %320 = icmp eq i64 %281, %279
  br i1 %320, label %323, label %321

321:                                              ; preds = %318
  %322 = load ptr, ptr %0, align 8, !tbaa !20
  br label %360

323:                                              ; preds = %318
  %324 = add i64 %279, 1
  %325 = icmp ugt i64 %324, 9223372036854775806
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
          to label %327 unwind label %358

327:                                              ; preds = %326
  unreachable

328:                                              ; preds = %323
  %329 = icmp eq i64 %279, -1
  br i1 %329, label %335, label %330

330:                                              ; preds = %328
  %331 = shl nuw i64 %279, 1
  %332 = icmp ult i64 %324, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = tail call i64 @llvm.umin.i64(i64 %331, i64 9223372036854775806)
  br label %335

335:                                              ; preds = %333, %330, %328
  %336 = phi i64 [ %334, %333 ], [ %324, %330 ], [ 0, %328 ]
  %337 = add nuw nsw i64 %336, 1
  %338 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %337) #26
          to label %339 unwind label %354

339:                                              ; preds = %335
  %340 = load ptr, ptr %0, align 8, !tbaa !20
  switch i64 %279, label %343 [
    i64 1, label %341
    i64 0, label %344
  ]

341:                                              ; preds = %339
  %342 = load i8, ptr %340, align 1, !tbaa !19
  store i8 %342, ptr %338, align 1, !tbaa !19
  br label %344

343:                                              ; preds = %339
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %338, ptr align 1 %340, i64 %279, i1 false)
  br label %344

344:                                              ; preds = %339, %341, %343
  %345 = icmp eq ptr %340, %7
  br i1 %345, label %349, label %346

346:                                              ; preds = %344
  %347 = load i64, ptr %7, align 8, !tbaa !19
  %348 = add i64 %347, 1
  tail call void @_ZdlPvm(ptr noundef %340, i64 noundef %348) #27
  br label %349

349:                                              ; preds = %344, %346
  store ptr %338, ptr %0, align 8, !tbaa !20
  store i64 %336, ptr %7, align 8, !tbaa !19
  br label %360

350:                                              ; preds = %287, %307, %392
  %351 = landingpad { ptr, i32 }
          cleanup
  br label %407

352:                                              ; preds = %150, %175, %232
  %353 = landingpad { ptr, i32 }
          cleanup
  br label %407

354:                                              ; preds = %335
  %355 = landingpad { ptr, i32 }
          cleanup
  br label %407

356:                                              ; preds = %191
  %357 = landingpad { ptr, i32 }
          cleanup
  br label %407

358:                                              ; preds = %326
  %359 = landingpad { ptr, i32 }
          cleanup
  br label %407

360:                                              ; preds = %321, %349
  %361 = phi ptr [ %338, %349 ], [ %322, %321 ]
  %362 = phi i64 [ %336, %349 ], [ %279, %321 ]
  %363 = icmp eq ptr %297, null
  br i1 %363, label %381, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds nuw i8, ptr %297, i64 16
  %366 = load ptr, ptr %365, align 8, !tbaa !263
  %367 = getelementptr inbounds nuw i8, ptr %297, i64 24
  %368 = load ptr, ptr %367, align 8, !tbaa !265
  %369 = icmp ult ptr %366, %368
  br i1 %369, label %370, label %372, !prof !261

370:                                              ; preds = %364
  %371 = load i8, ptr %366, align 1, !tbaa !19
  br label %381

372:                                              ; preds = %364
  %373 = load ptr, ptr %297, align 8, !tbaa !27
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 72
  %375 = load ptr, ptr %374, align 8
  %376 = invoke noundef i32 %375(ptr noundef nonnull align 8 dereferenceable(64) %297)
          to label %377 unwind label %398

377:                                              ; preds = %372
  %378 = icmp eq i32 %376, -1
  %379 = select i1 %378, ptr null, ptr %297
  %380 = trunc i32 %376 to i8
  br label %381

381:                                              ; preds = %377, %370, %360
  %382 = phi ptr [ %297, %370 ], [ null, %360 ], [ %379, %377 ]
  %383 = phi i8 [ %371, %370 ], [ -1, %360 ], [ %380, %377 ]
  %384 = getelementptr inbounds nuw i8, ptr %361, i64 %281
  store i8 %383, ptr %384, align 1, !tbaa !19
  %385 = getelementptr inbounds nuw i8, ptr %382, i64 16
  %386 = load ptr, ptr %385, align 8, !tbaa !263
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 24
  %388 = load ptr, ptr %387, align 8, !tbaa !265
  %389 = icmp ult ptr %386, %388
  br i1 %389, label %390, label %392, !prof !261

390:                                              ; preds = %381
  %391 = getelementptr inbounds nuw i8, ptr %386, i64 1
  store ptr %391, ptr %385, align 8, !tbaa !263
  br label %397

392:                                              ; preds = %381
  %393 = load ptr, ptr %382, align 8, !tbaa !27
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 80
  %395 = load ptr, ptr %394, align 8
  %396 = invoke noundef i32 %395(ptr noundef nonnull align 8 dereferenceable(64) %382)
          to label %397 unwind label %350

397:                                              ; preds = %392, %390
  br label %276, !llvm.loop !268

398:                                              ; preds = %372
  %399 = landingpad { ptr, i32 }
          cleanup
  br label %407

400:                                              ; preds = %211
  %401 = landingpad { ptr, i32 }
          cleanup
  br label %407

402:                                              ; preds = %316, %315, %314, %184, %182, %166
  %403 = phi i64 [ %139, %166 ], [ %139, %182 ], [ %139, %184 ], [ %281, %314 ], [ %281, %315 ], [ %281, %316 ]
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %403, ptr %404, align 8, !tbaa !16
  %405 = load ptr, ptr %0, align 8, !tbaa !20
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 %403
  store i8 0, ptr %406, align 1, !tbaa !19
  ret void

407:                                              ; preds = %398, %400, %354, %356, %350, %352, %358
  %408 = phi { ptr, i32 } [ %359, %358 ], [ %357, %356 ], [ %353, %352 ], [ %351, %350 ], [ %355, %354 ], [ %399, %398 ], [ %401, %400 ]
  %409 = load ptr, ptr %0, align 8, !tbaa !20
  %410 = icmp eq ptr %409, %7
  br i1 %410, label %414, label %411

411:                                              ; preds = %407
  %412 = load i64, ptr %7, align 8, !tbaa !19
  %413 = add i64 %412, 1
  tail call void @_ZdlPvm(ptr noundef %409, i64 noundef %413) #27
  br label %414

414:                                              ; preds = %407, %411
  resume { ptr, i32 } %408
}

declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem11resize_fileERKNS_7__cxx114pathEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #15

declare noundef i64 @_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare i64 @_ZNSt10filesystem15last_write_timeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8, !tbaa !19
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #27
  br label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %17, %22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !19
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #27
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %12, align 8, !tbaa !19
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #27
  br label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8, !tbaa !19
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %19, i64 noundef %24) #27
  br label %25

25:                                               ; preds = %17, %22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #27
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringExEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = lshr i64 %2, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !20
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

18:                                               ; preds = %15
  %19 = shl nuw i64 %11, 1
  %20 = icmp ult i64 %1, %19
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 9223372036854775806)
  %22 = select i1 %20, i64 %21, i64 %1
  %23 = add nuw nsw i64 %22, 1
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #26
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !16
  %27 = icmp ult i64 %26, 9223372036854775807
  tail call void @llvm.assume(i1 %27)
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i8, ptr %7, align 1, !tbaa !19
  store i8 %30, ptr %24, align 1, !tbaa !19
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
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %37) #27
  br label %38

38:                                               ; preds = %36, %34
  store ptr %24, ptr %0, align 8, !tbaa !20
  store i64 %22, ptr %8, align 8, !tbaa !19
  br label %39

39:                                               ; preds = %4, %38
  %40 = phi ptr [ %7, %4 ], [ %24, %38 ]
  store i8 45, ptr %40, align 1, !tbaa !19
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
  %52 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %50
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = zext i32 %48 to i64
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !19
  %57 = load i8, ptr %52, align 2, !tbaa !19
  %58 = add i32 %48, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %42, i64 %59
  store i8 %57, ptr %60, align 1, !tbaa !19
  %61 = add i32 %48, -2
  %62 = icmp ugt i64 %47, 9999
  br i1 %62, label %46, label %63, !llvm.loop !269

63:                                               ; preds = %46, %39
  %64 = phi i64 [ %3, %39 ], [ %51, %46 ]
  %65 = icmp samesign ugt i64 %64, 9
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = shl nuw nsw i64 %64, 1
  %68 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !19
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !19
  %72 = load i8, ptr %68, align 2, !tbaa !19
  br label %76

73:                                               ; preds = %63
  %74 = trunc nuw nsw i64 %64 to i8
  %75 = or disjoint i8 %74, 48
  br label %76

76:                                               ; preds = %66, %73
  %77 = phi i8 [ %75, %73 ], [ %72, %66 ]
  store i8 %77, ptr %42, align 1, !tbaa !19
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %78, align 8, !tbaa !16
  %79 = load ptr, ptr %0, align 8, !tbaa !20
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %1
  store i8 0, ptr %80, align 1, !tbaa !19
  ret void
}

declare noundef zeroext i1 @_ZNSt10filesystem16create_directoryERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !240
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !12
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #25
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  store ptr %19, ptr %0, align 8, !tbaa !20
  store i64 %4, ptr %7, align 8, !tbaa !19
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !19
  store i8 %23, ptr %21, align 1, !tbaa !19
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !19
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %29 unwind label %31

29:                                               ; preds = %25
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %30 unwind label %33

30:                                               ; preds = %29
  ret void

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %28, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #17
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !35
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !20
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %7, align 8, !tbaa !19
  %45 = add i64 %44, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %45) #27
  br label %46

46:                                               ; preds = %39, %43
  resume { ptr, i32 } %40
}

declare noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare noundef i64 @_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare noundef zeroext i1 @_ZNSt10filesystem9copy_fileERKNS_7__cxx114pathES3_NS_12copy_optionsE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load atomic i64, ptr %6 acquire, align 8
  %8 = icmp eq i64 %7, 4294967297
  %9 = trunc i64 %7 to i32
  br i1 %8, label %10, label %18

10:                                               ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !116
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %11, align 4, !tbaa !118
  %12 = load ptr, ptr %3, align 8, !tbaa !27
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %15 = load ptr, ptr %3, align 8, !tbaa !27
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %29

18:                                               ; preds = %5
  %19 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %9, -1
  store i32 %22, ptr %6, align 4, !tbaa !5
  br label %25

23:                                               ; preds = %18
  %24 = atomicrmw volatile add ptr %6, i32 -1 acq_rel, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %9, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29, !prof !119

28:                                               ; preds = %25
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %29

29:                                               ; preds = %1, %10, %25, %28
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !16
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !12
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %8, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %109 unwind label %10

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #28
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = ptrtoint ptr %15 to i64
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 3
  switch i8 %18, label %102 [
    i8 3, label %19
    i8 0, label %43
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %20, ptr %0, align 8, !tbaa !12
  %21 = load ptr, ptr %1, align 8, !tbaa !20
  %22 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = icmp samesign ugt i64 %4, 15
  %24 = add nuw nsw i64 %4, 1
  br i1 %23, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #26
  store ptr %26, ptr %0, align 8, !tbaa !20
  store i64 %4, ptr %20, align 8, !tbaa !19
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %26, %25 ], [ %20, %19 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 %24, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %29, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %109 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %0, align 8, !tbaa !20
  %34 = icmp eq ptr %33, %20
  br i1 %34, label %41, label %35

35:                                               ; preds = %98, %31
  %36 = phi ptr [ %20, %31 ], [ %77, %98 ]
  %37 = phi ptr [ %33, %31 ], [ %100, %98 ]
  %38 = phi { ptr, i32 } [ %32, %31 ], [ %99, %98 ]
  %39 = load i64, ptr %36, align 8, !tbaa !19
  %40 = add i64 %39, 1
  tail call void @_ZdlPvm(ptr noundef %37, i64 noundef %40) #27
  br label %41

41:                                               ; preds = %35, %98, %31
  %42 = phi { ptr, i32 } [ %32, %31 ], [ %99, %98 ], [ %38, %35 ]
  resume { ptr, i32 } %42

43:                                               ; preds = %13
  %44 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %44)
  %45 = load ptr, ptr %1, align 8, !tbaa !20
  %46 = getelementptr i8, ptr %45, i64 %4
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !19
  %49 = icmp eq i8 %48, 47
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %51, ptr %0, align 8, !tbaa !12
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %52, align 8, !tbaa !16
  store i8 0, ptr %51, align 8, !tbaa !19
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %109 unwind label %54

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #28
  unreachable

57:                                               ; preds = %43
  %58 = and i64 %16, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = tail call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #17, !noalias !270
  %62 = load ptr, ptr %14, align 8, !tbaa !35
  %63 = freeze ptr %62
  %64 = ptrtoint ptr %63 to i64
  %65 = and i64 %64, 3
  %66 = icmp eq i64 %65, 0
  %67 = getelementptr inbounds i8, ptr %61, i64 -48
  %68 = select i1 %66, ptr %67, ptr %1
  br label %69

69:                                               ; preds = %60, %57
  %70 = phi ptr [ %1, %57 ], [ %68, %60 ]
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 3
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %77, ptr %0, align 8, !tbaa !12
  %78 = load ptr, ptr %70, align 8, !tbaa !20
  %79 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %80 = load i64, ptr %79, align 8, !tbaa !16
  %81 = icmp ult i64 %80, 9223372036854775807
  tail call void @llvm.assume(i1 %81)
  %82 = icmp samesign ugt i64 %80, 15
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = add nuw nsw i64 %80, 1
  %85 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %84) #26
  store ptr %85, ptr %0, align 8, !tbaa !20
  store i64 %80, ptr %77, align 8, !tbaa !19
  br label %92

86:                                               ; preds = %76
  %87 = icmp eq i64 %80, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = add nuw nsw i64 %80, 1
  br label %92

90:                                               ; preds = %86
  %91 = load i8, ptr %78, align 1, !tbaa !19
  store i8 %91, ptr %77, align 8, !tbaa !19
  br label %95

92:                                               ; preds = %88, %83
  %93 = phi i64 [ %89, %88 ], [ %84, %83 ]
  %94 = phi ptr [ %77, %88 ], [ %85, %83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %94, ptr noundef nonnull align 1 dereferenceable(1) %78, i64 %93, i1 false)
  br label %95

95:                                               ; preds = %92, %90
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %80, ptr %96, align 8, !tbaa !16
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %109 unwind label %98

98:                                               ; preds = %95
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load ptr, ptr %0, align 8, !tbaa !20
  %101 = icmp eq ptr %100, %77
  br i1 %101, label %41, label %35

102:                                              ; preds = %69, %13
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %103, ptr %0, align 8, !tbaa !12
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %104, align 8, !tbaa !16
  store i8 0, ptr %103, align 8, !tbaa !19
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %105)
          to label %109 unwind label %106

106:                                              ; preds = %102
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  tail call void @__clang_call_terminate(ptr %108) #28
  unreachable

109:                                              ; preds = %95, %102, %50, %27, %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %9, align 8, !tbaa !19
  %13 = add i64 %12, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %13) #27
  br label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %6, !llvm.loop !138

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !137
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %20 to i64
  %27 = sub i64 %25, %26
  tail call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %27) #27
  br label %28

28:                                               ; preds = %19, %22
  ret void
}

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !27
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %5, align 4, !tbaa !5
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %5, align 4, !tbaa !5
  br label %13

11:                                               ; preds = %1
  %12 = atomicrmw volatile add ptr %5, i32 -1 acq_rel, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %20

20:                                               ; preds = %13, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = load ptr, ptr %0, align 8, !tbaa !137
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775776
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %17 = shl nuw nsw i64 %16, 5
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !12
  %21 = load ptr, ptr %1, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !16
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !20
  %30 = load i64, ptr %22, align 8, !tbaa !19
  store i64 %30, ptr %20, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !16
  store ptr %22, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %35, align 8, !tbaa !16
  store i8 0, ptr %22, align 8, !tbaa !19
  %38 = icmp eq ptr %5, %4
  br i1 %38, label %63, label %39

39:                                               ; preds = %33, %55
  %40 = phi ptr [ %61, %55 ], [ %18, %33 ]
  %41 = phi ptr [ %60, %55 ], [ %5, %33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %42, ptr %40, align 8, !tbaa !12, !alias.scope !273, !noalias !276
  %43 = load ptr, ptr %41, align 8, !tbaa !20, !alias.scope !276, !noalias !273
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !16, !alias.scope !276, !noalias !273
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false), !alias.scope !278
  br label %55

51:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !20, !alias.scope !273, !noalias !276
  %52 = load i64, ptr %44, align 8, !tbaa !19, !alias.scope !276, !noalias !273
  store i64 %52, ptr %42, align 8, !tbaa !19, !alias.scope !273, !noalias !276
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !16, !alias.scope !276, !noalias !273
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %48, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %56, ptr %59, align 8, !tbaa !16, !alias.scope !273, !noalias !276
  store ptr %44, ptr %41, align 8, !tbaa !20, !alias.scope !276, !noalias !273
  store i64 0, ptr %57, align 8, !tbaa !16, !alias.scope !276, !noalias !273
  store i8 0, ptr %44, align 8, !tbaa !19, !alias.scope !276, !noalias !273
  %60 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %62 = icmp eq ptr %60, %4
  br i1 %62, label %63, label %39, !llvm.loop !279

63:                                               ; preds = %55, %33
  %64 = phi ptr [ %18, %33 ], [ %61, %55 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = icmp eq ptr %5, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !130
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %69, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %70) #27
  br label %71

71:                                               ; preds = %63, %67
  %72 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %18, ptr %0, align 8, !tbaa !137
  store ptr %72, ptr %3, align 8, !tbaa !128
  %73 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %18, i64 %16
  store ptr %73, ptr %65, align 8, !tbaa !130
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca [16 x i8], align 16
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = ptrtoint ptr %0 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %7
  %10 = ashr exact i64 %9, 5
  %11 = icmp sgt i64 %10, 16
  br i1 %11, label %12, label %138

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %15

15:                                               ; preds = %12, %132
  %16 = phi i64 [ %10, %12 ], [ %136, %132 ]
  %17 = phi i64 [ %2, %12 ], [ %133, %132 ]
  %18 = phi ptr [ %1, %12 ], [ %38, %132 ]
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %18, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi ptr [ %23, %21 ], [ %18, %20 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 -32
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr nonnull %23, ptr nonnull %23, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %7
  %26 = icmp sgt i64 %25, 32
  br i1 %26, label %21, label %27, !llvm.loop !280

27:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %138

28:                                               ; preds = %15
  %29 = lshr i64 %16, 1
  %30 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %0, i64 %29
  %31 = getelementptr inbounds i8, ptr %18, i64 -32
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr nonnull %13, ptr %30, ptr nonnull %31)
  br label %32

32:                                               ; preds = %107, %28
  %33 = phi ptr [ %13, %28 ], [ %57, %107 ]
  %34 = phi ptr [ %18, %28 ], [ %62, %107 ]
  %35 = load i64, ptr %14, align 8, !tbaa !16
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  br label %37

37:                                               ; preds = %54, %32
  %38 = phi ptr [ %33, %32 ], [ %57, %54 ]
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !16
  %41 = icmp ult i64 %40, 9223372036854775807
  tail call void @llvm.assume(i1 %41)
  %42 = tail call i64 @llvm.umin.i64(i64 %35, i64 %40)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %0, align 8, !tbaa !20
  %46 = load ptr, ptr %38, align 8, !tbaa !20
  %47 = tail call i32 @memcmp(ptr noundef %46, ptr noundef %45, i64 noundef %42) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %37
  %50 = sub nsw i64 %40, %35
  %51 = tail call i64 @llvm.smax.i64(i64 %50, i64 -2147483648)
  %52 = tail call i64 @llvm.smin.i64(i64 %51, i64 2147483647)
  %53 = trunc nsw i64 %52 to i32
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i32 [ %47, %44 ], [ %53, %49 ]
  %56 = icmp slt i32 %55, 0
  %57 = getelementptr inbounds nuw i8, ptr %38, i64 32
  br i1 %56, label %37, label %58, !llvm.loop !281

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %38, i64 8
  br label %60

60:                                               ; preds = %58, %78
  %61 = phi ptr [ %62, %78 ], [ %34, %58 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 -32
  %63 = getelementptr inbounds i8, ptr %61, i64 -24
  %64 = load i64, ptr %63, align 8, !tbaa !16
  %65 = icmp ult i64 %64, 9223372036854775807
  tail call void @llvm.assume(i1 %65)
  %66 = tail call i64 @llvm.umin.i64(i64 %64, i64 %35)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr %62, align 8, !tbaa !20
  %70 = load ptr, ptr %0, align 8, !tbaa !20
  %71 = tail call i32 @memcmp(ptr noundef %70, ptr noundef %69, i64 noundef %66) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %60
  %74 = sub nsw i64 %35, %64
  %75 = tail call i64 @llvm.smax.i64(i64 %74, i64 -2147483648)
  %76 = tail call i64 @llvm.smin.i64(i64 %75, i64 2147483647)
  %77 = trunc nsw i64 %76 to i32
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i32 [ %71, %68 ], [ %77, %73 ]
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %60, label %81, !llvm.loop !282

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %61, i64 -24
  %83 = icmp ult ptr %38, %62
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load ptr, ptr %38, align 8, !tbaa !20
  %86 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = icmp samesign ult i64 %40, 16
  tail call void @llvm.assume(i1 %89)
  %90 = load ptr, ptr %62, align 8, !tbaa !20
  %91 = getelementptr inbounds i8, ptr %61, i64 -16
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = icmp samesign ult i64 %64, 16
  tail call void @llvm.assume(i1 %94)
  %95 = icmp eq i64 %40, 0
  %96 = icmp eq i64 %64, 0
  br i1 %95, label %101, label %97

97:                                               ; preds = %93
  br i1 %96, label %108, label %98

98:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %99 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %91, i64 %99, i1 false)
  %100 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %100, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 %99, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %127

101:                                              ; preds = %93
  br i1 %96, label %127, label %102

102:                                              ; preds = %101
  %103 = add nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %91, i64 %103, i1 false)
  %104 = load i64, ptr %82, align 8, !tbaa !16
  %105 = icmp ult i64 %104, 9223372036854775807
  tail call void @llvm.assume(i1 %105)
  store i64 %104, ptr %59, align 8, !tbaa !16
  store i64 0, ptr %82, align 8, !tbaa !16
  %106 = load ptr, ptr %62, align 8, !tbaa !20
  store i8 0, ptr %106, align 1, !tbaa !19
  br label %107

107:                                              ; preds = %102, %108, %127
  br label %32, !llvm.loop !283

108:                                              ; preds = %97
  %109 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %109, i1 false)
  %110 = load i64, ptr %59, align 8, !tbaa !16
  %111 = icmp ult i64 %110, 9223372036854775807
  tail call void @llvm.assume(i1 %111)
  store i64 %110, ptr %82, align 8, !tbaa !16
  store i64 0, ptr %59, align 8, !tbaa !16
  %112 = load ptr, ptr %38, align 8, !tbaa !20
  store i8 0, ptr %112, align 1, !tbaa !19
  br label %107

113:                                              ; preds = %88
  %114 = load i64, ptr %91, align 8, !tbaa !19
  %115 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %115, i1 false)
  store ptr %90, ptr %38, align 8, !tbaa !20
  store ptr %91, ptr %62, align 8, !tbaa !20
  store i64 %114, ptr %86, align 8, !tbaa !19
  br label %127

116:                                              ; preds = %84
  %117 = load i64, ptr %86, align 8, !tbaa !19
  %118 = load ptr, ptr %62, align 8, !tbaa !20
  %119 = getelementptr inbounds i8, ptr %61, i64 -16
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = icmp samesign ult i64 %64, 16
  tail call void @llvm.assume(i1 %122)
  %123 = add nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %119, i64 %123, i1 false)
  store ptr %85, ptr %62, align 8, !tbaa !20
  store ptr %86, ptr %38, align 8, !tbaa !20
  br label %126

124:                                              ; preds = %116
  store ptr %118, ptr %38, align 8, !tbaa !20
  store ptr %85, ptr %62, align 8, !tbaa !20
  %125 = load i64, ptr %119, align 8, !tbaa !19
  store i64 %125, ptr %86, align 8, !tbaa !19
  br label %126

126:                                              ; preds = %124, %121
  store i64 %117, ptr %119, align 8, !tbaa !19
  br label %127

127:                                              ; preds = %126, %113, %101, %98
  %128 = load i64, ptr %59, align 8, !tbaa !16
  %129 = icmp ult i64 %128, 9223372036854775807
  tail call void @llvm.assume(i1 %129)
  %130 = load i64, ptr %82, align 8, !tbaa !16
  %131 = icmp ult i64 %130, 9223372036854775807
  tail call void @llvm.assume(i1 %131)
  store i64 %130, ptr %59, align 8, !tbaa !16
  store i64 %128, ptr %82, align 8, !tbaa !16
  br label %107

132:                                              ; preds = %81
  %133 = add nsw i64 %17, -1
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %38, ptr %18, i64 noundef %133)
  %134 = ptrtoint ptr %38 to i64
  %135 = sub i64 %134, %7
  %136 = ashr exact i64 %135, 5
  %137 = icmp sgt i64 %136, 16
  br i1 %137, label %15, label %138, !llvm.loop !284

138:                                              ; preds = %132, %3, %27
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %74, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -2
  %13 = lshr i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %18

18:                                               ; preds = %59, %11
  %19 = phi i64 [ %13, %11 ], [ %53, %59 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !16
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %18
  store ptr %21, ptr %4, align 8, !tbaa !20
  %30 = load i64, ptr %22, align 8, !tbaa !19
  store i64 %30, ptr %14, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %14, %24 ], [ %21, %29 ]
  %35 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %37 = icmp ult i64 %35, 9223372036854775807
  call void @llvm.assume(i1 %37)
  store ptr %22, ptr %20, align 8, !tbaa !20
  store i64 0, ptr %36, align 8, !tbaa !16
  store i8 0, ptr %22, align 8, !tbaa !19
  store ptr %16, ptr %5, align 8, !tbaa !12
  %38 = icmp eq ptr %34, %14
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = icmp samesign ult i64 %35, 16
  call void @llvm.assume(i1 %40)
  %41 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %41, i1 false)
  br label %44

42:                                               ; preds = %33
  store ptr %34, ptr %5, align 8, !tbaa !20
  %43 = load i64, ptr %14, align 8, !tbaa !19
  store i64 %43, ptr %16, align 8, !tbaa !19
  br label %44

44:                                               ; preds = %39, %42
  store i64 %35, ptr %17, align 8, !tbaa !16
  store ptr %14, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %15, align 8, !tbaa !16
  store i8 0, ptr %14, align 8, !tbaa !19
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef %19, i64 noundef %9, ptr noundef nonnull %5)
          to label %45 unwind label %60

45:                                               ; preds = %44
  %46 = load ptr, ptr %5, align 8, !tbaa !20
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, ptr %16, align 8, !tbaa !19
  %50 = add i64 %49, 1
  call void @_ZdlPvm(ptr noundef %46, i64 noundef %50) #27
  br label %51

51:                                               ; preds = %45, %48
  %52 = icmp eq i64 %19, 0
  %53 = add nsw i64 %19, -1
  %54 = load ptr, ptr %4, align 8, !tbaa !20
  %55 = icmp eq ptr %54, %14
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i64, ptr %14, align 8, !tbaa !19
  %58 = add i64 %57, 1
  call void @_ZdlPvm(ptr noundef %54, i64 noundef %58) #27
  br label %59

59:                                               ; preds = %51, %56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %52, label %74, label %18, !llvm.loop !285

60:                                               ; preds = %44
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = load ptr, ptr %5, align 8, !tbaa !20
  %63 = icmp eq ptr %62, %16
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %16, align 8, !tbaa !19
  %66 = add i64 %65, 1
  call void @_ZdlPvm(ptr noundef %62, i64 noundef %66) #27
  br label %67

67:                                               ; preds = %60, %64
  %68 = load ptr, ptr %4, align 8, !tbaa !20
  %69 = icmp eq ptr %68, %14
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, ptr %14, align 8, !tbaa !19
  %72 = add i64 %71, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %72) #27
  br label %73

73:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %61

74:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !12
  %8 = load ptr, ptr %2, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !16
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %20

16:                                               ; preds = %4
  store ptr %8, ptr %5, align 8, !tbaa !20
  %17 = load i64, ptr %9, align 8, !tbaa !19
  store i64 %17, ptr %7, align 8, !tbaa !19
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i64 [ %19, %16 ], [ %13, %11 ]
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %23)
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %21, ptr %24, align 8, !tbaa !16
  store ptr %9, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %22, align 8, !tbaa !16
  store i8 0, ptr %9, align 8, !tbaa !19
  %25 = load ptr, ptr %0, align 8, !tbaa !20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !16
  %31 = icmp ult i64 %30, 16
  call void @llvm.assume(i1 %31)
  %32 = icmp eq ptr %0, %2
  br i1 %32, label %47, label %33, !prof !119

33:                                               ; preds = %28
  switch i64 %30, label %36 [
    i64 0, label %37
    i64 1, label %34
  ]

34:                                               ; preds = %33
  %35 = load i8, ptr %25, align 1, !tbaa !19
  store i8 %35, ptr %9, align 1, !tbaa !19
  br label %37

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %25, i64 %30, i1 false)
  br label %37

37:                                               ; preds = %36, %34, %33
  %38 = load i64, ptr %29, align 8, !tbaa !16
  %39 = icmp ult i64 %38, 9223372036854775807
  call void @llvm.assume(i1 %39)
  store i64 %38, ptr %22, align 8, !tbaa !16
  %40 = getelementptr inbounds nuw i8, ptr %9, i64 %38
  store i8 0, ptr %40, align 1, !tbaa !19
  %41 = load ptr, ptr %0, align 8, !tbaa !20
  br label %47

42:                                               ; preds = %20
  store ptr %25, ptr %2, align 8, !tbaa !20
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !16
  %45 = icmp ult i64 %44, 9223372036854775807
  call void @llvm.assume(i1 %45)
  store i64 %44, ptr %22, align 8, !tbaa !16
  %46 = load i64, ptr %26, align 8, !tbaa !19
  store i64 %46, ptr %9, align 8, !tbaa !19
  store ptr %26, ptr %0, align 8, !tbaa !20
  br label %47

47:                                               ; preds = %28, %37, %42
  %48 = phi ptr [ %41, %37 ], [ %26, %42 ], [ %25, %28 ]
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %49, align 8, !tbaa !16
  store i8 0, ptr %48, align 1, !tbaa !19
  %50 = ptrtoint ptr %1 to i64
  %51 = ptrtoint ptr %0 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 5
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %54, ptr %6, align 8, !tbaa !12
  %55 = load ptr, ptr %5, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %7
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i64, ptr %24, align 8, !tbaa !16
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %47
  store ptr %55, ptr %6, align 8, !tbaa !20
  %62 = load i64, ptr %7, align 8, !tbaa !19
  store i64 %62, ptr %54, align 8, !tbaa !19
  %63 = load i64, ptr %24, align 8, !tbaa !16
  br label %64

64:                                               ; preds = %57, %61
  %65 = phi i64 [ %58, %57 ], [ %63, %61 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !16
  store ptr %7, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %24, align 8, !tbaa !16
  store i8 0, ptr %7, align 8, !tbaa !19
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %53, ptr noundef nonnull %6)
          to label %68 unwind label %81

68:                                               ; preds = %64
  %69 = load ptr, ptr %6, align 8, !tbaa !20
  %70 = icmp eq ptr %69, %54
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %54, align 8, !tbaa !19
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %73) #27
  br label %74

74:                                               ; preds = %68, %71
  %75 = load ptr, ptr %5, align 8, !tbaa !20
  %76 = icmp eq ptr %75, %7
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %7, align 8, !tbaa !19
  %79 = add i64 %78, 1
  call void @_ZdlPvm(ptr noundef %75, i64 noundef %79) #27
  br label %80

80:                                               ; preds = %74, %77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

81:                                               ; preds = %64
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load ptr, ptr %6, align 8, !tbaa !20
  %84 = icmp eq ptr %83, %54
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i64, ptr %54, align 8, !tbaa !19
  %87 = add i64 %86, 1
  call void @_ZdlPvm(ptr noundef %83, i64 noundef %87) #27
  br label %88

88:                                               ; preds = %81, %85
  %89 = load ptr, ptr %5, align 8, !tbaa !20
  %90 = icmp eq ptr %89, %7
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i64, ptr %7, align 8, !tbaa !19
  %93 = add i64 %92, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %93) #27
  br label %94

94:                                               ; preds = %88, %91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %82
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp slt i64 %1, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %4, %78
  %11 = phi i64 [ %38, %78 ], [ %1, %4 ]
  %12 = shl i64 %11, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %13
  %15 = or disjoint i64 %12, 1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !16
  %19 = icmp ult i64 %18, 9223372036854775807
  tail call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !16
  %22 = icmp ult i64 %21, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = tail call i64 @llvm.umin.i64(i64 %21, i64 %18)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %16, align 8, !tbaa !20
  %27 = load ptr, ptr %14, align 8, !tbaa !20
  %28 = tail call i32 @memcmp(ptr noundef %27, ptr noundef %26, i64 noundef %23) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %10
  %31 = sub nsw i64 %18, %21
  %32 = tail call i64 @llvm.smax.i64(i64 %31, i64 -2147483648)
  %33 = tail call i64 @llvm.smin.i64(i64 %32, i64 2147483647)
  %34 = trunc nsw i64 %33 to i32
  br label %35

35:                                               ; preds = %25, %30
  %36 = phi i32 [ %28, %25 ], [ %34, %30 ]
  %37 = icmp slt i32 %36, 0
  %38 = select i1 %37, i64 %15, i64 %13
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %38
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %11
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %43 = icmp eq ptr %41, %42
  %44 = load ptr, ptr %39, align 8, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %46 = icmp eq ptr %44, %45
  br i1 %43, label %47, label %48

47:                                               ; preds = %35
  br i1 %46, label %49, label %67

48:                                               ; preds = %35
  br i1 %46, label %49, label %65

49:                                               ; preds = %48, %47
  %50 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !16
  %52 = icmp ult i64 %51, 16
  tail call void @llvm.assume(i1 %52)
  %53 = icmp eq i64 %38, %11
  br i1 %53, label %78, label %54, !prof !119

54:                                               ; preds = %49
  switch i64 %51, label %57 [
    i64 0, label %58
    i64 1, label %55
  ]

55:                                               ; preds = %54
  %56 = load i8, ptr %44, align 1, !tbaa !19
  store i8 %56, ptr %41, align 1, !tbaa !19
  br label %58

57:                                               ; preds = %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %44, i64 %51, i1 false)
  br label %58

58:                                               ; preds = %57, %55, %54
  %59 = load i64, ptr %50, align 8, !tbaa !16
  %60 = icmp ult i64 %59, 9223372036854775807
  tail call void @llvm.assume(i1 %60)
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %59, ptr %61, align 8, !tbaa !16
  %62 = load ptr, ptr %40, align 8, !tbaa !20
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 %59
  store i8 0, ptr %63, align 1, !tbaa !19
  %64 = load ptr, ptr %39, align 8, !tbaa !20
  br label %78

65:                                               ; preds = %48
  %66 = load i64, ptr %42, align 8, !tbaa !19
  br label %67

67:                                               ; preds = %65, %47
  %68 = phi ptr [ %41, %65 ], [ null, %47 ]
  %69 = phi i64 [ %66, %65 ], [ undef, %47 ]
  store ptr %44, ptr %40, align 8, !tbaa !20
  %70 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %71 = load i64, ptr %70, align 8, !tbaa !16
  %72 = icmp ult i64 %71, 9223372036854775807
  tail call void @llvm.assume(i1 %72)
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %71, ptr %73, align 8, !tbaa !16
  %74 = load i64, ptr %45, align 8, !tbaa !19
  store i64 %74, ptr %42, align 8, !tbaa !19
  %75 = icmp eq ptr %68, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  store ptr %68, ptr %39, align 8, !tbaa !20
  store i64 %69, ptr %45, align 8, !tbaa !19
  br label %78

77:                                               ; preds = %67
  store ptr %45, ptr %39, align 8, !tbaa !20
  br label %78

78:                                               ; preds = %49, %58, %76, %77
  %79 = phi ptr [ %68, %76 ], [ %45, %77 ], [ %44, %49 ], [ %64, %58 ]
  %80 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %80, align 8, !tbaa !16
  store i8 0, ptr %79, align 1, !tbaa !19
  %81 = icmp slt i64 %38, %8
  br i1 %81, label %10, label %82, !llvm.loop !286

82:                                               ; preds = %78, %4
  %83 = phi i64 [ %1, %4 ], [ %38, %78 ]
  %84 = and i64 %2, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %135

86:                                               ; preds = %82
  %87 = add nsw i64 %2, -2
  %88 = ashr exact i64 %87, 1
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = shl nsw i64 %83, 1
  %92 = or disjoint i64 %91, 1
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %92
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %83
  %95 = load ptr, ptr %94, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 16
  %97 = icmp eq ptr %95, %96
  %98 = load ptr, ptr %93, align 8, !tbaa !20
  %99 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %100 = icmp eq ptr %98, %99
  br i1 %97, label %101, label %102

101:                                              ; preds = %90
  br i1 %100, label %103, label %121

102:                                              ; preds = %90
  br i1 %100, label %103, label %119

103:                                              ; preds = %102, %101
  %104 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %105 = load i64, ptr %104, align 8, !tbaa !16
  %106 = icmp ult i64 %105, 16
  tail call void @llvm.assume(i1 %106)
  %107 = icmp eq i64 %92, %83
  br i1 %107, label %132, label %108, !prof !119

108:                                              ; preds = %103
  switch i64 %105, label %111 [
    i64 0, label %112
    i64 1, label %109
  ]

109:                                              ; preds = %108
  %110 = load i8, ptr %98, align 1, !tbaa !19
  store i8 %110, ptr %95, align 1, !tbaa !19
  br label %112

111:                                              ; preds = %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr align 1 %98, i64 %105, i1 false)
  br label %112

112:                                              ; preds = %111, %109, %108
  %113 = load i64, ptr %104, align 8, !tbaa !16
  %114 = icmp ult i64 %113, 9223372036854775807
  tail call void @llvm.assume(i1 %114)
  %115 = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i64 %113, ptr %115, align 8, !tbaa !16
  %116 = load ptr, ptr %94, align 8, !tbaa !20
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %113
  store i8 0, ptr %117, align 1, !tbaa !19
  %118 = load ptr, ptr %93, align 8, !tbaa !20
  br label %132

119:                                              ; preds = %102
  %120 = load i64, ptr %96, align 8, !tbaa !19
  br label %121

121:                                              ; preds = %119, %101
  %122 = phi ptr [ %95, %119 ], [ null, %101 ]
  %123 = phi i64 [ %120, %119 ], [ undef, %101 ]
  store ptr %98, ptr %94, align 8, !tbaa !20
  %124 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %125 = load i64, ptr %124, align 8, !tbaa !16
  %126 = icmp ult i64 %125, 9223372036854775807
  tail call void @llvm.assume(i1 %126)
  %127 = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i64 %125, ptr %127, align 8, !tbaa !16
  %128 = load i64, ptr %99, align 8, !tbaa !19
  store i64 %128, ptr %96, align 8, !tbaa !19
  %129 = icmp eq ptr %122, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  store ptr %122, ptr %93, align 8, !tbaa !20
  store i64 %123, ptr %99, align 8, !tbaa !19
  br label %132

131:                                              ; preds = %121
  store ptr %99, ptr %93, align 8, !tbaa !20
  br label %132

132:                                              ; preds = %103, %112, %130, %131
  %133 = phi ptr [ %122, %130 ], [ %99, %131 ], [ %98, %103 ], [ %118, %112 ]
  %134 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i64 0, ptr %134, align 8, !tbaa !16
  store i8 0, ptr %133, align 1, !tbaa !19
  br label %135

135:                                              ; preds = %132, %86, %82
  %136 = phi i64 [ %92, %132 ], [ %83, %86 ], [ %83, %82 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %137 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %137, ptr %6, align 8, !tbaa !12
  %138 = load ptr, ptr %3, align 8, !tbaa !20
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %143 = load i64, ptr %142, align 8, !tbaa !16
  %144 = icmp ult i64 %143, 16
  call void @llvm.assume(i1 %144)
  %145 = add nuw nsw i64 %143, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %137, ptr noundef nonnull align 8 dereferenceable(1) %139, i64 %145, i1 false)
  br label %150

146:                                              ; preds = %135
  store ptr %138, ptr %6, align 8, !tbaa !20
  %147 = load i64, ptr %139, align 8, !tbaa !19
  store i64 %147, ptr %137, align 8, !tbaa !19
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %149 = load i64, ptr %148, align 8, !tbaa !16
  br label %150

150:                                              ; preds = %141, %146
  %151 = phi i64 [ %143, %141 ], [ %149, %146 ]
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %153 = icmp ult i64 %151, 9223372036854775807
  call void @llvm.assume(i1 %153)
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %151, ptr %154, align 8, !tbaa !16
  store ptr %139, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %152, align 8, !tbaa !16
  store i8 0, ptr %139, align 8, !tbaa !19
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %136, i64 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %155 unwind label %162

155:                                              ; preds = %150
  %156 = load ptr, ptr %6, align 8, !tbaa !20
  %157 = icmp eq ptr %156, %137
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i64, ptr %137, align 8, !tbaa !19
  %160 = add i64 %159, 1
  call void @_ZdlPvm(ptr noundef %156, i64 noundef %160) #27
  br label %161

161:                                              ; preds = %155, %158
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

162:                                              ; preds = %150
  %163 = landingpad { ptr, i32 }
          cleanup
  %164 = load ptr, ptr %6, align 8, !tbaa !20
  %165 = icmp eq ptr %164, %137
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i64, ptr %137, align 8, !tbaa !19
  %168 = add i64 %167, 1
  call void @_ZdlPvm(ptr noundef %164, i64 noundef %168) #27
  br label %169

169:                                              ; preds = %162, %166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %163
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = icmp sgt i64 %1, %2
  br i1 %6, label %7, label %71

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %7, %68
  %10 = phi i64 [ %1, %7 ], [ %12, %68 ]
  %11 = add nsw i64 %10, -1
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !16
  %16 = icmp ult i64 %15, 9223372036854775807
  tail call void @llvm.assume(i1 %16)
  %17 = load i64, ptr %8, align 8, !tbaa !16
  %18 = icmp ult i64 %17, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = tail call i64 @llvm.umin.i64(i64 %17, i64 %15)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %3, align 8, !tbaa !20
  %23 = load ptr, ptr %13, align 8, !tbaa !20
  %24 = tail call i32 @memcmp(ptr noundef %23, ptr noundef %22, i64 noundef %19) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %9
  %27 = sub nsw i64 %15, %17
  %28 = tail call i64 @llvm.smax.i64(i64 %27, i64 -2147483648)
  %29 = tail call i64 @llvm.smin.i64(i64 %28, i64 2147483647)
  %30 = trunc nsw i64 %29 to i32
  br label %31

31:                                               ; preds = %21, %26
  %32 = phi i32 [ %24, %21 ], [ %30, %26 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %10
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %38 = icmp eq ptr %36, %37
  %39 = load ptr, ptr %13, align 8, !tbaa !20
  %40 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %41 = icmp eq ptr %39, %40
  br i1 %38, label %42, label %46

42:                                               ; preds = %34
  br i1 %41, label %47, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %39, ptr %35, align 8, !tbaa !20
  store i64 %15, ptr %44, align 8, !tbaa !16
  %45 = load i64, ptr %40, align 8, !tbaa !19
  store i64 %45, ptr %37, align 8, !tbaa !19
  br label %67

46:                                               ; preds = %34
  br i1 %41, label %47, label %61

47:                                               ; preds = %46, %42
  %48 = icmp samesign ult i64 %15, 16
  tail call void @llvm.assume(i1 %48)
  %49 = icmp eq i64 %12, %10
  br i1 %49, label %68, label %50, !prof !119

50:                                               ; preds = %47
  switch i64 %15, label %53 [
    i64 0, label %54
    i64 1, label %51
  ]

51:                                               ; preds = %50
  %52 = load i8, ptr %39, align 1, !tbaa !19
  store i8 %52, ptr %36, align 1, !tbaa !19
  br label %54

53:                                               ; preds = %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %39, i64 %15, i1 false)
  br label %54

54:                                               ; preds = %53, %51, %50
  %55 = load i64, ptr %14, align 8, !tbaa !16
  %56 = icmp ult i64 %55, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !16
  %58 = load ptr, ptr %35, align 8, !tbaa !20
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 %55
  store i8 0, ptr %59, align 1, !tbaa !19
  %60 = load ptr, ptr %13, align 8, !tbaa !20
  br label %68

61:                                               ; preds = %46
  %62 = load i64, ptr %37, align 8, !tbaa !19
  store ptr %39, ptr %35, align 8, !tbaa !20
  %63 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %15, ptr %63, align 8, !tbaa !16
  %64 = load i64, ptr %40, align 8, !tbaa !19
  store i64 %64, ptr %37, align 8, !tbaa !19
  %65 = icmp eq ptr %36, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store ptr %36, ptr %13, align 8, !tbaa !20
  store i64 %62, ptr %40, align 8, !tbaa !19
  br label %68

67:                                               ; preds = %43, %61
  store ptr %40, ptr %13, align 8, !tbaa !20
  br label %68

68:                                               ; preds = %47, %54, %66, %67
  %69 = phi ptr [ %36, %66 ], [ %40, %67 ], [ %39, %47 ], [ %60, %54 ]
  store i64 0, ptr %14, align 8, !tbaa !16
  store i8 0, ptr %69, align 1, !tbaa !19
  %70 = icmp sgt i64 %12, %2
  br i1 %70, label %9, label %71, !llvm.loop !287

71:                                               ; preds = %31, %68, %5
  %72 = phi i64 [ %1, %5 ], [ %12, %68 ], [ %10, %31 ]
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !20
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %76 = icmp eq ptr %74, %75
  %77 = load ptr, ptr %3, align 8, !tbaa !20
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %79 = icmp eq ptr %77, %78
  br i1 %76, label %80, label %81

80:                                               ; preds = %71
  br i1 %79, label %82, label %100

81:                                               ; preds = %71
  br i1 %79, label %82, label %98

82:                                               ; preds = %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %84 = load i64, ptr %83, align 8, !tbaa !16
  %85 = icmp ult i64 %84, 16
  tail call void @llvm.assume(i1 %85)
  %86 = icmp eq ptr %3, %73
  br i1 %86, label %111, label %87, !prof !119

87:                                               ; preds = %82
  switch i64 %84, label %90 [
    i64 0, label %91
    i64 1, label %88
  ]

88:                                               ; preds = %87
  %89 = load i8, ptr %77, align 1, !tbaa !19
  store i8 %89, ptr %74, align 1, !tbaa !19
  br label %91

90:                                               ; preds = %87
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %77, i64 %84, i1 false)
  br label %91

91:                                               ; preds = %90, %88, %87
  %92 = load i64, ptr %83, align 8, !tbaa !16
  %93 = icmp ult i64 %92, 9223372036854775807
  tail call void @llvm.assume(i1 %93)
  %94 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 %92, ptr %94, align 8, !tbaa !16
  %95 = load ptr, ptr %73, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 %92
  store i8 0, ptr %96, align 1, !tbaa !19
  %97 = load ptr, ptr %3, align 8, !tbaa !20
  br label %111

98:                                               ; preds = %81
  %99 = load i64, ptr %75, align 8, !tbaa !19
  br label %100

100:                                              ; preds = %98, %80
  %101 = phi ptr [ %74, %98 ], [ null, %80 ]
  %102 = phi i64 [ %99, %98 ], [ undef, %80 ]
  store ptr %77, ptr %73, align 8, !tbaa !20
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !16
  %105 = icmp ult i64 %104, 9223372036854775807
  tail call void @llvm.assume(i1 %105)
  %106 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 %104, ptr %106, align 8, !tbaa !16
  %107 = load i64, ptr %78, align 8, !tbaa !19
  store i64 %107, ptr %75, align 8, !tbaa !19
  %108 = icmp eq ptr %101, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  store ptr %101, ptr %3, align 8, !tbaa !20
  store i64 %102, ptr %78, align 8, !tbaa !19
  br label %111

110:                                              ; preds = %100
  store ptr %78, ptr %3, align 8, !tbaa !20
  br label %111

111:                                              ; preds = %82, %91, %109, %110
  %112 = phi ptr [ %101, %109 ], [ %78, %110 ], [ %77, %82 ], [ %97, %91 ]
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %113, align 8, !tbaa !16
  store i8 0, ptr %112, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !16
  %10 = icmp ult i64 %9, 9223372036854775807
  tail call void @llvm.assume(i1 %10)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !20
  %15 = load ptr, ptr %1, align 8, !tbaa !20
  %16 = tail call i32 @memcmp(ptr noundef %15, ptr noundef %14, i64 noundef %11) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %4
  %19 = sub nsw i64 %6, %9
  %20 = tail call i64 @llvm.smax.i64(i64 %19, i64 -2147483648)
  %21 = tail call i64 @llvm.smin.i64(i64 %20, i64 2147483647)
  %22 = trunc nsw i64 %21 to i32
  br label %23

23:                                               ; preds = %13, %18
  %24 = phi i32 [ %16, %13 ], [ %22, %18 ]
  %25 = icmp slt i32 %24, 0
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !16
  %28 = icmp ult i64 %27, 9223372036854775807
  tail call void @llvm.assume(i1 %28)
  br i1 %25, label %29, label %62

29:                                               ; preds = %23
  %30 = tail call i64 @llvm.umin.i64(i64 %27, i64 %9)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !tbaa !20
  %34 = load ptr, ptr %2, align 8, !tbaa !20
  %35 = tail call i32 @memcmp(ptr noundef %34, ptr noundef %33, i64 noundef %30) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %29
  %38 = sub nsw i64 %9, %27
  %39 = tail call i64 @llvm.smax.i64(i64 %38, i64 -2147483648)
  %40 = tail call i64 @llvm.smin.i64(i64 %39, i64 2147483647)
  %41 = trunc nsw i64 %40 to i32
  br label %42

42:                                               ; preds = %32, %37
  %43 = phi i32 [ %35, %32 ], [ %41, %37 ]
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @llvm.umin.i64(i64 %27, i64 %6)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !20
  %50 = load ptr, ptr %1, align 8, !tbaa !20
  %51 = tail call i32 @memcmp(ptr noundef %50, ptr noundef %49, i64 noundef %46) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %45
  %54 = sub nsw i64 %6, %27
  %55 = tail call i64 @llvm.smax.i64(i64 %54, i64 -2147483648)
  %56 = tail call i64 @llvm.smin.i64(i64 %55, i64 2147483647)
  %57 = trunc nsw i64 %56 to i32
  br label %58

58:                                               ; preds = %48, %53
  %59 = phi i32 [ %51, %48 ], [ %57, %53 ]
  %60 = icmp slt i32 %59, 0
  %61 = select i1 %60, ptr %3, ptr %1
  br label %95

62:                                               ; preds = %23
  %63 = tail call i64 @llvm.umin.i64(i64 %27, i64 %6)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %3, align 8, !tbaa !20
  %67 = load ptr, ptr %1, align 8, !tbaa !20
  %68 = tail call i32 @memcmp(ptr noundef %67, ptr noundef %66, i64 noundef %63) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %62
  %71 = sub nsw i64 %6, %27
  %72 = tail call i64 @llvm.smax.i64(i64 %71, i64 -2147483648)
  %73 = tail call i64 @llvm.smin.i64(i64 %72, i64 2147483647)
  %74 = trunc nsw i64 %73 to i32
  br label %75

75:                                               ; preds = %65, %70
  %76 = phi i32 [ %68, %65 ], [ %74, %70 ]
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %75
  %79 = tail call i64 @llvm.umin.i64(i64 %27, i64 %9)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %3, align 8, !tbaa !20
  %83 = load ptr, ptr %2, align 8, !tbaa !20
  %84 = tail call i32 @memcmp(ptr noundef %83, ptr noundef %82, i64 noundef %79) #17
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %78
  %87 = sub nsw i64 %9, %27
  %88 = tail call i64 @llvm.smax.i64(i64 %87, i64 -2147483648)
  %89 = tail call i64 @llvm.smin.i64(i64 %88, i64 2147483647)
  %90 = trunc nsw i64 %89 to i32
  br label %91

91:                                               ; preds = %81, %86
  %92 = phi i32 [ %84, %81 ], [ %90, %86 ]
  %93 = icmp slt i32 %92, 0
  %94 = select i1 %93, ptr %3, ptr %2
  br label %95

95:                                               ; preds = %91, %75, %58, %42
  %96 = phi ptr [ %2, %42 ], [ %1, %75 ], [ %94, %91 ], [ %61, %58 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %96) #17
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca [16 x i8], align 16
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !20
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !16
  %12 = icmp ult i64 %11, 16
  tail call void @llvm.assume(i1 %12)
  %13 = load ptr, ptr %1, align 8, !tbaa !20
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !16
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  %20 = icmp eq i64 %11, 0
  %21 = icmp eq i64 %18, 0
  br i1 %20, label %26, label %22

22:                                               ; preds = %16
  br i1 %21, label %32, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %24 = add nuw nsw i64 %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %24, i1 false)
  %25 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %25, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %53

26:                                               ; preds = %16
  br i1 %21, label %53, label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %28, i1 false)
  %29 = load i64, ptr %17, align 8, !tbaa !16
  %30 = icmp ult i64 %29, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  store i64 %29, ptr %10, align 8, !tbaa !16
  store i64 0, ptr %17, align 8, !tbaa !16
  %31 = load ptr, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %31, align 1, !tbaa !19
  br label %60

32:                                               ; preds = %22
  %33 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %33, i1 false)
  %34 = load i64, ptr %10, align 8, !tbaa !16
  %35 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %35)
  store i64 %34, ptr %17, align 8, !tbaa !16
  store i64 0, ptr %10, align 8, !tbaa !16
  %36 = load ptr, ptr %0, align 8, !tbaa !20
  store i8 0, ptr %36, align 1, !tbaa !19
  br label %60

37:                                               ; preds = %9
  %38 = load i64, ptr %14, align 8, !tbaa !19
  %39 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %39, i1 false)
  store ptr %13, ptr %0, align 8, !tbaa !20
  store ptr %14, ptr %1, align 8, !tbaa !20
  store i64 %38, ptr %7, align 8, !tbaa !19
  br label %53

40:                                               ; preds = %5
  %41 = load i64, ptr %7, align 8, !tbaa !19
  %42 = load ptr, ptr %1, align 8, !tbaa !20
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !16
  %48 = icmp ult i64 %47, 16
  tail call void @llvm.assume(i1 %48)
  %49 = add nuw nsw i64 %47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %43, i64 %49, i1 false)
  store ptr %6, ptr %1, align 8, !tbaa !20
  store ptr %7, ptr %0, align 8, !tbaa !20
  br label %52

50:                                               ; preds = %40
  store ptr %42, ptr %0, align 8, !tbaa !20
  store ptr %6, ptr %1, align 8, !tbaa !20
  %51 = load i64, ptr %43, align 8, !tbaa !19
  store i64 %51, ptr %7, align 8, !tbaa !19
  br label %52

52:                                               ; preds = %50, %45
  store i64 %41, ptr %43, align 8, !tbaa !19
  br label %53

53:                                               ; preds = %26, %37, %23, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !16
  %56 = icmp ult i64 %55, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !16
  %59 = icmp ult i64 %58, 9223372036854775807
  tail call void @llvm.assume(i1 %59)
  store i64 %58, ptr %54, align 8, !tbaa !16
  store i64 %55, ptr %57, align 8, !tbaa !16
  br label %60

60:                                               ; preds = %2, %53, %32, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %138, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %138, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = icmp eq ptr %3, %0
  br label %14

14:                                               ; preds = %8, %135
  %15 = phi ptr [ %6, %8 ], [ %136, %135 ]
  %16 = phi ptr [ %0, %8 ], [ %15, %135 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !16
  %19 = icmp ult i64 %18, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = load i64, ptr %9, align 8, !tbaa !16
  %21 = icmp ult i64 %20, 9223372036854775807
  call void @llvm.assume(i1 %21)
  %22 = call i64 @llvm.umin.i64(i64 %20, i64 %18)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !20
  %26 = load ptr, ptr %15, align 8, !tbaa !20
  %27 = call i32 @memcmp(ptr noundef %26, ptr noundef %25, i64 noundef %22) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %14
  %30 = sub nsw i64 %18, %20
  %31 = call i64 @llvm.smax.i64(i64 %30, i64 -2147483648)
  %32 = call i64 @llvm.smin.i64(i64 %31, i64 2147483647)
  %33 = trunc nsw i64 %32 to i32
  br label %34

34:                                               ; preds = %24, %29
  %35 = phi i32 [ %27, %24 ], [ %33, %29 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %134

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %10, ptr %3, align 8, !tbaa !12
  %38 = load ptr, ptr %15, align 8, !tbaa !20
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = icmp samesign ult i64 %18, 16
  call void @llvm.assume(i1 %42)
  %43 = add nuw nsw i64 %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %39, i64 %43, i1 false)
  %44 = load i64, ptr %17, align 8, !tbaa !16
  br label %47

45:                                               ; preds = %37
  store ptr %38, ptr %3, align 8, !tbaa !20
  %46 = load i64, ptr %39, align 8, !tbaa !19
  store i64 %46, ptr %10, align 8, !tbaa !19
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi i64 [ %44, %41 ], [ %18, %45 ]
  %49 = icmp ult i64 %48, 9223372036854775807
  call void @llvm.assume(i1 %49)
  store i64 %48, ptr %11, align 8, !tbaa !16
  store ptr %39, ptr %15, align 8, !tbaa !20
  store i64 0, ptr %17, align 8, !tbaa !16
  store i8 0, ptr %39, align 8, !tbaa !19
  %50 = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %51

51:                                               ; preds = %47, %91
  %52 = phi ptr [ %55, %91 ], [ %50, %47 ]
  %53 = phi ptr [ %54, %91 ], [ %15, %47 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 -32
  %55 = getelementptr inbounds i8, ptr %52, i64 -32
  %56 = load ptr, ptr %55, align 8, !tbaa !20
  %57 = getelementptr inbounds i8, ptr %52, i64 -16
  %58 = icmp eq ptr %56, %57
  %59 = load ptr, ptr %54, align 8, !tbaa !20
  %60 = getelementptr inbounds i8, ptr %53, i64 -16
  %61 = icmp eq ptr %59, %60
  br i1 %58, label %62, label %63

62:                                               ; preds = %51
  br i1 %61, label %64, label %80

63:                                               ; preds = %51
  br i1 %61, label %64, label %78

64:                                               ; preds = %62, %63
  %65 = getelementptr inbounds i8, ptr %53, i64 -24
  %66 = load i64, ptr %65, align 8, !tbaa !16
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  switch i64 %66, label %70 [
    i64 0, label %71
    i64 1, label %68
  ]

68:                                               ; preds = %64
  %69 = load i8, ptr %59, align 1, !tbaa !19
  store i8 %69, ptr %56, align 1, !tbaa !19
  br label %71

70:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %59, i64 %66, i1 false)
  br label %71

71:                                               ; preds = %70, %68, %64
  %72 = load i64, ptr %65, align 8, !tbaa !16
  %73 = icmp ult i64 %72, 9223372036854775807
  call void @llvm.assume(i1 %73)
  %74 = getelementptr inbounds i8, ptr %52, i64 -24
  store i64 %72, ptr %74, align 8, !tbaa !16
  %75 = load ptr, ptr %55, align 8, !tbaa !20
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %72
  store i8 0, ptr %76, align 1, !tbaa !19
  %77 = load ptr, ptr %54, align 8, !tbaa !20
  br label %91

78:                                               ; preds = %63
  %79 = load i64, ptr %57, align 8, !tbaa !19
  br label %80

80:                                               ; preds = %78, %62
  %81 = phi ptr [ %56, %78 ], [ null, %62 ]
  %82 = phi i64 [ %79, %78 ], [ undef, %62 ]
  store ptr %59, ptr %55, align 8, !tbaa !20
  %83 = getelementptr inbounds i8, ptr %53, i64 -24
  %84 = load i64, ptr %83, align 8, !tbaa !16
  %85 = icmp ult i64 %84, 9223372036854775807
  call void @llvm.assume(i1 %85)
  %86 = getelementptr inbounds i8, ptr %52, i64 -24
  store i64 %84, ptr %86, align 8, !tbaa !16
  %87 = load i64, ptr %60, align 8, !tbaa !19
  store i64 %87, ptr %57, align 8, !tbaa !19
  %88 = icmp eq ptr %81, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store ptr %81, ptr %54, align 8, !tbaa !20
  store i64 %82, ptr %60, align 8, !tbaa !19
  br label %91

90:                                               ; preds = %80
  store ptr %60, ptr %54, align 8, !tbaa !20
  br label %91

91:                                               ; preds = %90, %89, %71
  %92 = phi ptr [ %81, %89 ], [ %60, %90 ], [ %77, %71 ]
  %93 = getelementptr inbounds i8, ptr %53, i64 -24
  store i64 0, ptr %93, align 8, !tbaa !16
  store i8 0, ptr %92, align 1, !tbaa !19
  %94 = icmp eq ptr %0, %54
  br i1 %94, label %95, label %51, !llvm.loop !288

95:                                               ; preds = %91
  %96 = load ptr, ptr %0, align 8, !tbaa !20
  %97 = icmp eq ptr %96, %12
  %98 = load ptr, ptr %3, align 8, !tbaa !20
  %99 = icmp eq ptr %98, %10
  br i1 %97, label %100, label %101

100:                                              ; preds = %95
  br i1 %99, label %102, label %117

101:                                              ; preds = %95
  br i1 %99, label %102, label %115

102:                                              ; preds = %101, %100
  %103 = load i64, ptr %11, align 8, !tbaa !16
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  br i1 %13, label %126, label %105, !prof !119

105:                                              ; preds = %102
  switch i64 %103, label %108 [
    i64 0, label %109
    i64 1, label %106
  ]

106:                                              ; preds = %105
  %107 = load i8, ptr %98, align 1, !tbaa !19
  store i8 %107, ptr %96, align 1, !tbaa !19
  br label %109

108:                                              ; preds = %105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr align 1 %98, i64 %103, i1 false)
  br label %109

109:                                              ; preds = %108, %106, %105
  %110 = load i64, ptr %11, align 8, !tbaa !16
  %111 = icmp ult i64 %110, 9223372036854775807
  call void @llvm.assume(i1 %111)
  store i64 %110, ptr %9, align 8, !tbaa !16
  %112 = load ptr, ptr %0, align 8, !tbaa !20
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 %110
  store i8 0, ptr %113, align 1, !tbaa !19
  %114 = load ptr, ptr %3, align 8, !tbaa !20
  br label %126

115:                                              ; preds = %101
  %116 = load i64, ptr %12, align 8, !tbaa !19
  br label %117

117:                                              ; preds = %115, %100
  %118 = phi ptr [ %96, %115 ], [ null, %100 ]
  %119 = phi i64 [ %116, %115 ], [ undef, %100 ]
  store ptr %98, ptr %0, align 8, !tbaa !20
  %120 = load i64, ptr %11, align 8, !tbaa !16
  %121 = icmp ult i64 %120, 9223372036854775807
  call void @llvm.assume(i1 %121)
  store i64 %120, ptr %9, align 8, !tbaa !16
  %122 = load i64, ptr %10, align 8, !tbaa !19
  store i64 %122, ptr %12, align 8, !tbaa !19
  %123 = icmp eq ptr %118, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store ptr %118, ptr %3, align 8, !tbaa !20
  store i64 %119, ptr %10, align 8, !tbaa !19
  br label %126

125:                                              ; preds = %117
  store ptr %10, ptr %3, align 8, !tbaa !20
  br label %126

126:                                              ; preds = %102, %109, %124, %125
  %127 = phi ptr [ %118, %124 ], [ %10, %125 ], [ %98, %102 ], [ %114, %109 ]
  store i64 0, ptr %11, align 8, !tbaa !16
  store i8 0, ptr %127, align 1, !tbaa !19
  %128 = load ptr, ptr %3, align 8, !tbaa !20
  %129 = icmp eq ptr %128, %10
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i64, ptr %10, align 8, !tbaa !19
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %128, i64 noundef %132) #27
  br label %133

133:                                              ; preds = %126, %130
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %135

134:                                              ; preds = %34
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %15)
  br label %135

135:                                              ; preds = %133, %134
  %136 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %137 = icmp eq ptr %136, %1
  br i1 %137, label %138, label %14, !llvm.loop !289

138:                                              ; preds = %135, %5, %2
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %3, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !16
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false)
  br label %16

12:                                               ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !20
  %13 = load i64, ptr %5, align 8, !tbaa !19
  store i64 %13, ptr %3, align 8, !tbaa !19
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !16
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i64 [ %9, %7 ], [ %15, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = icmp ult i64 %17, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %17, ptr %20, align 8, !tbaa !16
  store ptr %5, ptr %0, align 8, !tbaa !20
  store i64 0, ptr %18, align 8, !tbaa !16
  store i8 0, ptr %5, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %75, %16
  %22 = phi i64 [ %17, %16 ], [ %77, %75 ]
  %23 = phi ptr [ %0, %16 ], [ %24, %75 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 -32
  %25 = icmp ult i64 %22, 9223372036854775807
  call void @llvm.assume(i1 %25)
  %26 = getelementptr inbounds i8, ptr %23, i64 -24
  %27 = load i64, ptr %26, align 8, !tbaa !16
  %28 = icmp ult i64 %27, 9223372036854775807
  call void @llvm.assume(i1 %28)
  %29 = call i64 @llvm.umin.i64(i64 %27, i64 %22)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %24, align 8, !tbaa !20
  %33 = load ptr, ptr %2, align 8, !tbaa !20
  %34 = call i32 @memcmp(ptr noundef %33, ptr noundef %32, i64 noundef %29) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %21
  %37 = sub nsw i64 %22, %27
  %38 = call i64 @llvm.smax.i64(i64 %37, i64 -2147483648)
  %39 = call i64 @llvm.smin.i64(i64 %38, i64 2147483647)
  %40 = trunc nsw i64 %39 to i32
  br label %41

41:                                               ; preds = %31, %36
  %42 = phi i32 [ %34, %31 ], [ %40, %36 ]
  %43 = icmp slt i32 %42, 0
  %44 = load ptr, ptr %23, align 8, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %46 = icmp eq ptr %44, %45
  br i1 %43, label %47, label %78

47:                                               ; preds = %41
  %48 = load ptr, ptr %24, align 8, !tbaa !20
  %49 = getelementptr inbounds i8, ptr %23, i64 -16
  %50 = icmp eq ptr %48, %49
  br i1 %46, label %51, label %55

51:                                               ; preds = %47
  br i1 %50, label %56, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %48, ptr %23, align 8, !tbaa !20
  store i64 %27, ptr %53, align 8, !tbaa !16
  %54 = load i64, ptr %49, align 8, !tbaa !19
  store i64 %54, ptr %45, align 8, !tbaa !19
  br label %74

55:                                               ; preds = %47
  br i1 %50, label %56, label %68

56:                                               ; preds = %55, %51
  %57 = icmp samesign ult i64 %27, 16
  call void @llvm.assume(i1 %57)
  switch i64 %27, label %60 [
    i64 0, label %61
    i64 1, label %58
  ]

58:                                               ; preds = %56
  %59 = load i8, ptr %48, align 1, !tbaa !19
  store i8 %59, ptr %44, align 1, !tbaa !19
  br label %61

60:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %48, i64 %27, i1 false)
  br label %61

61:                                               ; preds = %60, %58, %56
  %62 = load i64, ptr %26, align 8, !tbaa !16
  %63 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %63)
  %64 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %62, ptr %64, align 8, !tbaa !16
  %65 = load ptr, ptr %23, align 8, !tbaa !20
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 %62
  store i8 0, ptr %66, align 1, !tbaa !19
  %67 = load ptr, ptr %24, align 8, !tbaa !20
  br label %75

68:                                               ; preds = %55
  %69 = load i64, ptr %45, align 8, !tbaa !19
  store ptr %48, ptr %23, align 8, !tbaa !20
  %70 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %27, ptr %70, align 8, !tbaa !16
  %71 = load i64, ptr %49, align 8, !tbaa !19
  store i64 %71, ptr %45, align 8, !tbaa !19
  %72 = icmp eq ptr %44, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store ptr %44, ptr %24, align 8, !tbaa !20
  store i64 %69, ptr %49, align 8, !tbaa !19
  br label %75

74:                                               ; preds = %52, %68
  store ptr %49, ptr %24, align 8, !tbaa !20
  br label %75

75:                                               ; preds = %61, %73, %74
  %76 = phi ptr [ %44, %73 ], [ %49, %74 ], [ %67, %61 ]
  store i64 0, ptr %26, align 8, !tbaa !16
  store i8 0, ptr %76, align 1, !tbaa !19
  %77 = load i64, ptr %20, align 8, !tbaa !16
  br label %21, !llvm.loop !290

78:                                               ; preds = %41
  %79 = load ptr, ptr %2, align 8, !tbaa !20
  %80 = icmp eq ptr %79, %3
  br i1 %46, label %81, label %85

81:                                               ; preds = %78
  br i1 %80, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %79, ptr %23, align 8, !tbaa !20
  store i64 %22, ptr %83, align 8, !tbaa !16
  %84 = load i64, ptr %3, align 8, !tbaa !19
  store i64 %84, ptr %45, align 8, !tbaa !19
  br label %106

85:                                               ; preds = %78
  br i1 %80, label %86, label %100

86:                                               ; preds = %85, %81
  %87 = icmp samesign ult i64 %22, 16
  call void @llvm.assume(i1 %87)
  %88 = icmp eq ptr %2, %23
  br i1 %88, label %107, label %89, !prof !119

89:                                               ; preds = %86
  switch i64 %22, label %92 [
    i64 0, label %93
    i64 1, label %90
  ]

90:                                               ; preds = %89
  %91 = load i8, ptr %79, align 1, !tbaa !19
  store i8 %91, ptr %44, align 1, !tbaa !19
  br label %93

92:                                               ; preds = %89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %79, i64 %22, i1 false)
  br label %93

93:                                               ; preds = %92, %90, %89
  %94 = load i64, ptr %20, align 8, !tbaa !16
  %95 = icmp ult i64 %94, 9223372036854775807
  call void @llvm.assume(i1 %95)
  %96 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %94, ptr %96, align 8, !tbaa !16
  %97 = load ptr, ptr %23, align 8, !tbaa !20
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 %94
  store i8 0, ptr %98, align 1, !tbaa !19
  %99 = load ptr, ptr %2, align 8, !tbaa !20
  br label %107

100:                                              ; preds = %85
  %101 = load i64, ptr %45, align 8, !tbaa !19
  store ptr %79, ptr %23, align 8, !tbaa !20
  %102 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %22, ptr %102, align 8, !tbaa !16
  %103 = load i64, ptr %3, align 8, !tbaa !19
  store i64 %103, ptr %45, align 8, !tbaa !19
  %104 = icmp eq ptr %44, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store ptr %44, ptr %2, align 8, !tbaa !20
  store i64 %101, ptr %3, align 8, !tbaa !19
  br label %107

106:                                              ; preds = %82, %100
  store ptr %3, ptr %2, align 8, !tbaa !20
  br label %107

107:                                              ; preds = %86, %93, %105, %106
  %108 = phi ptr [ %44, %105 ], [ %3, %106 ], [ %79, %86 ], [ %99, %93 ]
  store i64 0, ptr %20, align 8, !tbaa !16
  store i8 0, ptr %108, align 1, !tbaa !19
  %109 = load ptr, ptr %2, align 8, !tbaa !20
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i64, ptr %3, align 8, !tbaa !19
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %109, i64 noundef %113) #27
  br label %114

114:                                              ; preds = %107, %111
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %0, align 8, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %7, align 8, !tbaa !16
  store i8 0, ptr %6, align 8, !tbaa !19
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = icmp eq i64 %3, 0
  %11 = icmp eq i64 %3, 1
  %12 = load ptr, ptr %1, align 8, !tbaa !20
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !16
  %15 = icmp ult i64 %14, 9223372036854775807
  tail call void @llvm.assume(i1 %15)
  %16 = icmp samesign ugt i64 %14, 15
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  switch i64 %14, label %18 [
    i64 0, label %24
    i64 1, label %19
  ]

18:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr align 1 %12, i64 %14, i1 false)
  br label %24

19:                                               ; preds = %17
  %20 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %20, ptr %6, align 8, !tbaa !19
  br label %24

21:                                               ; preds = %9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %12, i64 noundef %14)
          to label %22 unwind label %59

22:                                               ; preds = %21
  %23 = load ptr, ptr %0, align 8, !tbaa !20
  br label %24

24:                                               ; preds = %17, %22, %19, %18
  %25 = phi ptr [ %23, %22 ], [ %6, %19 ], [ %6, %18 ], [ %6, %17 ]
  store i64 %14, ptr %7, align 8, !tbaa !16
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %14
  store i8 0, ptr %26, align 1, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %103, %24, %5
  ret void

30:                                               ; preds = %24, %103
  %31 = phi ptr [ %106, %103 ], [ %27, %24 ]
  %32 = load i64, ptr %7, align 8, !tbaa !16
  %33 = icmp ult i64 %32, 9223372036854775807
  tail call void @llvm.assume(i1 %33)
  %34 = sub nuw nsw i64 9223372036854775806, %32
  %35 = icmp ult i64 %34, %3
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %71
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %37 unwind label %61

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %30
  %39 = add nuw i64 %32, %3
  %40 = load ptr, ptr %0, align 8, !tbaa !20
  %41 = icmp eq ptr %40, %6
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %43)
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, ptr %6, align 8
  %46 = select i1 %41, i64 15, i64 %45
  %47 = icmp samesign ugt i64 %46, 14
  tail call void @llvm.assume(i1 %47)
  %48 = icmp ult i64 %46, 9223372036854775807
  tail call void @llvm.assume(i1 %48)
  %49 = icmp ugt i64 %39, %46
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  br i1 %10, label %71, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds nuw i8, ptr %40, i64 %32
  br i1 %11, label %53, label %55

53:                                               ; preds = %51
  %54 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %54, ptr %52, align 1, !tbaa !19
  br label %71

55:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %4, i64 %3, i1 false)
  br label %71

56:                                               ; preds = %44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %32, i64 noundef 0, ptr noundef %4, i64 noundef %3)
          to label %71 unwind label %57

57:                                               ; preds = %102, %56
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %63

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %36
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %57, %59, %61
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %58, %57 ], [ %60, %59 ]
  %65 = load ptr, ptr %0, align 8, !tbaa !20
  %66 = icmp eq ptr %65, %6
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %6, align 8, !tbaa !19
  %69 = add i64 %68, 1
  tail call void @_ZdlPvm(ptr noundef %65, i64 noundef %69) #27
  br label %70

70:                                               ; preds = %63, %67
  resume { ptr, i32 } %64

71:                                               ; preds = %55, %53, %50, %56
  store i64 %39, ptr %7, align 8, !tbaa !16
  %72 = load ptr, ptr %0, align 8, !tbaa !20
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 %39
  store i8 0, ptr %73, align 1, !tbaa !19
  %74 = load ptr, ptr %31, align 8, !tbaa !20
  %75 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %76 = load i64, ptr %75, align 8, !tbaa !16
  %77 = icmp ult i64 %76, 9223372036854775807
  tail call void @llvm.assume(i1 %77)
  %78 = load i64, ptr %7, align 8, !tbaa !16
  %79 = icmp ult i64 %78, 9223372036854775807
  tail call void @llvm.assume(i1 %79)
  %80 = sub nuw nsw i64 9223372036854775806, %78
  %81 = icmp samesign ult i64 %80, %76
  br i1 %81, label %36, label %82

82:                                               ; preds = %71
  %83 = add nuw i64 %78, %76
  %84 = load ptr, ptr %0, align 8, !tbaa !20
  %85 = icmp eq ptr %84, %6
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = icmp samesign ult i64 %78, 16
  tail call void @llvm.assume(i1 %87)
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i64, ptr %6, align 8
  %90 = select i1 %85, i64 15, i64 %89
  %91 = icmp samesign ugt i64 %90, 14
  tail call void @llvm.assume(i1 %91)
  %92 = icmp ult i64 %90, 9223372036854775807
  tail call void @llvm.assume(i1 %92)
  %93 = icmp ugt i64 %83, %90
  br i1 %93, label %102, label %94

94:                                               ; preds = %88
  %95 = icmp eq i64 %76, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds nuw i8, ptr %84, i64 %78
  %98 = icmp eq i64 %76, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i8, ptr %74, align 1, !tbaa !19
  store i8 %100, ptr %97, align 1, !tbaa !19
  br label %103

101:                                              ; preds = %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr align 1 %74, i64 %76, i1 false)
  br label %103

102:                                              ; preds = %88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %78, i64 noundef 0, ptr noundef %74, i64 noundef %76)
          to label %103 unwind label %57

103:                                              ; preds = %101, %99, %94, %102
  store i64 %83, ptr %7, align 8, !tbaa !16
  %104 = load ptr, ptr %0, align 8, !tbaa !20
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 %83
  store i8 0, ptr %105, align 1, !tbaa !19
  %106 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %107 = icmp eq ptr %106, %2
  br i1 %107, label %29, label %30, !llvm.loop !291
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !16
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !20
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #26
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !19
  store i8 %37, ptr %35, align 1, !tbaa !19
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
  %47 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %47, ptr %44, align 1, !tbaa !19
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
  %58 = load i8, ptr %55, align 1, !tbaa !19
  store i8 %58, ptr %53, align 1, !tbaa !19
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #27
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !20
  store i64 %33, ptr %14, align 8, !tbaa !19
  ret void
}

declare void @_ZNSt10filesystem16create_hard_linkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem14create_symlinkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem12read_symlinkERKNS_7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path9extensionEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = extractvalue { ptr, i64 } %4, 1
  %7 = icmp ne ptr %5, null
  %8 = icmp ne i64 %6, -1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %78

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !16, !noalias !292
  %13 = icmp ult i64 %12, 9223372036854775807
  tail call void @llvm.assume(i1 %13)
  %14 = icmp ugt i64 %6, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %6, i64 noundef %12) #25, !noalias !292
  unreachable

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %17, ptr %3, align 8, !tbaa !12, !alias.scope !292
  %18 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !292
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %6
  %20 = sub nuw nsw i64 %12, %6
  %21 = icmp samesign ugt i64 %20, 15
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %20, 1
  %24 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #26
  store ptr %24, ptr %3, align 8, !tbaa !20, !alias.scope !292
  store i64 %20, ptr %17, align 8, !tbaa !19, !alias.scope !292
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ %17, %16 ]
  switch i64 %20, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %19, align 1, !tbaa !19
  store i8 %28, ptr %26, align 1, !tbaa !19
  br label %30

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %19, i64 %20, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %20, ptr %31, align 8, !tbaa !16, !alias.scope !292
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %20
  store i8 0, ptr %32, align 1, !tbaa !19
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %33, ptr %0, align 8, !tbaa !12
  %34 = load ptr, ptr %3, align 8, !tbaa !20
  %35 = icmp eq ptr %34, %17
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, ptr %31, align 8, !tbaa !16
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  %39 = add nuw nsw i64 %37, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %33, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %39, i1 false)
  br label %43

40:                                               ; preds = %30
  store ptr %34, ptr %0, align 8, !tbaa !20
  %41 = load i64, ptr %17, align 8, !tbaa !19
  store i64 %41, ptr %33, align 8, !tbaa !19
  %42 = load i64, ptr %31, align 8, !tbaa !16
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i64 [ %42, %40 ], [ %37, %36 ]
  %45 = icmp ult i64 %44, 9223372036854775807
  call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %44, ptr %46, align 8, !tbaa !16
  store ptr %17, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %31, align 8, !tbaa !16
  store i8 0, ptr %17, align 8, !tbaa !19
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %64 unwind label %51

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %57

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load ptr, ptr %47, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull %53) #17
  br label %56

56:                                               ; preds = %55, %51
  store ptr null, ptr %47, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi { ptr, i32 } [ %52, %56 ], [ %50, %49 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !20
  %60 = icmp eq ptr %59, %33
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = load i64, ptr %33, align 8, !tbaa !19
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %63) #27
  br label %71

64:                                               ; preds = %48
  %65 = load ptr, ptr %3, align 8, !tbaa !20
  %66 = icmp eq ptr %65, %17
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, ptr %17, align 8, !tbaa !19
  %69 = add i64 %68, 1
  call void @_ZdlPvm(ptr noundef %65, i64 noundef %69) #27
  br label %70

70:                                               ; preds = %64, %67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %85

71:                                               ; preds = %57, %61
  %72 = load ptr, ptr %3, align 8, !tbaa !20
  %73 = icmp eq ptr %72, %17
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, ptr %17, align 8, !tbaa !19
  %76 = add i64 %75, 1
  call void @_ZdlPvm(ptr noundef %72, i64 noundef %76) #27
  br label %77

77:                                               ; preds = %71, %74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %58

78:                                               ; preds = %2
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %79, ptr %0, align 8, !tbaa !12
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %80, align 8, !tbaa !16
  store i8 0, ptr %79, align 8, !tbaa !19
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %81)
          to label %85 unwind label %82

82:                                               ; preds = %78
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  tail call void @__clang_call_terminate(ptr %84) #28
  unreachable

85:                                               ; preds = %78, %70
  ret void
}

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: cold noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = extractvalue { ptr, i64 } %4, 1
  %7 = icmp ne ptr %5, null
  %8 = icmp ne i64 %6, 0
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !16, !noalias !295
  %13 = icmp ult i64 %12, 9223372036854775807
  tail call void @llvm.assume(i1 %13)
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %14, ptr %3, align 8, !tbaa !12, !alias.scope !295
  %15 = load ptr, ptr %5, align 8, !tbaa !20, !noalias !295
  %16 = call noundef i64 @llvm.umin.i64(i64 %6, i64 %12)
  %17 = icmp samesign ugt i64 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %16, 1
  %20 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #26
  store ptr %20, ptr %3, align 8, !tbaa !20, !alias.scope !295
  store i64 %16, ptr %14, align 8, !tbaa !19, !alias.scope !295
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi ptr [ %20, %18 ], [ %14, %10 ]
  switch i64 %16, label %25 [
    i64 1, label %23
    i64 0, label %26
  ]

23:                                               ; preds = %21
  %24 = load i8, ptr %15, align 1, !tbaa !19
  store i8 %24, ptr %22, align 1, !tbaa !19
  br label %26

25:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %15, i64 %16, i1 false)
  br label %26

26:                                               ; preds = %21, %23, %25
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %16, ptr %27, align 8, !tbaa !16, !alias.scope !295
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 %16
  store i8 0, ptr %28, align 1, !tbaa !19
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %29, ptr %0, align 8, !tbaa !12
  %30 = load ptr, ptr %3, align 8, !tbaa !20
  %31 = icmp eq ptr %30, %14
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, ptr %27, align 8, !tbaa !16
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %35, i1 false)
  br label %39

36:                                               ; preds = %26
  store ptr %30, ptr %0, align 8, !tbaa !20
  %37 = load i64, ptr %14, align 8, !tbaa !19
  store i64 %37, ptr %29, align 8, !tbaa !19
  %38 = load i64, ptr %27, align 8, !tbaa !16
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = icmp ult i64 %40, 9223372036854775807
  call void @llvm.assume(i1 %41)
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %40, ptr %42, align 8, !tbaa !16
  store ptr %14, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %27, align 8, !tbaa !16
  store i8 0, ptr %14, align 8, !tbaa !19
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %44 unwind label %45

44:                                               ; preds = %39
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %60 unwind label %47

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %53

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = load ptr, ptr %43, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull %49) #17
  br label %52

52:                                               ; preds = %51, %47
  store ptr null, ptr %43, align 8, !tbaa !35
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi { ptr, i32 } [ %48, %52 ], [ %46, %45 ]
  %55 = load ptr, ptr %0, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %29, align 8, !tbaa !19
  %59 = add i64 %58, 1
  call void @_ZdlPvm(ptr noundef %55, i64 noundef %59) #27
  br label %67

60:                                               ; preds = %44
  %61 = load ptr, ptr %3, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %14
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i64, ptr %14, align 8, !tbaa !19
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %81

67:                                               ; preds = %53, %57
  %68 = load ptr, ptr %3, align 8, !tbaa !20
  %69 = icmp eq ptr %68, %14
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, ptr %14, align 8, !tbaa !19
  %72 = add i64 %71, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %72) #27
  br label %73

73:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %54

74:                                               ; preds = %2
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %75, ptr %0, align 8, !tbaa !12
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %76, align 8, !tbaa !16
  store i8 0, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  tail call void @__clang_call_terminate(ptr %80) #28
  unreachable

81:                                               ; preds = %74, %66
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

declare void @_ZNSt10filesystem8absoluteERKNS_7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem16weakly_canonicalERKNS_7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }

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
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!11 = distinct !{!11, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !18, i64 8, !7, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!17, !14, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!23 = distinct !{!23, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!24 = !{!25, !26, i64 8}
!25 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !26, i64 8}
!26 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !31, i64 80}
!30 = !{!"_ZTSN12__apo_stdlib11file_handleE", !25, i64 0, !17, i64 16, !17, i64 48, !31, i64 80}
!31 = !{!"bool", !7, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!34 = distinct !{!34, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !15, i64 0}
!37 = !{!38, !40, i64 32}
!38 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !18, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!"branch_weights", i32 1, i32 1023}
!49 = !{!50, !54, i64 48}
!50 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !51, i64 0, !18, i64 8, !53, i64 16, !53, i64 48}
!51 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0}
!52 = !{!"any p2 pointer", !15, i64 0}
!53 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !54, i64 0, !54, i64 8, !54, i64 16, !51, i64 24}
!54 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!55 = !{!50, !54, i64 64}
!56 = !{!53, !54, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!59 = distinct !{!59, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!60 = !{!53, !54, i64 8}
!61 = !{!53, !51, i64 24}
!62 = !{!54, !54, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!65 = distinct !{!65, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!66 = !{!67, !69, i64 232}
!67 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !68, i64 216, !7, i64 224, !31, i64 225, !69, i64 232, !70, i64 240, !71, i64 248, !72, i64 256}
!68 = !{!"p1 _ZTSSo", !15, i64 0}
!69 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!70 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!71 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!72 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!75 = distinct !{!75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!78 = distinct !{!78, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!79 = !{!80, !18, i64 16}
!80 = !{!"_ZTSN12__apo_stdlib15metadata_handleE", !25, i64 0, !18, i64 16, !17, i64 24, !17, i64 56, !17, i64 88, !31, i64 120, !31, i64 121, !31, i64 122}
!81 = !{!80, !31, i64 120}
!82 = !{!80, !31, i64 121}
!83 = !{!80, !31, i64 122}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!87, !89}
!87 = distinct !{!87, !88, !"_ZNSt7__cxx119to_stringEx: argument 0"}
!88 = distinct !{!88, !"_ZNSt7__cxx119to_stringEx"}
!89 = distinct !{!89, !90, !"_ZN12__apo_stdlib17file_time_to_textB5cxx11ERKNSt6chrono10time_pointINSt10filesystem12__file_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEE: argument 0"}
!90 = distinct !{!90, !"_ZN12__apo_stdlib17file_time_to_textB5cxx11ERKNSt6chrono10time_pointINSt10filesystem12__file_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!93 = distinct !{!93, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!96 = distinct !{!96, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0, !103, i64 8}
!102 = !{!"p1 _ZTSNSt10filesystem7__cxx114_DirE", !15, i64 0}
!103 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !104, i64 0}
!104 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!105 = !{!103, !104, i64 0}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0:thread"}
!108 = distinct !{!108, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0:thread"}
!113 = distinct !{!113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0"}
!116 = !{!117, !6, i64 8}
!117 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!118 = !{!117, !6, i64 12}
!119 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!120 = distinct !{!120, !85}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!123 = distinct !{!123, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!126 = distinct !{!126, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!127 = !{!125, !122}
!128 = !{!129, !54, i64 8}
!129 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!130 = !{!129, !54, i64 16}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E: argument 0"}
!133 = distinct !{!133, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!136 = distinct !{!136, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!137 = !{!129, !54, i64 0}
!138 = distinct !{!138, !85}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!141 = distinct !{!141, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!144 = distinct !{!144, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!145 = !{!143, !140}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!148 = distinct !{!148, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE: argument 0"}
!151 = distinct !{!151, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!154 = distinct !{!154, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!157 = distinct !{!157, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!158 = !{!156, !153, !150}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!161 = distinct !{!161, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE: argument 0"}
!164 = distinct !{!164, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!167 = distinct !{!167, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!170 = distinct !{!170, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!171 = !{!169, !166, !163}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!174 = distinct !{!174, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE: argument 0"}
!177 = distinct !{!177, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!180 = distinct !{!180, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!183 = distinct !{!183, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!184 = !{!182, !179, !176}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!187 = distinct !{!187, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE: argument 0"}
!190 = distinct !{!190, !"_ZN12__apo_stdlib14safe_componentENSt10filesystem7__cxx114pathE"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!193 = distinct !{!193, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!196 = distinct !{!196, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!197 = !{!195, !192, !189}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!200 = distinct !{!200, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!203 = distinct !{!203, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!206 = distinct !{!206, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!207 = !{!205, !202}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!213 = distinct !{!213, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!216 = distinct !{!216, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!217 = !{!215, !212}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!220 = distinct !{!220, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZNKSt10filesystem7__cxx114path5beginEv: argument 0"}
!223 = distinct !{!223, !"_ZNKSt10filesystem7__cxx114path5beginEv"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZNKSt10filesystem7__cxx114path3endEv: argument 0"}
!226 = distinct !{!226, !"_ZNKSt10filesystem7__cxx114path3endEv"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E: argument 0"}
!229 = distinct !{!229, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!232 = distinct !{!232, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!235 = distinct !{!235, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!236 = !{!234, !231}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!239 = distinct !{!239, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!240 = !{!18, !18, i64 0}
!241 = !{!14, !14, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!244 = distinct !{!244, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!247 = distinct !{!247, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!248 = !{!15, !15, i64 0}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!251 = distinct !{!251, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!252 = !{!50, !51, i64 0}
!253 = !{!50, !51, i64 40}
!254 = !{!50, !51, i64 72}
!255 = distinct !{!255, !85}
!256 = !{!50, !18, i64 8}
!257 = distinct !{!257, !85}
!258 = !{!53, !54, i64 16}
!259 = !{!50, !54, i64 16}
!260 = distinct !{!260, !85}
!261 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!262 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!263 = !{!264, !14, i64 16}
!264 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !44, i64 56}
!265 = !{!264, !14, i64 24}
!266 = distinct !{!266, !85, !267}
!267 = !{!"llvm.loop.peeled.count", i32 1}
!268 = distinct !{!268, !267}
!269 = distinct !{!269, !85}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNKSt10filesystem7__cxx114path3endEv: argument 0"}
!272 = distinct !{!272, !"_ZNKSt10filesystem7__cxx114path3endEv"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!275 = distinct !{!275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!278 = !{!274, !277}
!279 = distinct !{!279, !85}
!280 = distinct !{!280, !85}
!281 = distinct !{!281, !85}
!282 = distinct !{!282, !85}
!283 = distinct !{!283, !85}
!284 = distinct !{!284, !85}
!285 = distinct !{!285, !85}
!286 = distinct !{!286, !85}
!287 = distinct !{!287, !85}
!288 = distinct !{!288, !85}
!289 = distinct !{!289, !85}
!290 = distinct !{!290, !85}
!291 = distinct !{!291, !85, !267}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!294 = distinct !{!294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!297 = distinct !{!297, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
