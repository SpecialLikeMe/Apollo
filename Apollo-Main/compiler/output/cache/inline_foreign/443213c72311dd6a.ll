; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/443213c72311dd6a.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/443213c72311dd6a.cpp"
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i8 }

$_ZN12__apo_stdlib15json_parse_boolESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib14json_parse_intESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib16json_parse_floatESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib14json_parse_strESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib24json_parse_object_handleESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib15json_write_boolEi = comdat any

$_ZN12__apo_stdlib14json_write_intEl = comdat any

$_ZN12__apo_stdlib16json_write_floatEd = comdat any

$_ZN12__apo_stdlib14json_write_strESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib28json_write_array_from_vectorEPv = comdat any

$_ZN12__apo_stdlib26json_write_object_from_mapEPv = comdat any

$_ZN12__apo_stdlib22json_write_array_startEv = comdat any

$_ZN12__apo_stdlib20json_write_array_endEv = comdat any

$_ZN12__apo_stdlib23json_write_object_startEv = comdat any

$_ZN12__apo_stdlib21json_write_object_endEv = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN12__apo_stdlib13vector_handleD2Ev = comdat any

$_ZN12__apo_stdlib13vector_handleD0Ev = comdat any

$_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_ = comdat any

$_ZN12__apo_stdlib23json_parse_object_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev = comdat any

$_ZN12__apo_stdlib20unordered_map_handleD2Ev = comdat any

$_ZN12__apo_stdlib20unordered_map_handleD0Ev = comdat any

$_ZN12__apo_stdlib14json_parse_keyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS6_S6_EEEvDpOT_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_ = comdat any

$_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN12__apo_stdlib26json_write_array_fragmentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm = comdat any

$_ZN12__apo_stdlib27json_write_object_fragmentsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_RSM_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_RSM_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_SJ_SM_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEESJ_SJ_SJ_SJ_SM_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_ = comdat any

$_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = comdat any

$_ZTVN12__apo_stdlib13vector_handleE = comdat any

$_ZTIN12__apo_stdlib13vector_handleE = comdat any

$_ZTSN12__apo_stdlib13vector_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

$_ZTVN12__apo_stdlib20unordered_map_handleE = comdat any

$_ZTIN12__apo_stdlib20unordered_map_handleE = comdat any

$_ZTSN12__apo_stdlib20unordered_map_handleE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local global %"class.std::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11 = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.6 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZTVN12__apo_stdlib13vector_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib13vector_handleE, ptr @_ZN12__apo_stdlib13vector_handleD2Ev, ptr @_ZN12__apo_stdlib13vector_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib13vector_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13vector_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13vector_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13vector_handleE\00", comdat, align 1
@_ZTIN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN12__apo_stdlib13opaque_handleE = linkonce_odr dso_local constant [32 x i8] c"N12__apo_stdlib13opaque_handleE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_append\00", align 1
@_ZTVN12__apo_stdlib20unordered_map_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib20unordered_map_handleE, ptr @_ZN12__apo_stdlib20unordered_map_handleD2Ev, ptr @_ZN12__apo_stdlib20unordered_map_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib20unordered_map_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib20unordered_map_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib20unordered_map_handleE = linkonce_odr dso_local constant [39 x i8] c"N12__apo_stdlib20unordered_map_handleE\00", comdat, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @_ZN32__apollo_inline_inline_2948_5_1827sys__native_json_parse_boolEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib15json_parse_boolESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib15json_parse_boolESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !12, !noalias !9
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #25, !noalias !9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !13

15:                                               ; preds = %12, %5, %2
  %16 = phi i64 [ 0, %2 ], [ %0, %12 ], [ %6, %5 ]
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %0, %15 ], [ %21, %20 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, -1
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !12, !noalias !9
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #25, !noalias !9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !15

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %29, label %63

29:                                               ; preds = %27
  %30 = sub nuw i64 %18, %16
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %32, ptr %3, align 8, !tbaa !16, !alias.scope !9
  %33 = icmp ugt i64 %30, 15
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = icmp ugt i64 %30, 9223372036854775806
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %30, 1
  %39 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %38) #27
  store ptr %39, ptr %3, align 8, !tbaa !20, !alias.scope !9
  store i64 %30, ptr %32, align 8, !tbaa !12, !alias.scope !9
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi ptr [ %39, %37 ], [ %32, %29 ]
  switch i64 %30, label %44 [
    i64 1, label %42
    i64 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load i8, ptr %31, align 1, !tbaa !12, !noalias !9
  store i8 %43, ptr %41, align 1, !tbaa !12
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr align 1 %31, i64 %30, i1 false)
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %30, ptr %46, align 8, !tbaa !23, !alias.scope !9
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 %30
  store i8 0, ptr %47, align 1, !tbaa !12
  %48 = load i64, ptr %46, align 8, !tbaa !23
  %49 = load ptr, ptr %3, align 8, !tbaa !20
  %50 = icmp ult i64 %48, 9223372036854775807
  call void @llvm.assume(i1 %50)
  %51 = icmp eq i64 %48, 4
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %49, ptr noundef nonnull dereferenceable(4) @.str, i64 4)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi i32 [ 0, %45 ], [ %55, %52 ]
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %59 = icmp eq ptr %49, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i64, ptr %58, align 8, !tbaa !12
  %62 = add i64 %61, 1
  call void @_ZdlPvm(ptr noundef %49, i64 noundef %62) #28
  br label %63

63:                                               ; preds = %17, %56, %27, %60
  %64 = phi i32 [ %57, %60 ], [ %57, %56 ], [ 0, %27 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %64
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i64 @_ZN32__apollo_inline_inline_2948_5_1826sys__native_json_parse_intEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i64 @_ZN12__apo_stdlib14json_parse_intESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i64 %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZN12__apo_stdlib14json_parse_intESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !12, !noalias !24
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #25, !noalias !24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !13

15:                                               ; preds = %12, %5, %2
  %16 = phi i64 [ 0, %2 ], [ %0, %12 ], [ %6, %5 ]
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %0, %15 ], [ %21, %20 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, -1
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !12, !noalias !24
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #25, !noalias !24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !15

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %31, label %29

29:                                               ; preds = %17, %27
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %30, align 8, !tbaa !23, !alias.scope !24
  br label %64

31:                                               ; preds = %27
  %32 = sub nuw i64 %18, %16
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !16, !alias.scope !24
  %35 = icmp ugt i64 %32, 15
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = icmp ugt i64 %32, 9223372036854775806
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

39:                                               ; preds = %36
  %40 = add nuw nsw i64 %32, 1
  %41 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %40) #27
  store ptr %41, ptr %3, align 8, !tbaa !20, !alias.scope !24
  store i64 %32, ptr %34, align 8, !tbaa !12, !alias.scope !24
  br label %42

42:                                               ; preds = %39, %31
  %43 = phi ptr [ %41, %39 ], [ %34, %31 ]
  switch i64 %32, label %46 [
    i64 1, label %44
    i64 0, label %47
  ]

44:                                               ; preds = %42
  %45 = load i8, ptr %33, align 1, !tbaa !12, !noalias !24
  store i8 %45, ptr %43, align 1, !tbaa !12
  br label %47

46:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr align 1 %33, i64 %32, i1 false)
  br label %47

47:                                               ; preds = %42, %44, %46
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %32, ptr %48, align 8, !tbaa !23, !alias.scope !24
  %49 = getelementptr inbounds nuw i8, ptr %43, i64 %32
  store i8 0, ptr %49, align 1, !tbaa !12
  %50 = load i64, ptr %48, align 8, !tbaa !23
  %51 = load ptr, ptr %3, align 8, !tbaa !20
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = call i64 @__isoc23_strtoll(ptr noundef %51, ptr noundef null, i32 noundef 10) #15
  %55 = load ptr, ptr %3, align 8, !tbaa !20
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %55, %53 ], [ %51, %47 ]
  %58 = phi i64 [ %54, %53 ], [ 0, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %59, align 8, !tbaa !12
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %57, i64 noundef %63) #28
  br label %64

64:                                               ; preds = %56, %29, %61
  %65 = phi i64 [ %58, %61 ], [ 0, %29 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i64 %65
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_parse_floatEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef double @_ZN12__apo_stdlib16json_parse_floatESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret double %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef double @_ZN12__apo_stdlib16json_parse_floatESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !12, !noalias !27
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #25, !noalias !27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !13

15:                                               ; preds = %12, %5, %2
  %16 = phi i64 [ 0, %2 ], [ %0, %12 ], [ %6, %5 ]
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %0, %15 ], [ %21, %20 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, -1
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !12, !noalias !27
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #25, !noalias !27
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !15

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %31, label %29

29:                                               ; preds = %17, %27
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %30, align 8, !tbaa !23, !alias.scope !27
  br label %64

31:                                               ; preds = %27
  %32 = sub nuw i64 %18, %16
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %34, ptr %3, align 8, !tbaa !16, !alias.scope !27
  %35 = icmp ugt i64 %32, 15
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = icmp ugt i64 %32, 9223372036854775806
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

39:                                               ; preds = %36
  %40 = add nuw nsw i64 %32, 1
  %41 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %40) #27
  store ptr %41, ptr %3, align 8, !tbaa !20, !alias.scope !27
  store i64 %32, ptr %34, align 8, !tbaa !12, !alias.scope !27
  br label %42

42:                                               ; preds = %39, %31
  %43 = phi ptr [ %41, %39 ], [ %34, %31 ]
  switch i64 %32, label %46 [
    i64 1, label %44
    i64 0, label %47
  ]

44:                                               ; preds = %42
  %45 = load i8, ptr %33, align 1, !tbaa !12, !noalias !27
  store i8 %45, ptr %43, align 1, !tbaa !12
  br label %47

46:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr align 1 %33, i64 %32, i1 false)
  br label %47

47:                                               ; preds = %42, %44, %46
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %32, ptr %48, align 8, !tbaa !23, !alias.scope !27
  %49 = getelementptr inbounds nuw i8, ptr %43, i64 %32
  store i8 0, ptr %49, align 1, !tbaa !12
  %50 = load i64, ptr %48, align 8, !tbaa !23
  %51 = load ptr, ptr %3, align 8, !tbaa !20
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = call double @strtod(ptr noundef captures(none) %51, ptr noundef null) #15
  %55 = load ptr, ptr %3, align 8, !tbaa !20
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %55, %53 ], [ %51, %47 ]
  %58 = phi double [ %54, %53 ], [ 0.000000e+00, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %59, align 8, !tbaa !12
  %63 = add i64 %62, 1
  call void @_ZdlPvm(ptr noundef %57, i64 noundef %63) #28
  br label %64

64:                                               ; preds = %56, %29, %61
  %65 = phi double [ %58, %61 ], [ 0.000000e+00, %29 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret double %65
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1826sys__native_json_parse_strEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14json_parse_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14json_parse_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !12, !noalias !30
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #25, !noalias !30
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %0
  br i1 %16, label %17, label %7, !llvm.loop !13

17:                                               ; preds = %14, %7, %2
  %18 = phi i64 [ 0, %2 ], [ %0, %14 ], [ %8, %7 ]
  br label %19

19:                                               ; preds = %22, %17
  %20 = phi i64 [ %0, %17 ], [ %23, %22 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = add i64 %20, -1
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !12, !noalias !30
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @isspace(i32 noundef %26) #25, !noalias !30
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !15

29:                                               ; preds = %22
  %30 = icmp ugt i64 %20, %18
  br i1 %30, label %34, label %31

31:                                               ; preds = %19, %29
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %32, ptr %3, align 8, !tbaa !16, !alias.scope !30
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %33, align 8, !tbaa !23, !alias.scope !30
  store i8 0, ptr %32, align 8, !tbaa !12, !alias.scope !30
  br label %136

34:                                               ; preds = %29
  %35 = sub nuw i64 %20, %18
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %37, ptr %3, align 8, !tbaa !16, !alias.scope !30
  %38 = icmp ugt i64 %35, 15
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = icmp ugt i64 %35, 9223372036854775806
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %35, 1
  %44 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #27
  store ptr %44, ptr %3, align 8, !tbaa !20, !alias.scope !30
  store i64 %35, ptr %37, align 8, !tbaa !12, !alias.scope !30
  br label %45

45:                                               ; preds = %42, %34
  %46 = phi ptr [ %44, %42 ], [ %37, %34 ]
  switch i64 %35, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %36, align 1, !tbaa !12, !noalias !30
  store i8 %48, ptr %46, align 1, !tbaa !12
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %36, i64 %35, i1 false)
  br label %50

50:                                               ; preds = %45, %47, %49
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %35, ptr %51, align 8, !tbaa !23, !alias.scope !30
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %35
  store i8 0, ptr %52, align 1, !tbaa !12
  %53 = load i64, ptr %51, align 8, !tbaa !23
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = icmp samesign ugt i64 %53, 1
  br i1 %55, label %56, label %136

56:                                               ; preds = %50
  %57 = load ptr, ptr %3, align 8, !tbaa !20
  %58 = load i8, ptr %57, align 1, !tbaa !12
  %59 = icmp eq i8 %58, 34
  br i1 %59, label %60, label %136

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %57, i64 %53
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !12
  %64 = icmp eq i8 %63, 34
  br i1 %64, label %65, label %136

65:                                               ; preds = %60
  %66 = add nsw i64 %53, -2
  %67 = getelementptr inbounds nuw i8, ptr %57, i64 1
  invoke void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %66, ptr nonnull %67)
          to label %68 unwind label %126

68:                                               ; preds = %65
  %69 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %74, !prof !33

71:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %72 unwind label %128

72:                                               ; preds = %71
  %73 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 48
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = getelementptr inbounds i8, ptr %79, i64 -32
  %81 = icmp eq ptr %77, %80
  br i1 %81, label %103, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds nuw i8, ptr %77, i64 16
  store ptr %83, ptr %77, align 8, !tbaa !16
  %84 = load ptr, ptr %4, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %89 = load i64, ptr %88, align 8, !tbaa !23
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  %91 = add nuw nsw i64 %89, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %83, ptr noundef nonnull align 8 dereferenceable(1) %85, i64 %91, i1 false)
  br label %96

92:                                               ; preds = %82
  store ptr %84, ptr %77, align 8, !tbaa !20
  %93 = load i64, ptr %85, align 8, !tbaa !12
  store i64 %93, ptr %83, align 8, !tbaa !12
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %95 = load i64, ptr %94, align 8, !tbaa !23
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i64 [ %95, %92 ], [ %89, %87 ]
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %99 = icmp ult i64 %97, 9223372036854775807
  call void @llvm.assume(i1 %99)
  %100 = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 %97, ptr %100, align 8, !tbaa !23
  store ptr %85, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %98, align 8, !tbaa !23
  store i8 0, ptr %85, align 8, !tbaa !12
  %101 = load ptr, ptr %76, align 8, !tbaa !34
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 32
  store ptr %102, ptr %76, align 8, !tbaa !34
  br label %106

103:                                              ; preds = %74
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %75, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %104 unwind label %128

104:                                              ; preds = %103
  %105 = load ptr, ptr %76, align 8, !tbaa !41, !noalias !42
  br label %106

106:                                              ; preds = %104, %96
  %107 = phi ptr [ %102, %96 ], [ %105, %104 ]
  %108 = getelementptr inbounds nuw i8, ptr %75, i64 56
  %109 = load ptr, ptr %108, align 8, !tbaa !45, !noalias !42
  %110 = icmp eq ptr %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = getelementptr inbounds nuw i8, ptr %75, i64 72
  %113 = load ptr, ptr %112, align 8, !tbaa !46, !noalias !42
  %114 = getelementptr inbounds i8, ptr %113, i64 -8
  %115 = load ptr, ptr %114, align 8, !tbaa !47
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 512
  br label %117

117:                                              ; preds = %111, %106
  %118 = phi ptr [ %116, %111 ], [ %107, %106 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 -32
  %120 = load ptr, ptr %119, align 8, !tbaa !20
  %121 = load ptr, ptr %4, align 8, !tbaa !20
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %203, label %124

124:                                              ; preds = %117
  %125 = load i64, ptr %122, align 8, !tbaa !12
  br label %198

126:                                              ; preds = %65
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %212

128:                                              ; preds = %103, %71
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %4, align 8, !tbaa !20
  %131 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %212, label %133

133:                                              ; preds = %128
  %134 = load i64, ptr %131, align 8, !tbaa !12
  %135 = add i64 %134, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %135) #28
  br label %212

136:                                              ; preds = %31, %60, %56, %50
  %137 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %137, ptr %5, align 8, !tbaa !16
  %138 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %138, align 8, !tbaa !23
  store i8 0, ptr %137, align 8, !tbaa !12
  %139 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %144, !prof !33

141:                                              ; preds = %136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %142 unwind label %191

142:                                              ; preds = %141
  %143 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %144

144:                                              ; preds = %142, %136
  %145 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 48
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %149 = load ptr, ptr %148, align 8, !tbaa !40
  %150 = getelementptr inbounds i8, ptr %149, i64 -32
  %151 = icmp eq ptr %147, %150
  br i1 %151, label %169, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds nuw i8, ptr %147, i64 16
  store ptr %153, ptr %147, align 8, !tbaa !16
  %154 = load ptr, ptr %5, align 8, !tbaa !20
  %155 = icmp eq ptr %154, %137
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i64, ptr %138, align 8, !tbaa !23
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  %159 = add nuw nsw i64 %157, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %153, ptr noundef nonnull align 8 dereferenceable(1) %137, i64 %159, i1 false)
  br label %163

160:                                              ; preds = %152
  store ptr %154, ptr %147, align 8, !tbaa !20
  %161 = load i64, ptr %137, align 8, !tbaa !12
  store i64 %161, ptr %153, align 8, !tbaa !12
  %162 = load i64, ptr %138, align 8, !tbaa !23
  br label %163

163:                                              ; preds = %160, %156
  %164 = phi i64 [ %162, %160 ], [ %157, %156 ]
  %165 = icmp ult i64 %164, 9223372036854775807
  call void @llvm.assume(i1 %165)
  %166 = getelementptr inbounds nuw i8, ptr %147, i64 8
  store i64 %164, ptr %166, align 8, !tbaa !23
  store ptr %137, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %138, align 8, !tbaa !23
  store i8 0, ptr %137, align 8, !tbaa !12
  %167 = load ptr, ptr %146, align 8, !tbaa !34
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 32
  store ptr %168, ptr %146, align 8, !tbaa !34
  br label %172

169:                                              ; preds = %144
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %145, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %170 unwind label %191

170:                                              ; preds = %169
  %171 = load ptr, ptr %146, align 8, !tbaa !41, !noalias !48
  br label %172

172:                                              ; preds = %170, %163
  %173 = phi ptr [ %168, %163 ], [ %171, %170 ]
  %174 = getelementptr inbounds nuw i8, ptr %145, i64 56
  %175 = load ptr, ptr %174, align 8, !tbaa !45, !noalias !48
  %176 = icmp eq ptr %173, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw i8, ptr %145, i64 72
  %179 = load ptr, ptr %178, align 8, !tbaa !46, !noalias !48
  %180 = getelementptr inbounds i8, ptr %179, i64 -8
  %181 = load ptr, ptr %180, align 8, !tbaa !47
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 512
  br label %183

183:                                              ; preds = %177, %172
  %184 = phi ptr [ %182, %177 ], [ %173, %172 ]
  %185 = getelementptr inbounds i8, ptr %184, i64 -32
  %186 = load ptr, ptr %185, align 8, !tbaa !20
  %187 = load ptr, ptr %5, align 8, !tbaa !20
  %188 = icmp eq ptr %187, %137
  br i1 %188, label %203, label %189

189:                                              ; preds = %183
  %190 = load i64, ptr %137, align 8, !tbaa !12
  br label %198

191:                                              ; preds = %169, %141
  %192 = landingpad { ptr, i32 }
          cleanup
  %193 = load ptr, ptr %5, align 8, !tbaa !20
  %194 = icmp eq ptr %193, %137
  br i1 %194, label %212, label %195

195:                                              ; preds = %191
  %196 = load i64, ptr %137, align 8, !tbaa !12
  %197 = add i64 %196, 1
  call void @_ZdlPvm(ptr noundef %193, i64 noundef %197) #28
  br label %212

198:                                              ; preds = %124, %189
  %199 = phi i64 [ %190, %189 ], [ %125, %124 ]
  %200 = phi ptr [ %187, %189 ], [ %121, %124 ]
  %201 = phi ptr [ %186, %189 ], [ %120, %124 ]
  %202 = add i64 %199, 1
  call void @_ZdlPvm(ptr noundef %200, i64 noundef %202) #28
  br label %203

203:                                              ; preds = %198, %183, %117
  %204 = phi ptr [ %120, %117 ], [ %186, %183 ], [ %201, %198 ]
  %205 = load ptr, ptr %3, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %207 = icmp eq ptr %205, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = load i64, ptr %206, align 8, !tbaa !12
  %210 = add i64 %209, 1
  call void @_ZdlPvm(ptr noundef %205, i64 noundef %210) #28
  br label %211

211:                                              ; preds = %203, %208
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %204

212:                                              ; preds = %191, %128, %195, %126, %133
  %213 = phi { ptr, i32 } [ %129, %133 ], [ %127, %126 ], [ %129, %128 ], [ %192, %195 ], [ %192, %191 ]
  %214 = load ptr, ptr %3, align 8, !tbaa !20
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %216 = icmp eq ptr %214, %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = load i64, ptr %215, align 8, !tbaa !12
  %219 = add i64 %218, 1
  call void @_ZdlPvm(ptr noundef %214, i64 noundef %219) #28
  br label %220

220:                                              ; preds = %212, %217
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %213
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_parse_arrayEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector", align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %7, ptr %0)
  %8 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %11 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %12, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %8, align 8, !tbaa !54
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load <2 x ptr>, ptr %2, align 16, !tbaa !47
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !47
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load ptr, ptr %16, align 16, !tbaa !56
  store ptr %17, ptr %14, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %8
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1829sys__native_json_parse_objectEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib24json_parse_object_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib24json_parse_object_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector.6", align 8
  %4 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #27
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 5, ptr %5, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib20unordered_map_handleE, i64 16), ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %7, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib23json_parse_object_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, i64 %0, ptr %1)
  %12 = load ptr, ptr %3, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %41, label %51

16:                                               ; preds = %93
  %17 = load ptr, ptr %3, align 8, !tbaa !69
  %18 = load ptr, ptr %13, align 8, !tbaa !71
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %16, %36
  %21 = phi ptr [ %37, %36 ], [ %17, %16 ]
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, ptr %24, align 8, !tbaa !12
  %28 = add i64 %27, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %28) #28
  br label %29

29:                                               ; preds = %20, %26
  %30 = load ptr, ptr %21, align 8, !tbaa !20
  %31 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %31, align 8, !tbaa !12
  %35 = add i64 %34, 1
  call void @_ZdlPvm(ptr noundef %30, i64 noundef %35) #28
  br label %36

36:                                               ; preds = %29, %33
  %37 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %38 = icmp eq ptr %37, %18
  br i1 %38, label %39, label %20, !llvm.loop !72

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 8, !tbaa !69
  br label %41

41:                                               ; preds = %2, %39, %16
  %42 = phi ptr [ %40, %39 ], [ %17, %16 ], [ %12, %2 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %42 to i64
  %49 = sub i64 %47, %48
  call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %49) #28
  br label %50

50:                                               ; preds = %41, %44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %4

51:                                               ; preds = %2, %93
  %52 = phi ptr [ %96, %93 ], [ %12, %2 ]
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %54 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %55 unwind label %98

55:                                               ; preds = %51
  %56 = load ptr, ptr %54, align 8, !tbaa !20
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %58 = icmp eq ptr %56, %57
  %59 = load ptr, ptr %53, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %61 = icmp eq ptr %59, %60
  br i1 %58, label %62, label %63

62:                                               ; preds = %55
  br i1 %61, label %64, label %82

63:                                               ; preds = %55
  br i1 %61, label %64, label %80

64:                                               ; preds = %63, %62
  %65 = getelementptr inbounds nuw i8, ptr %52, i64 40
  %66 = load i64, ptr %65, align 8, !tbaa !23
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  %68 = icmp eq ptr %53, %54
  br i1 %68, label %93, label %69, !prof !74

69:                                               ; preds = %64
  switch i64 %66, label %72 [
    i64 0, label %73
    i64 1, label %70
  ]

70:                                               ; preds = %69
  %71 = load i8, ptr %59, align 1, !tbaa !12
  store i8 %71, ptr %56, align 1, !tbaa !12
  br label %73

72:                                               ; preds = %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %59, i64 %66, i1 false)
  br label %73

73:                                               ; preds = %72, %70, %69
  %74 = load i64, ptr %65, align 8, !tbaa !23
  %75 = icmp ult i64 %74, 9223372036854775807
  call void @llvm.assume(i1 %75)
  %76 = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %74, ptr %76, align 8, !tbaa !23
  %77 = load ptr, ptr %54, align 8, !tbaa !20
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 %74
  store i8 0, ptr %78, align 1, !tbaa !12
  %79 = load ptr, ptr %53, align 8, !tbaa !20
  br label %93

80:                                               ; preds = %63
  %81 = load i64, ptr %57, align 8, !tbaa !12
  br label %82

82:                                               ; preds = %80, %62
  %83 = phi ptr [ %56, %80 ], [ null, %62 ]
  %84 = phi i64 [ %81, %80 ], [ undef, %62 ]
  store ptr %59, ptr %54, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %52, i64 40
  %86 = load i64, ptr %85, align 8, !tbaa !23
  %87 = icmp ult i64 %86, 9223372036854775807
  call void @llvm.assume(i1 %87)
  %88 = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %86, ptr %88, align 8, !tbaa !23
  %89 = load i64, ptr %60, align 8, !tbaa !12
  store i64 %89, ptr %57, align 8, !tbaa !12
  %90 = icmp eq ptr %83, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  store ptr %83, ptr %53, align 8, !tbaa !20
  store i64 %84, ptr %60, align 8, !tbaa !12
  br label %93

92:                                               ; preds = %82
  store ptr %60, ptr %53, align 8, !tbaa !20
  br label %93

93:                                               ; preds = %64, %73, %91, %92
  %94 = phi ptr [ %79, %73 ], [ %83, %91 ], [ %60, %92 ], [ %59, %64 ]
  %95 = getelementptr inbounds nuw i8, ptr %52, i64 40
  store i64 0, ptr %95, align 8, !tbaa !23
  store i8 0, ptr %94, align 1, !tbaa !12
  %96 = getelementptr inbounds nuw i8, ptr %52, i64 64
  %97 = icmp eq ptr %96, %14
  br i1 %97, label %16, label %51

98:                                               ; preds = %51
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1827sys__native_json_write_boolEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, ptr @.str.8, ptr @.str
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !16
  %6 = select i1 %3, i64 5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(4) %4, i64 %6, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %6, ptr %7, align 8, !tbaa !23
  %8 = select i1 %3, i64 21, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !12
  %10 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !33

12:                                               ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %13 unwind label %64

13:                                               ; preds = %12
  %14 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds i8, ptr %20, i64 -32
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %24, ptr %18, align 8, !tbaa !16
  %25 = load ptr, ptr %2, align 8, !tbaa !20
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, ptr %7, align 8, !tbaa !23
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %24, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %30, i1 false)
  br label %34

31:                                               ; preds = %23
  store ptr %25, ptr %18, align 8, !tbaa !20
  %32 = load i64, ptr %5, align 8, !tbaa !12
  store i64 %32, ptr %24, align 8, !tbaa !12
  %33 = load i64, ptr %7, align 8, !tbaa !23
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %33, %31 ], [ %28, %27 ]
  %36 = icmp ult i64 %35, 9223372036854775807
  call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %35, ptr %37, align 8, !tbaa !23
  store ptr %5, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %7, align 8, !tbaa !23
  store i8 0, ptr %5, align 8, !tbaa !12
  %38 = load ptr, ptr %17, align 8, !tbaa !34
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %39, ptr %17, align 8, !tbaa !34
  br label %43

40:                                               ; preds = %15
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %41 unwind label %64

41:                                               ; preds = %40
  %42 = load ptr, ptr %17, align 8, !tbaa !41, !noalias !75
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %39, %34 ], [ %42, %41 ]
  %45 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %46 = load ptr, ptr %45, align 8, !tbaa !45, !noalias !75
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %50 = load ptr, ptr %49, align 8, !tbaa !46, !noalias !75
  %51 = getelementptr inbounds i8, ptr %50, i64 -8
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 512
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi ptr [ %53, %48 ], [ %44, %43 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 -32
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  %58 = load ptr, ptr %2, align 8, !tbaa !20
  %59 = icmp eq ptr %58, %5
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i64, ptr %5, align 8, !tbaa !12
  %62 = add i64 %61, 1
  call void @_ZdlPvm(ptr noundef %58, i64 noundef %62) #28
  br label %63

63:                                               ; preds = %54, %60
  ret ptr %57

64:                                               ; preds = %40, %12
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load ptr, ptr %2, align 8, !tbaa !20
  %67 = icmp eq ptr %66, %5
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i64, ptr %5, align 8, !tbaa !12
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %66, i64 noundef %70) #28
  br label %71

71:                                               ; preds = %64, %68
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1826sys__native_json_write_intEl(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_intEl(i64 noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14json_write_intEl(i64 noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = lshr i64 %0, 63
  %4 = tail call i64 @llvm.abs.i64(i64 %0, i1 false)
  %5 = icmp ult i64 %4, 10
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %20
  %7 = phi i64 [ %21, %20 ], [ %4, %1 ]
  %8 = phi i32 [ %22, %20 ], [ 1, %1 ]
  %9 = icmp ult i64 %7, 100
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  br label %24

12:                                               ; preds = %6
  %13 = icmp ult i64 %7, 1000
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = add i32 %8, 2
  br label %24

16:                                               ; preds = %12
  %17 = icmp ult i64 %7, 10000
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add i32 %8, 3
  br label %24

20:                                               ; preds = %16
  %21 = udiv i64 %7, 10000
  %22 = add i32 %8, 4
  %23 = icmp ult i64 %7, 100000
  br i1 %23, label %24, label %6, !llvm.loop !78

24:                                               ; preds = %20, %18, %14, %10, %1
  %25 = phi i32 [ %19, %18 ], [ %11, %10 ], [ %15, %14 ], [ 1, %1 ], [ %22, %20 ]
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %26, ptr %2, align 8, !tbaa !16, !alias.scope !79
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %27, align 8, !tbaa !23, !alias.scope !79
  store i8 0, ptr %26, align 8, !tbaa !12, !alias.scope !79
  %28 = trunc nuw nsw i64 %3 to i32
  %29 = add i32 %25, %28
  %30 = zext i32 %29 to i64
  %31 = zext i32 %25 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or disjoint i64 %32, %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %30, i64 %33, i64 %4)
          to label %45 unwind label %34

34:                                               ; preds = %24
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %2, align 8, !tbaa !20, !alias.scope !79
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %100
  %39 = phi ptr [ %102, %100 ], [ %36, %34 ]
  %40 = phi { ptr, i32 } [ %101, %100 ], [ %35, %34 ]
  %41 = load i64, ptr %26, align 8, !tbaa !12
  %42 = add i64 %41, 1
  call void @_ZdlPvm(ptr noundef %39, i64 noundef %42) #28
  br label %43

43:                                               ; preds = %38, %100, %34
  %44 = phi { ptr, i32 } [ %35, %34 ], [ %101, %100 ], [ %40, %38 ]
  resume { ptr, i32 } %44

45:                                               ; preds = %24
  %46 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51, !prof !33

48:                                               ; preds = %45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %49 unwind label %100

49:                                               ; preds = %48
  %50 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = getelementptr inbounds i8, ptr %56, i64 -32
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %76, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds nuw i8, ptr %54, i64 16
  store ptr %60, ptr %54, align 8, !tbaa !16
  %61 = load ptr, ptr %2, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %26
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, ptr %27, align 8, !tbaa !23
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %60, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %66, i1 false)
  br label %70

67:                                               ; preds = %59
  store ptr %61, ptr %54, align 8, !tbaa !20
  %68 = load i64, ptr %26, align 8, !tbaa !12
  store i64 %68, ptr %60, align 8, !tbaa !12
  %69 = load i64, ptr %27, align 8, !tbaa !23
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i64 [ %69, %67 ], [ %64, %63 ]
  %72 = icmp ult i64 %71, 9223372036854775807
  call void @llvm.assume(i1 %72)
  %73 = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %71, ptr %73, align 8, !tbaa !23
  store ptr %26, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %27, align 8, !tbaa !23
  store i8 0, ptr %26, align 8, !tbaa !12
  %74 = load ptr, ptr %53, align 8, !tbaa !34
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 32
  store ptr %75, ptr %53, align 8, !tbaa !34
  br label %79

76:                                               ; preds = %51
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %77 unwind label %100

77:                                               ; preds = %76
  %78 = load ptr, ptr %53, align 8, !tbaa !41, !noalias !82
  br label %79

79:                                               ; preds = %77, %70
  %80 = phi ptr [ %75, %70 ], [ %78, %77 ]
  %81 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %82 = load ptr, ptr %81, align 8, !tbaa !45, !noalias !82
  %83 = icmp eq ptr %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %52, i64 72
  %86 = load ptr, ptr %85, align 8, !tbaa !46, !noalias !82
  %87 = getelementptr inbounds i8, ptr %86, i64 -8
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 512
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi ptr [ %89, %84 ], [ %80, %79 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 -32
  %93 = load ptr, ptr %92, align 8, !tbaa !20
  %94 = load ptr, ptr %2, align 8, !tbaa !20
  %95 = icmp eq ptr %94, %26
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i64, ptr %26, align 8, !tbaa !12
  %98 = add i64 %97, 1
  call void @_ZdlPvm(ptr noundef %94, i64 noundef %98) #28
  br label %99

99:                                               ; preds = %90, %96
  ret ptr %93

100:                                              ; preds = %76, %48
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = load ptr, ptr %2, align 8, !tbaa !20
  %103 = icmp eq ptr %102, %26
  br i1 %103, label %43, label %38
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_write_floatEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %4 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %0)
          to label %5 unwind label %82

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %7 unwind label %82

7:                                                ; preds = %5
  %8 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !33

10:                                               ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %11 unwind label %84

11:                                               ; preds = %10
  %12 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds i8, ptr %18, i64 -32
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %22, ptr %16, align 8, !tbaa !16
  %23 = load ptr, ptr %3, align 8, !tbaa !20
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !23
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(1) %24, i64 %30, i1 false)
  br label %35

31:                                               ; preds = %21
  store ptr %23, ptr %16, align 8, !tbaa !20
  %32 = load i64, ptr %24, align 8, !tbaa !12
  store i64 %32, ptr %22, align 8, !tbaa !12
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !23
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i64 [ %34, %31 ], [ %28, %26 ]
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %38 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %36, ptr %39, align 8, !tbaa !23
  store ptr %24, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %37, align 8, !tbaa !23
  store i8 0, ptr %24, align 8, !tbaa !12
  %40 = load ptr, ptr %15, align 8, !tbaa !34
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %15, align 8, !tbaa !34
  br label %45

42:                                               ; preds = %13
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %84

43:                                               ; preds = %42
  %44 = load ptr, ptr %15, align 8, !tbaa !41, !noalias !85
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %41, %35 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !45, !noalias !85
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !46, !noalias !85
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = load ptr, ptr %3, align 8, !tbaa !20
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i64, ptr %61, align 8, !tbaa !12
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %56, %63
  %67 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %67, ptr %2, align 8, !tbaa !54
  %68 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %69 = getelementptr i8, ptr %67, i64 -24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds i8, ptr %2, i64 %70
  store ptr %68, ptr %71, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %6, align 8, !tbaa !54
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %73 = load ptr, ptr %72, align 8, !tbaa !20
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i64, ptr %74, align 8, !tbaa !12
  %78 = add i64 %77, 1
  call void @_ZdlPvm(ptr noundef %73, i64 noundef %78) #28
  br label %79

79:                                               ; preds = %66, %76
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %6, align 8, !tbaa !54
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %80) #15
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %81) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %59

82:                                               ; preds = %5, %1
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %92

84:                                               ; preds = %42, %10
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = load ptr, ptr %3, align 8, !tbaa !20
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i64, ptr %87, align 8, !tbaa !12
  %91 = add i64 %90, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %91) #28
  br label %92

92:                                               ; preds = %84, %89, %82
  %93 = phi { ptr, i32 } [ %83, %82 ], [ %85, %89 ], [ %85, %84 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %93
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1826sys__native_json_write_strEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14json_write_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %0, ptr %1)
  %4 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !33

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %7 unwind label %63

7:                                                ; preds = %6
  %8 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds i8, ptr %14, i64 -32
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %18, ptr %12, align 8, !tbaa !16
  %19 = load ptr, ptr %3, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !23
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  %26 = add nuw nsw i64 %24, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(1) %20, i64 %26, i1 false)
  br label %31

27:                                               ; preds = %17
  store ptr %19, ptr %12, align 8, !tbaa !20
  %28 = load i64, ptr %20, align 8, !tbaa !12
  store i64 %28, ptr %18, align 8, !tbaa !12
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !23
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i64 [ %30, %27 ], [ %24, %22 ]
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %34 = icmp ult i64 %32, 9223372036854775807
  call void @llvm.assume(i1 %34)
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %32, ptr %35, align 8, !tbaa !23
  store ptr %20, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %33, align 8, !tbaa !23
  store i8 0, ptr %20, align 8, !tbaa !12
  %36 = load ptr, ptr %11, align 8, !tbaa !34
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %37, ptr %11, align 8, !tbaa !34
  br label %41

38:                                               ; preds = %9
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %39 unwind label %63

39:                                               ; preds = %38
  %40 = load ptr, ptr %11, align 8, !tbaa !41, !noalias !88
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %37, %31 ], [ %40, %39 ]
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %44 = load ptr, ptr %43, align 8, !tbaa !45, !noalias !88
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !46, !noalias !88
  %49 = getelementptr inbounds i8, ptr %48, i64 -8
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 512
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi ptr [ %51, %46 ], [ %42, %41 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 -32
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = load ptr, ptr %3, align 8, !tbaa !20
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i64, ptr %57, align 8, !tbaa !12
  %61 = add i64 %60, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #28
  br label %62

62:                                               ; preds = %52, %59
  ret ptr %55

63:                                               ; preds = %38, %6
  %64 = landingpad { ptr, i32 }
          cleanup
  %65 = load ptr, ptr %3, align 8, !tbaa !20
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %66, align 8, !tbaa !12
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %65, i64 noundef %70) #28
  br label %71

71:                                               ; preds = %63, %68
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_write_arrayEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN12__apo_stdlib26json_write_array_fragmentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %14

10:                                               ; preds = %1, %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %11, ptr %2, align 8, !tbaa !16
  store i16 23899, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %13, align 2, !tbaa !12
  br label %14

14:                                               ; preds = %10, %8
  %15 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !33

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %18 unwind label %74

18:                                               ; preds = %17
  %19 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = getelementptr inbounds i8, ptr %25, i64 -32
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %49, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %29, ptr %23, align 8, !tbaa !16
  %30 = load ptr, ptr %2, align 8, !tbaa !20
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !23
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false)
  br label %42

38:                                               ; preds = %28
  store ptr %30, ptr %23, align 8, !tbaa !20
  %39 = load i64, ptr %31, align 8, !tbaa !12
  store i64 %39, ptr %29, align 8, !tbaa !12
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i64 [ %41, %38 ], [ %35, %33 ]
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %45 = icmp ult i64 %43, 9223372036854775807
  call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %43, ptr %46, align 8, !tbaa !23
  store ptr %31, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %44, align 8, !tbaa !23
  store i8 0, ptr %31, align 8, !tbaa !12
  %47 = load ptr, ptr %22, align 8, !tbaa !34
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %48, ptr %22, align 8, !tbaa !34
  br label %52

49:                                               ; preds = %20
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %50 unwind label %74

50:                                               ; preds = %49
  %51 = load ptr, ptr %22, align 8, !tbaa !41, !noalias !91
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi ptr [ %48, %42 ], [ %51, %50 ]
  %54 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %55 = load ptr, ptr %54, align 8, !tbaa !45, !noalias !91
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %21, i64 72
  %59 = load ptr, ptr %58, align 8, !tbaa !46, !noalias !91
  %60 = getelementptr inbounds i8, ptr %59, i64 -8
  %61 = load ptr, ptr %60, align 8, !tbaa !47
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 512
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi ptr [ %62, %57 ], [ %53, %52 ]
  %65 = getelementptr inbounds i8, ptr %64, i64 -32
  %66 = load ptr, ptr %65, align 8, !tbaa !20
  %67 = load ptr, ptr %2, align 8, !tbaa !20
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i64, ptr %68, align 8, !tbaa !12
  %72 = add i64 %71, 1
  call void @_ZdlPvm(ptr noundef %67, i64 noundef %72) #28
  br label %73

73:                                               ; preds = %63, %70
  ret ptr %66

74:                                               ; preds = %49, %17
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = load ptr, ptr %2, align 8, !tbaa !20
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !12
  %81 = add i64 %80, 1
  call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #28
  br label %82

82:                                               ; preds = %74, %79
  resume { ptr, i32 } %75
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1829sys__native_json_write_objectEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector.6", align 8
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %11, label %10

10:                                               ; preds = %1, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %156

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !94
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13)
          to label %14 unwind label %53

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %55

26:                                               ; preds = %147, %14
  %27 = load ptr, ptr %2, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %156, label %31

31:                                               ; preds = %26
  %32 = ptrtoint ptr %29 to i64
  %33 = ptrtoint ptr %27 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 6
  %36 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %35, i1 true)
  %37 = shl nuw nsw i64 %36, 1
  %38 = xor i64 %37, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_(ptr %27, ptr %29, i64 noundef %38)
          to label %39 unwind label %53

39:                                               ; preds = %31
  %40 = icmp sgt i64 %34, 1024
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = getelementptr inbounds nuw i8, ptr %27, i64 1024
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_(ptr %27, ptr nonnull %42)
          to label %43 unwind label %53

43:                                               ; preds = %41
  %44 = icmp eq ptr %42, %29
  br i1 %44, label %156, label %45

45:                                               ; preds = %43, %47
  %46 = phi ptr [ %48, %47 ], [ %42, %43 ]
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr nonnull %46)
          to label %47 unwind label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = icmp eq ptr %48, %29
  br i1 %49, label %156, label %45, !llvm.loop !96

50:                                               ; preds = %39
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_(ptr %27, ptr %29)
          to label %156 unwind label %53

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %260

53:                                               ; preds = %11, %156, %31, %41, %50
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %260

55:                                               ; preds = %18, %147
  %56 = phi ptr [ %16, %18 ], [ %148, %147 ]
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %19, ptr %3, align 8, !tbaa !16
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %60 = load i64, ptr %59, align 8, !tbaa !23
  %61 = icmp ult i64 %60, 9223372036854775807
  call void @llvm.assume(i1 %61)
  %62 = icmp samesign ugt i64 %60, 15
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = add nuw nsw i64 %60, 1
  %65 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %64) #27
          to label %66 unwind label %150

66:                                               ; preds = %63
  store ptr %65, ptr %3, align 8, !tbaa !20
  store i64 %60, ptr %19, align 8, !tbaa !12
  br label %73

67:                                               ; preds = %55
  %68 = icmp eq i64 %60, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = add nuw nsw i64 %60, 1
  br label %73

71:                                               ; preds = %67
  %72 = load i8, ptr %58, align 1, !tbaa !12
  store i8 %72, ptr %19, align 8, !tbaa !12
  br label %76

73:                                               ; preds = %69, %66
  %74 = phi i64 [ %70, %69 ], [ %64, %66 ]
  %75 = phi ptr [ %19, %69 ], [ %65, %66 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %75, ptr noundef nonnull align 1 dereferenceable(1) %58, i64 %74, i1 false)
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %19, %71 ], [ %75, %73 ]
  store i64 %60, ptr %20, align 8, !tbaa !23
  %78 = getelementptr inbounds nuw i8, ptr %56, i64 40
  store ptr %22, ptr %21, align 8, !tbaa !16
  %79 = load ptr, ptr %78, align 8, !tbaa !20
  %80 = getelementptr inbounds nuw i8, ptr %56, i64 48
  %81 = load i64, ptr %80, align 8, !tbaa !23
  %82 = icmp ult i64 %81, 9223372036854775807
  call void @llvm.assume(i1 %82)
  %83 = icmp samesign ugt i64 %81, 15
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = add nuw nsw i64 %81, 1
  %86 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %85) #27
          to label %87 unwind label %97

87:                                               ; preds = %84
  store ptr %86, ptr %21, align 8, !tbaa !20
  store i64 %81, ptr %22, align 8, !tbaa !12
  br label %94

88:                                               ; preds = %76
  %89 = icmp eq i64 %81, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = add nuw nsw i64 %81, 1
  br label %94

92:                                               ; preds = %88
  %93 = load i8, ptr %79, align 1, !tbaa !12
  store i8 %93, ptr %22, align 8, !tbaa !12
  br label %103

94:                                               ; preds = %90, %87
  %95 = phi i64 [ %91, %90 ], [ %85, %87 ]
  %96 = phi ptr [ %22, %90 ], [ %86, %87 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull align 1 dereferenceable(1) %79, i64 %95, i1 false)
  br label %103

97:                                               ; preds = %84
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = icmp eq ptr %77, %19
  br i1 %99, label %154, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %19, align 8, !tbaa !12
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef nonnull %77, i64 noundef %102) #28
  br label %154

103:                                              ; preds = %94, %92
  store i64 %81, ptr %23, align 8, !tbaa !23
  %104 = load ptr, ptr %24, align 8, !tbaa !71
  %105 = load ptr, ptr %25, align 8, !tbaa !73
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %134, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds nuw i8, ptr %104, i64 16
  store ptr %108, ptr %104, align 8, !tbaa !16
  %109 = load ptr, ptr %3, align 8, !tbaa !20
  %110 = icmp eq ptr %109, %19
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = icmp samesign ult i64 %60, 16
  call void @llvm.assume(i1 %112)
  %113 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %108, ptr noundef nonnull align 8 dereferenceable(1) %19, i64 %113, i1 false)
  br label %116

114:                                              ; preds = %107
  store ptr %109, ptr %104, align 8, !tbaa !20
  %115 = load i64, ptr %19, align 8, !tbaa !12
  store i64 %115, ptr %108, align 8, !tbaa !12
  br label %116

116:                                              ; preds = %114, %111
  %117 = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i64 %60, ptr %117, align 8, !tbaa !23
  store ptr %19, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %20, align 8, !tbaa !23
  store i8 0, ptr %19, align 8, !tbaa !12
  %118 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %119 = getelementptr inbounds nuw i8, ptr %104, i64 48
  store ptr %119, ptr %118, align 8, !tbaa !16
  %120 = load ptr, ptr %21, align 8, !tbaa !20
  %121 = icmp eq ptr %120, %22
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, ptr %23, align 8, !tbaa !23
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  %125 = add nuw nsw i64 %123, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %119, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %125, i1 false)
  br label %129

126:                                              ; preds = %116
  store ptr %120, ptr %118, align 8, !tbaa !20
  %127 = load i64, ptr %22, align 8, !tbaa !12
  store i64 %127, ptr %119, align 8, !tbaa !12
  %128 = load i64, ptr %23, align 8, !tbaa !23
  br label %129

129:                                              ; preds = %122, %126
  %130 = phi i64 [ %128, %126 ], [ %123, %122 ]
  %131 = icmp ult i64 %130, 9223372036854775807
  call void @llvm.assume(i1 %131)
  %132 = getelementptr inbounds nuw i8, ptr %104, i64 40
  store i64 %130, ptr %132, align 8, !tbaa !23
  store ptr %22, ptr %21, align 8, !tbaa !20
  store i64 0, ptr %23, align 8, !tbaa !23
  store i8 0, ptr %22, align 8, !tbaa !12
  %133 = getelementptr inbounds nuw i8, ptr %104, i64 64
  store ptr %133, ptr %24, align 8, !tbaa !71
  br label %141

134:                                              ; preds = %103
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %135 unwind label %152

135:                                              ; preds = %134
  %136 = load ptr, ptr %21, align 8, !tbaa !20
  %137 = icmp eq ptr %136, %22
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i64, ptr %22, align 8, !tbaa !12
  %140 = add i64 %139, 1
  call void @_ZdlPvm(ptr noundef %136, i64 noundef %140) #28
  br label %141

141:                                              ; preds = %135, %129, %138
  %142 = load ptr, ptr %3, align 8, !tbaa !20
  %143 = icmp eq ptr %142, %19
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i64, ptr %19, align 8, !tbaa !12
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %146) #28
  br label %147

147:                                              ; preds = %141, %144
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %148 = load ptr, ptr %56, align 8, !tbaa !95
  %149 = icmp eq ptr %148, null
  br i1 %149, label %26, label %55

150:                                              ; preds = %63
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %154

152:                                              ; preds = %134
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #15
  br label %154

154:                                              ; preds = %97, %150, %100, %152
  %155 = phi { ptr, i32 } [ %153, %152 ], [ %151, %150 ], [ %98, %100 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %260

156:                                              ; preds = %47, %43, %26, %50, %10
  invoke void @_ZN12__apo_stdlib27json_write_object_fragmentsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %157 unwind label %53

157:                                              ; preds = %156
  %158 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %163, !prof !33

160:                                              ; preds = %157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %161 unwind label %252

161:                                              ; preds = %160
  %162 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %163

163:                                              ; preds = %161, %157
  %164 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 48
  %166 = load ptr, ptr %165, align 8, !tbaa !34
  %167 = getelementptr inbounds nuw i8, ptr %164, i64 64
  %168 = load ptr, ptr %167, align 8, !tbaa !40
  %169 = getelementptr inbounds i8, ptr %168, i64 -32
  %170 = icmp eq ptr %166, %169
  br i1 %170, label %192, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds nuw i8, ptr %166, i64 16
  store ptr %172, ptr %166, align 8, !tbaa !16
  %173 = load ptr, ptr %4, align 8, !tbaa !20
  %174 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %175 = icmp eq ptr %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %178 = load i64, ptr %177, align 8, !tbaa !23
  %179 = icmp ult i64 %178, 16
  call void @llvm.assume(i1 %179)
  %180 = add nuw nsw i64 %178, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %172, ptr noundef nonnull align 8 dereferenceable(1) %174, i64 %180, i1 false)
  br label %185

181:                                              ; preds = %171
  store ptr %173, ptr %166, align 8, !tbaa !20
  %182 = load i64, ptr %174, align 8, !tbaa !12
  store i64 %182, ptr %172, align 8, !tbaa !12
  %183 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %184 = load i64, ptr %183, align 8, !tbaa !23
  br label %185

185:                                              ; preds = %181, %176
  %186 = phi i64 [ %184, %181 ], [ %178, %176 ]
  %187 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %188 = icmp ult i64 %186, 9223372036854775807
  call void @llvm.assume(i1 %188)
  %189 = getelementptr inbounds nuw i8, ptr %166, i64 8
  store i64 %186, ptr %189, align 8, !tbaa !23
  store ptr %174, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %187, align 8, !tbaa !23
  store i8 0, ptr %174, align 8, !tbaa !12
  %190 = load ptr, ptr %165, align 8, !tbaa !34
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 32
  store ptr %191, ptr %165, align 8, !tbaa !34
  br label %195

192:                                              ; preds = %163
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %164, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %193 unwind label %252

193:                                              ; preds = %192
  %194 = load ptr, ptr %165, align 8, !tbaa !41, !noalias !97
  br label %195

195:                                              ; preds = %193, %185
  %196 = phi ptr [ %191, %185 ], [ %194, %193 ]
  %197 = getelementptr inbounds nuw i8, ptr %164, i64 56
  %198 = load ptr, ptr %197, align 8, !tbaa !45, !noalias !97
  %199 = icmp eq ptr %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = getelementptr inbounds nuw i8, ptr %164, i64 72
  %202 = load ptr, ptr %201, align 8, !tbaa !46, !noalias !97
  %203 = getelementptr inbounds i8, ptr %202, i64 -8
  %204 = load ptr, ptr %203, align 8, !tbaa !47
  %205 = getelementptr inbounds nuw i8, ptr %204, i64 512
  br label %206

206:                                              ; preds = %200, %195
  %207 = phi ptr [ %205, %200 ], [ %196, %195 ]
  %208 = getelementptr inbounds i8, ptr %207, i64 -32
  %209 = load ptr, ptr %208, align 8, !tbaa !20
  %210 = load ptr, ptr %4, align 8, !tbaa !20
  %211 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %216, label %213

213:                                              ; preds = %206
  %214 = load i64, ptr %211, align 8, !tbaa !12
  %215 = add i64 %214, 1
  call void @_ZdlPvm(ptr noundef %210, i64 noundef %215) #28
  br label %216

216:                                              ; preds = %206, %213
  %217 = load ptr, ptr %2, align 8, !tbaa !69
  %218 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %219 = load ptr, ptr %218, align 8, !tbaa !71
  %220 = icmp eq ptr %217, %219
  br i1 %220, label %242, label %221

221:                                              ; preds = %216, %237
  %222 = phi ptr [ %238, %237 ], [ %217, %216 ]
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %224 = load ptr, ptr %223, align 8, !tbaa !20
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 48
  %226 = icmp eq ptr %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %221
  %228 = load i64, ptr %225, align 8, !tbaa !12
  %229 = add i64 %228, 1
  call void @_ZdlPvm(ptr noundef %224, i64 noundef %229) #28
  br label %230

230:                                              ; preds = %221, %227
  %231 = load ptr, ptr %222, align 8, !tbaa !20
  %232 = getelementptr inbounds nuw i8, ptr %222, i64 16
  %233 = icmp eq ptr %231, %232
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load i64, ptr %232, align 8, !tbaa !12
  %236 = add i64 %235, 1
  call void @_ZdlPvm(ptr noundef %231, i64 noundef %236) #28
  br label %237

237:                                              ; preds = %230, %234
  %238 = getelementptr inbounds nuw i8, ptr %222, i64 64
  %239 = icmp eq ptr %238, %219
  br i1 %239, label %240, label %221, !llvm.loop !72

240:                                              ; preds = %237
  %241 = load ptr, ptr %2, align 8, !tbaa !69
  br label %242

242:                                              ; preds = %240, %216
  %243 = phi ptr [ %241, %240 ], [ %217, %216 ]
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %247 = load ptr, ptr %246, align 8, !tbaa !73
  %248 = ptrtoint ptr %247 to i64
  %249 = ptrtoint ptr %243 to i64
  %250 = sub i64 %248, %249
  call void @_ZdlPvm(ptr noundef nonnull %243, i64 noundef %250) #28
  br label %251

251:                                              ; preds = %242, %245
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %209

252:                                              ; preds = %192, %160
  %253 = landingpad { ptr, i32 }
          cleanup
  %254 = load ptr, ptr %4, align 8, !tbaa !20
  %255 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %256 = icmp eq ptr %254, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = load i64, ptr %255, align 8, !tbaa !12
  %259 = add i64 %258, 1
  call void @_ZdlPvm(ptr noundef %254, i64 noundef %259) #28
  br label %260

260:                                              ; preds = %252, %51, %53, %257, %154
  %261 = phi { ptr, i32 } [ %155, %154 ], [ %253, %257 ], [ %54, %53 ], [ %52, %51 ], [ %253, %252 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %261
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1834sys__native_json_write_array_startEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !16
  store i8 91, ptr %2, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !33

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %59

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !16
  %20 = load ptr, ptr %1, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !23
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !20
  %27 = load i64, ptr %2, align 8, !tbaa !12
  store i64 %27, ptr %19, align 8, !tbaa !12
  %28 = load i64, ptr %3, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !23
  store ptr %2, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %3, align 8, !tbaa !23
  store i8 0, ptr %2, align 8, !tbaa !12
  %33 = load ptr, ptr %12, align 8, !tbaa !34
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !34
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %59

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !41, !noalias !100
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !45, !noalias !100
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !46, !noalias !100
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !12
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #28
  br label %58

58:                                               ; preds = %49, %55
  ret ptr %52

59:                                               ; preds = %35, %7
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %2, align 8, !tbaa !12
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1832sys__native_json_write_array_endEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !16
  store i8 93, ptr %2, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !33

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %59

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !16
  %20 = load ptr, ptr %1, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !23
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !20
  %27 = load i64, ptr %2, align 8, !tbaa !12
  store i64 %27, ptr %19, align 8, !tbaa !12
  %28 = load i64, ptr %3, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !23
  store ptr %2, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %3, align 8, !tbaa !23
  store i8 0, ptr %2, align 8, !tbaa !12
  %33 = load ptr, ptr %12, align 8, !tbaa !34
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !34
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %59

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !41, !noalias !103
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !45, !noalias !103
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !46, !noalias !103
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !12
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #28
  br label %58

58:                                               ; preds = %49, %55
  ret ptr %52

59:                                               ; preds = %35, %7
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %2, align 8, !tbaa !12
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1835sys__native_json_write_object_startEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !16
  store i8 123, ptr %2, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !33

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %59

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !16
  %20 = load ptr, ptr %1, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !23
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !20
  %27 = load i64, ptr %2, align 8, !tbaa !12
  store i64 %27, ptr %19, align 8, !tbaa !12
  %28 = load i64, ptr %3, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !23
  store ptr %2, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %3, align 8, !tbaa !23
  store i8 0, ptr %2, align 8, !tbaa !12
  %33 = load ptr, ptr %12, align 8, !tbaa !34
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !34
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %59

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !41, !noalias !106
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !45, !noalias !106
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !46, !noalias !106
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !12
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #28
  br label %58

58:                                               ; preds = %49, %55
  ret ptr %52

59:                                               ; preds = %35, %7
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %2, align 8, !tbaa !12
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1833sys__native_json_write_object_endEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !16
  store i8 125, ptr %2, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !12
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !33

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %59

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !16
  %20 = load ptr, ptr %1, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !23
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !20
  %27 = load i64, ptr %2, align 8, !tbaa !12
  store i64 %27, ptr %19, align 8, !tbaa !12
  %28 = load i64, ptr %3, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !23
  store ptr %2, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %3, align 8, !tbaa !23
  store i8 0, ptr %2, align 8, !tbaa !12
  %33 = load ptr, ptr %12, align 8, !tbaa !34
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !34
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %59

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !41, !noalias !109
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !45, !noalias !109
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !46, !noalias !109
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !12
  %57 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %57) #28
  br label %58

58:                                               ; preds = %49, %55
  ret ptr %52

59:                                               ; preds = %35, %7
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %1, align 8, !tbaa !20
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %2, align 8, !tbaa !12
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %61, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %59, %63
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i32 @sys__native_json_parse_bool(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i32 @_ZN12__apo_stdlib15json_parse_boolESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i32 %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef i64 @sys__native_json_parse_int(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef i64 @_ZN12__apo_stdlib14json_parse_intESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret i64 %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef double @sys__native_json_parse_float(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef double @_ZN12__apo_stdlib16json_parse_floatESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret double %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_parse_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14json_parse_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noalias noundef nonnull ptr @sys__native_json_parse_array(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector", align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %7, ptr %0)
  %8 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %11 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %12, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %8, align 8, !tbaa !54
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load <2 x ptr>, ptr %2, align 16, !tbaa !47
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !47
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load ptr, ptr %16, align 16, !tbaa !56
  store ptr %17, ptr %14, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %8
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_parse_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib24json_parse_object_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_bool(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_int(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_intEl(i64 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_float(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_str(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ 0, %1 ]
  %7 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %6, ptr %0)
  ret ptr %7
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_array(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_array_start() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_array_end() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_object_start() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv()
  ret ptr %1
}

; Function Attrs: mustprogress sspstrong uwtable
define dso_local noundef ptr @sys__native_json_write_object_end() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv()
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %4, align 8, !tbaa !12
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp ugt i64 %1, 9223372036854775806
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %10 unwind label %19

10:                                               ; preds = %9
  unreachable

11:                                               ; preds = %7
  %12 = tail call i64 @llvm.umax.i64(i64 %1, i64 30)
  %13 = add nuw nsw i64 %12, 1
  %14 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #27
          to label %15 unwind label %19

15:                                               ; preds = %11
  store i8 0, ptr %14, align 1, !tbaa !12
  store ptr %14, ptr %0, align 8, !tbaa !20
  store i64 %12, ptr %4, align 8, !tbaa !12
  br label %18

16:                                               ; preds = %3
  %17 = icmp eq i64 %1, 0
  br i1 %17, label %245, label %18

18:                                               ; preds = %15, %16
  br label %21

19:                                               ; preds = %11, %9
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %246

21:                                               ; preds = %18, %234
  %22 = phi i64 [ %239, %234 ], [ 0, %18 ]
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !12
  %25 = icmp eq i8 %24, 92
  br i1 %25, label %26, label %200

26:                                               ; preds = %21
  %27 = add nuw i64 %22, 1
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %29, label %200

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %32 = load i64, ptr %5, align 8, !tbaa !23
  %33 = icmp ult i64 %32, 9223372036854775807
  tail call void @llvm.assume(i1 %33)
  %34 = add nuw nsw i64 %32, 1
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %4
  %37 = load i64, ptr %4, align 8
  switch i8 %31, label %174 [
    i8 110, label %38
    i8 114, label %70
    i8 116, label %96
    i8 92, label %122
    i8 34, label %148
  ]

38:                                               ; preds = %29
  br i1 %36, label %39, label %41

39:                                               ; preds = %38
  %40 = icmp samesign ugt i64 %32, 14
  br i1 %40, label %45, label %63

41:                                               ; preds = %38
  %42 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %42)
  %43 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %43)
  %44 = icmp samesign ult i64 %32, %37
  br i1 %44, label %63, label %45

45:                                               ; preds = %41, %39
  %46 = phi i64 [ %37, %41 ], [ 15, %39 ]
  %47 = icmp eq i64 %34, 9223372036854775807
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %181, %155, %129, %103, %77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %49 unwind label %68

49:                                               ; preds = %48
  unreachable

50:                                               ; preds = %45
  %51 = shl nuw i64 %46, 1
  %52 = icmp ult i64 %34, %51
  %53 = tail call i64 @llvm.umin.i64(i64 %51, i64 9223372036854775806)
  %54 = select i1 %52, i64 %53, i64 %34
  %55 = add nuw nsw i64 %54, 1
  %56 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %55) #27
          to label %57 unwind label %66

57:                                               ; preds = %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %56, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %58, label %60

58:                                               ; preds = %57
  %59 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %59)
  br label %62

60:                                               ; preds = %57
  %61 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %61) #28
  br label %62

62:                                               ; preds = %60, %58
  store ptr %56, ptr %0, align 8, !tbaa !20
  store i64 %54, ptr %4, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %39, %41, %62
  %64 = phi ptr [ %35, %41 ], [ %56, %62 ], [ %35, %39 ]
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 %32
  store i8 10, ptr %65, align 1, !tbaa !12
  br label %234

66:                                               ; preds = %50, %80, %106, %132, %158, %184
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %246

68:                                               ; preds = %48
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %246

70:                                               ; preds = %29
  br i1 %36, label %71, label %73

71:                                               ; preds = %70
  %72 = icmp samesign ugt i64 %32, 14
  br i1 %72, label %77, label %93

73:                                               ; preds = %70
  %74 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %74)
  %75 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %75)
  %76 = icmp samesign ult i64 %32, %37
  br i1 %76, label %93, label %77

77:                                               ; preds = %73, %71
  %78 = phi i64 [ %37, %73 ], [ 15, %71 ]
  %79 = icmp eq i64 %34, 9223372036854775807
  br i1 %79, label %48, label %80

80:                                               ; preds = %77
  %81 = shl nuw i64 %78, 1
  %82 = icmp ult i64 %34, %81
  %83 = tail call i64 @llvm.umin.i64(i64 %81, i64 9223372036854775806)
  %84 = select i1 %82, i64 %83, i64 %34
  %85 = add nuw nsw i64 %84, 1
  %86 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %85) #27
          to label %87 unwind label %66

87:                                               ; preds = %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %86, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %88, label %90

88:                                               ; preds = %87
  %89 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %89)
  br label %92

90:                                               ; preds = %87
  %91 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %91) #28
  br label %92

92:                                               ; preds = %90, %88
  store ptr %86, ptr %0, align 8, !tbaa !20
  store i64 %84, ptr %4, align 8, !tbaa !12
  br label %93

93:                                               ; preds = %71, %73, %92
  %94 = phi ptr [ %35, %73 ], [ %86, %92 ], [ %35, %71 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 %32
  store i8 13, ptr %95, align 1, !tbaa !12
  br label %234

96:                                               ; preds = %29
  br i1 %36, label %97, label %99

97:                                               ; preds = %96
  %98 = icmp samesign ugt i64 %32, 14
  br i1 %98, label %103, label %119

99:                                               ; preds = %96
  %100 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %100)
  %101 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %101)
  %102 = icmp samesign ult i64 %32, %37
  br i1 %102, label %119, label %103

103:                                              ; preds = %99, %97
  %104 = phi i64 [ %37, %99 ], [ 15, %97 ]
  %105 = icmp eq i64 %34, 9223372036854775807
  br i1 %105, label %48, label %106

106:                                              ; preds = %103
  %107 = shl nuw i64 %104, 1
  %108 = icmp ult i64 %34, %107
  %109 = tail call i64 @llvm.umin.i64(i64 %107, i64 9223372036854775806)
  %110 = select i1 %108, i64 %109, i64 %34
  %111 = add nuw nsw i64 %110, 1
  %112 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %111) #27
          to label %113 unwind label %66

113:                                              ; preds = %106
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %114, label %116

114:                                              ; preds = %113
  %115 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %115)
  br label %118

116:                                              ; preds = %113
  %117 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %117) #28
  br label %118

118:                                              ; preds = %116, %114
  store ptr %112, ptr %0, align 8, !tbaa !20
  store i64 %110, ptr %4, align 8, !tbaa !12
  br label %119

119:                                              ; preds = %97, %99, %118
  %120 = phi ptr [ %35, %99 ], [ %112, %118 ], [ %35, %97 ]
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 %32
  store i8 9, ptr %121, align 1, !tbaa !12
  br label %234

122:                                              ; preds = %29
  br i1 %36, label %123, label %125

123:                                              ; preds = %122
  %124 = icmp samesign ugt i64 %32, 14
  br i1 %124, label %129, label %145

125:                                              ; preds = %122
  %126 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %126)
  %127 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %127)
  %128 = icmp samesign ult i64 %32, %37
  br i1 %128, label %145, label %129

129:                                              ; preds = %125, %123
  %130 = phi i64 [ %37, %125 ], [ 15, %123 ]
  %131 = icmp eq i64 %34, 9223372036854775807
  br i1 %131, label %48, label %132

132:                                              ; preds = %129
  %133 = shl nuw i64 %130, 1
  %134 = icmp ult i64 %34, %133
  %135 = tail call i64 @llvm.umin.i64(i64 %133, i64 9223372036854775806)
  %136 = select i1 %134, i64 %135, i64 %34
  %137 = add nuw nsw i64 %136, 1
  %138 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %137) #27
          to label %139 unwind label %66

139:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %138, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %140, label %142

140:                                              ; preds = %139
  %141 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %141)
  br label %144

142:                                              ; preds = %139
  %143 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %143) #28
  br label %144

144:                                              ; preds = %142, %140
  store ptr %138, ptr %0, align 8, !tbaa !20
  store i64 %136, ptr %4, align 8, !tbaa !12
  br label %145

145:                                              ; preds = %123, %125, %144
  %146 = phi ptr [ %35, %125 ], [ %138, %144 ], [ %35, %123 ]
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %32
  store i8 92, ptr %147, align 1, !tbaa !12
  br label %234

148:                                              ; preds = %29
  br i1 %36, label %149, label %151

149:                                              ; preds = %148
  %150 = icmp samesign ugt i64 %32, 14
  br i1 %150, label %155, label %171

151:                                              ; preds = %148
  %152 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %152)
  %153 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %153)
  %154 = icmp samesign ult i64 %32, %37
  br i1 %154, label %171, label %155

155:                                              ; preds = %151, %149
  %156 = phi i64 [ %37, %151 ], [ 15, %149 ]
  %157 = icmp eq i64 %34, 9223372036854775807
  br i1 %157, label %48, label %158

158:                                              ; preds = %155
  %159 = shl nuw i64 %156, 1
  %160 = icmp ult i64 %34, %159
  %161 = tail call i64 @llvm.umin.i64(i64 %159, i64 9223372036854775806)
  %162 = select i1 %160, i64 %161, i64 %34
  %163 = add nuw nsw i64 %162, 1
  %164 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %163) #27
          to label %165 unwind label %66

165:                                              ; preds = %158
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %164, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %166, label %168

166:                                              ; preds = %165
  %167 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %167)
  br label %170

168:                                              ; preds = %165
  %169 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %169) #28
  br label %170

170:                                              ; preds = %168, %166
  store ptr %164, ptr %0, align 8, !tbaa !20
  store i64 %162, ptr %4, align 8, !tbaa !12
  br label %171

171:                                              ; preds = %149, %151, %170
  %172 = phi ptr [ %35, %151 ], [ %164, %170 ], [ %35, %149 ]
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 %32
  store i8 34, ptr %173, align 1, !tbaa !12
  br label %234

174:                                              ; preds = %29
  br i1 %36, label %175, label %177

175:                                              ; preds = %174
  %176 = icmp samesign ugt i64 %32, 14
  br i1 %176, label %181, label %197

177:                                              ; preds = %174
  %178 = icmp samesign ugt i64 %37, 14
  tail call void @llvm.assume(i1 %178)
  %179 = icmp ult i64 %37, 9223372036854775807
  tail call void @llvm.assume(i1 %179)
  %180 = icmp samesign ult i64 %32, %37
  br i1 %180, label %197, label %181

181:                                              ; preds = %177, %175
  %182 = phi i64 [ %37, %177 ], [ 15, %175 ]
  %183 = icmp eq i64 %34, 9223372036854775807
  br i1 %183, label %48, label %184

184:                                              ; preds = %181
  %185 = shl nuw i64 %182, 1
  %186 = icmp ult i64 %34, %185
  %187 = tail call i64 @llvm.umin.i64(i64 %185, i64 9223372036854775806)
  %188 = select i1 %186, i64 %187, i64 %34
  %189 = add nuw nsw i64 %188, 1
  %190 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %189) #27
          to label %191 unwind label %66

191:                                              ; preds = %184
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %190, ptr align 1 %35, i64 %32, i1 false)
  br i1 %36, label %192, label %194

192:                                              ; preds = %191
  %193 = icmp samesign ult i64 %32, 16
  tail call void @llvm.assume(i1 %193)
  br label %196

194:                                              ; preds = %191
  %195 = add i64 %37, 1
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %195) #28
  br label %196

196:                                              ; preds = %194, %192
  store ptr %190, ptr %0, align 8, !tbaa !20
  store i64 %188, ptr %4, align 8, !tbaa !12
  br label %197

197:                                              ; preds = %175, %177, %196
  %198 = phi ptr [ %35, %177 ], [ %190, %196 ], [ %35, %175 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 %32
  store i8 %31, ptr %199, align 1, !tbaa !12
  br label %234

200:                                              ; preds = %26, %21
  %201 = load i64, ptr %5, align 8, !tbaa !23
  %202 = icmp ult i64 %201, 9223372036854775807
  tail call void @llvm.assume(i1 %202)
  %203 = add nuw nsw i64 %201, 1
  %204 = load ptr, ptr %0, align 8, !tbaa !20
  %205 = icmp eq ptr %204, %4
  %206 = load i64, ptr %4, align 8
  br i1 %205, label %207, label %209

207:                                              ; preds = %200
  %208 = icmp samesign ugt i64 %201, 14
  br i1 %208, label %213, label %231

209:                                              ; preds = %200
  %210 = icmp samesign ugt i64 %206, 14
  tail call void @llvm.assume(i1 %210)
  %211 = icmp ult i64 %206, 9223372036854775807
  tail call void @llvm.assume(i1 %211)
  %212 = icmp samesign ult i64 %201, %206
  br i1 %212, label %231, label %213

213:                                              ; preds = %209, %207
  %214 = phi i64 [ %206, %209 ], [ 15, %207 ]
  %215 = icmp eq i64 %203, 9223372036854775807
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %217 unwind label %243

217:                                              ; preds = %216
  unreachable

218:                                              ; preds = %213
  %219 = shl nuw i64 %214, 1
  %220 = icmp ult i64 %203, %219
  %221 = tail call i64 @llvm.umin.i64(i64 %219, i64 9223372036854775806)
  %222 = select i1 %220, i64 %221, i64 %203
  %223 = add nuw nsw i64 %222, 1
  %224 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %223) #27
          to label %225 unwind label %241

225:                                              ; preds = %218
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %224, ptr align 1 %204, i64 %201, i1 false)
  br i1 %205, label %226, label %228

226:                                              ; preds = %225
  %227 = icmp samesign ult i64 %201, 16
  tail call void @llvm.assume(i1 %227)
  br label %230

228:                                              ; preds = %225
  %229 = add i64 %206, 1
  tail call void @_ZdlPvm(ptr noundef %204, i64 noundef %229) #28
  br label %230

230:                                              ; preds = %228, %226
  store ptr %224, ptr %0, align 8, !tbaa !20
  store i64 %222, ptr %4, align 8, !tbaa !12
  br label %231

231:                                              ; preds = %207, %209, %230
  %232 = phi ptr [ %204, %209 ], [ %224, %230 ], [ %204, %207 ]
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %201
  store i8 %24, ptr %233, align 1, !tbaa !12
  br label %234

234:                                              ; preds = %231, %197, %171, %145, %119, %93, %63
  %235 = phi i64 [ %203, %231 ], [ %34, %197 ], [ %34, %171 ], [ %34, %145 ], [ %34, %119 ], [ %34, %93 ], [ %34, %63 ]
  %236 = phi i64 [ %22, %231 ], [ %27, %197 ], [ %27, %171 ], [ %27, %145 ], [ %27, %119 ], [ %27, %93 ], [ %27, %63 ]
  store i64 %235, ptr %5, align 8, !tbaa !23
  %237 = load ptr, ptr %0, align 8, !tbaa !20
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 %235
  store i8 0, ptr %238, align 1, !tbaa !12
  %239 = add nuw i64 %236, 1
  %240 = icmp ult i64 %239, %1
  br i1 %240, label %21, label %245, !llvm.loop !112

241:                                              ; preds = %218
  %242 = landingpad { ptr, i32 }
          cleanup
  br label %246

243:                                              ; preds = %216
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %246

245:                                              ; preds = %234, %16
  ret void

246:                                              ; preds = %241, %243, %66, %68, %19
  %247 = phi { ptr, i32 } [ %20, %19 ], [ %69, %68 ], [ %67, %66 ], [ %242, %241 ], [ %244, %243 ]
  %248 = load ptr, ptr %0, align 8, !tbaa !20
  %249 = icmp eq ptr %248, %4
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = load i64, ptr %4, align 8, !tbaa !12
  %252 = add i64 %251, 1
  tail call void @_ZdlPvm(ptr noundef %248, i64 noundef %252) #28
  br label %253

253:                                              ; preds = %246, %250
  resume { ptr, i32 } %247
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !47, !noalias !113
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !47
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !116, !noalias !113
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !116
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !47, !noalias !117
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !47
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !116, !noalias !117
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !116
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef nonnull %2, ptr dead_on_return noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !120
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !121
  %21 = load ptr, ptr %9, align 8, !tbaa !122
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #28
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !123

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !120
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !124
  %35 = shl i64 %34, 3
  call void @_ZdlPvm(ptr noundef %32, i64 noundef %35) #28
  br label %36

36:                                               ; preds = %16, %31
  ret void

37:                                               ; preds = %1
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #29
  unreachable
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !124
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !74

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #27
  store ptr %12, ptr %0, align 8, !tbaa !120
  %13 = sub nsw i64 %5, %10
  %14 = lshr i64 %13, 1
  %15 = getelementptr inbounds nuw ptr, ptr %12, i64 %14
  %16 = shl nuw nsw i64 %10, 3
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  br label %18

18:                                               ; preds = %9, %21
  %19 = phi ptr [ %22, %21 ], [ %15, %9 ]
  %20 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %21 unwind label %24

21:                                               ; preds = %18
  store ptr %20, ptr %19, align 8, !tbaa !47
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !125

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #15
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #28
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !123

34:                                               ; preds = %29, %24
  invoke void @__cxa_rethrow() #30
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
  tail call void @__clang_call_terminate(ptr %39) #29
  unreachable

40:                                               ; preds = %34
  unreachable

41:                                               ; preds = %35
  %42 = extractvalue { ptr, i32 } %36, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #15
  %44 = load ptr, ptr %0, align 8, !tbaa !120
  %45 = load i64, ptr %6, align 8, !tbaa !124
  %46 = shl i64 %45, 3
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %46) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #30
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
  store ptr %15, ptr %52, align 8, !tbaa !46
  %53 = load ptr, ptr %15, align 8, !tbaa !47
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !45
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !126
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !46
  %60 = load ptr, ptr %58, align 8, !tbaa !47
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !45
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !126
  store ptr %53, ptr %51, align 8, !tbaa !127
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !34
  ret void

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #29
  unreachable

69:                                               ; preds = %41
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr dead_on_return noundef %1, ptr dead_on_return noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !46
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %146
  %11 = load ptr, ptr %4, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %148, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !41
  br i1 %15, label %181, label %150

17:                                               ; preds = %3, %146
  %18 = phi ptr [ %147, %146 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8, !tbaa !12
  %25 = add i64 %24, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %25) #28
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %29, align 8, !tbaa !12
  %33 = add i64 %32, 1
  tail call void @_ZdlPvm(ptr noundef %28, i64 noundef %33) #28
  br label %34

34:                                               ; preds = %26, %31
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 80
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, ptr %37, align 8, !tbaa !12
  %41 = add i64 %40, 1
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %41) #28
  br label %42

42:                                               ; preds = %34, %39
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 112
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8, !tbaa !12
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #28
  br label %50

50:                                               ; preds = %42, %47
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 128
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 144
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr %53, align 8, !tbaa !12
  %57 = add i64 %56, 1
  tail call void @_ZdlPvm(ptr noundef %52, i64 noundef %57) #28
  br label %58

58:                                               ; preds = %50, %55
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 160
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 176
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %61, align 8, !tbaa !12
  %65 = add i64 %64, 1
  tail call void @_ZdlPvm(ptr noundef %60, i64 noundef %65) #28
  br label %66

66:                                               ; preds = %58, %63
  %67 = getelementptr inbounds nuw i8, ptr %19, i64 192
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 208
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8, !tbaa !12
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #28
  br label %74

74:                                               ; preds = %66, %71
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 224
  %76 = load ptr, ptr %75, align 8, !tbaa !20
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 240
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %77, align 8, !tbaa !12
  %81 = add i64 %80, 1
  tail call void @_ZdlPvm(ptr noundef %76, i64 noundef %81) #28
  br label %82

82:                                               ; preds = %74, %79
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 272
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i64, ptr %85, align 8, !tbaa !12
  %89 = add i64 %88, 1
  tail call void @_ZdlPvm(ptr noundef %84, i64 noundef %89) #28
  br label %90

90:                                               ; preds = %82, %87
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 288
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 304
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, ptr %93, align 8, !tbaa !12
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #28
  br label %98

98:                                               ; preds = %90, %95
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 320
  %100 = load ptr, ptr %99, align 8, !tbaa !20
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 336
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, ptr %101, align 8, !tbaa !12
  %105 = add i64 %104, 1
  tail call void @_ZdlPvm(ptr noundef %100, i64 noundef %105) #28
  br label %106

106:                                              ; preds = %98, %103
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 352
  %108 = load ptr, ptr %107, align 8, !tbaa !20
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 368
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i64, ptr %109, align 8, !tbaa !12
  %113 = add i64 %112, 1
  tail call void @_ZdlPvm(ptr noundef %108, i64 noundef %113) #28
  br label %114

114:                                              ; preds = %106, %111
  %115 = getelementptr inbounds nuw i8, ptr %19, i64 384
  %116 = load ptr, ptr %115, align 8, !tbaa !20
  %117 = getelementptr inbounds nuw i8, ptr %19, i64 400
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i64, ptr %117, align 8, !tbaa !12
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #28
  br label %122

122:                                              ; preds = %114, %119
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 416
  %124 = load ptr, ptr %123, align 8, !tbaa !20
  %125 = getelementptr inbounds nuw i8, ptr %19, i64 432
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i64, ptr %125, align 8, !tbaa !12
  %129 = add i64 %128, 1
  tail call void @_ZdlPvm(ptr noundef %124, i64 noundef %129) #28
  br label %130

130:                                              ; preds = %122, %127
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 448
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  %133 = getelementptr inbounds nuw i8, ptr %19, i64 464
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %133, align 8, !tbaa !12
  %137 = add i64 %136, 1
  tail call void @_ZdlPvm(ptr noundef %132, i64 noundef %137) #28
  br label %138

138:                                              ; preds = %130, %135
  %139 = getelementptr inbounds nuw i8, ptr %19, i64 480
  %140 = load ptr, ptr %139, align 8, !tbaa !20
  %141 = getelementptr inbounds nuw i8, ptr %19, i64 496
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = load i64, ptr %141, align 8, !tbaa !12
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #28
  br label %146

146:                                              ; preds = %138, %143
  %147 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %148 = load ptr, ptr %6, align 8, !tbaa !46
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %17, label %10, !llvm.loop !128

150:                                              ; preds = %12
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !126
  %153 = icmp eq ptr %16, %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150, %162
  %155 = phi ptr [ %163, %162 ], [ %16, %150 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !20
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i64, ptr %157, align 8, !tbaa !12
  %161 = add i64 %160, 1
  tail call void @_ZdlPvm(ptr noundef %156, i64 noundef %161) #28
  br label %162

162:                                              ; preds = %154, %159
  %163 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %164 = icmp eq ptr %163, %152
  br i1 %164, label %165, label %154, !llvm.loop !129

165:                                              ; preds = %162, %150
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !45
  %168 = load ptr, ptr %2, align 8, !tbaa !41
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %195, label %170

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %179, %178 ], [ %167, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !20
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 16
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %173, align 8, !tbaa !12
  %177 = add i64 %176, 1
  tail call void @_ZdlPvm(ptr noundef %172, i64 noundef %177) #28
  br label %178

178:                                              ; preds = %170, %175
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %180 = icmp eq ptr %179, %168
  br i1 %180, label %195, label %170, !llvm.loop !129

181:                                              ; preds = %12
  %182 = load ptr, ptr %2, align 8, !tbaa !41
  %183 = icmp eq ptr %16, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %181, %192
  %185 = phi ptr [ %193, %192 ], [ %16, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !20
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 16
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8, !tbaa !12
  %191 = add i64 %190, 1
  tail call void @_ZdlPvm(ptr noundef %186, i64 noundef %191) #28
  br label %192

192:                                              ; preds = %184, %189
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %194 = icmp eq ptr %193, %182
  br i1 %194, label %195, label %184, !llvm.loop !129

195:                                              ; preds = %178, %192, %181, %165
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !41
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  %27 = load ptr, ptr %4, align 8, !tbaa !41
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #26
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !124
  %39 = load ptr, ptr %0, align 8, !tbaa !120
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !122
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !47
  %51 = load ptr, ptr %3, align 8, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !16
  %53 = load ptr, ptr %1, align 8, !tbaa !20
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !23
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !20
  %62 = load i64, ptr %54, align 8, !tbaa !12
  store i64 %62, ptr %52, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !23
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !23
  store ptr %54, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %64, align 8, !tbaa !23
  store i8 0, ptr %54, align 8, !tbaa !12
  %68 = load ptr, ptr %5, align 8, !tbaa !122
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !46
  %70 = load ptr, ptr %69, align 8, !tbaa !47
  store ptr %70, ptr %18, align 8, !tbaa !45
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !126
  store ptr %70, ptr %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !124
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !120
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
  br i1 %30, label %31, label %32, !prof !130

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %35, ptr %24, align 8, !tbaa !47
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !131

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %48, ptr %42, align 8, !tbaa !47
  br label %73

49:                                               ; preds = %3
  %50 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %51 = add i64 %15, 2
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, 72057594037927937
  tail call void @llvm.assume(i1 %53)
  %54 = shl nuw nsw i64 %52, 3
  %55 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #27
  %56 = sub i64 %52, %13
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57
  %59 = select i1 %2, i64 %1, i64 0
  %60 = getelementptr inbounds nuw ptr, ptr %58, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %62, %9
  %64 = icmp sgt i64 %63, 8
  br i1 %64, label %65, label %66, !prof !130

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !47
  store ptr %69, ptr %60, align 8, !tbaa !47
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !120
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #28
  store ptr %55, ptr %0, align 8, !tbaa !120
  store i64 %52, ptr %14, align 8, !tbaa !124
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %34 ], [ %24, %31 ], [ %24, %32 ], [ %24, %47 ], [ %24, %44 ], [ %24, %45 ]
  store ptr %74, ptr %6, align 8, !tbaa !46
  %75 = load ptr, ptr %74, align 8, !tbaa !47
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !45
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !126
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !46
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !45
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !23
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
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
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %34) #27
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %32
  %37 = load i8, ptr %13, align 1, !tbaa !12
  store i8 %37, ptr %35, align 1, !tbaa !12
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
  %47 = load i8, ptr %3, align 1, !tbaa !12
  store i8 %47, ptr %44, align 1, !tbaa !12
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
  %58 = load i8, ptr %55, align 1, !tbaa !12
  store i8 %58, ptr %53, align 1, !tbaa !12
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
  tail call void @_ZdlPvm(ptr noundef %13, i64 noundef %64) #28
  br label %65

65:                                               ; preds = %61, %63
  store ptr %35, ptr %0, align 8, !tbaa !20
  store i64 %33, ptr %14, align 8, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !12, !noalias !132
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #25, !noalias !132
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %6, !llvm.loop !13

16:                                               ; preds = %13, %6, %3
  %17 = phi i64 [ 0, %3 ], [ %1, %13 ], [ %7, %6 ]
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i64 [ %1, %16 ], [ %22, %21 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = add i64 %19, -1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !12, !noalias !132
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #25, !noalias !132
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !15

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %33, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %31, ptr %4, align 8, !tbaa !16, !alias.scope !132
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !23, !alias.scope !132
  store i8 0, ptr %31, align 8, !tbaa !12, !alias.scope !132
  br label %64

33:                                               ; preds = %28
  %34 = sub nuw i64 %19, %17
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %36, ptr %4, align 8, !tbaa !16, !alias.scope !132
  %37 = icmp ugt i64 %34, 15
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = icmp ugt i64 %34, 9223372036854775806
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

41:                                               ; preds = %38
  %42 = add nuw nsw i64 %34, 1
  %43 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %42) #27
  store ptr %43, ptr %4, align 8, !tbaa !20, !alias.scope !132
  store i64 %34, ptr %36, align 8, !tbaa !12, !alias.scope !132
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi ptr [ %43, %41 ], [ %36, %33 ]
  switch i64 %34, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %35, align 1, !tbaa !12, !noalias !132
  store i8 %47, ptr %45, align 1, !tbaa !12
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %35, i64 %34, i1 false)
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %34, ptr %50, align 8, !tbaa !23, !alias.scope !132
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 %34
  store i8 0, ptr %51, align 1, !tbaa !12
  %52 = load i64, ptr %50, align 8, !tbaa !23
  %53 = icmp ult i64 %52, 9223372036854775807
  call void @llvm.assume(i1 %53)
  %54 = icmp samesign ult i64 %52, 2
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %4, align 8, !tbaa !20
  %57 = load i8, ptr %56, align 1, !tbaa !12
  %58 = icmp eq i8 %57, 91
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %56, i64 %52
  %61 = getelementptr i8, ptr %60, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !12
  %63 = icmp eq i8 %62, 93
  br i1 %63, label %65, label %64

64:                                               ; preds = %30, %59, %55, %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %77

65:                                               ; preds = %59
  %66 = add nsw i64 %52, -2
  %67 = getelementptr inbounds nuw i8, ptr %56, i64 1
  invoke void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, i64 %66, ptr nonnull %67)
          to label %77 unwind label %68

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %4, align 8, !tbaa !20
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i64, ptr %71, align 8, !tbaa !12
  %75 = add i64 %74, 1
  call void @_ZdlPvm(ptr noundef %70, i64 noundef %75) #28
  br label %76

76:                                               ; preds = %68, %73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %69

77:                                               ; preds = %65, %64
  %78 = load ptr, ptr %4, align 8, !tbaa !20
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i64, ptr %79, align 8, !tbaa !12
  %83 = add i64 %82, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %83) #28
  br label %84

84:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %15, %14 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %9, align 8, !tbaa !12
  %13 = add i64 %12, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %13) #28
  br label %14

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %6, !llvm.loop !129

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !135
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %20 to i64
  %27 = sub i64 %25, %26
  tail call void @_ZdlPvm(ptr noundef nonnull %20, i64 noundef %27) #28
  br label %28

28:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8, !tbaa !12
  %14 = add i64 %13, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %14) #28
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %7, !llvm.loop !129

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !135
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %28) #28
  br label %29

29:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %15
  %8 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i64, ptr %10, align 8, !tbaa !12
  %14 = add i64 %13, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %14) #28
  br label %15

15:                                               ; preds = %7, %12
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %7, !llvm.loop !129

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !135
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %21, i64 noundef %28) #28
  br label %29

29:                                               ; preds = %20, %23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %144, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %14

12:                                               ; preds = %137
  %13 = icmp ugt i64 %141, %1
  br i1 %13, label %245, label %144

14:                                               ; preds = %7, %137
  %15 = phi i64 [ 0, %7 ], [ %141, %137 ]
  %16 = phi i32 [ 0, %7 ], [ %140, %137 ]
  %17 = phi i1 [ false, %7 ], [ %139, %137 ]
  %18 = phi i1 [ false, %7 ], [ %138, %137 ]
  %19 = phi i64 [ 0, %7 ], [ %142, %137 ]
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !12
  br i1 %17, label %22, label %26

22:                                               ; preds = %14
  br i1 %18, label %137, label %23

23:                                               ; preds = %22
  switch i8 %21, label %25 [
    i8 92, label %137
    i8 34, label %24
  ]

24:                                               ; preds = %23
  br label %137

25:                                               ; preds = %23
  br label %137

26:                                               ; preds = %14
  %27 = icmp eq i8 %21, 34
  br i1 %27, label %137, label %28

28:                                               ; preds = %26
  %29 = and i8 %21, -33
  switch i8 %29, label %36 [
    i8 91, label %30
    i8 93, label %32
  ]

30:                                               ; preds = %28
  %31 = add nsw i32 %16, 1
  br label %137

32:                                               ; preds = %28
  %33 = icmp sgt i32 %16, 0
  %34 = sext i1 %33 to i32
  %35 = add nsw i32 %16, %34
  br label %137

36:                                               ; preds = %28
  %37 = icmp eq i8 %21, 44
  %38 = icmp eq i32 %16, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %137

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %41 = icmp ugt i64 %15, %1
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %15, i64 noundef %1) #26
          to label %43 unwind label %126

43:                                               ; preds = %42
  unreachable

44:                                               ; preds = %40
  %45 = sub i64 %19, %15
  %46 = sub nuw i64 %1, %15
  %47 = call i64 @llvm.umin.i64(i64 %46, i64 %45)
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %15
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %44, %57
  %51 = phi i64 [ %58, %57 ], [ 0, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !12, !noalias !137
  %54 = zext i8 %53 to i32
  %55 = call i32 @isspace(i32 noundef %54) #25, !noalias !137
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = add nuw i64 %51, 1
  %59 = icmp eq i64 %58, %47
  br i1 %59, label %60, label %50, !llvm.loop !13

60:                                               ; preds = %57, %50, %44
  %61 = phi i64 [ 0, %44 ], [ %47, %57 ], [ %51, %50 ]
  br label %62

62:                                               ; preds = %65, %60
  %63 = phi i64 [ %47, %60 ], [ %66, %65 ]
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = add i64 %63, -1
  %67 = getelementptr inbounds nuw i8, ptr %48, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !12, !noalias !137
  %69 = zext i8 %68 to i32
  %70 = call i32 @isspace(i32 noundef %69) #25, !noalias !137
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %62, !llvm.loop !15

72:                                               ; preds = %65
  %73 = icmp ugt i64 %63, %61
  br i1 %73, label %75, label %74

74:                                               ; preds = %62, %72
  store ptr %8, ptr %4, align 8, !tbaa !16, !alias.scope !137
  store i64 0, ptr %9, align 8, !tbaa !23, !alias.scope !137
  store i8 0, ptr %8, align 8, !tbaa !12, !alias.scope !137
  br label %94

75:                                               ; preds = %72
  %76 = sub nuw i64 %63, %61
  %77 = getelementptr inbounds nuw i8, ptr %48, i64 %61
  store ptr %8, ptr %4, align 8, !tbaa !16, !alias.scope !137
  %78 = icmp ugt i64 %76, 15
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = icmp ugt i64 %76, 9223372036854775806
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %82 unwind label %126

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %79
  %84 = add nuw nsw i64 %76, 1
  %85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %84) #27
          to label %86 unwind label %124

86:                                               ; preds = %83
  store ptr %85, ptr %4, align 8, !tbaa !20, !alias.scope !137
  store i64 %76, ptr %8, align 8, !tbaa !12, !alias.scope !137
  br label %87

87:                                               ; preds = %86, %75
  %88 = phi ptr [ %85, %86 ], [ %8, %75 ]
  switch i64 %76, label %91 [
    i64 1, label %89
    i64 0, label %92
  ]

89:                                               ; preds = %87
  %90 = load i8, ptr %77, align 1, !tbaa !12, !noalias !137
  store i8 %90, ptr %88, align 1, !tbaa !12
  br label %92

91:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %88, ptr align 1 %77, i64 %76, i1 false)
  br label %92

92:                                               ; preds = %91, %89, %87
  store i64 %76, ptr %9, align 8, !tbaa !23, !alias.scope !137
  %93 = getelementptr inbounds nuw i8, ptr %88, i64 %76
  store i8 0, ptr %93, align 1, !tbaa !12
  br label %94

94:                                               ; preds = %92, %74
  %95 = load ptr, ptr %10, align 8, !tbaa !136
  %96 = load ptr, ptr %11, align 8, !tbaa !56
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %95, i64 16
  store ptr %99, ptr %95, align 8, !tbaa !16
  %100 = load ptr, ptr %4, align 8, !tbaa !20
  %101 = icmp eq ptr %100, %8
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, ptr %9, align 8, !tbaa !23
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  %105 = add nuw nsw i64 %103, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %105, i1 false)
  br label %109

106:                                              ; preds = %98
  store ptr %100, ptr %95, align 8, !tbaa !20
  %107 = load i64, ptr %8, align 8, !tbaa !12
  store i64 %107, ptr %99, align 8, !tbaa !12
  %108 = load i64, ptr %9, align 8, !tbaa !23
  br label %109

109:                                              ; preds = %102, %106
  %110 = phi i64 [ %108, %106 ], [ %103, %102 ]
  %111 = icmp ult i64 %110, 9223372036854775807
  call void @llvm.assume(i1 %111)
  %112 = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i64 %110, ptr %112, align 8, !tbaa !23
  store ptr %8, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %9, align 8, !tbaa !23
  %113 = load ptr, ptr %10, align 8, !tbaa !136
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 32
  store ptr %114, ptr %10, align 8, !tbaa !136
  br label %122

115:                                              ; preds = %94
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %116 unwind label %128

116:                                              ; preds = %115
  %117 = load ptr, ptr %4, align 8, !tbaa !20
  %118 = icmp eq ptr %117, %8
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i64, ptr %8, align 8, !tbaa !12
  %121 = add i64 %120, 1
  call void @_ZdlPvm(ptr noundef %117, i64 noundef %121) #28
  br label %122

122:                                              ; preds = %116, %109, %119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %123 = add nuw i64 %19, 1
  br label %137

124:                                              ; preds = %83
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %135

126:                                              ; preds = %42, %81
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %135

128:                                              ; preds = %115
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %4, align 8, !tbaa !20
  %131 = icmp eq ptr %130, %8
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i64, ptr %8, align 8, !tbaa !12
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %134) #28
  br label %135

135:                                              ; preds = %128, %124, %126, %132
  %136 = phi { ptr, i32 } [ %129, %132 ], [ %127, %126 ], [ %125, %124 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %270

137:                                              ; preds = %36, %122, %26, %24, %22, %25, %23, %32, %30
  %138 = phi i1 [ %18, %26 ], [ false, %25 ], [ %18, %30 ], [ %18, %32 ], [ true, %23 ], [ false, %22 ], [ false, %24 ], [ %18, %122 ], [ %18, %36 ]
  %139 = phi i1 [ true, %26 ], [ true, %25 ], [ false, %30 ], [ false, %32 ], [ true, %23 ], [ true, %22 ], [ false, %24 ], [ false, %122 ], [ false, %36 ]
  %140 = phi i32 [ %16, %26 ], [ %16, %25 ], [ %31, %30 ], [ %35, %32 ], [ %16, %23 ], [ %16, %22 ], [ %16, %24 ], [ 0, %122 ], [ %16, %36 ]
  %141 = phi i64 [ %15, %26 ], [ %15, %25 ], [ %15, %30 ], [ %15, %32 ], [ %15, %23 ], [ %15, %22 ], [ %15, %24 ], [ %123, %122 ], [ %15, %36 ]
  %142 = add nuw i64 %19, 1
  %143 = icmp eq i64 %142, %1
  br i1 %143, label %12, label %14, !llvm.loop !140

144:                                              ; preds = %3, %12
  %145 = phi i64 [ %141, %12 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %146 = sub nuw i64 %1, %145
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 %145
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %148 = icmp eq i64 %146, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144, %156
  %150 = phi i64 [ %157, %156 ], [ 0, %144 ]
  %151 = getelementptr inbounds nuw i8, ptr %147, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !12, !noalias !141
  %153 = zext i8 %152 to i32
  %154 = call i32 @isspace(i32 noundef %153) #25, !noalias !141
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = add nuw i64 %150, 1
  %158 = icmp eq i64 %157, %146
  br i1 %158, label %159, label %149, !llvm.loop !13

159:                                              ; preds = %156, %149, %144
  %160 = phi i64 [ 0, %144 ], [ %146, %156 ], [ %150, %149 ]
  br label %161

161:                                              ; preds = %164, %159
  %162 = phi i64 [ %146, %159 ], [ %165, %164 ]
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = add i64 %162, -1
  %166 = getelementptr inbounds nuw i8, ptr %147, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !12, !noalias !141
  %168 = zext i8 %167 to i32
  %169 = call i32 @isspace(i32 noundef %168) #25, !noalias !141
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %161, !llvm.loop !15

171:                                              ; preds = %164
  %172 = icmp ugt i64 %162, %160
  br i1 %172, label %176, label %173

173:                                              ; preds = %161, %171
  %174 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %174, ptr %5, align 8, !tbaa !16, !alias.scope !141
  %175 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %175, align 8, !tbaa !23, !alias.scope !141
  store i8 0, ptr %174, align 8, !tbaa !12, !alias.scope !141
  br label %197

176:                                              ; preds = %171
  %177 = sub nuw i64 %162, %160
  %178 = getelementptr inbounds nuw i8, ptr %147, i64 %160
  %179 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %179, ptr %5, align 8, !tbaa !16, !alias.scope !141
  %180 = icmp ugt i64 %177, 15
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = icmp ugt i64 %177, 9223372036854775806
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %184 unwind label %233

184:                                              ; preds = %183
  unreachable

185:                                              ; preds = %181
  %186 = add nuw nsw i64 %177, 1
  %187 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %186) #27
          to label %188 unwind label %233

188:                                              ; preds = %185
  store ptr %187, ptr %5, align 8, !tbaa !20, !alias.scope !141
  store i64 %177, ptr %179, align 8, !tbaa !12, !alias.scope !141
  br label %189

189:                                              ; preds = %188, %176
  %190 = phi ptr [ %187, %188 ], [ %179, %176 ]
  switch i64 %177, label %193 [
    i64 1, label %191
    i64 0, label %194
  ]

191:                                              ; preds = %189
  %192 = load i8, ptr %178, align 1, !tbaa !12, !noalias !141
  store i8 %192, ptr %190, align 1, !tbaa !12
  br label %194

193:                                              ; preds = %189
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %190, ptr align 1 %178, i64 %177, i1 false)
  br label %194

194:                                              ; preds = %193, %191, %189
  %195 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %177, ptr %195, align 8, !tbaa !23, !alias.scope !141
  %196 = getelementptr inbounds nuw i8, ptr %190, i64 %177
  store i8 0, ptr %196, align 1, !tbaa !12
  br label %197

197:                                              ; preds = %194, %173
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %199 = load ptr, ptr %198, align 8, !tbaa !136
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %201 = load ptr, ptr %200, align 8, !tbaa !56
  %202 = icmp eq ptr %199, %201
  br i1 %202, label %224, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 16
  store ptr %204, ptr %199, align 8, !tbaa !16
  %205 = load ptr, ptr %5, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %207 = icmp eq ptr %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %210 = load i64, ptr %209, align 8, !tbaa !23
  %211 = icmp ult i64 %210, 16
  call void @llvm.assume(i1 %211)
  %212 = add nuw nsw i64 %210, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %204, ptr noundef nonnull align 8 dereferenceable(1) %206, i64 %212, i1 false)
  br label %217

213:                                              ; preds = %203
  store ptr %205, ptr %199, align 8, !tbaa !20
  %214 = load i64, ptr %206, align 8, !tbaa !12
  store i64 %214, ptr %204, align 8, !tbaa !12
  %215 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %216 = load i64, ptr %215, align 8, !tbaa !23
  br label %217

217:                                              ; preds = %208, %213
  %218 = phi i64 [ %216, %213 ], [ %210, %208 ]
  %219 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %220 = icmp ult i64 %218, 9223372036854775807
  call void @llvm.assume(i1 %220)
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 8
  store i64 %218, ptr %221, align 8, !tbaa !23
  store ptr %206, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %219, align 8, !tbaa !23
  %222 = load ptr, ptr %198, align 8, !tbaa !136
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 32
  store ptr %223, ptr %198, align 8, !tbaa !136
  br label %232

224:                                              ; preds = %197
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %225 unwind label %235

225:                                              ; preds = %224
  %226 = load ptr, ptr %5, align 8, !tbaa !20
  %227 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %228 = icmp eq ptr %226, %227
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load i64, ptr %227, align 8, !tbaa !12
  %231 = add i64 %230, 1
  call void @_ZdlPvm(ptr noundef %226, i64 noundef %231) #28
  br label %232

232:                                              ; preds = %225, %217, %229
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %245

233:                                              ; preds = %185, %183
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %243

235:                                              ; preds = %224
  %236 = landingpad { ptr, i32 }
          cleanup
  %237 = load ptr, ptr %5, align 8, !tbaa !20
  %238 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %239 = icmp eq ptr %237, %238
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = load i64, ptr %238, align 8, !tbaa !12
  %242 = add i64 %241, 1
  call void @_ZdlPvm(ptr noundef %237, i64 noundef %242) #28
  br label %243

243:                                              ; preds = %235, %240, %233
  %244 = phi { ptr, i32 } [ %234, %233 ], [ %236, %240 ], [ %236, %235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %270

245:                                              ; preds = %232, %12
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %247 = load ptr, ptr %246, align 8, !tbaa !136
  %248 = load ptr, ptr %0, align 8, !tbaa !135
  %249 = ptrtoint ptr %247 to i64
  %250 = ptrtoint ptr %248 to i64
  %251 = sub i64 %249, %250
  %252 = icmp sgt i64 %251, -1
  call void @llvm.assume(i1 %252)
  %253 = icmp eq i64 %251, 32
  br i1 %253, label %254, label %272

254:                                              ; preds = %245
  %255 = getelementptr inbounds nuw i8, ptr %248, i64 8
  %256 = load i64, ptr %255, align 8, !tbaa !23
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %254, %266
  %259 = phi ptr [ %267, %266 ], [ %248, %254 ]
  %260 = load ptr, ptr %259, align 8, !tbaa !20
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 16
  %262 = icmp eq ptr %260, %261
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  %264 = load i64, ptr %261, align 8, !tbaa !12
  %265 = add i64 %264, 1
  call void @_ZdlPvm(ptr noundef %260, i64 noundef %265) #28
  br label %266

266:                                              ; preds = %258, %263
  %267 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %268 = icmp eq ptr %267, %247
  br i1 %268, label %269, label %258, !llvm.loop !129

269:                                              ; preds = %266
  store ptr %248, ptr %246, align 8, !tbaa !136
  br label %272

270:                                              ; preds = %243, %135
  %271 = phi { ptr, i32 } [ %136, %135 ], [ %244, %243 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %271

272:                                              ; preds = %269, %245, %254
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = load ptr, ptr %0, align 8, !tbaa !135
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775776
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %17 = shl nuw nsw i64 %16, 5
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #27
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !16
  %21 = load ptr, ptr %1, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !23
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !20
  %30 = load i64, ptr %22, align 8, !tbaa !12
  store i64 %30, ptr %20, align 8, !tbaa !12
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !23
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !23
  store ptr %22, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %35, align 8, !tbaa !23
  store i8 0, ptr %22, align 8, !tbaa !12
  %38 = icmp eq ptr %5, %4
  br i1 %38, label %63, label %39

39:                                               ; preds = %33, %55
  %40 = phi ptr [ %61, %55 ], [ %18, %33 ]
  %41 = phi ptr [ %60, %55 ], [ %5, %33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %42, ptr %40, align 8, !tbaa !16, !alias.scope !144, !noalias !147
  %43 = load ptr, ptr %41, align 8, !tbaa !20, !alias.scope !147, !noalias !144
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !23, !alias.scope !147, !noalias !144
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false), !alias.scope !149
  br label %55

51:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !20, !alias.scope !144, !noalias !147
  %52 = load i64, ptr %44, align 8, !tbaa !12, !alias.scope !147, !noalias !144
  store i64 %52, ptr %42, align 8, !tbaa !12, !alias.scope !144, !noalias !147
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !23, !alias.scope !147, !noalias !144
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %48, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %56, ptr %59, align 8, !tbaa !23, !alias.scope !144, !noalias !147
  store ptr %44, ptr %41, align 8, !tbaa !20, !alias.scope !147, !noalias !144
  store i64 0, ptr %57, align 8, !tbaa !23, !alias.scope !147, !noalias !144
  store i8 0, ptr %44, align 8, !tbaa !12, !alias.scope !147, !noalias !144
  %60 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %62 = icmp eq ptr %60, %4
  br i1 %62, label %63, label %39, !llvm.loop !150

63:                                               ; preds = %55, %33
  %64 = phi ptr [ %18, %33 ], [ %61, %55 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = icmp eq ptr %5, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !56
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %69, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %70) #28
  br label %71

71:                                               ; preds = %63, %67
  %72 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %18, ptr %0, align 8, !tbaa !135
  store ptr %72, ptr %3, align 8, !tbaa !136
  %73 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %18, i64 %16
  store ptr %73, ptr %65, align 8, !tbaa !56
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib23json_parse_object_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !12, !noalias !151
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @isspace(i32 noundef %13) #25, !noalias !151
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %9, !llvm.loop !13

19:                                               ; preds = %16, %9, %3
  %20 = phi i64 [ 0, %3 ], [ %1, %16 ], [ %10, %9 ]
  br label %21

21:                                               ; preds = %24, %19
  %22 = phi i64 [ %1, %19 ], [ %25, %24 ]
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = add i64 %22, -1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !12, !noalias !151
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @isspace(i32 noundef %28) #25, !noalias !151
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !15

31:                                               ; preds = %24
  %32 = icmp ugt i64 %22, %20
  br i1 %32, label %36, label %33

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %34, ptr %4, align 8, !tbaa !16, !alias.scope !151
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %35, align 8, !tbaa !23, !alias.scope !151
  store i8 0, ptr %34, align 8, !tbaa !12, !alias.scope !151
  br label %67

36:                                               ; preds = %31
  %37 = sub nuw i64 %22, %20
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %39, ptr %4, align 8, !tbaa !16, !alias.scope !151
  %40 = icmp ugt i64 %37, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = icmp ugt i64 %37, 9223372036854775806
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %37, 1
  %46 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #27
  store ptr %46, ptr %4, align 8, !tbaa !20, !alias.scope !151
  store i64 %37, ptr %39, align 8, !tbaa !12, !alias.scope !151
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !12, !noalias !151
  store i8 %50, ptr %48, align 1, !tbaa !12
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !23, !alias.scope !151
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !12
  %55 = load i64, ptr %53, align 8, !tbaa !23
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = icmp samesign ult i64 %55, 2
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %4, align 8, !tbaa !20
  %60 = load i8, ptr %59, align 1, !tbaa !12
  %61 = icmp eq i8 %60, 123
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %59, i64 %55
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %66 = icmp eq i8 %65, 125
  br i1 %66, label %68, label %67

67:                                               ; preds = %33, %62, %58, %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %288

68:                                               ; preds = %62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %69 = add nsw i64 %55, -2
  %70 = getelementptr inbounds nuw i8, ptr %59, i64 1
  invoke void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, i64 %69, ptr nonnull %70)
          to label %71 unwind label %110

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 8, !tbaa !47
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %78 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %82 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %112

83:                                               ; preds = %254
  %84 = load ptr, ptr %5, align 8, !tbaa !135
  %85 = load ptr, ptr %73, align 8, !tbaa !136
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %100, label %87

87:                                               ; preds = %83, %95
  %88 = phi ptr [ %96, %95 ], [ %84, %83 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  %90 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i64, ptr %90, align 8, !tbaa !12
  %94 = add i64 %93, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %94) #28
  br label %95

95:                                               ; preds = %87, %92
  %96 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %87, !llvm.loop !129

98:                                               ; preds = %95
  %99 = load ptr, ptr %5, align 8, !tbaa !135
  br label %100

100:                                              ; preds = %71, %98, %83
  %101 = phi ptr [ %99, %98 ], [ %84, %83 ], [ %72, %71 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  %106 = ptrtoint ptr %105 to i64
  %107 = ptrtoint ptr %101 to i64
  %108 = sub i64 %106, %107
  call void @_ZdlPvm(ptr noundef nonnull %101, i64 noundef %108) #28
  br label %109

109:                                              ; preds = %100, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %288

110:                                              ; preds = %68
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %279

112:                                              ; preds = %76, %254
  %113 = phi ptr [ %72, %76 ], [ %255, %254 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !20
  %115 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %116 = load i64, ptr %115, align 8, !tbaa !23
  %117 = icmp ult i64 %116, 9223372036854775807
  call void @llvm.assume(i1 %117)
  %118 = icmp eq i64 %116, 0
  br i1 %118, label %254, label %119

119:                                              ; preds = %112, %144
  %120 = phi i64 [ %148, %144 ], [ 0, %112 ]
  %121 = phi i1 [ %147, %144 ], [ false, %112 ]
  %122 = phi i1 [ %146, %144 ], [ false, %112 ]
  %123 = phi i32 [ %145, %144 ], [ 0, %112 ]
  %124 = getelementptr inbounds nuw i8, ptr %114, i64 %120
  %125 = load i8, ptr %124, align 1, !tbaa !12
  br i1 %122, label %126, label %130

126:                                              ; preds = %119
  br i1 %121, label %144, label %127

127:                                              ; preds = %126
  switch i8 %125, label %129 [
    i8 92, label %144
    i8 34, label %128
  ]

128:                                              ; preds = %127
  br label %144

129:                                              ; preds = %127
  br label %144

130:                                              ; preds = %119
  %131 = icmp eq i8 %125, 34
  br i1 %131, label %144, label %132

132:                                              ; preds = %130
  %133 = and i8 %125, -33
  switch i8 %133, label %140 [
    i8 91, label %134
    i8 93, label %136
  ]

134:                                              ; preds = %132
  %135 = add nsw i32 %123, 1
  br label %144

136:                                              ; preds = %132
  %137 = icmp sgt i32 %123, 0
  %138 = sext i1 %137 to i32
  %139 = add nsw i32 %123, %138
  br label %144

140:                                              ; preds = %132
  %141 = icmp eq i8 %125, 58
  %142 = icmp eq i32 %123, 0
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %150, label %144

144:                                              ; preds = %140, %136, %134, %130, %129, %128, %127, %126
  %145 = phi i32 [ %123, %128 ], [ %123, %126 ], [ %123, %127 ], [ %123, %140 ], [ %139, %136 ], [ %135, %134 ], [ %123, %129 ], [ %123, %130 ]
  %146 = phi i1 [ false, %128 ], [ true, %126 ], [ true, %127 ], [ false, %140 ], [ false, %136 ], [ false, %134 ], [ true, %129 ], [ true, %130 ]
  %147 = phi i1 [ false, %128 ], [ false, %126 ], [ true, %127 ], [ %121, %140 ], [ %121, %136 ], [ %121, %134 ], [ false, %129 ], [ %121, %130 ]
  %148 = add nuw nsw i64 %120, 1
  %149 = icmp eq i64 %148, %116
  br i1 %149, label %254, label %119, !llvm.loop !154

150:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %151 = call i64 @llvm.umin.i64(i64 %116, i64 %120)
  invoke void @_ZN12__apo_stdlib14json_parse_keyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %151, ptr nonnull %114)
          to label %152 unwind label %257

152:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %153 = load ptr, ptr %113, align 8, !tbaa !20
  %154 = load i64, ptr %115, align 8, !tbaa !23
  %155 = icmp ult i64 %154, 9223372036854775807
  call void @llvm.assume(i1 %155)
  %156 = add nuw i64 %120, 1
  %157 = icmp samesign ult i64 %120, %154
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %156, i64 noundef %154) #26
          to label %159 unwind label %261

159:                                              ; preds = %158
  unreachable

160:                                              ; preds = %152
  %161 = sub nuw nsw i64 %154, %156
  %162 = getelementptr inbounds nuw i8, ptr %153, i64 %156
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %160, %171
  %165 = phi i64 [ %172, %171 ], [ 0, %160 ]
  %166 = getelementptr inbounds nuw i8, ptr %162, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !12, !noalias !155
  %168 = zext i8 %167 to i32
  %169 = call i32 @isspace(i32 noundef %168) #25, !noalias !155
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = add nuw i64 %165, 1
  %173 = icmp eq i64 %172, %161
  br i1 %173, label %174, label %164, !llvm.loop !13

174:                                              ; preds = %171, %164, %160
  %175 = phi i64 [ 0, %160 ], [ %161, %171 ], [ %165, %164 ]
  br label %176

176:                                              ; preds = %179, %174
  %177 = phi i64 [ %161, %174 ], [ %180, %179 ]
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %176
  %180 = add nsw i64 %177, -1
  %181 = getelementptr inbounds nuw i8, ptr %162, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !12, !noalias !155
  %183 = zext i8 %182 to i32
  %184 = call i32 @isspace(i32 noundef %183) #25, !noalias !155
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %176, !llvm.loop !15

186:                                              ; preds = %179
  %187 = icmp ugt i64 %177, %175
  br i1 %187, label %189, label %188

188:                                              ; preds = %176, %186
  store ptr %77, ptr %7, align 8, !tbaa !16, !alias.scope !155
  store i64 0, ptr %78, align 8, !tbaa !23, !alias.scope !155
  store i8 0, ptr %77, align 8, !tbaa !12, !alias.scope !155
  br label %204

189:                                              ; preds = %186
  %190 = sub nuw nsw i64 %177, %175
  %191 = getelementptr inbounds nuw i8, ptr %162, i64 %175
  store ptr %77, ptr %7, align 8, !tbaa !16, !alias.scope !155
  %192 = icmp samesign ugt i64 %190, 15
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = add nuw nsw i64 %190, 1
  %195 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %194) #27
          to label %196 unwind label %259

196:                                              ; preds = %193
  store ptr %195, ptr %7, align 8, !tbaa !20, !alias.scope !155
  store i64 %190, ptr %77, align 8, !tbaa !12, !alias.scope !155
  br label %197

197:                                              ; preds = %196, %189
  %198 = phi ptr [ %195, %196 ], [ %77, %189 ]
  switch i64 %190, label %201 [
    i64 1, label %199
    i64 0, label %202
  ]

199:                                              ; preds = %197
  %200 = load i8, ptr %191, align 1, !tbaa !12, !noalias !155
  store i8 %200, ptr %198, align 1, !tbaa !12
  br label %202

201:                                              ; preds = %197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %198, ptr nonnull align 1 %191, i64 %190, i1 false)
  br label %202

202:                                              ; preds = %201, %199, %197
  store i64 %190, ptr %78, align 8, !tbaa !23, !alias.scope !155
  %203 = getelementptr inbounds nuw i8, ptr %198, i64 %190
  store i8 0, ptr %203, align 1, !tbaa !12
  br label %204

204:                                              ; preds = %202, %188
  %205 = load ptr, ptr %79, align 8, !tbaa !71
  %206 = load ptr, ptr %80, align 8, !tbaa !73
  %207 = icmp eq ptr %205, %206
  br i1 %207, label %240, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds nuw i8, ptr %205, i64 16
  store ptr %209, ptr %205, align 8, !tbaa !16
  %210 = load ptr, ptr %6, align 8, !tbaa !20
  %211 = icmp eq ptr %210, %81
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i64, ptr %82, align 8, !tbaa !23
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  %215 = add nuw nsw i64 %213, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %209, ptr noundef nonnull align 8 dereferenceable(1) %81, i64 %215, i1 false)
  br label %219

216:                                              ; preds = %208
  store ptr %210, ptr %205, align 8, !tbaa !20
  %217 = load i64, ptr %81, align 8, !tbaa !12
  store i64 %217, ptr %209, align 8, !tbaa !12
  %218 = load i64, ptr %82, align 8, !tbaa !23
  br label %219

219:                                              ; preds = %216, %212
  %220 = phi i64 [ %218, %216 ], [ %213, %212 ]
  %221 = icmp ult i64 %220, 9223372036854775807
  call void @llvm.assume(i1 %221)
  %222 = getelementptr inbounds nuw i8, ptr %205, i64 8
  store i64 %220, ptr %222, align 8, !tbaa !23
  store ptr %81, ptr %6, align 8, !tbaa !20
  store i64 0, ptr %82, align 8, !tbaa !23
  store i8 0, ptr %81, align 8, !tbaa !12
  %223 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %224 = getelementptr inbounds nuw i8, ptr %205, i64 48
  store ptr %224, ptr %223, align 8, !tbaa !16
  %225 = load ptr, ptr %7, align 8, !tbaa !20
  %226 = icmp eq ptr %225, %77
  br i1 %226, label %227, label %231

227:                                              ; preds = %219
  %228 = load i64, ptr %78, align 8, !tbaa !23
  %229 = icmp ult i64 %228, 16
  call void @llvm.assume(i1 %229)
  %230 = add nuw nsw i64 %228, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %224, ptr noundef nonnull align 8 dereferenceable(1) %77, i64 %230, i1 false)
  br label %234

231:                                              ; preds = %219
  store ptr %225, ptr %223, align 8, !tbaa !20
  %232 = load i64, ptr %77, align 8, !tbaa !12
  store i64 %232, ptr %224, align 8, !tbaa !12
  %233 = load i64, ptr %78, align 8, !tbaa !23
  br label %234

234:                                              ; preds = %227, %231
  %235 = phi i64 [ %233, %231 ], [ %228, %227 ]
  %236 = icmp ult i64 %235, 9223372036854775807
  call void @llvm.assume(i1 %236)
  %237 = getelementptr inbounds nuw i8, ptr %205, i64 40
  store i64 %235, ptr %237, align 8, !tbaa !23
  store ptr %77, ptr %7, align 8, !tbaa !20
  store i64 0, ptr %78, align 8, !tbaa !23
  %238 = load ptr, ptr %79, align 8, !tbaa !71
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 64
  store ptr %239, ptr %79, align 8, !tbaa !71
  br label %247

240:                                              ; preds = %204
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS6_S6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %241 unwind label %263

241:                                              ; preds = %240
  %242 = load ptr, ptr %7, align 8, !tbaa !20
  %243 = icmp eq ptr %242, %77
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i64, ptr %77, align 8, !tbaa !12
  %246 = add i64 %245, 1
  call void @_ZdlPvm(ptr noundef %242, i64 noundef %246) #28
  br label %247

247:                                              ; preds = %241, %234, %244
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %248 = load ptr, ptr %6, align 8, !tbaa !20
  %249 = icmp eq ptr %248, %81
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i64, ptr %81, align 8, !tbaa !12
  %252 = add i64 %251, 1
  call void @_ZdlPvm(ptr noundef %248, i64 noundef %252) #28
  br label %253

253:                                              ; preds = %247, %250
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %254

254:                                              ; preds = %144, %112, %253
  %255 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %256 = icmp eq ptr %255, %74
  br i1 %256, label %83, label %112

257:                                              ; preds = %150
  %258 = landingpad { ptr, i32 }
          cleanup
  br label %277

259:                                              ; preds = %193
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %270

261:                                              ; preds = %158
  %262 = landingpad { ptr, i32 }
          cleanup
  br label %270

263:                                              ; preds = %240
  %264 = landingpad { ptr, i32 }
          cleanup
  %265 = load ptr, ptr %7, align 8, !tbaa !20
  %266 = icmp eq ptr %265, %77
  br i1 %266, label %270, label %267

267:                                              ; preds = %263
  %268 = load i64, ptr %77, align 8, !tbaa !12
  %269 = add i64 %268, 1
  call void @_ZdlPvm(ptr noundef %265, i64 noundef %269) #28
  br label %270

270:                                              ; preds = %263, %259, %261, %267
  %271 = phi { ptr, i32 } [ %264, %267 ], [ %262, %261 ], [ %260, %259 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %272 = load ptr, ptr %6, align 8, !tbaa !20
  %273 = icmp eq ptr %272, %81
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = load i64, ptr %81, align 8, !tbaa !12
  %276 = add i64 %275, 1
  call void @_ZdlPvm(ptr noundef %272, i64 noundef %276) #28
  br label %277

277:                                              ; preds = %270, %274, %257
  %278 = phi { ptr, i32 } [ %258, %257 ], [ %271, %274 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %279

279:                                              ; preds = %277, %110
  %280 = phi { ptr, i32 } [ %278, %277 ], [ %111, %110 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %281 = load ptr, ptr %4, align 8, !tbaa !20
  %282 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %283 = icmp eq ptr %281, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load i64, ptr %282, align 8, !tbaa !12
  %286 = add i64 %285, 1
  call void @_ZdlPvm(ptr noundef %281, i64 noundef %286) #28
  br label %287

287:                                              ; preds = %279, %284
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %280

288:                                              ; preds = %109, %67
  %289 = load ptr, ptr %4, align 8, !tbaa !20
  %290 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %291 = icmp eq ptr %289, %290
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load i64, ptr %290, align 8, !tbaa !12
  %294 = add i64 %293, 1
  call void @_ZdlPvm(ptr noundef %289, i64 noundef %294) #28
  br label %295

295:                                              ; preds = %288, %292
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %2, %1 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i64, ptr %10, align 8, !tbaa !12
  %14 = add i64 %13, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %14) #28
  br label %15

15:                                               ; preds = %6, %12
  %16 = load ptr, ptr %7, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8, !tbaa !12
  %21 = add i64 %20, 1
  tail call void @_ZdlPvm(ptr noundef %16, i64 noundef %21) #28
  br label %22

22:                                               ; preds = %15, %19
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %6, !llvm.loop !72

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8, !tbaa !69
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %2, %1 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %33, %34
  tail call void @_ZdlPvm(ptr noundef nonnull %28, i64 noundef %35) #28
  br label %36

36:                                               ; preds = %27, %30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20unordered_map_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1, %24
  %7 = phi ptr [ %8, %24 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = load i64, ptr %12, align 8, !tbaa !12
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #28
  br label %17

17:                                               ; preds = %6, %14
  %18 = load ptr, ptr %9, align 8, !tbaa !20
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8, !tbaa !12
  %23 = add i64 %22, 1
  tail call void @_ZdlPvm(ptr noundef %18, i64 noundef %23) #28
  br label %24

24:                                               ; preds = %17, %21
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef 80) #28
  %25 = icmp eq ptr %8, null
  br i1 %25, label %26, label %6, !llvm.loop !159

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr %2, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %32 = load i64, ptr %31, align 8, !tbaa !65
  %33 = shl i64 %32, 3
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %33) #28
  br label %34

34:                                               ; preds = %26, %30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20unordered_map_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1, %24
  %7 = phi ptr [ %8, %24 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = load i64, ptr %12, align 8, !tbaa !12
  %16 = add i64 %15, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #28
  br label %17

17:                                               ; preds = %6, %14
  %18 = load ptr, ptr %9, align 8, !tbaa !20
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8, !tbaa !12
  %23 = add i64 %22, 1
  tail call void @_ZdlPvm(ptr noundef %18, i64 noundef %23) #28
  br label %24

24:                                               ; preds = %17, %21
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef 80) #28
  %25 = icmp eq ptr %8, null
  br i1 %25, label %26, label %6, !llvm.loop !159

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr %2, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %32 = load i64, ptr %31, align 8, !tbaa !65
  %33 = shl i64 %32, 3
  tail call void @_ZdlPvm(ptr noundef %27, i64 noundef %33) #28
  br label %34

34:                                               ; preds = %26, %30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #28
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14json_parse_keyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !12, !noalias !160
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #25, !noalias !160
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %6, !llvm.loop !13

16:                                               ; preds = %13, %6, %3
  %17 = phi i64 [ 0, %3 ], [ %1, %13 ], [ %7, %6 ]
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i64 [ %1, %16 ], [ %22, %21 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = add i64 %19, -1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !12, !noalias !160
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #25, !noalias !160
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !15

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %34, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %31, ptr %4, align 8, !tbaa !16, !alias.scope !160
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !23, !alias.scope !160
  store i8 0, ptr %31, align 8, !tbaa !12, !alias.scope !160
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %33, ptr %0, align 8, !tbaa !16
  br label %87

34:                                               ; preds = %28
  %35 = sub nuw i64 %19, %17
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %37, ptr %4, align 8, !tbaa !16, !alias.scope !160
  %38 = icmp ugt i64 %35, 15
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = icmp ugt i64 %35, 9223372036854775806
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %35, 1
  %44 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #27
  store ptr %44, ptr %4, align 8, !tbaa !20, !alias.scope !160
  store i64 %35, ptr %37, align 8, !tbaa !12, !alias.scope !160
  br label %45

45:                                               ; preds = %42, %34
  %46 = phi ptr [ %44, %42 ], [ %37, %34 ]
  switch i64 %35, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %36, align 1, !tbaa !12, !noalias !160
  store i8 %48, ptr %46, align 1, !tbaa !12
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %36, i64 %35, i1 false)
  br label %50

50:                                               ; preds = %45, %47, %49
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %35, ptr %51, align 8, !tbaa !23, !alias.scope !160
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %35
  store i8 0, ptr %52, align 1, !tbaa !12
  %53 = load i64, ptr %51, align 8, !tbaa !23
  %54 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %54)
  %55 = icmp samesign ugt i64 %53, 1
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !tbaa !20
  %58 = load i8, ptr %57, align 1, !tbaa !12
  %59 = icmp eq i8 %58, 34
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %57, i64 %53
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !12
  %64 = icmp eq i8 %63, 34
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = add nsw i64 %53, -2
  %67 = getelementptr inbounds nuw i8, ptr %57, i64 1
  invoke void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %66, ptr nonnull %67)
          to label %101 unwind label %68

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %4, align 8, !tbaa !20
  br label %109

71:                                               ; preds = %60, %56
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %72, ptr %0, align 8, !tbaa !16
  %73 = icmp samesign ugt i64 %53, 15
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = add nuw nsw i64 %53, 1
  %76 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %75) #27
          to label %77 unwind label %99

77:                                               ; preds = %74
  store ptr %76, ptr %0, align 8, !tbaa !20
  store i64 %53, ptr %72, align 8, !tbaa !12
  br label %91

78:                                               ; preds = %50
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %79, ptr %0, align 8, !tbaa !16
  %80 = load ptr, ptr %4, align 8, !tbaa !20
  %81 = icmp eq i64 %53, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %71, %78
  %83 = phi i64 [ 1, %78 ], [ %53, %71 ]
  %84 = phi ptr [ %79, %78 ], [ %72, %71 ]
  %85 = phi ptr [ %80, %78 ], [ %57, %71 ]
  %86 = add nuw nsw i64 %83, 1
  br label %91

87:                                               ; preds = %30, %78
  %88 = phi ptr [ %31, %30 ], [ %80, %78 ]
  %89 = phi ptr [ %33, %30 ], [ %79, %78 ]
  %90 = load i8, ptr %88, align 1, !tbaa !12
  store i8 %90, ptr %89, align 1, !tbaa !12
  br label %96

91:                                               ; preds = %82, %77
  %92 = phi i64 [ %83, %82 ], [ %53, %77 ]
  %93 = phi ptr [ %85, %82 ], [ %57, %77 ]
  %94 = phi i64 [ %86, %82 ], [ %75, %77 ]
  %95 = phi ptr [ %84, %82 ], [ %76, %77 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %95, ptr noundef nonnull align 1 dereferenceable(1) %93, i64 %94, i1 false)
  br label %96

96:                                               ; preds = %87, %91
  %97 = phi i64 [ 0, %87 ], [ %92, %91 ]
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %97, ptr %98, align 8, !tbaa !23
  br label %101

99:                                               ; preds = %74
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %109

101:                                              ; preds = %65, %96
  %102 = load ptr, ptr %4, align 8, !tbaa !20
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i64, ptr %103, align 8, !tbaa !12
  %107 = add i64 %106, 1
  call void @_ZdlPvm(ptr noundef %102, i64 noundef %107) #28
  br label %108

108:                                              ; preds = %101, %105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

109:                                              ; preds = %99, %68
  %110 = phi ptr [ %70, %68 ], [ %57, %99 ]
  %111 = phi { ptr, i32 } [ %69, %68 ], [ %100, %99 ]
  %112 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %113 = icmp eq ptr %110, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i64, ptr %112, align 8, !tbaa !12
  %116 = add i64 %115, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %116) #28
  br label %117

117:                                              ; preds = %109, %114
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %111
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS6_S6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = load ptr, ptr %0, align 8, !tbaa !69
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 6
  %11 = icmp sgt i64 %10, -1
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 %9, 9223372036854775744
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

14:                                               ; preds = %3
  %15 = tail call i64 @llvm.umax.i64(i64 %10, i64 1)
  %16 = add nuw nsw i64 %15, %10
  %17 = tail call noundef i64 @llvm.umin.i64(i64 %16, i64 144115188075855871)
  %18 = shl nuw nsw i64 %17, 6
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #27
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %20, align 8, !tbaa !16
  %22 = load ptr, ptr %1, align 8, !tbaa !20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !23
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  %29 = add nuw nsw i64 %27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %23, i64 %29, i1 false)
  br label %34

30:                                               ; preds = %14
  store ptr %22, ptr %20, align 8, !tbaa !20
  %31 = load i64, ptr %23, align 8, !tbaa !12
  store i64 %31, ptr %21, align 8, !tbaa !12
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !23
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i64 [ %33, %30 ], [ %27, %25 ]
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %37 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %35, ptr %38, align 8, !tbaa !23
  store ptr %23, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %36, align 8, !tbaa !23
  store i8 0, ptr %23, align 8, !tbaa !12
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %40, ptr %39, align 8, !tbaa !16
  %41 = load ptr, ptr %2, align 8, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !23
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  %48 = add nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %42, i64 %48, i1 false)
  br label %53

49:                                               ; preds = %34
  store ptr %41, ptr %39, align 8, !tbaa !20
  %50 = load i64, ptr %42, align 8, !tbaa !12
  store i64 %50, ptr %40, align 8, !tbaa !12
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !23
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i64 [ %46, %44 ], [ %52, %49 ]
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = icmp ult i64 %54, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 %54, ptr %57, align 8, !tbaa !23
  store ptr %42, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %55, align 8, !tbaa !23
  store i8 0, ptr %42, align 8, !tbaa !12
  %58 = icmp eq ptr %6, %5
  br i1 %58, label %103, label %59

59:                                               ; preds = %53, %95
  %60 = phi ptr [ %101, %95 ], [ %19, %53 ]
  %61 = phi ptr [ %100, %95 ], [ %6, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %62, ptr %60, align 8, !tbaa !16, !alias.scope !163, !noalias !166
  %63 = load ptr, ptr %61, align 8, !tbaa !20, !alias.scope !166, !noalias !163
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %70, i1 false), !alias.scope !168
  br label %75

71:                                               ; preds = %59
  store ptr %63, ptr %60, align 8, !tbaa !20, !alias.scope !163, !noalias !166
  %72 = load i64, ptr %64, align 8, !tbaa !12, !alias.scope !166, !noalias !163
  store i64 %72, ptr %62, align 8, !tbaa !12, !alias.scope !163, !noalias !166
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %74, %71 ], [ %68, %66 ]
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %78 = icmp ult i64 %76, 9223372036854775807
  tail call void @llvm.assume(i1 %78)
  %79 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %76, ptr %79, align 8, !tbaa !23, !alias.scope !163, !noalias !166
  store ptr %64, ptr %61, align 8, !tbaa !20, !alias.scope !166, !noalias !163
  store i64 0, ptr %77, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  store i8 0, ptr %64, align 8, !tbaa !12, !alias.scope !166, !noalias !163
  %80 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %82, ptr %80, align 8, !tbaa !16, !alias.scope !163, !noalias !166
  %83 = load ptr, ptr %81, align 8, !tbaa !20, !alias.scope !166, !noalias !163
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %82, ptr noundef nonnull align 8 dereferenceable(1) %84, i64 %90, i1 false), !alias.scope !168
  br label %95

91:                                               ; preds = %75
  store ptr %83, ptr %80, align 8, !tbaa !20, !alias.scope !163, !noalias !166
  %92 = load i64, ptr %84, align 8, !tbaa !12, !alias.scope !166, !noalias !163
  store i64 %92, ptr %82, align 8, !tbaa !12, !alias.scope !163, !noalias !166
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i64 [ %88, %86 ], [ %94, %91 ]
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %98 = icmp ult i64 %96, 9223372036854775807
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i64 %96, ptr %99, align 8, !tbaa !23, !alias.scope !163, !noalias !166
  store ptr %84, ptr %81, align 8, !tbaa !20, !alias.scope !166, !noalias !163
  store i64 0, ptr %97, align 8, !tbaa !23, !alias.scope !166, !noalias !163
  store i8 0, ptr %84, align 8, !tbaa !12, !alias.scope !166, !noalias !163
  %100 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %102 = icmp eq ptr %100, %5
  br i1 %102, label %103, label %59, !llvm.loop !169

103:                                              ; preds = %95, %53
  %104 = phi ptr [ %19, %53 ], [ %101, %95 ]
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %106 = icmp eq ptr %6, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %105, align 8, !tbaa !73
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %109, %8
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %110) #28
  br label %111

111:                                              ; preds = %103, %107
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 64
  store ptr %19, ptr %0, align 8, !tbaa !69
  store ptr %112, ptr %4, align 8, !tbaa !71
  %113 = getelementptr inbounds nuw %"struct.std::pair", ptr %19, i64 %17
  store ptr %113, ptr %105, align 8, !tbaa !73
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %4, align 8, !tbaa !12
  %8 = add i64 %7, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %8) #28
  br label %9

9:                                                ; preds = %1, %6
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8, !tbaa !12
  %15 = add i64 %14, 1
  tail call void @_ZdlPvm(ptr noundef %10, i64 noundef %15) #28
  br label %16

16:                                               ; preds = %9, %13
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !23
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %4, i64 noundef %6, i64 noundef 3339675911)
          to label %12 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #29
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !65
  %15 = urem i64 %8, %14
  %16 = load ptr, ptr %0, align 8, !tbaa !58
  %17 = getelementptr inbounds nuw ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !170
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %1, align 8, !tbaa !20
  br i1 %19, label %68, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %18, align 8, !tbaa !95
  %23 = load i64, ptr %5, align 8
  %24 = freeze i64 %23
  %25 = icmp ult i64 %24, 9223372036854775807
  %26 = icmp eq i64 %24, 0
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 72
  %28 = load i64, ptr %27, align 8, !tbaa !171
  br i1 %26, label %29, label %46

29:                                               ; preds = %21, %41
  %30 = phi i64 [ %43, %41 ], [ %28, %21 ]
  %31 = phi ptr [ %39, %41 ], [ %22, %21 ]
  %32 = icmp eq i64 %8, %30
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  tail call void @llvm.assume(i1 %25)
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !23
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %130, label %38

38:                                               ; preds = %33, %29
  %39 = load ptr, ptr %31, align 8, !tbaa !95
  %40 = icmp eq ptr %39, null
  br i1 %40, label %68, label %41, !prof !74

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 72
  %43 = load i64, ptr %42, align 8, !tbaa !171
  %44 = urem i64 %43, %14
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %29, label %68, !prof !130, !llvm.loop !173

46:                                               ; preds = %21, %63
  %47 = phi i64 [ %65, %63 ], [ %28, %21 ]
  %48 = phi ptr [ %61, %63 ], [ %22, %21 ]
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = icmp eq i64 %8, %47
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  tail call void @llvm.assume(i1 %25)
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %53 = load i64, ptr %52, align 8, !tbaa !23
  %54 = icmp ult i64 %53, 9223372036854775807
  tail call void @llvm.assume(i1 %54)
  %55 = icmp eq i64 %24, %53
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load ptr, ptr %49, align 8, !tbaa !20
  %58 = tail call i32 @bcmp(ptr %20, ptr %57, i64 %24)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %130, label %60

60:                                               ; preds = %56, %51, %46
  %61 = load ptr, ptr %48, align 8, !tbaa !95
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !74

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 72
  %65 = load i64, ptr %64, align 8, !tbaa !171
  %66 = urem i64 %65, %14
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %46, label %68, !prof !130, !llvm.loop !173

68:                                               ; preds = %63, %60, %38, %41, %12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %0, ptr %3, align 8, !tbaa !174
  %69 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
  store ptr null, ptr %69, align 8, !tbaa !95
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 24
  store ptr %71, ptr %70, align 8, !tbaa !16
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %73 = icmp eq ptr %20, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, ptr %5, align 8, !tbaa !23
  %76 = icmp ult i64 %75, 16
  tail call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %72, i64 %77, i1 false)
  br label %81

78:                                               ; preds = %68
  store ptr %20, ptr %70, align 8, !tbaa !20
  %79 = load i64, ptr %72, align 8, !tbaa !12
  store i64 %79, ptr %71, align 8, !tbaa !12
  %80 = load i64, ptr %5, align 8, !tbaa !23
  br label %81

81:                                               ; preds = %74, %78
  %82 = phi i64 [ %75, %74 ], [ %80, %78 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %84 = icmp ult i64 %82, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i64 %82, ptr %85, align 8, !tbaa !23
  store ptr %72, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %72, align 8, !tbaa !12
  %86 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %87 = getelementptr inbounds nuw i8, ptr %69, i64 56
  store ptr %87, ptr %86, align 8, !tbaa !16
  %88 = getelementptr inbounds nuw i8, ptr %69, i64 48
  store i64 0, ptr %88, align 8, !tbaa !23
  store i8 0, ptr %87, align 8, !tbaa !12
  store ptr %69, ptr %83, align 8, !tbaa !178
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %91 = load i64, ptr %90, align 8, !tbaa !179
  %92 = load i64, ptr %13, align 8, !tbaa !65
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %94 = load i64, ptr %93, align 8, !tbaa !94
  %95 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %89, i64 noundef %92, i64 noundef %94, i64 noundef 1)
          to label %96 unwind label %104

96:                                               ; preds = %81
  %97 = extractvalue { i8, i64 } %95, 0
  %98 = trunc i8 %97 to i1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = extractvalue { i8, i64 } %95, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %100)
          to label %101 unwind label %104

101:                                              ; preds = %99
  %102 = load i64, ptr %13, align 8, !tbaa !65
  %103 = urem i64 %8, %102
  br label %106

104:                                              ; preds = %99, %81
  %105 = landingpad { ptr, i32 }
          cleanup
  store i64 %91, ptr %90, align 8, !tbaa !179
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %105

106:                                              ; preds = %101, %96
  %107 = phi i64 [ %15, %96 ], [ %103, %101 ]
  %108 = getelementptr inbounds nuw i8, ptr %69, i64 72
  store i64 %8, ptr %108, align 8, !tbaa !171
  %109 = load ptr, ptr %0, align 8, !tbaa !58
  %110 = getelementptr inbounds nuw ptr, ptr %109, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !170
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr %111, align 8, !tbaa !95
  store ptr %114, ptr %69, align 8, !tbaa !95
  %115 = load ptr, ptr %110, align 8, !tbaa !170
  store ptr %69, ptr %115, align 8, !tbaa !95
  br label %127

116:                                              ; preds = %106
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %118 = load ptr, ptr %117, align 8, !tbaa !158
  store ptr %118, ptr %69, align 8, !tbaa !95
  store ptr %69, ptr %117, align 8, !tbaa !158
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load i64, ptr %13, align 8, !tbaa !65
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 72
  %123 = load i64, ptr %122, align 8, !tbaa !171
  %124 = urem i64 %123, %121
  %125 = getelementptr inbounds nuw ptr, ptr %109, i64 %124
  store ptr %69, ptr %125, align 8, !tbaa !170
  br label %126

126:                                              ; preds = %120, %116
  store ptr %117, ptr %110, align 8, !tbaa !170
  br label %127

127:                                              ; preds = %113, %126
  %128 = load i64, ptr %93, align 8, !tbaa !94
  %129 = add i64 %128, 1
  store i64 %129, ptr %93, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %130

130:                                              ; preds = %56, %33, %127
  %131 = phi ptr [ %69, %127 ], [ %31, %33 ], [ %48, %56 ]
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 40
  ret ptr %132
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !178
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %9, align 8, !tbaa !12
  %13 = add i64 %12, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %13) #28
  br label %14

14:                                               ; preds = %5, %11
  %15 = load ptr, ptr %6, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %16, align 8, !tbaa !12
  %20 = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %15, i64 noundef %20) #28
  br label %21

21:                                               ; preds = %14, %18
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 80) #28
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 1
  br i1 %3, label %4, label %6, !prof !74

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %5, align 8, !tbaa !180
  br label %15

6:                                                ; preds = %2
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %12, !prof !74

8:                                                ; preds = %6
  %9 = icmp ugt i64 %1, 2305843009213693951
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

11:                                               ; preds = %8
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

12:                                               ; preds = %6
  %13 = shl nuw nsw i64 %1, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %14, i8 0, i64 %13, i1 false)
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %5, %4 ], [ %14, %12 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !158
  store ptr null, ptr %17, align 8, !tbaa !158
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %15, %39
  %21 = phi ptr [ %23, %39 ], [ %18, %15 ]
  %22 = phi i64 [ %40, %39 ], [ 0, %15 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !95
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 72
  %25 = load i64, ptr %24, align 8, !tbaa !171
  %26 = urem i64 %25, %1
  %27 = getelementptr inbounds nuw ptr, ptr %16, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !170
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %17, align 8, !tbaa !158
  store ptr %31, ptr %21, align 8, !tbaa !95
  store ptr %21, ptr %17, align 8, !tbaa !158
  store ptr %17, ptr %27, align 8, !tbaa !170
  %32 = load ptr, ptr %21, align 8, !tbaa !95
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw ptr, ptr %16, i64 %22
  store ptr %21, ptr %35, align 8, !tbaa !170
  br label %39

36:                                               ; preds = %20
  %37 = load ptr, ptr %28, align 8, !tbaa !95
  store ptr %37, ptr %21, align 8, !tbaa !95
  %38 = load ptr, ptr %27, align 8, !tbaa !170
  store ptr %21, ptr %38, align 8, !tbaa !95
  br label %39

39:                                               ; preds = %30, %34, %36
  %40 = phi i64 [ %22, %36 ], [ %26, %34 ], [ %26, %30 ]
  %41 = icmp eq ptr %23, null
  br i1 %41, label %42, label %20, !llvm.loop !181

42:                                               ; preds = %39, %15
  %43 = load ptr, ptr %0, align 8, !tbaa !58
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !65
  %49 = shl i64 %48, 3
  tail call void @_ZdlPvm(ptr noundef %43, i64 noundef %49) #28
  br label %50

50:                                               ; preds = %42, %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %51, align 8, !tbaa !65
  store ptr %16, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

18:                                               ; preds = %15
  %19 = shl nuw i64 %11, 1
  %20 = icmp ult i64 %1, %19
  %21 = tail call i64 @llvm.umin.i64(i64 %19, i64 9223372036854775806)
  %22 = select i1 %20, i64 %21, i64 %1
  %23 = add nuw nsw i64 %22, 1
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %23) #27
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !23
  %27 = icmp ult i64 %26, 9223372036854775807
  tail call void @llvm.assume(i1 %27)
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i8, ptr %7, align 1, !tbaa !12
  store i8 %30, ptr %24, align 1, !tbaa !12
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
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %37) #28
  br label %38

38:                                               ; preds = %36, %34
  store ptr %24, ptr %0, align 8, !tbaa !20
  store i64 %22, ptr %8, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %4, %38
  %40 = phi ptr [ %7, %4 ], [ %24, %38 ]
  store i8 45, ptr %40, align 1, !tbaa !12
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
  %54 = load i8, ptr %53, align 1, !tbaa !12
  %55 = zext i32 %48 to i64
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !12
  %57 = load i8, ptr %52, align 2, !tbaa !12
  %58 = add i32 %48, -1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %42, i64 %59
  store i8 %57, ptr %60, align 1, !tbaa !12
  %61 = add i32 %48, -2
  %62 = icmp ugt i64 %47, 9999
  br i1 %62, label %46, label %63, !llvm.loop !182

63:                                               ; preds = %46, %39
  %64 = phi i64 [ %3, %39 ], [ %51, %46 ]
  %65 = icmp samesign ugt i64 %64, 9
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = shl nuw nsw i64 %64, 1
  %68 = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !12
  %71 = getelementptr inbounds nuw i8, ptr %42, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !12
  %72 = load i8, ptr %68, align 2, !tbaa !12
  br label %76

73:                                               ; preds = %63
  %74 = trunc nuw nsw i64 %64 to i8
  %75 = or disjoint i8 %74, 48
  br label %76

76:                                               ; preds = %66, %73
  %77 = phi i8 [ %75, %73 ], [ %72, %66 ]
  store i8 %77, ptr %42, align 1, !tbaa !12
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %78, align 8, !tbaa !23
  %79 = load ptr, ptr %0, align 8, !tbaa !20
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %1
  store i8 0, ptr %80, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind sspstrong uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #14 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress sspstrong uwtable
declare void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %4, align 8, !tbaa !12
  %6 = add i64 %1, 2
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = icmp ugt i64 %6, 9223372036854775806
  br i1 %9, label %38, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @llvm.umax.i64(i64 %6, i64 30)
  %12 = add nuw nsw i64 %11, 1
  %13 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #27
          to label %14 unwind label %53

14:                                               ; preds = %10
  store i8 0, ptr %13, align 1, !tbaa !12
  store ptr %13, ptr %0, align 8, !tbaa !20
  store i64 %11, ptr %4, align 8, !tbaa !12
  store i8 34, ptr %13, align 1, !tbaa !12
  store i64 1, ptr %5, align 8, !tbaa !23
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 0, ptr %15, align 1, !tbaa !12
  br label %20

16:                                               ; preds = %3
  store i8 34, ptr %4, align 8, !tbaa !12
  store i64 1, ptr %5, align 8, !tbaa !23
  %17 = load ptr, ptr %0, align 8, !tbaa !20
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  store i8 0, ptr %18, align 1, !tbaa !12
  %19 = icmp samesign eq i64 %1, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14, %16
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %1
  br label %55

22:                                               ; preds = %182, %16
  %23 = load i64, ptr %5, align 8, !tbaa !23
  %24 = icmp ult i64 %23, 9223372036854775807
  tail call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = icmp eq ptr %26, %4
  %28 = load i64, ptr %4, align 8
  br i1 %27, label %29, label %31

29:                                               ; preds = %22
  %30 = icmp samesign ugt i64 %23, 14
  br i1 %30, label %35, label %188

31:                                               ; preds = %22
  %32 = icmp samesign ugt i64 %28, 14
  tail call void @llvm.assume(i1 %32)
  %33 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %33)
  %34 = icmp samesign ult i64 %23, %28
  br i1 %34, label %188, label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %28, %31 ], [ 15, %29 ]
  %37 = icmp eq i64 %25, 9223372036854775807
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %39 unwind label %53

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %35
  %41 = shl nuw i64 %36, 1
  %42 = icmp ult i64 %25, %41
  %43 = tail call i64 @llvm.umin.i64(i64 %41, i64 9223372036854775806)
  %44 = select i1 %42, i64 %43, i64 %25
  %45 = add nuw nsw i64 %44, 1
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #27
          to label %47 unwind label %53

47:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %26, i64 %23, i1 false)
  br i1 %27, label %48, label %50

48:                                               ; preds = %47
  %49 = icmp samesign ult i64 %23, 16
  tail call void @llvm.assume(i1 %49)
  br label %52

50:                                               ; preds = %47
  %51 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %26, i64 noundef %51) #28
  br label %52

52:                                               ; preds = %50, %48
  store ptr %46, ptr %0, align 8, !tbaa !20
  store i64 %44, ptr %4, align 8, !tbaa !12
  br label %188

53:                                               ; preds = %38, %40, %10
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %193

55:                                               ; preds = %20, %182
  %56 = phi ptr [ %186, %182 ], [ %2, %20 ]
  %57 = load i8, ptr %56, align 1, !tbaa !12
  %58 = load i64, ptr %5, align 8, !tbaa !23
  %59 = icmp ult i64 %58, 9223372036854775807
  tail call void @llvm.assume(i1 %59)
  switch i8 %57, label %152 [
    i8 92, label %60
    i8 34, label %84
    i8 10, label %101
    i8 13, label %118
    i8 9, label %135
  ]

60:                                               ; preds = %55
  %61 = icmp samesign ugt i64 %58, 9223372036854775804
  br i1 %61, label %62, label %65

62:                                               ; preds = %60, %163, %135, %118, %101, %84
  %63 = phi ptr [ @.str.4, %163 ], [ @.str.15, %135 ], [ @.str.15, %84 ], [ @.str.15, %101 ], [ @.str.15, %118 ], [ @.str.15, %60 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %63) #26
          to label %64 unwind label %82

64:                                               ; preds = %62
  unreachable

65:                                               ; preds = %60
  %66 = add nuw nsw i64 %58, 2
  %67 = load ptr, ptr %0, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %4
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %70)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, ptr %4, align 8
  %73 = select i1 %68, i64 15, i64 %72
  %74 = icmp samesign ugt i64 %73, 14
  tail call void @llvm.assume(i1 %74)
  %75 = icmp ult i64 %73, 9223372036854775807
  tail call void @llvm.assume(i1 %75)
  %76 = icmp samesign ugt i64 %66, %73
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds nuw i8, ptr %67, i64 %58
  store i16 23644, ptr %78, align 1
  br label %182

79:                                               ; preds = %71
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %182 unwind label %80

80:                                               ; preds = %79, %100, %117, %134, %151, %166
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %193

82:                                               ; preds = %62
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %193

84:                                               ; preds = %55
  %85 = icmp samesign ugt i64 %58, 9223372036854775804
  br i1 %85, label %62, label %86

86:                                               ; preds = %84
  %87 = add nuw nsw i64 %58, 2
  %88 = load ptr, ptr %0, align 8, !tbaa !20
  %89 = icmp eq ptr %88, %4
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %91)
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i64, ptr %4, align 8
  %94 = select i1 %89, i64 15, i64 %93
  %95 = icmp samesign ugt i64 %94, 14
  tail call void @llvm.assume(i1 %95)
  %96 = icmp ult i64 %94, 9223372036854775807
  tail call void @llvm.assume(i1 %96)
  %97 = icmp samesign ugt i64 %87, %94
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds nuw i8, ptr %88, i64 %58
  store i16 8796, ptr %99, align 1
  br label %182

100:                                              ; preds = %92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %182 unwind label %80

101:                                              ; preds = %55
  %102 = icmp samesign ugt i64 %58, 9223372036854775804
  br i1 %102, label %62, label %103

103:                                              ; preds = %101
  %104 = add nuw nsw i64 %58, 2
  %105 = load ptr, ptr %0, align 8, !tbaa !20
  %106 = icmp eq ptr %105, %4
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %108)
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i64, ptr %4, align 8
  %111 = select i1 %106, i64 15, i64 %110
  %112 = icmp samesign ugt i64 %111, 14
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ult i64 %111, 9223372036854775807
  tail call void @llvm.assume(i1 %113)
  %114 = icmp samesign ugt i64 %104, %111
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds nuw i8, ptr %105, i64 %58
  store i16 28252, ptr %116, align 1
  br label %182

117:                                              ; preds = %109
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %182 unwind label %80

118:                                              ; preds = %55
  %119 = icmp samesign ugt i64 %58, 9223372036854775804
  br i1 %119, label %62, label %120

120:                                              ; preds = %118
  %121 = add nuw nsw i64 %58, 2
  %122 = load ptr, ptr %0, align 8, !tbaa !20
  %123 = icmp eq ptr %122, %4
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %125)
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i64, ptr %4, align 8
  %128 = select i1 %123, i64 15, i64 %127
  %129 = icmp samesign ugt i64 %128, 14
  tail call void @llvm.assume(i1 %129)
  %130 = icmp ult i64 %128, 9223372036854775807
  tail call void @llvm.assume(i1 %130)
  %131 = icmp samesign ugt i64 %121, %128
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds nuw i8, ptr %122, i64 %58
  store i16 29276, ptr %133, align 1
  br label %182

134:                                              ; preds = %126
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %182 unwind label %80

135:                                              ; preds = %55
  %136 = icmp samesign ugt i64 %58, 9223372036854775804
  br i1 %136, label %62, label %137

137:                                              ; preds = %135
  %138 = add nuw nsw i64 %58, 2
  %139 = load ptr, ptr %0, align 8, !tbaa !20
  %140 = icmp eq ptr %139, %4
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %142)
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i64, ptr %4, align 8
  %145 = select i1 %140, i64 15, i64 %144
  %146 = icmp samesign ugt i64 %145, 14
  tail call void @llvm.assume(i1 %146)
  %147 = icmp ult i64 %145, 9223372036854775807
  tail call void @llvm.assume(i1 %147)
  %148 = icmp samesign ugt i64 %138, %145
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds nuw i8, ptr %139, i64 %58
  store i16 29788, ptr %150, align 1
  br label %182

151:                                              ; preds = %143
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %182 unwind label %80

152:                                              ; preds = %55
  %153 = add nuw nsw i64 %58, 1
  %154 = load ptr, ptr %0, align 8, !tbaa !20
  %155 = icmp eq ptr %154, %4
  %156 = load i64, ptr %4, align 8
  br i1 %155, label %157, label %159

157:                                              ; preds = %152
  %158 = icmp samesign ugt i64 %58, 14
  br i1 %158, label %163, label %179

159:                                              ; preds = %152
  %160 = icmp samesign ugt i64 %156, 14
  tail call void @llvm.assume(i1 %160)
  %161 = icmp ult i64 %156, 9223372036854775807
  tail call void @llvm.assume(i1 %161)
  %162 = icmp samesign ult i64 %58, %156
  br i1 %162, label %179, label %163

163:                                              ; preds = %159, %157
  %164 = phi i64 [ %156, %159 ], [ 15, %157 ]
  %165 = icmp eq i64 %153, 9223372036854775807
  br i1 %165, label %62, label %166

166:                                              ; preds = %163
  %167 = shl nuw i64 %164, 1
  %168 = icmp ult i64 %153, %167
  %169 = tail call i64 @llvm.umin.i64(i64 %167, i64 9223372036854775806)
  %170 = select i1 %168, i64 %169, i64 %153
  %171 = add nuw nsw i64 %170, 1
  %172 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %171) #27
          to label %173 unwind label %80

173:                                              ; preds = %166
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %172, ptr align 1 %154, i64 %58, i1 false)
  br i1 %155, label %174, label %176

174:                                              ; preds = %173
  %175 = icmp samesign ult i64 %58, 16
  tail call void @llvm.assume(i1 %175)
  br label %178

176:                                              ; preds = %173
  %177 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %154, i64 noundef %177) #28
  br label %178

178:                                              ; preds = %176, %174
  store ptr %172, ptr %0, align 8, !tbaa !20
  store i64 %170, ptr %4, align 8, !tbaa !12
  br label %179

179:                                              ; preds = %157, %159, %178
  %180 = phi ptr [ %154, %159 ], [ %172, %178 ], [ %154, %157 ]
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %58
  store i8 %57, ptr %181, align 1, !tbaa !12
  br label %182

182:                                              ; preds = %149, %151, %132, %134, %115, %117, %98, %100, %77, %79, %179
  %183 = phi i64 [ %153, %179 ], [ %121, %132 ], [ %104, %115 ], [ %87, %98 ], [ %66, %77 ], [ %66, %79 ], [ %87, %100 ], [ %104, %117 ], [ %121, %134 ], [ %138, %151 ], [ %138, %149 ]
  store i64 %183, ptr %5, align 8, !tbaa !23
  %184 = load ptr, ptr %0, align 8, !tbaa !20
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %183
  store i8 0, ptr %185, align 1, !tbaa !12
  %186 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %187 = icmp eq ptr %186, %21
  br i1 %187, label %22, label %55

188:                                              ; preds = %52, %31, %29
  %189 = phi ptr [ %26, %31 ], [ %46, %52 ], [ %26, %29 ]
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %23
  store i8 34, ptr %190, align 1, !tbaa !12
  store i64 %25, ptr %5, align 8, !tbaa !23
  %191 = load ptr, ptr %0, align 8, !tbaa !20
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %25
  store i8 0, ptr %192, align 1, !tbaa !12
  ret void

193:                                              ; preds = %80, %82, %53
  %194 = phi { ptr, i32 } [ %54, %53 ], [ %81, %80 ], [ %83, %82 ]
  %195 = load ptr, ptr %0, align 8, !tbaa !20
  %196 = icmp eq ptr %195, %4
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load i64, ptr %4, align 8, !tbaa !12
  %199 = add i64 %198, 1
  tail call void @_ZdlPvm(ptr noundef %195, i64 noundef %199) #28
  br label %200

200:                                              ; preds = %193, %197
  resume { ptr, i32 } %194
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib26json_write_array_fragmentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %0, align 8, !tbaa !16
  store i8 91, ptr %3, align 8, !tbaa !12
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %4, align 8, !tbaa !23
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %5, align 1, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = load ptr, ptr %1, align 8, !tbaa !135
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %161, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = icmp ult i64 %13, 9223372036854775807
  tail call void @llvm.assume(i1 %14)
  %15 = icmp samesign ugt i64 %13, 9223372036854775805
  br i1 %15, label %89, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp samesign ugt i64 %13, 14
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = icmp eq i64 %13, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %23 = icmp eq i64 %13, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %11, i64 %13, i1 false)
  br label %30

25:                                               ; preds = %21
  %26 = load i8, ptr %11, align 1, !tbaa !12
  store i8 %26, ptr %22, align 1, !tbaa !12
  br label %30

27:                                               ; preds = %16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i64 noundef 0, ptr noundef %11, i64 noundef %13)
          to label %28 unwind label %107

28:                                               ; preds = %27
  %29 = load ptr, ptr %0, align 8, !tbaa !20
  br label %30

30:                                               ; preds = %28, %25, %24, %19
  %31 = phi ptr [ %29, %28 ], [ %3, %25 ], [ %3, %24 ], [ %3, %19 ]
  store i64 %17, ptr %4, align 8, !tbaa !23
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %17
  store i8 0, ptr %32, align 1, !tbaa !12
  %33 = load ptr, ptr %6, align 8, !tbaa !136
  %34 = load ptr, ptr %1, align 8, !tbaa !135
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 5
  %39 = icmp sgt i64 %38, -1
  tail call void @llvm.assume(i1 %39)
  %40 = icmp samesign ugt i64 %38, 1
  br i1 %40, label %72, label %41

41:                                               ; preds = %147, %30
  %42 = load i64, ptr %4, align 8, !tbaa !23
  %43 = load ptr, ptr %0, align 8, !tbaa !20
  %44 = icmp ult i64 %42, 9223372036854775807
  tail call void @llvm.assume(i1 %44)
  %45 = add nuw nsw i64 %42, 1
  %46 = icmp eq ptr %43, %3
  %47 = load i64, ptr %3, align 8
  br i1 %46, label %48, label %50

48:                                               ; preds = %41
  %49 = icmp samesign ugt i64 %42, 14
  br i1 %49, label %54, label %161

50:                                               ; preds = %41
  %51 = icmp samesign ugt i64 %47, 14
  tail call void @llvm.assume(i1 %51)
  %52 = icmp ult i64 %47, 9223372036854775807
  tail call void @llvm.assume(i1 %52)
  %53 = icmp samesign ult i64 %42, %47
  br i1 %53, label %161, label %54

54:                                               ; preds = %50, %48
  %55 = phi i64 [ %47, %50 ], [ 15, %48 ]
  %56 = icmp eq i64 %45, 9223372036854775807
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %58 unwind label %159

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %54
  %60 = shl nuw i64 %55, 1
  %61 = icmp ult i64 %45, %60
  %62 = tail call i64 @llvm.umin.i64(i64 %60, i64 9223372036854775806)
  %63 = select i1 %61, i64 %62, i64 %45
  %64 = add nuw nsw i64 %63, 1
  %65 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %64) #27
          to label %66 unwind label %159

66:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %65, ptr align 1 %43, i64 %42, i1 false)
  br i1 %46, label %67, label %69

67:                                               ; preds = %66
  %68 = icmp samesign ult i64 %42, 16
  tail call void @llvm.assume(i1 %68)
  br label %71

69:                                               ; preds = %66
  %70 = add i64 %47, 1
  tail call void @_ZdlPvm(ptr noundef %43, i64 noundef %70) #28
  br label %71

71:                                               ; preds = %69, %67
  store ptr %65, ptr %0, align 8, !tbaa !20
  store i64 %63, ptr %3, align 8, !tbaa !12
  br label %161

72:                                               ; preds = %30, %147
  %73 = phi i64 [ %150, %147 ], [ 1, %30 ]
  %74 = load i64, ptr %4, align 8, !tbaa !23
  %75 = icmp ult i64 %74, 9223372036854775807
  tail call void @llvm.assume(i1 %75)
  %76 = add nuw nsw i64 %74, 1
  %77 = load ptr, ptr %0, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %3
  %79 = load i64, ptr %3, align 8
  br i1 %78, label %80, label %82

80:                                               ; preds = %72
  %81 = icmp samesign ugt i64 %74, 14
  br i1 %81, label %86, label %111

82:                                               ; preds = %72
  %83 = icmp samesign ugt i64 %79, 14
  tail call void @llvm.assume(i1 %83)
  %84 = icmp ult i64 %79, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = icmp samesign ult i64 %74, %79
  br i1 %85, label %111, label %86

86:                                               ; preds = %82, %80
  %87 = phi i64 [ %79, %82 ], [ 15, %80 ]
  %88 = icmp eq i64 %76, 9223372036854775807
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %111, %10
  %90 = phi ptr [ @.str.15, %10 ], [ @.str.15, %111 ], [ @.str.4, %86 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %90) #26
          to label %91 unwind label %109

91:                                               ; preds = %89
  unreachable

92:                                               ; preds = %86
  %93 = shl nuw i64 %87, 1
  %94 = icmp ult i64 %76, %93
  %95 = tail call i64 @llvm.umin.i64(i64 %93, i64 9223372036854775806)
  %96 = select i1 %94, i64 %95, i64 %76
  %97 = add nuw nsw i64 %96, 1
  %98 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %97) #27
          to label %99 unwind label %105

99:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %98, ptr align 1 %77, i64 %74, i1 false)
  br i1 %78, label %100, label %102

100:                                              ; preds = %99
  %101 = icmp samesign ult i64 %74, 16
  tail call void @llvm.assume(i1 %101)
  br label %104

102:                                              ; preds = %99
  %103 = add i64 %79, 1
  tail call void @_ZdlPvm(ptr noundef %77, i64 noundef %103) #28
  br label %104

104:                                              ; preds = %102, %100
  store ptr %98, ptr %0, align 8, !tbaa !20
  store i64 %96, ptr %3, align 8, !tbaa !12
  br label %111

105:                                              ; preds = %146, %92
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %168

107:                                              ; preds = %27
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %168

109:                                              ; preds = %89
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %168

111:                                              ; preds = %80, %82, %104
  %112 = phi ptr [ %77, %82 ], [ %98, %104 ], [ %77, %80 ]
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 %74
  store i8 44, ptr %113, align 1, !tbaa !12
  store i64 %76, ptr %4, align 8, !tbaa !23
  %114 = load ptr, ptr %0, align 8, !tbaa !20
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 %76
  store i8 0, ptr %115, align 1, !tbaa !12
  %116 = load ptr, ptr %1, align 8, !tbaa !135
  %117 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %116, i64 %73
  %118 = load ptr, ptr %117, align 8, !tbaa !20
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 8
  %120 = load i64, ptr %119, align 8, !tbaa !23
  %121 = icmp ult i64 %120, 9223372036854775807
  tail call void @llvm.assume(i1 %121)
  %122 = load i64, ptr %4, align 8, !tbaa !23
  %123 = icmp ult i64 %122, 9223372036854775807
  tail call void @llvm.assume(i1 %123)
  %124 = sub nuw nsw i64 9223372036854775806, %122
  %125 = icmp samesign ult i64 %124, %120
  br i1 %125, label %89, label %126

126:                                              ; preds = %111
  %127 = add nuw i64 %122, %120
  %128 = load ptr, ptr %0, align 8, !tbaa !20
  %129 = icmp eq ptr %128, %3
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = icmp samesign ult i64 %122, 16
  tail call void @llvm.assume(i1 %131)
  br label %132

132:                                              ; preds = %130, %126
  %133 = load i64, ptr %3, align 8
  %134 = select i1 %129, i64 15, i64 %133
  %135 = icmp samesign ugt i64 %134, 14
  tail call void @llvm.assume(i1 %135)
  %136 = icmp ult i64 %134, 9223372036854775807
  tail call void @llvm.assume(i1 %136)
  %137 = icmp ugt i64 %127, %134
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = icmp eq i64 %120, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %128, i64 %122
  %142 = icmp eq i64 %120, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i8, ptr %118, align 1, !tbaa !12
  store i8 %144, ptr %141, align 1, !tbaa !12
  br label %147

145:                                              ; preds = %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 %118, i64 %120, i1 false)
  br label %147

146:                                              ; preds = %132
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %122, i64 noundef 0, ptr noundef %118, i64 noundef %120)
          to label %147 unwind label %105

147:                                              ; preds = %145, %143, %138, %146
  store i64 %127, ptr %4, align 8, !tbaa !23
  %148 = load ptr, ptr %0, align 8, !tbaa !20
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 %127
  store i8 0, ptr %149, align 1, !tbaa !12
  %150 = add nuw nsw i64 %73, 1
  %151 = load ptr, ptr %6, align 8, !tbaa !136
  %152 = load ptr, ptr %1, align 8, !tbaa !135
  %153 = ptrtoint ptr %151 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = ashr exact i64 %155, 5
  %157 = icmp sgt i64 %156, -1
  tail call void @llvm.assume(i1 %157)
  %158 = icmp samesign ult i64 %150, %156
  br i1 %158, label %72, label %41, !llvm.loop !183

159:                                              ; preds = %59, %57
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %168

161:                                              ; preds = %2, %71, %50, %48
  %162 = phi i64 [ %45, %50 ], [ %45, %71 ], [ %45, %48 ], [ 2, %2 ]
  %163 = phi i64 [ %42, %50 ], [ %42, %71 ], [ %42, %48 ], [ 1, %2 ]
  %164 = phi ptr [ %43, %50 ], [ %65, %71 ], [ %43, %48 ], [ %3, %2 ]
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 %163
  store i8 93, ptr %165, align 1, !tbaa !12
  store i64 %162, ptr %4, align 8, !tbaa !23
  %166 = load ptr, ptr %0, align 8, !tbaa !20
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 %162
  store i8 0, ptr %167, align 1, !tbaa !12
  ret void

168:                                              ; preds = %105, %107, %109, %159
  %169 = phi { ptr, i32 } [ %160, %159 ], [ %110, %109 ], [ %106, %105 ], [ %108, %107 ]
  %170 = load ptr, ptr %0, align 8, !tbaa !20
  %171 = icmp eq ptr %170, %3
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = load i64, ptr %3, align 8, !tbaa !12
  %174 = add i64 %173, 1
  tail call void @_ZdlPvm(ptr noundef %170, i64 noundef %174) #28
  br label %175

175:                                              ; preds = %168, %172
  resume { ptr, i32 } %169
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp ugt i64 %1, 144115188075855871
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = load ptr, ptr %0, align 8, !tbaa !69
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 6
  %13 = icmp sgt i64 %12, -1
  tail call void @llvm.assume(i1 %13)
  %14 = icmp samesign ult i64 %12, %1
  br i1 %14, label %15, label %81

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %10
  %20 = icmp sgt i64 %19, -1
  tail call void @llvm.assume(i1 %20)
  %21 = shl nuw nsw i64 %1, 6
  %22 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %21) #27
  %23 = icmp eq ptr %8, %17
  br i1 %23, label %70, label %24

24:                                               ; preds = %15, %60
  %25 = phi ptr [ %66, %60 ], [ %22, %15 ]
  %26 = phi ptr [ %65, %60 ], [ %8, %15 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %27, ptr %25, align 8, !tbaa !16, !alias.scope !185, !noalias !188
  %28 = load ptr, ptr %26, align 8, !tbaa !20, !alias.scope !188, !noalias !185
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  %34 = icmp ult i64 %33, 16
  tail call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %29, i64 %35, i1 false), !alias.scope !190
  br label %40

36:                                               ; preds = %24
  store ptr %28, ptr %25, align 8, !tbaa !20, !alias.scope !185, !noalias !188
  %37 = load i64, ptr %29, align 8, !tbaa !12, !alias.scope !188, !noalias !185
  store i64 %37, ptr %27, align 8, !tbaa !12, !alias.scope !185, !noalias !188
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i64 [ %39, %36 ], [ %33, %31 ]
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %43 = icmp ult i64 %41, 9223372036854775807
  tail call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %41, ptr %44, align 8, !tbaa !23, !alias.scope !185, !noalias !188
  store ptr %29, ptr %26, align 8, !tbaa !20, !alias.scope !188, !noalias !185
  store i64 0, ptr %42, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  store i8 0, ptr %29, align 8, !tbaa !12, !alias.scope !188, !noalias !185
  %45 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %25, i64 48
  store ptr %47, ptr %45, align 8, !tbaa !16, !alias.scope !185, !noalias !188
  %48 = load ptr, ptr %46, align 8, !tbaa !20, !alias.scope !188, !noalias !185
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  %54 = icmp ult i64 %53, 16
  tail call void @llvm.assume(i1 %54)
  %55 = add nuw nsw i64 %53, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, ptr noundef nonnull align 8 dereferenceable(1) %49, i64 %55, i1 false), !alias.scope !190
  br label %60

56:                                               ; preds = %40
  store ptr %48, ptr %45, align 8, !tbaa !20, !alias.scope !185, !noalias !188
  %57 = load i64, ptr %49, align 8, !tbaa !12, !alias.scope !188, !noalias !185
  store i64 %57, ptr %47, align 8, !tbaa !12, !alias.scope !185, !noalias !188
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %59 = load i64, ptr %58, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i64 [ %53, %51 ], [ %59, %56 ]
  %62 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %63 = icmp ult i64 %61, 9223372036854775807
  tail call void @llvm.assume(i1 %63)
  %64 = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 %61, ptr %64, align 8, !tbaa !23, !alias.scope !185, !noalias !188
  store ptr %49, ptr %46, align 8, !tbaa !20, !alias.scope !188, !noalias !185
  store i64 0, ptr %62, align 8, !tbaa !23, !alias.scope !188, !noalias !185
  store i8 0, ptr %49, align 8, !tbaa !12, !alias.scope !188, !noalias !185
  %65 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %67 = icmp eq ptr %65, %17
  br i1 %67, label %68, label %24, !llvm.loop !169

68:                                               ; preds = %60
  %69 = load ptr, ptr %0, align 8, !tbaa !69
  br label %70

70:                                               ; preds = %68, %15
  %71 = phi ptr [ %69, %68 ], [ %8, %15 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %6, align 8, !tbaa !73
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %71 to i64
  %77 = sub i64 %75, %76
  tail call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %77) #28
  br label %78

78:                                               ; preds = %70, %73
  store ptr %22, ptr %0, align 8, !tbaa !69
  %79 = getelementptr inbounds nuw i8, ptr %22, i64 %19
  store ptr %79, ptr %16, align 8, !tbaa !71
  %80 = getelementptr inbounds nuw %"struct.std::pair", ptr %22, i64 %1
  store ptr %80, ptr %6, align 8, !tbaa !73
  br label %81

81:                                               ; preds = %78, %5
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib27json_write_object_fragmentsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !16
  store i8 123, ptr %4, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %6, align 1, !tbaa !12
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = load ptr, ptr %1, align 8, !tbaa !69
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %233, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %45

14:                                               ; preds = %204
  %15 = load i64, ptr %5, align 8, !tbaa !23
  %16 = load ptr, ptr %0, align 8, !tbaa !20
  %17 = icmp ult i64 %15, 9223372036854775807
  call void @llvm.assume(i1 %17)
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq ptr %16, %4
  %20 = load i64, ptr %4, align 8
  br i1 %19, label %21, label %23

21:                                               ; preds = %14
  %22 = icmp samesign ugt i64 %15, 14
  br i1 %22, label %27, label %233

23:                                               ; preds = %14
  %24 = icmp samesign ugt i64 %20, 14
  call void @llvm.assume(i1 %24)
  %25 = icmp ult i64 %20, 9223372036854775807
  call void @llvm.assume(i1 %25)
  %26 = icmp samesign ult i64 %15, %20
  br i1 %26, label %233, label %27

27:                                               ; preds = %23, %21
  %28 = phi i64 [ %20, %23 ], [ 15, %21 ]
  %29 = icmp eq i64 %18, 9223372036854775807
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %31 unwind label %231

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %27
  %33 = shl nuw i64 %28, 1
  %34 = icmp ult i64 %18, %33
  %35 = call i64 @llvm.umin.i64(i64 %33, i64 9223372036854775806)
  %36 = select i1 %34, i64 %35, i64 %18
  %37 = add nuw nsw i64 %36, 1
  %38 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #27
          to label %39 unwind label %231

39:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %38, ptr align 1 %16, i64 %15, i1 false)
  br i1 %19, label %40, label %42

40:                                               ; preds = %39
  %41 = icmp samesign ult i64 %15, 16
  call void @llvm.assume(i1 %41)
  br label %44

42:                                               ; preds = %39
  %43 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %16, i64 noundef %43) #28
  br label %44

44:                                               ; preds = %42, %40
  store ptr %38, ptr %0, align 8, !tbaa !20
  store i64 %36, ptr %4, align 8, !tbaa !12
  br label %233

45:                                               ; preds = %11, %204
  %46 = phi ptr [ %9, %11 ], [ %209, %204 ]
  %47 = phi i64 [ 0, %11 ], [ %207, %204 ]
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  br label %93

50:                                               ; preds = %45
  %51 = load i64, ptr %5, align 8, !tbaa !23
  %52 = icmp ult i64 %51, 9223372036854775807
  call void @llvm.assume(i1 %52)
  %53 = add nuw nsw i64 %51, 1
  %54 = load ptr, ptr %0, align 8, !tbaa !20
  %55 = icmp eq ptr %54, %4
  %56 = load i64, ptr %4, align 8
  br i1 %55, label %57, label %59

57:                                               ; preds = %50
  %58 = icmp samesign ugt i64 %51, 14
  br i1 %58, label %63, label %82

59:                                               ; preds = %50
  %60 = icmp samesign ugt i64 %56, 14
  call void @llvm.assume(i1 %60)
  %61 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %61)
  %62 = icmp samesign ult i64 %51, %56
  br i1 %62, label %82, label %63

63:                                               ; preds = %59, %57
  %64 = phi i64 [ %56, %59 ], [ 15, %57 ]
  %65 = icmp eq i64 %53, 9223372036854775807
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %167, %151
  %67 = phi ptr [ @.str.15, %167 ], [ @.str.4, %151 ], [ @.str.4, %63 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %67) #26
          to label %68 unwind label %91

68:                                               ; preds = %66
  unreachable

69:                                               ; preds = %63
  %70 = shl nuw i64 %64, 1
  %71 = icmp ult i64 %53, %70
  %72 = call i64 @llvm.umin.i64(i64 %70, i64 9223372036854775806)
  %73 = select i1 %71, i64 %72, i64 %53
  %74 = add nuw nsw i64 %73, 1
  %75 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %74) #27
          to label %76 unwind label %89

76:                                               ; preds = %69
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr align 1 %54, i64 %51, i1 false)
  br i1 %55, label %77, label %79

77:                                               ; preds = %76
  %78 = icmp samesign ult i64 %51, 16
  call void @llvm.assume(i1 %78)
  br label %81

79:                                               ; preds = %76
  %80 = add i64 %56, 1
  call void @_ZdlPvm(ptr noundef %54, i64 noundef %80) #28
  br label %81

81:                                               ; preds = %79, %77
  store ptr %75, ptr %0, align 8, !tbaa !20
  store i64 %73, ptr %4, align 8, !tbaa !12
  br label %82

82:                                               ; preds = %81, %59, %57
  %83 = phi ptr [ %54, %59 ], [ %75, %81 ], [ %54, %57 ]
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 %51
  store i8 44, ptr %84, align 1, !tbaa !12
  store i64 %53, ptr %5, align 8, !tbaa !23
  %85 = load ptr, ptr %0, align 8, !tbaa !20
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 %53
  store i8 0, ptr %86, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %87 = load ptr, ptr %1, align 8, !tbaa !69
  %88 = getelementptr inbounds nuw %"struct.std::pair", ptr %87, i64 %47
  br label %93

89:                                               ; preds = %69, %154, %203
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %240

91:                                               ; preds = %66
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %240

93:                                               ; preds = %82, %49
  %94 = phi ptr [ %46, %49 ], [ %88, %82 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %97 = load i64, ptr %96, align 8, !tbaa !23
  %98 = icmp ult i64 %97, 9223372036854775807
  call void @llvm.assume(i1 %98)
  invoke void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %97, ptr %95)
          to label %99 unwind label %216

99:                                               ; preds = %93
  %100 = load ptr, ptr %3, align 8, !tbaa !20
  %101 = load i64, ptr %12, align 8, !tbaa !23
  %102 = icmp ult i64 %101, 9223372036854775807
  call void @llvm.assume(i1 %102)
  %103 = load i64, ptr %5, align 8, !tbaa !23
  %104 = icmp ult i64 %103, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = sub nuw nsw i64 9223372036854775806, %103
  %106 = icmp samesign ult i64 %105, %101
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %108 unwind label %220

108:                                              ; preds = %107
  unreachable

109:                                              ; preds = %99
  %110 = add nuw i64 %103, %101
  %111 = load ptr, ptr %0, align 8, !tbaa !20
  %112 = icmp eq ptr %111, %4
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = icmp samesign ult i64 %103, 16
  call void @llvm.assume(i1 %114)
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i64, ptr %4, align 8
  %117 = select i1 %112, i64 15, i64 %116
  %118 = icmp samesign ugt i64 %117, 14
  call void @llvm.assume(i1 %118)
  %119 = icmp ult i64 %117, 9223372036854775807
  call void @llvm.assume(i1 %119)
  %120 = icmp ugt i64 %110, %117
  br i1 %120, label %129, label %121

121:                                              ; preds = %115
  %122 = icmp eq i64 %101, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds nuw i8, ptr %111, i64 %103
  %125 = icmp eq i64 %101, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i8, ptr %100, align 1, !tbaa !12
  store i8 %127, ptr %124, align 1, !tbaa !12
  br label %130

128:                                              ; preds = %123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %100, i64 %101, i1 false)
  br label %130

129:                                              ; preds = %115
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %103, i64 noundef 0, ptr noundef %100, i64 noundef %101)
          to label %130 unwind label %218

130:                                              ; preds = %128, %126, %121, %129
  store i64 %110, ptr %5, align 8, !tbaa !23
  %131 = load ptr, ptr %0, align 8, !tbaa !20
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 %110
  store i8 0, ptr %132, align 1, !tbaa !12
  %133 = load ptr, ptr %3, align 8, !tbaa !20
  %134 = icmp eq ptr %133, %13
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i64, ptr %13, align 8, !tbaa !12
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %133, i64 noundef %137) #28
  br label %138

138:                                              ; preds = %130, %135
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %139 = load i64, ptr %5, align 8, !tbaa !23
  %140 = icmp ult i64 %139, 9223372036854775807
  call void @llvm.assume(i1 %140)
  %141 = add nuw nsw i64 %139, 1
  %142 = load ptr, ptr %0, align 8, !tbaa !20
  %143 = icmp eq ptr %142, %4
  %144 = load i64, ptr %4, align 8
  br i1 %143, label %145, label %147

145:                                              ; preds = %138
  %146 = icmp samesign ugt i64 %139, 14
  br i1 %146, label %151, label %167

147:                                              ; preds = %138
  %148 = icmp samesign ugt i64 %144, 14
  call void @llvm.assume(i1 %148)
  %149 = icmp ult i64 %144, 9223372036854775807
  call void @llvm.assume(i1 %149)
  %150 = icmp samesign ult i64 %139, %144
  br i1 %150, label %167, label %151

151:                                              ; preds = %147, %145
  %152 = phi i64 [ %144, %147 ], [ 15, %145 ]
  %153 = icmp eq i64 %141, 9223372036854775807
  br i1 %153, label %66, label %154

154:                                              ; preds = %151
  %155 = shl nuw i64 %152, 1
  %156 = icmp ult i64 %141, %155
  %157 = call i64 @llvm.umin.i64(i64 %155, i64 9223372036854775806)
  %158 = select i1 %156, i64 %157, i64 %141
  %159 = add nuw nsw i64 %158, 1
  %160 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %159) #27
          to label %161 unwind label %89

161:                                              ; preds = %154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %160, ptr align 1 %142, i64 %139, i1 false)
  br i1 %143, label %162, label %164

162:                                              ; preds = %161
  %163 = icmp samesign ult i64 %139, 16
  call void @llvm.assume(i1 %163)
  br label %166

164:                                              ; preds = %161
  %165 = add i64 %144, 1
  call void @_ZdlPvm(ptr noundef %142, i64 noundef %165) #28
  br label %166

166:                                              ; preds = %164, %162
  store ptr %160, ptr %0, align 8, !tbaa !20
  store i64 %158, ptr %4, align 8, !tbaa !12
  br label %167

167:                                              ; preds = %166, %147, %145
  %168 = phi ptr [ %142, %147 ], [ %160, %166 ], [ %142, %145 ]
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 %139
  store i8 58, ptr %169, align 1, !tbaa !12
  store i64 %141, ptr %5, align 8, !tbaa !23
  %170 = load ptr, ptr %0, align 8, !tbaa !20
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %141
  store i8 0, ptr %171, align 1, !tbaa !12
  %172 = load ptr, ptr %1, align 8, !tbaa !69
  %173 = getelementptr inbounds nuw %"struct.std::pair", ptr %172, i64 %47
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %175 = load ptr, ptr %174, align 8, !tbaa !20
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 40
  %177 = load i64, ptr %176, align 8, !tbaa !23
  %178 = icmp ult i64 %177, 9223372036854775807
  call void @llvm.assume(i1 %178)
  %179 = load i64, ptr %5, align 8, !tbaa !23
  %180 = icmp ult i64 %179, 9223372036854775807
  call void @llvm.assume(i1 %180)
  %181 = sub nuw nsw i64 9223372036854775806, %179
  %182 = icmp samesign ult i64 %181, %177
  br i1 %182, label %66, label %183

183:                                              ; preds = %167
  %184 = add nuw i64 %179, %177
  %185 = load ptr, ptr %0, align 8, !tbaa !20
  %186 = icmp eq ptr %185, %4
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = icmp samesign ult i64 %179, 16
  call void @llvm.assume(i1 %188)
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i64, ptr %4, align 8
  %191 = select i1 %186, i64 15, i64 %190
  %192 = icmp samesign ugt i64 %191, 14
  call void @llvm.assume(i1 %192)
  %193 = icmp ult i64 %191, 9223372036854775807
  call void @llvm.assume(i1 %193)
  %194 = icmp ugt i64 %184, %191
  br i1 %194, label %203, label %195

195:                                              ; preds = %189
  %196 = icmp eq i64 %177, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %195
  %198 = getelementptr inbounds nuw i8, ptr %185, i64 %179
  %199 = icmp eq i64 %177, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i8, ptr %175, align 1, !tbaa !12
  store i8 %201, ptr %198, align 1, !tbaa !12
  br label %204

202:                                              ; preds = %197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %198, ptr align 1 %175, i64 %177, i1 false)
  br label %204

203:                                              ; preds = %189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %179, i64 noundef 0, ptr noundef %175, i64 noundef %177)
          to label %204 unwind label %89

204:                                              ; preds = %202, %200, %195, %203
  store i64 %184, ptr %5, align 8, !tbaa !23
  %205 = load ptr, ptr %0, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 %184
  store i8 0, ptr %206, align 1, !tbaa !12
  %207 = add nuw nsw i64 %47, 1
  %208 = load ptr, ptr %7, align 8, !tbaa !71
  %209 = load ptr, ptr %1, align 8, !tbaa !69
  %210 = ptrtoint ptr %208 to i64
  %211 = ptrtoint ptr %209 to i64
  %212 = sub i64 %210, %211
  %213 = ashr exact i64 %212, 6
  %214 = icmp sgt i64 %213, -1
  call void @llvm.assume(i1 %214)
  %215 = icmp samesign ult i64 %207, %213
  br i1 %215, label %45, label %14, !llvm.loop !191

216:                                              ; preds = %93
  %217 = landingpad { ptr, i32 }
          cleanup
  br label %229

218:                                              ; preds = %129
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %222

220:                                              ; preds = %107
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi { ptr, i32 } [ %219, %218 ], [ %221, %220 ]
  %224 = load ptr, ptr %3, align 8, !tbaa !20
  %225 = icmp eq ptr %224, %13
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load i64, ptr %13, align 8, !tbaa !12
  %228 = add i64 %227, 1
  call void @_ZdlPvm(ptr noundef %224, i64 noundef %228) #28
  br label %229

229:                                              ; preds = %222, %226, %216
  %230 = phi { ptr, i32 } [ %217, %216 ], [ %223, %226 ], [ %223, %222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %240

231:                                              ; preds = %32, %30
  %232 = landingpad { ptr, i32 }
          cleanup
  br label %240

233:                                              ; preds = %2, %44, %23, %21
  %234 = phi i64 [ %18, %23 ], [ %18, %44 ], [ %18, %21 ], [ 2, %2 ]
  %235 = phi i64 [ %15, %23 ], [ %15, %44 ], [ %15, %21 ], [ 1, %2 ]
  %236 = phi ptr [ %16, %23 ], [ %38, %44 ], [ %16, %21 ], [ %4, %2 ]
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 %235
  store i8 125, ptr %237, align 1, !tbaa !12
  store i64 %234, ptr %5, align 8, !tbaa !23
  %238 = load ptr, ptr %0, align 8, !tbaa !20
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 %234
  store i8 0, ptr %239, align 1, !tbaa !12
  ret void

240:                                              ; preds = %89, %91, %229, %231
  %241 = phi { ptr, i32 } [ %232, %231 ], [ %230, %229 ], [ %90, %89 ], [ %92, %91 ]
  %242 = load ptr, ptr %0, align 8, !tbaa !20
  %243 = icmp eq ptr %242, %4
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = load i64, ptr %4, align 8, !tbaa !12
  %246 = add i64 %245, 1
  call void @_ZdlPvm(ptr noundef %242, i64 noundef %246) #28
  br label %247

247:                                              ; preds = %240, %244
  resume { ptr, i32 } %241
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %0, align 8, !tbaa !69
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 6
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775744
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 144115188075855871)
  %17 = shl nuw nsw i64 %16, 6
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #27
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !16
  %21 = load ptr, ptr %1, align 8, !tbaa !20
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !23
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !20
  %30 = load i64, ptr %22, align 8, !tbaa !12
  store i64 %30, ptr %20, align 8, !tbaa !12
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !23
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i64 [ %32, %29 ], [ %26, %24 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !23
  store ptr %22, ptr %1, align 8, !tbaa !20
  store i64 0, ptr %35, align 8, !tbaa !23
  store i8 0, ptr %22, align 8, !tbaa !12
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %40, ptr %38, align 8, !tbaa !16
  %41 = load ptr, ptr %39, align 8, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %46 = load i64, ptr %45, align 8, !tbaa !23
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  %48 = add nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %42, i64 %48, i1 false)
  br label %53

49:                                               ; preds = %33
  store ptr %41, ptr %38, align 8, !tbaa !20
  %50 = load i64, ptr %42, align 8, !tbaa !12
  store i64 %50, ptr %40, align 8, !tbaa !12
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %52 = load i64, ptr %51, align 8, !tbaa !23
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i64 [ %46, %44 ], [ %52, %49 ]
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %56 = icmp ult i64 %54, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 %54, ptr %57, align 8, !tbaa !23
  store ptr %42, ptr %39, align 8, !tbaa !20
  store i64 0, ptr %55, align 8, !tbaa !23
  store i8 0, ptr %42, align 8, !tbaa !12
  %58 = icmp eq ptr %5, %4
  br i1 %58, label %103, label %59

59:                                               ; preds = %53, %95
  %60 = phi ptr [ %101, %95 ], [ %18, %53 ]
  %61 = phi ptr [ %100, %95 ], [ %5, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %62, ptr %60, align 8, !tbaa !16, !alias.scope !192, !noalias !195
  %63 = load ptr, ptr %61, align 8, !tbaa !20, !alias.scope !195, !noalias !192
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %70, i1 false), !alias.scope !197
  br label %75

71:                                               ; preds = %59
  store ptr %63, ptr %60, align 8, !tbaa !20, !alias.scope !192, !noalias !195
  %72 = load i64, ptr %64, align 8, !tbaa !12, !alias.scope !195, !noalias !192
  store i64 %72, ptr %62, align 8, !tbaa !12, !alias.scope !192, !noalias !195
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %74, %71 ], [ %68, %66 ]
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %78 = icmp ult i64 %76, 9223372036854775807
  tail call void @llvm.assume(i1 %78)
  %79 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %76, ptr %79, align 8, !tbaa !23, !alias.scope !192, !noalias !195
  store ptr %64, ptr %61, align 8, !tbaa !20, !alias.scope !195, !noalias !192
  store i64 0, ptr %77, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  store i8 0, ptr %64, align 8, !tbaa !12, !alias.scope !195, !noalias !192
  %80 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %82, ptr %80, align 8, !tbaa !16, !alias.scope !192, !noalias !195
  %83 = load ptr, ptr %81, align 8, !tbaa !20, !alias.scope !195, !noalias !192
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %82, ptr noundef nonnull align 8 dereferenceable(1) %84, i64 %90, i1 false), !alias.scope !197
  br label %95

91:                                               ; preds = %75
  store ptr %83, ptr %80, align 8, !tbaa !20, !alias.scope !192, !noalias !195
  %92 = load i64, ptr %84, align 8, !tbaa !12, !alias.scope !195, !noalias !192
  store i64 %92, ptr %82, align 8, !tbaa !12, !alias.scope !192, !noalias !195
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i64 [ %88, %86 ], [ %94, %91 ]
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %98 = icmp ult i64 %96, 9223372036854775807
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i64 %96, ptr %99, align 8, !tbaa !23, !alias.scope !192, !noalias !195
  store ptr %84, ptr %81, align 8, !tbaa !20, !alias.scope !195, !noalias !192
  store i64 0, ptr %97, align 8, !tbaa !23, !alias.scope !195, !noalias !192
  store i8 0, ptr %84, align 8, !tbaa !12, !alias.scope !195, !noalias !192
  %100 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %102 = icmp eq ptr %100, %4
  br i1 %102, label %103, label %59, !llvm.loop !169

103:                                              ; preds = %95, %53
  %104 = phi ptr [ %18, %53 ], [ %101, %95 ]
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %106 = icmp eq ptr %5, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %105, align 8, !tbaa !73
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %109, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %110) #28
  br label %111

111:                                              ; preds = %103, %107
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 64
  store ptr %18, ptr %0, align 8, !tbaa !69
  store ptr %112, ptr %3, align 8, !tbaa !71
  %113 = getelementptr inbounds nuw %"struct.std::pair", ptr %18, i64 %16
  store ptr %113, ptr %105, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = ashr exact i64 %8, 6
  %10 = icmp sgt i64 %9, 16
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %13

13:                                               ; preds = %11, %26
  %14 = phi i64 [ %9, %11 ], [ %34, %26 ]
  %15 = phi i64 [ %2, %11 ], [ %27, %26 ]
  %16 = phi ptr [ %1, %11 ], [ %31, %26 ]
  %17 = icmp eq i64 %15, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_RSM_(ptr %0, ptr %16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi ptr [ %21, %19 ], [ %16, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -64
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_RSM_(ptr %0, ptr nonnull %21, ptr nonnull %21, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %6
  %24 = icmp sgt i64 %23, 64
  br i1 %24, label %19, label %25, !llvm.loop !198

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %36

26:                                               ; preds = %13
  %27 = add nsw i64 %15, -1
  %28 = lshr i64 %14, 1
  %29 = getelementptr inbounds nuw %"struct.std::pair", ptr %0, i64 %28
  %30 = getelementptr inbounds i8, ptr %16, i64 -64
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_SJ_SM_(ptr %0, ptr nonnull %12, ptr %29, ptr nonnull %30)
  %31 = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEESJ_SJ_SJ_SJ_SM_(ptr nonnull %12, ptr %16, ptr %0)
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_(ptr %31, ptr %16, i64 noundef %27)
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %6
  %34 = ashr exact i64 %33, 6
  %35 = icmp sgt i64 %34, 16
  br i1 %35, label %13, label %36, !llvm.loop !199

36:                                               ; preds = %26, %3, %25
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_RSM_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::pair", align 8
  %5 = alloca %"struct.std::pair", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 6
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %105, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -2
  %13 = lshr i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %24

24:                                               ; preds = %102, %11
  %25 = phi i64 [ %13, %11 ], [ %90, %102 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %26 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !20
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !23
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  %34 = add nuw nsw i64 %32, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %28, i64 %34, i1 false)
  br label %39

35:                                               ; preds = %24
  store ptr %27, ptr %4, align 8, !tbaa !20
  %36 = load i64, ptr %28, align 8, !tbaa !12
  store i64 %36, ptr %14, align 8, !tbaa !12
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !23
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi ptr [ %27, %35 ], [ %14, %30 ]
  %41 = phi i64 [ %38, %35 ], [ %32, %30 ]
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %43 = icmp ult i64 %41, 9223372036854775807
  call void @llvm.assume(i1 %43)
  store i64 %41, ptr %15, align 8, !tbaa !23
  store ptr %28, ptr %26, align 8, !tbaa !20
  store i64 0, ptr %42, align 8, !tbaa !23
  store i8 0, ptr %28, align 8, !tbaa !12
  %44 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %17, ptr %16, align 8, !tbaa !16
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %50 = load i64, ptr %49, align 8, !tbaa !23
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(1) %46, i64 %52, i1 false)
  br label %57

53:                                               ; preds = %39
  store ptr %45, ptr %16, align 8, !tbaa !20
  %54 = load i64, ptr %46, align 8, !tbaa !12
  store i64 %54, ptr %17, align 8, !tbaa !12
  %55 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %56 = load i64, ptr %55, align 8, !tbaa !23
  br label %57

57:                                               ; preds = %48, %53
  %58 = phi ptr [ %17, %48 ], [ %45, %53 ]
  %59 = phi i64 [ %50, %48 ], [ %56, %53 ]
  %60 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %61 = icmp ult i64 %59, 9223372036854775807
  call void @llvm.assume(i1 %61)
  store i64 %59, ptr %18, align 8, !tbaa !23
  store ptr %46, ptr %44, align 8, !tbaa !20
  store i64 0, ptr %60, align 8, !tbaa !23
  store i8 0, ptr %46, align 8, !tbaa !12
  store ptr %19, ptr %5, align 8, !tbaa !16
  %62 = icmp eq ptr %40, %14
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = icmp samesign ult i64 %41, 16
  call void @llvm.assume(i1 %64)
  %65 = add nuw nsw i64 %41, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %65, i1 false)
  br label %68

66:                                               ; preds = %57
  store ptr %40, ptr %5, align 8, !tbaa !20
  %67 = load i64, ptr %14, align 8, !tbaa !12
  store i64 %67, ptr %19, align 8, !tbaa !12
  br label %68

68:                                               ; preds = %66, %63
  store i64 %41, ptr %20, align 8, !tbaa !23
  store ptr %14, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %15, align 8, !tbaa !23
  store i8 0, ptr %14, align 8, !tbaa !12
  store ptr %22, ptr %21, align 8, !tbaa !16
  %69 = icmp eq ptr %58, %17
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = icmp samesign ult i64 %59, 16
  call void @llvm.assume(i1 %71)
  %72 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %72, i1 false)
  br label %75

73:                                               ; preds = %68
  store ptr %58, ptr %21, align 8, !tbaa !20
  %74 = load i64, ptr %17, align 8, !tbaa !12
  store i64 %74, ptr %22, align 8, !tbaa !12
  br label %75

75:                                               ; preds = %70, %73
  store i64 %59, ptr %23, align 8, !tbaa !23
  store ptr %17, ptr %16, align 8, !tbaa !20
  store i64 0, ptr %18, align 8, !tbaa !23
  store i8 0, ptr %17, align 8, !tbaa !12
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_(ptr nonnull %0, i64 noundef %25, i64 noundef %9, ptr noundef nonnull %5)
          to label %76 unwind label %103

76:                                               ; preds = %75
  %77 = load ptr, ptr %21, align 8, !tbaa !20
  %78 = icmp eq ptr %77, %22
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %22, align 8, !tbaa !12
  %81 = add i64 %80, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %81) #28
  br label %82

82:                                               ; preds = %76, %79
  %83 = load ptr, ptr %5, align 8, !tbaa !20
  %84 = icmp eq ptr %83, %19
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i64, ptr %19, align 8, !tbaa !12
  %87 = add i64 %86, 1
  call void @_ZdlPvm(ptr noundef %83, i64 noundef %87) #28
  br label %88

88:                                               ; preds = %82, %85
  %89 = icmp eq i64 %25, 0
  %90 = add nsw i64 %25, -1
  %91 = load ptr, ptr %16, align 8, !tbaa !20
  %92 = icmp eq ptr %91, %17
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i64, ptr %17, align 8, !tbaa !12
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %91, i64 noundef %95) #28
  br label %96

96:                                               ; preds = %88, %93
  %97 = load ptr, ptr %4, align 8, !tbaa !20
  %98 = icmp eq ptr %97, %14
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, ptr %14, align 8, !tbaa !12
  %101 = add i64 %100, 1
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %101) #28
  br label %102

102:                                              ; preds = %96, %99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %89, label %105, label %24, !llvm.loop !200

103:                                              ; preds = %75
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %104

105:                                              ; preds = %102, %3
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_RSM_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"struct.std::pair", align 8
  %6 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !16
  %8 = load ptr, ptr %2, align 8, !tbaa !20
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %20

16:                                               ; preds = %4
  store ptr %8, ptr %5, align 8, !tbaa !20
  %17 = load i64, ptr %9, align 8, !tbaa !12
  store i64 %17, ptr %7, align 8, !tbaa !12
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i64 [ %19, %16 ], [ %13, %11 ]
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %23)
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %21, ptr %24, align 8, !tbaa !23
  store ptr %9, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %22, align 8, !tbaa !23
  store i8 0, ptr %9, align 8, !tbaa !12
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %27, ptr %25, align 8, !tbaa !16
  %28 = load ptr, ptr %26, align 8, !tbaa !20
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %33 = load i64, ptr %32, align 8, !tbaa !23
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %29, i64 %35, i1 false)
  br label %40

36:                                               ; preds = %20
  store ptr %28, ptr %25, align 8, !tbaa !20
  %37 = load i64, ptr %29, align 8, !tbaa !12
  store i64 %37, ptr %27, align 8, !tbaa !12
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %39 = load i64, ptr %38, align 8, !tbaa !23
  br label %40

40:                                               ; preds = %31, %36
  %41 = phi i64 [ %33, %31 ], [ %39, %36 ]
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %43 = icmp ult i64 %41, 9223372036854775807
  call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %41, ptr %44, align 8, !tbaa !23
  store ptr %29, ptr %26, align 8, !tbaa !20
  store i64 0, ptr %42, align 8, !tbaa !23
  store i8 0, ptr %29, align 8, !tbaa !12
  %45 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %0) #15
  %46 = ptrtoint ptr %1 to i64
  %47 = ptrtoint ptr %0 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 6
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %50, ptr %6, align 8, !tbaa !16
  %51 = load ptr, ptr %5, align 8, !tbaa !20
  %52 = icmp eq ptr %51, %7
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i64, ptr %24, align 8, !tbaa !23
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %40
  store ptr %51, ptr %6, align 8, !tbaa !20
  %58 = load i64, ptr %7, align 8, !tbaa !12
  store i64 %58, ptr %50, align 8, !tbaa !12
  %59 = load i64, ptr %24, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !23
  store ptr %7, ptr %5, align 8, !tbaa !20
  store i64 0, ptr %24, align 8, !tbaa !23
  store i8 0, ptr %7, align 8, !tbaa !12
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %65, ptr %64, align 8, !tbaa !16
  %66 = load ptr, ptr %25, align 8, !tbaa !20
  %67 = icmp eq ptr %66, %27
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i64, ptr %44, align 8, !tbaa !23
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  %71 = add nuw nsw i64 %69, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %65, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %71, i1 false)
  br label %75

72:                                               ; preds = %60
  store ptr %66, ptr %64, align 8, !tbaa !20
  %73 = load i64, ptr %27, align 8, !tbaa !12
  store i64 %73, ptr %65, align 8, !tbaa !12
  %74 = load i64, ptr %44, align 8, !tbaa !23
  br label %75

75:                                               ; preds = %68, %72
  %76 = phi i64 [ %69, %68 ], [ %74, %72 ]
  %77 = icmp ult i64 %76, 9223372036854775807
  call void @llvm.assume(i1 %77)
  %78 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %76, ptr %78, align 8, !tbaa !23
  store ptr %27, ptr %25, align 8, !tbaa !20
  store i64 0, ptr %44, align 8, !tbaa !23
  store i8 0, ptr %27, align 8, !tbaa !12
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %49, ptr noundef nonnull %6)
          to label %79 unwind label %104

79:                                               ; preds = %75
  %80 = load ptr, ptr %64, align 8, !tbaa !20
  %81 = icmp eq ptr %80, %65
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i64, ptr %65, align 8, !tbaa !12
  %84 = add i64 %83, 1
  call void @_ZdlPvm(ptr noundef %80, i64 noundef %84) #28
  br label %85

85:                                               ; preds = %79, %82
  %86 = load ptr, ptr %6, align 8, !tbaa !20
  %87 = icmp eq ptr %86, %50
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, ptr %50, align 8, !tbaa !12
  %90 = add i64 %89, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %90) #28
  br label %91

91:                                               ; preds = %85, %88
  %92 = load ptr, ptr %25, align 8, !tbaa !20
  %93 = icmp eq ptr %92, %27
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i64, ptr %27, align 8, !tbaa !12
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %92, i64 noundef %96) #28
  br label %97

97:                                               ; preds = %91, %94
  %98 = load ptr, ptr %5, align 8, !tbaa !20
  %99 = icmp eq ptr %98, %7
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %7, align 8, !tbaa !12
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %102) #28
  br label %103

103:                                              ; preds = %97, %100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

104:                                              ; preds = %75
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #15
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"struct.std::pair", align 8
  %6 = add nsw i64 %2, -1
  %7 = sdiv i64 %6, 2
  %8 = icmp slt i64 %1, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %4, %34
  %10 = phi i64 [ %37, %34 ], [ %1, %4 ]
  %11 = shl i64 %10, 1
  %12 = add i64 %11, 2
  %13 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %12
  %14 = or disjoint i64 %11, 1
  %15 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !23
  %18 = icmp ult i64 %17, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !23
  %21 = icmp ult i64 %20, 9223372036854775807
  tail call void @llvm.assume(i1 %21)
  %22 = tail call i64 @llvm.umin.i64(i64 %20, i64 %17)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %9
  %25 = load ptr, ptr %15, align 8, !tbaa !20
  %26 = load ptr, ptr %13, align 8, !tbaa !20
  %27 = tail call i32 @memcmp(ptr noundef %26, ptr noundef %25, i64 noundef %22) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %9
  %30 = sub nsw i64 %17, %20
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 -2147483648)
  %32 = tail call i64 @llvm.smin.i64(i64 %31, i64 2147483647)
  %33 = trunc nsw i64 %32 to i32
  br label %34

34:                                               ; preds = %24, %29
  %35 = phi i32 [ %27, %24 ], [ %33, %29 ]
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %36, i64 %14, i64 %12
  %38 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %37
  %39 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %10
  %40 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %39, ptr noundef nonnull align 8 dereferenceable(64) %38) #15
  %41 = icmp slt i64 %37, %7
  br i1 %41, label %9, label %42, !llvm.loop !201

42:                                               ; preds = %34, %4
  %43 = phi i64 [ %1, %4 ], [ %37, %34 ]
  %44 = and i64 %2, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = add nsw i64 %2, -2
  %48 = ashr exact i64 %47, 1
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = shl nsw i64 %43, 1
  %52 = or disjoint i64 %51, 1
  %53 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %52
  %54 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %43
  %55 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %54, ptr noundef nonnull align 8 dereferenceable(64) %53) #15
  br label %56

56:                                               ; preds = %50, %46, %42
  %57 = phi i64 [ %52, %50 ], [ %43, %46 ], [ %43, %42 ]
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %58, ptr %5, align 8, !tbaa !16
  %59 = load ptr, ptr %3, align 8, !tbaa !20
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %64 = load i64, ptr %63, align 8, !tbaa !23
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %58, ptr noundef nonnull align 8 dereferenceable(1) %60, i64 %66, i1 false)
  br label %71

67:                                               ; preds = %56
  store ptr %59, ptr %5, align 8, !tbaa !20
  %68 = load i64, ptr %60, align 8, !tbaa !12
  store i64 %68, ptr %58, align 8, !tbaa !12
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !23
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i64 [ %70, %67 ], [ %64, %62 ]
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %74 = icmp ult i64 %72, 9223372036854775807
  call void @llvm.assume(i1 %74)
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %72, ptr %75, align 8, !tbaa !23
  store ptr %60, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %73, align 8, !tbaa !23
  store i8 0, ptr %60, align 8, !tbaa !12
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %78, ptr %76, align 8, !tbaa !16
  %79 = load ptr, ptr %77, align 8, !tbaa !20
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %84 = load i64, ptr %83, align 8, !tbaa !23
  %85 = icmp ult i64 %84, 16
  call void @llvm.assume(i1 %85)
  %86 = add nuw nsw i64 %84, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(1) %80, i64 %86, i1 false)
  br label %91

87:                                               ; preds = %71
  store ptr %79, ptr %76, align 8, !tbaa !20
  %88 = load i64, ptr %80, align 8, !tbaa !12
  store i64 %88, ptr %78, align 8, !tbaa !12
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %90 = load i64, ptr %89, align 8, !tbaa !23
  br label %91

91:                                               ; preds = %82, %87
  %92 = phi i64 [ %84, %82 ], [ %90, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %94 = icmp ult i64 %92, 9223372036854775807
  call void @llvm.assume(i1 %94)
  %95 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %92, ptr %95, align 8, !tbaa !23
  store ptr %80, ptr %77, align 8, !tbaa !20
  store i64 0, ptr %93, align 8, !tbaa !23
  store i8 0, ptr %80, align 8, !tbaa !12
  %96 = icmp sgt i64 %57, %1
  br i1 %96, label %97, label %126

97:                                               ; preds = %91, %122
  %98 = phi i64 [ %100, %122 ], [ %57, %91 ]
  %99 = add nsw i64 %98, -1
  %100 = sdiv i64 %99, 2
  %101 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %100
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %103 = load i64, ptr %102, align 8, !tbaa !23
  %104 = icmp ult i64 %103, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = load i64, ptr %75, align 8, !tbaa !23
  %106 = icmp ult i64 %105, 9223372036854775807
  call void @llvm.assume(i1 %106)
  %107 = call i64 @llvm.umin.i64(i64 %105, i64 %103)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %97
  %110 = load ptr, ptr %5, align 8, !tbaa !20
  %111 = load ptr, ptr %101, align 8, !tbaa !20
  %112 = call i32 @memcmp(ptr noundef %111, ptr noundef %110, i64 noundef %107) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109, %97
  %115 = sub nsw i64 %103, %105
  %116 = call i64 @llvm.smax.i64(i64 %115, i64 -2147483648)
  %117 = call i64 @llvm.smin.i64(i64 %116, i64 2147483647)
  %118 = trunc nsw i64 %117 to i32
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i32 [ %112, %109 ], [ %118, %114 ]
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %98
  %124 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %123, ptr noundef nonnull align 8 dereferenceable(64) %101) #15
  %125 = icmp sgt i64 %100, %1
  br i1 %125, label %97, label %126, !llvm.loop !202

126:                                              ; preds = %122, %119, %91
  %127 = phi i64 [ %57, %91 ], [ %98, %119 ], [ %100, %122 ]
  %128 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %127
  %129 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %128, ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  %130 = load ptr, ptr %76, align 8, !tbaa !20
  %131 = icmp eq ptr %130, %78
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load i64, ptr %78, align 8, !tbaa !12
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %134) #28
  br label %135

135:                                              ; preds = %126, %132
  %136 = load ptr, ptr %5, align 8, !tbaa !20
  %137 = icmp eq ptr %136, %58
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i64, ptr %58, align 8, !tbaa !12
  %140 = add i64 %139, 1
  call void @_ZdlPvm(ptr noundef %136, i64 noundef %140) #28
  br label %141

141:                                              ; preds = %135, %138
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !20
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = icmp eq ptr %3, %4
  %6 = load ptr, ptr %1, align 8, !tbaa !20
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = icmp eq ptr %6, %7
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  br i1 %8, label %11, label %29

10:                                               ; preds = %2
  br i1 %8, label %11, label %27

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  %15 = icmp eq ptr %1, %0
  br i1 %15, label %40, label %16, !prof !74

16:                                               ; preds = %11
  switch i64 %13, label %19 [
    i64 0, label %20
    i64 1, label %17
  ]

17:                                               ; preds = %16
  %18 = load i8, ptr %6, align 1, !tbaa !12
  store i8 %18, ptr %3, align 1, !tbaa !12
  br label %20

19:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %6, i64 %13, i1 false)
  br label %20

20:                                               ; preds = %19, %17, %16
  %21 = load i64, ptr %12, align 8, !tbaa !23
  %22 = icmp ult i64 %21, 9223372036854775807
  tail call void @llvm.assume(i1 %22)
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %21, ptr %23, align 8, !tbaa !23
  %24 = load ptr, ptr %0, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %21
  store i8 0, ptr %25, align 1, !tbaa !12
  %26 = load ptr, ptr %1, align 8, !tbaa !20
  br label %40

27:                                               ; preds = %10
  %28 = load i64, ptr %4, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %27, %9
  %30 = phi ptr [ %3, %27 ], [ null, %9 ]
  %31 = phi i64 [ %28, %27 ], [ undef, %9 ]
  store ptr %6, ptr %0, align 8, !tbaa !20
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !23
  %34 = icmp ult i64 %33, 9223372036854775807
  tail call void @llvm.assume(i1 %34)
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %33, ptr %35, align 8, !tbaa !23
  %36 = load i64, ptr %7, align 8, !tbaa !12
  store i64 %36, ptr %4, align 8, !tbaa !12
  %37 = icmp eq ptr %30, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store ptr %30, ptr %1, align 8, !tbaa !20
  store i64 %31, ptr %7, align 8, !tbaa !12
  br label %40

39:                                               ; preds = %29
  store ptr %7, ptr %1, align 8, !tbaa !20
  br label %40

40:                                               ; preds = %11, %20, %38, %39
  %41 = phi ptr [ %26, %20 ], [ %30, %38 ], [ %7, %39 ], [ %6, %11 ]
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %42, align 8, !tbaa !23
  store i8 0, ptr %41, align 1, !tbaa !12
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load ptr, ptr %44, align 8, !tbaa !20
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %47 = icmp eq ptr %45, %46
  %48 = load ptr, ptr %43, align 8, !tbaa !20
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %50 = icmp eq ptr %48, %49
  br i1 %47, label %51, label %52

51:                                               ; preds = %40
  br i1 %50, label %53, label %71

52:                                               ; preds = %40
  br i1 %50, label %53, label %69

53:                                               ; preds = %52, %51
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %55 = load i64, ptr %54, align 8, !tbaa !23
  %56 = icmp ult i64 %55, 16
  tail call void @llvm.assume(i1 %56)
  %57 = icmp eq ptr %1, %0
  br i1 %57, label %82, label %58, !prof !74

58:                                               ; preds = %53
  switch i64 %55, label %61 [
    i64 0, label %62
    i64 1, label %59
  ]

59:                                               ; preds = %58
  %60 = load i8, ptr %48, align 1, !tbaa !12
  store i8 %60, ptr %45, align 1, !tbaa !12
  br label %62

61:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %48, i64 %55, i1 false)
  br label %62

62:                                               ; preds = %61, %59, %58
  %63 = load i64, ptr %54, align 8, !tbaa !23
  %64 = icmp ult i64 %63, 9223372036854775807
  tail call void @llvm.assume(i1 %64)
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %63, ptr %65, align 8, !tbaa !23
  %66 = load ptr, ptr %44, align 8, !tbaa !20
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 %63
  store i8 0, ptr %67, align 1, !tbaa !12
  %68 = load ptr, ptr %43, align 8, !tbaa !20
  br label %82

69:                                               ; preds = %52
  %70 = load i64, ptr %46, align 8, !tbaa !12
  br label %71

71:                                               ; preds = %69, %51
  %72 = phi ptr [ %45, %69 ], [ null, %51 ]
  %73 = phi i64 [ %70, %69 ], [ undef, %51 ]
  store ptr %48, ptr %44, align 8, !tbaa !20
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %75 = load i64, ptr %74, align 8, !tbaa !23
  %76 = icmp ult i64 %75, 9223372036854775807
  tail call void @llvm.assume(i1 %76)
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %75, ptr %77, align 8, !tbaa !23
  %78 = load i64, ptr %49, align 8, !tbaa !12
  store i64 %78, ptr %46, align 8, !tbaa !12
  %79 = icmp eq ptr %72, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  store ptr %72, ptr %43, align 8, !tbaa !20
  store i64 %73, ptr %49, align 8, !tbaa !12
  br label %82

81:                                               ; preds = %71
  store ptr %49, ptr %43, align 8, !tbaa !20
  br label %82

82:                                               ; preds = %53, %62, %80, %81
  %83 = phi ptr [ %68, %62 ], [ %72, %80 ], [ %49, %81 ], [ %48, %53 ]
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %84, align 8, !tbaa !23
  store i8 0, ptr %83, align 1, !tbaa !12
  ret ptr %0
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_SJ_SM_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !23
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !23
  %10 = icmp ult i64 %9, 9223372036854775807
  tail call void @llvm.assume(i1 %10)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !20
  %15 = load ptr, ptr %1, align 8, !tbaa !20
  %16 = tail call i32 @memcmp(ptr noundef %15, ptr noundef %14, i64 noundef %11) #15
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
  %27 = load i64, ptr %26, align 8, !tbaa !23
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
  %35 = tail call i32 @memcmp(ptr noundef %34, ptr noundef %33, i64 noundef %30) #15
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
  %51 = tail call i32 @memcmp(ptr noundef %50, ptr noundef %49, i64 noundef %46) #15
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
  %68 = tail call i32 @memcmp(ptr noundef %67, ptr noundef %66, i64 noundef %63) #15
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
  %84 = tail call i32 @memcmp(ptr noundef %83, ptr noundef %82, i64 noundef %79) #15
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
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %96) #15
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %98) #15
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEESJ_SJ_SJ_SJ_SM_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %5

5:                                                ; preds = %3, %55
  %6 = phi ptr [ %0, %3 ], [ %30, %55 ]
  %7 = phi ptr [ %1, %3 ], [ %33, %55 ]
  %8 = load i64, ptr %4, align 8, !tbaa !23
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  br label %10

10:                                               ; preds = %27, %5
  %11 = phi ptr [ %6, %5 ], [ %30, %27 ]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = icmp ult i64 %13, 9223372036854775807
  tail call void @llvm.assume(i1 %14)
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %13)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !tbaa !20
  %19 = load ptr, ptr %11, align 8, !tbaa !20
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %18, i64 noundef %15) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %10
  %23 = sub nsw i64 %13, %8
  %24 = tail call i64 @llvm.smax.i64(i64 %23, i64 -2147483648)
  %25 = tail call i64 @llvm.smin.i64(i64 %24, i64 2147483647)
  %26 = trunc nsw i64 %25 to i32
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi i32 [ %20, %17 ], [ %26, %22 ]
  %29 = icmp slt i32 %28, 0
  %30 = getelementptr inbounds nuw i8, ptr %11, i64 64
  br i1 %29, label %10, label %31, !llvm.loop !203

31:                                               ; preds = %27, %49
  %32 = phi ptr [ %33, %49 ], [ %7, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 -64
  %34 = getelementptr inbounds i8, ptr %32, i64 -56
  %35 = load i64, ptr %34, align 8, !tbaa !23
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 %8)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %33, align 8, !tbaa !20
  %41 = load ptr, ptr %2, align 8, !tbaa !20
  %42 = tail call i32 @memcmp(ptr noundef %41, ptr noundef %40, i64 noundef %37) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %31
  %45 = sub nsw i64 %8, %35
  %46 = tail call i64 @llvm.smax.i64(i64 %45, i64 -2147483648)
  %47 = tail call i64 @llvm.smin.i64(i64 %46, i64 2147483647)
  %48 = trunc nsw i64 %47 to i32
  br label %49

49:                                               ; preds = %39, %44
  %50 = phi i32 [ %42, %39 ], [ %48, %44 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %31, label %52, !llvm.loop !204

52:                                               ; preds = %49
  %53 = icmp ult ptr %11, %33
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  ret ptr %11

55:                                               ; preds = %52
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %33) #15
  %56 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %57 = getelementptr inbounds i8, ptr %32, i64 -32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %57) #15
  br label %5, !llvm.loop !205
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %11 = load i64, ptr %10, align 8, !tbaa !23
  %12 = icmp ult i64 %11, 16
  tail call void @llvm.assume(i1 %12)
  %13 = load ptr, ptr %1, align 8, !tbaa !20
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !23
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
  %29 = load i64, ptr %17, align 8, !tbaa !23
  %30 = icmp ult i64 %29, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  store i64 %29, ptr %10, align 8, !tbaa !23
  store i64 0, ptr %17, align 8, !tbaa !23
  %31 = load ptr, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %31, align 1, !tbaa !12
  br label %60

32:                                               ; preds = %22
  %33 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %33, i1 false)
  %34 = load i64, ptr %10, align 8, !tbaa !23
  %35 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %35)
  store i64 %34, ptr %17, align 8, !tbaa !23
  store i64 0, ptr %10, align 8, !tbaa !23
  %36 = load ptr, ptr %0, align 8, !tbaa !20
  store i8 0, ptr %36, align 1, !tbaa !12
  br label %60

37:                                               ; preds = %9
  %38 = load i64, ptr %14, align 8, !tbaa !12
  %39 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %39, i1 false)
  store ptr %13, ptr %0, align 8, !tbaa !20
  store ptr %14, ptr %1, align 8, !tbaa !20
  store i64 %38, ptr %7, align 8, !tbaa !12
  br label %53

40:                                               ; preds = %5
  %41 = load i64, ptr %7, align 8, !tbaa !12
  %42 = load ptr, ptr %1, align 8, !tbaa !20
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !23
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
  %51 = load i64, ptr %43, align 8, !tbaa !12
  store i64 %51, ptr %7, align 8, !tbaa !12
  br label %52

52:                                               ; preds = %50, %45
  store i64 %41, ptr %43, align 8, !tbaa !12
  br label %53

53:                                               ; preds = %26, %37, %23, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !23
  %56 = icmp ult i64 %55, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !23
  %59 = icmp ult i64 %58, 9223372036854775807
  tail call void @llvm.assume(i1 %59)
  store i64 %58, ptr %54, align 8, !tbaa !23
  store i64 %55, ptr %57, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %32, %27, %2, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %169, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %169, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %15

15:                                               ; preds = %8, %166
  %16 = phi ptr [ %6, %8 ], [ %167, %166 ]
  %17 = phi ptr [ %0, %8 ], [ %16, %166 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 72
  %19 = load i64, ptr %18, align 8, !tbaa !23
  %20 = icmp ult i64 %19, 9223372036854775807
  call void @llvm.assume(i1 %20)
  %21 = load i64, ptr %9, align 8, !tbaa !23
  %22 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %22)
  %23 = call i64 @llvm.umin.i64(i64 %21, i64 %19)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %0, align 8, !tbaa !20
  %27 = load ptr, ptr %16, align 8, !tbaa !20
  %28 = call i32 @memcmp(ptr noundef %27, ptr noundef %26, i64 noundef %23) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %15
  %31 = sub nsw i64 %19, %21
  %32 = call i64 @llvm.smax.i64(i64 %31, i64 -2147483648)
  %33 = call i64 @llvm.smin.i64(i64 %32, i64 2147483647)
  %34 = trunc nsw i64 %33 to i32
  br label %35

35:                                               ; preds = %25, %30
  %36 = phi i32 [ %28, %25 ], [ %34, %30 ]
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %165

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %10, ptr %3, align 8, !tbaa !16
  %39 = load ptr, ptr %16, align 8, !tbaa !20
  %40 = getelementptr inbounds nuw i8, ptr %17, i64 80
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = icmp samesign ult i64 %19, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %19, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %40, i64 %44, i1 false)
  %45 = load i64, ptr %18, align 8, !tbaa !23
  br label %48

46:                                               ; preds = %38
  store ptr %39, ptr %3, align 8, !tbaa !20
  %47 = load i64, ptr %40, align 8, !tbaa !12
  store i64 %47, ptr %10, align 8, !tbaa !12
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %19, %46 ], [ %45, %42 ]
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  store i64 %49, ptr %11, align 8, !tbaa !23
  store ptr %40, ptr %16, align 8, !tbaa !20
  store i64 0, ptr %18, align 8, !tbaa !23
  store i8 0, ptr %40, align 8, !tbaa !12
  %51 = getelementptr inbounds nuw i8, ptr %17, i64 96
  store ptr %13, ptr %12, align 8, !tbaa !16
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = getelementptr inbounds nuw i8, ptr %17, i64 112
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %17, i64 104
  %57 = load i64, ptr %56, align 8, !tbaa !23
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %62

60:                                               ; preds = %48
  store ptr %52, ptr %12, align 8, !tbaa !20
  %61 = load i64, ptr %53, align 8, !tbaa !12
  store i64 %61, ptr %13, align 8, !tbaa !12
  br label %62

62:                                               ; preds = %55, %60
  %63 = getelementptr inbounds nuw i8, ptr %17, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !23
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  store i64 %64, ptr %14, align 8, !tbaa !23
  store ptr %53, ptr %51, align 8, !tbaa !20
  store i64 0, ptr %63, align 8, !tbaa !23
  store i8 0, ptr %53, align 8, !tbaa !12
  %66 = getelementptr inbounds nuw i8, ptr %17, i64 128
  br label %67

67:                                               ; preds = %62, %147
  %68 = phi ptr [ %71, %147 ], [ %66, %62 ]
  %69 = phi ptr [ %70, %147 ], [ %16, %62 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 -64
  %71 = getelementptr inbounds i8, ptr %68, i64 -64
  %72 = load ptr, ptr %71, align 8, !tbaa !20
  %73 = getelementptr inbounds i8, ptr %68, i64 -48
  %74 = icmp eq ptr %72, %73
  %75 = load ptr, ptr %70, align 8, !tbaa !20
  %76 = getelementptr inbounds i8, ptr %69, i64 -48
  %77 = icmp eq ptr %75, %76
  br i1 %74, label %78, label %79

78:                                               ; preds = %67
  br i1 %77, label %80, label %96

79:                                               ; preds = %67
  br i1 %77, label %80, label %94

80:                                               ; preds = %78, %79
  %81 = getelementptr inbounds i8, ptr %69, i64 -56
  %82 = load i64, ptr %81, align 8, !tbaa !23
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  switch i64 %82, label %86 [
    i64 0, label %87
    i64 1, label %84
  ]

84:                                               ; preds = %80
  %85 = load i8, ptr %75, align 1, !tbaa !12
  store i8 %85, ptr %72, align 1, !tbaa !12
  br label %87

86:                                               ; preds = %80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %75, i64 %82, i1 false)
  br label %87

87:                                               ; preds = %86, %84, %80
  %88 = load i64, ptr %81, align 8, !tbaa !23
  %89 = icmp ult i64 %88, 9223372036854775807
  call void @llvm.assume(i1 %89)
  %90 = getelementptr inbounds i8, ptr %68, i64 -56
  store i64 %88, ptr %90, align 8, !tbaa !23
  %91 = load ptr, ptr %71, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 %88
  store i8 0, ptr %92, align 1, !tbaa !12
  %93 = load ptr, ptr %70, align 8, !tbaa !20
  br label %107

94:                                               ; preds = %79
  %95 = load i64, ptr %73, align 8, !tbaa !12
  br label %96

96:                                               ; preds = %94, %78
  %97 = phi ptr [ %72, %94 ], [ null, %78 ]
  %98 = phi i64 [ %95, %94 ], [ undef, %78 ]
  store ptr %75, ptr %71, align 8, !tbaa !20
  %99 = getelementptr inbounds i8, ptr %69, i64 -56
  %100 = load i64, ptr %99, align 8, !tbaa !23
  %101 = icmp ult i64 %100, 9223372036854775807
  call void @llvm.assume(i1 %101)
  %102 = getelementptr inbounds i8, ptr %68, i64 -56
  store i64 %100, ptr %102, align 8, !tbaa !23
  %103 = load i64, ptr %76, align 8, !tbaa !12
  store i64 %103, ptr %73, align 8, !tbaa !12
  %104 = icmp eq ptr %97, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store ptr %97, ptr %70, align 8, !tbaa !20
  store i64 %98, ptr %76, align 8, !tbaa !12
  br label %107

106:                                              ; preds = %96
  store ptr %76, ptr %70, align 8, !tbaa !20
  br label %107

107:                                              ; preds = %106, %105, %87
  %108 = phi ptr [ %93, %87 ], [ %97, %105 ], [ %76, %106 ]
  %109 = getelementptr inbounds i8, ptr %69, i64 -56
  store i64 0, ptr %109, align 8, !tbaa !23
  store i8 0, ptr %108, align 1, !tbaa !12
  %110 = getelementptr inbounds i8, ptr %69, i64 -32
  %111 = getelementptr inbounds i8, ptr %68, i64 -32
  %112 = load ptr, ptr %111, align 8, !tbaa !20
  %113 = getelementptr inbounds i8, ptr %68, i64 -16
  %114 = icmp eq ptr %112, %113
  %115 = load ptr, ptr %110, align 8, !tbaa !20
  %116 = getelementptr inbounds i8, ptr %69, i64 -16
  %117 = icmp eq ptr %115, %116
  br i1 %114, label %118, label %119

118:                                              ; preds = %107
  br i1 %117, label %120, label %136

119:                                              ; preds = %107
  br i1 %117, label %120, label %134

120:                                              ; preds = %118, %119
  %121 = getelementptr inbounds i8, ptr %69, i64 -24
  %122 = load i64, ptr %121, align 8, !tbaa !23
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  switch i64 %122, label %126 [
    i64 0, label %127
    i64 1, label %124
  ]

124:                                              ; preds = %120
  %125 = load i8, ptr %115, align 1, !tbaa !12
  store i8 %125, ptr %112, align 1, !tbaa !12
  br label %127

126:                                              ; preds = %120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %112, ptr align 1 %115, i64 %122, i1 false)
  br label %127

127:                                              ; preds = %126, %124, %120
  %128 = load i64, ptr %121, align 8, !tbaa !23
  %129 = icmp ult i64 %128, 9223372036854775807
  call void @llvm.assume(i1 %129)
  %130 = getelementptr inbounds i8, ptr %68, i64 -24
  store i64 %128, ptr %130, align 8, !tbaa !23
  %131 = load ptr, ptr %111, align 8, !tbaa !20
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 %128
  store i8 0, ptr %132, align 1, !tbaa !12
  %133 = load ptr, ptr %110, align 8, !tbaa !20
  br label %147

134:                                              ; preds = %119
  %135 = load i64, ptr %113, align 8, !tbaa !12
  br label %136

136:                                              ; preds = %134, %118
  %137 = phi ptr [ %112, %134 ], [ null, %118 ]
  %138 = phi i64 [ %135, %134 ], [ undef, %118 ]
  store ptr %115, ptr %111, align 8, !tbaa !20
  %139 = getelementptr inbounds i8, ptr %69, i64 -24
  %140 = load i64, ptr %139, align 8, !tbaa !23
  %141 = icmp ult i64 %140, 9223372036854775807
  call void @llvm.assume(i1 %141)
  %142 = getelementptr inbounds i8, ptr %68, i64 -24
  store i64 %140, ptr %142, align 8, !tbaa !23
  %143 = load i64, ptr %116, align 8, !tbaa !12
  store i64 %143, ptr %113, align 8, !tbaa !12
  %144 = icmp eq ptr %137, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  store ptr %137, ptr %110, align 8, !tbaa !20
  store i64 %138, ptr %116, align 8, !tbaa !12
  br label %147

146:                                              ; preds = %136
  store ptr %116, ptr %110, align 8, !tbaa !20
  br label %147

147:                                              ; preds = %127, %145, %146
  %148 = phi ptr [ %133, %127 ], [ %137, %145 ], [ %116, %146 ]
  %149 = getelementptr inbounds i8, ptr %69, i64 -24
  store i64 0, ptr %149, align 8, !tbaa !23
  store i8 0, ptr %148, align 1, !tbaa !12
  %150 = icmp eq ptr %0, %70
  br i1 %150, label %151, label %67, !llvm.loop !206

151:                                              ; preds = %147
  %152 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %3) #15
  %153 = load ptr, ptr %12, align 8, !tbaa !20
  %154 = icmp eq ptr %153, %13
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load i64, ptr %13, align 8, !tbaa !12
  %157 = add i64 %156, 1
  call void @_ZdlPvm(ptr noundef %153, i64 noundef %157) #28
  br label %158

158:                                              ; preds = %151, %155
  %159 = load ptr, ptr %3, align 8, !tbaa !20
  %160 = icmp eq ptr %159, %10
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i64, ptr %10, align 8, !tbaa !12
  %163 = add i64 %162, 1
  call void @_ZdlPvm(ptr noundef %159, i64 noundef %163) #28
  br label %164

164:                                              ; preds = %158, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %166

165:                                              ; preds = %35
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr nonnull %16)
  br label %166

166:                                              ; preds = %164, %165
  %167 = getelementptr inbounds nuw i8, ptr %16, i64 64
  %168 = icmp eq ptr %167, %1
  br i1 %168, label %169, label %15, !llvm.loop !207

169:                                              ; preds = %166, %5, %2
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %3, ptr %2, align 8, !tbaa !16
  %4 = load ptr, ptr %0, align 8, !tbaa !20
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !23
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false)
  br label %16

12:                                               ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !20
  %13 = load i64, ptr %5, align 8, !tbaa !12
  store i64 %13, ptr %3, align 8, !tbaa !12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !23
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %15, %12 ], [ %9, %7 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = icmp ult i64 %17, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %17, ptr %20, align 8, !tbaa !23
  store ptr %5, ptr %0, align 8, !tbaa !20
  store i64 0, ptr %18, align 8, !tbaa !23
  store i8 0, ptr %5, align 8, !tbaa !12
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %23, ptr %21, align 8, !tbaa !16
  %24 = load ptr, ptr %22, align 8, !tbaa !20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i64, ptr %28, align 8, !tbaa !23
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %31, i1 false)
  br label %36

32:                                               ; preds = %16
  store ptr %24, ptr %21, align 8, !tbaa !20
  %33 = load i64, ptr %25, align 8, !tbaa !12
  store i64 %33, ptr %23, align 8, !tbaa !12
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %35 = load i64, ptr %34, align 8, !tbaa !23
  br label %36

36:                                               ; preds = %27, %32
  %37 = phi i64 [ %29, %27 ], [ %35, %32 ]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %39)
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %37, ptr %40, align 8, !tbaa !23
  store ptr %25, ptr %22, align 8, !tbaa !20
  store i64 0, ptr %38, align 8, !tbaa !23
  store i8 0, ptr %25, align 8, !tbaa !12
  br label %41

41:                                               ; preds = %64, %36
  %42 = phi i64 [ %17, %36 ], [ %66, %64 ]
  %43 = phi ptr [ %0, %36 ], [ %44, %64 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 -64
  %45 = icmp ult i64 %42, 9223372036854775807
  call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds i8, ptr %43, i64 -56
  %47 = load i64, ptr %46, align 8, !tbaa !23
  %48 = icmp ult i64 %47, 9223372036854775807
  call void @llvm.assume(i1 %48)
  %49 = call i64 @llvm.umin.i64(i64 %47, i64 %42)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %44, align 8, !tbaa !20
  %53 = load ptr, ptr %2, align 8, !tbaa !20
  %54 = call i32 @memcmp(ptr noundef %53, ptr noundef %52, i64 noundef %49) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51, %41
  %57 = sub nsw i64 %42, %47
  %58 = call i64 @llvm.smax.i64(i64 %57, i64 -2147483648)
  %59 = call i64 @llvm.smin.i64(i64 %58, i64 2147483647)
  %60 = trunc nsw i64 %59 to i32
  br label %61

61:                                               ; preds = %51, %56
  %62 = phi i32 [ %54, %51 ], [ %60, %56 ]
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull align 8 dereferenceable(64) %44) #15
  %66 = load i64, ptr %20, align 8, !tbaa !23
  br label %41, !llvm.loop !208

67:                                               ; preds = %61
  %68 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull align 8 dereferenceable(64) %2) #15
  %69 = load ptr, ptr %21, align 8, !tbaa !20
  %70 = icmp eq ptr %69, %23
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i64, ptr %23, align 8, !tbaa !12
  %73 = add i64 %72, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %73) #28
  br label %74

74:                                               ; preds = %67, %71
  %75 = load ptr, ptr %2, align 8, !tbaa !20
  %76 = icmp eq ptr %75, %3
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %3, align 8, !tbaa !12
  %79 = add i64 %78, 1
  call void @_ZdlPvm(ptr noundef %75, i64 noundef %79) #28
  br label %80

80:                                               ; preds = %74, %77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { cold noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }

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
!10 = distinct !{!10, !11, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!11 = distinct !{!11, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!21, !18, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !22, i64 8, !7, i64 16}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!26 = distinct !{!26, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!29 = distinct !{!29, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!32 = distinct !{!32, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!33 = !{!"branch_weights", i32 1, i32 1023}
!34 = !{!35, !39, i64 48}
!35 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !36, i64 0, !22, i64 8, !38, i64 16, !38, i64 48}
!36 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0}
!37 = !{!"any p2 pointer", !19, i64 0}
!38 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24}
!39 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!40 = !{!35, !39, i64 64}
!41 = !{!38, !39, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!44 = distinct !{!44, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!45 = !{!38, !39, i64 8}
!46 = !{!38, !36, i64 24}
!47 = !{!39, !39, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!50 = distinct !{!50, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!51 = !{!52, !53, i64 8}
!52 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !53, i64 8}
!53 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !7, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !8, i64 0}
!56 = !{!57, !39, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!58 = !{!59, !60, i64 0}
!59 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !60, i64 0, !22, i64 8, !61, i64 16, !22, i64 24, !63, i64 32, !62, i64 48}
!60 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!61 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!62 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!63 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !64, i64 0, !22, i64 8}
!64 = !{!"float", !7, i64 0}
!65 = !{!59, !22, i64 8}
!66 = !{!63, !64, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !19, i64 0}
!69 = !{!70, !68, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!71 = !{!70, !68, i64 8}
!72 = distinct !{!72, !14}
!73 = !{!70, !68, i64 16}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!77 = distinct !{!77, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!78 = distinct !{!78, !14}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!81 = distinct !{!81, !"_ZNSt7__cxx119to_stringEl"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!84 = distinct !{!84, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!90 = distinct !{!90, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!93 = distinct !{!93, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!94 = !{!59, !22, i64 24}
!95 = !{!61, !62, i64 0}
!96 = distinct !{!96, !14}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!102 = distinct !{!102, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!105 = distinct !{!105, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!108 = distinct !{!108, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!112 = distinct !{!112, !14}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!116 = !{!19, !19, i64 0}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!119 = distinct !{!119, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!120 = !{!35, !36, i64 0}
!121 = !{!35, !36, i64 40}
!122 = !{!35, !36, i64 72}
!123 = distinct !{!123, !14}
!124 = !{!35, !22, i64 8}
!125 = distinct !{!125, !14}
!126 = !{!38, !39, i64 16}
!127 = !{!35, !39, i64 16}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!131 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!134 = distinct !{!134, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!135 = !{!57, !39, i64 0}
!136 = !{!57, !39, i64 8}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!139 = distinct !{!139, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!140 = distinct !{!140, !14}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!143 = distinct !{!143, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!149 = !{!145, !148}
!150 = distinct !{!150, !14}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!153 = distinct !{!153, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!154 = distinct !{!154, !14}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!157 = distinct !{!157, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!158 = !{!59, !62, i64 16}
!159 = distinct !{!159, !14}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!162 = distinct !{!162, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!168 = !{!164, !167}
!169 = distinct !{!169, !14}
!170 = !{!62, !62, i64 0}
!171 = !{!172, !22, i64 0}
!172 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !22, i64 0}
!173 = distinct !{!173, !14}
!174 = !{!175, !176, i64 0}
!175 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !176, i64 0, !177, i64 8}
!176 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !19, i64 0}
!177 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !19, i64 0}
!178 = !{!175, !177, i64 8}
!179 = !{!63, !22, i64 8}
!180 = !{!59, !62, i64 48}
!181 = distinct !{!181, !14}
!182 = distinct !{!182, !14}
!183 = distinct !{!183, !14, !184}
!184 = !{!"llvm.loop.peeled.count", i32 1}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!187 = distinct !{!187, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!190 = !{!186, !189}
!191 = distinct !{!191, !14}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!194 = distinct !{!194, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!197 = !{!193, !196}
!198 = distinct !{!198, !14}
!199 = distinct !{!199, !14}
!200 = distinct !{!200, !14}
!201 = distinct !{!201, !14}
!202 = distinct !{!202, !14}
!203 = distinct !{!203, !14}
!204 = distinct !{!204, !14}
!205 = distinct !{!205, !14}
!206 = distinct !{!206, !14}
!207 = distinct !{!207, !14}
!208 = distinct !{!208, !14}
