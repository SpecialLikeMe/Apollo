; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/eb1fcda2246f859c.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/eb1fcda2246f859c.cpp"
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

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_openEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %8, ptr %5, align 8, !tbaa !8, !alias.scope !5
  br i1 %7, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %10, align 8, !tbaa !14, !alias.scope !5
  store i8 0, ptr %8, align 8, !tbaa !17, !alias.scope !5
  br label %28

11:                                               ; preds = %2
  %12 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17, !noalias !5
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp ugt i64 %12, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %12, 1
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #25
  store ptr %19, ptr %5, align 8, !tbaa !18, !alias.scope !5
  store i64 %12, ptr %8, align 8, !tbaa !17, !alias.scope !5
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %19, %17 ], [ %8, %11 ]
  switch i64 %12, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %0, align 1, !tbaa !17, !noalias !5
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %0, i64 %12, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %12, ptr %26, align 8, !tbaa !14, !alias.scope !5
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %12
  store i8 0, ptr %27, align 1, !tbaa !17
  br label %28

28:                                               ; preds = %9, %25
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %29 = icmp eq ptr %1, null
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %30, ptr %6, align 8, !tbaa !8, !alias.scope !19
  br i1 %29, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14, !alias.scope !19
  store i8 0, ptr %30, align 8, !tbaa !17, !alias.scope !19
  br label %52

33:                                               ; preds = %28
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17, !noalias !19
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = icmp ugt i64 %34, 9223372036854775806
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
          to label %39 unwind label %109

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %34, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #25
          to label %43 unwind label %109

43:                                               ; preds = %40
  store ptr %42, ptr %6, align 8, !tbaa !18, !alias.scope !19
  store i64 %34, ptr %30, align 8, !tbaa !17, !alias.scope !19
  br label %44

44:                                               ; preds = %43, %33
  %45 = phi ptr [ %42, %43 ], [ %30, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %1, align 1, !tbaa !17, !noalias !19
  store i8 %47, ptr %45, align 1, !tbaa !17
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr nonnull align 1 %1, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %48, %46, %44
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !14, !alias.scope !19
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !17
  br label %52

52:                                               ; preds = %49, %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %53 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %54 unwind label %111

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %56 = load ptr, ptr %5, align 8, !tbaa !18
  %57 = icmp eq ptr %56, %8
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %62, i1 false)
  br label %67

63:                                               ; preds = %54
  %64 = load i64, ptr %8, align 8, !tbaa !17
  store i64 %64, ptr %55, align 8, !tbaa !17
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !14
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi ptr [ %55, %58 ], [ %56, %63 ]
  %69 = phi i64 [ %60, %58 ], [ %66, %63 ]
  %70 = icmp ult i64 %69, 9223372036854775807
  call void @llvm.assume(i1 %70)
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %72 = load ptr, ptr %6, align 8, !tbaa !18
  %73 = icmp eq ptr %72, %30
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %30, i64 %78, i1 false)
  br label %83

79:                                               ; preds = %67
  %80 = load i64, ptr %30, align 8, !tbaa !17
  store i64 %80, ptr %71, align 8, !tbaa !17
  %81 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !14
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi ptr [ %71, %74 ], [ %72, %79 ]
  %85 = phi i64 [ %76, %74 ], [ %82, %79 ]
  %86 = icmp ult i64 %85, 9223372036854775807
  call void @llvm.assume(i1 %86)
  %87 = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 1, ptr %87, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %53, align 8, !tbaa !25
  %88 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %89 = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr %89, ptr %88, align 8, !tbaa !8
  %90 = icmp eq ptr %68, %55
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = icmp samesign ult i64 %69, 16
  call void @llvm.assume(i1 %92)
  %93 = add nuw nsw i64 %69, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %89, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %93, i1 false)
  br label %96

94:                                               ; preds = %83
  store ptr %68, ptr %88, align 8, !tbaa !18
  %95 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %95, ptr %89, align 8, !tbaa !17
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds nuw i8, ptr %53, i64 24
  store i64 %69, ptr %97, align 8, !tbaa !14
  %98 = getelementptr inbounds nuw i8, ptr %53, i64 48
  %99 = getelementptr inbounds nuw i8, ptr %53, i64 64
  store ptr %99, ptr %98, align 8, !tbaa !8
  %100 = icmp eq ptr %84, %71
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = icmp samesign ult i64 %85, 16
  call void @llvm.assume(i1 %102)
  %103 = add nuw nsw i64 %85, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, ptr noundef nonnull align 8 dereferenceable(1) %71, i64 %103, i1 false)
  br label %106

104:                                              ; preds = %96
  store ptr %84, ptr %98, align 8, !tbaa !18
  %105 = load i64, ptr %71, align 8, !tbaa !17
  store i64 %105, ptr %99, align 8, !tbaa !17
  br label %106

106:                                              ; preds = %104, %101
  %107 = getelementptr inbounds nuw i8, ptr %53, i64 56
  store i64 %85, ptr %107, align 8, !tbaa !14
  %108 = getelementptr inbounds nuw i8, ptr %53, i64 80
  store i8 0, ptr %108, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  ret ptr %53

109:                                              ; preds = %40, %38
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %122

111:                                              ; preds = %52
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = load ptr, ptr %6, align 8, !tbaa !18
  %114 = icmp eq ptr %113, %30
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %117 = load i64, ptr %116, align 8, !tbaa !14
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br label %122

119:                                              ; preds = %111
  %120 = load i64, ptr %30, align 8, !tbaa !17
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %121) #26
  br label %122

122:                                              ; preds = %119, %115, %109
  %123 = phi { ptr, i32 } [ %110, %109 ], [ %112, %115 ], [ %112, %119 ]
  %124 = load ptr, ptr %5, align 8, !tbaa !18
  %125 = icmp eq ptr %124, %8
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %128 = load i64, ptr %127, align 8, !tbaa !14
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %133

130:                                              ; preds = %122
  %131 = load i64, ptr %8, align 8, !tbaa !17
  %132 = add i64 %131, 1
  call void @_ZdlPvm(ptr noundef %124, i64 noundef %132) #26
  br label %133

133:                                              ; preds = %126, %130
  resume { ptr, i32 } %123
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_file_createEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %2, align 8, !tbaa !8, !alias.scope !30
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8, !tbaa !14, !alias.scope !30
  store i8 0, ptr %4, align 8, !tbaa !17, !alias.scope !30
  br label %24

7:                                                ; preds = %1
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17, !noalias !30
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #25
  store ptr %15, ptr %2, align 8, !tbaa !18, !alias.scope !30
  store i64 %8, ptr %4, align 8, !tbaa !17, !alias.scope !30
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %0, align 1, !tbaa !17, !noalias !30
  store i8 %19, ptr %17, align 1, !tbaa !17
  br label %21

20:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !14, !alias.scope !30
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !17
  br label %24

24:                                               ; preds = %5, %21
  %25 = invoke noundef ptr @_ZN12__apo_stdlib11file_createENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %26 unwind label %37

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !18
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %36

33:                                               ; preds = %26
  %34 = load i64, ptr %4, align 8, !tbaa !17
  %35 = add i64 %34, 1
  call void @_ZdlPvm(ptr noundef %27, i64 noundef %35) #26
  br label %36

36:                                               ; preds = %29, %33
  ret ptr %25

37:                                               ; preds = %24
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %2, align 8, !tbaa !18
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %43 = load i64, ptr %42, align 8, !tbaa !14
  %44 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %44)
  br label %48

45:                                               ; preds = %37
  %46 = load i64, ptr %4, align 8, !tbaa !17
  %47 = add i64 %46, 1
  call void @_ZdlPvm(ptr noundef %39, i64 noundef %47) #26
  br label %48

48:                                               ; preds = %41, %45
  resume { ptr, i32 } %38
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11file_createENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = alloca %"class.std::basic_ofstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext 2)
  %7 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %9 unwind label %28

9:                                                ; preds = %8
  %10 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %11 unwind label %30

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %13) #17
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !33
  %17 = load ptr, ptr %3, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !14
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  br label %27

24:                                               ; preds = %16
  %25 = load i64, ptr %18, align 8, !tbaa !17
  %26 = add i64 %25, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %26) #26
  br label %27

27:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  br label %34

28:                                               ; preds = %8
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %9
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  br label %106

34:                                               ; preds = %27, %1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %36) #17
  br label %39

39:                                               ; preds = %38, %34
  store ptr null, ptr %35, align 8, !tbaa !33
  %40 = load ptr, ptr %2, align 8, !tbaa !18
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %45 = load i64, ptr %44, align 8, !tbaa !14
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %50

47:                                               ; preds = %39
  %48 = load i64, ptr %41, align 8, !tbaa !17
  %49 = add i64 %48, 1
  call void @_ZdlPvm(ptr noundef %40, i64 noundef %49) #26
  br label %50

50:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #17
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 48)
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %52 = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %51)
          to label %53 unwind label %104

53:                                               ; preds = %50
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %53
  %56 = load ptr, ptr %4, align 8, !tbaa !25
  %57 = getelementptr i8, ptr %56, i64 -24
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %4, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = load i32, ptr %60, align 8, !tbaa !35
  %62 = or i32 %61, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %59, i32 noundef %62)
          to label %63 unwind label %104

63:                                               ; preds = %53, %55
  %64 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %65 unwind label %104

65:                                               ; preds = %63
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %67 = load ptr, ptr %0, align 8, !tbaa !18
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %72 = load i64, ptr %71, align 8, !tbaa !14
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  %74 = add nuw nsw i64 %72, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %66, ptr noundef nonnull align 8 dereferenceable(1) %68, i64 %74, i1 false)
  br label %79

75:                                               ; preds = %65
  store ptr %67, ptr %5, align 8, !tbaa !18
  %76 = load i64, ptr %68, align 8, !tbaa !17
  store i64 %76, ptr %66, align 8, !tbaa !17
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %78 = load i64, ptr %77, align 8, !tbaa !14
  br label %79

79:                                               ; preds = %70, %75
  %80 = phi ptr [ %66, %70 ], [ %67, %75 ]
  %81 = phi i64 [ %72, %70 ], [ %78, %75 ]
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = icmp ult i64 %81, 9223372036854775807
  call void @llvm.assume(i1 %83)
  store ptr %68, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %82, align 8, !tbaa !14
  store i8 0, ptr %68, align 1, !tbaa !17
  %84 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 119, ptr %84, align 8, !tbaa !17
  %85 = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %85, align 1, !tbaa !17
  %86 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 1, ptr %86, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %64, align 8, !tbaa !25
  %87 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %88, ptr %87, align 8, !tbaa !8
  %89 = icmp eq ptr %80, %66
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = icmp samesign ult i64 %81, 16
  call void @llvm.assume(i1 %91)
  %92 = add nuw nsw i64 %81, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %88, ptr noundef nonnull align 8 dereferenceable(1) %66, i64 %92, i1 false)
  br label %95

93:                                               ; preds = %79
  store ptr %80, ptr %87, align 8, !tbaa !18
  %94 = load i64, ptr %66, align 8, !tbaa !17
  store i64 %94, ptr %88, align 8, !tbaa !17
  br label %95

95:                                               ; preds = %93, %90
  %96 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %98 = getelementptr inbounds nuw i8, ptr %64, i64 24
  store i64 %81, ptr %98, align 8, !tbaa !14
  store ptr %66, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %97, align 8, !tbaa !14
  store i8 0, ptr %66, align 8, !tbaa !17
  %99 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %100 = getelementptr inbounds nuw i8, ptr %64, i64 64
  store ptr %100, ptr %99, align 8, !tbaa !8
  %101 = load i16, ptr %84, align 8
  store i16 %101, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %64, i64 56
  store i64 1, ptr %102, align 8, !tbaa !14
  store ptr %84, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %96, align 8, !tbaa !14
  store i8 0, ptr %84, align 8, !tbaa !17
  %103 = getelementptr inbounds nuw i8, ptr %64, i64 80
  store i8 0, ptr %103, align 8, !tbaa !27
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #17
  ret ptr %64

104:                                              ; preds = %55, %50, %63
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #17
  br label %106

106:                                              ; preds = %104, %32
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %33, %32 ]
  resume { ptr, i32 } %107
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib10file_writeEPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::basic_ofstream", align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %104

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %14 = load i8, ptr %13, align 8, !tbaa !27, !range !45, !noundef !46
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %104, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load i64, ptr %17, align 8, !tbaa !14
  %19 = icmp ult i64 %18, 9223372036854775807
  tail call void @llvm.assume(i1 %19)
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !18
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %34, i8 noundef zeroext 2)
  %35 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %37 unwind label %56

37:                                               ; preds = %36
  %38 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %39 unwind label %58

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %41) #17
  br label %44

44:                                               ; preds = %43, %39
  store ptr null, ptr %40, align 8, !tbaa !33
  %45 = load ptr, ptr %5, align 8, !tbaa !18
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !14
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  br label %55

52:                                               ; preds = %44
  %53 = load i64, ptr %46, align 8, !tbaa !17
  %54 = add i64 %53, 1
  call void @_ZdlPvm(ptr noundef %45, i64 noundef %54) #26
  br label %55

55:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %62

56:                                               ; preds = %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %37
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %102

62:                                               ; preds = %55, %32
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %64 = load ptr, ptr %63, align 8, !tbaa !33
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %64) #17
  br label %67

67:                                               ; preds = %66, %62
  store ptr null, ptr %63, align 8, !tbaa !33
  %68 = load ptr, ptr %4, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !14
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  br label %78

75:                                               ; preds = %67
  %76 = load i64, ptr %69, align 8, !tbaa !17
  %77 = add i64 %76, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %77) #26
  br label %78

78:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #17
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef %33)
  %79 = load ptr, ptr %6, align 8, !tbaa !25
  %80 = getelementptr i8, ptr %79, i64 -24
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds i8, ptr %6, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %84 = load i32, ptr %83, align 8, !tbaa !35
  %85 = and i32 %84, 5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %100

87:                                               ; preds = %89
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #17
  br label %102

89:                                               ; preds = %78
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, i64 noundef %1)
          to label %91 unwind label %87

91:                                               ; preds = %89
  %92 = load ptr, ptr %6, align 8, !tbaa !25
  %93 = getelementptr i8, ptr %92, i64 -24
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds i8, ptr %6, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !35
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %78, %91
  %101 = phi i32 [ %99, %91 ], [ 0, %78 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #17
  br label %104

102:                                              ; preds = %87, %60
  %103 = phi { ptr, i32 } [ %88, %87 ], [ %61, %60 ]
  resume { ptr, i32 } %103

104:                                              ; preds = %8, %3, %12, %100
  %105 = phi i32 [ %101, %100 ], [ 0, %12 ], [ 0, %3 ], [ 0, %8 ]
  ret i32 %105
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_read_allEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
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
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %81, label %12

12:                                               ; preds = %1, %8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %13, ptr %2, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %14, align 8, !tbaa !14
  store i8 0, ptr %13, align 8, !tbaa !17
  %15 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !47

17:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %18 unwind label %71

18:                                               ; preds = %17
  %19 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %20

20:                                               ; preds = %18, %12
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds i8, ptr %25, i64 -32
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %29, ptr %23, align 8, !tbaa !8
  %30 = load ptr, ptr %2, align 8, !tbaa !18
  %31 = icmp eq ptr %30, %13
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, ptr %14, align 8, !tbaa !14
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %13, i64 %35, i1 false)
  br label %39

36:                                               ; preds = %28
  store ptr %30, ptr %23, align 8, !tbaa !18
  %37 = load i64, ptr %13, align 8, !tbaa !17
  store i64 %37, ptr %29, align 8, !tbaa !17
  %38 = load i64, ptr %14, align 8, !tbaa !14
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = icmp ult i64 %40, 9223372036854775807
  call void @llvm.assume(i1 %41)
  %42 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %40, ptr %42, align 8, !tbaa !14
  store ptr %13, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %14, align 8, !tbaa !14
  store i8 0, ptr %13, align 8, !tbaa !17
  %43 = load ptr, ptr %22, align 8, !tbaa !48
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %44, ptr %22, align 8, !tbaa !48
  br label %48

45:                                               ; preds = %20
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %46 unwind label %71

46:                                               ; preds = %45
  %47 = load ptr, ptr %22, align 8, !tbaa !55, !noalias !56
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ %44, %39 ], [ %47, %46 ]
  %50 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %51 = load ptr, ptr %50, align 8, !tbaa !59, !noalias !56
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds nuw i8, ptr %21, i64 72
  %55 = load ptr, ptr %54, align 8, !tbaa !60, !noalias !56
  %56 = getelementptr inbounds i8, ptr %55, i64 -8
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 512
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi ptr [ %58, %53 ], [ %49, %48 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 -32
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  %63 = load ptr, ptr %2, align 8, !tbaa !18
  %64 = icmp eq ptr %63, %13
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, ptr %14, align 8, !tbaa !14
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %273

68:                                               ; preds = %59
  %69 = load i64, ptr %13, align 8, !tbaa !17
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %63, i64 noundef %70) #26
  br label %273

71:                                               ; preds = %45, %17
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %2, align 8, !tbaa !18
  %74 = icmp eq ptr %73, %13
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, ptr %14, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %275

78:                                               ; preds = %71
  %79 = load i64, ptr %13, align 8, !tbaa !17
  %80 = add i64 %79, 1
  call void @_ZdlPvm(ptr noundef %73, i64 noundef %80) #26
  br label %275

81:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %3) #17
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 4)
  %83 = load ptr, ptr %3, align 8, !tbaa !25
  %84 = getelementptr i8, ptr %83, i64 -24
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds i8, ptr %3, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %88 = load i32, ptr %87, align 8, !tbaa !35
  %89 = and i32 %88, 5
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %160, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %92, ptr %4, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %93, align 8, !tbaa !14
  store i8 0, ptr %92, align 8, !tbaa !17
  %94 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99, !prof !47

96:                                               ; preds = %91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %97 unwind label %150

97:                                               ; preds = %96
  %98 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %99

99:                                               ; preds = %97, %91
  %100 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 48
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 64
  %104 = load ptr, ptr %103, align 8, !tbaa !54
  %105 = getelementptr inbounds i8, ptr %104, i64 -32
  %106 = icmp eq ptr %102, %105
  br i1 %106, label %124, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds nuw i8, ptr %102, i64 16
  store ptr %108, ptr %102, align 8, !tbaa !8
  %109 = load ptr, ptr %4, align 8, !tbaa !18
  %110 = icmp eq ptr %109, %92
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i64, ptr %93, align 8, !tbaa !14
  %113 = icmp ult i64 %112, 16
  call void @llvm.assume(i1 %113)
  %114 = add nuw nsw i64 %112, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %108, ptr noundef nonnull align 8 dereferenceable(1) %92, i64 %114, i1 false)
  br label %118

115:                                              ; preds = %107
  store ptr %109, ptr %102, align 8, !tbaa !18
  %116 = load i64, ptr %92, align 8, !tbaa !17
  store i64 %116, ptr %108, align 8, !tbaa !17
  %117 = load i64, ptr %93, align 8, !tbaa !14
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i64 [ %117, %115 ], [ %112, %111 ]
  %120 = icmp ult i64 %119, 9223372036854775807
  call void @llvm.assume(i1 %120)
  %121 = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i64 %119, ptr %121, align 8, !tbaa !14
  store ptr %92, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %93, align 8, !tbaa !14
  store i8 0, ptr %92, align 8, !tbaa !17
  %122 = load ptr, ptr %101, align 8, !tbaa !48
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 32
  store ptr %123, ptr %101, align 8, !tbaa !48
  br label %127

124:                                              ; preds = %99
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %100, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %125 unwind label %150

125:                                              ; preds = %124
  %126 = load ptr, ptr %101, align 8, !tbaa !55, !noalias !62
  br label %127

127:                                              ; preds = %125, %118
  %128 = phi ptr [ %123, %118 ], [ %126, %125 ]
  %129 = getelementptr inbounds nuw i8, ptr %100, i64 56
  %130 = load ptr, ptr %129, align 8, !tbaa !59, !noalias !62
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %100, i64 72
  %134 = load ptr, ptr %133, align 8, !tbaa !60, !noalias !62
  %135 = getelementptr inbounds i8, ptr %134, i64 -8
  %136 = load ptr, ptr %135, align 8, !tbaa !61
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 512
  br label %138

138:                                              ; preds = %132, %127
  %139 = phi ptr [ %137, %132 ], [ %128, %127 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 -32
  %141 = load ptr, ptr %140, align 8, !tbaa !18
  %142 = load ptr, ptr %4, align 8, !tbaa !18
  %143 = icmp eq ptr %142, %92
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i64, ptr %93, align 8, !tbaa !14
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %269

147:                                              ; preds = %138
  %148 = load i64, ptr %92, align 8, !tbaa !17
  %149 = add i64 %148, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %149) #26
  br label %269

150:                                              ; preds = %124, %96
  %151 = landingpad { ptr, i32 }
          cleanup
  %152 = load ptr, ptr %4, align 8, !tbaa !18
  %153 = icmp eq ptr %152, %92
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i64, ptr %93, align 8, !tbaa !14
  %156 = icmp ult i64 %155, 16
  call void @llvm.assume(i1 %156)
  br label %271

157:                                              ; preds = %150
  %158 = load i64, ptr %92, align 8, !tbaa !17
  %159 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %152, i64 noundef %159) #26
  br label %271

160:                                              ; preds = %81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %161 = getelementptr inbounds nuw i8, ptr %86, i64 232
  %162 = load ptr, ptr %161, align 8, !tbaa !65
  %163 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %163, ptr %5, align 8, !tbaa !8
  %164 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %164, align 8, !tbaa !14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %162, i32 -1, ptr null, i32 -1)
          to label %165 unwind label %246

165:                                              ; preds = %160
  %166 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %166, ptr %6, align 8, !tbaa !8
  %167 = load ptr, ptr %5, align 8, !tbaa !18
  %168 = icmp eq ptr %167, %163
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i64, ptr %164, align 8, !tbaa !14
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  %172 = add nuw nsw i64 %170, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %166, ptr noundef nonnull align 8 dereferenceable(1) %163, i64 %172, i1 false)
  br label %176

173:                                              ; preds = %165
  store ptr %167, ptr %6, align 8, !tbaa !18
  %174 = load i64, ptr %163, align 8, !tbaa !17
  store i64 %174, ptr %166, align 8, !tbaa !17
  %175 = load i64, ptr %164, align 8, !tbaa !14
  br label %176

176:                                              ; preds = %169, %173
  %177 = phi i64 [ %170, %169 ], [ %175, %173 ]
  %178 = icmp ult i64 %177, 9223372036854775807
  call void @llvm.assume(i1 %178)
  %179 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %177, ptr %179, align 8, !tbaa !14
  store ptr %163, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %164, align 8, !tbaa !14
  store i8 0, ptr %163, align 8, !tbaa !17
  %180 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %185, !prof !47

182:                                              ; preds = %176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %183 unwind label %248

183:                                              ; preds = %182
  %184 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %185

185:                                              ; preds = %183, %176
  %186 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 48
  %188 = load ptr, ptr %187, align 8, !tbaa !48
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 64
  %190 = load ptr, ptr %189, align 8, !tbaa !54
  %191 = getelementptr inbounds i8, ptr %190, i64 -32
  %192 = icmp eq ptr %188, %191
  br i1 %192, label %210, label %193

193:                                              ; preds = %185
  %194 = getelementptr inbounds nuw i8, ptr %188, i64 16
  store ptr %194, ptr %188, align 8, !tbaa !8
  %195 = load ptr, ptr %6, align 8, !tbaa !18
  %196 = icmp eq ptr %195, %166
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i64, ptr %179, align 8, !tbaa !14
  %199 = icmp ult i64 %198, 16
  call void @llvm.assume(i1 %199)
  %200 = add nuw nsw i64 %198, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %194, ptr noundef nonnull align 8 dereferenceable(1) %166, i64 %200, i1 false)
  br label %204

201:                                              ; preds = %193
  store ptr %195, ptr %188, align 8, !tbaa !18
  %202 = load i64, ptr %166, align 8, !tbaa !17
  store i64 %202, ptr %194, align 8, !tbaa !17
  %203 = load i64, ptr %179, align 8, !tbaa !14
  br label %204

204:                                              ; preds = %201, %197
  %205 = phi i64 [ %203, %201 ], [ %198, %197 ]
  %206 = icmp ult i64 %205, 9223372036854775807
  call void @llvm.assume(i1 %206)
  %207 = getelementptr inbounds nuw i8, ptr %188, i64 8
  store i64 %205, ptr %207, align 8, !tbaa !14
  store ptr %166, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %179, align 8, !tbaa !14
  store i8 0, ptr %166, align 8, !tbaa !17
  %208 = load ptr, ptr %187, align 8, !tbaa !48
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 32
  store ptr %209, ptr %187, align 8, !tbaa !48
  br label %213

210:                                              ; preds = %185
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %186, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %211 unwind label %248

211:                                              ; preds = %210
  %212 = load ptr, ptr %187, align 8, !tbaa !55, !noalias !72
  br label %213

213:                                              ; preds = %211, %204
  %214 = phi ptr [ %209, %204 ], [ %212, %211 ]
  %215 = getelementptr inbounds nuw i8, ptr %186, i64 56
  %216 = load ptr, ptr %215, align 8, !tbaa !59, !noalias !72
  %217 = icmp eq ptr %214, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = getelementptr inbounds nuw i8, ptr %186, i64 72
  %220 = load ptr, ptr %219, align 8, !tbaa !60, !noalias !72
  %221 = getelementptr inbounds i8, ptr %220, i64 -8
  %222 = load ptr, ptr %221, align 8, !tbaa !61
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 512
  br label %224

224:                                              ; preds = %218, %213
  %225 = phi ptr [ %223, %218 ], [ %214, %213 ]
  %226 = getelementptr inbounds i8, ptr %225, i64 -32
  %227 = load ptr, ptr %226, align 8, !tbaa !18
  %228 = load ptr, ptr %6, align 8, !tbaa !18
  %229 = icmp eq ptr %228, %166
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i64, ptr %179, align 8, !tbaa !14
  %232 = icmp ult i64 %231, 16
  call void @llvm.assume(i1 %232)
  br label %236

233:                                              ; preds = %224
  %234 = load i64, ptr %166, align 8, !tbaa !17
  %235 = add i64 %234, 1
  call void @_ZdlPvm(ptr noundef %228, i64 noundef %235) #26
  br label %236

236:                                              ; preds = %230, %233
  %237 = load ptr, ptr %5, align 8, !tbaa !18
  %238 = icmp eq ptr %237, %163
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i64, ptr %164, align 8, !tbaa !14
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %245

242:                                              ; preds = %236
  %243 = load i64, ptr %163, align 8, !tbaa !17
  %244 = add i64 %243, 1
  call void @_ZdlPvm(ptr noundef %237, i64 noundef %244) #26
  br label %245

245:                                              ; preds = %239, %242
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %269

246:                                              ; preds = %160
  %247 = landingpad { ptr, i32 }
          cleanup
  br label %267

248:                                              ; preds = %210, %182
  %249 = landingpad { ptr, i32 }
          cleanup
  %250 = load ptr, ptr %6, align 8, !tbaa !18
  %251 = icmp eq ptr %250, %166
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load i64, ptr %179, align 8, !tbaa !14
  %254 = icmp ult i64 %253, 16
  call void @llvm.assume(i1 %254)
  br label %258

255:                                              ; preds = %248
  %256 = load i64, ptr %166, align 8, !tbaa !17
  %257 = add i64 %256, 1
  call void @_ZdlPvm(ptr noundef %250, i64 noundef %257) #26
  br label %258

258:                                              ; preds = %252, %255
  %259 = load ptr, ptr %5, align 8, !tbaa !18
  %260 = icmp eq ptr %259, %163
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i64, ptr %164, align 8, !tbaa !14
  %263 = icmp ult i64 %262, 16
  call void @llvm.assume(i1 %263)
  br label %267

264:                                              ; preds = %258
  %265 = load i64, ptr %163, align 8, !tbaa !17
  %266 = add i64 %265, 1
  call void @_ZdlPvm(ptr noundef %259, i64 noundef %266) #26
  br label %267

267:                                              ; preds = %264, %261, %246
  %268 = phi { ptr, i32 } [ %247, %246 ], [ %249, %261 ], [ %249, %264 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %271

269:                                              ; preds = %147, %144, %245
  %270 = phi ptr [ %227, %245 ], [ %141, %144 ], [ %141, %147 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %3) #17
  br label %273

271:                                              ; preds = %154, %157, %267
  %272 = phi { ptr, i32 } [ %268, %267 ], [ %151, %154 ], [ %151, %157 ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #17
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %3) #17
  br label %275

273:                                              ; preds = %68, %65, %269
  %274 = phi ptr [ %270, %269 ], [ %62, %65 ], [ %62, %68 ]
  ret ptr %274

275:                                              ; preds = %75, %78, %271
  %276 = phi { ptr, i32 } [ %272, %271 ], [ %72, %75 ], [ %72, %78 ]
  resume { ptr, i32 } %276
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_722sys__native_file_closeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %8, align 8, !tbaa !27
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #25
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !47

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !48
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !48
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !55, !noalias !75
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !59, !noalias !75
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !60, !noalias !75
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #26
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #26
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_sync_allEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2)
  %10 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %11 unwind label %33

11:                                               ; preds = %8
  %12 = and i64 %10, 255
  %13 = icmp ne i64 %12, 0
  %14 = icmp ne i64 %12, 255
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %19, %11
  store ptr null, ptr %16, align 8, !tbaa !33
  %21 = load ptr, ptr %2, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %22, align 8, !tbaa !17
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %30) #26
  br label %31

31:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  %32 = zext i1 %15 to i32
  br label %35

33:                                               ; preds = %8
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  resume { ptr, i32 } %34

35:                                               ; preds = %1, %4, %31
  %36 = phi i32 [ %32, %31 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_file_sync_dataEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2)
  %10 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %11 unwind label %33

11:                                               ; preds = %8
  %12 = and i64 %10, 255
  %13 = icmp ne i64 %12, 0
  %14 = icmp ne i64 %12, 255
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %19, %11
  store ptr null, ptr %16, align 8, !tbaa !33
  %21 = load ptr, ptr %2, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %31

28:                                               ; preds = %20
  %29 = load i64, ptr %22, align 8, !tbaa !17
  %30 = add i64 %29, 1
  call void @_ZdlPvm(ptr noundef %21, i64 noundef %30) #26
  br label %31

31:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  %32 = zext i1 %15 to i32
  br label %35

33:                                               ; preds = %8
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  resume { ptr, i32 } %34

35:                                               ; preds = %1, %4, %31
  %36 = phi i32 [ %32, %31 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_file_set_lenEPvl(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp ne i32 %7, 1
  %9 = icmp slt i64 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %39, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef zeroext 2)
          to label %13 unwind label %31

13:                                               ; preds = %11
  invoke void @_ZNSt10filesystem11resize_fileERKNS_7__cxx114pathEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %1)
          to label %14 unwind label %33

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !33
  %20 = load ptr, ptr %3, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !14
  %26 = icmp ult i64 %25, 16
  call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, ptr %21, align 8, !tbaa !17
  %29 = add i64 %28, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #26
  br label %30

30:                                               ; preds = %27, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  br label %39

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          catch ptr null
  br label %35

33:                                               ; preds = %13
  %34 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %38 = call ptr @__cxa_begin_catch(ptr %37) #17
  call void @__cxa_end_catch()
  br label %39

39:                                               ; preds = %2, %5, %30, %35
  %40 = phi i32 [ 1, %30 ], [ 0, %35 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_metadataEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, ptr %0, ptr null
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ null, %1 ], [ %9, %5 ]
  %12 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 16, ptr %13, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib15metadata_handleE, i64 16), ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %14, align 8, !tbaa !78
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %16, ptr %15, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %17, align 8, !tbaa !14
  store i8 0, ptr %16, align 1, !tbaa !17
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %19, ptr %18, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %20, align 8, !tbaa !14
  store i8 0, ptr %19, align 1, !tbaa !17
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 88
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 104
  store ptr %22, ptr %21, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i64 0, ptr %23, align 8, !tbaa !14
  store i8 0, ptr %22, align 1, !tbaa !17
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i8 0, ptr %24, align 8, !tbaa !80
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 121
  store i8 0, ptr %25, align 1, !tbaa !81
  %26 = getelementptr inbounds nuw i8, ptr %12, i64 122
  store i8 0, ptr %26, align 2, !tbaa !82
  %27 = icmp eq ptr %11, null
  br i1 %27, label %259, label %28

28:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
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
  store i8 %35, ptr %24, align 8, !tbaa !80
  %36 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %37 unwind label %53

37:                                               ; preds = %32
  %38 = and i64 %36, 255
  %39 = icmp eq i64 %38, 1
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %25, align 1, !tbaa !81
  %41 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %42 unwind label %55

42:                                               ; preds = %37
  %43 = and i64 %41, 549755813888
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %26, align 2, !tbaa !82
  %46 = load i8, ptr %25, align 1, !tbaa !81, !range !45, !noundef !46
  %47 = trunc nuw i8 %46 to i1
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = invoke noundef i64 @_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %50 unwind label %53

50:                                               ; preds = %48
  store i64 %49, ptr %14, align 8, !tbaa !78
  br label %57

51:                                               ; preds = %28
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %255

53:                                               ; preds = %32, %30, %48
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %253

55:                                               ; preds = %37
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %253

57:                                               ; preds = %50, %42
  %58 = invoke i64 @_ZNSt10filesystem15last_write_timeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %59 unwind label %250

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
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
  br i1 %80, label %81, label %63, !llvm.loop !83

81:                                               ; preds = %77, %75, %71, %67, %59
  %82 = phi i32 [ %68, %67 ], [ %72, %71 ], [ %76, %75 ], [ 1, %59 ], [ %79, %77 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %83, ptr %3, align 8, !tbaa !8, !alias.scope !85
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %84, align 8, !tbaa !14, !alias.scope !85
  store i8 0, ptr %83, align 8, !tbaa !17, !alias.scope !85
  %85 = trunc nuw nsw i64 %60 to i32
  %86 = add i32 %82, %85
  %87 = zext i32 %86 to i64
  %88 = zext i32 %82 to i64
  %89 = shl nuw i64 %88, 32
  %90 = or disjoint i64 %89, %60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringExEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %87, i64 %90, i64 %61)
          to label %101 unwind label %91

91:                                               ; preds = %81
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !85
  %94 = icmp eq ptr %93, %83
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %84, align 8, !tbaa !14, !alias.scope !85
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %252

98:                                               ; preds = %91
  %99 = load i64, ptr %83, align 8, !tbaa !17, !alias.scope !85
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %93, i64 noundef %100) #26
  br label %252

101:                                              ; preds = %81
  %102 = load ptr, ptr %15, align 8, !tbaa !18
  %103 = icmp eq ptr %102, %16
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, ptr %17, align 8, !tbaa !14
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  %107 = load ptr, ptr %3, align 8, !tbaa !18
  %108 = icmp eq ptr %107, %83
  br i1 %108, label %112, label %127

109:                                              ; preds = %101
  %110 = load ptr, ptr %3, align 8, !tbaa !18
  %111 = icmp eq ptr %110, %83
  br i1 %111, label %112, label %125

112:                                              ; preds = %109, %104
  %113 = phi ptr [ %110, %109 ], [ %107, %104 ]
  %114 = load i64, ptr %84, align 8, !tbaa !14
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  switch i64 %114, label %118 [
    i64 0, label %119
    i64 1, label %116
  ]

116:                                              ; preds = %112
  %117 = load i8, ptr %113, align 1, !tbaa !17
  store i8 %117, ptr %102, align 1, !tbaa !17
  br label %119

118:                                              ; preds = %112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 %113, i64 %114, i1 false)
  br label %119

119:                                              ; preds = %118, %116, %112
  %120 = load i64, ptr %84, align 8, !tbaa !14
  %121 = icmp ult i64 %120, 9223372036854775807
  call void @llvm.assume(i1 %121)
  store i64 %120, ptr %17, align 8, !tbaa !14
  %122 = load ptr, ptr %15, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 %120
  store i8 0, ptr %123, align 1, !tbaa !17
  %124 = load ptr, ptr %3, align 8, !tbaa !18
  br label %137

125:                                              ; preds = %109
  %126 = load i64, ptr %16, align 8, !tbaa !17
  br label %127

127:                                              ; preds = %125, %104
  %128 = phi ptr [ %110, %125 ], [ %107, %104 ]
  %129 = phi ptr [ %102, %125 ], [ null, %104 ]
  %130 = phi i64 [ %126, %125 ], [ undef, %104 ]
  store ptr %128, ptr %15, align 8, !tbaa !18
  %131 = load i64, ptr %84, align 8, !tbaa !14
  %132 = icmp ult i64 %131, 9223372036854775807
  call void @llvm.assume(i1 %132)
  store i64 %131, ptr %17, align 8, !tbaa !14
  %133 = load i64, ptr %83, align 8, !tbaa !17
  store i64 %133, ptr %16, align 8, !tbaa !17
  %134 = icmp eq ptr %129, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  store ptr %129, ptr %3, align 8, !tbaa !18
  store i64 %130, ptr %83, align 8, !tbaa !17
  br label %137

136:                                              ; preds = %127
  store ptr %83, ptr %3, align 8, !tbaa !18
  br label %137

137:                                              ; preds = %119, %135, %136
  %138 = phi ptr [ %129, %135 ], [ %83, %136 ], [ %124, %119 ]
  store i64 0, ptr %84, align 8, !tbaa !14
  store i8 0, ptr %138, align 1, !tbaa !17
  %139 = load ptr, ptr %3, align 8, !tbaa !18
  %140 = icmp eq ptr %139, %83
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, ptr %84, align 8, !tbaa !14
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %137
  %145 = load i64, ptr %83, align 8, !tbaa !17
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %146) #26
  br label %147

147:                                              ; preds = %141, %144
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  %148 = load i64, ptr %17, align 8, !tbaa !14
  %149 = icmp ult i64 %148, 9223372036854775807
  call void @llvm.assume(i1 %149)
  %150 = load ptr, ptr %18, align 8, !tbaa !18
  %151 = icmp eq ptr %150, %19
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i64, ptr %20, align 8, !tbaa !14
  %154 = icmp ult i64 %153, 16
  call void @llvm.assume(i1 %154)
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i64, ptr %19, align 8
  %157 = select i1 %151, i64 15, i64 %156
  %158 = icmp samesign ugt i64 %157, 14
  call void @llvm.assume(i1 %158)
  %159 = icmp ult i64 %157, 9223372036854775807
  call void @llvm.assume(i1 %159)
  %160 = icmp samesign ugt i64 %148, %157
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = shl nuw i64 %157, 1
  %163 = icmp ult i64 %148, %162
  %164 = call i64 @llvm.umin.i64(i64 %162, i64 9223372036854775806)
  %165 = select i1 %163, i64 %164, i64 %148
  %166 = add nuw nsw i64 %165, 1
  %167 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %166) #25
          to label %168 unwind label %250

168:                                              ; preds = %161
  br i1 %151, label %169, label %172

169:                                              ; preds = %168
  %170 = load i64, ptr %20, align 8, !tbaa !14
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  br label %174

172:                                              ; preds = %168
  %173 = add i64 %156, 1
  call void @_ZdlPvm(ptr noundef %150, i64 noundef %173) #26
  br label %174

174:                                              ; preds = %172, %169
  store ptr %167, ptr %18, align 8, !tbaa !18
  store i64 %165, ptr %19, align 8, !tbaa !17
  %175 = load ptr, ptr %15, align 8, !tbaa !18
  br label %184

176:                                              ; preds = %155
  %177 = icmp eq i64 %148, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %176
  store i64 0, ptr %20, align 8, !tbaa !14
  store i8 0, ptr %150, align 1, !tbaa !17
  br label %190

179:                                              ; preds = %176
  %180 = load ptr, ptr %15, align 8, !tbaa !18
  %181 = icmp eq i64 %148, 1
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i8, ptr %180, align 1, !tbaa !17
  store i8 %183, ptr %150, align 1, !tbaa !17
  br label %187

184:                                              ; preds = %179, %174
  %185 = phi ptr [ %175, %174 ], [ %180, %179 ]
  %186 = phi ptr [ %167, %174 ], [ %150, %179 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %186, ptr align 1 %185, i64 %148, i1 false)
  br label %187

187:                                              ; preds = %184, %182
  store i64 %148, ptr %20, align 8, !tbaa !14
  %188 = load ptr, ptr %18, align 8, !tbaa !18
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 %148
  store i8 0, ptr %189, align 1, !tbaa !17
  br label %190

190:                                              ; preds = %187, %178
  %191 = load i64, ptr %17, align 8, !tbaa !14
  %192 = icmp ult i64 %191, 9223372036854775807
  call void @llvm.assume(i1 %192)
  %193 = load ptr, ptr %21, align 8, !tbaa !18
  %194 = icmp eq ptr %193, %22
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i64, ptr %23, align 8, !tbaa !14
  %197 = icmp ult i64 %196, 16
  call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i64, ptr %22, align 8
  %200 = select i1 %194, i64 15, i64 %199
  %201 = icmp samesign ugt i64 %200, 14
  call void @llvm.assume(i1 %201)
  %202 = icmp ult i64 %200, 9223372036854775807
  call void @llvm.assume(i1 %202)
  %203 = icmp samesign ugt i64 %191, %200
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = shl nuw i64 %200, 1
  %206 = icmp ult i64 %191, %205
  %207 = call i64 @llvm.umin.i64(i64 %205, i64 9223372036854775806)
  %208 = select i1 %206, i64 %207, i64 %191
  %209 = add nuw nsw i64 %208, 1
  %210 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %209) #25
          to label %211 unwind label %250

211:                                              ; preds = %204
  br i1 %194, label %212, label %215

212:                                              ; preds = %211
  %213 = load i64, ptr %23, align 8, !tbaa !14
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  br label %217

215:                                              ; preds = %211
  %216 = add i64 %199, 1
  call void @_ZdlPvm(ptr noundef %193, i64 noundef %216) #26
  br label %217

217:                                              ; preds = %215, %212
  store ptr %210, ptr %21, align 8, !tbaa !18
  store i64 %208, ptr %22, align 8, !tbaa !17
  %218 = load ptr, ptr %15, align 8, !tbaa !18
  br label %227

219:                                              ; preds = %198
  %220 = icmp eq i64 %191, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %219
  store i64 0, ptr %23, align 8, !tbaa !14
  store i8 0, ptr %193, align 1, !tbaa !17
  br label %233

222:                                              ; preds = %219
  %223 = load ptr, ptr %15, align 8, !tbaa !18
  %224 = icmp eq i64 %191, 1
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i8, ptr %223, align 1, !tbaa !17
  store i8 %226, ptr %193, align 1, !tbaa !17
  br label %230

227:                                              ; preds = %222, %217
  %228 = phi ptr [ %218, %217 ], [ %223, %222 ]
  %229 = phi ptr [ %210, %217 ], [ %193, %222 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %229, ptr align 1 %228, i64 %191, i1 false)
  br label %230

230:                                              ; preds = %227, %225
  store i64 %191, ptr %23, align 8, !tbaa !14
  %231 = load ptr, ptr %21, align 8, !tbaa !18
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 %191
  store i8 0, ptr %232, align 1, !tbaa !17
  br label %233

233:                                              ; preds = %230, %221
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %235 = load ptr, ptr %234, align 8, !tbaa !33
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %234, ptr noundef nonnull %235) #17
  br label %238

238:                                              ; preds = %237, %233
  store ptr null, ptr %234, align 8, !tbaa !33
  %239 = load ptr, ptr %2, align 8, !tbaa !18
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %244 = load i64, ptr %243, align 8, !tbaa !14
  %245 = icmp ult i64 %244, 16
  call void @llvm.assume(i1 %245)
  br label %249

246:                                              ; preds = %238
  %247 = load i64, ptr %240, align 8, !tbaa !17
  %248 = add i64 %247, 1
  call void @_ZdlPvm(ptr noundef %239, i64 noundef %248) #26
  br label %249

249:                                              ; preds = %242, %246
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  br label %259

250:                                              ; preds = %204, %161, %57
  %251 = landingpad { ptr, i32 }
          catch ptr null
  br label %253

252:                                              ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %253

253:                                              ; preds = %250, %252, %55, %53
  %254 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ], [ %251, %250 ], [ %92, %252 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  br label %255

255:                                              ; preds = %253, %51
  %256 = phi { ptr, i32 } [ %254, %253 ], [ %52, %51 ]
  %257 = extractvalue { ptr, i32 } %256, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  %258 = call ptr @__cxa_begin_catch(ptr %257) #17
  call void @__cxa_end_catch()
  br label %259

259:                                              ; preds = %249, %255, %10
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN31__apollo_inline_inline_2221_5_721sys__native_meta_sizeEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !78
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_meta_modifiedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #25
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !47

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !48
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !48
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !55, !noalias !90
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !59, !noalias !90
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !60, !noalias !90
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #26
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #26
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_725sys__native_meta_accessedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #25
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !47

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !48
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !48
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !55, !noalias !93
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !59, !noalias !93
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !60, !noalias !93
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #26
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #26
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2221_5_724sys__native_meta_createdEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !22
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %10, ptr %2, align 8, !tbaa !8
  %11 = load ptr, ptr %9, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 9223372036854775807
  call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %13, 1
  %18 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #25
  store ptr %18, ptr %2, align 8, !tbaa !18
  store i64 %13, ptr %10, align 8, !tbaa !17
  br label %25

19:                                               ; preds = %8
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %13, 1
  br label %25

23:                                               ; preds = %19
  %24 = load i8, ptr %11, align 1, !tbaa !17
  store i8 %24, ptr %10, align 8, !tbaa !17
  br label %28

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %22, %21 ], [ %17, %16 ]
  %27 = phi ptr [ %10, %21 ], [ %18, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 1 dereferenceable(1) %11, i64 %26, i1 false)
  br label %28

28:                                               ; preds = %23, %25
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %13, ptr %29, align 8, !tbaa !14
  br label %33

30:                                               ; preds = %1, %4
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %31, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %32, align 8, !tbaa !14
  store i8 0, ptr %31, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !47

36:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %37 unwind label %97

37:                                               ; preds = %36
  %38 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 48
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  %45 = getelementptr inbounds i8, ptr %44, i64 -32
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %48, ptr %42, align 8, !tbaa !8
  %49 = load ptr, ptr %2, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %61

57:                                               ; preds = %47
  store ptr %49, ptr %42, align 8, !tbaa !18
  %58 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %58, ptr %48, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !14
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i64 [ %60, %57 ], [ %54, %52 ]
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %64 = icmp ult i64 %62, 9223372036854775807
  call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %62, ptr %65, align 8, !tbaa !14
  store ptr %50, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !14
  store i8 0, ptr %50, align 8, !tbaa !17
  %66 = load ptr, ptr %41, align 8, !tbaa !48
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  store ptr %67, ptr %41, align 8, !tbaa !48
  br label %71

68:                                               ; preds = %39
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %69 unwind label %97

69:                                               ; preds = %68
  %70 = load ptr, ptr %41, align 8, !tbaa !55, !noalias !96
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi ptr [ %67, %61 ], [ %70, %69 ]
  %73 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !59, !noalias !96
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %40, i64 72
  %78 = load ptr, ptr %77, align 8, !tbaa !60, !noalias !96
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 512
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %72, %71 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = load ptr, ptr %84, align 8, !tbaa !18
  %86 = load ptr, ptr %2, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %82
  %94 = load i64, ptr %87, align 8, !tbaa !17
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %95) #26
  br label %96

96:                                               ; preds = %89, %93
  ret ptr %85

97:                                               ; preds = %68, %36
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = load ptr, ptr %2, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %97
  %107 = load i64, ptr %100, align 8, !tbaa !17
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %99, i64 noundef %108) #26
  br label %109

109:                                              ; preds = %102, %106
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_723sys__native_meta_is_dirEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i8, ptr %8, align 8, !tbaa !80, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_meta_is_fileEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %9 = load i8, ptr %8, align 1, !tbaa !81, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_perm_readonlyEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %9 = load i8, ptr %8, align 2, !tbaa !82, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib13fs_create_dirESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %7 unwind label %53

7:                                                ; preds = %2
  %8 = invoke noundef zeroext i1 @_ZNSt10filesystem16create_directoryERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %9 unwind label %55

9:                                                ; preds = %7
  br i1 %8, label %35, label %10

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %11 unwind label %57

11:                                               ; preds = %10
  %12 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %13 unwind label %59

13:                                               ; preds = %11
  %14 = and i64 %12, 255
  %15 = icmp ne i64 %14, 0
  %16 = icmp ne i64 %14, 255
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %22, %13
  store ptr null, ptr %19, align 8, !tbaa !33
  %24 = load ptr, ptr %5, align 8, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !14
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %34

31:                                               ; preds = %23
  %32 = load i64, ptr %25, align 8, !tbaa !17
  %33 = add i64 %32, 1
  call void @_ZdlPvm(ptr noundef %24, i64 noundef %33) #26
  br label %34

34:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %35

35:                                               ; preds = %9, %34
  %36 = phi i32 [ %18, %34 ], [ 1, %9 ]
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %38) #17
  br label %41

41:                                               ; preds = %40, %35
  store ptr null, ptr %37, align 8, !tbaa !33
  %42 = load ptr, ptr %4, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !14
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %52

49:                                               ; preds = %41
  %50 = load i64, ptr %43, align 8, !tbaa !17
  %51 = add i64 %50, 1
  call void @_ZdlPvm(ptr noundef %42, i64 noundef %51) #26
  br label %52

52:                                               ; preds = %45, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %69

53:                                               ; preds = %2
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %65

55:                                               ; preds = %7
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

57:                                               ; preds = %10
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

59:                                               ; preds = %11
  %60 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %56, %55 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br label %65

65:                                               ; preds = %63, %53
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %54, %53 ]
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %68 = call ptr @__cxa_begin_catch(ptr %67) #17
  call void @__cxa_end_catch()
  br label %69

69:                                               ; preds = %65, %52
  %70 = phi i32 [ %36, %52 ], [ 0, %65 ]
  ret i32 %70
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %7 unwind label %53

7:                                                ; preds = %2
  %8 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %9 unwind label %55

9:                                                ; preds = %7
  br i1 %8, label %35, label %10

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %11 unwind label %57

11:                                               ; preds = %10
  %12 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %13 unwind label %59

13:                                               ; preds = %11
  %14 = and i64 %12, 255
  %15 = icmp ne i64 %14, 0
  %16 = icmp ne i64 %14, 255
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %22, %13
  store ptr null, ptr %19, align 8, !tbaa !33
  %24 = load ptr, ptr %5, align 8, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !14
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %34

31:                                               ; preds = %23
  %32 = load i64, ptr %25, align 8, !tbaa !17
  %33 = add i64 %32, 1
  call void @_ZdlPvm(ptr noundef %24, i64 noundef %33) #26
  br label %34

34:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %35

35:                                               ; preds = %9, %34
  %36 = phi i32 [ %18, %34 ], [ 1, %9 ]
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %38) #17
  br label %41

41:                                               ; preds = %40, %35
  store ptr null, ptr %37, align 8, !tbaa !33
  %42 = load ptr, ptr %4, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !14
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %52

49:                                               ; preds = %41
  %50 = load i64, ptr %43, align 8, !tbaa !17
  %51 = add i64 %50, 1
  call void @_ZdlPvm(ptr noundef %42, i64 noundef %51) #26
  br label %52

52:                                               ; preds = %45, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  br label %69

53:                                               ; preds = %2
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %65

55:                                               ; preds = %7
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

57:                                               ; preds = %10
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

59:                                               ; preds = %11
  %60 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %61

61:                                               ; preds = %57, %59
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %56, %55 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  br label %65

65:                                               ; preds = %63, %53
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %54, %53 ]
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %68 = call ptr @__cxa_begin_catch(ptr %67) #17
  call void @__cxa_end_catch()
  br label %69

69:                                               ; preds = %65, %52
  %70 = phi i32 [ %36, %52 ], [ 0, %65 ]
  ret i32 %70
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %30

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = zext i1 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %3, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
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
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %37 = call ptr @__cxa_begin_catch(ptr %36) #17
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %13, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %30

10:                                               ; preds = %7
  %11 = invoke noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = zext i1 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %3, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
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
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %37 = call ptr @__cxa_begin_catch(ptr %36) #17
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %13, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %30

10:                                               ; preds = %7
  %11 = invoke noundef i64 @_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = trunc i64 %11 to i32
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %12
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %3, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %26, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
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
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %37 = call ptr @__cxa_begin_catch(ptr %36) #17
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %13, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %46

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %48

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %50

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %8, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %31) #17
  br label %34

34:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !33
  %35 = load ptr, ptr %7, align 8, !tbaa !18
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  br label %45

42:                                               ; preds = %34
  %43 = load i64, ptr %36, align 8, !tbaa !17
  %44 = add i64 %43, 1
  call void @_ZdlPvm(ptr noundef %35, i64 noundef %44) #26
  br label %45

45:                                               ; preds = %38, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %58

46:                                               ; preds = %4
  %47 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

48:                                               ; preds = %11
  %49 = landingpad { ptr, i32 }
          catch ptr null
  br label %52

50:                                               ; preds = %12
  %51 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %47, %46 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %57 = call ptr @__cxa_begin_catch(ptr %56) #17
  call void @__cxa_end_catch()
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i32 [ 1, %45 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %47

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %49

12:                                               ; preds = %11
  %13 = invoke noundef zeroext i1 @_ZNSt10filesystem9copy_fileERKNS_7__cxx114pathES3_NS_12copy_optionsE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, i16 noundef zeroext 2)
          to label %14 unwind label %51

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 8, !tbaa !33
  %20 = load ptr, ptr %8, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !14
  %26 = icmp ult i64 %25, 16
  call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, ptr %21, align 8, !tbaa !17
  %29 = add i64 %28, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #26
  br label %30

30:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !33
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %32) #17
  br label %35

35:                                               ; preds = %34, %30
  store ptr null, ptr %31, align 8, !tbaa !33
  %36 = load ptr, ptr %7, align 8, !tbaa !18
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !14
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  br label %46

43:                                               ; preds = %35
  %44 = load i64, ptr %37, align 8, !tbaa !17
  %45 = add i64 %44, 1
  call void @_ZdlPvm(ptr noundef %36, i64 noundef %45) #26
  br label %46

46:                                               ; preds = %39, %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %59

47:                                               ; preds = %4
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

49:                                               ; preds = %11
  %50 = landingpad { ptr, i32 }
          catch ptr null
  br label %53

51:                                               ; preds = %12
  %52 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %48, %47 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %58 = call ptr @__cxa_begin_catch(ptr %57) #17
  call void @__cxa_end_catch()
  br label %59

59:                                               ; preds = %55, %46
  %60 = phi i32 [ 1, %46 ], [ 0, %55 ]
  ret i32 %60
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %15 unwind label %206

15:                                               ; preds = %4
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, i8 noundef zeroext 0, ptr noundef null)
          to label %16 unwind label %208

16:                                               ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %18) #17
  br label %21

21:                                               ; preds = %20, %16
  store ptr null, ptr %17, align 8, !tbaa !33
  %22 = load ptr, ptr %8, align 8, !tbaa !18
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !14
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %32

29:                                               ; preds = %21
  %30 = load i64, ptr %23, align 8, !tbaa !17
  %31 = add i64 %30, 1
  call void @_ZdlPvm(ptr noundef %22, i64 noundef %31) #26
  br label %32

32:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %33 = load ptr, ptr %7, align 8, !tbaa !99
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !104
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  store ptr %33, ptr %9, align 8, !tbaa !99, !alias.scope !105
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %38, align 8, !tbaa !104, !alias.scope !105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  br label %63

39:                                               ; preds = %32
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %41 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %40, align 4, !tbaa !108
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %40, align 4, !tbaa !108
  store ptr %33, ptr %9, align 8, !tbaa !99, !alias.scope !109
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %35, ptr %46, align 8, !tbaa !104, !alias.scope !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  br label %52

47:                                               ; preds = %39
  %48 = atomicrmw volatile add ptr %40, i32 1 acq_rel, align 4
  %49 = load ptr, ptr %34, align 8, !tbaa !104
  store ptr %33, ptr %9, align 8, !tbaa !99, !alias.scope !109
  %50 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %35, ptr %50, align 8, !tbaa !104, !alias.scope !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  %51 = icmp eq ptr %49, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %43, %47
  %53 = phi ptr [ %46, %43 ], [ %50, %47 ]
  %54 = phi ptr [ %35, %43 ], [ %49, %47 ]
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %56 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %55, align 4, !tbaa !108
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %55, align 4, !tbaa !108
  br label %65

61:                                               ; preds = %52
  %62 = atomicrmw volatile add ptr %55, i32 1 acq_rel, align 4
  br label %65

63:                                               ; preds = %37, %47
  %64 = phi ptr [ %50, %47 ], [ %38, %37 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !111
  br label %88

65:                                               ; preds = %61, %58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !114
  %66 = load atomic i64, ptr %55 acquire, align 8
  %67 = icmp eq i64 %66, 4294967297
  %68 = trunc i64 %66 to i32
  br i1 %67, label %69, label %77

69:                                               ; preds = %65
  store i32 0, ptr %55, align 8, !tbaa !116
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 12
  store i32 0, ptr %70, align 4, !tbaa !118
  %71 = load ptr, ptr %54, align 8, !tbaa !25
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load ptr, ptr %72, align 8
  call void %73(ptr noundef nonnull align 8 dereferenceable(16) %54) #17
  %74 = load ptr, ptr %54, align 8, !tbaa !25
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 24
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull align 8 dereferenceable(16) %54) #17
  br label %88

77:                                               ; preds = %65
  %78 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = add nsw i32 %68, -1
  store i32 %81, ptr %55, align 4, !tbaa !108
  br label %84

82:                                               ; preds = %77
  %83 = atomicrmw volatile add ptr %55, i32 -1 acq_rel, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %68, %80 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88, !prof !119

87:                                               ; preds = %84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %54) #17
  br label %88

88:                                               ; preds = %63, %69, %84, %87
  %89 = phi ptr [ %64, %63 ], [ %53, %69 ], [ %53, %84 ], [ %53, %87 ]
  %90 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %91 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %93 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %94 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %95 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %96 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %97 = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %98

98:                                               ; preds = %278, %88
  %99 = load ptr, ptr %90, align 8, !tbaa !104
  %100 = load ptr, ptr %89, align 8, !tbaa !104
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %102, label %212

102:                                              ; preds = %98
  %103 = icmp eq ptr %99, null
  br i1 %103, label %128, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %106 = load atomic i64, ptr %105 acquire, align 8
  %107 = icmp eq i64 %106, 4294967297
  %108 = trunc i64 %106 to i32
  br i1 %107, label %109, label %117

109:                                              ; preds = %104
  store i32 0, ptr %105, align 8, !tbaa !116
  %110 = getelementptr inbounds nuw i8, ptr %99, i64 12
  store i32 0, ptr %110, align 4, !tbaa !118
  %111 = load ptr, ptr %99, align 8, !tbaa !25
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %113 = load ptr, ptr %112, align 8
  call void %113(ptr noundef nonnull align 8 dereferenceable(16) %99) #17
  %114 = load ptr, ptr %99, align 8, !tbaa !25
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 24
  %116 = load ptr, ptr %115, align 8
  call void %116(ptr noundef nonnull align 8 dereferenceable(16) %99) #17
  br label %128

117:                                              ; preds = %104
  %118 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = add nsw i32 %108, -1
  store i32 %121, ptr %105, align 4, !tbaa !108
  br label %124

122:                                              ; preds = %117
  %123 = atomicrmw volatile add ptr %105, i32 -1 acq_rel, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %108, %120 ], [ %123, %122 ]
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %128, !prof !119

127:                                              ; preds = %124
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %99) #17
  br label %128

128:                                              ; preds = %102, %109, %124, %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  %129 = load ptr, ptr %89, align 8, !tbaa !104
  %130 = icmp eq ptr %129, null
  br i1 %130, label %155, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 8
  %133 = load atomic i64, ptr %132 acquire, align 8
  %134 = icmp eq i64 %133, 4294967297
  %135 = trunc i64 %133 to i32
  br i1 %134, label %136, label %144

136:                                              ; preds = %131
  store i32 0, ptr %132, align 8, !tbaa !116
  %137 = getelementptr inbounds nuw i8, ptr %129, i64 12
  store i32 0, ptr %137, align 4, !tbaa !118
  %138 = load ptr, ptr %129, align 8, !tbaa !25
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 16
  %140 = load ptr, ptr %139, align 8
  call void %140(ptr noundef nonnull align 8 dereferenceable(16) %129) #17
  %141 = load ptr, ptr %129, align 8, !tbaa !25
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 24
  %143 = load ptr, ptr %142, align 8
  call void %143(ptr noundef nonnull align 8 dereferenceable(16) %129) #17
  br label %155

144:                                              ; preds = %131
  %145 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = add nsw i32 %135, -1
  store i32 %148, ptr %132, align 4, !tbaa !108
  br label %151

149:                                              ; preds = %144
  %150 = atomicrmw volatile add ptr %132, i32 -1 acq_rel, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %135, %147 ], [ %150, %149 ]
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %155, !prof !119

154:                                              ; preds = %151
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %129) #17
  br label %155

155:                                              ; preds = %128, %136, %151, %154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  %156 = load ptr, ptr %34, align 8, !tbaa !104
  %157 = icmp eq ptr %156, null
  br i1 %157, label %182, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 8
  %160 = load atomic i64, ptr %159 acquire, align 8
  %161 = icmp eq i64 %160, 4294967297
  %162 = trunc i64 %160 to i32
  br i1 %161, label %163, label %171

163:                                              ; preds = %158
  store i32 0, ptr %159, align 8, !tbaa !116
  %164 = getelementptr inbounds nuw i8, ptr %156, i64 12
  store i32 0, ptr %164, align 4, !tbaa !118
  %165 = load ptr, ptr %156, align 8, !tbaa !25
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 16
  %167 = load ptr, ptr %166, align 8
  call void %167(ptr noundef nonnull align 8 dereferenceable(16) %156) #17
  %168 = load ptr, ptr %156, align 8, !tbaa !25
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 24
  %170 = load ptr, ptr %169, align 8
  call void %170(ptr noundef nonnull align 8 dereferenceable(16) %156) #17
  br label %182

171:                                              ; preds = %158
  %172 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = add nsw i32 %162, -1
  store i32 %175, ptr %159, align 4, !tbaa !108
  br label %178

176:                                              ; preds = %171
  %177 = atomicrmw volatile add ptr %159, i32 -1 acq_rel, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %162, %174 ], [ %177, %176 ]
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %182, !prof !119

181:                                              ; preds = %178
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %156) #17
  br label %182

182:                                              ; preds = %155, %163, %178, %181
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  %183 = load ptr, ptr %6, align 8, !tbaa !61
  %184 = load ptr, ptr %94, align 8, !tbaa !61
  %185 = icmp eq ptr %183, %184
  br i1 %185, label %312, label %186

186:                                              ; preds = %182
  %187 = ptrtoint ptr %184 to i64
  %188 = ptrtoint ptr %183 to i64
  %189 = sub i64 %187, %188
  %190 = ashr exact i64 %189, 5
  %191 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %190, i1 true)
  %192 = shl nuw nsw i64 %191, 1
  %193 = xor i64 %192, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %183, ptr %184, i64 noundef %193)
          to label %194 unwind label %306

194:                                              ; preds = %186
  %195 = icmp sgt i64 %189, 512
  br i1 %195, label %196, label %205

196:                                              ; preds = %194
  %197 = getelementptr inbounds nuw i8, ptr %183, i64 512
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %183, ptr nonnull %197)
          to label %198 unwind label %306

198:                                              ; preds = %196
  %199 = icmp eq ptr %197, %184
  br i1 %199, label %312, label %200

200:                                              ; preds = %198, %202
  %201 = phi ptr [ %203, %202 ], [ %197, %198 ]
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %201)
          to label %202 unwind label %304

202:                                              ; preds = %200
  %203 = getelementptr inbounds nuw i8, ptr %201, i64 32
  %204 = icmp eq ptr %203, %184
  br i1 %204, label %312, label %200, !llvm.loop !120

205:                                              ; preds = %194
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %183, ptr %184)
          to label %312 unwind label %306

206:                                              ; preds = %4
  %207 = landingpad { ptr, i32 }
          catch ptr null
  br label %210

208:                                              ; preds = %15
  %209 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  br label %308

212:                                              ; preds = %98
  %213 = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #17
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %213)
          to label %214 unwind label %280

214:                                              ; preds = %212
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %215 = load ptr, ptr %12, align 8, !tbaa !18, !noalias !127
  %216 = load i64, ptr %91, align 8, !tbaa !14, !noalias !127
  %217 = icmp ult i64 %216, 9223372036854775807
  call void @llvm.assume(i1 %217)
  store ptr %92, ptr %11, align 8, !tbaa !8, !alias.scope !127
  %218 = icmp eq ptr %215, null
  %219 = icmp ne i64 %216, 0
  %220 = and i1 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %222 unwind label %284

222:                                              ; preds = %221
  unreachable

223:                                              ; preds = %214
  %224 = icmp samesign ugt i64 %216, 15
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = add nuw nsw i64 %216, 1
  %227 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %226) #25
          to label %228 unwind label %282

228:                                              ; preds = %225
  store ptr %227, ptr %11, align 8, !tbaa !18, !alias.scope !127
  store i64 %216, ptr %92, align 8, !tbaa !17, !alias.scope !127
  br label %229

229:                                              ; preds = %228, %223
  %230 = phi ptr [ %227, %228 ], [ %92, %223 ]
  switch i64 %216, label %233 [
    i64 1, label %231
    i64 0, label %234
  ]

231:                                              ; preds = %229
  %232 = load i8, ptr %215, align 1, !tbaa !17
  store i8 %232, ptr %230, align 1, !tbaa !17
  br label %234

233:                                              ; preds = %229
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %230, ptr align 1 %215, i64 %216, i1 false)
  br label %234

234:                                              ; preds = %233, %231, %229
  store i64 %216, ptr %93, align 8, !tbaa !14, !alias.scope !127
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 %216
  store i8 0, ptr %235, align 1, !tbaa !17
  %236 = load ptr, ptr %94, align 8, !tbaa !128
  %237 = load ptr, ptr %95, align 8, !tbaa !130
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds nuw i8, ptr %236, i64 16
  store ptr %240, ptr %236, align 8, !tbaa !8
  %241 = load ptr, ptr %11, align 8, !tbaa !18
  %242 = icmp eq ptr %241, %92
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i64, ptr %93, align 8, !tbaa !14
  %245 = icmp ult i64 %244, 16
  call void @llvm.assume(i1 %245)
  %246 = add nuw nsw i64 %244, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %240, ptr noundef nonnull align 8 dereferenceable(1) %92, i64 %246, i1 false)
  br label %250

247:                                              ; preds = %239
  store ptr %241, ptr %236, align 8, !tbaa !18
  %248 = load i64, ptr %92, align 8, !tbaa !17
  store i64 %248, ptr %240, align 8, !tbaa !17
  %249 = load i64, ptr %93, align 8, !tbaa !14
  br label %250

250:                                              ; preds = %243, %247
  %251 = phi i64 [ %249, %247 ], [ %244, %243 ]
  %252 = icmp ult i64 %251, 9223372036854775807
  call void @llvm.assume(i1 %252)
  %253 = getelementptr inbounds nuw i8, ptr %236, i64 8
  store i64 %251, ptr %253, align 8, !tbaa !14
  store ptr %92, ptr %11, align 8, !tbaa !18
  store i64 0, ptr %93, align 8, !tbaa !14
  store i8 0, ptr %92, align 8, !tbaa !17
  %254 = getelementptr inbounds nuw i8, ptr %236, i64 32
  store ptr %254, ptr %94, align 8, !tbaa !128
  br label %259

255:                                              ; preds = %234
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %256 unwind label %286

256:                                              ; preds = %255
  %257 = load ptr, ptr %11, align 8, !tbaa !18
  %258 = icmp eq ptr %257, %92
  br i1 %258, label %259, label %262

259:                                              ; preds = %250, %256
  %260 = load i64, ptr %93, align 8, !tbaa !14
  %261 = icmp ult i64 %260, 16
  call void @llvm.assume(i1 %261)
  br label %265

262:                                              ; preds = %256
  %263 = load i64, ptr %92, align 8, !tbaa !17
  %264 = add i64 %263, 1
  call void @_ZdlPvm(ptr noundef %257, i64 noundef %264) #26
  br label %265

265:                                              ; preds = %259, %262
  %266 = load ptr, ptr %96, align 8, !tbaa !33
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull %266) #17
  br label %269

269:                                              ; preds = %268, %265
  store ptr null, ptr %96, align 8, !tbaa !33
  %270 = load ptr, ptr %12, align 8, !tbaa !18
  %271 = icmp eq ptr %270, %97
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i64, ptr %91, align 8, !tbaa !14
  %274 = icmp ult i64 %273, 16
  call void @llvm.assume(i1 %274)
  br label %278

275:                                              ; preds = %269
  %276 = load i64, ptr %97, align 8, !tbaa !17
  %277 = add i64 %276, 1
  call void @_ZdlPvm(ptr noundef %270, i64 noundef %277) #26
  br label %278

278:                                              ; preds = %272, %275
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  %279 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %98 unwind label %300

280:                                              ; preds = %212
  %281 = landingpad { ptr, i32 }
          catch ptr null
  br label %298

282:                                              ; preds = %225
  %283 = landingpad { ptr, i32 }
          catch ptr null
  br label %296

284:                                              ; preds = %221
  %285 = landingpad { ptr, i32 }
          catch ptr null
  br label %296

286:                                              ; preds = %255
  %287 = landingpad { ptr, i32 }
          catch ptr null
  %288 = load ptr, ptr %11, align 8, !tbaa !18
  %289 = icmp eq ptr %288, %92
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i64, ptr %93, align 8, !tbaa !14
  %292 = icmp ult i64 %291, 16
  call void @llvm.assume(i1 %292)
  br label %296

293:                                              ; preds = %286
  %294 = load i64, ptr %92, align 8, !tbaa !17
  %295 = add i64 %294, 1
  call void @_ZdlPvm(ptr noundef %288, i64 noundef %295) #26
  br label %296

296:                                              ; preds = %282, %284, %293, %290
  %297 = phi { ptr, i32 } [ %287, %290 ], [ %287, %293 ], [ %283, %282 ], [ %285, %284 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #17
  br label %298

298:                                              ; preds = %296, %280
  %299 = phi { ptr, i32 } [ %297, %296 ], [ %281, %280 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #17
  br label %302

300:                                              ; preds = %278
  %301 = landingpad { ptr, i32 }
          catch ptr null
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi { ptr, i32 } [ %301, %300 ], [ %299, %298 ]
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %308

304:                                              ; preds = %200
  %305 = landingpad { ptr, i32 }
          catch ptr null
  br label %308

306:                                              ; preds = %186, %196, %205
  %307 = landingpad { ptr, i32 }
          catch ptr null
  br label %308

308:                                              ; preds = %304, %306, %210, %302
  %309 = phi { ptr, i32 } [ %303, %302 ], [ %211, %210 ], [ %305, %304 ], [ %307, %306 ]
  %310 = extractvalue { ptr, i32 } %309, 0
  %311 = call ptr @__cxa_begin_catch(ptr %310) #17
  invoke void @__cxa_end_catch()
          to label %312 unwind label %410

312:                                              ; preds = %202, %198, %182, %205, %308
  %313 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !131
  %314 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %315 = load ptr, ptr %314, align 8, !tbaa !61, !noalias !131
  invoke void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr %313, ptr %315, i64 %2, ptr %3)
          to label %316 unwind label %410

316:                                              ; preds = %312
  %317 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %322, !prof !47

319:                                              ; preds = %316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %320 unwind label %412

320:                                              ; preds = %319
  %321 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %322

322:                                              ; preds = %320, %316
  %323 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 48
  %325 = load ptr, ptr %324, align 8, !tbaa !48
  %326 = getelementptr inbounds nuw i8, ptr %323, i64 64
  %327 = load ptr, ptr %326, align 8, !tbaa !54
  %328 = getelementptr inbounds i8, ptr %327, i64 -32
  %329 = icmp eq ptr %325, %328
  br i1 %329, label %351, label %330

330:                                              ; preds = %322
  %331 = getelementptr inbounds nuw i8, ptr %325, i64 16
  store ptr %331, ptr %325, align 8, !tbaa !8
  %332 = load ptr, ptr %13, align 8, !tbaa !18
  %333 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %334 = icmp eq ptr %332, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %330
  %336 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %337 = load i64, ptr %336, align 8, !tbaa !14
  %338 = icmp ult i64 %337, 16
  call void @llvm.assume(i1 %338)
  %339 = add nuw nsw i64 %337, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %331, ptr noundef nonnull align 8 dereferenceable(1) %333, i64 %339, i1 false)
  br label %344

340:                                              ; preds = %330
  store ptr %332, ptr %325, align 8, !tbaa !18
  %341 = load i64, ptr %333, align 8, !tbaa !17
  store i64 %341, ptr %331, align 8, !tbaa !17
  %342 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %343 = load i64, ptr %342, align 8, !tbaa !14
  br label %344

344:                                              ; preds = %340, %335
  %345 = phi i64 [ %343, %340 ], [ %337, %335 ]
  %346 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %347 = icmp ult i64 %345, 9223372036854775807
  call void @llvm.assume(i1 %347)
  %348 = getelementptr inbounds nuw i8, ptr %325, i64 8
  store i64 %345, ptr %348, align 8, !tbaa !14
  store ptr %333, ptr %13, align 8, !tbaa !18
  store i64 0, ptr %346, align 8, !tbaa !14
  store i8 0, ptr %333, align 8, !tbaa !17
  %349 = load ptr, ptr %324, align 8, !tbaa !48
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 32
  store ptr %350, ptr %324, align 8, !tbaa !48
  br label %354

351:                                              ; preds = %322
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %323, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %352 unwind label %412

352:                                              ; preds = %351
  %353 = load ptr, ptr %324, align 8, !tbaa !55, !noalias !134
  br label %354

354:                                              ; preds = %352, %344
  %355 = phi ptr [ %350, %344 ], [ %353, %352 ]
  %356 = getelementptr inbounds nuw i8, ptr %323, i64 56
  %357 = load ptr, ptr %356, align 8, !tbaa !59, !noalias !134
  %358 = icmp eq ptr %355, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %354
  %360 = getelementptr inbounds nuw i8, ptr %323, i64 72
  %361 = load ptr, ptr %360, align 8, !tbaa !60, !noalias !134
  %362 = getelementptr inbounds i8, ptr %361, i64 -8
  %363 = load ptr, ptr %362, align 8, !tbaa !61
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 512
  br label %365

365:                                              ; preds = %359, %354
  %366 = phi ptr [ %364, %359 ], [ %355, %354 ]
  %367 = getelementptr inbounds i8, ptr %366, i64 -32
  %368 = load ptr, ptr %367, align 8, !tbaa !18
  %369 = load ptr, ptr %13, align 8, !tbaa !18
  %370 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %371 = icmp eq ptr %369, %370
  br i1 %371, label %372, label %376

372:                                              ; preds = %365
  %373 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %374 = load i64, ptr %373, align 8, !tbaa !14
  %375 = icmp ult i64 %374, 16
  call void @llvm.assume(i1 %375)
  br label %379

376:                                              ; preds = %365
  %377 = load i64, ptr %370, align 8, !tbaa !17
  %378 = add i64 %377, 1
  call void @_ZdlPvm(ptr noundef %369, i64 noundef %378) #26
  br label %379

379:                                              ; preds = %372, %376
  %380 = load ptr, ptr %6, align 8, !tbaa !137
  %381 = load ptr, ptr %314, align 8, !tbaa !128
  %382 = icmp eq ptr %380, %381
  br i1 %382, label %400, label %383

383:                                              ; preds = %379, %395
  %384 = phi ptr [ %396, %395 ], [ %380, %379 ]
  %385 = load ptr, ptr %384, align 8, !tbaa !18
  %386 = getelementptr inbounds nuw i8, ptr %384, i64 16
  %387 = icmp eq ptr %385, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %383
  %389 = getelementptr inbounds nuw i8, ptr %384, i64 8
  %390 = load i64, ptr %389, align 8, !tbaa !14
  %391 = icmp ult i64 %390, 16
  call void @llvm.assume(i1 %391)
  br label %395

392:                                              ; preds = %383
  %393 = load i64, ptr %386, align 8, !tbaa !17
  %394 = add i64 %393, 1
  call void @_ZdlPvm(ptr noundef %385, i64 noundef %394) #26
  br label %395

395:                                              ; preds = %392, %388
  %396 = getelementptr inbounds nuw i8, ptr %384, i64 32
  %397 = icmp eq ptr %396, %381
  br i1 %397, label %398, label %383, !llvm.loop !138

398:                                              ; preds = %395
  %399 = load ptr, ptr %6, align 8, !tbaa !137
  br label %400

400:                                              ; preds = %398, %379
  %401 = phi ptr [ %399, %398 ], [ %380, %379 ]
  %402 = icmp eq ptr %401, null
  br i1 %402, label %409, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %405 = load ptr, ptr %404, align 8, !tbaa !130
  %406 = ptrtoint ptr %405 to i64
  %407 = ptrtoint ptr %401 to i64
  %408 = sub i64 %406, %407
  call void @_ZdlPvm(ptr noundef nonnull %401, i64 noundef %408) #26
  br label %409

409:                                              ; preds = %400, %403
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret ptr %368

410:                                              ; preds = %312, %308
  %411 = landingpad { ptr, i32 }
          cleanup
  br label %424

412:                                              ; preds = %351, %319
  %413 = landingpad { ptr, i32 }
          cleanup
  %414 = load ptr, ptr %13, align 8, !tbaa !18
  %415 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %416 = icmp eq ptr %414, %415
  br i1 %416, label %417, label %421

417:                                              ; preds = %412
  %418 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %419 = load i64, ptr %418, align 8, !tbaa !14
  %420 = icmp ult i64 %419, 16
  call void @llvm.assume(i1 %420)
  br label %424

421:                                              ; preds = %412
  %422 = load i64, ptr %415, align 8, !tbaa !17
  %423 = add i64 %422, 1
  call void @_ZdlPvm(ptr noundef %414, i64 noundef %423) #26
  br label %424

424:                                              ; preds = %421, %417, %410
  %425 = phi { ptr, i32 } [ %411, %410 ], [ %413, %417 ], [ %413, %421 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  resume { ptr, i32 } %425
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %46

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %48

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem16create_hard_linkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %50

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %8, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %31) #17
  br label %34

34:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !33
  %35 = load ptr, ptr %7, align 8, !tbaa !18
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  br label %45

42:                                               ; preds = %34
  %43 = load i64, ptr %36, align 8, !tbaa !17
  %44 = add i64 %43, 1
  call void @_ZdlPvm(ptr noundef %35, i64 noundef %44) #26
  br label %45

45:                                               ; preds = %38, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %58

46:                                               ; preds = %4
  %47 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

48:                                               ; preds = %11
  %49 = landingpad { ptr, i32 }
          catch ptr null
  br label %52

50:                                               ; preds = %12
  %51 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %47, %46 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %57 = call ptr @__cxa_begin_catch(ptr %56) #17
  call void @__cxa_end_catch()
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i32 [ 1, %45 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %46

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 2)
          to label %12 unwind label %48

12:                                               ; preds = %11
  invoke void @_ZNSt10filesystem14create_symlinkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %13 unwind label %50

13:                                               ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 8, !tbaa !33
  %19 = load ptr, ptr %8, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !17
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #26
  br label %29

29:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %31) #17
  br label %34

34:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !33
  %35 = load ptr, ptr %7, align 8, !tbaa !18
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  br label %45

42:                                               ; preds = %34
  %43 = load i64, ptr %36, align 8, !tbaa !17
  %44 = add i64 %43, 1
  call void @_ZdlPvm(ptr noundef %35, i64 noundef %44) #26
  br label %45

45:                                               ; preds = %38, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %58

46:                                               ; preds = %4
  %47 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

48:                                               ; preds = %11
  %49 = landingpad { ptr, i32 }
          catch ptr null
  br label %52

50:                                               ; preds = %12
  %51 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %47, %46 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %57 = call ptr @__cxa_begin_catch(ptr %56) #17
  call void @__cxa_end_catch()
  br label %58

58:                                               ; preds = %54, %45
  %59 = phi i32 [ 1, %45 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %124

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem12read_symlinkERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %126

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %12 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !145
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14, !noalias !145
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !8, !alias.scope !145
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %128

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %128

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !145
  store i64 %14, ptr %16, align 8, !tbaa !17, !alias.scope !145
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %31, ptr %29, align 1, !tbaa !17
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !14, !alias.scope !145
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !17
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !47

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %130

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !8
  %51 = load ptr, ptr %4, align 8, !tbaa !18
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !18
  %58 = load i64, ptr %16, align 8, !tbaa !17
  store i64 %58, ptr %50, align 8, !tbaa !17
  %59 = load i64, ptr %34, align 8, !tbaa !14
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !14
  store ptr %16, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %34, align 8, !tbaa !14
  store i8 0, ptr %16, align 8, !tbaa !17
  %64 = load ptr, ptr %43, align 8, !tbaa !48
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !48
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %130

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !55, !noalias !146
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !59, !noalias !146
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !60, !noalias !146
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !61
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = load ptr, ptr %4, align 8, !tbaa !18
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, ptr %34, align 8, !tbaa !14
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %92

89:                                               ; preds = %80
  %90 = load i64, ptr %16, align 8, !tbaa !17
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %91) #26
  br label %92

92:                                               ; preds = %86, %89
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull %94) #17
  br label %97

97:                                               ; preds = %96, %92
  store ptr null, ptr %93, align 8, !tbaa !33
  %98 = load ptr, ptr %5, align 8, !tbaa !18
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, ptr %13, align 8, !tbaa !14
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %107

104:                                              ; preds = %97
  %105 = load i64, ptr %99, align 8, !tbaa !17
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %106) #26
  br label %107

107:                                              ; preds = %101, %104
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull %109) #17
  br label %112

112:                                              ; preds = %111, %107
  store ptr null, ptr %108, align 8, !tbaa !33
  %113 = load ptr, ptr %6, align 8, !tbaa !18
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %118 = load i64, ptr %117, align 8, !tbaa !14
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %112
  %121 = load i64, ptr %114, align 8, !tbaa !17
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %122) #26
  br label %123

123:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %178

124:                                              ; preds = %2
  %125 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

126:                                              ; preds = %10
  %127 = landingpad { ptr, i32 }
          catch ptr null
  br label %142

128:                                              ; preds = %24, %20
  %129 = landingpad { ptr, i32 }
          catch ptr null
  br label %140

130:                                              ; preds = %66, %38
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = load ptr, ptr %4, align 8, !tbaa !18
  %133 = icmp eq ptr %132, %16
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, ptr %34, align 8, !tbaa !14
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  br label %140

137:                                              ; preds = %130
  %138 = load i64, ptr %16, align 8, !tbaa !17
  %139 = add i64 %138, 1
  call void @_ZdlPvm(ptr noundef %132, i64 noundef %139) #26
  br label %140

140:                                              ; preds = %137, %134, %128
  %141 = phi { ptr, i32 } [ %129, %128 ], [ %131, %134 ], [ %131, %137 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %142

142:                                              ; preds = %140, %126
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %144

144:                                              ; preds = %142, %124
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %125, %124 ]
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %147 = call ptr @__cxa_begin_catch(ptr %146) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %148 unwind label %162

148:                                              ; preds = %144
  %149 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %150 unwind label %164

150:                                              ; preds = %148
  %151 = load ptr, ptr %7, align 8, !tbaa !18
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %156 = load i64, ptr %155, align 8, !tbaa !14
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %161

158:                                              ; preds = %150
  %159 = load i64, ptr %152, align 8, !tbaa !17
  %160 = add i64 %159, 1
  call void @_ZdlPvm(ptr noundef %151, i64 noundef %160) #26
  br label %161

161:                                              ; preds = %154, %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %178

162:                                              ; preds = %144
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %176

164:                                              ; preds = %148
  %165 = landingpad { ptr, i32 }
          cleanup
  %166 = load ptr, ptr %7, align 8, !tbaa !18
  %167 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %171 = load i64, ptr %170, align 8, !tbaa !14
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  br label %176

173:                                              ; preds = %164
  %174 = load i64, ptr %167, align 8, !tbaa !17
  %175 = add i64 %174, 1
  call void @_ZdlPvm(ptr noundef %166, i64 noundef %175) #26
  br label %176

176:                                              ; preds = %173, %169, %162
  %177 = phi { ptr, i32 } [ %163, %162 ], [ %165, %169 ], [ %165, %173 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %180 unwind label %181

178:                                              ; preds = %161, %123
  %179 = phi ptr [ %83, %123 ], [ %149, %161 ]
  ret ptr %179

180:                                              ; preds = %176
  resume { ptr, i32 } %177

181:                                              ; preds = %176
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
          to label %10 unwind label %34

10:                                               ; preds = %7
  %11 = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %12 unwind label %36

12:                                               ; preds = %10
  %13 = and i64 %11, 255
  %14 = icmp ne i64 %13, 0
  %15 = icmp ne i64 %13, 255
  %16 = and i1 %14, %15
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %19) #17
  br label %22

22:                                               ; preds = %21, %12
  store ptr null, ptr %18, align 8, !tbaa !33
  %23 = load ptr, ptr %3, align 8, !tbaa !18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !14
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %33

30:                                               ; preds = %22
  %31 = load i64, ptr %24, align 8, !tbaa !17
  %32 = add i64 %31, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %32) #26
  br label %33

33:                                               ; preds = %30, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  br label %42

34:                                               ; preds = %7
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

36:                                               ; preds = %10
  %37 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %35, %34 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %41 = call ptr @__cxa_begin_catch(ptr %40) #17
  call void @__cxa_end_catch()
  br label %42

42:                                               ; preds = %33, %38
  %43 = phi i32 [ %17, %33 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %43
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11path_parentESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %133

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !14, !noalias !149
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !8, !alias.scope !149
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !14, !alias.scope !149
  store i8 0, ptr %13, align 8, !tbaa !17, !alias.scope !149
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %16 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !158
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !8, !alias.scope !158
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %135

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %135

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !158
  store i64 %10, ptr %18, align 8, !tbaa !17, !alias.scope !158
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !17
  store i8 %31, ptr %18, align 8, !tbaa !17, !alias.scope !149
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !14, !alias.scope !158
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !17
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !47

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %137

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %4, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %63 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %63, ptr %53, align 8, !tbaa !17
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !14
  store ptr %55, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %68, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %71 = load ptr, ptr %46, align 8, !tbaa !48
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !48
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %137

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !55, !noalias !159
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !59, !noalias !159
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !60, !noalias !159
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %4, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %87
  %99 = load i64, ptr %92, align 8, !tbaa !17
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %100) #26
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !33
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !33
  %107 = load ptr, ptr %5, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %9, align 8, !tbaa !14
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %108, align 8, !tbaa !17
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %115) #26
  br label %116

116:                                              ; preds = %110, %113
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %118) #17
  br label %121

121:                                              ; preds = %120, %116
  store ptr null, ptr %117, align 8, !tbaa !33
  %122 = load ptr, ptr %6, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %127 = load i64, ptr %126, align 8, !tbaa !14
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %132

129:                                              ; preds = %121
  %130 = load i64, ptr %123, align 8, !tbaa !17
  %131 = add i64 %130, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %131) #26
  br label %132

132:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  ret ptr %90

133:                                              ; preds = %2
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %151

135:                                              ; preds = %24, %20
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %149

137:                                              ; preds = %73, %41
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %4, align 8, !tbaa !18
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8, !tbaa !14
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %149

146:                                              ; preds = %137
  %147 = load i64, ptr %140, align 8, !tbaa !17
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %148) #26
  br label %149

149:                                              ; preds = %146, %142, %135
  %150 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %151

151:                                              ; preds = %149, %133
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %134, %133 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_nameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %133

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !14, !noalias !162
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !8, !alias.scope !162
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !14, !alias.scope !162
  store i8 0, ptr %13, align 8, !tbaa !17, !alias.scope !162
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %16 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !171
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !8, !alias.scope !171
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %135

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %135

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !171
  store i64 %10, ptr %18, align 8, !tbaa !17, !alias.scope !171
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !17
  store i8 %31, ptr %18, align 8, !tbaa !17, !alias.scope !162
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !14, !alias.scope !171
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !17
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !47

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %137

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %4, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %63 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %63, ptr %53, align 8, !tbaa !17
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !14
  store ptr %55, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %68, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %71 = load ptr, ptr %46, align 8, !tbaa !48
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !48
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %137

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !55, !noalias !172
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !59, !noalias !172
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !60, !noalias !172
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %4, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %87
  %99 = load i64, ptr %92, align 8, !tbaa !17
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %100) #26
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !33
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !33
  %107 = load ptr, ptr %5, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %9, align 8, !tbaa !14
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %108, align 8, !tbaa !17
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %115) #26
  br label %116

116:                                              ; preds = %110, %113
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %118) #17
  br label %121

121:                                              ; preds = %120, %116
  store ptr null, ptr %117, align 8, !tbaa !33
  %122 = load ptr, ptr %6, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %127 = load i64, ptr %126, align 8, !tbaa !14
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %132

129:                                              ; preds = %121
  %130 = load i64, ptr %123, align 8, !tbaa !17
  %131 = add i64 %130, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %131) #26
  br label %132

132:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  ret ptr %90

133:                                              ; preds = %2
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %151

135:                                              ; preds = %24, %20
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %149

137:                                              ; preds = %73, %41
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %4, align 8, !tbaa !18
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8, !tbaa !14
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %149

146:                                              ; preds = %137
  %147 = load i64, ptr %140, align 8, !tbaa !17
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %148) #26
  br label %149

149:                                              ; preds = %146, %142, %135
  %150 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %151

151:                                              ; preds = %149, %133
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %134, %133 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_extensionESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path9extensionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %133

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !14, !noalias !175
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !8, !alias.scope !175
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !14, !alias.scope !175
  store i8 0, ptr %13, align 8, !tbaa !17, !alias.scope !175
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %16 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !184
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !8, !alias.scope !184
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %135

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %135

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !184
  store i64 %10, ptr %18, align 8, !tbaa !17, !alias.scope !184
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !17
  store i8 %31, ptr %18, align 8, !tbaa !17, !alias.scope !175
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !14, !alias.scope !184
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !17
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !47

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %137

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %4, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %63 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %63, ptr %53, align 8, !tbaa !17
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !14
  store ptr %55, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %68, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %71 = load ptr, ptr %46, align 8, !tbaa !48
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !48
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %137

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !55, !noalias !185
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !59, !noalias !185
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !60, !noalias !185
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %4, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %87
  %99 = load i64, ptr %92, align 8, !tbaa !17
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %100) #26
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !33
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !33
  %107 = load ptr, ptr %5, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %9, align 8, !tbaa !14
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %108, align 8, !tbaa !17
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %115) #26
  br label %116

116:                                              ; preds = %110, %113
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %118) #17
  br label %121

121:                                              ; preds = %120, %116
  store ptr null, ptr %117, align 8, !tbaa !33
  %122 = load ptr, ptr %6, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %127 = load i64, ptr %126, align 8, !tbaa !14
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %132

129:                                              ; preds = %121
  %130 = load i64, ptr %123, align 8, !tbaa !17
  %131 = add i64 %130, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %131) #26
  br label %132

132:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  ret ptr %90

133:                                              ; preds = %2
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %151

135:                                              ; preds = %24, %20
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %149

137:                                              ; preds = %73, %41
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %4, align 8, !tbaa !18
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8, !tbaa !14
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %149

146:                                              ; preds = %137
  %147 = load i64, ptr %140, align 8, !tbaa !17
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %148) #26
  br label %149

149:                                              ; preds = %146, %142, %135
  %150 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %151

151:                                              ; preds = %149, %133
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %134, %133 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_stemESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store i64 %0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  invoke void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %8 unwind label %133

8:                                                ; preds = %2
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !14, !noalias !188
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %13, ptr %4, align 8, !tbaa !8, !alias.scope !188
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %14, align 8, !tbaa !14, !alias.scope !188
  store i8 0, ptr %13, align 8, !tbaa !17, !alias.scope !188
  br label %38

15:                                               ; preds = %8
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %16 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !197
  %17 = icmp ult i64 %10, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %18, ptr %4, align 8, !tbaa !8, !alias.scope !197
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %135

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %15
  %23 = icmp samesign ugt i64 %10, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %10, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %135

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !197
  store i64 %10, ptr %18, align 8, !tbaa !17, !alias.scope !197
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq i64 %10, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load i8, ptr %16, align 1, !tbaa !17
  store i8 %31, ptr %18, align 8, !tbaa !17, !alias.scope !188
  br label %34

32:                                               ; preds = %28, %27
  %33 = phi ptr [ %26, %27 ], [ %18, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %16, i64 %10, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %18, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %36, align 8, !tbaa !14, !alias.scope !197
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %10
  store i8 0, ptr %37, align 1, !tbaa !17
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44, !prof !47

41:                                               ; preds = %38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %42 unwind label %137

42:                                               ; preds = %41
  %43 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = getelementptr inbounds i8, ptr %49, i64 -32
  %51 = icmp eq ptr %47, %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %53, ptr %47, align 8, !tbaa !8
  %54 = load ptr, ptr %4, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %59 = load i64, ptr %58, align 8, !tbaa !14
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  %61 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, ptr noundef nonnull align 8 dereferenceable(1) %55, i64 %61, i1 false)
  br label %66

62:                                               ; preds = %52
  store ptr %54, ptr %47, align 8, !tbaa !18
  %63 = load i64, ptr %55, align 8, !tbaa !17
  store i64 %63, ptr %53, align 8, !tbaa !17
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ %65, %62 ], [ %59, %57 ]
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %69 = icmp ult i64 %67, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 %67, ptr %70, align 8, !tbaa !14
  store ptr %55, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %68, align 8, !tbaa !14
  store i8 0, ptr %55, align 8, !tbaa !17
  %71 = load ptr, ptr %46, align 8, !tbaa !48
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  store ptr %72, ptr %46, align 8, !tbaa !48
  br label %76

73:                                               ; preds = %44
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %74 unwind label %137

74:                                               ; preds = %73
  %75 = load ptr, ptr %46, align 8, !tbaa !55, !noalias !198
  br label %76

76:                                               ; preds = %74, %66
  %77 = phi ptr [ %72, %66 ], [ %75, %74 ]
  %78 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !59, !noalias !198
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %45, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !60, !noalias !198
  %84 = getelementptr inbounds i8, ptr %83, i64 -8
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 512
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load ptr, ptr %89, align 8, !tbaa !18
  %91 = load ptr, ptr %4, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !14
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %101

98:                                               ; preds = %87
  %99 = load i64, ptr %92, align 8, !tbaa !17
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %100) #26
  br label %101

101:                                              ; preds = %94, %98
  %102 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %103 = load ptr, ptr %102, align 8, !tbaa !33
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull %103) #17
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 8, !tbaa !33
  %107 = load ptr, ptr %5, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %9, align 8, !tbaa !14
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %116

113:                                              ; preds = %106
  %114 = load i64, ptr %108, align 8, !tbaa !17
  %115 = add i64 %114, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %115) #26
  br label %116

116:                                              ; preds = %110, %113
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %118 = load ptr, ptr %117, align 8, !tbaa !33
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %118) #17
  br label %121

121:                                              ; preds = %120, %116
  store ptr null, ptr %117, align 8, !tbaa !33
  %122 = load ptr, ptr %6, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %124 = icmp eq ptr %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %127 = load i64, ptr %126, align 8, !tbaa !14
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %132

129:                                              ; preds = %121
  %130 = load i64, ptr %123, align 8, !tbaa !17
  %131 = add i64 %130, 1
  call void @_ZdlPvm(ptr noundef %122, i64 noundef %131) #26
  br label %132

132:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  ret ptr %90

133:                                              ; preds = %2
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %151

135:                                              ; preds = %24, %20
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %149

137:                                              ; preds = %73, %41
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %4, align 8, !tbaa !18
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8, !tbaa !14
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %149

146:                                              ; preds = %137
  %147 = load i64, ptr %140, align 8, !tbaa !17
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %148) #26
  br label %149

149:                                              ; preds = %146, %142, %135
  %150 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %151

151:                                              ; preds = %149, %133
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %134, %133 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !33
  %16 = load ptr, ptr %3, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %26

23:                                               ; preds = %15
  %24 = load i64, ptr %17, align 8, !tbaa !17
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %25) #26
  br label %26

26:                                               ; preds = %19, %23
  %27 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %27
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !33
  %16 = load ptr, ptr %3, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %26

23:                                               ; preds = %15
  %24 = load i64, ptr %17, align 8, !tbaa !17
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %25) #26
  br label %26

26:                                               ; preds = %19, %23
  %27 = xor i1 %10, true
  %28 = zext i1 %27 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %28
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %124

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem8absoluteERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %126

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %12 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !207
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14, !noalias !207
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !8, !alias.scope !207
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %128

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %128

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !207
  store i64 %14, ptr %16, align 8, !tbaa !17, !alias.scope !207
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %31, ptr %29, align 1, !tbaa !17
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !14, !alias.scope !207
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !17
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !47

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %130

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !8
  %51 = load ptr, ptr %4, align 8, !tbaa !18
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !18
  %58 = load i64, ptr %16, align 8, !tbaa !17
  store i64 %58, ptr %50, align 8, !tbaa !17
  %59 = load i64, ptr %34, align 8, !tbaa !14
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !14
  store ptr %16, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %34, align 8, !tbaa !14
  store i8 0, ptr %16, align 8, !tbaa !17
  %64 = load ptr, ptr %43, align 8, !tbaa !48
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !48
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %130

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !55, !noalias !208
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !59, !noalias !208
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !60, !noalias !208
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !61
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = load ptr, ptr %4, align 8, !tbaa !18
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, ptr %34, align 8, !tbaa !14
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %92

89:                                               ; preds = %80
  %90 = load i64, ptr %16, align 8, !tbaa !17
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %91) #26
  br label %92

92:                                               ; preds = %86, %89
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull %94) #17
  br label %97

97:                                               ; preds = %96, %92
  store ptr null, ptr %93, align 8, !tbaa !33
  %98 = load ptr, ptr %5, align 8, !tbaa !18
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, ptr %13, align 8, !tbaa !14
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %107

104:                                              ; preds = %97
  %105 = load i64, ptr %99, align 8, !tbaa !17
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %106) #26
  br label %107

107:                                              ; preds = %101, %104
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull %109) #17
  br label %112

112:                                              ; preds = %111, %107
  store ptr null, ptr %108, align 8, !tbaa !33
  %113 = load ptr, ptr %6, align 8, !tbaa !18
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %118 = load i64, ptr %117, align 8, !tbaa !14
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %112
  %121 = load i64, ptr %114, align 8, !tbaa !17
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %122) #26
  br label %123

123:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %178

124:                                              ; preds = %2
  %125 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

126:                                              ; preds = %10
  %127 = landingpad { ptr, i32 }
          catch ptr null
  br label %142

128:                                              ; preds = %24, %20
  %129 = landingpad { ptr, i32 }
          catch ptr null
  br label %140

130:                                              ; preds = %66, %38
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = load ptr, ptr %4, align 8, !tbaa !18
  %133 = icmp eq ptr %132, %16
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, ptr %34, align 8, !tbaa !14
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  br label %140

137:                                              ; preds = %130
  %138 = load i64, ptr %16, align 8, !tbaa !17
  %139 = add i64 %138, 1
  call void @_ZdlPvm(ptr noundef %132, i64 noundef %139) #26
  br label %140

140:                                              ; preds = %137, %134, %128
  %141 = phi { ptr, i32 } [ %129, %128 ], [ %131, %134 ], [ %131, %137 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %142

142:                                              ; preds = %140, %126
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %144

144:                                              ; preds = %142, %124
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %125, %124 ]
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %147 = call ptr @__cxa_begin_catch(ptr %146) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %148 unwind label %162

148:                                              ; preds = %144
  %149 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %150 unwind label %164

150:                                              ; preds = %148
  %151 = load ptr, ptr %7, align 8, !tbaa !18
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %156 = load i64, ptr %155, align 8, !tbaa !14
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %161

158:                                              ; preds = %150
  %159 = load i64, ptr %152, align 8, !tbaa !17
  %160 = add i64 %159, 1
  call void @_ZdlPvm(ptr noundef %151, i64 noundef %160) #26
  br label %161

161:                                              ; preds = %154, %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %178

162:                                              ; preds = %144
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %176

164:                                              ; preds = %148
  %165 = landingpad { ptr, i32 }
          cleanup
  %166 = load ptr, ptr %7, align 8, !tbaa !18
  %167 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %171 = load i64, ptr %170, align 8, !tbaa !14
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  br label %176

173:                                              ; preds = %164
  %174 = load i64, ptr %167, align 8, !tbaa !17
  %175 = add i64 %174, 1
  call void @_ZdlPvm(ptr noundef %166, i64 noundef %175) #26
  br label %176

176:                                              ; preds = %173, %169, %162
  %177 = phi { ptr, i32 } [ %163, %162 ], [ %165, %169 ], [ %165, %173 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %180 unwind label %181

178:                                              ; preds = %161, %123
  %179 = phi ptr [ %83, %123 ], [ %149, %161 ]
  ret ptr %179

180:                                              ; preds = %176
  resume { ptr, i32 } %177

181:                                              ; preds = %176
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
          to label %10 unwind label %124

10:                                               ; preds = %2
  invoke void @_ZNSt10filesystem16weakly_canonicalERKNS_7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %11 unwind label %126

11:                                               ; preds = %10
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %12 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !217
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14, !noalias !217
  %15 = icmp ult i64 %14, 9223372036854775807
  call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %16, ptr %4, align 8, !tbaa !8, !alias.scope !217
  %17 = icmp eq ptr %12, null
  %18 = icmp ne i64 %14, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %21 unwind label %128

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %11
  %23 = icmp samesign ugt i64 %14, 15
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nuw nsw i64 %14, 1
  %26 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %25) #25
          to label %27 unwind label %128

27:                                               ; preds = %24
  store ptr %26, ptr %4, align 8, !tbaa !18, !alias.scope !217
  store i64 %14, ptr %16, align 8, !tbaa !17, !alias.scope !217
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi ptr [ %26, %27 ], [ %16, %22 ]
  switch i64 %14, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %31, ptr %29, align 1, !tbaa !17
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %12, i64 %14, i1 false)
  br label %33

33:                                               ; preds = %32, %30, %28
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %14, ptr %34, align 8, !tbaa !14, !alias.scope !217
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 %14
  store i8 0, ptr %35, align 1, !tbaa !17
  %36 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41, !prof !47

38:                                               ; preds = %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %39 unwind label %130

39:                                               ; preds = %38
  %40 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %41

41:                                               ; preds = %39, %33
  %42 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds i8, ptr %46, i64 -32
  %48 = icmp eq ptr %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %50, ptr %44, align 8, !tbaa !8
  %51 = load ptr, ptr %4, align 8, !tbaa !18
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, ptr %34, align 8, !tbaa !14
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %16, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %49
  store ptr %51, ptr %44, align 8, !tbaa !18
  %58 = load i64, ptr %16, align 8, !tbaa !17
  store i64 %58, ptr %50, align 8, !tbaa !17
  %59 = load i64, ptr %34, align 8, !tbaa !14
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !14
  store ptr %16, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %34, align 8, !tbaa !14
  store i8 0, ptr %16, align 8, !tbaa !17
  %64 = load ptr, ptr %43, align 8, !tbaa !48
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %65, ptr %43, align 8, !tbaa !48
  br label %69

66:                                               ; preds = %41
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %67 unwind label %130

67:                                               ; preds = %66
  %68 = load ptr, ptr %43, align 8, !tbaa !55, !noalias !218
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %65, %60 ], [ %68, %67 ]
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %72 = load ptr, ptr %71, align 8, !tbaa !59, !noalias !218
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %42, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !60, !noalias !218
  %77 = getelementptr inbounds i8, ptr %76, i64 -8
  %78 = load ptr, ptr %77, align 8, !tbaa !61
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 512
  br label %80

80:                                               ; preds = %74, %69
  %81 = phi ptr [ %79, %74 ], [ %70, %69 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 -32
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = load ptr, ptr %4, align 8, !tbaa !18
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, ptr %34, align 8, !tbaa !14
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %92

89:                                               ; preds = %80
  %90 = load i64, ptr %16, align 8, !tbaa !17
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %84, i64 noundef %91) #26
  br label %92

92:                                               ; preds = %86, %89
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull %94) #17
  br label %97

97:                                               ; preds = %96, %92
  store ptr null, ptr %93, align 8, !tbaa !33
  %98 = load ptr, ptr %5, align 8, !tbaa !18
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, ptr %13, align 8, !tbaa !14
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %107

104:                                              ; preds = %97
  %105 = load i64, ptr %99, align 8, !tbaa !17
  %106 = add i64 %105, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %106) #26
  br label %107

107:                                              ; preds = %101, %104
  %108 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull %109) #17
  br label %112

112:                                              ; preds = %111, %107
  store ptr null, ptr %108, align 8, !tbaa !33
  %113 = load ptr, ptr %6, align 8, !tbaa !18
  %114 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %118 = load i64, ptr %117, align 8, !tbaa !14
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %112
  %121 = load i64, ptr %114, align 8, !tbaa !17
  %122 = add i64 %121, 1
  call void @_ZdlPvm(ptr noundef %113, i64 noundef %122) #26
  br label %123

123:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %178

124:                                              ; preds = %2
  %125 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

126:                                              ; preds = %10
  %127 = landingpad { ptr, i32 }
          catch ptr null
  br label %142

128:                                              ; preds = %24, %20
  %129 = landingpad { ptr, i32 }
          catch ptr null
  br label %140

130:                                              ; preds = %66, %38
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = load ptr, ptr %4, align 8, !tbaa !18
  %133 = icmp eq ptr %132, %16
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, ptr %34, align 8, !tbaa !14
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  br label %140

137:                                              ; preds = %130
  %138 = load i64, ptr %16, align 8, !tbaa !17
  %139 = add i64 %138, 1
  call void @_ZdlPvm(ptr noundef %132, i64 noundef %139) #26
  br label %140

140:                                              ; preds = %137, %134, %128
  %141 = phi { ptr, i32 } [ %129, %128 ], [ %131, %134 ], [ %131, %137 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  br label %142

142:                                              ; preds = %140, %126
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %127, %126 ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  br label %144

144:                                              ; preds = %142, %124
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %125, %124 ]
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %147 = call ptr @__cxa_begin_catch(ptr %146) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %148 unwind label %162

148:                                              ; preds = %144
  %149 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %7)
          to label %150 unwind label %164

150:                                              ; preds = %148
  %151 = load ptr, ptr %7, align 8, !tbaa !18
  %152 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %156 = load i64, ptr %155, align 8, !tbaa !14
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %161

158:                                              ; preds = %150
  %159 = load i64, ptr %152, align 8, !tbaa !17
  %160 = add i64 %159, 1
  call void @_ZdlPvm(ptr noundef %151, i64 noundef %160) #26
  br label %161

161:                                              ; preds = %154, %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  call void @__cxa_end_catch()
  br label %178

162:                                              ; preds = %144
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %176

164:                                              ; preds = %148
  %165 = landingpad { ptr, i32 }
          cleanup
  %166 = load ptr, ptr %7, align 8, !tbaa !18
  %167 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %171 = load i64, ptr %170, align 8, !tbaa !14
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  br label %176

173:                                              ; preds = %164
  %174 = load i64, ptr %167, align 8, !tbaa !17
  %175 = add i64 %174, 1
  call void @_ZdlPvm(ptr noundef %166, i64 noundef %175) #26
  br label %176

176:                                              ; preds = %173, %169, %162
  %177 = phi { ptr, i32 } [ %163, %162 ], [ %165, %169 ], [ %165, %173 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #17
  invoke void @__cxa_end_catch()
          to label %180 unwind label %181

178:                                              ; preds = %161, %123
  %179 = phi ptr [ %83, %123 ], [ %149, %161 ]
  ret ptr %179

180:                                              ; preds = %176
  resume { ptr, i32 } %177

181:                                              ; preds = %176
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15path_componentsESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  store i64 %0, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #17
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2)
          to label %11 unwind label %73

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !33, !noalias !221
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 3
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !14, !noalias !221
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i8
  %22 = and i64 %14, 3
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %30

24:                                               ; preds = %11
  %25 = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17, !noalias !221
  %26 = load ptr, ptr %12, align 8, !tbaa !33, !noalias !224
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
  %35 = load ptr, ptr %12, align 8, !tbaa !33
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
  br label %75

54:                                               ; preds = %135, %30, %40, %42
  %55 = phi ptr [ %36, %42 ], [ %36, %40 ], [ %13, %30 ], [ %136, %135 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %55) #17
  br label %58

58:                                               ; preds = %57, %54
  store ptr null, ptr %12, align 8, !tbaa !33
  %59 = load ptr, ptr %7, align 8, !tbaa !18
  %60 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  br label %69

66:                                               ; preds = %58
  %67 = load i64, ptr %60, align 8, !tbaa !17
  %68 = add i64 %67, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %68) #26
  br label %69

69:                                               ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  %70 = load ptr, ptr %6, align 8, !tbaa !61, !noalias !227
  %71 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %72 = load ptr, ptr %71, align 8, !tbaa !61, !noalias !227
  invoke void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr %70, ptr %72, i64 %2, ptr %3)
          to label %162 unwind label %256

73:                                               ; preds = %4
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %270

75:                                               ; preds = %44, %135
  %76 = phi ptr [ %47, %44 ], [ %136, %135 ]
  %77 = phi ptr [ %46, %44 ], [ %142, %135 ]
  %78 = phi i8 [ %45, %44 ], [ %140, %135 ]
  %79 = ptrtoint ptr %76 to i64
  %80 = and i64 %79, 3
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, ptr %77, ptr %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %83 = load ptr, ptr %82, align 8, !tbaa !18, !noalias !236
  %84 = select i1 %81, ptr %77, ptr %7
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %86 = load i64, ptr %85, align 8, !tbaa !14, !noalias !236
  %87 = icmp ult i64 %86, 9223372036854775807
  call void @llvm.assume(i1 %87)
  store ptr %50, ptr %8, align 8, !tbaa !8, !alias.scope !236
  %88 = icmp eq ptr %83, null
  %89 = icmp ne i64 %86, 0
  %90 = and i1 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
          to label %92 unwind label %148

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %75
  %94 = icmp samesign ugt i64 %86, 15
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = add nuw nsw i64 %86, 1
  %97 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %96) #25
          to label %98 unwind label %146

98:                                               ; preds = %95
  store ptr %97, ptr %8, align 8, !tbaa !18, !alias.scope !236
  store i64 %86, ptr %50, align 8, !tbaa !17, !alias.scope !236
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi ptr [ %97, %98 ], [ %50, %93 ]
  switch i64 %86, label %103 [
    i64 1, label %101
    i64 0, label %104
  ]

101:                                              ; preds = %99
  %102 = load i8, ptr %83, align 1, !tbaa !17
  store i8 %102, ptr %100, align 1, !tbaa !17
  br label %104

103:                                              ; preds = %99
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %100, ptr align 1 %83, i64 %86, i1 false)
  br label %104

104:                                              ; preds = %103, %101, %99
  store i64 %86, ptr %51, align 8, !tbaa !14, !alias.scope !236
  %105 = getelementptr inbounds nuw i8, ptr %100, i64 %86
  store i8 0, ptr %105, align 1, !tbaa !17
  %106 = load ptr, ptr %52, align 8, !tbaa !128
  %107 = load ptr, ptr %53, align 8, !tbaa !130
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds nuw i8, ptr %106, i64 16
  store ptr %110, ptr %106, align 8, !tbaa !8
  %111 = load ptr, ptr %8, align 8, !tbaa !18
  %112 = icmp eq ptr %111, %50
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i64, ptr %51, align 8, !tbaa !14
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  %116 = add nuw nsw i64 %114, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %110, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %116, i1 false)
  br label %120

117:                                              ; preds = %109
  store ptr %111, ptr %106, align 8, !tbaa !18
  %118 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %118, ptr %110, align 8, !tbaa !17
  %119 = load i64, ptr %51, align 8, !tbaa !14
  br label %120

120:                                              ; preds = %113, %117
  %121 = phi i64 [ %119, %117 ], [ %114, %113 ]
  %122 = icmp ult i64 %121, 9223372036854775807
  call void @llvm.assume(i1 %122)
  %123 = getelementptr inbounds nuw i8, ptr %106, i64 8
  store i64 %121, ptr %123, align 8, !tbaa !14
  store ptr %50, ptr %8, align 8, !tbaa !18
  store i64 0, ptr %51, align 8, !tbaa !14
  %124 = getelementptr inbounds nuw i8, ptr %106, i64 32
  store ptr %124, ptr %52, align 8, !tbaa !128
  br label %129

125:                                              ; preds = %104
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %126 unwind label %150

126:                                              ; preds = %125
  %127 = load ptr, ptr %8, align 8, !tbaa !18
  %128 = icmp eq ptr %127, %50
  br i1 %128, label %129, label %132

129:                                              ; preds = %120, %126
  %130 = load i64, ptr %51, align 8, !tbaa !14
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %135

132:                                              ; preds = %126
  %133 = load i64, ptr %50, align 8, !tbaa !17
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %127, i64 noundef %134) #26
  br label %135

135:                                              ; preds = %129, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  %136 = load ptr, ptr %12, align 8, !tbaa !33
  %137 = ptrtoint ptr %136 to i64
  %138 = and i64 %137, 3
  %139 = icmp eq i64 %138, 0
  %140 = select i1 %139, i8 %78, i8 1
  %141 = select i1 %139, i64 48, i64 0
  %142 = getelementptr inbounds nuw i8, ptr %77, i64 %141
  %143 = icmp ne ptr %142, %48
  %144 = icmp ne i8 %140, %49
  %145 = select i1 %139, i1 %143, i1 %144
  br i1 %145, label %75, label %54

146:                                              ; preds = %95
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %160

148:                                              ; preds = %91
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %160

150:                                              ; preds = %125
  %151 = landingpad { ptr, i32 }
          cleanup
  %152 = load ptr, ptr %8, align 8, !tbaa !18
  %153 = icmp eq ptr %152, %50
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i64, ptr %51, align 8, !tbaa !14
  %156 = icmp ult i64 %155, 16
  call void @llvm.assume(i1 %156)
  br label %160

157:                                              ; preds = %150
  %158 = load i64, ptr %50, align 8, !tbaa !17
  %159 = add i64 %158, 1
  call void @_ZdlPvm(ptr noundef %152, i64 noundef %159) #26
  br label %160

160:                                              ; preds = %146, %148, %157, %154
  %161 = phi { ptr, i32 } [ %151, %154 ], [ %151, %157 ], [ %147, %146 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #17
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #17
  br label %270

162:                                              ; preds = %69
  %163 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %168, !prof !47

165:                                              ; preds = %162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %166 unwind label %258

166:                                              ; preds = %165
  %167 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %168

168:                                              ; preds = %166, %162
  %169 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 48
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 64
  %173 = load ptr, ptr %172, align 8, !tbaa !54
  %174 = getelementptr inbounds i8, ptr %173, i64 -32
  %175 = icmp eq ptr %171, %174
  br i1 %175, label %197, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds nuw i8, ptr %171, i64 16
  store ptr %177, ptr %171, align 8, !tbaa !8
  %178 = load ptr, ptr %9, align 8, !tbaa !18
  %179 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %183 = load i64, ptr %182, align 8, !tbaa !14
  %184 = icmp ult i64 %183, 16
  call void @llvm.assume(i1 %184)
  %185 = add nuw nsw i64 %183, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %177, ptr noundef nonnull align 8 dereferenceable(1) %179, i64 %185, i1 false)
  br label %190

186:                                              ; preds = %176
  store ptr %178, ptr %171, align 8, !tbaa !18
  %187 = load i64, ptr %179, align 8, !tbaa !17
  store i64 %187, ptr %177, align 8, !tbaa !17
  %188 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %189 = load i64, ptr %188, align 8, !tbaa !14
  br label %190

190:                                              ; preds = %186, %181
  %191 = phi i64 [ %189, %186 ], [ %183, %181 ]
  %192 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %193 = icmp ult i64 %191, 9223372036854775807
  call void @llvm.assume(i1 %193)
  %194 = getelementptr inbounds nuw i8, ptr %171, i64 8
  store i64 %191, ptr %194, align 8, !tbaa !14
  store ptr %179, ptr %9, align 8, !tbaa !18
  store i64 0, ptr %192, align 8, !tbaa !14
  store i8 0, ptr %179, align 8, !tbaa !17
  %195 = load ptr, ptr %170, align 8, !tbaa !48
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 32
  store ptr %196, ptr %170, align 8, !tbaa !48
  br label %200

197:                                              ; preds = %168
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %169, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %198 unwind label %258

198:                                              ; preds = %197
  %199 = load ptr, ptr %170, align 8, !tbaa !55, !noalias !237
  br label %200

200:                                              ; preds = %198, %190
  %201 = phi ptr [ %196, %190 ], [ %199, %198 ]
  %202 = getelementptr inbounds nuw i8, ptr %169, i64 56
  %203 = load ptr, ptr %202, align 8, !tbaa !59, !noalias !237
  %204 = icmp eq ptr %201, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = getelementptr inbounds nuw i8, ptr %169, i64 72
  %207 = load ptr, ptr %206, align 8, !tbaa !60, !noalias !237
  %208 = getelementptr inbounds i8, ptr %207, i64 -8
  %209 = load ptr, ptr %208, align 8, !tbaa !61
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 512
  br label %211

211:                                              ; preds = %205, %200
  %212 = phi ptr [ %210, %205 ], [ %201, %200 ]
  %213 = getelementptr inbounds i8, ptr %212, i64 -32
  %214 = load ptr, ptr %213, align 8, !tbaa !18
  %215 = load ptr, ptr %9, align 8, !tbaa !18
  %216 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %217 = icmp eq ptr %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %220 = load i64, ptr %219, align 8, !tbaa !14
  %221 = icmp ult i64 %220, 16
  call void @llvm.assume(i1 %221)
  br label %225

222:                                              ; preds = %211
  %223 = load i64, ptr %216, align 8, !tbaa !17
  %224 = add i64 %223, 1
  call void @_ZdlPvm(ptr noundef %215, i64 noundef %224) #26
  br label %225

225:                                              ; preds = %218, %222
  %226 = load ptr, ptr %6, align 8, !tbaa !137
  %227 = load ptr, ptr %71, align 8, !tbaa !128
  %228 = icmp eq ptr %226, %227
  br i1 %228, label %246, label %229

229:                                              ; preds = %225, %241
  %230 = phi ptr [ %242, %241 ], [ %226, %225 ]
  %231 = load ptr, ptr %230, align 8, !tbaa !18
  %232 = getelementptr inbounds nuw i8, ptr %230, i64 16
  %233 = icmp eq ptr %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %236 = load i64, ptr %235, align 8, !tbaa !14
  %237 = icmp ult i64 %236, 16
  call void @llvm.assume(i1 %237)
  br label %241

238:                                              ; preds = %229
  %239 = load i64, ptr %232, align 8, !tbaa !17
  %240 = add i64 %239, 1
  call void @_ZdlPvm(ptr noundef %231, i64 noundef %240) #26
  br label %241

241:                                              ; preds = %238, %234
  %242 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %243 = icmp eq ptr %242, %227
  br i1 %243, label %244, label %229, !llvm.loop !138

244:                                              ; preds = %241
  %245 = load ptr, ptr %6, align 8, !tbaa !137
  br label %246

246:                                              ; preds = %244, %225
  %247 = phi ptr [ %245, %244 ], [ %226, %225 ]
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %251 = load ptr, ptr %250, align 8, !tbaa !130
  %252 = ptrtoint ptr %251 to i64
  %253 = ptrtoint ptr %247 to i64
  %254 = sub i64 %252, %253
  call void @_ZdlPvm(ptr noundef nonnull %247, i64 noundef %254) #26
  br label %255

255:                                              ; preds = %246, %249
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret ptr %214

256:                                              ; preds = %69
  %257 = landingpad { ptr, i32 }
          cleanup
  br label %270

258:                                              ; preds = %197, %165
  %259 = landingpad { ptr, i32 }
          cleanup
  %260 = load ptr, ptr %9, align 8, !tbaa !18
  %261 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %262 = icmp eq ptr %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %265 = load i64, ptr %264, align 8, !tbaa !14
  %266 = icmp ult i64 %265, 16
  call void @llvm.assume(i1 %266)
  br label %270

267:                                              ; preds = %258
  %268 = load i64, ptr %261, align 8, !tbaa !17
  %269 = add i64 %268, 1
  call void @_ZdlPvm(ptr noundef %260, i64 noundef %269) #26
  br label %270

270:                                              ; preds = %267, %263, %73, %160, %256
  %271 = phi { ptr, i32 } [ %257, %256 ], [ %161, %160 ], [ %74, %73 ], [ %259, %263 ], [ %259, %267 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  resume { ptr, i32 } %271
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @sys__native_file_open(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN31__apollo_inline_inline_2221_5_721sys__native_file_openEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_create(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN31__apollo_inline_inline_2221_5_723sys__native_file_createEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_read_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_file_close(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %8, align 8, !tbaa !27
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_sync_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_sync_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_file_sync_dataEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_file_set_len(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_724sys__native_file_set_lenEPvl(ptr noundef %0, i64 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_metadata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @sys__native_meta_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !78
  br label %10

10:                                               ; preds = %1, %3, %7
  %11 = phi i64 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i64 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_meta_modified(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_meta_accessed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_meta_created(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_dir(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %9 = load i8, ptr %8, align 8, !tbaa !80, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_file(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 121
  %9 = load i8, ptr %8, align 1, !tbaa !81, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_perm_readonly(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 122
  %9 = load i8, ptr %8, align 2, !tbaa !82, !range !45, !noundef !46
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_726sys__native_fs_remove_fileEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_725sys__native_fs_remove_dirEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_remove_dir_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_729sys__native_fs_remove_dir_allEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_exists(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2221_5_721sys__native_fs_existsEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !33
  %16 = load ptr, ptr %3, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %26

23:                                               ; preds = %15
  %24 = load i64, ptr %17, align 8, !tbaa !17
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %25) #26
  br label %26

26:                                               ; preds = %19, %23
  %27 = zext i1 %10 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %27
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %8, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext 2)
  %10 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path18has_root_directoryEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 8, !tbaa !33
  %16 = load ptr, ptr %3, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %26

23:                                               ; preds = %15
  %24 = load i64, ptr %17, align 8, !tbaa !17
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %25) #26
  br label %26

26:                                               ; preds = %19, %23
  %27 = xor i1 %10, true
  %28 = zext i1 %27 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %28
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #26
  br label %13

13:                                               ; preds = %6, %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %25

22:                                               ; preds = %13
  %23 = load i64, ptr %16, align 8, !tbaa !17
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %24) #26
  br label %25

25:                                               ; preds = %18, %22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #26
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %25

22:                                               ; preds = %13
  %23 = load i64, ptr %16, align 8, !tbaa !17
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %24) #26
  br label %25

25:                                               ; preds = %18, %22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = icmp ugt i64 %8, 9223372036854775806
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %8, 1
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #25
  store ptr %15, ptr %0, align 8, !tbaa !18
  store i64 %8, ptr %4, align 8, !tbaa !17
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %15, %13 ], [ %4, %7 ]
  switch i64 %8, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %19, ptr %17, align 1, !tbaa !17
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %22, align 8, !tbaa !14
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %8
  store i8 0, ptr %23, align 1, !tbaa !17
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %0, align 8, !tbaa !8
  %9 = icmp eq ptr %4, null
  %10 = icmp ne i64 %6, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

13:                                               ; preds = %3
  %14 = icmp samesign ugt i64 %6, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add nuw nsw i64 %6, 1
  %17 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #25
  store ptr %17, ptr %0, align 8, !tbaa !18
  store i64 %6, ptr %8, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %17, %15 ], [ %8, %13 ]
  switch i64 %6, label %22 [
    i64 1, label %20
    i64 0, label %23
  ]

20:                                               ; preds = %18
  %21 = load i8, ptr %4, align 1, !tbaa !17
  store i8 %21, ptr %19, align 1, !tbaa !17
  br label %23

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %4, i64 %6, i1 false)
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %24, align 8, !tbaa !14
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 %6
  store i8 0, ptr %25, align 1, !tbaa !17
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
  %33 = load ptr, ptr %26, align 8, !tbaa !33
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %33) #17
  br label %36

36:                                               ; preds = %31, %35
  store ptr null, ptr %26, align 8, !tbaa !33
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi { ptr, i32 } [ %32, %36 ], [ %30, %29 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !18
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, ptr %24, align 8, !tbaa !14
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  br label %47

44:                                               ; preds = %37
  %45 = load i64, ptr %8, align 8, !tbaa !17
  %46 = add i64 %45, 1
  tail call void @_ZdlPvm(ptr noundef %39, i64 noundef %46) #26
  br label %47

47:                                               ; preds = %44, %41
  resume { ptr, i32 } %38
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path15has_parent_pathEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

declare noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !33
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %17

14:                                               ; preds = %6
  %15 = load i64, ptr %8, align 8, !tbaa !17
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %16) #26
  br label %17

17:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #16 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !240
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !8
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #25
  store ptr %19, ptr %0, align 8, !tbaa !18
  store i64 %4, ptr %7, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !17
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !17
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !47

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
  %5 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #17
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds i8, ptr %11, i64 -32
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %33, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %15, ptr %9, align 8, !tbaa !8
  %16 = load ptr, ptr %0, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  %23 = add nuw nsw i64 %21, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %23, i1 false)
  br label %26

24:                                               ; preds = %14
  store ptr %16, ptr %9, align 8, !tbaa !18
  %25 = load i64, ptr %17, align 8, !tbaa !17
  store i64 %25, ptr %15, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !14
  %29 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %29)
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %28, ptr %30, align 8, !tbaa !14
  store ptr %17, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %27, align 8, !tbaa !14
  store i8 0, ptr %17, align 1, !tbaa !17
  %31 = load ptr, ptr %8, align 8, !tbaa !48
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %32, ptr %8, align 8, !tbaa !48
  br label %35

33:                                               ; preds = %6
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %34 = load ptr, ptr %8, align 8, !tbaa !55, !noalias !242
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %32, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %38 = load ptr, ptr %37, align 8, !tbaa !59, !noalias !242
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 72
  %42 = load ptr, ptr %41, align 8, !tbaa !60, !noalias !242
  %43 = getelementptr inbounds i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 512
  br label %46

46:                                               ; preds = %35, %40
  %47 = phi ptr [ %45, %40 ], [ %36, %35 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 -32
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  ret ptr %49
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #16 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !61, !noalias !245
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !61
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !248, !noalias !245
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !248
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !61, !noalias !249
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !61
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !248, !noalias !249
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !248
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
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
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #26
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
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #26
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #27
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !256
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !119

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
  store ptr %12, ptr %0, align 8, !tbaa !252
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !61
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
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #26
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !255

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #28
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
  tail call void @__clang_call_terminate(ptr %39) #27
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #17
  %44 = load ptr, ptr %0, align 8, !tbaa !252
  %45 = load i64, ptr %6, align 8, !tbaa !256
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #28
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
  store ptr %15, ptr %52, align 8, !tbaa !60
  %53 = load ptr, ptr %15, align 8, !tbaa !61
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !59
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !258
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !60
  %60 = load ptr, ptr %58, align 8, !tbaa !61
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !59
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !258
  store ptr %53, ptr %51, align 8, !tbaa !259
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !48
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #27
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !60
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !55
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !14
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !17
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #26
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !17
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #26
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !18
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !17
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #26
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !14
  %53 = icmp ult i64 %52, 16
  tail call void @llvm.assume(i1 %53)
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %57, align 8, !tbaa !17
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #26
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !17
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #26
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !14
  %77 = icmp ult i64 %76, 16
  tail call void @llvm.assume(i1 %77)
  br label %78

78:                                               ; preds = %74, %71
  %79 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %80 = load ptr, ptr %79, align 8, !tbaa !18
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i64, ptr %81, align 8, !tbaa !17
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #26
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !14
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  br label %90

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %92 = load ptr, ptr %91, align 8, !tbaa !18
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !17
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #26
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !14
  %101 = icmp ult i64 %100, 16
  tail call void @llvm.assume(i1 %101)
  br label %102

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i64, ptr %105, align 8, !tbaa !17
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #26
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !14
  %113 = icmp ult i64 %112, 16
  tail call void @llvm.assume(i1 %113)
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %116 = load ptr, ptr %115, align 8, !tbaa !18
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !17
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #26
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !14
  %125 = icmp ult i64 %124, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %122, %119
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i64, ptr %129, align 8, !tbaa !17
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #26
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !14
  %137 = icmp ult i64 %136, 16
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %134, %131
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %140 = load ptr, ptr %139, align 8, !tbaa !18
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !17
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #26
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !14
  %149 = icmp ult i64 %148, 16
  tail call void @llvm.assume(i1 %149)
  br label %150

150:                                              ; preds = %146, %143
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %152 = load ptr, ptr %151, align 8, !tbaa !18
  %153 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8, !tbaa !17
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #26
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !14
  %161 = icmp ult i64 %160, 16
  tail call void @llvm.assume(i1 %161)
  br label %162

162:                                              ; preds = %158, %155
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %164 = load ptr, ptr %163, align 8, !tbaa !18
  %165 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %165, align 8, !tbaa !17
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #26
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !14
  %173 = icmp ult i64 %172, 16
  tail call void @llvm.assume(i1 %173)
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %176 = load ptr, ptr %175, align 8, !tbaa !18
  %177 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i64, ptr %177, align 8, !tbaa !17
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #26
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !14
  %185 = icmp ult i64 %184, 16
  tail call void @llvm.assume(i1 %185)
  br label %186

186:                                              ; preds = %182, %179
  %187 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %188 = load ptr, ptr %187, align 8, !tbaa !18
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i64, ptr %189, align 8, !tbaa !17
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #26
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !14
  %197 = icmp ult i64 %196, 16
  tail call void @llvm.assume(i1 %197)
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  %201 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i64, ptr %201, align 8, !tbaa !17
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #26
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !14
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !60
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !260

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !258
  %217 = icmp eq ptr %16, %216
  br i1 %217, label %233, label %218

218:                                              ; preds = %214, %230
  %219 = phi ptr [ %231, %230 ], [ %16, %214 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !18
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %222 = icmp eq ptr %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 8
  %225 = load i64, ptr %224, align 8, !tbaa !14
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !17
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #26
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !138

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !59
  %236 = load ptr, ptr %2, align 8, !tbaa !55
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %271, label %238

238:                                              ; preds = %233, %250
  %239 = phi ptr [ %251, %250 ], [ %235, %233 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !18
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 16
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 8
  %245 = load i64, ptr %244, align 8, !tbaa !14
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !17
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #26
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !138

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !55
  %255 = icmp eq ptr %16, %254
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %269, %268 ], [ %16, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !18
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 16
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 8
  %263 = load i64, ptr %262, align 8, !tbaa !14
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !17
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #26
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !138

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !55
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !258
  %27 = load ptr, ptr %4, align 8, !tbaa !55
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
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
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !61
  %51 = load ptr, ptr %3, align 8, !tbaa !48
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !8
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !18
  %62 = load i64, ptr %54, align 8, !tbaa !17
  store i64 %62, ptr %52, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !14
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !14
  store ptr %54, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %64, align 8, !tbaa !14
  store i8 0, ptr %54, align 8, !tbaa !17
  %68 = load ptr, ptr %5, align 8, !tbaa !254
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !60
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  store ptr %70, ptr %18, align 8, !tbaa !59
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !258
  store ptr %70, ptr %3, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
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
  %35 = load ptr, ptr %7, align 8, !tbaa !61
  store ptr %35, ptr %24, align 8, !tbaa !61
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
  %48 = load ptr, ptr %7, align 8, !tbaa !61
  store ptr %48, ptr %42, align 8, !tbaa !61
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
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
  %69 = load ptr, ptr %7, align 8, !tbaa !61
  store ptr %69, ptr %60, align 8, !tbaa !61
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !252
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #26
  store ptr %55, ptr %0, align 8, !tbaa !252
  store i64 %52, ptr %14, align 8, !tbaa !256
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !60
  %75 = load ptr, ptr %74, align 8, !tbaa !61
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !59
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !258
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !60
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !59
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
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
  %18 = load ptr, ptr %1, align 8, !tbaa !25
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %22 = icmp eq i32 %21, -1
  %23 = select i1 %22, ptr null, ptr %1
  br label %27

24:                                               ; preds = %11
  %25 = load i8, ptr %13, align 1, !tbaa !17
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
  %39 = load ptr, ptr %3, align 8, !tbaa !25
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
  %48 = phi ptr [ %3, %27 ], [ %44, %38 ]
  %49 = phi i32 [ %4, %27 ], [ %42, %38 ]
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
  %64 = load ptr, ptr %28, align 8, !tbaa !25
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 72
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(64) %28)
  %68 = icmp eq i32 %67, -1
  %69 = select i1 %68, ptr null, ptr %28
  br label %73

70:                                               ; preds = %57
  %71 = load i8, ptr %59, align 1, !tbaa !17
  %72 = zext i8 %71 to i32
  br label %73

73:                                               ; preds = %70, %63, %53
  %74 = phi ptr [ %28, %70 ], [ %28, %53 ], [ %69, %63 ]
  %75 = phi i32 [ %72, %70 ], [ %2, %53 ], [ %67, %63 ]
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %7, align 8, !tbaa !17
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %78 = load ptr, ptr %77, align 8, !tbaa !263
  %79 = getelementptr inbounds nuw i8, ptr %74, i64 24
  %80 = load ptr, ptr %79, align 8, !tbaa !265
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %87, label %82, !prof !261

82:                                               ; preds = %73
  %83 = load ptr, ptr %74, align 8, !tbaa !25
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

90:                                               ; preds = %274, %89
  %91 = phi ptr [ %74, %89 ], [ %263, %274 ]
  %92 = phi ptr [ %54, %89 ], [ %129, %274 ]
  %93 = phi i64 [ 1, %89 ], [ %265, %274 ]
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !263
  %96 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %97 = load ptr, ptr %96, align 8, !tbaa !265
  %98 = icmp ult ptr %95, %97
  br i1 %98, label %107, label %99, !prof !261

99:                                               ; preds = %90
  %100 = load ptr, ptr %91, align 8, !tbaa !25
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
  %119 = load i8, ptr %114, align 1, !tbaa !17
  %120 = zext i8 %119 to i32
  br label %128

121:                                              ; preds = %112
  %122 = load ptr, ptr %92, align 8, !tbaa !25
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
  br i1 %134, label %244, label %135

135:                                              ; preds = %128, %45, %47
  %136 = phi ptr [ %48, %47 ], [ %3, %45 ], [ %129, %128 ]
  %137 = phi ptr [ %28, %47 ], [ %28, %45 ], [ %108, %128 ]
  %138 = phi i32 [ %2, %47 ], [ %2, %45 ], [ -1, %128 ]
  %139 = phi i64 [ 0, %47 ], [ 0, %45 ], [ %93, %128 ]
  %140 = icmp ne i32 %4, -1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %142 = icmp ne ptr %137, null
  %143 = icmp eq i32 %138, -1
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %162

145:                                              ; preds = %135
  %146 = getelementptr inbounds nuw i8, ptr %137, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !263
  %148 = getelementptr inbounds nuw i8, ptr %137, i64 24
  %149 = load ptr, ptr %148, align 8, !tbaa !265
  %150 = icmp ult ptr %147, %149
  br i1 %150, label %159, label %151, !prof !261

151:                                              ; preds = %145
  %152 = load ptr, ptr %137, align 8, !tbaa !25
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 72
  %154 = load ptr, ptr %153, align 8
  %155 = invoke noundef i32 %154(ptr noundef nonnull align 8 dereferenceable(64) %137)
          to label %156 unwind label %359

156:                                              ; preds = %151
  %157 = icmp eq i32 %155, -1
  %158 = select i1 %157, ptr null, ptr %137
  br label %162

159:                                              ; preds = %145
  %160 = load i8, ptr %147, align 1, !tbaa !17
  %161 = zext i8 %160 to i32
  br label %162

162:                                              ; preds = %159, %156, %135
  %163 = phi ptr [ %137, %159 ], [ %137, %135 ], [ %158, %156 ]
  %164 = phi i32 [ %161, %159 ], [ %138, %135 ], [ %155, %156 ]
  %165 = icmp ne ptr %136, null
  %166 = select i1 %165, i1 %6, i1 false
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = icmp eq i32 %164, -1
  %169 = xor i1 %140, %168
  br i1 %169, label %409, label %187

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %172 = load ptr, ptr %171, align 8, !tbaa !263
  %173 = getelementptr inbounds nuw i8, ptr %136, i64 24
  %174 = load ptr, ptr %173, align 8, !tbaa !265
  %175 = icmp ult ptr %172, %174
  br i1 %175, label %185, label %176, !prof !261

176:                                              ; preds = %170
  %177 = load ptr, ptr %136, align 8, !tbaa !25
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 72
  %179 = load ptr, ptr %178, align 8
  %180 = invoke noundef i32 %179(ptr noundef nonnull align 8 dereferenceable(64) %136)
          to label %181 unwind label %359

181:                                              ; preds = %176
  %182 = icmp eq i32 %180, -1
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  %184 = icmp eq i32 %164, -1
  br i1 %184, label %409, label %187

185:                                              ; preds = %181, %170
  %186 = icmp eq i32 %164, -1
  br i1 %186, label %187, label %409

187:                                              ; preds = %185, %183, %167
  %188 = phi ptr [ %136, %185 ], [ %136, %167 ], [ null, %183 ]
  %189 = icmp eq i64 %139, 15
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %0, align 8, !tbaa !18
  br label %204

192:                                              ; preds = %187
  %193 = invoke noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #25
          to label %194 unwind label %363

194:                                              ; preds = %192
  %195 = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %193, ptr noundef nonnull align 1 dereferenceable(15) %195, i64 15, i1 false)
  %196 = icmp eq ptr %195, %7
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i64, ptr %7, align 8, !tbaa !17
  %199 = add i64 %198, 1
  tail call void @_ZdlPvm(ptr noundef nonnull %195, i64 noundef %199) #26
  br label %203

200:                                              ; preds = %194
  %201 = load i64, ptr %141, align 8, !tbaa !14
  %202 = icmp ult i64 %201, 16
  tail call void @llvm.assume(i1 %202)
  br label %203

203:                                              ; preds = %200, %197
  store ptr %193, ptr %0, align 8, !tbaa !18
  store i64 30, ptr %7, align 8, !tbaa !17
  br label %204

204:                                              ; preds = %190, %203
  %205 = phi ptr [ %193, %203 ], [ %191, %190 ]
  %206 = phi i64 [ 30, %203 ], [ 15, %190 ]
  %207 = icmp ne ptr %163, null
  %208 = select i1 %207, i1 %143, i1 false
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %211 = load ptr, ptr %210, align 8, !tbaa !263
  %212 = getelementptr inbounds nuw i8, ptr %163, i64 24
  %213 = load ptr, ptr %212, align 8, !tbaa !265
  %214 = icmp ult ptr %211, %213
  br i1 %214, label %223, label %215, !prof !261

215:                                              ; preds = %209
  %216 = load ptr, ptr %163, align 8, !tbaa !25
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 72
  %218 = load ptr, ptr %217, align 8
  %219 = invoke noundef i32 %218(ptr noundef nonnull align 8 dereferenceable(64) %163)
          to label %220 unwind label %407

220:                                              ; preds = %215
  %221 = icmp eq i32 %219, -1
  %222 = select i1 %221, ptr null, ptr %163
  br label %226

223:                                              ; preds = %209
  %224 = load i8, ptr %211, align 1, !tbaa !17
  %225 = zext i8 %224 to i32
  br label %226

226:                                              ; preds = %223, %220, %204
  %227 = phi ptr [ %163, %223 ], [ %163, %204 ], [ %222, %220 ]
  %228 = phi i32 [ %225, %223 ], [ %138, %204 ], [ %219, %220 ]
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds nuw i8, ptr %205, i64 %139
  store i8 %229, ptr %230, align 1, !tbaa !17
  %231 = getelementptr inbounds nuw i8, ptr %227, i64 16
  %232 = load ptr, ptr %231, align 8, !tbaa !263
  %233 = getelementptr inbounds nuw i8, ptr %227, i64 24
  %234 = load ptr, ptr %233, align 8, !tbaa !265
  %235 = icmp ult ptr %232, %234
  br i1 %235, label %242, label %236, !prof !261

236:                                              ; preds = %226
  %237 = load ptr, ptr %227, align 8, !tbaa !25
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 80
  %239 = load ptr, ptr %238, align 8
  %240 = invoke noundef i32 %239(ptr noundef nonnull align 8 dereferenceable(64) %227)
          to label %241 unwind label %359

241:                                              ; preds = %242, %236
  br label %280

242:                                              ; preds = %226
  %243 = getelementptr inbounds nuw i8, ptr %232, i64 1
  store ptr %243, ptr %231, align 8, !tbaa !263
  br label %241

244:                                              ; preds = %128
  %245 = icmp eq ptr %108, null
  br i1 %245, label %262, label %246

246:                                              ; preds = %244
  %247 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %248 = load ptr, ptr %247, align 8, !tbaa !263
  %249 = getelementptr inbounds nuw i8, ptr %108, i64 24
  %250 = load ptr, ptr %249, align 8, !tbaa !265
  %251 = icmp ult ptr %248, %250
  br i1 %251, label %252, label %254, !prof !261

252:                                              ; preds = %246
  %253 = load i8, ptr %248, align 1, !tbaa !17
  br label %262

254:                                              ; preds = %246
  %255 = load ptr, ptr %108, align 8, !tbaa !25
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 72
  %257 = load ptr, ptr %256, align 8
  %258 = tail call noundef i32 %257(ptr noundef nonnull align 8 dereferenceable(64) %108)
  %259 = icmp eq i32 %258, -1
  %260 = select i1 %259, ptr null, ptr %108
  %261 = trunc i32 %258 to i8
  br label %262

262:                                              ; preds = %254, %244, %252
  %263 = phi ptr [ %108, %252 ], [ null, %244 ], [ %260, %254 ]
  %264 = phi i8 [ %253, %252 ], [ -1, %244 ], [ %261, %254 ]
  %265 = add nuw nsw i64 %93, 1
  %266 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 0, i64 %93
  store i8 %264, ptr %266, align 1, !tbaa !17
  %267 = getelementptr inbounds nuw i8, ptr %263, i64 16
  %268 = load ptr, ptr %267, align 8, !tbaa !263
  %269 = getelementptr inbounds nuw i8, ptr %263, i64 24
  %270 = load ptr, ptr %269, align 8, !tbaa !265
  %271 = icmp ult ptr %268, %270
  br i1 %271, label %272, label %275, !prof !261

272:                                              ; preds = %262
  %273 = getelementptr inbounds nuw i8, ptr %268, i64 1
  store ptr %273, ptr %267, align 8, !tbaa !263
  br label %274

274:                                              ; preds = %272, %275
  br label %90, !llvm.loop !266

275:                                              ; preds = %262
  %276 = load ptr, ptr %263, align 8, !tbaa !25
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 80
  %278 = load ptr, ptr %277, align 8
  %279 = tail call noundef i32 %278(ptr noundef nonnull align 8 dereferenceable(64) %263)
  br label %274

280:                                              ; preds = %404, %241
  %281 = phi ptr [ %227, %241 ], [ %389, %404 ]
  %282 = phi ptr [ %188, %241 ], [ %323, %404 ]
  %283 = phi i64 [ %206, %241 ], [ %369, %404 ]
  %284 = phi i64 [ %139, %241 ], [ %285, %404 ]
  %285 = add i64 %284, 1
  %286 = getelementptr inbounds nuw i8, ptr %281, i64 16
  %287 = load ptr, ptr %286, align 8, !tbaa !263
  %288 = getelementptr inbounds nuw i8, ptr %281, i64 24
  %289 = load ptr, ptr %288, align 8, !tbaa !265
  %290 = icmp ult ptr %287, %289
  br i1 %290, label %300, label %291, !prof !261

291:                                              ; preds = %280
  %292 = load ptr, ptr %281, align 8, !tbaa !25
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 72
  %294 = load ptr, ptr %293, align 8
  %295 = invoke noundef i32 %294(ptr noundef nonnull align 8 dereferenceable(64) %281)
          to label %296 unwind label %357

296:                                              ; preds = %291
  %297 = icmp eq i32 %295, -1
  %298 = select i1 %297, ptr null, ptr %281
  %299 = icmp eq i32 %295, -1
  br label %300

300:                                              ; preds = %280, %296
  %301 = phi ptr [ %298, %296 ], [ %281, %280 ]
  %302 = phi i1 [ %299, %296 ], [ false, %280 ]
  %303 = icmp ne ptr %282, null
  %304 = select i1 %303, i1 %6, i1 false
  br i1 %304, label %305, label %320

305:                                              ; preds = %300
  %306 = getelementptr inbounds nuw i8, ptr %282, i64 16
  %307 = load ptr, ptr %306, align 8, !tbaa !263
  %308 = getelementptr inbounds nuw i8, ptr %282, i64 24
  %309 = load ptr, ptr %308, align 8, !tbaa !265
  %310 = icmp ult ptr %307, %309
  br i1 %310, label %319, label %311, !prof !261

311:                                              ; preds = %305
  %312 = load ptr, ptr %282, align 8, !tbaa !25
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 72
  %314 = load ptr, ptr %313, align 8
  %315 = invoke noundef i32 %314(ptr noundef nonnull align 8 dereferenceable(64) %282)
          to label %316 unwind label %357

316:                                              ; preds = %311
  %317 = icmp eq i32 %315, -1
  br i1 %317, label %318, label %319

318:                                              ; preds = %316
  br i1 %302, label %409, label %322

319:                                              ; preds = %305, %316
  br i1 %302, label %322, label %409

320:                                              ; preds = %300
  %321 = xor i1 %140, %302
  br i1 %321, label %409, label %322

322:                                              ; preds = %318, %319, %320
  %323 = phi ptr [ %282, %319 ], [ %282, %320 ], [ null, %318 ]
  %324 = icmp eq i64 %285, %283
  br i1 %324, label %327, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %0, align 8, !tbaa !18
  br label %367

327:                                              ; preds = %322
  %328 = add i64 %283, 1
  %329 = icmp ugt i64 %328, 9223372036854775806
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
          to label %331 unwind label %365

331:                                              ; preds = %330
  unreachable

332:                                              ; preds = %327
  %333 = icmp eq i64 %283, -1
  br i1 %333, label %339, label %334

334:                                              ; preds = %332
  %335 = shl nuw i64 %283, 1
  %336 = icmp ult i64 %328, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %334
  %338 = tail call i64 @llvm.umin.i64(i64 %335, i64 9223372036854775806)
  br label %339

339:                                              ; preds = %337, %334, %332
  %340 = phi i64 [ %338, %337 ], [ %328, %334 ], [ 0, %332 ]
  %341 = add nuw nsw i64 %340, 1
  %342 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %341) #25
          to label %343 unwind label %361

343:                                              ; preds = %339
  %344 = load ptr, ptr %0, align 8, !tbaa !18
  switch i64 %283, label %347 [
    i64 1, label %345
    i64 0, label %348
  ]

345:                                              ; preds = %343
  %346 = load i8, ptr %344, align 1, !tbaa !17
  store i8 %346, ptr %342, align 1, !tbaa !17
  br label %348

347:                                              ; preds = %343
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %342, ptr align 1 %344, i64 %283, i1 false)
  br label %348

348:                                              ; preds = %343, %345, %347
  %349 = icmp eq ptr %344, %7
  br i1 %349, label %350, label %353

350:                                              ; preds = %348
  %351 = load i64, ptr %141, align 8, !tbaa !14
  %352 = icmp ult i64 %351, 16
  tail call void @llvm.assume(i1 %352)
  br label %356

353:                                              ; preds = %348
  %354 = load i64, ptr %7, align 8, !tbaa !17
  %355 = add i64 %354, 1
  tail call void @_ZdlPvm(ptr noundef %344, i64 noundef %355) #26
  br label %356

356:                                              ; preds = %353, %350
  store ptr %342, ptr %0, align 8, !tbaa !18
  store i64 %340, ptr %7, align 8, !tbaa !17
  br label %367

357:                                              ; preds = %291, %311, %399
  %358 = landingpad { ptr, i32 }
          cleanup
  br label %413

359:                                              ; preds = %151, %176, %236
  %360 = landingpad { ptr, i32 }
          cleanup
  br label %413

361:                                              ; preds = %339
  %362 = landingpad { ptr, i32 }
          cleanup
  br label %413

363:                                              ; preds = %192
  %364 = landingpad { ptr, i32 }
          cleanup
  br label %413

365:                                              ; preds = %330
  %366 = landingpad { ptr, i32 }
          cleanup
  br label %413

367:                                              ; preds = %325, %356
  %368 = phi ptr [ %342, %356 ], [ %326, %325 ]
  %369 = phi i64 [ %340, %356 ], [ %283, %325 ]
  %370 = icmp eq ptr %301, null
  br i1 %370, label %388, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %373 = load ptr, ptr %372, align 8, !tbaa !263
  %374 = getelementptr inbounds nuw i8, ptr %301, i64 24
  %375 = load ptr, ptr %374, align 8, !tbaa !265
  %376 = icmp ult ptr %373, %375
  br i1 %376, label %377, label %379, !prof !261

377:                                              ; preds = %371
  %378 = load i8, ptr %373, align 1, !tbaa !17
  br label %388

379:                                              ; preds = %371
  %380 = load ptr, ptr %301, align 8, !tbaa !25
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 72
  %382 = load ptr, ptr %381, align 8
  %383 = invoke noundef i32 %382(ptr noundef nonnull align 8 dereferenceable(64) %301)
          to label %384 unwind label %405

384:                                              ; preds = %379
  %385 = icmp eq i32 %383, -1
  %386 = select i1 %385, ptr null, ptr %301
  %387 = trunc i32 %383 to i8
  br label %388

388:                                              ; preds = %384, %377, %367
  %389 = phi ptr [ %301, %377 ], [ null, %367 ], [ %386, %384 ]
  %390 = phi i8 [ %378, %377 ], [ -1, %367 ], [ %387, %384 ]
  %391 = getelementptr inbounds nuw i8, ptr %368, i64 %285
  store i8 %390, ptr %391, align 1, !tbaa !17
  %392 = getelementptr inbounds nuw i8, ptr %389, i64 16
  %393 = load ptr, ptr %392, align 8, !tbaa !263
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 24
  %395 = load ptr, ptr %394, align 8, !tbaa !265
  %396 = icmp ult ptr %393, %395
  br i1 %396, label %397, label %399, !prof !261

397:                                              ; preds = %388
  %398 = getelementptr inbounds nuw i8, ptr %393, i64 1
  store ptr %398, ptr %392, align 8, !tbaa !263
  br label %404

399:                                              ; preds = %388
  %400 = load ptr, ptr %389, align 8, !tbaa !25
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 80
  %402 = load ptr, ptr %401, align 8
  %403 = invoke noundef i32 %402(ptr noundef nonnull align 8 dereferenceable(64) %389)
          to label %404 unwind label %357

404:                                              ; preds = %399, %397
  br label %280, !llvm.loop !268

405:                                              ; preds = %379
  %406 = landingpad { ptr, i32 }
          cleanup
  br label %413

407:                                              ; preds = %215
  %408 = landingpad { ptr, i32 }
          cleanup
  br label %413

409:                                              ; preds = %320, %319, %318, %185, %183, %167
  %410 = phi i64 [ %139, %167 ], [ %139, %183 ], [ %139, %185 ], [ %285, %318 ], [ %285, %319 ], [ %285, %320 ]
  store i64 %410, ptr %141, align 8, !tbaa !14
  %411 = load ptr, ptr %0, align 8, !tbaa !18
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 %410
  store i8 0, ptr %412, align 1, !tbaa !17
  ret void

413:                                              ; preds = %405, %407, %361, %363, %357, %359, %365
  %414 = phi { ptr, i32 } [ %366, %365 ], [ %358, %357 ], [ %360, %359 ], [ %362, %361 ], [ %364, %363 ], [ %406, %405 ], [ %408, %407 ]
  %415 = load ptr, ptr %0, align 8, !tbaa !18
  %416 = icmp eq ptr %415, %7
  br i1 %416, label %417, label %420

417:                                              ; preds = %413
  %418 = load i64, ptr %141, align 8, !tbaa !14
  %419 = icmp ult i64 %418, 16
  tail call void @llvm.assume(i1 %419)
  br label %423

420:                                              ; preds = %413
  %421 = load i64, ptr %7, align 8, !tbaa !17
  %422 = add i64 %421, 1
  tail call void @_ZdlPvm(ptr noundef %415, i64 noundef %422) #26
  br label %423

423:                                              ; preds = %417, %420
  resume { ptr, i32 } %414
}

declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem11resize_fileERKNS_7__cxx114pathEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #15

declare noundef i64 @_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare i64 @_ZNSt10filesystem15last_write_timeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #26
  br label %13

13:                                               ; preds = %6, %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %25

22:                                               ; preds = %13
  %23 = load i64, ptr %16, align 8, !tbaa !17
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %24) #26
  br label %25

25:                                               ; preds = %18, %22
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = icmp ult i64 %32, 16
  tail call void @llvm.assume(i1 %33)
  br label %37

34:                                               ; preds = %25
  %35 = load i64, ptr %28, align 8, !tbaa !17
  %36 = add i64 %35, 1
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %36) #26
  br label %37

37:                                               ; preds = %30, %34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #26
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %25

22:                                               ; preds = %13
  %23 = load i64, ptr %16, align 8, !tbaa !17
  %24 = add i64 %23, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %24) #26
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %32 = load i64, ptr %31, align 8, !tbaa !14
  %33 = icmp ult i64 %32, 16
  tail call void @llvm.assume(i1 %33)
  br label %37

34:                                               ; preds = %25
  %35 = load i64, ptr %28, align 8, !tbaa !17
  %36 = add i64 %35, 1
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %36) #26
  br label %37

37:                                               ; preds = %30, %34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringExEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = lshr i64 %2, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %14

14:                                               ; preds = %10, %4
  %15 = load i64, ptr %8, align 8
  %16 = select i1 %9, i64 15, i64 %15
  %17 = icmp samesign ugt i64 %16, 14
  tail call void @llvm.assume(i1 %17)
  %18 = icmp ult i64 %16, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ugt i64 %1, %16
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = icmp ugt i64 %1, 9223372036854775806
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

23:                                               ; preds = %20
  %24 = shl nuw i64 %16, 1
  %25 = icmp ult i64 %1, %24
  %26 = tail call i64 @llvm.umin.i64(i64 %24, i64 9223372036854775806)
  %27 = select i1 %25, i64 %26, i64 %1
  %28 = add nuw nsw i64 %27, 1
  %29 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #25
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !14
  %32 = icmp ult i64 %31, 9223372036854775807
  tail call void @llvm.assume(i1 %32)
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i8, ptr %7, align 1, !tbaa !17
  store i8 %35, ptr %29, align 1, !tbaa !17
  br label %38

36:                                               ; preds = %23
  %37 = add nuw nsw i64 %31, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 %37, i1 false)
  br label %38

38:                                               ; preds = %36, %34
  br i1 %9, label %39, label %41

39:                                               ; preds = %38
  %40 = icmp samesign ult i64 %31, 16
  tail call void @llvm.assume(i1 %40)
  br label %43

41:                                               ; preds = %38
  %42 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %42) #26
  br label %43

43:                                               ; preds = %41, %39
  store ptr %29, ptr %0, align 8, !tbaa !18
  store i64 %27, ptr %8, align 8, !tbaa !17
  br label %44

44:                                               ; preds = %14, %43
  %45 = phi ptr [ %7, %14 ], [ %29, %43 ]
  store i8 45, ptr %45, align 1, !tbaa !17
  %46 = and i64 %2, 255
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %46
  %48 = icmp ugt i64 %3, 99
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = add i32 %6, -1
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ %56, %51 ], [ %3, %49 ]
  %53 = phi i32 [ %67, %51 ], [ %50, %49 ]
  %54 = urem i64 %52, 100
  %55 = shl nuw nsw i64 %54, 1
  %56 = udiv i64 %52, 100
  %57 = or disjoint i64 %55, 1
  %58 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !17
  %60 = zext i32 %53 to i64
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 %60
  store i8 %59, ptr %61, align 1, !tbaa !17
  %62 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %55
  %63 = load i8, ptr %62, align 2, !tbaa !17
  %64 = add i32 %53, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 %65
  store i8 %63, ptr %66, align 1, !tbaa !17
  %67 = add i32 %53, -2
  %68 = icmp ugt i64 %52, 9999
  br i1 %68, label %51, label %69, !llvm.loop !269

69:                                               ; preds = %51, %44
  %70 = phi i64 [ %3, %44 ], [ %56, %51 ]
  %71 = icmp samesign ugt i64 %70, 9
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = shl nuw nsw i64 %70, 1
  %74 = or disjoint i64 %73, 1
  %75 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !17
  %77 = getelementptr inbounds nuw i8, ptr %47, i64 1
  store i8 %76, ptr %77, align 1, !tbaa !17
  %78 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %73
  %79 = load i8, ptr %78, align 2, !tbaa !17
  br label %83

80:                                               ; preds = %69
  %81 = trunc nuw nsw i64 %70 to i8
  %82 = or disjoint i8 %81, 48
  br label %83

83:                                               ; preds = %72, %80
  %84 = phi i8 [ %82, %80 ], [ %79, %72 ]
  store i8 %84, ptr %47, align 1, !tbaa !17
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %85, align 8, !tbaa !14
  %86 = load ptr, ptr %0, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 %1
  store i8 0, ptr %87, align 1, !tbaa !17
  ret void
}

declare noundef zeroext i1 @_ZNSt10filesystem16create_directoryERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i64, ptr %1, align 8, !tbaa !240
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !241
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !8
  %8 = icmp eq ptr %6, null
  %9 = icmp ne i64 %4, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

12:                                               ; preds = %3
  %13 = icmp ugt i64 %4, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = icmp ugt i64 %4, 9223372036854775806
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

17:                                               ; preds = %14
  %18 = add nuw nsw i64 %4, 1
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #25
  store ptr %19, ptr %0, align 8, !tbaa !18
  store i64 %4, ptr %7, align 8, !tbaa !17
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %7, %12 ]
  switch i64 %4, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, ptr %6, align 1, !tbaa !17
  store i8 %23, ptr %21, align 1, !tbaa !17
  br label %25

24:                                               ; preds = %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %6, i64 %4, i1 false)
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %26, align 8, !tbaa !14
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %4
  store i8 0, ptr %27, align 1, !tbaa !17
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
  %35 = load ptr, ptr %28, align 8, !tbaa !33
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %35) #17
  br label %38

38:                                               ; preds = %33, %37
  store ptr null, ptr %28, align 8, !tbaa !33
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi { ptr, i32 } [ %34, %38 ], [ %32, %31 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !18
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, ptr %26, align 8, !tbaa !14
  %45 = icmp ult i64 %44, 16
  tail call void @llvm.assume(i1 %45)
  br label %49

46:                                               ; preds = %39
  %47 = load i64, ptr %7, align 8, !tbaa !17
  %48 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %41, i64 noundef %48) #26
  br label %49

49:                                               ; preds = %46, %43
  resume { ptr, i32 } %40
}

declare noundef zeroext i1 @_ZNSt10filesystem6removeERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare noundef i64 @_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem6renameERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare noundef zeroext i1 @_ZNSt10filesystem9copy_fileERKNS_7__cxx114pathES3_NS_12copy_optionsE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !104
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
  %12 = load ptr, ptr %3, align 8, !tbaa !25
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %15 = load ptr, ptr %3, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %29

18:                                               ; preds = %5
  %19 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %9, -1
  store i32 %22, ptr %6, align 4, !tbaa !108
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %0, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %8, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !17
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %115 unwind label %10

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #27
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = ptrtoint ptr %15 to i64
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 3
  switch i8 %18, label %108 [
    i8 3, label %19
    i8 0, label %43
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %20, ptr %0, align 8, !tbaa !8
  %21 = load ptr, ptr %1, align 8, !tbaa !18
  %22 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = icmp samesign ugt i64 %4, 15
  %24 = add nuw nsw i64 %4, 1
  br i1 %23, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #25
  store ptr %26, ptr %0, align 8, !tbaa !18
  store i64 %4, ptr %20, align 8, !tbaa !17
  br label %27

27:                                               ; preds = %19, %25
  %28 = phi ptr [ %26, %25 ], [ %20, %19 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 %24, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %29, align 8, !tbaa !14
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %115 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %0, align 8, !tbaa !18
  %34 = icmp eq ptr %33, %20
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, ptr %29, align 8, !tbaa !14
  %37 = icmp ult i64 %36, 16
  tail call void @llvm.assume(i1 %37)
  br label %41

38:                                               ; preds = %31
  %39 = load i64, ptr %20, align 8, !tbaa !17
  %40 = add i64 %39, 1
  tail call void @_ZdlPvm(ptr noundef %33, i64 noundef %40) #26
  br label %41

41:                                               ; preds = %102, %105, %35, %38
  %42 = phi { ptr, i32 } [ %32, %38 ], [ %32, %35 ], [ %99, %105 ], [ %99, %102 ]
  resume { ptr, i32 } %42

43:                                               ; preds = %13
  %44 = icmp ult i64 %4, 9223372036854775807
  tail call void @llvm.assume(i1 %44)
  %45 = load ptr, ptr %1, align 8, !tbaa !18
  %46 = getelementptr i8, ptr %45, i64 %4
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load i8, ptr %47, align 1, !tbaa !17
  %49 = icmp eq i8 %48, 47
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %51, ptr %0, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %52, align 8, !tbaa !14
  store i8 0, ptr %51, align 8, !tbaa !17
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %115 unwind label %54

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #27
  unreachable

57:                                               ; preds = %43
  %58 = and i64 %16, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = tail call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #17, !noalias !270
  %62 = load ptr, ptr %14, align 8, !tbaa !33
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
  %72 = load ptr, ptr %71, align 8, !tbaa !33
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 3
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %108

76:                                               ; preds = %69
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %77, ptr %0, align 8, !tbaa !8
  %78 = load ptr, ptr %70, align 8, !tbaa !18
  %79 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %80 = load i64, ptr %79, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 9223372036854775807
  tail call void @llvm.assume(i1 %81)
  %82 = icmp samesign ugt i64 %80, 15
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = add nuw nsw i64 %80, 1
  %85 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %84) #25
  store ptr %85, ptr %0, align 8, !tbaa !18
  store i64 %80, ptr %77, align 8, !tbaa !17
  br label %92

86:                                               ; preds = %76
  %87 = icmp eq i64 %80, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = add nuw nsw i64 %80, 1
  br label %92

90:                                               ; preds = %86
  %91 = load i8, ptr %78, align 1, !tbaa !17
  store i8 %91, ptr %77, align 8, !tbaa !17
  br label %95

92:                                               ; preds = %88, %83
  %93 = phi i64 [ %89, %88 ], [ %84, %83 ]
  %94 = phi ptr [ %77, %88 ], [ %85, %83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %94, ptr noundef nonnull align 1 dereferenceable(1) %78, i64 %93, i1 false)
  br label %95

95:                                               ; preds = %92, %90
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %80, ptr %96, align 8, !tbaa !14
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %115 unwind label %98

98:                                               ; preds = %95
  %99 = landingpad { ptr, i32 }
          cleanup
  %100 = load ptr, ptr %0, align 8, !tbaa !18
  %101 = icmp eq ptr %100, %77
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, ptr %96, align 8, !tbaa !14
  %104 = icmp ult i64 %103, 16
  tail call void @llvm.assume(i1 %104)
  br label %41

105:                                              ; preds = %98
  %106 = load i64, ptr %77, align 8, !tbaa !17
  %107 = add i64 %106, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %107) #26
  br label %41

108:                                              ; preds = %69, %13
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %109, ptr %0, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %110, align 8, !tbaa !14
  store i8 0, ptr %109, align 8, !tbaa !17
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %111)
          to label %115 unwind label %112

112:                                              ; preds = %108
  %113 = landingpad { ptr, i32 }
          catch ptr null
  %114 = extractvalue { ptr, i32 } %113, 0
  tail call void @__clang_call_terminate(ptr %114) #27
  unreachable

115:                                              ; preds = %95, %108, %50, %27, %6
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %23, label %6

6:                                                ; preds = %1, %18
  %7 = phi ptr [ %19, %18 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %18

15:                                               ; preds = %6
  %16 = load i64, ptr %9, align 8, !tbaa !17
  %17 = add i64 %16, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %17) #26
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %21, label %6, !llvm.loop !138

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !137
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ %2, %1 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  tail call void @_ZdlPvm(ptr noundef nonnull %24, i64 noundef %31) #26
  br label %32

32:                                               ; preds = %23, %26
  ret void
}

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !25
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %5, align 4, !tbaa !108
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %5, align 4, !tbaa !108
  br label %13

11:                                               ; preds = %1
  %12 = atomicrmw volatile add ptr %5, i32 -1 acq_rel, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !25
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %20

20:                                               ; preds = %13, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %17 = shl nuw nsw i64 %16, 5
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #25
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !8
  %21 = load ptr, ptr %1, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !18
  %30 = load i64, ptr %22, align 8, !tbaa !17
  store i64 %30, ptr %20, align 8, !tbaa !17
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !14
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !14
  store ptr %22, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %35, align 8, !tbaa !14
  store i8 0, ptr %22, align 8, !tbaa !17
  %38 = icmp eq ptr %5, %4
  br i1 %38, label %63, label %39

39:                                               ; preds = %33, %55
  %40 = phi ptr [ %61, %55 ], [ %18, %33 ]
  %41 = phi ptr [ %60, %55 ], [ %5, %33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %42, ptr %40, align 8, !tbaa !8, !alias.scope !273, !noalias !276
  %43 = load ptr, ptr %41, align 8, !tbaa !18, !alias.scope !276, !noalias !273
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false), !alias.scope !278
  br label %55

51:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !18, !alias.scope !273, !noalias !276
  %52 = load i64, ptr %44, align 8, !tbaa !17, !alias.scope !276, !noalias !273
  store i64 %52, ptr %42, align 8, !tbaa !17, !alias.scope !273, !noalias !276
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %48, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %56, ptr %59, align 8, !tbaa !14, !alias.scope !273, !noalias !276
  store ptr %44, ptr %41, align 8, !tbaa !18, !alias.scope !276, !noalias !273
  store i64 0, ptr %57, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  store i8 0, ptr %44, align 1, !tbaa !17, !alias.scope !276, !noalias !273
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
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %70) #26
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

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %18, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
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
  %35 = load i64, ptr %14, align 8, !tbaa !14
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  br label %37

37:                                               ; preds = %54, %32
  %38 = phi ptr [ %33, %32 ], [ %57, %54 ]
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %40 = load i64, ptr %39, align 8, !tbaa !14
  %41 = icmp ult i64 %40, 9223372036854775807
  tail call void @llvm.assume(i1 %41)
  %42 = tail call i64 @llvm.umin.i64(i64 %35, i64 %40)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %0, align 8, !tbaa !18
  %46 = load ptr, ptr %38, align 8, !tbaa !18
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
  %64 = load i64, ptr %63, align 8, !tbaa !14
  %65 = icmp ult i64 %64, 9223372036854775807
  tail call void @llvm.assume(i1 %65)
  %66 = tail call i64 @llvm.umin.i64(i64 %64, i64 %35)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr %62, align 8, !tbaa !18
  %70 = load ptr, ptr %0, align 8, !tbaa !18
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
  %85 = load ptr, ptr %38, align 8, !tbaa !18
  %86 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = icmp samesign ult i64 %40, 16
  tail call void @llvm.assume(i1 %89)
  %90 = load ptr, ptr %62, align 8, !tbaa !18
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %99 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %91, i64 %99, i1 false)
  %100 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %100, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 %99, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %127

101:                                              ; preds = %93
  br i1 %96, label %127, label %102

102:                                              ; preds = %101
  %103 = add nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %91, i64 %103, i1 false)
  %104 = load i64, ptr %82, align 8, !tbaa !14
  %105 = icmp ult i64 %104, 9223372036854775807
  tail call void @llvm.assume(i1 %105)
  store i64 %104, ptr %59, align 8, !tbaa !14
  store i64 0, ptr %82, align 8, !tbaa !14
  %106 = load ptr, ptr %62, align 8, !tbaa !18
  store i8 0, ptr %106, align 1, !tbaa !17
  br label %107

107:                                              ; preds = %102, %108, %127
  br label %32, !llvm.loop !283

108:                                              ; preds = %97
  %109 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %109, i1 false)
  %110 = load i64, ptr %59, align 8, !tbaa !14
  %111 = icmp ult i64 %110, 9223372036854775807
  tail call void @llvm.assume(i1 %111)
  store i64 %110, ptr %82, align 8, !tbaa !14
  store i64 0, ptr %59, align 8, !tbaa !14
  %112 = load ptr, ptr %38, align 8, !tbaa !18
  store i8 0, ptr %112, align 1, !tbaa !17
  br label %107

113:                                              ; preds = %88
  %114 = load i64, ptr %91, align 8, !tbaa !17
  %115 = add nuw nsw i64 %40, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %115, i1 false)
  store ptr %90, ptr %38, align 8, !tbaa !18
  store ptr %91, ptr %62, align 8, !tbaa !18
  store i64 %114, ptr %86, align 8, !tbaa !17
  br label %127

116:                                              ; preds = %84
  %117 = load i64, ptr %86, align 8, !tbaa !17
  %118 = load ptr, ptr %62, align 8, !tbaa !18
  %119 = getelementptr inbounds i8, ptr %61, i64 -16
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = icmp samesign ult i64 %64, 16
  tail call void @llvm.assume(i1 %122)
  %123 = add nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %86, ptr noundef nonnull align 8 dereferenceable(1) %119, i64 %123, i1 false)
  store ptr %85, ptr %62, align 8, !tbaa !18
  store ptr %86, ptr %38, align 8, !tbaa !18
  br label %126

124:                                              ; preds = %116
  store ptr %118, ptr %38, align 8, !tbaa !18
  store ptr %85, ptr %62, align 8, !tbaa !18
  %125 = load i64, ptr %119, align 8, !tbaa !17
  store i64 %125, ptr %86, align 8, !tbaa !17
  br label %126

126:                                              ; preds = %124, %121
  store i64 %117, ptr %119, align 8, !tbaa !17
  br label %127

127:                                              ; preds = %126, %113, %101, %98
  %128 = load i64, ptr %59, align 8, !tbaa !14
  %129 = icmp ult i64 %128, 9223372036854775807
  tail call void @llvm.assume(i1 %129)
  %130 = load i64, ptr %82, align 8, !tbaa !14
  %131 = icmp ult i64 %130, 9223372036854775807
  tail call void @llvm.assume(i1 %131)
  store i64 %130, ptr %59, align 8, !tbaa !14
  store i64 %128, ptr %82, align 8, !tbaa !14
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %86, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -2
  %13 = lshr i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %18

18:                                               ; preds = %65, %11
  %19 = phi i64 [ %13, %11 ], [ %56, %65 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !14
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %18
  store ptr %21, ptr %4, align 8, !tbaa !18
  %30 = load i64, ptr %22, align 8, !tbaa !17
  store i64 %30, ptr %14, align 8, !tbaa !17
  %31 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !14
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %14, %24 ], [ %21, %29 ]
  %35 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %37 = icmp ult i64 %35, 9223372036854775807
  call void @llvm.assume(i1 %37)
  store ptr %22, ptr %20, align 8, !tbaa !18
  store i64 0, ptr %36, align 8, !tbaa !14
  store i8 0, ptr %22, align 1, !tbaa !17
  store ptr %16, ptr %5, align 8, !tbaa !8
  %38 = icmp eq ptr %34, %14
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = icmp samesign ult i64 %35, 16
  call void @llvm.assume(i1 %40)
  %41 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %41, i1 false)
  br label %44

42:                                               ; preds = %33
  store ptr %34, ptr %5, align 8, !tbaa !18
  %43 = load i64, ptr %14, align 8, !tbaa !17
  store i64 %43, ptr %16, align 8, !tbaa !17
  br label %44

44:                                               ; preds = %39, %42
  store i64 %35, ptr %17, align 8, !tbaa !14
  store ptr %14, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %15, align 8, !tbaa !14
  store i8 0, ptr %14, align 8, !tbaa !17
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef %19, i64 noundef %9, ptr noundef nonnull %5)
          to label %45 unwind label %66

45:                                               ; preds = %44
  %46 = load ptr, ptr %5, align 8, !tbaa !18
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, ptr %17, align 8, !tbaa !14
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  br label %54

51:                                               ; preds = %45
  %52 = load i64, ptr %16, align 8, !tbaa !17
  %53 = add i64 %52, 1
  call void @_ZdlPvm(ptr noundef %46, i64 noundef %53) #26
  br label %54

54:                                               ; preds = %48, %51
  %55 = icmp eq i64 %19, 0
  %56 = add nsw i64 %19, -1
  %57 = load ptr, ptr %4, align 8, !tbaa !18
  %58 = icmp eq ptr %57, %14
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, ptr %15, align 8, !tbaa !14
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  br label %65

62:                                               ; preds = %54
  %63 = load i64, ptr %14, align 8, !tbaa !17
  %64 = add i64 %63, 1
  call void @_ZdlPvm(ptr noundef %57, i64 noundef %64) #26
  br label %65

65:                                               ; preds = %59, %62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br i1 %55, label %86, label %18, !llvm.loop !285

66:                                               ; preds = %44
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %5, align 8, !tbaa !18
  %69 = icmp eq ptr %68, %16
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, ptr %17, align 8, !tbaa !14
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, ptr %16, align 8, !tbaa !17
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %75) #26
  br label %76

76:                                               ; preds = %70, %73
  %77 = load ptr, ptr %4, align 8, !tbaa !18
  %78 = icmp eq ptr %77, %14
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, ptr %15, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %85

82:                                               ; preds = %76
  %83 = load i64, ptr %14, align 8, !tbaa !17
  %84 = add i64 %83, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %84) #26
  br label %85

85:                                               ; preds = %79, %82
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  resume { ptr, i32 } %67

86:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !8
  %8 = load ptr, ptr %2, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !14
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %20

16:                                               ; preds = %4
  store ptr %8, ptr %5, align 8, !tbaa !18
  %17 = load i64, ptr %9, align 8, !tbaa !17
  store i64 %17, ptr %7, align 8, !tbaa !17
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i64 [ %19, %16 ], [ %13, %11 ]
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %23)
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %21, ptr %24, align 8, !tbaa !14
  store ptr %9, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %22, align 8, !tbaa !14
  store i8 0, ptr %9, align 1, !tbaa !17
  %25 = load ptr, ptr %0, align 8, !tbaa !18
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !14
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
  %35 = load i8, ptr %25, align 1, !tbaa !17
  store i8 %35, ptr %9, align 1, !tbaa !17
  br label %37

36:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %25, i64 %30, i1 false)
  br label %37

37:                                               ; preds = %36, %34, %33
  %38 = load i64, ptr %29, align 8, !tbaa !14
  %39 = icmp ult i64 %38, 9223372036854775807
  call void @llvm.assume(i1 %39)
  store i64 %38, ptr %22, align 8, !tbaa !14
  %40 = getelementptr inbounds nuw i8, ptr %9, i64 %38
  store i8 0, ptr %40, align 1, !tbaa !17
  %41 = load ptr, ptr %0, align 8, !tbaa !18
  br label %47

42:                                               ; preds = %20
  store ptr %25, ptr %2, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = icmp ult i64 %44, 9223372036854775807
  call void @llvm.assume(i1 %45)
  store i64 %44, ptr %22, align 8, !tbaa !14
  %46 = load i64, ptr %26, align 8, !tbaa !17
  store i64 %46, ptr %9, align 8, !tbaa !17
  store ptr %26, ptr %0, align 8, !tbaa !18
  br label %47

47:                                               ; preds = %28, %37, %42
  %48 = phi ptr [ %26, %42 ], [ %25, %28 ], [ %41, %37 ]
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %49, align 8, !tbaa !14
  store i8 0, ptr %48, align 1, !tbaa !17
  %50 = ptrtoint ptr %1 to i64
  %51 = ptrtoint ptr %0 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 5
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %54, ptr %6, align 8, !tbaa !8
  %55 = load ptr, ptr %5, align 8, !tbaa !18
  %56 = icmp eq ptr %55, %7
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i64, ptr %24, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %54, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %60, i1 false)
  br label %64

61:                                               ; preds = %47
  store ptr %55, ptr %6, align 8, !tbaa !18
  %62 = load i64, ptr %7, align 8, !tbaa !17
  store i64 %62, ptr %54, align 8, !tbaa !17
  %63 = load i64, ptr %24, align 8, !tbaa !14
  br label %64

64:                                               ; preds = %57, %61
  %65 = phi i64 [ %58, %57 ], [ %63, %61 ]
  %66 = icmp ult i64 %65, 9223372036854775807
  call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !14
  store ptr %7, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %24, align 8, !tbaa !14
  store i8 0, ptr %7, align 8, !tbaa !17
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %53, ptr noundef nonnull %6)
          to label %68 unwind label %87

68:                                               ; preds = %64
  %69 = load ptr, ptr %6, align 8, !tbaa !18
  %70 = icmp eq ptr %69, %54
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, ptr %67, align 8, !tbaa !14
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %77

74:                                               ; preds = %68
  %75 = load i64, ptr %54, align 8, !tbaa !17
  %76 = add i64 %75, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %76) #26
  br label %77

77:                                               ; preds = %71, %74
  %78 = load ptr, ptr %5, align 8, !tbaa !18
  %79 = icmp eq ptr %78, %7
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, ptr %24, align 8, !tbaa !14
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %86

83:                                               ; preds = %77
  %84 = load i64, ptr %7, align 8, !tbaa !17
  %85 = add i64 %84, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %85) #26
  br label %86

86:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret void

87:                                               ; preds = %64
  %88 = landingpad { ptr, i32 }
          cleanup
  %89 = load ptr, ptr %6, align 8, !tbaa !18
  %90 = icmp eq ptr %89, %54
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, ptr %67, align 8, !tbaa !14
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %97

94:                                               ; preds = %87
  %95 = load i64, ptr %54, align 8, !tbaa !17
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %96) #26
  br label %97

97:                                               ; preds = %91, %94
  %98 = load ptr, ptr %5, align 8, !tbaa !18
  %99 = icmp eq ptr %98, %7
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, ptr %24, align 8, !tbaa !14
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  br label %106

103:                                              ; preds = %97
  %104 = load i64, ptr %7, align 8, !tbaa !17
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %105) #26
  br label %106

106:                                              ; preds = %100, %103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %88
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp slt i64 %1, %8
  br i1 %9, label %10, label %91

10:                                               ; preds = %4, %87
  %11 = phi i64 [ %38, %87 ], [ %1, %4 ]
  %12 = shl i64 %11, 1
  %13 = add i64 %12, 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %13
  %15 = or disjoint i64 %12, 1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !14
  %19 = icmp ult i64 %18, 9223372036854775807
  tail call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = icmp ult i64 %21, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = tail call i64 @llvm.umin.i64(i64 %21, i64 %18)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %16, align 8, !tbaa !18
  %27 = load ptr, ptr %14, align 8, !tbaa !18
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
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !14
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  %48 = load ptr, ptr %39, align 8, !tbaa !18
  %49 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %55, label %74

51:                                               ; preds = %35
  %52 = load ptr, ptr %39, align 8, !tbaa !18
  %53 = getelementptr inbounds nuw i8, ptr %39, i64 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51, %44
  %56 = phi ptr [ %52, %51 ], [ %48, %44 ]
  %57 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = icmp eq i64 %38, %11
  br i1 %60, label %87, label %61, !prof !119

61:                                               ; preds = %55
  switch i64 %58, label %64 [
    i64 0, label %65
    i64 1, label %62
  ]

62:                                               ; preds = %61
  %63 = load i8, ptr %56, align 1, !tbaa !17
  store i8 %63, ptr %41, align 1, !tbaa !17
  br label %65

64:                                               ; preds = %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %56, i64 %58, i1 false)
  br label %65

65:                                               ; preds = %64, %62, %61
  %66 = load i64, ptr %57, align 8, !tbaa !14
  %67 = icmp ult i64 %66, 9223372036854775807
  tail call void @llvm.assume(i1 %67)
  %68 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %66, ptr %68, align 8, !tbaa !14
  %69 = load ptr, ptr %40, align 8, !tbaa !18
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %66
  store i8 0, ptr %70, align 1, !tbaa !17
  %71 = load ptr, ptr %39, align 8, !tbaa !18
  br label %87

72:                                               ; preds = %51
  %73 = load i64, ptr %42, align 8, !tbaa !17
  br label %74

74:                                               ; preds = %72, %44
  %75 = phi ptr [ %53, %72 ], [ %49, %44 ]
  %76 = phi ptr [ %52, %72 ], [ %48, %44 ]
  %77 = phi ptr [ %41, %72 ], [ null, %44 ]
  %78 = phi i64 [ %73, %72 ], [ undef, %44 ]
  store ptr %76, ptr %40, align 8, !tbaa !18
  %79 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %80 = load i64, ptr %79, align 8, !tbaa !14
  %81 = icmp ult i64 %80, 9223372036854775807
  tail call void @llvm.assume(i1 %81)
  %82 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %80, ptr %82, align 8, !tbaa !14
  %83 = load i64, ptr %75, align 8, !tbaa !17
  store i64 %83, ptr %42, align 8, !tbaa !17
  %84 = icmp eq ptr %77, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  store ptr %77, ptr %39, align 8, !tbaa !18
  store i64 %78, ptr %75, align 8, !tbaa !17
  br label %87

86:                                               ; preds = %74
  store ptr %75, ptr %39, align 8, !tbaa !18
  br label %87

87:                                               ; preds = %55, %65, %85, %86
  %88 = phi ptr [ %77, %85 ], [ %75, %86 ], [ %56, %55 ], [ %71, %65 ]
  %89 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %89, align 8, !tbaa !14
  store i8 0, ptr %88, align 1, !tbaa !17
  %90 = icmp slt i64 %38, %8
  br i1 %90, label %10, label %91, !llvm.loop !286

91:                                               ; preds = %87, %4
  %92 = phi i64 [ %1, %4 ], [ %38, %87 ]
  %93 = and i64 %2, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %153

95:                                               ; preds = %91
  %96 = add nsw i64 %2, -2
  %97 = ashr exact i64 %96, 1
  %98 = icmp eq i64 %92, %97
  br i1 %98, label %99, label %153

99:                                               ; preds = %95
  %100 = shl nsw i64 %92, 1
  %101 = or disjoint i64 %100, 1
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %101
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %92
  %104 = load ptr, ptr %103, align 8, !tbaa !18
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %109 = load i64, ptr %108, align 8, !tbaa !14
  %110 = icmp ult i64 %109, 16
  tail call void @llvm.assume(i1 %110)
  %111 = load ptr, ptr %102, align 8, !tbaa !18
  %112 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %118, label %137

114:                                              ; preds = %99
  %115 = load ptr, ptr %102, align 8, !tbaa !18
  %116 = getelementptr inbounds nuw i8, ptr %102, i64 16
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114, %107
  %119 = phi ptr [ %115, %114 ], [ %111, %107 ]
  %120 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !14
  %122 = icmp ult i64 %121, 16
  tail call void @llvm.assume(i1 %122)
  %123 = icmp eq i64 %101, %92
  br i1 %123, label %150, label %124, !prof !119

124:                                              ; preds = %118
  switch i64 %121, label %127 [
    i64 0, label %128
    i64 1, label %125
  ]

125:                                              ; preds = %124
  %126 = load i8, ptr %119, align 1, !tbaa !17
  store i8 %126, ptr %104, align 1, !tbaa !17
  br label %128

127:                                              ; preds = %124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %119, i64 %121, i1 false)
  br label %128

128:                                              ; preds = %127, %125, %124
  %129 = load i64, ptr %120, align 8, !tbaa !14
  %130 = icmp ult i64 %129, 9223372036854775807
  tail call void @llvm.assume(i1 %130)
  %131 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i64 %129, ptr %131, align 8, !tbaa !14
  %132 = load ptr, ptr %103, align 8, !tbaa !18
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 %129
  store i8 0, ptr %133, align 1, !tbaa !17
  %134 = load ptr, ptr %102, align 8, !tbaa !18
  br label %150

135:                                              ; preds = %114
  %136 = load i64, ptr %105, align 8, !tbaa !17
  br label %137

137:                                              ; preds = %135, %107
  %138 = phi ptr [ %116, %135 ], [ %112, %107 ]
  %139 = phi ptr [ %115, %135 ], [ %111, %107 ]
  %140 = phi ptr [ %104, %135 ], [ null, %107 ]
  %141 = phi i64 [ %136, %135 ], [ undef, %107 ]
  store ptr %139, ptr %103, align 8, !tbaa !18
  %142 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %143 = load i64, ptr %142, align 8, !tbaa !14
  %144 = icmp ult i64 %143, 9223372036854775807
  tail call void @llvm.assume(i1 %144)
  %145 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i64 %143, ptr %145, align 8, !tbaa !14
  %146 = load i64, ptr %138, align 8, !tbaa !17
  store i64 %146, ptr %105, align 8, !tbaa !17
  %147 = icmp eq ptr %140, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %137
  store ptr %140, ptr %102, align 8, !tbaa !18
  store i64 %141, ptr %138, align 8, !tbaa !17
  br label %150

149:                                              ; preds = %137
  store ptr %138, ptr %102, align 8, !tbaa !18
  br label %150

150:                                              ; preds = %118, %128, %148, %149
  %151 = phi ptr [ %140, %148 ], [ %138, %149 ], [ %119, %118 ], [ %134, %128 ]
  %152 = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i64 0, ptr %152, align 8, !tbaa !14
  store i8 0, ptr %151, align 1, !tbaa !17
  br label %153

153:                                              ; preds = %150, %95, %91
  %154 = phi i64 [ %101, %150 ], [ %92, %95 ], [ %92, %91 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  %155 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %155, ptr %6, align 8, !tbaa !8
  %156 = load ptr, ptr %3, align 8, !tbaa !18
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %161 = load i64, ptr %160, align 8, !tbaa !14
  %162 = icmp ult i64 %161, 16
  call void @llvm.assume(i1 %162)
  %163 = add nuw nsw i64 %161, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %155, ptr noundef nonnull align 8 dereferenceable(1) %157, i64 %163, i1 false)
  br label %168

164:                                              ; preds = %153
  store ptr %156, ptr %6, align 8, !tbaa !18
  %165 = load i64, ptr %157, align 8, !tbaa !17
  store i64 %165, ptr %155, align 8, !tbaa !17
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %167 = load i64, ptr %166, align 8, !tbaa !14
  br label %168

168:                                              ; preds = %159, %164
  %169 = phi i64 [ %161, %159 ], [ %167, %164 ]
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %171 = icmp ult i64 %169, 9223372036854775807
  call void @llvm.assume(i1 %171)
  %172 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %169, ptr %172, align 8, !tbaa !14
  store ptr %157, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %170, align 8, !tbaa !14
  store i8 0, ptr %157, align 1, !tbaa !17
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %154, i64 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %173 unwind label %183

173:                                              ; preds = %168
  %174 = load ptr, ptr %6, align 8, !tbaa !18
  %175 = icmp eq ptr %174, %155
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i64, ptr %172, align 8, !tbaa !14
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %182

179:                                              ; preds = %173
  %180 = load i64, ptr %155, align 8, !tbaa !17
  %181 = add i64 %180, 1
  call void @_ZdlPvm(ptr noundef %174, i64 noundef %181) #26
  br label %182

182:                                              ; preds = %176, %179
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  ret void

183:                                              ; preds = %168
  %184 = landingpad { ptr, i32 }
          cleanup
  %185 = load ptr, ptr %6, align 8, !tbaa !18
  %186 = icmp eq ptr %185, %155
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i64, ptr %172, align 8, !tbaa !14
  %189 = icmp ult i64 %188, 16
  call void @llvm.assume(i1 %189)
  br label %193

190:                                              ; preds = %183
  %191 = load i64, ptr %155, align 8, !tbaa !17
  %192 = add i64 %191, 1
  call void @_ZdlPvm(ptr noundef %185, i64 noundef %192) #26
  br label %193

193:                                              ; preds = %187, %190
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  resume { ptr, i32 } %184
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = icmp sgt i64 %1, %2
  br i1 %6, label %7, label %78

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %7, %75
  %10 = phi i64 [ %1, %7 ], [ %12, %75 ]
  %11 = add nsw i64 %10, -1
  %12 = sdiv i64 %11, 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !14
  %16 = icmp ult i64 %15, 9223372036854775807
  tail call void @llvm.assume(i1 %16)
  %17 = load i64, ptr %8, align 8, !tbaa !14
  %18 = icmp ult i64 %17, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = tail call i64 @llvm.umin.i64(i64 %17, i64 %15)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %3, align 8, !tbaa !18
  %23 = load ptr, ptr %13, align 8, !tbaa !18
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
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %10
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !14
  %42 = icmp ult i64 %41, 16
  tail call void @llvm.assume(i1 %42)
  %43 = load ptr, ptr %13, align 8, !tbaa !18
  %44 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  store ptr %43, ptr %35, align 8, !tbaa !18
  store i64 %15, ptr %40, align 8, !tbaa !14
  %47 = load i64, ptr %44, align 8, !tbaa !17
  store i64 %47, ptr %37, align 8, !tbaa !17
  br label %73

48:                                               ; preds = %34
  %49 = load ptr, ptr %13, align 8, !tbaa !18
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48, %39
  %53 = phi ptr [ %49, %48 ], [ %43, %39 ]
  %54 = icmp samesign ult i64 %15, 16
  tail call void @llvm.assume(i1 %54)
  %55 = icmp eq i64 %12, %10
  br i1 %55, label %75, label %56, !prof !119

56:                                               ; preds = %52
  switch i64 %15, label %59 [
    i64 0, label %60
    i64 1, label %57
  ]

57:                                               ; preds = %56
  %58 = load i8, ptr %53, align 1, !tbaa !17
  store i8 %58, ptr %36, align 1, !tbaa !17
  br label %60

59:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %53, i64 %15, i1 false)
  br label %60

60:                                               ; preds = %59, %57, %56
  %61 = load i64, ptr %14, align 8, !tbaa !14
  %62 = icmp ult i64 %61, 9223372036854775807
  tail call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !14
  %64 = load ptr, ptr %35, align 8, !tbaa !18
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 %61
  store i8 0, ptr %65, align 1, !tbaa !17
  %66 = load ptr, ptr %13, align 8, !tbaa !18
  br label %75

67:                                               ; preds = %48
  %68 = load i64, ptr %37, align 8, !tbaa !17
  store ptr %49, ptr %35, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %15, ptr %69, align 8, !tbaa !14
  %70 = load i64, ptr %50, align 8, !tbaa !17
  store i64 %70, ptr %37, align 8, !tbaa !17
  %71 = icmp eq ptr %36, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store ptr %36, ptr %13, align 8, !tbaa !18
  store i64 %68, ptr %50, align 8, !tbaa !17
  br label %75

73:                                               ; preds = %46, %67
  %74 = phi ptr [ %44, %46 ], [ %50, %67 ]
  store ptr %74, ptr %13, align 8, !tbaa !18
  br label %75

75:                                               ; preds = %52, %60, %72, %73
  %76 = phi ptr [ %36, %72 ], [ %74, %73 ], [ %53, %52 ], [ %66, %60 ]
  store i64 0, ptr %14, align 8, !tbaa !14
  store i8 0, ptr %76, align 1, !tbaa !17
  %77 = icmp sgt i64 %12, %2
  br i1 %77, label %9, label %78, !llvm.loop !287

78:                                               ; preds = %31, %75, %5
  %79 = phi i64 [ %1, %5 ], [ %12, %75 ], [ %10, %31 ]
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !18
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 16
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = getelementptr inbounds nuw i8, ptr %80, i64 8
  %86 = load i64, ptr %85, align 8, !tbaa !14
  %87 = icmp ult i64 %86, 16
  tail call void @llvm.assume(i1 %87)
  %88 = load ptr, ptr %3, align 8, !tbaa !18
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %95, label %114

91:                                               ; preds = %78
  %92 = load ptr, ptr %3, align 8, !tbaa !18
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91, %84
  %96 = phi ptr [ %92, %91 ], [ %88, %84 ]
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %98 = load i64, ptr %97, align 8, !tbaa !14
  %99 = icmp ult i64 %98, 16
  tail call void @llvm.assume(i1 %99)
  %100 = icmp eq ptr %3, %80
  br i1 %100, label %127, label %101, !prof !119

101:                                              ; preds = %95
  switch i64 %98, label %104 [
    i64 0, label %105
    i64 1, label %102
  ]

102:                                              ; preds = %101
  %103 = load i8, ptr %96, align 1, !tbaa !17
  store i8 %103, ptr %81, align 1, !tbaa !17
  br label %105

104:                                              ; preds = %101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %96, i64 %98, i1 false)
  br label %105

105:                                              ; preds = %104, %102, %101
  %106 = load i64, ptr %97, align 8, !tbaa !14
  %107 = icmp ult i64 %106, 9223372036854775807
  tail call void @llvm.assume(i1 %107)
  %108 = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %106, ptr %108, align 8, !tbaa !14
  %109 = load ptr, ptr %80, align 8, !tbaa !18
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %106
  store i8 0, ptr %110, align 1, !tbaa !17
  %111 = load ptr, ptr %3, align 8, !tbaa !18
  br label %127

112:                                              ; preds = %91
  %113 = load i64, ptr %82, align 8, !tbaa !17
  br label %114

114:                                              ; preds = %112, %84
  %115 = phi ptr [ %93, %112 ], [ %89, %84 ]
  %116 = phi ptr [ %92, %112 ], [ %88, %84 ]
  %117 = phi ptr [ %81, %112 ], [ null, %84 ]
  %118 = phi i64 [ %113, %112 ], [ undef, %84 ]
  store ptr %116, ptr %80, align 8, !tbaa !18
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %120 = load i64, ptr %119, align 8, !tbaa !14
  %121 = icmp ult i64 %120, 9223372036854775807
  tail call void @llvm.assume(i1 %121)
  %122 = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %120, ptr %122, align 8, !tbaa !14
  %123 = load i64, ptr %115, align 8, !tbaa !17
  store i64 %123, ptr %82, align 8, !tbaa !17
  %124 = icmp eq ptr %117, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  store ptr %117, ptr %3, align 8, !tbaa !18
  store i64 %118, ptr %115, align 8, !tbaa !17
  br label %127

126:                                              ; preds = %114
  store ptr %115, ptr %3, align 8, !tbaa !18
  br label %127

127:                                              ; preds = %95, %105, %125, %126
  %128 = phi ptr [ %117, %125 ], [ %115, %126 ], [ %96, %95 ], [ %111, %105 ]
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %129, align 8, !tbaa !14
  store i8 0, ptr %128, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = icmp ult i64 %9, 9223372036854775807
  tail call void @llvm.assume(i1 %10)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !18
  %15 = load ptr, ptr %1, align 8, !tbaa !18
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
  %27 = load i64, ptr %26, align 8, !tbaa !14
  %28 = icmp ult i64 %27, 9223372036854775807
  tail call void @llvm.assume(i1 %28)
  br i1 %25, label %29, label %62

29:                                               ; preds = %23
  %30 = tail call i64 @llvm.umin.i64(i64 %27, i64 %9)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !tbaa !18
  %34 = load ptr, ptr %2, align 8, !tbaa !18
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
  %49 = load ptr, ptr %3, align 8, !tbaa !18
  %50 = load ptr, ptr %1, align 8, !tbaa !18
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
  %66 = load ptr, ptr %3, align 8, !tbaa !18
  %67 = load ptr, ptr %1, align 8, !tbaa !18
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
  %82 = load ptr, ptr %3, align 8, !tbaa !18
  %83 = load ptr, ptr %2, align 8, !tbaa !18
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
  %96 = phi ptr [ %2, %42 ], [ %61, %58 ], [ %1, %75 ], [ %94, %91 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %96) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca [16 x i8], align 16
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !14
  %12 = icmp ult i64 %11, 16
  tail call void @llvm.assume(i1 %12)
  %13 = load ptr, ptr %1, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !14
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  %20 = icmp eq i64 %11, 0
  %21 = icmp eq i64 %18, 0
  br i1 %20, label %26, label %22

22:                                               ; preds = %16
  br i1 %21, label %32, label %23

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %24 = add nuw nsw i64 %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %24, i1 false)
  %25 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %25, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %24, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  br label %53

26:                                               ; preds = %16
  br i1 %21, label %53, label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %28, i1 false)
  %29 = load i64, ptr %17, align 8, !tbaa !14
  %30 = icmp ult i64 %29, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  store i64 %29, ptr %10, align 8, !tbaa !14
  store i64 0, ptr %17, align 8, !tbaa !14
  %31 = load ptr, ptr %1, align 8, !tbaa !18
  store i8 0, ptr %31, align 1, !tbaa !17
  br label %60

32:                                               ; preds = %22
  %33 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %33, i1 false)
  %34 = load i64, ptr %10, align 8, !tbaa !14
  %35 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %35)
  store i64 %34, ptr %17, align 8, !tbaa !14
  store i64 0, ptr %10, align 8, !tbaa !14
  %36 = load ptr, ptr %0, align 8, !tbaa !18
  store i8 0, ptr %36, align 1, !tbaa !17
  br label %60

37:                                               ; preds = %9
  %38 = load i64, ptr %14, align 8, !tbaa !17
  %39 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %39, i1 false)
  store ptr %13, ptr %0, align 8, !tbaa !18
  store ptr %14, ptr %1, align 8, !tbaa !18
  store i64 %38, ptr %7, align 8, !tbaa !17
  br label %53

40:                                               ; preds = %5
  %41 = load i64, ptr %7, align 8, !tbaa !17
  %42 = load ptr, ptr %1, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !14
  %48 = icmp ult i64 %47, 16
  tail call void @llvm.assume(i1 %48)
  %49 = add nuw nsw i64 %47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %43, i64 %49, i1 false)
  store ptr %6, ptr %1, align 8, !tbaa !18
  store ptr %7, ptr %0, align 8, !tbaa !18
  br label %52

50:                                               ; preds = %40
  store ptr %42, ptr %0, align 8, !tbaa !18
  store ptr %6, ptr %1, align 8, !tbaa !18
  %51 = load i64, ptr %43, align 8, !tbaa !17
  store i64 %51, ptr %7, align 8, !tbaa !17
  br label %52

52:                                               ; preds = %50, %45
  store i64 %41, ptr %43, align 8, !tbaa !17
  br label %53

53:                                               ; preds = %26, %37, %23, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !14
  %56 = icmp ult i64 %55, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 9223372036854775807
  tail call void @llvm.assume(i1 %59)
  store i64 %58, ptr %54, align 8, !tbaa !14
  store i64 %55, ptr %57, align 8, !tbaa !14
  br label %60

60:                                               ; preds = %2, %53, %32, %27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %156, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %156, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = icmp eq ptr %3, %0
  br label %14

14:                                               ; preds = %8, %153
  %15 = phi ptr [ %6, %8 ], [ %154, %153 ]
  %16 = phi ptr [ %0, %8 ], [ %15, %153 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !14
  %19 = icmp ult i64 %18, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = load i64, ptr %9, align 8, !tbaa !14
  %21 = icmp ult i64 %20, 9223372036854775807
  call void @llvm.assume(i1 %21)
  %22 = call i64 @llvm.umin.i64(i64 %20, i64 %18)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !18
  %26 = load ptr, ptr %15, align 8, !tbaa !18
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
  br i1 %36, label %37, label %152

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  store ptr %10, ptr %3, align 8, !tbaa !8
  %38 = load ptr, ptr %15, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = icmp samesign ult i64 %18, 16
  call void @llvm.assume(i1 %42)
  %43 = add nuw nsw i64 %18, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %39, i64 %43, i1 false)
  %44 = load i64, ptr %17, align 8, !tbaa !14
  br label %47

45:                                               ; preds = %37
  store ptr %38, ptr %3, align 8, !tbaa !18
  %46 = load i64, ptr %39, align 8, !tbaa !17
  store i64 %46, ptr %10, align 8, !tbaa !17
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi i64 [ %44, %41 ], [ %18, %45 ]
  %49 = icmp ult i64 %48, 9223372036854775807
  call void @llvm.assume(i1 %49)
  store i64 %48, ptr %11, align 8, !tbaa !14
  store ptr %39, ptr %15, align 8, !tbaa !18
  store i64 0, ptr %17, align 8, !tbaa !14
  store i8 0, ptr %39, align 1, !tbaa !17
  %50 = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %51

51:                                               ; preds = %47, %100
  %52 = phi ptr [ %55, %100 ], [ %50, %47 ]
  %53 = phi ptr [ %54, %100 ], [ %15, %47 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 -32
  %55 = getelementptr inbounds i8, ptr %52, i64 -32
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = getelementptr inbounds i8, ptr %52, i64 -16
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = getelementptr inbounds i8, ptr %52, i64 -24
  %61 = load i64, ptr %60, align 8, !tbaa !14
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  %63 = load ptr, ptr %54, align 8, !tbaa !18
  %64 = getelementptr inbounds i8, ptr %53, i64 -16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %70, label %87

66:                                               ; preds = %51
  %67 = load ptr, ptr %54, align 8, !tbaa !18
  %68 = getelementptr inbounds i8, ptr %53, i64 -16
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %59, %66
  %71 = phi ptr [ %67, %66 ], [ %63, %59 ]
  %72 = getelementptr inbounds i8, ptr %53, i64 -24
  %73 = load i64, ptr %72, align 8, !tbaa !14
  %74 = icmp ult i64 %73, 16
  call void @llvm.assume(i1 %74)
  switch i64 %73, label %77 [
    i64 0, label %78
    i64 1, label %75
  ]

75:                                               ; preds = %70
  %76 = load i8, ptr %71, align 1, !tbaa !17
  store i8 %76, ptr %56, align 1, !tbaa !17
  br label %78

77:                                               ; preds = %70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %71, i64 %73, i1 false)
  br label %78

78:                                               ; preds = %77, %75, %70
  %79 = load i64, ptr %72, align 8, !tbaa !14
  %80 = icmp ult i64 %79, 9223372036854775807
  call void @llvm.assume(i1 %80)
  %81 = getelementptr inbounds i8, ptr %52, i64 -24
  store i64 %79, ptr %81, align 8, !tbaa !14
  %82 = load ptr, ptr %55, align 8, !tbaa !18
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %79
  store i8 0, ptr %83, align 1, !tbaa !17
  %84 = load ptr, ptr %54, align 8, !tbaa !18
  br label %100

85:                                               ; preds = %66
  %86 = load i64, ptr %57, align 8, !tbaa !17
  br label %87

87:                                               ; preds = %85, %59
  %88 = phi ptr [ %68, %85 ], [ %64, %59 ]
  %89 = phi ptr [ %67, %85 ], [ %63, %59 ]
  %90 = phi ptr [ %56, %85 ], [ null, %59 ]
  %91 = phi i64 [ %86, %85 ], [ undef, %59 ]
  store ptr %89, ptr %55, align 8, !tbaa !18
  %92 = getelementptr inbounds i8, ptr %53, i64 -24
  %93 = load i64, ptr %92, align 8, !tbaa !14
  %94 = icmp ult i64 %93, 9223372036854775807
  call void @llvm.assume(i1 %94)
  %95 = getelementptr inbounds i8, ptr %52, i64 -24
  store i64 %93, ptr %95, align 8, !tbaa !14
  %96 = load i64, ptr %88, align 8, !tbaa !17
  store i64 %96, ptr %57, align 8, !tbaa !17
  %97 = icmp eq ptr %90, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %87
  store ptr %90, ptr %54, align 8, !tbaa !18
  store i64 %91, ptr %88, align 8, !tbaa !17
  br label %100

99:                                               ; preds = %87
  store ptr %88, ptr %54, align 8, !tbaa !18
  br label %100

100:                                              ; preds = %99, %98, %78
  %101 = phi ptr [ %90, %98 ], [ %88, %99 ], [ %84, %78 ]
  %102 = getelementptr inbounds i8, ptr %53, i64 -24
  store i64 0, ptr %102, align 8, !tbaa !14
  store i8 0, ptr %101, align 1, !tbaa !17
  %103 = icmp eq ptr %0, %54
  br i1 %103, label %104, label %51, !llvm.loop !288

104:                                              ; preds = %100
  %105 = load ptr, ptr %0, align 8, !tbaa !18
  %106 = icmp eq ptr %105, %12
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i64, ptr %9, align 8, !tbaa !14
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  %110 = load ptr, ptr %3, align 8, !tbaa !18
  %111 = icmp eq ptr %110, %10
  br i1 %111, label %115, label %131

112:                                              ; preds = %104
  %113 = load ptr, ptr %3, align 8, !tbaa !18
  %114 = icmp eq ptr %113, %10
  br i1 %114, label %115, label %129

115:                                              ; preds = %112, %107
  %116 = phi ptr [ %113, %112 ], [ %110, %107 ]
  %117 = load i64, ptr %11, align 8, !tbaa !14
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br i1 %13, label %141, label %119, !prof !119

119:                                              ; preds = %115
  switch i64 %117, label %122 [
    i64 0, label %123
    i64 1, label %120
  ]

120:                                              ; preds = %119
  %121 = load i8, ptr %116, align 1, !tbaa !17
  store i8 %121, ptr %105, align 1, !tbaa !17
  br label %123

122:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %105, ptr align 1 %116, i64 %117, i1 false)
  br label %123

123:                                              ; preds = %122, %120, %119
  %124 = load i64, ptr %11, align 8, !tbaa !14
  %125 = icmp ult i64 %124, 9223372036854775807
  call void @llvm.assume(i1 %125)
  store i64 %124, ptr %9, align 8, !tbaa !14
  %126 = load ptr, ptr %0, align 8, !tbaa !18
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 %124
  store i8 0, ptr %127, align 1, !tbaa !17
  %128 = load ptr, ptr %3, align 8, !tbaa !18
  br label %141

129:                                              ; preds = %112
  %130 = load i64, ptr %12, align 8, !tbaa !17
  br label %131

131:                                              ; preds = %129, %107
  %132 = phi ptr [ %113, %129 ], [ %110, %107 ]
  %133 = phi ptr [ %105, %129 ], [ null, %107 ]
  %134 = phi i64 [ %130, %129 ], [ undef, %107 ]
  store ptr %132, ptr %0, align 8, !tbaa !18
  %135 = load i64, ptr %11, align 8, !tbaa !14
  %136 = icmp ult i64 %135, 9223372036854775807
  call void @llvm.assume(i1 %136)
  store i64 %135, ptr %9, align 8, !tbaa !14
  %137 = load i64, ptr %10, align 8, !tbaa !17
  store i64 %137, ptr %12, align 8, !tbaa !17
  %138 = icmp eq ptr %133, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  store ptr %133, ptr %3, align 8, !tbaa !18
  store i64 %134, ptr %10, align 8, !tbaa !17
  br label %141

140:                                              ; preds = %131
  store ptr %10, ptr %3, align 8, !tbaa !18
  br label %141

141:                                              ; preds = %115, %123, %139, %140
  %142 = phi ptr [ %133, %139 ], [ %10, %140 ], [ %116, %115 ], [ %128, %123 ]
  store i64 0, ptr %11, align 8, !tbaa !14
  store i8 0, ptr %142, align 1, !tbaa !17
  %143 = load ptr, ptr %3, align 8, !tbaa !18
  %144 = icmp eq ptr %143, %10
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i64, ptr %11, align 8, !tbaa !14
  %147 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %147)
  br label %151

148:                                              ; preds = %141
  %149 = load i64, ptr %10, align 8, !tbaa !17
  %150 = add i64 %149, 1
  call void @_ZdlPvm(ptr noundef %143, i64 noundef %150) #26
  br label %151

151:                                              ; preds = %145, %148
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %153

152:                                              ; preds = %34
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %15)
  br label %153

153:                                              ; preds = %151, %152
  %154 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %155 = icmp eq ptr %154, %1
  br i1 %155, label %156, label %14, !llvm.loop !289

156:                                              ; preds = %153, %5, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %3, ptr %2, align 8, !tbaa !8
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !14
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false)
  br label %16

12:                                               ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !18
  %13 = load i64, ptr %5, align 8, !tbaa !17
  store i64 %13, ptr %3, align 8, !tbaa !17
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi i64 [ %9, %7 ], [ %15, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = icmp ult i64 %17, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %17, ptr %20, align 8, !tbaa !14
  store ptr %5, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %18, align 8, !tbaa !14
  store i8 0, ptr %5, align 1, !tbaa !17
  br label %21

21:                                               ; preds = %82, %16
  %22 = phi i64 [ %17, %16 ], [ %84, %82 ]
  %23 = phi ptr [ %0, %16 ], [ %24, %82 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 -32
  %25 = icmp ult i64 %22, 9223372036854775807
  call void @llvm.assume(i1 %25)
  %26 = getelementptr inbounds i8, ptr %23, i64 -24
  %27 = load i64, ptr %26, align 8, !tbaa !14
  %28 = icmp ult i64 %27, 9223372036854775807
  call void @llvm.assume(i1 %28)
  %29 = call i64 @llvm.umin.i64(i64 %27, i64 %22)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %24, align 8, !tbaa !18
  %33 = load ptr, ptr %2, align 8, !tbaa !18
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
  %44 = load ptr, ptr %23, align 8, !tbaa !18
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %46 = icmp eq ptr %44, %45
  br i1 %43, label %47, label %85

47:                                               ; preds = %41
  br i1 %46, label %48, label %57

48:                                               ; preds = %47
  %49 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !14
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = load ptr, ptr %24, align 8, !tbaa !18
  %53 = getelementptr inbounds i8, ptr %23, i64 -16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  store ptr %52, ptr %23, align 8, !tbaa !18
  store i64 %27, ptr %49, align 8, !tbaa !14
  %56 = load i64, ptr %53, align 8, !tbaa !17
  store i64 %56, ptr %45, align 8, !tbaa !17
  br label %80

57:                                               ; preds = %47
  %58 = load ptr, ptr %24, align 8, !tbaa !18
  %59 = getelementptr inbounds i8, ptr %23, i64 -16
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57, %48
  %62 = phi ptr [ %58, %57 ], [ %52, %48 ]
  %63 = icmp samesign ult i64 %27, 16
  call void @llvm.assume(i1 %63)
  switch i64 %27, label %66 [
    i64 0, label %67
    i64 1, label %64
  ]

64:                                               ; preds = %61
  %65 = load i8, ptr %62, align 1, !tbaa !17
  store i8 %65, ptr %44, align 1, !tbaa !17
  br label %67

66:                                               ; preds = %61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %62, i64 %27, i1 false)
  br label %67

67:                                               ; preds = %66, %64, %61
  %68 = load i64, ptr %26, align 8, !tbaa !14
  %69 = icmp ult i64 %68, 9223372036854775807
  call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %68, ptr %70, align 8, !tbaa !14
  %71 = load ptr, ptr %23, align 8, !tbaa !18
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %68
  store i8 0, ptr %72, align 1, !tbaa !17
  %73 = load ptr, ptr %24, align 8, !tbaa !18
  br label %82

74:                                               ; preds = %57
  %75 = load i64, ptr %45, align 8, !tbaa !17
  store ptr %58, ptr %23, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %27, ptr %76, align 8, !tbaa !14
  %77 = load i64, ptr %59, align 8, !tbaa !17
  store i64 %77, ptr %45, align 8, !tbaa !17
  %78 = icmp eq ptr %44, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store ptr %44, ptr %24, align 8, !tbaa !18
  store i64 %75, ptr %59, align 8, !tbaa !17
  br label %82

80:                                               ; preds = %55, %74
  %81 = phi ptr [ %53, %55 ], [ %59, %74 ]
  store ptr %81, ptr %24, align 8, !tbaa !18
  br label %82

82:                                               ; preds = %67, %79, %80
  %83 = phi ptr [ %44, %79 ], [ %81, %80 ], [ %73, %67 ]
  store i64 0, ptr %26, align 8, !tbaa !14
  store i8 0, ptr %83, align 1, !tbaa !17
  %84 = load i64, ptr %20, align 8, !tbaa !14
  br label %21, !llvm.loop !290

85:                                               ; preds = %41
  br i1 %46, label %86, label %94

86:                                               ; preds = %85
  %87 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %88 = load i64, ptr %87, align 8, !tbaa !14
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  %90 = load ptr, ptr %2, align 8, !tbaa !18
  %91 = icmp eq ptr %90, %3
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  store ptr %90, ptr %23, align 8, !tbaa !18
  store i64 %22, ptr %87, align 8, !tbaa !14
  %93 = load i64, ptr %3, align 8, !tbaa !17
  store i64 %93, ptr %45, align 8, !tbaa !17
  br label %118

94:                                               ; preds = %85
  %95 = load ptr, ptr %2, align 8, !tbaa !18
  %96 = icmp eq ptr %95, %3
  br i1 %96, label %97, label %112

97:                                               ; preds = %94, %86
  %98 = phi ptr [ %95, %94 ], [ %90, %86 ]
  %99 = icmp samesign ult i64 %22, 16
  call void @llvm.assume(i1 %99)
  %100 = icmp eq ptr %2, %23
  br i1 %100, label %119, label %101, !prof !119

101:                                              ; preds = %97
  switch i64 %22, label %104 [
    i64 0, label %105
    i64 1, label %102
  ]

102:                                              ; preds = %101
  %103 = load i8, ptr %98, align 1, !tbaa !17
  store i8 %103, ptr %44, align 1, !tbaa !17
  br label %105

104:                                              ; preds = %101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %98, i64 %22, i1 false)
  br label %105

105:                                              ; preds = %104, %102, %101
  %106 = load i64, ptr %20, align 8, !tbaa !14
  %107 = icmp ult i64 %106, 9223372036854775807
  call void @llvm.assume(i1 %107)
  %108 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %106, ptr %108, align 8, !tbaa !14
  %109 = load ptr, ptr %23, align 8, !tbaa !18
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %106
  store i8 0, ptr %110, align 1, !tbaa !17
  %111 = load ptr, ptr %2, align 8, !tbaa !18
  br label %119

112:                                              ; preds = %94
  %113 = load i64, ptr %45, align 8, !tbaa !17
  store ptr %95, ptr %23, align 8, !tbaa !18
  %114 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %22, ptr %114, align 8, !tbaa !14
  %115 = load i64, ptr %3, align 8, !tbaa !17
  store i64 %115, ptr %45, align 8, !tbaa !17
  %116 = icmp eq ptr %44, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  store ptr %44, ptr %2, align 8, !tbaa !18
  store i64 %113, ptr %3, align 8, !tbaa !17
  br label %119

118:                                              ; preds = %92, %112
  store ptr %3, ptr %2, align 8, !tbaa !18
  br label %119

119:                                              ; preds = %97, %105, %117, %118
  %120 = phi ptr [ %44, %117 ], [ %3, %118 ], [ %98, %97 ], [ %111, %105 ]
  store i64 0, ptr %20, align 8, !tbaa !14
  store i8 0, ptr %120, align 1, !tbaa !17
  %121 = load ptr, ptr %2, align 8, !tbaa !18
  %122 = icmp eq ptr %121, %3
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, ptr %20, align 8, !tbaa !14
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %129

126:                                              ; preds = %119
  %127 = load i64, ptr %3, align 8, !tbaa !17
  %128 = add i64 %127, 1
  call void @_ZdlPvm(ptr noundef %121, i64 noundef %128) #26
  br label %129

129:                                              ; preds = %123, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib17join_string_rangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %0, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %7, align 8, !tbaa !14
  store i8 0, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = icmp eq i64 %3, 0
  %11 = icmp eq i64 %3, 1
  %12 = load ptr, ptr %1, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !14
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
  %20 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %20, ptr %6, align 8, !tbaa !17
  br label %24

21:                                               ; preds = %9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %12, i64 noundef %14)
          to label %22 unwind label %59

22:                                               ; preds = %21
  %23 = load ptr, ptr %0, align 8, !tbaa !18
  br label %24

24:                                               ; preds = %17, %22, %19, %18
  %25 = phi ptr [ %23, %22 ], [ %6, %19 ], [ %6, %18 ], [ %6, %17 ]
  store i64 %14, ptr %7, align 8, !tbaa !14
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %14
  store i8 0, ptr %26, align 1, !tbaa !17
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %106, %24, %5
  ret void

30:                                               ; preds = %24, %106
  %31 = phi ptr [ %109, %106 ], [ %27, %24 ]
  %32 = load i64, ptr %7, align 8, !tbaa !14
  %33 = icmp ult i64 %32, 9223372036854775807
  tail call void @llvm.assume(i1 %33)
  %34 = sub nuw nsw i64 9223372036854775806, %32
  %35 = icmp ult i64 %34, %3
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %74
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %37 unwind label %61

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %30
  %39 = add nuw i64 %32, %3
  %40 = load ptr, ptr %0, align 8, !tbaa !18
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
  br i1 %10, label %74, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds nuw i8, ptr %40, i64 %32
  br i1 %11, label %53, label %55

53:                                               ; preds = %51
  %54 = load i8, ptr %4, align 1, !tbaa !17
  store i8 %54, ptr %52, align 1, !tbaa !17
  br label %74

55:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %4, i64 %3, i1 false)
  br label %74

56:                                               ; preds = %44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %32, i64 noundef 0, ptr noundef %4, i64 noundef %3)
          to label %74 unwind label %57

57:                                               ; preds = %105, %56
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
  %65 = load ptr, ptr %0, align 8, !tbaa !18
  %66 = icmp eq ptr %65, %6
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, ptr %7, align 8, !tbaa !14
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  br label %73

70:                                               ; preds = %63
  %71 = load i64, ptr %6, align 8, !tbaa !17
  %72 = add i64 %71, 1
  tail call void @_ZdlPvm(ptr noundef %65, i64 noundef %72) #26
  br label %73

73:                                               ; preds = %67, %70
  resume { ptr, i32 } %64

74:                                               ; preds = %55, %53, %50, %56
  store i64 %39, ptr %7, align 8, !tbaa !14
  %75 = load ptr, ptr %0, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %39
  store i8 0, ptr %76, align 1, !tbaa !17
  %77 = load ptr, ptr %31, align 8, !tbaa !18
  %78 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %79 = load i64, ptr %78, align 8, !tbaa !14
  %80 = icmp ult i64 %79, 9223372036854775807
  tail call void @llvm.assume(i1 %80)
  %81 = load i64, ptr %7, align 8, !tbaa !14
  %82 = icmp ult i64 %81, 9223372036854775807
  tail call void @llvm.assume(i1 %82)
  %83 = sub nuw nsw i64 9223372036854775806, %81
  %84 = icmp samesign ult i64 %83, %79
  br i1 %84, label %36, label %85

85:                                               ; preds = %74
  %86 = add nuw i64 %81, %79
  %87 = load ptr, ptr %0, align 8, !tbaa !18
  %88 = icmp eq ptr %87, %6
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = icmp samesign ult i64 %81, 16
  tail call void @llvm.assume(i1 %90)
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i64, ptr %6, align 8
  %93 = select i1 %88, i64 15, i64 %92
  %94 = icmp samesign ugt i64 %93, 14
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ult i64 %93, 9223372036854775807
  tail call void @llvm.assume(i1 %95)
  %96 = icmp ugt i64 %86, %93
  br i1 %96, label %105, label %97

97:                                               ; preds = %91
  %98 = icmp eq i64 %79, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds nuw i8, ptr %87, i64 %81
  %101 = icmp eq i64 %79, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8, ptr %77, align 1, !tbaa !17
  store i8 %103, ptr %100, align 1, !tbaa !17
  br label %106

104:                                              ; preds = %99
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %100, ptr align 1 %77, i64 %79, i1 false)
  br label %106

105:                                              ; preds = %91
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %81, i64 noundef 0, ptr noundef %77, i64 noundef %79)
          to label %106 unwind label %57

106:                                              ; preds = %104, %102, %97, %105
  store i64 %86, ptr %7, align 8, !tbaa !14
  %107 = load ptr, ptr %0, align 8, !tbaa !18
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %86
  store i8 0, ptr %108, align 1, !tbaa !17
  %109 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %110 = icmp eq ptr %109, %2
  br i1 %110, label %29, label %30, !llvm.loop !291
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !14
  %8 = icmp ult i64 %7, 9223372036854775807
  tail call void @llvm.assume(i1 %8)
  %9 = add i64 %2, %1
  %10 = sub i64 %7, %9
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !18
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #25
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !17
  store i8 %37, ptr %35, align 1, !tbaa !17
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
  %47 = load i8, ptr %3, align 1, !tbaa !17
  store i8 %47, ptr %44, align 1, !tbaa !17
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
  %58 = load i8, ptr %55, align 1, !tbaa !17
  store i8 %58, ptr %53, align 1, !tbaa !17
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #26
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !18
  store i64 %33, ptr %14, align 8, !tbaa !17
  ret void
}

declare void @_ZNSt10filesystem16create_hard_linkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem14create_symlinkERKNS_7__cxx114pathES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

declare void @_ZNSt10filesystem12read_symlinkERKNS_7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path9extensionEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = extractvalue { ptr, i64 } %4, 1
  %7 = icmp ne ptr %5, null
  %8 = icmp ne i64 %6, -1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %87

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !14, !noalias !292
  %13 = icmp ult i64 %12, 9223372036854775807
  tail call void @llvm.assume(i1 %13)
  %14 = icmp ugt i64 %6, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i64 noundef %6, i64 noundef %12) #24, !noalias !292
  unreachable

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %17, ptr %3, align 8, !tbaa !8, !alias.scope !292
  %18 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !292
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %6
  %20 = sub nuw nsw i64 %12, %6
  %21 = icmp samesign ugt i64 %20, 15
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nuw nsw i64 %20, 1
  %24 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #25
  store ptr %24, ptr %3, align 8, !tbaa !18, !alias.scope !292
  store i64 %20, ptr %17, align 8, !tbaa !17, !alias.scope !292
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ %17, %16 ]
  switch i64 %20, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %19, align 1, !tbaa !17
  store i8 %28, ptr %26, align 1, !tbaa !17
  br label %30

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %19, i64 %20, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %20, ptr %31, align 8, !tbaa !14, !alias.scope !292
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 %20
  store i8 0, ptr %32, align 1, !tbaa !17
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %33, ptr %0, align 8, !tbaa !8
  %34 = load ptr, ptr %3, align 8, !tbaa !18
  %35 = icmp eq ptr %34, %17
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, ptr %31, align 8, !tbaa !14
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  %39 = add nuw nsw i64 %37, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %33, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %39, i1 false)
  br label %43

40:                                               ; preds = %30
  store ptr %34, ptr %0, align 8, !tbaa !18
  %41 = load i64, ptr %17, align 8, !tbaa !17
  store i64 %41, ptr %33, align 8, !tbaa !17
  %42 = load i64, ptr %31, align 8, !tbaa !14
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i64 [ %42, %40 ], [ %37, %36 ]
  %45 = icmp ult i64 %44, 9223372036854775807
  call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %44, ptr %46, align 8, !tbaa !14
  store ptr %17, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %31, align 8, !tbaa !14
  store i8 0, ptr %17, align 8, !tbaa !17
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %67 unwind label %51

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %57

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load ptr, ptr %47, align 8, !tbaa !33
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull %53) #17
  br label %56

56:                                               ; preds = %55, %51
  store ptr null, ptr %47, align 8, !tbaa !33
  br label %57

57:                                               ; preds = %56, %49
  %58 = phi { ptr, i32 } [ %52, %56 ], [ %50, %49 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !18
  %60 = icmp eq ptr %59, %33
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, ptr %46, align 8, !tbaa !14
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %77

64:                                               ; preds = %57
  %65 = load i64, ptr %33, align 8, !tbaa !17
  %66 = add i64 %65, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %66) #26
  br label %77

67:                                               ; preds = %48
  %68 = load ptr, ptr %3, align 8, !tbaa !18
  %69 = icmp eq ptr %68, %17
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, ptr %31, align 8, !tbaa !14
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %76

73:                                               ; preds = %67
  %74 = load i64, ptr %17, align 8, !tbaa !17
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %75) #26
  br label %76

76:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %94

77:                                               ; preds = %61, %64
  %78 = load ptr, ptr %3, align 8, !tbaa !18
  %79 = icmp eq ptr %78, %17
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, ptr %31, align 8, !tbaa !14
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %86

83:                                               ; preds = %77
  %84 = load i64, ptr %17, align 8, !tbaa !17
  %85 = add i64 %84, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %85) #26
  br label %86

86:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %58

87:                                               ; preds = %2
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %88, ptr %0, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %89, align 8, !tbaa !14
  store i8 0, ptr %88, align 8, !tbaa !17
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %90)
          to label %94 unwind label %91

91:                                               ; preds = %87
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  tail call void @__clang_call_terminate(ptr %93) #27
  unreachable

94:                                               ; preds = %87, %76
  ret void
}

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: cold noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path4stemEv(ptr dead_on_unwind noalias writable sret(%"class.std::filesystem::__cxx11::path") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %5 = extractvalue { ptr, i64 } %4, 0
  %6 = extractvalue { ptr, i64 } %4, 1
  %7 = icmp ne ptr %5, null
  %8 = icmp ne i64 %6, 0
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %83

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !14, !noalias !295
  %13 = icmp ult i64 %12, 9223372036854775807
  tail call void @llvm.assume(i1 %13)
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %14, ptr %3, align 8, !tbaa !8, !alias.scope !295
  %15 = load ptr, ptr %5, align 8, !tbaa !18, !noalias !295
  %16 = call noundef i64 @llvm.umin.i64(i64 %6, i64 %12)
  %17 = icmp samesign ugt i64 %16, 15
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = add nuw nsw i64 %16, 1
  %20 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #25
  store ptr %20, ptr %3, align 8, !tbaa !18, !alias.scope !295
  store i64 %16, ptr %14, align 8, !tbaa !17, !alias.scope !295
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi ptr [ %20, %18 ], [ %14, %10 ]
  switch i64 %16, label %25 [
    i64 1, label %23
    i64 0, label %26
  ]

23:                                               ; preds = %21
  %24 = load i8, ptr %15, align 1, !tbaa !17
  store i8 %24, ptr %22, align 1, !tbaa !17
  br label %26

25:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %15, i64 %16, i1 false)
  br label %26

26:                                               ; preds = %21, %23, %25
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %16, ptr %27, align 8, !tbaa !14, !alias.scope !295
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 %16
  store i8 0, ptr %28, align 1, !tbaa !17
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %29, ptr %0, align 8, !tbaa !8
  %30 = load ptr, ptr %3, align 8, !tbaa !18
  %31 = icmp eq ptr %30, %14
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, ptr %27, align 8, !tbaa !14
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %35, i1 false)
  br label %39

36:                                               ; preds = %26
  store ptr %30, ptr %0, align 8, !tbaa !18
  %37 = load i64, ptr %14, align 8, !tbaa !17
  store i64 %37, ptr %29, align 8, !tbaa !17
  %38 = load i64, ptr %27, align 8, !tbaa !14
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %38, %36 ], [ %33, %32 ]
  %41 = icmp ult i64 %40, 9223372036854775807
  call void @llvm.assume(i1 %41)
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %40, ptr %42, align 8, !tbaa !14
  store ptr %14, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %27, align 8, !tbaa !14
  store i8 0, ptr %14, align 8, !tbaa !17
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %44 unwind label %45

44:                                               ; preds = %39
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %63 unwind label %47

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %53

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  %49 = load ptr, ptr %43, align 8, !tbaa !33
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull %49) #17
  br label %52

52:                                               ; preds = %51, %47
  store ptr null, ptr %43, align 8, !tbaa !33
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi { ptr, i32 } [ %48, %52 ], [ %46, %45 ]
  %55 = load ptr, ptr %0, align 8, !tbaa !18
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, ptr %42, align 8, !tbaa !14
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %73

60:                                               ; preds = %53
  %61 = load i64, ptr %29, align 8, !tbaa !17
  %62 = add i64 %61, 1
  call void @_ZdlPvm(ptr noundef %55, i64 noundef %62) #26
  br label %73

63:                                               ; preds = %44
  %64 = load ptr, ptr %3, align 8, !tbaa !18
  %65 = icmp eq ptr %64, %14
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, ptr %27, align 8, !tbaa !14
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %63
  %70 = load i64, ptr %14, align 8, !tbaa !17
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #26
  br label %72

72:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %90

73:                                               ; preds = %57, %60
  %74 = load ptr, ptr %3, align 8, !tbaa !18
  %75 = icmp eq ptr %74, %14
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, ptr %27, align 8, !tbaa !14
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %82

79:                                               ; preds = %73
  %80 = load i64, ptr %14, align 8, !tbaa !17
  %81 = add i64 %80, 1
  call void @_ZdlPvm(ptr noundef %74, i64 noundef %81) #26
  br label %82

82:                                               ; preds = %76, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %54

83:                                               ; preds = %2
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %84, ptr %0, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %85, align 8, !tbaa !14
  store i8 0, ptr %84, align 8, !tbaa !17
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %86)
          to label %90 unwind label %87

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  tail call void @__clang_call_terminate(ptr %89) #27
  unreachable

90:                                               ; preds = %83, %72
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!7 = distinct !{!7, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !16, i64 8, !12, i64 16}
!16 = !{!"long", !12, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!15, !10, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!21 = distinct !{!21, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!22 = !{!23, !24, i64 8}
!23 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !24, i64 8}
!24 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !12, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !13, i64 0}
!27 = !{!28, !29, i64 80}
!28 = !{!"_ZTSN12__apo_stdlib11file_handleE", !23, i64 0, !15, i64 16, !15, i64 48, !29, i64 80}
!29 = !{!"bool", !12, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc: argument 0"}
!32 = distinct !{!32, !"_ZN12__apo_stdlib13text_or_emptyB5cxx11EPKc"}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!35 = !{!36, !38, i64 32}
!36 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !40, i64 48, !12, i64 64, !41, i64 192, !42, i64 200, !43, i64 208}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !16, i64 8}
!41 = !{!"int", !12, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!43 = !{!"_ZTSSt6locale", !44, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!"branch_weights", i32 1, i32 1023}
!48 = !{!49, !53, i64 48}
!49 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !50, i64 0, !16, i64 8, !52, i64 16, !52, i64 48}
!50 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0}
!51 = !{!"any p2 pointer", !11, i64 0}
!52 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !53, i64 0, !53, i64 8, !53, i64 16, !50, i64 24}
!53 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!54 = !{!49, !53, i64 64}
!55 = !{!52, !53, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!58 = distinct !{!58, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!59 = !{!52, !53, i64 8}
!60 = !{!52, !50, i64 24}
!61 = !{!53, !53, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!64 = distinct !{!64, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!65 = !{!66, !68, i64 232}
!66 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !67, i64 216, !12, i64 224, !29, i64 225, !68, i64 232, !69, i64 240, !70, i64 248, !71, i64 256}
!67 = !{!"p1 _ZTSSo", !11, i64 0}
!68 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!69 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!70 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!71 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!74 = distinct !{!74, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!78 = !{!79, !16, i64 16}
!79 = !{!"_ZTSN12__apo_stdlib15metadata_handleE", !23, i64 0, !16, i64 16, !15, i64 24, !15, i64 56, !15, i64 88, !29, i64 120, !29, i64 121, !29, i64 122}
!80 = !{!79, !29, i64 120}
!81 = !{!79, !29, i64 121}
!82 = !{!79, !29, i64 122}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"_ZNSt7__cxx119to_stringEx: argument 0"}
!87 = distinct !{!87, !"_ZNSt7__cxx119to_stringEx"}
!88 = distinct !{!88, !89, !"_ZN12__apo_stdlib17file_time_to_textB5cxx11ERKNSt6chrono10time_pointINSt10filesystem12__file_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEE: argument 0"}
!89 = distinct !{!89, !"_ZN12__apo_stdlib17file_time_to_textB5cxx11ERKNSt6chrono10time_pointINSt10filesystem12__file_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEE"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!92 = distinct !{!92, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!95 = distinct !{!95, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!98 = distinct !{!98, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!99 = !{!100, !101, i64 0}
!100 = !{!"_ZTSSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE", !101, i64 0, !102, i64 8}
!101 = !{!"p1 _ZTSNSt10filesystem7__cxx114_DirE", !11, i64 0}
!102 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0}
!103 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!104 = !{!102, !103, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0:thread"}
!107 = distinct !{!107, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE"}
!108 = !{!41, !41, i64 0}
!109 = !{!110}
!110 = distinct !{!110, !107, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0:thread"}
!113 = distinct !{!113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE: argument 0"}
!116 = !{!117, !41, i64 8}
!117 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 8, !41, i64 12}
!118 = !{!117, !41, i64 12}
!119 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!120 = distinct !{!120, !84}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!123 = distinct !{!123, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!126 = distinct !{!126, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!127 = !{!125, !122}
!128 = !{!129, !53, i64 8}
!129 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!130 = !{!129, !53, i64 16}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E: argument 0"}
!133 = distinct !{!133, !"_ZN12__apo_stdlib12join_stringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt17basic_string_viewIcS4_E"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!136 = distinct !{!136, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!137 = !{!129, !53, i64 0}
!138 = distinct !{!138, !84}
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
!240 = !{!16, !16, i64 0}
!241 = !{!10, !10, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!244 = distinct !{!244, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!247 = distinct !{!247, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!248 = !{!11, !11, i64 0}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!251 = distinct !{!251, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!252 = !{!49, !50, i64 0}
!253 = !{!49, !50, i64 40}
!254 = !{!49, !50, i64 72}
!255 = distinct !{!255, !84}
!256 = !{!49, !16, i64 8}
!257 = distinct !{!257, !84}
!258 = !{!52, !53, i64 16}
!259 = !{!49, !53, i64 16}
!260 = distinct !{!260, !84}
!261 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!262 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!263 = !{!264, !10, i64 16}
!264 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !43, i64 56}
!265 = !{!264, !10, i64 24}
!266 = distinct !{!266, !84, !267}
!267 = !{!"llvm.loop.peeled.count", i32 1}
!268 = distinct !{!268, !267}
!269 = distinct !{!269, !84}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNKSt10filesystem7__cxx114path3endEv: argument 0"}
!272 = distinct !{!272, !"_ZNKSt10filesystem7__cxx114path3endEv"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!275 = distinct !{!275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!276 = !{!277}
!277 = distinct !{!277, !275, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!278 = !{!274, !277}
!279 = distinct !{!279, !84}
!280 = distinct !{!280, !84}
!281 = distinct !{!281, !84}
!282 = distinct !{!282, !84}
!283 = distinct !{!283, !84}
!284 = distinct !{!284, !84}
!285 = distinct !{!285, !84}
!286 = distinct !{!286, !84}
!287 = distinct !{!287, !84}
!288 = distinct !{!288, !84}
!289 = distinct !{!289, !84}
!290 = distinct !{!290, !84}
!291 = distinct !{!291, !84, !267}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!294 = distinct !{!294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!297 = distinct !{!297, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
