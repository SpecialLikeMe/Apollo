; ModuleID = '/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/02d45799905f2a47.cpp'
source_filename = "/mnt/c/Users/devon/Apollo/Apollo-Main/compiler/output/cache/inline_foreign/02d45799905f2a47.cpp"
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib15json_parse_boolESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !8, !noalias !5
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #24, !noalias !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !11

15:                                               ; preds = %12, %5, %2
  %16 = phi i64 [ 0, %2 ], [ %0, %12 ], [ %6, %5 ]
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i64 [ %0, %15 ], [ %21, %20 ]
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %17
  %21 = add i64 %18, -1
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !8, !noalias !5
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #24, !noalias !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !13

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %29, label %61

29:                                               ; preds = %27
  %30 = sub nuw i64 %18, %16
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %32, ptr %3, align 8, !tbaa !14, !alias.scope !5
  %33 = icmp ugt i64 %30, 15
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = icmp ugt i64 %30, 9223372036854775806
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %30, 1
  %39 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %38) #26
  store ptr %39, ptr %3, align 8, !tbaa !18, !alias.scope !5
  store i64 %30, ptr %32, align 8, !tbaa !8, !alias.scope !5
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi ptr [ %39, %37 ], [ %32, %29 ]
  switch i64 %30, label %44 [
    i64 1, label %42
    i64 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load i8, ptr %31, align 1, !tbaa !8, !noalias !5
  store i8 %43, ptr %41, align 1, !tbaa !8
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr align 1 %31, i64 %30, i1 false)
  br label %45

45:                                               ; preds = %40, %42, %44
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %30, ptr %46, align 8, !tbaa !21, !alias.scope !5
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 %30
  store i8 0, ptr %47, align 1, !tbaa !8
  %48 = load i64, ptr %46, align 8, !tbaa !21
  %49 = load ptr, ptr %3, align 8, !tbaa !18
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
  %57 = phi i64 [ %48, %45 ], [ 4, %52 ]
  %58 = phi i32 [ 0, %45 ], [ %55, %52 ]
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %60 = icmp eq ptr %49, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %17, %27, %56
  %62 = phi i32 [ %58, %56 ], [ 0, %27 ], [ 0, %17 ]
  %63 = phi i64 [ %57, %56 ], [ 0, %27 ], [ 0, %17 ]
  %64 = icmp samesign ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %68

65:                                               ; preds = %56
  %66 = load i64, ptr %59, align 8, !tbaa !8
  %67 = add i64 %66, 1
  call void @_ZdlPvm(ptr noundef %49, i64 noundef %67) #27
  br label %68

68:                                               ; preds = %61, %65
  %69 = phi i32 [ %62, %61 ], [ %58, %65 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret i32 %69
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN12__apo_stdlib14json_parse_intESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !8, !noalias !22
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #24, !noalias !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !11

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
  %23 = load i8, ptr %22, align 1, !tbaa !8, !noalias !22
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #24, !noalias !22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !13

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %32, label %29

29:                                               ; preds = %17, %27
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %30, align 8, !tbaa !21, !alias.scope !22
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %63

32:                                               ; preds = %27
  %33 = sub nuw i64 %18, %16
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %35, ptr %3, align 8, !tbaa !14, !alias.scope !22
  %36 = icmp ugt i64 %33, 15
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = icmp ugt i64 %33, 9223372036854775806
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

40:                                               ; preds = %37
  %41 = add nuw nsw i64 %33, 1
  %42 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
  store ptr %42, ptr %3, align 8, !tbaa !18, !alias.scope !22
  store i64 %33, ptr %35, align 8, !tbaa !8, !alias.scope !22
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi ptr [ %42, %40 ], [ %35, %32 ]
  switch i64 %33, label %47 [
    i64 1, label %45
    i64 0, label %48
  ]

45:                                               ; preds = %43
  %46 = load i8, ptr %34, align 1, !tbaa !8, !noalias !22
  store i8 %46, ptr %44, align 1, !tbaa !8
  br label %48

47:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr align 1 %34, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %43, %45, %47
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %33, ptr %49, align 8, !tbaa !21, !alias.scope !22
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 %33
  store i8 0, ptr %50, align 1, !tbaa !8
  %51 = load i64, ptr %49, align 8, !tbaa !21
  %52 = load ptr, ptr %3, align 8, !tbaa !18
  %53 = icmp eq i64 %51, 0
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %53, label %58, label %55

55:                                               ; preds = %48
  %56 = call i64 @__isoc23_strtoll(ptr noundef %52, ptr noundef null, i32 noundef 10) #15
  %57 = load ptr, ptr %3, align 8, !tbaa !18
  br label %58

58:                                               ; preds = %48, %55
  %59 = phi ptr [ %57, %55 ], [ %52, %48 ]
  %60 = phi i64 [ %56, %55 ], [ 0, %48 ]
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %29, %58
  %64 = phi i64 [ 0, %29 ], [ %60, %58 ]
  %65 = phi ptr [ %31, %29 ], [ %54, %58 ]
  %66 = load i64, ptr %65, align 8, !tbaa !21
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %71

68:                                               ; preds = %58
  %69 = load i64, ptr %61, align 8, !tbaa !8
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %70) #27
  br label %71

71:                                               ; preds = %63, %68
  %72 = phi i64 [ %64, %63 ], [ %60, %68 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret i64 %72
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN12__apo_stdlib16json_parse_floatESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %2 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !8, !noalias !25
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #24, !noalias !25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %5, !llvm.loop !11

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
  %23 = load i8, ptr %22, align 1, !tbaa !8, !noalias !25
  %24 = zext i8 %23 to i32
  %25 = tail call i32 @isspace(i32 noundef %24) #24, !noalias !25
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !13

27:                                               ; preds = %20
  %28 = icmp ugt i64 %18, %16
  br i1 %28, label %32, label %29

29:                                               ; preds = %17, %27
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %30, align 8, !tbaa !21, !alias.scope !25
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %63

32:                                               ; preds = %27
  %33 = sub nuw i64 %18, %16
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %35, ptr %3, align 8, !tbaa !14, !alias.scope !25
  %36 = icmp ugt i64 %33, 15
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = icmp ugt i64 %33, 9223372036854775806
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

40:                                               ; preds = %37
  %41 = add nuw nsw i64 %33, 1
  %42 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
  store ptr %42, ptr %3, align 8, !tbaa !18, !alias.scope !25
  store i64 %33, ptr %35, align 8, !tbaa !8, !alias.scope !25
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi ptr [ %42, %40 ], [ %35, %32 ]
  switch i64 %33, label %47 [
    i64 1, label %45
    i64 0, label %48
  ]

45:                                               ; preds = %43
  %46 = load i8, ptr %34, align 1, !tbaa !8, !noalias !25
  store i8 %46, ptr %44, align 1, !tbaa !8
  br label %48

47:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %44, ptr align 1 %34, i64 %33, i1 false)
  br label %48

48:                                               ; preds = %43, %45, %47
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %33, ptr %49, align 8, !tbaa !21, !alias.scope !25
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 %33
  store i8 0, ptr %50, align 1, !tbaa !8
  %51 = load i64, ptr %49, align 8, !tbaa !21
  %52 = load ptr, ptr %3, align 8, !tbaa !18
  %53 = icmp eq i64 %51, 0
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %53, label %58, label %55

55:                                               ; preds = %48
  %56 = call double @strtod(ptr noundef captures(none) %52, ptr noundef null) #15
  %57 = load ptr, ptr %3, align 8, !tbaa !18
  br label %58

58:                                               ; preds = %48, %55
  %59 = phi ptr [ %57, %55 ], [ %52, %48 ]
  %60 = phi double [ %56, %55 ], [ 0.000000e+00, %48 ]
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %29, %58
  %64 = phi double [ 0.000000e+00, %29 ], [ %60, %58 ]
  %65 = phi ptr [ %31, %29 ], [ %54, %58 ]
  %66 = load i64, ptr %65, align 8, !tbaa !21
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %71

68:                                               ; preds = %58
  %69 = load i64, ptr %61, align 8, !tbaa !8
  %70 = add i64 %69, 1
  call void @_ZdlPvm(ptr noundef %59, i64 noundef %70) #27
  br label %71

71:                                               ; preds = %63, %68
  %72 = phi double [ %64, %63 ], [ %60, %68 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret double %72
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14json_parse_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !8, !noalias !28
  %11 = zext i8 %10 to i32
  %12 = tail call i32 @isspace(i32 noundef %11) #24, !noalias !28
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nuw i64 %8, 1
  %16 = icmp eq i64 %15, %0
  br i1 %16, label %17, label %7, !llvm.loop !11

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
  %25 = load i8, ptr %24, align 1, !tbaa !8, !noalias !28
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @isspace(i32 noundef %26) #24, !noalias !28
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !13

29:                                               ; preds = %22
  %30 = icmp ugt i64 %20, %18
  br i1 %30, label %35, label %31

31:                                               ; preds = %19, %29
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %32, ptr %3, align 8, !tbaa !14, !alias.scope !28
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %33, align 8, !tbaa !21, !alias.scope !28
  store i8 0, ptr %32, align 8, !tbaa !8, !alias.scope !28
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %149

35:                                               ; preds = %29
  %36 = sub nuw i64 %20, %18
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %38, ptr %3, align 8, !tbaa !14, !alias.scope !28
  %39 = icmp ugt i64 %36, 15
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = icmp ugt i64 %36, 9223372036854775806
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

43:                                               ; preds = %40
  %44 = add nuw nsw i64 %36, 1
  %45 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %44) #26
  store ptr %45, ptr %3, align 8, !tbaa !18, !alias.scope !28
  store i64 %36, ptr %38, align 8, !tbaa !8, !alias.scope !28
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi ptr [ %45, %43 ], [ %38, %35 ]
  switch i64 %36, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, ptr %37, align 1, !tbaa !8, !noalias !28
  store i8 %49, ptr %47, align 1, !tbaa !8
  br label %51

50:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %37, i64 %36, i1 false)
  br label %51

51:                                               ; preds = %46, %48, %50
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %36, ptr %52, align 8, !tbaa !21, !alias.scope !28
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 %36
  store i8 0, ptr %53, align 1, !tbaa !8
  %54 = load i64, ptr %52, align 8, !tbaa !21
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %56 = icmp ult i64 %54, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = icmp samesign ugt i64 %54, 1
  br i1 %57, label %58, label %149

58:                                               ; preds = %51
  %59 = load ptr, ptr %3, align 8, !tbaa !18
  %60 = load i8, ptr %59, align 1, !tbaa !8
  %61 = icmp eq i8 %60, 34
  br i1 %61, label %62, label %149

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %59, i64 %54
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !8
  %66 = icmp eq i8 %65, 34
  br i1 %66, label %67, label %149

67:                                               ; preds = %62
  %68 = add nsw i64 %54, -2
  %69 = add nsw i64 %54, -1
  %70 = call i64 @llvm.umin.i64(i64 %69, i64 %68)
  %71 = getelementptr inbounds nuw i8, ptr %59, i64 1
  invoke void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %70, ptr nonnull %71)
          to label %72 unwind label %135

72:                                               ; preds = %67
  %73 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78, !prof !31

75:                                               ; preds = %72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %76 unwind label %137

76:                                               ; preds = %75
  %77 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 48
  %81 = load ptr, ptr %80, align 8, !tbaa !32
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 64
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = getelementptr inbounds i8, ptr %83, i64 -32
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %107, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr %87, ptr %81, align 8, !tbaa !14
  %88 = load ptr, ptr %4, align 8, !tbaa !18
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %93 = load i64, ptr %92, align 8, !tbaa !21
  %94 = icmp ult i64 %93, 16
  call void @llvm.assume(i1 %94)
  %95 = add nuw nsw i64 %93, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %87, ptr noundef nonnull align 8 dereferenceable(1) %89, i64 %95, i1 false)
  br label %100

96:                                               ; preds = %86
  store ptr %88, ptr %81, align 8, !tbaa !18
  %97 = load i64, ptr %89, align 8, !tbaa !8
  store i64 %97, ptr %87, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %99 = load i64, ptr %98, align 8, !tbaa !21
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i64 [ %99, %96 ], [ %93, %91 ]
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %103 = icmp ult i64 %101, 9223372036854775807
  call void @llvm.assume(i1 %103)
  %104 = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 %101, ptr %104, align 8, !tbaa !21
  store ptr %89, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %102, align 8, !tbaa !21
  store i8 0, ptr %89, align 8, !tbaa !8
  %105 = load ptr, ptr %80, align 8, !tbaa !32
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 32
  store ptr %106, ptr %80, align 8, !tbaa !32
  br label %110

107:                                              ; preds = %78
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %79, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %108 unwind label %137

108:                                              ; preds = %107
  %109 = load ptr, ptr %80, align 8, !tbaa !39, !noalias !40
  br label %110

110:                                              ; preds = %108, %100
  %111 = phi ptr [ %106, %100 ], [ %109, %108 ]
  %112 = getelementptr inbounds nuw i8, ptr %79, i64 56
  %113 = load ptr, ptr %112, align 8, !tbaa !43, !noalias !40
  %114 = icmp eq ptr %111, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds nuw i8, ptr %79, i64 72
  %117 = load ptr, ptr %116, align 8, !tbaa !44, !noalias !40
  %118 = getelementptr inbounds i8, ptr %117, i64 -8
  %119 = load ptr, ptr %118, align 8, !tbaa !45
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 512
  br label %121

121:                                              ; preds = %115, %110
  %122 = phi ptr [ %120, %115 ], [ %111, %110 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 -32
  %124 = load ptr, ptr %123, align 8, !tbaa !18
  %125 = load ptr, ptr %4, align 8, !tbaa !18
  %126 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %130 = load i64, ptr %129, align 8, !tbaa !21
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %219

132:                                              ; preds = %121
  %133 = load i64, ptr %126, align 8, !tbaa !8
  %134 = add i64 %133, 1
  call void @_ZdlPvm(ptr noundef %125, i64 noundef %134) #27
  br label %219

135:                                              ; preds = %67
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %232

137:                                              ; preds = %107, %75
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %4, align 8, !tbaa !18
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8, !tbaa !21
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %232

146:                                              ; preds = %137
  %147 = load i64, ptr %140, align 8, !tbaa !8
  %148 = add i64 %147, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %148) #27
  br label %232

149:                                              ; preds = %31, %62, %58, %51
  %150 = phi ptr [ %34, %31 ], [ %55, %62 ], [ %55, %58 ], [ %55, %51 ]
  %151 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %151, ptr %5, align 8, !tbaa !14
  %152 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %152, align 8, !tbaa !21
  store i8 0, ptr %151, align 8, !tbaa !8
  %153 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %158, !prof !31

155:                                              ; preds = %149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %156 unwind label %209

156:                                              ; preds = %155
  %157 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %158

158:                                              ; preds = %156, %149
  %159 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load ptr, ptr %160, align 8, !tbaa !32
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 64
  %163 = load ptr, ptr %162, align 8, !tbaa !38
  %164 = getelementptr inbounds i8, ptr %163, i64 -32
  %165 = icmp eq ptr %161, %164
  br i1 %165, label %183, label %166

166:                                              ; preds = %158
  %167 = getelementptr inbounds nuw i8, ptr %161, i64 16
  store ptr %167, ptr %161, align 8, !tbaa !14
  %168 = load ptr, ptr %5, align 8, !tbaa !18
  %169 = icmp eq ptr %168, %151
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i64, ptr %152, align 8, !tbaa !21
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  %173 = add nuw nsw i64 %171, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %167, ptr noundef nonnull align 8 dereferenceable(1) %151, i64 %173, i1 false)
  br label %177

174:                                              ; preds = %166
  store ptr %168, ptr %161, align 8, !tbaa !18
  %175 = load i64, ptr %151, align 8, !tbaa !8
  store i64 %175, ptr %167, align 8, !tbaa !8
  %176 = load i64, ptr %152, align 8, !tbaa !21
  br label %177

177:                                              ; preds = %174, %170
  %178 = phi i64 [ %176, %174 ], [ %171, %170 ]
  %179 = icmp ult i64 %178, 9223372036854775807
  call void @llvm.assume(i1 %179)
  %180 = getelementptr inbounds nuw i8, ptr %161, i64 8
  store i64 %178, ptr %180, align 8, !tbaa !21
  store ptr %151, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %152, align 8, !tbaa !21
  store i8 0, ptr %151, align 8, !tbaa !8
  %181 = load ptr, ptr %160, align 8, !tbaa !32
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 32
  store ptr %182, ptr %160, align 8, !tbaa !32
  br label %186

183:                                              ; preds = %158
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %159, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %184 unwind label %209

184:                                              ; preds = %183
  %185 = load ptr, ptr %160, align 8, !tbaa !39, !noalias !46
  br label %186

186:                                              ; preds = %184, %177
  %187 = phi ptr [ %182, %177 ], [ %185, %184 ]
  %188 = getelementptr inbounds nuw i8, ptr %159, i64 56
  %189 = load ptr, ptr %188, align 8, !tbaa !43, !noalias !46
  %190 = icmp eq ptr %187, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = getelementptr inbounds nuw i8, ptr %159, i64 72
  %193 = load ptr, ptr %192, align 8, !tbaa !44, !noalias !46
  %194 = getelementptr inbounds i8, ptr %193, i64 -8
  %195 = load ptr, ptr %194, align 8, !tbaa !45
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 512
  br label %197

197:                                              ; preds = %191, %186
  %198 = phi ptr [ %196, %191 ], [ %187, %186 ]
  %199 = getelementptr inbounds i8, ptr %198, i64 -32
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  %201 = load ptr, ptr %5, align 8, !tbaa !18
  %202 = icmp eq ptr %201, %151
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i64, ptr %152, align 8, !tbaa !21
  %205 = icmp ult i64 %204, 16
  call void @llvm.assume(i1 %205)
  br label %219

206:                                              ; preds = %197
  %207 = load i64, ptr %151, align 8, !tbaa !8
  %208 = add i64 %207, 1
  call void @_ZdlPvm(ptr noundef %201, i64 noundef %208) #27
  br label %219

209:                                              ; preds = %183, %155
  %210 = landingpad { ptr, i32 }
          cleanup
  %211 = load ptr, ptr %5, align 8, !tbaa !18
  %212 = icmp eq ptr %211, %151
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i64, ptr %152, align 8, !tbaa !21
  %215 = icmp ult i64 %214, 16
  call void @llvm.assume(i1 %215)
  br label %232

216:                                              ; preds = %209
  %217 = load i64, ptr %151, align 8, !tbaa !8
  %218 = add i64 %217, 1
  call void @_ZdlPvm(ptr noundef %211, i64 noundef %218) #27
  br label %232

219:                                              ; preds = %206, %203, %132, %128
  %220 = phi ptr [ %55, %128 ], [ %55, %132 ], [ %150, %203 ], [ %150, %206 ]
  %221 = phi ptr [ %124, %128 ], [ %124, %132 ], [ %200, %203 ], [ %200, %206 ]
  %222 = load ptr, ptr %3, align 8, !tbaa !18
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i64, ptr %220, align 8, !tbaa !21
  %227 = icmp ult i64 %226, 16
  call void @llvm.assume(i1 %227)
  br label %231

228:                                              ; preds = %219
  %229 = load i64, ptr %223, align 8, !tbaa !8
  %230 = add i64 %229, 1
  call void @_ZdlPvm(ptr noundef %222, i64 noundef %230) #27
  br label %231

231:                                              ; preds = %225, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret ptr %221

232:                                              ; preds = %213, %216, %135, %142, %146
  %233 = phi ptr [ %55, %135 ], [ %55, %142 ], [ %55, %146 ], [ %150, %213 ], [ %150, %216 ]
  %234 = phi { ptr, i32 } [ %136, %135 ], [ %138, %142 ], [ %138, %146 ], [ %210, %213 ], [ %210, %216 ]
  %235 = load ptr, ptr %3, align 8, !tbaa !18
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %237 = icmp eq ptr %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load i64, ptr %233, align 8, !tbaa !21
  %240 = icmp ult i64 %239, 16
  call void @llvm.assume(i1 %240)
  br label %244

241:                                              ; preds = %232
  %242 = load i64, ptr %236, align 8, !tbaa !8
  %243 = add i64 %242, 1
  call void @_ZdlPvm(ptr noundef %235, i64 noundef %243) #27
  br label %244

244:                                              ; preds = %238, %241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %234
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_parse_arrayEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector", align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  call void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %7, ptr %0)
  %8 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %11 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %12, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %8, align 8, !tbaa !52
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load <2 x ptr>, ptr %2, align 16, !tbaa !45
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !45
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load ptr, ptr %16, align 16, !tbaa !54
  store ptr %17, ptr %14, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  ret ptr %8
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib24json_parse_object_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector.6", align 8
  %4 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 5, ptr %5, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib20unordered_map_handleE, i64 16), ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %7, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN12__apo_stdlib23json_parse_object_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, i64 %0, ptr %1)
  %12 = load ptr, ptr %3, align 8, !tbaa !65
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %49, label %59

16:                                               ; preds = %110
  %17 = load ptr, ptr %3, align 8, !tbaa !67
  %18 = load ptr, ptr %13, align 8, !tbaa !69
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %49, label %20

20:                                               ; preds = %16, %44
  %21 = phi ptr [ %45, %44 ], [ %17, %16 ]
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 40
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %33

30:                                               ; preds = %20
  %31 = load i64, ptr %24, align 8, !tbaa !8
  %32 = add i64 %31, 1
  call void @_ZdlPvm(ptr noundef %23, i64 noundef %32) #27
  br label %33

33:                                               ; preds = %30, %26
  %34 = load ptr, ptr %21, align 8, !tbaa !18
  %35 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !21
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %44

41:                                               ; preds = %33
  %42 = load i64, ptr %35, align 8, !tbaa !8
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %34, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %46 = icmp eq ptr %45, %18
  br i1 %46, label %47, label %20, !llvm.loop !70

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8, !tbaa !67
  br label %49

49:                                               ; preds = %2, %47, %16
  %50 = phi ptr [ %48, %47 ], [ %17, %16 ], [ %12, %2 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %50 to i64
  %57 = sub i64 %55, %56
  call void @_ZdlPvm(ptr noundef nonnull %50, i64 noundef %57) #27
  br label %58

58:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %4

59:                                               ; preds = %2, %110
  %60 = phi ptr [ %113, %110 ], [ %12, %2 ]
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %62 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %63 unwind label %115

63:                                               ; preds = %59
  %64 = load ptr, ptr %62, align 8, !tbaa !18
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %69 = load i64, ptr %68, align 8, !tbaa !21
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  %71 = load ptr, ptr %61, align 8, !tbaa !18
  %72 = getelementptr inbounds nuw i8, ptr %60, i64 48
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %78, label %97

74:                                               ; preds = %63
  %75 = load ptr, ptr %61, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %60, i64 48
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74, %67
  %79 = phi ptr [ %75, %74 ], [ %71, %67 ]
  %80 = getelementptr inbounds nuw i8, ptr %60, i64 40
  %81 = load i64, ptr %80, align 8, !tbaa !21
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  %83 = icmp eq ptr %61, %62
  br i1 %83, label %110, label %84, !prof !72

84:                                               ; preds = %78
  switch i64 %81, label %87 [
    i64 0, label %88
    i64 1, label %85
  ]

85:                                               ; preds = %84
  %86 = load i8, ptr %79, align 1, !tbaa !8
  store i8 %86, ptr %64, align 1, !tbaa !8
  br label %88

87:                                               ; preds = %84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %79, i64 %81, i1 false)
  br label %88

88:                                               ; preds = %87, %85, %84
  %89 = load i64, ptr %80, align 8, !tbaa !21
  %90 = icmp ult i64 %89, 9223372036854775807
  call void @llvm.assume(i1 %90)
  %91 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 %89, ptr %91, align 8, !tbaa !21
  %92 = load ptr, ptr %62, align 8, !tbaa !18
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %89
  store i8 0, ptr %93, align 1, !tbaa !8
  %94 = load ptr, ptr %61, align 8, !tbaa !18
  br label %110

95:                                               ; preds = %74
  %96 = load i64, ptr %65, align 8, !tbaa !8
  br label %97

97:                                               ; preds = %95, %67
  %98 = phi ptr [ %76, %95 ], [ %72, %67 ]
  %99 = phi ptr [ %75, %95 ], [ %71, %67 ]
  %100 = phi ptr [ %64, %95 ], [ null, %67 ]
  %101 = phi i64 [ %96, %95 ], [ undef, %67 ]
  store ptr %99, ptr %62, align 8, !tbaa !18
  %102 = getelementptr inbounds nuw i8, ptr %60, i64 40
  %103 = load i64, ptr %102, align 8, !tbaa !21
  %104 = icmp ult i64 %103, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 %103, ptr %105, align 8, !tbaa !21
  %106 = load i64, ptr %98, align 8, !tbaa !8
  store i64 %106, ptr %65, align 8, !tbaa !8
  %107 = icmp eq ptr %100, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  store ptr %100, ptr %61, align 8, !tbaa !18
  store i64 %101, ptr %98, align 8, !tbaa !8
  br label %110

109:                                              ; preds = %97
  store ptr %98, ptr %61, align 8, !tbaa !18
  br label %110

110:                                              ; preds = %78, %88, %108, %109
  %111 = phi ptr [ %94, %88 ], [ %100, %108 ], [ %98, %109 ], [ %79, %78 ]
  %112 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i64 0, ptr %112, align 8, !tbaa !21
  store i8 0, ptr %111, align 1, !tbaa !8
  %113 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %114 = icmp eq ptr %113, %14
  br i1 %114, label %16, label %59

115:                                              ; preds = %59
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1827sys__native_json_write_boolEi(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, ptr @.str.8, ptr @.str
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %5, ptr %2, align 8, !tbaa !14
  %6 = select i1 %3, i64 5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(4) %4, i64 %6, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %6, ptr %7, align 8, !tbaa !21
  %8 = select i1 %3, i64 21, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !8
  %10 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !31

12:                                               ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %13 unwind label %67

13:                                               ; preds = %12
  %14 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds i8, ptr %20, i64 -32
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %24, ptr %18, align 8, !tbaa !14
  %25 = load ptr, ptr %2, align 8, !tbaa !18
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, ptr %7, align 8, !tbaa !21
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %24, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %30, i1 false)
  br label %34

31:                                               ; preds = %23
  store ptr %25, ptr %18, align 8, !tbaa !18
  %32 = load i64, ptr %5, align 8, !tbaa !8
  store i64 %32, ptr %24, align 8, !tbaa !8
  %33 = load i64, ptr %7, align 8, !tbaa !21
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %33, %31 ], [ %28, %27 ]
  %36 = icmp ult i64 %35, 9223372036854775807
  call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %35, ptr %37, align 8, !tbaa !21
  store ptr %5, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %7, align 8, !tbaa !21
  store i8 0, ptr %5, align 8, !tbaa !8
  %38 = load ptr, ptr %17, align 8, !tbaa !32
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %39, ptr %17, align 8, !tbaa !32
  br label %43

40:                                               ; preds = %15
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %41 unwind label %67

41:                                               ; preds = %40
  %42 = load ptr, ptr %17, align 8, !tbaa !39, !noalias !73
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %39, %34 ], [ %42, %41 ]
  %45 = getelementptr inbounds nuw i8, ptr %16, i64 56
  %46 = load ptr, ptr %45, align 8, !tbaa !43, !noalias !73
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %50 = load ptr, ptr %49, align 8, !tbaa !44, !noalias !73
  %51 = getelementptr inbounds i8, ptr %50, i64 -8
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 512
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi ptr [ %53, %48 ], [ %44, %43 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 -32
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = load ptr, ptr %2, align 8, !tbaa !18
  %59 = icmp eq ptr %58, %5
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i64, ptr %7, align 8, !tbaa !21
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %66

63:                                               ; preds = %54
  %64 = load i64, ptr %5, align 8, !tbaa !8
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %58, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %60, %63
  ret ptr %57

67:                                               ; preds = %40, %12
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %2, align 8, !tbaa !18
  %70 = icmp eq ptr %69, %5
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %7, align 8, !tbaa !21
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %77

74:                                               ; preds = %67
  %75 = load i64, ptr %5, align 8, !tbaa !8
  %76 = add i64 %75, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %76) #27
  br label %77

77:                                               ; preds = %74, %71
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1826sys__native_json_write_intEl(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_intEl(i64 noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
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
  br i1 %23, label %24, label %6, !llvm.loop !76

24:                                               ; preds = %20, %18, %14, %10, %1
  %25 = phi i32 [ %11, %10 ], [ %15, %14 ], [ %19, %18 ], [ 1, %1 ], [ %22, %20 ]
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %26, ptr %2, align 8, !tbaa !14, !alias.scope !77
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %27, align 8, !tbaa !21, !alias.scope !77
  store i8 0, ptr %26, align 8, !tbaa !8, !alias.scope !77
  %28 = trunc nuw nsw i64 %3 to i32
  %29 = add i32 %25, %28
  %30 = zext i32 %29 to i64
  %31 = zext i32 %25 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or disjoint i64 %32, %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %30, i64 %33, i64 %4)
          to label %46 unwind label %34

34:                                               ; preds = %24
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %2, align 8, !tbaa !18, !alias.scope !77
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %27, align 8, !tbaa !21, !alias.scope !77
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %44

41:                                               ; preds = %34
  %42 = load i64, ptr %26, align 8, !tbaa !8, !alias.scope !77
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %36, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %111, %108, %38, %41
  %45 = phi { ptr, i32 } [ %35, %41 ], [ %35, %38 ], [ %105, %108 ], [ %105, %111 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %24
  %47 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52, !prof !31

49:                                               ; preds = %46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %50 unwind label %104

50:                                               ; preds = %49
  %51 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 48
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 64
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %77, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 16
  store ptr %61, ptr %55, align 8, !tbaa !14
  %62 = load ptr, ptr %2, align 8, !tbaa !18
  %63 = icmp eq ptr %62, %26
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, ptr %27, align 8, !tbaa !21
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  %67 = add nuw nsw i64 %65, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %61, ptr noundef nonnull align 8 dereferenceable(1) %26, i64 %67, i1 false)
  br label %71

68:                                               ; preds = %60
  store ptr %62, ptr %55, align 8, !tbaa !18
  %69 = load i64, ptr %26, align 8, !tbaa !8
  store i64 %69, ptr %61, align 8, !tbaa !8
  %70 = load i64, ptr %27, align 8, !tbaa !21
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i64 [ %70, %68 ], [ %65, %64 ]
  %73 = icmp ult i64 %72, 9223372036854775807
  call void @llvm.assume(i1 %73)
  %74 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %72, ptr %74, align 8, !tbaa !21
  store ptr %26, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %27, align 8, !tbaa !21
  store i8 0, ptr %26, align 8, !tbaa !8
  %75 = load ptr, ptr %54, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  store ptr %76, ptr %54, align 8, !tbaa !32
  br label %80

77:                                               ; preds = %52
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %53, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %78 unwind label %104

78:                                               ; preds = %77
  %79 = load ptr, ptr %54, align 8, !tbaa !39, !noalias !80
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi ptr [ %76, %71 ], [ %79, %78 ]
  %82 = getelementptr inbounds nuw i8, ptr %53, i64 56
  %83 = load ptr, ptr %82, align 8, !tbaa !43, !noalias !80
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw i8, ptr %53, i64 72
  %87 = load ptr, ptr %86, align 8, !tbaa !44, !noalias !80
  %88 = getelementptr inbounds i8, ptr %87, i64 -8
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 512
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi ptr [ %90, %85 ], [ %81, %80 ]
  %93 = getelementptr inbounds i8, ptr %92, i64 -32
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = load ptr, ptr %2, align 8, !tbaa !18
  %96 = icmp eq ptr %95, %26
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i64, ptr %27, align 8, !tbaa !21
  %99 = icmp ult i64 %98, 16
  call void @llvm.assume(i1 %99)
  br label %103

100:                                              ; preds = %91
  %101 = load i64, ptr %26, align 8, !tbaa !8
  %102 = add i64 %101, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %102) #27
  br label %103

103:                                              ; preds = %97, %100
  ret ptr %94

104:                                              ; preds = %77, %49
  %105 = landingpad { ptr, i32 }
          cleanup
  %106 = load ptr, ptr %2, align 8, !tbaa !18
  %107 = icmp eq ptr %106, %26
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, ptr %27, align 8, !tbaa !21
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %44

111:                                              ; preds = %104
  %112 = load i64, ptr %26, align 8, !tbaa !8
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %106, i64 noundef %113) #27
  br label %44
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_write_floatEd(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %2) #15
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %4 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %0)
          to label %5 unwind label %90

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %7 unwind label %90

7:                                                ; preds = %5
  %8 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !31

10:                                               ; preds = %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %11 unwind label %92

11:                                               ; preds = %10
  %12 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 48
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds i8, ptr %18, i64 -32
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %22, ptr %16, align 8, !tbaa !14
  %23 = load ptr, ptr %3, align 8, !tbaa !18
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(1) %24, i64 %30, i1 false)
  br label %35

31:                                               ; preds = %21
  store ptr %23, ptr %16, align 8, !tbaa !18
  %32 = load i64, ptr %24, align 8, !tbaa !8
  store i64 %32, ptr %22, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !21
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i64 [ %34, %31 ], [ %28, %26 ]
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %38 = icmp ult i64 %36, 9223372036854775807
  call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %36, ptr %39, align 8, !tbaa !21
  store ptr %24, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %37, align 8, !tbaa !21
  store i8 0, ptr %24, align 8, !tbaa !8
  %40 = load ptr, ptr %15, align 8, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  store ptr %41, ptr %15, align 8, !tbaa !32
  br label %45

42:                                               ; preds = %13
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %43 unwind label %92

43:                                               ; preds = %42
  %44 = load ptr, ptr %15, align 8, !tbaa !39, !noalias !83
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %41, %35 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %48 = load ptr, ptr %47, align 8, !tbaa !43, !noalias !83
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %14, i64 72
  %52 = load ptr, ptr %51, align 8, !tbaa !44, !noalias !83
  %53 = getelementptr inbounds i8, ptr %52, i64 -8
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 512
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi ptr [ %55, %50 ], [ %46, %45 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -32
  %59 = load ptr, ptr %58, align 8, !tbaa !18
  %60 = load ptr, ptr %3, align 8, !tbaa !18
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !21
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  br label %70

67:                                               ; preds = %56
  %68 = load i64, ptr %61, align 8, !tbaa !8
  %69 = add i64 %68, 1
  call void @_ZdlPvm(ptr noundef %60, i64 noundef %69) #27
  br label %70

70:                                               ; preds = %63, %67
  %71 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %71, ptr %2, align 8, !tbaa !52
  %72 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %73 = getelementptr i8, ptr %71, i64 -24
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds i8, ptr %2, i64 %74
  store ptr %72, ptr %75, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %6, align 8, !tbaa !52
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %77 = load ptr, ptr %76, align 8, !tbaa !18
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %82 = load i64, ptr %81, align 8, !tbaa !21
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %87

84:                                               ; preds = %70
  %85 = load i64, ptr %78, align 8, !tbaa !8
  %86 = add i64 %85, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %86) #27
  br label %87

87:                                               ; preds = %80, %84
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %6, align 8, !tbaa !52
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %88) #15
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %89) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #15
  ret ptr %59

90:                                               ; preds = %5, %1
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %104

92:                                               ; preds = %42, %10
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = load ptr, ptr %3, align 8, !tbaa !18
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %99 = load i64, ptr %98, align 8, !tbaa !21
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %104

101:                                              ; preds = %92
  %102 = load i64, ptr %95, align 8, !tbaa !8
  %103 = add i64 %102, 1
  call void @_ZdlPvm(ptr noundef %94, i64 noundef %103) #27
  br label %104

104:                                              ; preds = %101, %97, %90
  %105 = phi { ptr, i32 } [ %91, %90 ], [ %93, %97 ], [ %93, %101 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #15
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %2) #15
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14json_write_strESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %0, ptr %1)
  %4 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !31

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %7 unwind label %67

7:                                                ; preds = %6
  %8 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds i8, ptr %14, i64 -32
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %18, ptr %12, align 8, !tbaa !14
  %19 = load ptr, ptr %3, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !21
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  %26 = add nuw nsw i64 %24, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(1) %20, i64 %26, i1 false)
  br label %31

27:                                               ; preds = %17
  store ptr %19, ptr %12, align 8, !tbaa !18
  %28 = load i64, ptr %20, align 8, !tbaa !8
  store i64 %28, ptr %18, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa !21
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i64 [ %30, %27 ], [ %24, %22 ]
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %34 = icmp ult i64 %32, 9223372036854775807
  call void @llvm.assume(i1 %34)
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %32, ptr %35, align 8, !tbaa !21
  store ptr %20, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %33, align 8, !tbaa !21
  store i8 0, ptr %20, align 8, !tbaa !8
  %36 = load ptr, ptr %11, align 8, !tbaa !32
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  store ptr %37, ptr %11, align 8, !tbaa !32
  br label %41

38:                                               ; preds = %9
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %39 unwind label %67

39:                                               ; preds = %38
  %40 = load ptr, ptr %11, align 8, !tbaa !39, !noalias !86
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %37, %31 ], [ %40, %39 ]
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %44 = load ptr, ptr %43, align 8, !tbaa !43, !noalias !86
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !44, !noalias !86
  %49 = getelementptr inbounds i8, ptr %48, i64 -8
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 512
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi ptr [ %51, %46 ], [ %42, %41 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 -32
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = load ptr, ptr %3, align 8, !tbaa !18
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !21
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %66

63:                                               ; preds = %52
  %64 = load i64, ptr %57, align 8, !tbaa !8
  %65 = add i64 %64, 1
  call void @_ZdlPvm(ptr noundef %56, i64 noundef %65) #27
  br label %66

66:                                               ; preds = %59, %63
  ret ptr %55

67:                                               ; preds = %38, %6
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %3, align 8, !tbaa !18
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !21
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %79

76:                                               ; preds = %67
  %77 = load i64, ptr %70, align 8, !tbaa !8
  %78 = add i64 %77, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %78) #27
  br label %79

79:                                               ; preds = %72, %76
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1828sys__native_json_write_arrayEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN12__apo_stdlib26json_write_array_fragmentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %14

10:                                               ; preds = %1, %4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %11, ptr %2, align 8, !tbaa !14
  store i16 23899, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %12, align 8, !tbaa !21
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %13, align 2, !tbaa !8
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ true, %10 ], [ false, %8 ]
  %16 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21, !prof !31

18:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %19 unwind label %88

19:                                               ; preds = %18
  %20 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 64
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds i8, ptr %26, i64 -32
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %30, ptr %24, align 8, !tbaa !14
  %31 = load ptr, ptr %2, align 8, !tbaa !18
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %36 = load i64, ptr %35, align 8, !tbaa !21
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %36, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(1) %32, i64 %38, i1 false)
  br label %43

39:                                               ; preds = %29
  store ptr %31, ptr %24, align 8, !tbaa !18
  %40 = load i64, ptr %32, align 8, !tbaa !8
  store i64 %40, ptr %30, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !21
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i64 [ %42, %39 ], [ %36, %34 ]
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %46 = icmp ult i64 %44, 9223372036854775807
  call void @llvm.assume(i1 %46)
  %47 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %44, ptr %47, align 8, !tbaa !21
  store ptr %32, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %45, align 8, !tbaa !21
  store i8 0, ptr %32, align 8, !tbaa !8
  %48 = load ptr, ptr %23, align 8, !tbaa !32
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr %49, ptr %23, align 8, !tbaa !32
  br label %53

50:                                               ; preds = %21
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %51 unwind label %88

51:                                               ; preds = %50
  %52 = load ptr, ptr %23, align 8, !tbaa !39, !noalias !89
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi ptr [ %49, %43 ], [ %52, %51 ]
  %55 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %56 = load ptr, ptr %55, align 8, !tbaa !43, !noalias !89
  %57 = icmp eq ptr %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw i8, ptr %22, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !44, !noalias !89
  %61 = getelementptr inbounds i8, ptr %60, i64 -8
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 512
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi ptr [ %63, %58 ], [ %54, %53 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 -32
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  %68 = load ptr, ptr %2, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %70 = icmp eq ptr %68, %69
  br i1 %15, label %71, label %79

71:                                               ; preds = %64
  br i1 %70, label %72, label %76

72:                                               ; preds = %71
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !21
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %87

76:                                               ; preds = %71
  %77 = load i64, ptr %69, align 8, !tbaa !8
  %78 = add i64 %77, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %78) #27
  br label %87

79:                                               ; preds = %64
  br i1 %70, label %80, label %84

80:                                               ; preds = %79
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 8, !tbaa !21
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %87

84:                                               ; preds = %79
  %85 = load i64, ptr %69, align 8, !tbaa !8
  %86 = add i64 %85, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %86) #27
  br label %87

87:                                               ; preds = %84, %80, %76, %72
  ret ptr %67

88:                                               ; preds = %50, %18
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = load ptr, ptr %2, align 8, !tbaa !18
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %92 = icmp eq ptr %90, %91
  br i1 %15, label %93, label %101

93:                                               ; preds = %88
  br i1 %92, label %94, label %98

94:                                               ; preds = %93
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %96 = load i64, ptr %95, align 8, !tbaa !21
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %109

98:                                               ; preds = %93
  %99 = load i64, ptr %91, align 8, !tbaa !8
  %100 = add i64 %99, 1
  call void @_ZdlPvm(ptr noundef %90, i64 noundef %100) #27
  br label %109

101:                                              ; preds = %88
  br i1 %92, label %102, label %106

102:                                              ; preds = %101
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load i64, ptr %103, align 8, !tbaa !21
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %109

106:                                              ; preds = %101
  %107 = load i64, ptr %91, align 8, !tbaa !8
  %108 = add i64 %107, 1
  call void @_ZdlPvm(ptr noundef %90, i64 noundef %108) #27
  br label %109

109:                                              ; preds = %98, %94, %106, %102
  resume { ptr, i32 } %89
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1829sys__native_json_write_objectEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector.6", align 8
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %11, label %10

10:                                               ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %164

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8, !tbaa !92
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13)
          to label %14 unwind label %53

14:                                               ; preds = %11
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !93
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

26:                                               ; preds = %155, %14
  %27 = load ptr, ptr %2, align 8, !tbaa !65
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %164, label %31

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
  br i1 %44, label %164, label %45

45:                                               ; preds = %43, %47
  %46 = phi ptr [ %48, %47 ], [ %42, %43 ]
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr nonnull %46)
          to label %47 unwind label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = icmp eq ptr %48, %29
  br i1 %49, label %164, label %45, !llvm.loop !94

50:                                               ; preds = %39
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_(ptr %27, ptr %29)
          to label %164 unwind label %53

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %284

53:                                               ; preds = %11, %164, %31, %41, %50
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %284

55:                                               ; preds = %18, %155
  %56 = phi ptr [ %16, %18 ], [ %156, %155 ]
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  store ptr %19, ptr %3, align 8, !tbaa !14
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %60 = load i64, ptr %59, align 8, !tbaa !21
  %61 = icmp ult i64 %60, 9223372036854775807
  call void @llvm.assume(i1 %61)
  %62 = icmp samesign ugt i64 %60, 15
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = add nuw nsw i64 %60, 1
  %65 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %64) #26
          to label %66 unwind label %158

66:                                               ; preds = %63
  store ptr %65, ptr %3, align 8, !tbaa !18
  store i64 %60, ptr %19, align 8, !tbaa !8
  br label %73

67:                                               ; preds = %55
  %68 = icmp eq i64 %60, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = add nuw nsw i64 %60, 1
  br label %73

71:                                               ; preds = %67
  %72 = load i8, ptr %58, align 1, !tbaa !8
  store i8 %72, ptr %19, align 8, !tbaa !8
  br label %76

73:                                               ; preds = %69, %66
  %74 = phi i64 [ %70, %69 ], [ %64, %66 ]
  %75 = phi ptr [ %19, %69 ], [ %65, %66 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %75, ptr noundef nonnull align 1 dereferenceable(1) %58, i64 %74, i1 false)
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %19, %71 ], [ %75, %73 ]
  store i64 %60, ptr %20, align 8, !tbaa !21
  %78 = getelementptr inbounds nuw i8, ptr %56, i64 40
  store ptr %22, ptr %21, align 8, !tbaa !14
  %79 = load ptr, ptr %78, align 8, !tbaa !18
  %80 = getelementptr inbounds nuw i8, ptr %56, i64 48
  %81 = load i64, ptr %80, align 8, !tbaa !21
  %82 = icmp ult i64 %81, 9223372036854775807
  call void @llvm.assume(i1 %82)
  %83 = icmp samesign ugt i64 %81, 15
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = add nuw nsw i64 %81, 1
  %86 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %85) #26
          to label %87 unwind label %97

87:                                               ; preds = %84
  store ptr %86, ptr %21, align 8, !tbaa !18
  store i64 %81, ptr %22, align 8, !tbaa !8
  br label %94

88:                                               ; preds = %76
  %89 = icmp eq i64 %81, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = add nuw nsw i64 %81, 1
  br label %94

92:                                               ; preds = %88
  %93 = load i8, ptr %79, align 1, !tbaa !8
  store i8 %93, ptr %22, align 8, !tbaa !8
  br label %105

94:                                               ; preds = %90, %87
  %95 = phi i64 [ %91, %90 ], [ %85, %87 ]
  %96 = phi ptr [ %22, %90 ], [ %86, %87 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull align 1 dereferenceable(1) %79, i64 %95, i1 false)
  br label %105

97:                                               ; preds = %84
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = icmp eq ptr %77, %19
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = icmp samesign ult i64 %60, 16
  call void @llvm.assume(i1 %101)
  br label %162

102:                                              ; preds = %97
  %103 = load i64, ptr %19, align 8, !tbaa !8
  %104 = add i64 %103, 1
  call void @_ZdlPvm(ptr noundef nonnull %77, i64 noundef %104) #27
  br label %162

105:                                              ; preds = %94, %92
  store i64 %81, ptr %23, align 8, !tbaa !21
  %106 = load ptr, ptr %24, align 8, !tbaa !69
  %107 = load ptr, ptr %25, align 8, !tbaa !71
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %136, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %106, i64 16
  store ptr %110, ptr %106, align 8, !tbaa !14
  %111 = load ptr, ptr %3, align 8, !tbaa !18
  %112 = icmp eq ptr %111, %19
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = icmp samesign ult i64 %60, 16
  call void @llvm.assume(i1 %114)
  %115 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %110, ptr noundef nonnull align 8 dereferenceable(1) %19, i64 %115, i1 false)
  br label %118

116:                                              ; preds = %109
  store ptr %111, ptr %106, align 8, !tbaa !18
  %117 = load i64, ptr %19, align 8, !tbaa !8
  store i64 %117, ptr %110, align 8, !tbaa !8
  br label %118

118:                                              ; preds = %116, %113
  %119 = getelementptr inbounds nuw i8, ptr %106, i64 8
  store i64 %60, ptr %119, align 8, !tbaa !21
  store ptr %19, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %20, align 8, !tbaa !21
  store i8 0, ptr %19, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %106, i64 48
  store ptr %121, ptr %120, align 8, !tbaa !14
  %122 = load ptr, ptr %21, align 8, !tbaa !18
  %123 = icmp eq ptr %122, %22
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i64, ptr %23, align 8, !tbaa !21
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  %127 = add nuw nsw i64 %125, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %121, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %127, i1 false)
  br label %131

128:                                              ; preds = %118
  store ptr %122, ptr %120, align 8, !tbaa !18
  %129 = load i64, ptr %22, align 8, !tbaa !8
  store i64 %129, ptr %121, align 8, !tbaa !8
  %130 = load i64, ptr %23, align 8, !tbaa !21
  br label %131

131:                                              ; preds = %124, %128
  %132 = phi i64 [ %130, %128 ], [ %125, %124 ]
  %133 = icmp ult i64 %132, 9223372036854775807
  call void @llvm.assume(i1 %133)
  %134 = getelementptr inbounds nuw i8, ptr %106, i64 40
  store i64 %132, ptr %134, align 8, !tbaa !21
  store ptr %22, ptr %21, align 8, !tbaa !18
  store i64 0, ptr %23, align 8, !tbaa !21
  store i8 0, ptr %22, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw i8, ptr %106, i64 64
  store ptr %135, ptr %24, align 8, !tbaa !69
  br label %140

136:                                              ; preds = %105
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %137 unwind label %160

137:                                              ; preds = %136
  %138 = load ptr, ptr %21, align 8, !tbaa !18
  %139 = icmp eq ptr %138, %22
  br i1 %139, label %140, label %143

140:                                              ; preds = %131, %137
  %141 = load i64, ptr %23, align 8, !tbaa !21
  %142 = icmp ult i64 %141, 16
  call void @llvm.assume(i1 %142)
  br label %146

143:                                              ; preds = %137
  %144 = load i64, ptr %22, align 8, !tbaa !8
  %145 = add i64 %144, 1
  call void @_ZdlPvm(ptr noundef %138, i64 noundef %145) #27
  br label %146

146:                                              ; preds = %143, %140
  %147 = load ptr, ptr %3, align 8, !tbaa !18
  %148 = icmp eq ptr %147, %19
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, ptr %20, align 8, !tbaa !21
  %151 = icmp ult i64 %150, 16
  call void @llvm.assume(i1 %151)
  br label %155

152:                                              ; preds = %146
  %153 = load i64, ptr %19, align 8, !tbaa !8
  %154 = add i64 %153, 1
  call void @_ZdlPvm(ptr noundef %147, i64 noundef %154) #27
  br label %155

155:                                              ; preds = %149, %152
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  %156 = load ptr, ptr %56, align 8, !tbaa !93
  %157 = icmp eq ptr %156, null
  br i1 %157, label %26, label %55

158:                                              ; preds = %63
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %162

160:                                              ; preds = %136
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #15
  br label %162

162:                                              ; preds = %158, %102, %100, %160
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ], [ %98, %102 ], [ %98, %100 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %284

164:                                              ; preds = %47, %43, %26, %50, %10
  invoke void @_ZN12__apo_stdlib27json_write_object_fragmentsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %165 unwind label %53

165:                                              ; preds = %164
  %166 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %171, !prof !31

168:                                              ; preds = %165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %169 unwind label %272

169:                                              ; preds = %168
  %170 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %171

171:                                              ; preds = %169, %165
  %172 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 48
  %174 = load ptr, ptr %173, align 8, !tbaa !32
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 64
  %176 = load ptr, ptr %175, align 8, !tbaa !38
  %177 = getelementptr inbounds i8, ptr %176, i64 -32
  %178 = icmp eq ptr %174, %177
  br i1 %178, label %200, label %179

179:                                              ; preds = %171
  %180 = getelementptr inbounds nuw i8, ptr %174, i64 16
  store ptr %180, ptr %174, align 8, !tbaa !14
  %181 = load ptr, ptr %4, align 8, !tbaa !18
  %182 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %186 = load i64, ptr %185, align 8, !tbaa !21
  %187 = icmp ult i64 %186, 16
  call void @llvm.assume(i1 %187)
  %188 = add nuw nsw i64 %186, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %180, ptr noundef nonnull align 8 dereferenceable(1) %182, i64 %188, i1 false)
  br label %193

189:                                              ; preds = %179
  store ptr %181, ptr %174, align 8, !tbaa !18
  %190 = load i64, ptr %182, align 8, !tbaa !8
  store i64 %190, ptr %180, align 8, !tbaa !8
  %191 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %192 = load i64, ptr %191, align 8, !tbaa !21
  br label %193

193:                                              ; preds = %189, %184
  %194 = phi i64 [ %192, %189 ], [ %186, %184 ]
  %195 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %196 = icmp ult i64 %194, 9223372036854775807
  call void @llvm.assume(i1 %196)
  %197 = getelementptr inbounds nuw i8, ptr %174, i64 8
  store i64 %194, ptr %197, align 8, !tbaa !21
  store ptr %182, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %195, align 8, !tbaa !21
  store i8 0, ptr %182, align 8, !tbaa !8
  %198 = load ptr, ptr %173, align 8, !tbaa !32
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 32
  store ptr %199, ptr %173, align 8, !tbaa !32
  br label %203

200:                                              ; preds = %171
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %172, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %201 unwind label %272

201:                                              ; preds = %200
  %202 = load ptr, ptr %173, align 8, !tbaa !39, !noalias !95
  br label %203

203:                                              ; preds = %201, %193
  %204 = phi ptr [ %199, %193 ], [ %202, %201 ]
  %205 = getelementptr inbounds nuw i8, ptr %172, i64 56
  %206 = load ptr, ptr %205, align 8, !tbaa !43, !noalias !95
  %207 = icmp eq ptr %204, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = getelementptr inbounds nuw i8, ptr %172, i64 72
  %210 = load ptr, ptr %209, align 8, !tbaa !44, !noalias !95
  %211 = getelementptr inbounds i8, ptr %210, i64 -8
  %212 = load ptr, ptr %211, align 8, !tbaa !45
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 512
  br label %214

214:                                              ; preds = %208, %203
  %215 = phi ptr [ %213, %208 ], [ %204, %203 ]
  %216 = getelementptr inbounds i8, ptr %215, i64 -32
  %217 = load ptr, ptr %216, align 8, !tbaa !18
  %218 = load ptr, ptr %4, align 8, !tbaa !18
  %219 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %220 = icmp eq ptr %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %214
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %223 = load i64, ptr %222, align 8, !tbaa !21
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %228

225:                                              ; preds = %214
  %226 = load i64, ptr %219, align 8, !tbaa !8
  %227 = add i64 %226, 1
  call void @_ZdlPvm(ptr noundef %218, i64 noundef %227) #27
  br label %228

228:                                              ; preds = %221, %225
  %229 = load ptr, ptr %2, align 8, !tbaa !67
  %230 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %231 = load ptr, ptr %230, align 8, !tbaa !69
  %232 = icmp eq ptr %229, %231
  br i1 %232, label %262, label %233

233:                                              ; preds = %228, %257
  %234 = phi ptr [ %258, %257 ], [ %229, %228 ]
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %236 = load ptr, ptr %235, align 8, !tbaa !18
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 48
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = getelementptr inbounds nuw i8, ptr %234, i64 40
  %241 = load i64, ptr %240, align 8, !tbaa !21
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  br label %246

243:                                              ; preds = %233
  %244 = load i64, ptr %237, align 8, !tbaa !8
  %245 = add i64 %244, 1
  call void @_ZdlPvm(ptr noundef %236, i64 noundef %245) #27
  br label %246

246:                                              ; preds = %243, %239
  %247 = load ptr, ptr %234, align 8, !tbaa !18
  %248 = getelementptr inbounds nuw i8, ptr %234, i64 16
  %249 = icmp eq ptr %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = getelementptr inbounds nuw i8, ptr %234, i64 8
  %252 = load i64, ptr %251, align 8, !tbaa !21
  %253 = icmp ult i64 %252, 16
  call void @llvm.assume(i1 %253)
  br label %257

254:                                              ; preds = %246
  %255 = load i64, ptr %248, align 8, !tbaa !8
  %256 = add i64 %255, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %256) #27
  br label %257

257:                                              ; preds = %254, %250
  %258 = getelementptr inbounds nuw i8, ptr %234, i64 64
  %259 = icmp eq ptr %258, %231
  br i1 %259, label %260, label %233, !llvm.loop !70

260:                                              ; preds = %257
  %261 = load ptr, ptr %2, align 8, !tbaa !67
  br label %262

262:                                              ; preds = %260, %228
  %263 = phi ptr [ %261, %260 ], [ %229, %228 ]
  %264 = icmp eq ptr %263, null
  br i1 %264, label %271, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %267 = load ptr, ptr %266, align 8, !tbaa !71
  %268 = ptrtoint ptr %267 to i64
  %269 = ptrtoint ptr %263 to i64
  %270 = sub i64 %268, %269
  call void @_ZdlPvm(ptr noundef nonnull %263, i64 noundef %270) #27
  br label %271

271:                                              ; preds = %262, %265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret ptr %217

272:                                              ; preds = %200, %168
  %273 = landingpad { ptr, i32 }
          cleanup
  %274 = load ptr, ptr %4, align 8, !tbaa !18
  %275 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %276 = icmp eq ptr %274, %275
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %279 = load i64, ptr %278, align 8, !tbaa !21
  %280 = icmp ult i64 %279, 16
  call void @llvm.assume(i1 %280)
  br label %284

281:                                              ; preds = %272
  %282 = load i64, ptr %275, align 8, !tbaa !8
  %283 = add i64 %282, 1
  call void @_ZdlPvm(ptr noundef %274, i64 noundef %283) #27
  br label %284

284:                                              ; preds = %51, %53, %281, %277, %162
  %285 = phi { ptr, i32 } [ %163, %162 ], [ %273, %277 ], [ %273, %281 ], [ %52, %51 ], [ %54, %53 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  resume { ptr, i32 } %285
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1834sys__native_json_write_array_startEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !14
  store i8 91, ptr %2, align 8, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !8
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !31

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %62

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !14
  %20 = load ptr, ptr %1, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !21
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !18
  %27 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %27, ptr %19, align 8, !tbaa !8
  %28 = load i64, ptr %3, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !21
  store ptr %2, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %3, align 8, !tbaa !21
  store i8 0, ptr %2, align 8, !tbaa !8
  %33 = load ptr, ptr %12, align 8, !tbaa !32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !32
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %62

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !98
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !43, !noalias !98
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !44, !noalias !98
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %3, align 8, !tbaa !21
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %2, align 8, !tbaa !8
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %60) #27
  br label %61

61:                                               ; preds = %55, %58
  ret ptr %52

62:                                               ; preds = %35, %7
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %1, align 8, !tbaa !18
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %3, align 8, !tbaa !21
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %62
  %70 = load i64, ptr %2, align 8, !tbaa !8
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #27
  br label %72

72:                                               ; preds = %69, %66
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1832sys__native_json_write_array_endEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !14
  store i8 93, ptr %2, align 8, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !8
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !31

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %62

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !14
  %20 = load ptr, ptr %1, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !21
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !18
  %27 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %27, ptr %19, align 8, !tbaa !8
  %28 = load i64, ptr %3, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !21
  store ptr %2, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %3, align 8, !tbaa !21
  store i8 0, ptr %2, align 8, !tbaa !8
  %33 = load ptr, ptr %12, align 8, !tbaa !32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !32
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %62

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !101
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !43, !noalias !101
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !44, !noalias !101
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %3, align 8, !tbaa !21
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %2, align 8, !tbaa !8
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %60) #27
  br label %61

61:                                               ; preds = %55, %58
  ret ptr %52

62:                                               ; preds = %35, %7
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %1, align 8, !tbaa !18
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %3, align 8, !tbaa !21
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %62
  %70 = load i64, ptr %2, align 8, !tbaa !8
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #27
  br label %72

72:                                               ; preds = %69, %66
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1835sys__native_json_write_object_startEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !14
  store i8 123, ptr %2, align 8, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !8
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !31

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %62

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !14
  %20 = load ptr, ptr %1, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !21
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !18
  %27 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %27, ptr %19, align 8, !tbaa !8
  %28 = load i64, ptr %3, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !21
  store ptr %2, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %3, align 8, !tbaa !21
  store i8 0, ptr %2, align 8, !tbaa !8
  %33 = load ptr, ptr %12, align 8, !tbaa !32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !32
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %62

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !104
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !43, !noalias !104
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !44, !noalias !104
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %3, align 8, !tbaa !21
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %2, align 8, !tbaa !8
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %60) #27
  br label %61

61:                                               ; preds = %55, %58
  ret ptr %52

62:                                               ; preds = %35, %7
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %1, align 8, !tbaa !18
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %3, align 8, !tbaa !21
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %62
  %70 = load i64, ptr %2, align 8, !tbaa !8
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #27
  br label %72

72:                                               ; preds = %69, %66
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN32__apollo_inline_inline_2948_5_1833sys__native_json_write_object_endEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv()
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %1, align 8, !tbaa !14
  store i8 125, ptr %2, align 8, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %4, align 1, !tbaa !8
  %5 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !31

7:                                                ; preds = %0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, i64 noundef 0)
          to label %8 unwind label %62

8:                                                ; preds = %7
  %9 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, ptr nonnull @__dso_handle) #15
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4poolB5cxx11)
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %15, i64 -32
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %19, ptr %13, align 8, !tbaa !14
  %20 = load ptr, ptr %1, align 8, !tbaa !18
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !tbaa !21
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %25, i1 false)
  br label %29

26:                                               ; preds = %18
  store ptr %20, ptr %13, align 8, !tbaa !18
  %27 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %27, ptr %19, align 8, !tbaa !8
  %28 = load i64, ptr %3, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %28, %26 ], [ %23, %22 ]
  %31 = icmp ult i64 %30, 9223372036854775807
  call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %30, ptr %32, align 8, !tbaa !21
  store ptr %2, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %3, align 8, !tbaa !21
  store i8 0, ptr %2, align 8, !tbaa !8
  %33 = load ptr, ptr %12, align 8, !tbaa !32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %12, align 8, !tbaa !32
  br label %38

35:                                               ; preds = %10
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %36 unwind label %62

36:                                               ; preds = %35
  %37 = load ptr, ptr %12, align 8, !tbaa !39, !noalias !107
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %34, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %41 = load ptr, ptr %40, align 8, !tbaa !43, !noalias !107
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %11, i64 72
  %45 = load ptr, ptr %44, align 8, !tbaa !44, !noalias !107
  %46 = getelementptr inbounds i8, ptr %45, i64 -8
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 512
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %39, %38 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -32
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, ptr %3, align 8, !tbaa !21
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %61

58:                                               ; preds = %49
  %59 = load i64, ptr %2, align 8, !tbaa !8
  %60 = add i64 %59, 1
  call void @_ZdlPvm(ptr noundef %53, i64 noundef %60) #27
  br label %61

61:                                               ; preds = %55, %58
  ret ptr %52

62:                                               ; preds = %35, %7
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %1, align 8, !tbaa !18
  %65 = icmp eq ptr %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %3, align 8, !tbaa !21
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %72

69:                                               ; preds = %62
  %70 = load i64, ptr %2, align 8, !tbaa !8
  %71 = add i64 %70, 1
  call void @_ZdlPvm(ptr noundef %64, i64 noundef %71) #27
  br label %72

72:                                               ; preds = %69, %66
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_json_parse_array(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::vector", align 16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  call void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %7, ptr %0)
  %8 = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %11 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %12, align 8, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib13vector_handleE, i64 16), ptr %8, align 8, !tbaa !52
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %15 = load <2 x ptr>, ptr %2, align 16, !tbaa !45
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !45
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load ptr, ptr %16, align 16, !tbaa !54
  store ptr %17, ptr %14, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  ret ptr %8
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_bool(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib15json_write_boolEi(i32 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_int(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib14json_write_intEl(i64 noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_float(double noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16json_write_floatEd(double noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_array(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib28json_write_array_from_vectorEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib26json_write_object_from_mapEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_array_start() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib22json_write_array_startEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_array_end() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib20json_write_array_endEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_object_start() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib23json_write_object_startEv()
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_json_write_object_end() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN12__apo_stdlib21json_write_object_endEv()
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #28
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %5, align 8, !tbaa !21
  store i8 0, ptr %4, align 8, !tbaa !8
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp ugt i64 %1, 9223372036854775806
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %10 unwind label %19

10:                                               ; preds = %9
  unreachable

11:                                               ; preds = %7
  %12 = tail call i64 @llvm.umax.i64(i64 %1, i64 30)
  %13 = add nuw nsw i64 %12, 1
  %14 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #26
          to label %15 unwind label %19

15:                                               ; preds = %11
  store i8 0, ptr %14, align 1, !tbaa !8
  store ptr %14, ptr %0, align 8, !tbaa !18
  store i64 %12, ptr %4, align 8, !tbaa !8
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
  %24 = load i8, ptr %23, align 1, !tbaa !8
  %25 = icmp eq i8 %24, 92
  br i1 %25, label %26, label %200

26:                                               ; preds = %21
  %27 = add nuw i64 %22, 1
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %29, label %200

29:                                               ; preds = %26
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %27
  %31 = load i8, ptr %30, align 1, !tbaa !8
  %32 = load i64, ptr %5, align 8, !tbaa !21
  %33 = icmp ult i64 %32, 9223372036854775807
  tail call void @llvm.assume(i1 %33)
  %34 = add nuw nsw i64 %32, 1
  %35 = load ptr, ptr %0, align 8, !tbaa !18
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %49 unwind label %68

49:                                               ; preds = %48
  unreachable

50:                                               ; preds = %45
  %51 = shl nuw i64 %46, 1
  %52 = icmp ult i64 %34, %51
  %53 = tail call i64 @llvm.umin.i64(i64 %51, i64 9223372036854775806)
  %54 = select i1 %52, i64 %53, i64 %34
  %55 = add nuw nsw i64 %54, 1
  %56 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %55) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %61) #27
  br label %62

62:                                               ; preds = %60, %58
  store ptr %56, ptr %0, align 8, !tbaa !18
  store i64 %54, ptr %4, align 8, !tbaa !8
  br label %63

63:                                               ; preds = %39, %41, %62
  %64 = phi ptr [ %35, %41 ], [ %56, %62 ], [ %35, %39 ]
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 %32
  store i8 10, ptr %65, align 1, !tbaa !8
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
  %86 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %85) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %91) #27
  br label %92

92:                                               ; preds = %90, %88
  store ptr %86, ptr %0, align 8, !tbaa !18
  store i64 %84, ptr %4, align 8, !tbaa !8
  br label %93

93:                                               ; preds = %71, %73, %92
  %94 = phi ptr [ %35, %73 ], [ %86, %92 ], [ %35, %71 ]
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 %32
  store i8 13, ptr %95, align 1, !tbaa !8
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
  %112 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %111) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %117) #27
  br label %118

118:                                              ; preds = %116, %114
  store ptr %112, ptr %0, align 8, !tbaa !18
  store i64 %110, ptr %4, align 8, !tbaa !8
  br label %119

119:                                              ; preds = %97, %99, %118
  %120 = phi ptr [ %35, %99 ], [ %112, %118 ], [ %35, %97 ]
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 %32
  store i8 9, ptr %121, align 1, !tbaa !8
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
  %138 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %137) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %143) #27
  br label %144

144:                                              ; preds = %142, %140
  store ptr %138, ptr %0, align 8, !tbaa !18
  store i64 %136, ptr %4, align 8, !tbaa !8
  br label %145

145:                                              ; preds = %123, %125, %144
  %146 = phi ptr [ %35, %125 ], [ %138, %144 ], [ %35, %123 ]
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 %32
  store i8 92, ptr %147, align 1, !tbaa !8
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
  %164 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %163) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %169) #27
  br label %170

170:                                              ; preds = %168, %166
  store ptr %164, ptr %0, align 8, !tbaa !18
  store i64 %162, ptr %4, align 8, !tbaa !8
  br label %171

171:                                              ; preds = %149, %151, %170
  %172 = phi ptr [ %35, %151 ], [ %164, %170 ], [ %35, %149 ]
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 %32
  store i8 34, ptr %173, align 1, !tbaa !8
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
  %190 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %189) #26
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
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %195) #27
  br label %196

196:                                              ; preds = %194, %192
  store ptr %190, ptr %0, align 8, !tbaa !18
  store i64 %188, ptr %4, align 8, !tbaa !8
  br label %197

197:                                              ; preds = %175, %177, %196
  %198 = phi ptr [ %35, %177 ], [ %190, %196 ], [ %35, %175 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 %32
  store i8 %31, ptr %199, align 1, !tbaa !8
  br label %234

200:                                              ; preds = %26, %21
  %201 = load i64, ptr %5, align 8, !tbaa !21
  %202 = icmp ult i64 %201, 9223372036854775807
  tail call void @llvm.assume(i1 %202)
  %203 = add nuw nsw i64 %201, 1
  %204 = load ptr, ptr %0, align 8, !tbaa !18
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %217 unwind label %243

217:                                              ; preds = %216
  unreachable

218:                                              ; preds = %213
  %219 = shl nuw i64 %214, 1
  %220 = icmp ult i64 %203, %219
  %221 = tail call i64 @llvm.umin.i64(i64 %219, i64 9223372036854775806)
  %222 = select i1 %220, i64 %221, i64 %203
  %223 = add nuw nsw i64 %222, 1
  %224 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %223) #26
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
  tail call void @_ZdlPvm(ptr noundef %204, i64 noundef %229) #27
  br label %230

230:                                              ; preds = %228, %226
  store ptr %224, ptr %0, align 8, !tbaa !18
  store i64 %222, ptr %4, align 8, !tbaa !8
  br label %231

231:                                              ; preds = %207, %209, %230
  %232 = phi ptr [ %204, %209 ], [ %224, %230 ], [ %204, %207 ]
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 %201
  store i8 %24, ptr %233, align 1, !tbaa !8
  br label %234

234:                                              ; preds = %231, %197, %171, %145, %119, %93, %63
  %235 = phi i64 [ %203, %231 ], [ %34, %197 ], [ %34, %171 ], [ %34, %145 ], [ %34, %119 ], [ %34, %93 ], [ %34, %63 ]
  %236 = phi i64 [ %22, %231 ], [ %27, %197 ], [ %27, %171 ], [ %27, %145 ], [ %27, %119 ], [ %27, %93 ], [ %27, %63 ]
  store i64 %235, ptr %5, align 8, !tbaa !21
  %237 = load ptr, ptr %0, align 8, !tbaa !18
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 %235
  store i8 0, ptr %238, align 1, !tbaa !8
  %239 = add nuw i64 %236, 1
  %240 = icmp ult i64 %239, %1
  br i1 %240, label %21, label %245, !llvm.loop !110

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
  %247 = phi { ptr, i32 } [ %20, %19 ], [ %67, %66 ], [ %69, %68 ], [ %242, %241 ], [ %244, %243 ]
  %248 = load ptr, ptr %0, align 8, !tbaa !18
  %249 = icmp eq ptr %248, %4
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i64, ptr %5, align 8, !tbaa !21
  %252 = icmp ult i64 %251, 16
  tail call void @llvm.assume(i1 %252)
  br label %256

253:                                              ; preds = %246
  %254 = load i64, ptr %4, align 8, !tbaa !8
  %255 = add i64 %254, 1
  tail call void @_ZdlPvm(ptr noundef %248, i64 noundef %255) #27
  br label %256

256:                                              ; preds = %250, %253
  resume { ptr, i32 } %247
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %10 = load <2 x ptr>, ptr %4, align 8, !tbaa !45, !noalias !111
  store <2 x ptr> %10, ptr %2, align 16, !tbaa !45
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load <2 x ptr>, ptr %5, align 8, !tbaa !114, !noalias !111
  store <2 x ptr> %12, ptr %11, align 16, !tbaa !114
  %13 = load <2 x ptr>, ptr %7, align 8, !tbaa !45, !noalias !115
  store <2 x ptr> %13, ptr %3, align 16, !tbaa !45
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = load <2 x ptr>, ptr %8, align 8, !tbaa !114, !noalias !115
  store <2 x ptr> %15, ptr %14, align 16, !tbaa !114
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %16 unwind label %37

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %17 = load ptr, ptr %0, align 8, !tbaa !118
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !119
  %21 = load ptr, ptr %9, align 8, !tbaa !120
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %27, %24 ], [ %20, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  call void @_ZdlPvm(ptr noundef %26, i64 noundef 512) #27
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %28 = icmp ult ptr %25, %21
  br i1 %28, label %24, label %29, !llvm.loop !121

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8, !tbaa !118
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi ptr [ %30, %29 ], [ %17, %19 ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !122
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
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8, !tbaa !122
  %7 = icmp ugt i64 %1, -49
  br i1 %7, label %8, label %9, !prof !72

8:                                                ; preds = %2
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = shl nuw nsw i64 %5, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #26
  store ptr %12, ptr %0, align 8, !tbaa !118
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
  store ptr %20, ptr %19, align 8, !tbaa !45
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %23 = icmp ult ptr %22, %17
  br i1 %23, label %18, label %50, !llvm.loop !123

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #15
  %28 = icmp ult ptr %15, %19
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %32, %29 ], [ %15, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  tail call void @_ZdlPvm(ptr noundef %31, i64 noundef 512) #27
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %33 = icmp ult ptr %32, %19
  br i1 %33, label %29, label %34, !llvm.loop !121

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
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #15
  %44 = load ptr, ptr %0, align 8, !tbaa !118
  %45 = load i64, ptr %6, align 8, !tbaa !122
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
  store ptr %15, ptr %52, align 8, !tbaa !44
  %53 = load ptr, ptr %15, align 8, !tbaa !45
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %53, ptr %54, align 8, !tbaa !43
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 512
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %55, ptr %56, align 8, !tbaa !124
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = getelementptr inbounds i8, ptr %17, i64 -8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %58, ptr %59, align 8, !tbaa !44
  %60 = load ptr, ptr %58, align 8, !tbaa !45
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %60, ptr %61, align 8, !tbaa !43
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 512
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %62, ptr %63, align 8, !tbaa !124
  store ptr %53, ptr %51, align 8, !tbaa !125
  %64 = and i64 %1, 15
  %65 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %60, i64 %64
  store ptr %65, ptr %57, align 8, !tbaa !32
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

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = load ptr, ptr %6, align 8, !tbaa !44
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12

10:                                               ; preds = %210
  %11 = load ptr, ptr %4, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %212, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !39
  br i1 %15, label %253, label %214

17:                                               ; preds = %3, %210
  %18 = phi ptr [ %211, %210 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !21
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %17
  %28 = load i64, ptr %21, align 8, !tbaa !8
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #27
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 48
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, ptr %33, align 8, !tbaa !8
  %37 = add i64 %36, 1
  tail call void @_ZdlPvm(ptr noundef %32, i64 noundef %37) #27
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !21
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
  %48 = load i64, ptr %45, align 8, !tbaa !8
  %49 = add i64 %48, 1
  tail call void @_ZdlPvm(ptr noundef %44, i64 noundef %49) #27
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 72
  %52 = load i64, ptr %51, align 8, !tbaa !21
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
  %60 = load i64, ptr %57, align 8, !tbaa !8
  %61 = add i64 %60, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %61) #27
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !21
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
  %72 = load i64, ptr %69, align 8, !tbaa !8
  %73 = add i64 %72, 1
  tail call void @_ZdlPvm(ptr noundef %68, i64 noundef %73) #27
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 136
  %76 = load i64, ptr %75, align 8, !tbaa !21
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
  %84 = load i64, ptr %81, align 8, !tbaa !8
  %85 = add i64 %84, 1
  tail call void @_ZdlPvm(ptr noundef %80, i64 noundef %85) #27
  br label %90

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 168
  %88 = load i64, ptr %87, align 8, !tbaa !21
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
  %96 = load i64, ptr %93, align 8, !tbaa !8
  %97 = add i64 %96, 1
  tail call void @_ZdlPvm(ptr noundef %92, i64 noundef %97) #27
  br label %102

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 200
  %100 = load i64, ptr %99, align 8, !tbaa !21
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
  %108 = load i64, ptr %105, align 8, !tbaa !8
  %109 = add i64 %108, 1
  tail call void @_ZdlPvm(ptr noundef %104, i64 noundef %109) #27
  br label %114

110:                                              ; preds = %102
  %111 = getelementptr inbounds nuw i8, ptr %19, i64 232
  %112 = load i64, ptr %111, align 8, !tbaa !21
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
  %120 = load i64, ptr %117, align 8, !tbaa !8
  %121 = add i64 %120, 1
  tail call void @_ZdlPvm(ptr noundef %116, i64 noundef %121) #27
  br label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 264
  %124 = load i64, ptr %123, align 8, !tbaa !21
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
  %132 = load i64, ptr %129, align 8, !tbaa !8
  %133 = add i64 %132, 1
  tail call void @_ZdlPvm(ptr noundef %128, i64 noundef %133) #27
  br label %138

134:                                              ; preds = %126
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 296
  %136 = load i64, ptr %135, align 8, !tbaa !21
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
  %144 = load i64, ptr %141, align 8, !tbaa !8
  %145 = add i64 %144, 1
  tail call void @_ZdlPvm(ptr noundef %140, i64 noundef %145) #27
  br label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds nuw i8, ptr %19, i64 328
  %148 = load i64, ptr %147, align 8, !tbaa !21
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
  %156 = load i64, ptr %153, align 8, !tbaa !8
  %157 = add i64 %156, 1
  tail call void @_ZdlPvm(ptr noundef %152, i64 noundef %157) #27
  br label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 360
  %160 = load i64, ptr %159, align 8, !tbaa !21
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
  %168 = load i64, ptr %165, align 8, !tbaa !8
  %169 = add i64 %168, 1
  tail call void @_ZdlPvm(ptr noundef %164, i64 noundef %169) #27
  br label %174

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 392
  %172 = load i64, ptr %171, align 8, !tbaa !21
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
  %180 = load i64, ptr %177, align 8, !tbaa !8
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %176, i64 noundef %181) #27
  br label %186

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %19, i64 424
  %184 = load i64, ptr %183, align 8, !tbaa !21
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
  %192 = load i64, ptr %189, align 8, !tbaa !8
  %193 = add i64 %192, 1
  tail call void @_ZdlPvm(ptr noundef %188, i64 noundef %193) #27
  br label %198

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw i8, ptr %19, i64 456
  %196 = load i64, ptr %195, align 8, !tbaa !21
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
  %204 = load i64, ptr %201, align 8, !tbaa !8
  %205 = add i64 %204, 1
  tail call void @_ZdlPvm(ptr noundef %200, i64 noundef %205) #27
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds nuw i8, ptr %19, i64 488
  %208 = load i64, ptr %207, align 8, !tbaa !21
  %209 = icmp ult i64 %208, 16
  tail call void @llvm.assume(i1 %209)
  br label %210

210:                                              ; preds = %206, %203
  %211 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %212 = load ptr, ptr %6, align 8, !tbaa !44
  %213 = icmp ult ptr %211, %212
  br i1 %213, label %17, label %10, !llvm.loop !126

214:                                              ; preds = %12
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %216 = load ptr, ptr %215, align 8, !tbaa !124
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
  %225 = load i64, ptr %224, align 8, !tbaa !21
  %226 = icmp ult i64 %225, 16
  tail call void @llvm.assume(i1 %226)
  br label %230

227:                                              ; preds = %218
  %228 = load i64, ptr %221, align 8, !tbaa !8
  %229 = add i64 %228, 1
  tail call void @_ZdlPvm(ptr noundef %220, i64 noundef %229) #27
  br label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %232 = icmp eq ptr %231, %216
  br i1 %232, label %233, label %218, !llvm.loop !127

233:                                              ; preds = %230, %214
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %235 = load ptr, ptr %234, align 8, !tbaa !43
  %236 = load ptr, ptr %2, align 8, !tbaa !39
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
  %245 = load i64, ptr %244, align 8, !tbaa !21
  %246 = icmp ult i64 %245, 16
  tail call void @llvm.assume(i1 %246)
  br label %250

247:                                              ; preds = %238
  %248 = load i64, ptr %241, align 8, !tbaa !8
  %249 = add i64 %248, 1
  tail call void @_ZdlPvm(ptr noundef %240, i64 noundef %249) #27
  br label %250

250:                                              ; preds = %247, %243
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %252 = icmp eq ptr %251, %236
  br i1 %252, label %271, label %238, !llvm.loop !127

253:                                              ; preds = %12
  %254 = load ptr, ptr %2, align 8, !tbaa !39
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
  %263 = load i64, ptr %262, align 8, !tbaa !21
  %264 = icmp ult i64 %263, 16
  tail call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %256
  %266 = load i64, ptr %259, align 8, !tbaa !8
  %267 = add i64 %266, 1
  tail call void @_ZdlPvm(ptr noundef %258, i64 noundef %267) #27
  br label %268

268:                                              ; preds = %265, %261
  %269 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %270 = icmp eq ptr %269, %254
  br i1 %270, label %271, label %256, !llvm.loop !127

271:                                              ; preds = %250, %268, %253, %233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !39
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = load ptr, ptr %4, align 8, !tbaa !39
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !122
  %39 = load ptr, ptr %0, align 8, !tbaa !118
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %9, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %46 = load ptr, ptr %5, align 8, !tbaa !120
  br label %47

47:                                               ; preds = %36, %45
  %48 = phi ptr [ %6, %36 ], [ %46, %45 ]
  %49 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %49, ptr %50, align 8, !tbaa !45
  %51 = load ptr, ptr %3, align 8, !tbaa !32
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %52, ptr %51, align 8, !tbaa !14
  %53 = load ptr, ptr %1, align 8, !tbaa !18
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !21
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false)
  br label %63

61:                                               ; preds = %47
  store ptr %53, ptr %51, align 8, !tbaa !18
  %62 = load i64, ptr %54, align 8, !tbaa !8
  store i64 %62, ptr %52, align 8, !tbaa !8
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %65 = load i64, ptr %64, align 8, !tbaa !21
  %66 = icmp ult i64 %65, 9223372036854775807
  tail call void @llvm.assume(i1 %66)
  %67 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 %65, ptr %67, align 8, !tbaa !21
  store ptr %54, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %64, align 8, !tbaa !21
  store i8 0, ptr %54, align 8, !tbaa !8
  %68 = load ptr, ptr %5, align 8, !tbaa !120
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %5, align 8, !tbaa !44
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  store ptr %70, ptr %18, align 8, !tbaa !43
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 512
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %71, ptr %72, align 8, !tbaa !124
  store ptr %70, ptr %3, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !122
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !118
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
  br i1 %30, label %31, label %32, !prof !128

31:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %29, i1 false)
  br label %73

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %32
  %35 = load ptr, ptr %7, align 8, !tbaa !45
  store ptr %35, ptr %24, align 8, !tbaa !45
  br label %73

36:                                               ; preds = %18
  %37 = getelementptr inbounds nuw ptr, ptr %24, i64 %12
  %38 = ptrtoint ptr %26 to i64
  %39 = sub i64 %38, %9
  %40 = ashr exact i64 %39, 3
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds ptr, ptr %37, i64 %41
  %43 = icmp sgt i64 %40, 1
  br i1 %43, label %44, label %45, !prof !129

44:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr align 8 %7, i64 %39, i1 false)
  br label %73

45:                                               ; preds = %36
  %46 = icmp eq i64 %39, 8
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = load ptr, ptr %7, align 8, !tbaa !45
  store ptr %48, ptr %42, align 8, !tbaa !45
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
  br i1 %64, label %65, label %66, !prof !128

65:                                               ; preds = %49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %60, ptr align 8 %7, i64 %63, i1 false)
  br label %70

66:                                               ; preds = %49
  %67 = icmp eq i64 %63, 8
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = load ptr, ptr %7, align 8, !tbaa !45
  store ptr %69, ptr %60, align 8, !tbaa !45
  br label %70

70:                                               ; preds = %65, %66, %68
  %71 = load ptr, ptr %0, align 8, !tbaa !118
  %72 = shl i64 %15, 3
  tail call void @_ZdlPvm(ptr noundef %71, i64 noundef %72) #27
  store ptr %55, ptr %0, align 8, !tbaa !118
  store i64 %52, ptr %14, align 8, !tbaa !122
  br label %73

73:                                               ; preds = %47, %45, %44, %34, %32, %31, %70
  %74 = phi ptr [ %60, %70 ], [ %24, %31 ], [ %24, %32 ], [ %24, %34 ], [ %24, %44 ], [ %24, %45 ], [ %24, %47 ]
  store ptr %74, ptr %6, align 8, !tbaa !44
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %75, ptr %76, align 8, !tbaa !43
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 512
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %77, ptr %78, align 8, !tbaa !124
  %79 = getelementptr inbounds nuw ptr, ptr %74, i64 %12
  %80 = getelementptr inbounds i8, ptr %79, i64 -8
  store ptr %80, ptr %4, align 8, !tbaa !44
  %81 = load ptr, ptr %80, align 8, !tbaa !45
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %81, ptr %82, align 8, !tbaa !43
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 512
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %83, ptr %84, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !21
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
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
  %37 = load i8, ptr %13, align 1, !tbaa !8
  store i8 %37, ptr %35, align 1, !tbaa !8
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
  %47 = load i8, ptr %3, align 1, !tbaa !8
  store i8 %47, ptr %44, align 1, !tbaa !8
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
  %58 = load i8, ptr %55, align 1, !tbaa !8
  store i8 %58, ptr %53, align 1, !tbaa !8
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
  store ptr %35, ptr %0, align 8, !tbaa !18
  store i64 %33, ptr %14, align 8, !tbaa !8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib22json_parse_array_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !8, !noalias !130
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #24, !noalias !130
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %6, !llvm.loop !11

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
  %24 = load i8, ptr %23, align 1, !tbaa !8, !noalias !130
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #24, !noalias !130
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !13

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %34, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %31, ptr %4, align 8, !tbaa !14, !alias.scope !130
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !21, !alias.scope !130
  store i8 0, ptr %31, align 8, !tbaa !8, !alias.scope !130
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %66

34:                                               ; preds = %28
  %35 = sub nuw i64 %19, %17
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %37, ptr %4, align 8, !tbaa !14, !alias.scope !130
  %38 = icmp ugt i64 %35, 15
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = icmp ugt i64 %35, 9223372036854775806
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %35, 1
  %44 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #26
  store ptr %44, ptr %4, align 8, !tbaa !18, !alias.scope !130
  store i64 %35, ptr %37, align 8, !tbaa !8, !alias.scope !130
  br label %45

45:                                               ; preds = %42, %34
  %46 = phi ptr [ %44, %42 ], [ %37, %34 ]
  switch i64 %35, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %45
  %48 = load i8, ptr %36, align 1, !tbaa !8, !noalias !130
  store i8 %48, ptr %46, align 1, !tbaa !8
  br label %50

49:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr align 1 %36, i64 %35, i1 false)
  br label %50

50:                                               ; preds = %45, %47, %49
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %35, ptr %51, align 8, !tbaa !21, !alias.scope !130
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 %35
  store i8 0, ptr %52, align 1, !tbaa !8
  %53 = load i64, ptr %51, align 8, !tbaa !21
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %55 = icmp ult i64 %53, 9223372036854775807
  call void @llvm.assume(i1 %55)
  %56 = icmp samesign ult i64 %53, 2
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %4, align 8, !tbaa !18
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = icmp eq i8 %59, 91
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %58, i64 %53
  %63 = getelementptr i8, ptr %62, i64 -1
  %64 = load i8, ptr %63, align 1, !tbaa !8
  %65 = icmp eq i8 %64, 93
  br i1 %65, label %68, label %66

66:                                               ; preds = %30, %61, %57, %50
  %67 = phi ptr [ %33, %30 ], [ %54, %61 ], [ %54, %57 ], [ %54, %50 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %85

68:                                               ; preds = %61
  %69 = add nsw i64 %53, -2
  %70 = add nsw i64 %53, -1
  %71 = call i64 @llvm.umin.i64(i64 %70, i64 %69)
  %72 = getelementptr inbounds nuw i8, ptr %58, i64 1
  invoke void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, i64 %71, ptr nonnull %72)
          to label %85 unwind label %73

73:                                               ; preds = %68
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = load ptr, ptr %4, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, ptr %54, align 8, !tbaa !21
  %80 = icmp ult i64 %79, 16
  call void @llvm.assume(i1 %80)
  br label %84

81:                                               ; preds = %73
  %82 = load i64, ptr %76, align 8, !tbaa !8
  %83 = add i64 %82, 1
  call void @_ZdlPvm(ptr noundef %75, i64 noundef %83) #27
  br label %84

84:                                               ; preds = %78, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  resume { ptr, i32 } %74

85:                                               ; preds = %68, %66
  %86 = phi ptr [ %54, %68 ], [ %67, %66 ]
  %87 = load ptr, ptr %4, align 8, !tbaa !18
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, ptr %86, align 8, !tbaa !21
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %85
  %94 = load i64, ptr %88, align 8, !tbaa !8
  %95 = add i64 %94, 1
  call void @_ZdlPvm(ptr noundef %87, i64 noundef %95) #27
  br label %96

96:                                               ; preds = %90, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !134
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
  %13 = load i64, ptr %12, align 8, !tbaa !21
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %18

15:                                               ; preds = %6
  %16 = load i64, ptr %9, align 8, !tbaa !8
  %17 = add i64 %16, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %17) #27
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %21, label %6, !llvm.loop !127

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !133
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ %2, %1 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  tail call void @_ZdlPvm(ptr noundef nonnull %24, i64 noundef %31) #27
  br label %32

32:                                               ; preds = %23, %26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %19

16:                                               ; preds = %7
  %17 = load i64, ptr %10, align 8, !tbaa !8
  %18 = add i64 %17, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %18) #27
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %7, !llvm.loop !127

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !133
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %25 to i64
  %32 = sub i64 %30, %31
  tail call void @_ZdlPvm(ptr noundef nonnull %25, i64 noundef %32) #27
  br label %33

33:                                               ; preds = %24, %27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib13vector_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %1, %19
  %8 = phi ptr [ %20, %19 ], [ %3, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %19

16:                                               ; preds = %7
  %17 = load i64, ptr %10, align 8, !tbaa !8
  %18 = add i64 %17, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %18) #27
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %7, !llvm.loop !127

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !133
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %25 to i64
  %32 = sub i64 %30, %31
  tail call void @_ZdlPvm(ptr noundef nonnull %25, i64 noundef %32) #27
  br label %33

33:                                               ; preds = %24, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %150, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %14

12:                                               ; preds = %143
  %13 = icmp ugt i64 %147, %1
  br i1 %13, label %259, label %150

14:                                               ; preds = %7, %143
  %15 = phi i64 [ 0, %7 ], [ %147, %143 ]
  %16 = phi i32 [ 0, %7 ], [ %146, %143 ]
  %17 = phi i1 [ false, %7 ], [ %145, %143 ]
  %18 = phi i1 [ false, %7 ], [ %144, %143 ]
  %19 = phi i64 [ 0, %7 ], [ %148, %143 ]
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !8
  br i1 %17, label %22, label %26

22:                                               ; preds = %14
  br i1 %18, label %143, label %23

23:                                               ; preds = %22
  switch i8 %21, label %25 [
    i8 92, label %143
    i8 34, label %24
  ]

24:                                               ; preds = %23
  br label %143

25:                                               ; preds = %23
  br label %143

26:                                               ; preds = %14
  %27 = icmp eq i8 %21, 34
  br i1 %27, label %143, label %28

28:                                               ; preds = %26
  %29 = and i8 %21, -33
  switch i8 %29, label %36 [
    i8 91, label %30
    i8 93, label %32
  ]

30:                                               ; preds = %28
  %31 = add nsw i32 %16, 1
  br label %143

32:                                               ; preds = %28
  %33 = icmp sgt i32 %16, 0
  %34 = sext i1 %33 to i32
  %35 = add nsw i32 %16, %34
  br label %143

36:                                               ; preds = %28
  %37 = icmp eq i8 %21, 44
  %38 = icmp eq i32 %16, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %143

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %41 = icmp ugt i64 %15, %1
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %15, i64 noundef %1) #25
          to label %43 unwind label %129

43:                                               ; preds = %42
  unreachable

44:                                               ; preds = %40
  %45 = sub i64 %19, %15
  %46 = sub nuw i64 %1, %15
  %47 = call i64 @llvm.umin.i64(i64 %46, i64 %45)
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 %15
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %44, %57
  %51 = phi i64 [ %58, %57 ], [ 0, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !8, !noalias !135
  %54 = zext i8 %53 to i32
  %55 = call i32 @isspace(i32 noundef %54) #24, !noalias !135
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = add nuw i64 %51, 1
  %59 = icmp eq i64 %58, %47
  br i1 %59, label %60, label %50, !llvm.loop !11

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
  %68 = load i8, ptr %67, align 1, !tbaa !8, !noalias !135
  %69 = zext i8 %68 to i32
  %70 = call i32 @isspace(i32 noundef %69) #24, !noalias !135
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %62, !llvm.loop !13

72:                                               ; preds = %65
  %73 = icmp ugt i64 %63, %61
  br i1 %73, label %75, label %74

74:                                               ; preds = %62, %72
  store ptr %8, ptr %4, align 8, !tbaa !14, !alias.scope !135
  store i64 0, ptr %9, align 8, !tbaa !21, !alias.scope !135
  store i8 0, ptr %8, align 8, !tbaa !8, !alias.scope !135
  br label %94

75:                                               ; preds = %72
  %76 = sub nuw i64 %63, %61
  %77 = getelementptr inbounds nuw i8, ptr %48, i64 %61
  store ptr %8, ptr %4, align 8, !tbaa !14, !alias.scope !135
  %78 = icmp ugt i64 %76, 15
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = icmp ugt i64 %76, 9223372036854775806
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %82 unwind label %129

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %79
  %84 = add nuw nsw i64 %76, 1
  %85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %84) #26
          to label %86 unwind label %127

86:                                               ; preds = %83
  store ptr %85, ptr %4, align 8, !tbaa !18, !alias.scope !135
  store i64 %76, ptr %8, align 8, !tbaa !8, !alias.scope !135
  br label %87

87:                                               ; preds = %86, %75
  %88 = phi ptr [ %85, %86 ], [ %8, %75 ]
  switch i64 %76, label %91 [
    i64 1, label %89
    i64 0, label %92
  ]

89:                                               ; preds = %87
  %90 = load i8, ptr %77, align 1, !tbaa !8, !noalias !135
  store i8 %90, ptr %88, align 1, !tbaa !8
  br label %92

91:                                               ; preds = %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %88, ptr align 1 %77, i64 %76, i1 false)
  br label %92

92:                                               ; preds = %91, %89, %87
  store i64 %76, ptr %9, align 8, !tbaa !21, !alias.scope !135
  %93 = getelementptr inbounds nuw i8, ptr %88, i64 %76
  store i8 0, ptr %93, align 1, !tbaa !8
  br label %94

94:                                               ; preds = %92, %74
  %95 = load ptr, ptr %10, align 8, !tbaa !134
  %96 = load ptr, ptr %11, align 8, !tbaa !54
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %95, i64 16
  store ptr %99, ptr %95, align 8, !tbaa !14
  %100 = load ptr, ptr %4, align 8, !tbaa !18
  %101 = icmp eq ptr %100, %8
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, ptr %9, align 8, !tbaa !21
  %104 = icmp ult i64 %103, 16
  call void @llvm.assume(i1 %104)
  %105 = add nuw nsw i64 %103, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %99, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %105, i1 false)
  br label %109

106:                                              ; preds = %98
  store ptr %100, ptr %95, align 8, !tbaa !18
  %107 = load i64, ptr %8, align 8, !tbaa !8
  store i64 %107, ptr %99, align 8, !tbaa !8
  %108 = load i64, ptr %9, align 8, !tbaa !21
  br label %109

109:                                              ; preds = %102, %106
  %110 = phi i64 [ %108, %106 ], [ %103, %102 ]
  %111 = icmp ult i64 %110, 9223372036854775807
  call void @llvm.assume(i1 %111)
  %112 = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i64 %110, ptr %112, align 8, !tbaa !21
  store ptr %8, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %9, align 8, !tbaa !21
  %113 = load ptr, ptr %10, align 8, !tbaa !134
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 32
  store ptr %114, ptr %10, align 8, !tbaa !134
  br label %119

115:                                              ; preds = %94
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %116 unwind label %131

116:                                              ; preds = %115
  %117 = load ptr, ptr %4, align 8, !tbaa !18
  %118 = icmp eq ptr %117, %8
  br i1 %118, label %119, label %122

119:                                              ; preds = %109, %116
  %120 = load i64, ptr %9, align 8, !tbaa !21
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %125

122:                                              ; preds = %116
  %123 = load i64, ptr %8, align 8, !tbaa !8
  %124 = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %117, i64 noundef %124) #27
  br label %125

125:                                              ; preds = %119, %122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  %126 = add nuw i64 %19, 1
  br label %143

127:                                              ; preds = %83
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %141

129:                                              ; preds = %42, %81
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %141

131:                                              ; preds = %115
  %132 = landingpad { ptr, i32 }
          cleanup
  %133 = load ptr, ptr %4, align 8, !tbaa !18
  %134 = icmp eq ptr %133, %8
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i64, ptr %9, align 8, !tbaa !21
  %137 = icmp ult i64 %136, 16
  call void @llvm.assume(i1 %137)
  br label %141

138:                                              ; preds = %131
  %139 = load i64, ptr %8, align 8, !tbaa !8
  %140 = add i64 %139, 1
  call void @_ZdlPvm(ptr noundef %133, i64 noundef %140) #27
  br label %141

141:                                              ; preds = %127, %129, %138, %135
  %142 = phi { ptr, i32 } [ %132, %135 ], [ %132, %138 ], [ %128, %127 ], [ %130, %129 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br label %290

143:                                              ; preds = %36, %125, %26, %24, %22, %25, %23, %32, %30
  %144 = phi i1 [ %18, %30 ], [ %18, %32 ], [ false, %24 ], [ false, %22 ], [ true, %23 ], [ false, %25 ], [ %18, %26 ], [ %18, %125 ], [ %18, %36 ]
  %145 = phi i1 [ false, %30 ], [ false, %32 ], [ false, %24 ], [ true, %22 ], [ true, %23 ], [ true, %25 ], [ true, %26 ], [ false, %125 ], [ false, %36 ]
  %146 = phi i32 [ %31, %30 ], [ %35, %32 ], [ %16, %24 ], [ %16, %22 ], [ %16, %23 ], [ %16, %25 ], [ %16, %26 ], [ 0, %125 ], [ %16, %36 ]
  %147 = phi i64 [ %15, %30 ], [ %15, %32 ], [ %15, %24 ], [ %15, %22 ], [ %15, %23 ], [ %15, %25 ], [ %15, %26 ], [ %126, %125 ], [ %15, %36 ]
  %148 = add nuw i64 %19, 1
  %149 = icmp eq i64 %148, %1
  br i1 %149, label %12, label %14, !llvm.loop !138

150:                                              ; preds = %3, %12
  %151 = phi i64 [ %147, %12 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %152 = sub nuw i64 %1, %151
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 %151
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %154 = icmp eq i64 %152, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %150, %162
  %156 = phi i64 [ %163, %162 ], [ 0, %150 ]
  %157 = getelementptr inbounds nuw i8, ptr %153, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !8, !noalias !139
  %159 = zext i8 %158 to i32
  %160 = call i32 @isspace(i32 noundef %159) #24, !noalias !139
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = add nuw i64 %156, 1
  %164 = icmp eq i64 %163, %152
  br i1 %164, label %165, label %155, !llvm.loop !11

165:                                              ; preds = %162, %155, %150
  %166 = phi i64 [ 0, %150 ], [ %152, %162 ], [ %156, %155 ]
  br label %167

167:                                              ; preds = %170, %165
  %168 = phi i64 [ %152, %165 ], [ %171, %170 ]
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = add i64 %168, -1
  %172 = getelementptr inbounds nuw i8, ptr %153, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !8, !noalias !139
  %174 = zext i8 %173 to i32
  %175 = call i32 @isspace(i32 noundef %174) #24, !noalias !139
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %167, !llvm.loop !13

177:                                              ; preds = %170
  %178 = icmp ugt i64 %168, %166
  br i1 %178, label %182, label %179

179:                                              ; preds = %167, %177
  %180 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %180, ptr %5, align 8, !tbaa !14, !alias.scope !139
  %181 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %181, align 8, !tbaa !21, !alias.scope !139
  store i8 0, ptr %180, align 8, !tbaa !8, !alias.scope !139
  br label %203

182:                                              ; preds = %177
  %183 = sub nuw i64 %168, %166
  %184 = getelementptr inbounds nuw i8, ptr %153, i64 %166
  %185 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %185, ptr %5, align 8, !tbaa !14, !alias.scope !139
  %186 = icmp ugt i64 %183, 15
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = icmp ugt i64 %183, 9223372036854775806
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %190 unwind label %243

190:                                              ; preds = %189
  unreachable

191:                                              ; preds = %187
  %192 = add nuw nsw i64 %183, 1
  %193 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %192) #26
          to label %194 unwind label %243

194:                                              ; preds = %191
  store ptr %193, ptr %5, align 8, !tbaa !18, !alias.scope !139
  store i64 %183, ptr %185, align 8, !tbaa !8, !alias.scope !139
  br label %195

195:                                              ; preds = %194, %182
  %196 = phi ptr [ %193, %194 ], [ %185, %182 ]
  switch i64 %183, label %199 [
    i64 1, label %197
    i64 0, label %200
  ]

197:                                              ; preds = %195
  %198 = load i8, ptr %184, align 1, !tbaa !8, !noalias !139
  store i8 %198, ptr %196, align 1, !tbaa !8
  br label %200

199:                                              ; preds = %195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %196, ptr align 1 %184, i64 %183, i1 false)
  br label %200

200:                                              ; preds = %199, %197, %195
  %201 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %183, ptr %201, align 8, !tbaa !21, !alias.scope !139
  %202 = getelementptr inbounds nuw i8, ptr %196, i64 %183
  store i8 0, ptr %202, align 1, !tbaa !8
  br label %203

203:                                              ; preds = %200, %179
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %205 = load ptr, ptr %204, align 8, !tbaa !134
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %207 = load ptr, ptr %206, align 8, !tbaa !54
  %208 = icmp eq ptr %205, %207
  br i1 %208, label %230, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds nuw i8, ptr %205, i64 16
  store ptr %210, ptr %205, align 8, !tbaa !14
  %211 = load ptr, ptr %5, align 8, !tbaa !18
  %212 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %213 = icmp eq ptr %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %216 = load i64, ptr %215, align 8, !tbaa !21
  %217 = icmp ult i64 %216, 16
  call void @llvm.assume(i1 %217)
  %218 = add nuw nsw i64 %216, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %210, ptr noundef nonnull align 8 dereferenceable(1) %212, i64 %218, i1 false)
  br label %223

219:                                              ; preds = %209
  store ptr %211, ptr %205, align 8, !tbaa !18
  %220 = load i64, ptr %212, align 8, !tbaa !8
  store i64 %220, ptr %210, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %222 = load i64, ptr %221, align 8, !tbaa !21
  br label %223

223:                                              ; preds = %214, %219
  %224 = phi i64 [ %222, %219 ], [ %216, %214 ]
  %225 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %226 = icmp ult i64 %224, 9223372036854775807
  call void @llvm.assume(i1 %226)
  %227 = getelementptr inbounds nuw i8, ptr %205, i64 8
  store i64 %224, ptr %227, align 8, !tbaa !21
  store ptr %212, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %225, align 8, !tbaa !21
  %228 = load ptr, ptr %204, align 8, !tbaa !134
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 32
  store ptr %229, ptr %204, align 8, !tbaa !134
  br label %235

230:                                              ; preds = %203
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %231 unwind label %245

231:                                              ; preds = %230
  %232 = load ptr, ptr %5, align 8, !tbaa !18
  %233 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %223, %231
  %236 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %237 = load i64, ptr %236, align 8, !tbaa !21
  %238 = icmp ult i64 %237, 16
  call void @llvm.assume(i1 %238)
  br label %242

239:                                              ; preds = %231
  %240 = load i64, ptr %233, align 8, !tbaa !8
  %241 = add i64 %240, 1
  call void @_ZdlPvm(ptr noundef %232, i64 noundef %241) #27
  br label %242

242:                                              ; preds = %235, %239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %259

243:                                              ; preds = %191, %189
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %257

245:                                              ; preds = %230
  %246 = landingpad { ptr, i32 }
          cleanup
  %247 = load ptr, ptr %5, align 8, !tbaa !18
  %248 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %249 = icmp eq ptr %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %252 = load i64, ptr %251, align 8, !tbaa !21
  %253 = icmp ult i64 %252, 16
  call void @llvm.assume(i1 %253)
  br label %257

254:                                              ; preds = %245
  %255 = load i64, ptr %248, align 8, !tbaa !8
  %256 = add i64 %255, 1
  call void @_ZdlPvm(ptr noundef %247, i64 noundef %256) #27
  br label %257

257:                                              ; preds = %254, %250, %243
  %258 = phi { ptr, i32 } [ %244, %243 ], [ %246, %250 ], [ %246, %254 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %290

259:                                              ; preds = %242, %12
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %261 = load ptr, ptr %260, align 8, !tbaa !134
  %262 = load ptr, ptr %0, align 8, !tbaa !133
  %263 = ptrtoint ptr %261 to i64
  %264 = ptrtoint ptr %262 to i64
  %265 = sub i64 %263, %264
  %266 = icmp sgt i64 %265, -1
  call void @llvm.assume(i1 %266)
  %267 = icmp eq i64 %265, 32
  br i1 %267, label %268, label %292

268:                                              ; preds = %259
  %269 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %270 = load i64, ptr %269, align 8, !tbaa !21
  %271 = icmp ne i64 %270, 0
  %272 = icmp eq ptr %261, %262
  %273 = or i1 %272, %271
  br i1 %273, label %292, label %274

274:                                              ; preds = %268, %286
  %275 = phi ptr [ %287, %286 ], [ %262, %268 ]
  %276 = load ptr, ptr %275, align 8, !tbaa !18
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 16
  %278 = icmp eq ptr %276, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = getelementptr inbounds nuw i8, ptr %275, i64 8
  %281 = load i64, ptr %280, align 8, !tbaa !21
  %282 = icmp ult i64 %281, 16
  call void @llvm.assume(i1 %282)
  br label %286

283:                                              ; preds = %274
  %284 = load i64, ptr %277, align 8, !tbaa !8
  %285 = add i64 %284, 1
  call void @_ZdlPvm(ptr noundef %276, i64 noundef %285) #27
  br label %286

286:                                              ; preds = %283, %279
  %287 = getelementptr inbounds nuw i8, ptr %275, i64 32
  %288 = icmp eq ptr %287, %261
  br i1 %288, label %289, label %274, !llvm.loop !127

289:                                              ; preds = %286
  store ptr %262, ptr %260, align 8, !tbaa !134
  br label %292

290:                                              ; preds = %257, %141
  %291 = phi { ptr, i32 } [ %142, %141 ], [ %258, %257 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %291

292:                                              ; preds = %289, %259, %268
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = load ptr, ptr %0, align 8, !tbaa !133
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775776
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %17 = shl nuw nsw i64 %16, 5
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !14
  %21 = load ptr, ptr %1, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !18
  %30 = load i64, ptr %22, align 8, !tbaa !8
  store i64 %30, ptr %20, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi i64 [ %26, %24 ], [ %32, %29 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !21
  store ptr %22, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %35, align 8, !tbaa !21
  store i8 0, ptr %22, align 8, !tbaa !8
  %38 = icmp eq ptr %5, %4
  br i1 %38, label %63, label %39

39:                                               ; preds = %33, %55
  %40 = phi ptr [ %61, %55 ], [ %18, %33 ]
  %41 = phi ptr [ %60, %55 ], [ %5, %33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %42, ptr %40, align 8, !tbaa !14, !alias.scope !142, !noalias !145
  %43 = load ptr, ptr %41, align 8, !tbaa !18, !alias.scope !145, !noalias !142
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !21, !alias.scope !145, !noalias !142
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false), !alias.scope !147
  br label %55

51:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !18, !alias.scope !142, !noalias !145
  %52 = load i64, ptr %44, align 8, !tbaa !8, !alias.scope !145, !noalias !142
  store i64 %52, ptr %42, align 8, !tbaa !8, !alias.scope !142, !noalias !145
  %53 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %54 = load i64, ptr %53, align 8, !tbaa !21, !alias.scope !145, !noalias !142
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %48, %46 ], [ %54, %51 ]
  %57 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %56, ptr %59, align 8, !tbaa !21, !alias.scope !142, !noalias !145
  store ptr %44, ptr %41, align 8, !tbaa !18, !alias.scope !145, !noalias !142
  store i64 0, ptr %57, align 8, !tbaa !21, !alias.scope !145, !noalias !142
  store i8 0, ptr %44, align 1, !tbaa !8, !alias.scope !145, !noalias !142
  %60 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %62 = icmp eq ptr %60, %4
  br i1 %62, label %63, label %39, !llvm.loop !148

63:                                               ; preds = %55, %33
  %64 = phi ptr [ %18, %33 ], [ %61, %55 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %66 = icmp eq ptr %5, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !54
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %69, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %70) #27
  br label %71

71:                                               ; preds = %63, %67
  %72 = getelementptr inbounds nuw i8, ptr %64, i64 32
  store ptr %18, ptr %0, align 8, !tbaa !133
  store ptr %72, ptr %3, align 8, !tbaa !134
  %73 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %18, i64 %16
  store ptr %73, ptr %65, align 8, !tbaa !54
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib23json_parse_object_itemsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !8, !noalias !149
  %13 = zext i8 %12 to i32
  %14 = tail call i32 @isspace(i32 noundef %13) #24, !noalias !149
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add nuw i64 %10, 1
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %9, !llvm.loop !11

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
  %27 = load i8, ptr %26, align 1, !tbaa !8, !noalias !149
  %28 = zext i8 %27 to i32
  %29 = tail call i32 @isspace(i32 noundef %28) #24, !noalias !149
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %21, !llvm.loop !13

31:                                               ; preds = %24
  %32 = icmp ugt i64 %22, %20
  br i1 %32, label %37, label %33

33:                                               ; preds = %21, %31
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %34, ptr %4, align 8, !tbaa !14, !alias.scope !149
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %35, align 8, !tbaa !21, !alias.scope !149
  store i8 0, ptr %34, align 8, !tbaa !8, !alias.scope !149
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %69

37:                                               ; preds = %31
  %38 = sub nuw i64 %22, %20
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %40, ptr %4, align 8, !tbaa !14, !alias.scope !149
  %41 = icmp ugt i64 %38, 15
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = icmp ugt i64 %38, 9223372036854775806
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %38, 1
  %47 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #26
  store ptr %47, ptr %4, align 8, !tbaa !18, !alias.scope !149
  store i64 %38, ptr %40, align 8, !tbaa !8, !alias.scope !149
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %47, %45 ], [ %40, %37 ]
  switch i64 %38, label %52 [
    i64 1, label %50
    i64 0, label %53
  ]

50:                                               ; preds = %48
  %51 = load i8, ptr %39, align 1, !tbaa !8, !noalias !149
  store i8 %51, ptr %49, align 1, !tbaa !8
  br label %53

52:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %39, i64 %38, i1 false)
  br label %53

53:                                               ; preds = %48, %50, %52
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %38, ptr %54, align 8, !tbaa !21, !alias.scope !149
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 %38
  store i8 0, ptr %55, align 1, !tbaa !8
  %56 = load i64, ptr %54, align 8, !tbaa !21
  %57 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %58 = icmp ult i64 %56, 9223372036854775807
  call void @llvm.assume(i1 %58)
  %59 = icmp samesign ult i64 %56, 2
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %4, align 8, !tbaa !18
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = icmp eq i8 %62, 123
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %61, i64 %56
  %66 = getelementptr i8, ptr %65, i64 -1
  %67 = load i8, ptr %66, align 1, !tbaa !8
  %68 = icmp eq i8 %67, 125
  br i1 %68, label %71, label %69

69:                                               ; preds = %33, %64, %60, %53
  %70 = phi ptr [ %36, %33 ], [ %57, %64 ], [ %57, %60 ], [ %57, %53 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %312

71:                                               ; preds = %64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %72 = add nsw i64 %56, -2
  %73 = add nsw i64 %56, -1
  %74 = call i64 @llvm.umin.i64(i64 %73, i64 %72)
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 1
  invoke void @_ZN12__apo_stdlib20json_split_top_levelB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, i64 %74, ptr nonnull %75)
          to label %76 unwind label %119

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8, !tbaa !45
  %78 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %109, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %83 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %86 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %87 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %121

88:                                               ; preds = %269
  %89 = load ptr, ptr %5, align 8, !tbaa !133
  %90 = load ptr, ptr %78, align 8, !tbaa !134
  %91 = icmp eq ptr %89, %90
  br i1 %91, label %109, label %92

92:                                               ; preds = %88, %104
  %93 = phi ptr [ %105, %104 ], [ %89, %88 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %99 = load i64, ptr %98, align 8, !tbaa !21
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %104

101:                                              ; preds = %92
  %102 = load i64, ptr %95, align 8, !tbaa !8
  %103 = add i64 %102, 1
  call void @_ZdlPvm(ptr noundef %94, i64 noundef %103) #27
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %106 = icmp eq ptr %105, %90
  br i1 %106, label %107, label %92, !llvm.loop !127

107:                                              ; preds = %104
  %108 = load ptr, ptr %5, align 8, !tbaa !133
  br label %109

109:                                              ; preds = %76, %107, %88
  %110 = phi ptr [ %108, %107 ], [ %89, %88 ], [ %77, %76 ]
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %114 = load ptr, ptr %113, align 8, !tbaa !54
  %115 = ptrtoint ptr %114 to i64
  %116 = ptrtoint ptr %110 to i64
  %117 = sub i64 %115, %116
  call void @_ZdlPvm(ptr noundef nonnull %110, i64 noundef %117) #27
  br label %118

118:                                              ; preds = %109, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %312

119:                                              ; preds = %71
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %300

121:                                              ; preds = %81, %269
  %122 = phi ptr [ %77, %81 ], [ %270, %269 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !18
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %125 = load i64, ptr %124, align 8, !tbaa !21
  %126 = icmp ult i64 %125, 9223372036854775807
  call void @llvm.assume(i1 %126)
  %127 = icmp eq i64 %125, 0
  br i1 %127, label %269, label %128

128:                                              ; preds = %121, %153
  %129 = phi i64 [ %157, %153 ], [ 0, %121 ]
  %130 = phi i1 [ %156, %153 ], [ false, %121 ]
  %131 = phi i1 [ %155, %153 ], [ false, %121 ]
  %132 = phi i32 [ %154, %153 ], [ 0, %121 ]
  %133 = getelementptr inbounds nuw i8, ptr %123, i64 %129
  %134 = load i8, ptr %133, align 1, !tbaa !8
  br i1 %131, label %135, label %139

135:                                              ; preds = %128
  br i1 %130, label %153, label %136

136:                                              ; preds = %135
  switch i8 %134, label %138 [
    i8 92, label %153
    i8 34, label %137
  ]

137:                                              ; preds = %136
  br label %153

138:                                              ; preds = %136
  br label %153

139:                                              ; preds = %128
  %140 = icmp eq i8 %134, 34
  br i1 %140, label %153, label %141

141:                                              ; preds = %139
  %142 = and i8 %134, -33
  switch i8 %142, label %149 [
    i8 91, label %143
    i8 93, label %145
  ]

143:                                              ; preds = %141
  %144 = add nsw i32 %132, 1
  br label %153

145:                                              ; preds = %141
  %146 = icmp sgt i32 %132, 0
  %147 = sext i1 %146 to i32
  %148 = add nsw i32 %132, %147
  br label %153

149:                                              ; preds = %141
  %150 = icmp eq i8 %134, 58
  %151 = icmp eq i32 %132, 0
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %159, label %153

153:                                              ; preds = %149, %145, %143, %139, %138, %137, %136, %135
  %154 = phi i32 [ %132, %149 ], [ %132, %139 ], [ %132, %138 ], [ %132, %136 ], [ %132, %135 ], [ %132, %137 ], [ %148, %145 ], [ %144, %143 ]
  %155 = phi i1 [ false, %149 ], [ true, %139 ], [ true, %138 ], [ true, %136 ], [ true, %135 ], [ false, %137 ], [ false, %145 ], [ false, %143 ]
  %156 = phi i1 [ %130, %149 ], [ %130, %139 ], [ false, %138 ], [ true, %136 ], [ false, %135 ], [ false, %137 ], [ %130, %145 ], [ %130, %143 ]
  %157 = add nuw nsw i64 %129, 1
  %158 = icmp eq i64 %157, %125
  br i1 %158, label %269, label %128, !llvm.loop !152

159:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  %160 = call i64 @llvm.umin.i64(i64 %125, i64 %129)
  invoke void @_ZN12__apo_stdlib14json_parse_keyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %160, ptr nonnull %123)
          to label %161 unwind label %272

161:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %162 = load ptr, ptr %122, align 8, !tbaa !18
  %163 = load i64, ptr %124, align 8, !tbaa !21
  %164 = icmp ult i64 %163, 9223372036854775807
  call void @llvm.assume(i1 %164)
  %165 = add nuw i64 %129, 1
  %166 = icmp samesign ult i64 %129, %163
  br i1 %166, label %169, label %167

167:                                              ; preds = %161
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef %165, i64 noundef %163) #25
          to label %168 unwind label %276

168:                                              ; preds = %167
  unreachable

169:                                              ; preds = %161
  %170 = sub nuw nsw i64 %163, %165
  %171 = getelementptr inbounds nuw i8, ptr %162, i64 %165
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %172 = icmp eq i64 %170, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %169, %180
  %174 = phi i64 [ %181, %180 ], [ 0, %169 ]
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !8, !noalias !153
  %177 = zext i8 %176 to i32
  %178 = call i32 @isspace(i32 noundef %177) #24, !noalias !153
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = add nuw i64 %174, 1
  %182 = icmp eq i64 %181, %170
  br i1 %182, label %183, label %173, !llvm.loop !11

183:                                              ; preds = %180, %173, %169
  %184 = phi i64 [ 0, %169 ], [ %170, %180 ], [ %174, %173 ]
  br label %185

185:                                              ; preds = %188, %183
  %186 = phi i64 [ %170, %183 ], [ %189, %188 ]
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = add i64 %186, -1
  %190 = getelementptr inbounds nuw i8, ptr %171, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !8, !noalias !153
  %192 = zext i8 %191 to i32
  %193 = call i32 @isspace(i32 noundef %192) #24, !noalias !153
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %185, !llvm.loop !13

195:                                              ; preds = %188
  %196 = icmp ugt i64 %186, %184
  br i1 %196, label %198, label %197

197:                                              ; preds = %185, %195
  store ptr %82, ptr %7, align 8, !tbaa !14, !alias.scope !153
  store i64 0, ptr %83, align 8, !tbaa !21, !alias.scope !153
  store i8 0, ptr %82, align 8, !tbaa !8, !alias.scope !153
  br label %213

198:                                              ; preds = %195
  %199 = sub nuw i64 %186, %184
  %200 = getelementptr inbounds nuw i8, ptr %171, i64 %184
  store ptr %82, ptr %7, align 8, !tbaa !14, !alias.scope !153
  %201 = icmp samesign ugt i64 %199, 15
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = add nuw nsw i64 %199, 1
  %204 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %203) #26
          to label %205 unwind label %274

205:                                              ; preds = %202
  store ptr %204, ptr %7, align 8, !tbaa !18, !alias.scope !153
  store i64 %199, ptr %82, align 8, !tbaa !8, !alias.scope !153
  br label %206

206:                                              ; preds = %205, %198
  %207 = phi ptr [ %204, %205 ], [ %82, %198 ]
  switch i64 %199, label %210 [
    i64 1, label %208
    i64 0, label %211
  ]

208:                                              ; preds = %206
  %209 = load i8, ptr %200, align 1, !tbaa !8, !noalias !153
  store i8 %209, ptr %207, align 1, !tbaa !8
  br label %211

210:                                              ; preds = %206
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %207, ptr nonnull align 1 %200, i64 %199, i1 false)
  br label %211

211:                                              ; preds = %210, %208, %206
  store i64 %199, ptr %83, align 8, !tbaa !21, !alias.scope !153
  %212 = getelementptr inbounds nuw i8, ptr %207, i64 %199
  store i8 0, ptr %212, align 1, !tbaa !8
  br label %213

213:                                              ; preds = %211, %197
  %214 = load ptr, ptr %84, align 8, !tbaa !69
  %215 = load ptr, ptr %85, align 8, !tbaa !71
  %216 = icmp eq ptr %214, %215
  br i1 %216, label %249, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds nuw i8, ptr %214, i64 16
  store ptr %218, ptr %214, align 8, !tbaa !14
  %219 = load ptr, ptr %6, align 8, !tbaa !18
  %220 = icmp eq ptr %219, %86
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i64, ptr %87, align 8, !tbaa !21
  %223 = icmp ult i64 %222, 16
  call void @llvm.assume(i1 %223)
  %224 = add nuw nsw i64 %222, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %218, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %224, i1 false)
  br label %228

225:                                              ; preds = %217
  store ptr %219, ptr %214, align 8, !tbaa !18
  %226 = load i64, ptr %86, align 8, !tbaa !8
  store i64 %226, ptr %218, align 8, !tbaa !8
  %227 = load i64, ptr %87, align 8, !tbaa !21
  br label %228

228:                                              ; preds = %225, %221
  %229 = phi i64 [ %227, %225 ], [ %222, %221 ]
  %230 = icmp ult i64 %229, 9223372036854775807
  call void @llvm.assume(i1 %230)
  %231 = getelementptr inbounds nuw i8, ptr %214, i64 8
  store i64 %229, ptr %231, align 8, !tbaa !21
  store ptr %86, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %87, align 8, !tbaa !21
  store i8 0, ptr %86, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw i8, ptr %214, i64 32
  %233 = getelementptr inbounds nuw i8, ptr %214, i64 48
  store ptr %233, ptr %232, align 8, !tbaa !14
  %234 = load ptr, ptr %7, align 8, !tbaa !18
  %235 = icmp eq ptr %234, %82
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load i64, ptr %83, align 8, !tbaa !21
  %238 = icmp ult i64 %237, 16
  call void @llvm.assume(i1 %238)
  %239 = add nuw nsw i64 %237, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %233, ptr noundef nonnull align 8 dereferenceable(1) %82, i64 %239, i1 false)
  br label %243

240:                                              ; preds = %228
  store ptr %234, ptr %232, align 8, !tbaa !18
  %241 = load i64, ptr %82, align 8, !tbaa !8
  store i64 %241, ptr %233, align 8, !tbaa !8
  %242 = load i64, ptr %83, align 8, !tbaa !21
  br label %243

243:                                              ; preds = %236, %240
  %244 = phi i64 [ %242, %240 ], [ %237, %236 ]
  %245 = icmp ult i64 %244, 9223372036854775807
  call void @llvm.assume(i1 %245)
  %246 = getelementptr inbounds nuw i8, ptr %214, i64 40
  store i64 %244, ptr %246, align 8, !tbaa !21
  store ptr %82, ptr %7, align 8, !tbaa !18
  store i64 0, ptr %83, align 8, !tbaa !21
  %247 = load ptr, ptr %84, align 8, !tbaa !69
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 64
  store ptr %248, ptr %84, align 8, !tbaa !69
  br label %253

249:                                              ; preds = %213
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS6_S6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %250 unwind label %278

250:                                              ; preds = %249
  %251 = load ptr, ptr %7, align 8, !tbaa !18
  %252 = icmp eq ptr %251, %82
  br i1 %252, label %253, label %256

253:                                              ; preds = %243, %250
  %254 = load i64, ptr %83, align 8, !tbaa !21
  %255 = icmp ult i64 %254, 16
  call void @llvm.assume(i1 %255)
  br label %259

256:                                              ; preds = %250
  %257 = load i64, ptr %82, align 8, !tbaa !8
  %258 = add i64 %257, 1
  call void @_ZdlPvm(ptr noundef %251, i64 noundef %258) #27
  br label %259

259:                                              ; preds = %253, %256
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %260 = load ptr, ptr %6, align 8, !tbaa !18
  %261 = icmp eq ptr %260, %86
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i64, ptr %87, align 8, !tbaa !21
  %264 = icmp ult i64 %263, 16
  call void @llvm.assume(i1 %264)
  br label %268

265:                                              ; preds = %259
  %266 = load i64, ptr %86, align 8, !tbaa !8
  %267 = add i64 %266, 1
  call void @_ZdlPvm(ptr noundef %260, i64 noundef %267) #27
  br label %268

268:                                              ; preds = %262, %265
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %269

269:                                              ; preds = %153, %121, %268
  %270 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %271 = icmp eq ptr %270, %79
  br i1 %271, label %88, label %121

272:                                              ; preds = %159
  %273 = landingpad { ptr, i32 }
          cleanup
  br label %298

274:                                              ; preds = %202
  %275 = landingpad { ptr, i32 }
          cleanup
  br label %288

276:                                              ; preds = %167
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %288

278:                                              ; preds = %249
  %279 = landingpad { ptr, i32 }
          cleanup
  %280 = load ptr, ptr %7, align 8, !tbaa !18
  %281 = icmp eq ptr %280, %82
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i64, ptr %83, align 8, !tbaa !21
  %284 = icmp ult i64 %283, 16
  call void @llvm.assume(i1 %284)
  br label %288

285:                                              ; preds = %278
  %286 = load i64, ptr %82, align 8, !tbaa !8
  %287 = add i64 %286, 1
  call void @_ZdlPvm(ptr noundef %280, i64 noundef %287) #27
  br label %288

288:                                              ; preds = %274, %276, %285, %282
  %289 = phi { ptr, i32 } [ %279, %282 ], [ %279, %285 ], [ %275, %274 ], [ %277, %276 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %290 = load ptr, ptr %6, align 8, !tbaa !18
  %291 = icmp eq ptr %290, %86
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load i64, ptr %87, align 8, !tbaa !21
  %294 = icmp ult i64 %293, 16
  call void @llvm.assume(i1 %294)
  br label %298

295:                                              ; preds = %288
  %296 = load i64, ptr %86, align 8, !tbaa !8
  %297 = add i64 %296, 1
  call void @_ZdlPvm(ptr noundef %290, i64 noundef %297) #27
  br label %298

298:                                              ; preds = %295, %292, %272
  %299 = phi { ptr, i32 } [ %273, %272 ], [ %289, %292 ], [ %289, %295 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %300

300:                                              ; preds = %298, %119
  %301 = phi { ptr, i32 } [ %299, %298 ], [ %120, %119 ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %302 = load ptr, ptr %4, align 8, !tbaa !18
  %303 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %304 = icmp eq ptr %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i64, ptr %57, align 8, !tbaa !21
  %307 = icmp ult i64 %306, 16
  call void @llvm.assume(i1 %307)
  br label %311

308:                                              ; preds = %300
  %309 = load i64, ptr %303, align 8, !tbaa !8
  %310 = add i64 %309, 1
  call void @_ZdlPvm(ptr noundef %302, i64 noundef %310) #27
  br label %311

311:                                              ; preds = %305, %308
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  resume { ptr, i32 } %301

312:                                              ; preds = %118, %69
  %313 = phi ptr [ %57, %118 ], [ %70, %69 ]
  %314 = load ptr, ptr %4, align 8, !tbaa !18
  %315 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %316 = icmp eq ptr %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load i64, ptr %313, align 8, !tbaa !21
  %319 = icmp ult i64 %318, 16
  call void @llvm.assume(i1 %319)
  br label %323

320:                                              ; preds = %312
  %321 = load i64, ptr %315, align 8, !tbaa !8
  %322 = add i64 %321, 1
  call void @_ZdlPvm(ptr noundef %314, i64 noundef %322) #27
  br label %323

323:                                              ; preds = %317, %320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %35, label %6

6:                                                ; preds = %1, %30
  %7 = phi ptr [ %31, %30 ], [ %2, %1 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %14 = load i64, ptr %13, align 8, !tbaa !21
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %19

16:                                               ; preds = %6
  %17 = load i64, ptr %10, align 8, !tbaa !8
  %18 = add i64 %17, 1
  tail call void @_ZdlPvm(ptr noundef %9, i64 noundef %18) #27
  br label %19

19:                                               ; preds = %16, %12
  %20 = load ptr, ptr %7, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !21
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, ptr %21, align 8, !tbaa !8
  %29 = add i64 %28, 1
  tail call void @_ZdlPvm(ptr noundef %20, i64 noundef %29) #27
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %33, label %6, !llvm.loop !70

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 8, !tbaa !67
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi ptr [ %34, %33 ], [ %2, %1 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  %41 = ptrtoint ptr %40 to i64
  %42 = ptrtoint ptr %36 to i64
  %43 = sub i64 %41, %42
  tail call void @_ZdlPvm(ptr noundef nonnull %36, i64 noundef %43) #27
  br label %44

44:                                               ; preds = %35, %38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20unordered_map_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1, %32
  %7 = phi ptr [ %8, %32 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %16 = load i64, ptr %15, align 8, !tbaa !21
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %21

18:                                               ; preds = %6
  %19 = load i64, ptr %12, align 8, !tbaa !8
  %20 = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %20) #27
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %9, align 8, !tbaa !18
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %27 = load i64, ptr %26, align 8, !tbaa !21
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  br label %32

29:                                               ; preds = %21
  %30 = load i64, ptr %23, align 8, !tbaa !8
  %31 = add i64 %30, 1
  tail call void @_ZdlPvm(ptr noundef %22, i64 noundef %31) #27
  br label %32

32:                                               ; preds = %29, %25
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef 80) #27
  %33 = icmp eq ptr %8, null
  br i1 %33, label %34, label %6, !llvm.loop !157

34:                                               ; preds = %32, %1
  %35 = load ptr, ptr %2, align 8, !tbaa !56
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %40 = load i64, ptr %39, align 8, !tbaa !63
  %41 = shl i64 %40, 3
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %41) #27
  br label %42

42:                                               ; preds = %34, %38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib20unordered_map_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1, %32
  %7 = phi ptr [ %8, %32 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %16 = load i64, ptr %15, align 8, !tbaa !21
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %21

18:                                               ; preds = %6
  %19 = load i64, ptr %12, align 8, !tbaa !8
  %20 = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %11, i64 noundef %20) #27
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %9, align 8, !tbaa !18
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %27 = load i64, ptr %26, align 8, !tbaa !21
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  br label %32

29:                                               ; preds = %21
  %30 = load i64, ptr %23, align 8, !tbaa !8
  %31 = add i64 %30, 1
  tail call void @_ZdlPvm(ptr noundef %22, i64 noundef %31) #27
  br label %32

32:                                               ; preds = %29, %25
  tail call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef 80) #27
  %33 = icmp eq ptr %8, null
  br i1 %33, label %34, label %6, !llvm.loop !157

34:                                               ; preds = %32, %1
  %35 = load ptr, ptr %2, align 8, !tbaa !56
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %40 = load i64, ptr %39, align 8, !tbaa !63
  %41 = shl i64 %40, 3
  tail call void @_ZdlPvm(ptr noundef %35, i64 noundef %41) #27
  br label %42

42:                                               ; preds = %34, %38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib14json_parse_keyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !8, !noalias !158
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @isspace(i32 noundef %10) #24, !noalias !158
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %6, !llvm.loop !11

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
  %24 = load i8, ptr %23, align 1, !tbaa !8, !noalias !158
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #24, !noalias !158
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !13

28:                                               ; preds = %21
  %29 = icmp ugt i64 %19, %17
  br i1 %29, label %36, label %30

30:                                               ; preds = %18, %28
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %31, ptr %4, align 8, !tbaa !14, !alias.scope !158
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %32, align 8, !tbaa !21, !alias.scope !158
  store i8 0, ptr %31, align 8, !tbaa !8, !alias.scope !158
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %34, ptr %0, align 8, !tbaa !14
  %35 = load ptr, ptr %4, align 8, !tbaa !18
  br label %92

36:                                               ; preds = %28
  %37 = sub nuw i64 %19, %17
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %39, ptr %4, align 8, !tbaa !14, !alias.scope !158
  %40 = icmp ugt i64 %37, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = icmp ugt i64 %37, 9223372036854775806
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

44:                                               ; preds = %41
  %45 = add nuw nsw i64 %37, 1
  %46 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #26
  store ptr %46, ptr %4, align 8, !tbaa !18, !alias.scope !158
  store i64 %37, ptr %39, align 8, !tbaa !8, !alias.scope !158
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %39, %36 ]
  switch i64 %37, label %51 [
    i64 1, label %49
    i64 0, label %52
  ]

49:                                               ; preds = %47
  %50 = load i8, ptr %38, align 1, !tbaa !8, !noalias !158
  store i8 %50, ptr %48, align 1, !tbaa !8
  br label %52

51:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %38, i64 %37, i1 false)
  br label %52

52:                                               ; preds = %47, %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %37, ptr %53, align 8, !tbaa !21, !alias.scope !158
  %54 = getelementptr inbounds nuw i8, ptr %48, i64 %37
  store i8 0, ptr %54, align 1, !tbaa !8
  %55 = load i64, ptr %53, align 8, !tbaa !21
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %57 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %57)
  %58 = icmp samesign ugt i64 %55, 1
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load ptr, ptr %4, align 8, !tbaa !18
  %61 = load i8, ptr %60, align 1, !tbaa !8
  %62 = icmp eq i8 %61, 34
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %60, i64 %55
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load i8, ptr %65, align 1, !tbaa !8
  %67 = icmp eq i8 %66, 34
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = add nsw i64 %55, -2
  %70 = add nsw i64 %55, -1
  %71 = call i64 @llvm.umin.i64(i64 %70, i64 %69)
  %72 = getelementptr inbounds nuw i8, ptr %60, i64 1
  invoke void @_ZN12__apo_stdlib18json_unescape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %71, ptr nonnull %72)
          to label %108 unwind label %73

73:                                               ; preds = %68
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = load ptr, ptr %4, align 8, !tbaa !18
  br label %120

76:                                               ; preds = %63, %59
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %77, ptr %0, align 8, !tbaa !14
  %78 = icmp samesign ugt i64 %55, 15
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = add nuw nsw i64 %55, 1
  %81 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %80) #26
          to label %82 unwind label %106

82:                                               ; preds = %79
  store ptr %81, ptr %0, align 8, !tbaa !18
  store i64 %55, ptr %77, align 8, !tbaa !8
  br label %97

83:                                               ; preds = %52
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %84, ptr %0, align 8, !tbaa !14
  %85 = load ptr, ptr %4, align 8, !tbaa !18
  %86 = icmp eq i64 %55, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76, %83
  %88 = phi i64 [ 1, %83 ], [ %55, %76 ]
  %89 = phi ptr [ %84, %83 ], [ %77, %76 ]
  %90 = phi ptr [ %85, %83 ], [ %60, %76 ]
  %91 = add nuw nsw i64 %88, 1
  br label %97

92:                                               ; preds = %30, %83
  %93 = phi ptr [ %35, %30 ], [ %85, %83 ]
  %94 = phi ptr [ %34, %30 ], [ %84, %83 ]
  %95 = phi ptr [ %33, %30 ], [ %56, %83 ]
  %96 = load i8, ptr %93, align 1, !tbaa !8
  store i8 %96, ptr %94, align 1, !tbaa !8
  br label %102

97:                                               ; preds = %87, %82
  %98 = phi i64 [ %88, %87 ], [ %55, %82 ]
  %99 = phi ptr [ %90, %87 ], [ %60, %82 ]
  %100 = phi i64 [ %91, %87 ], [ %80, %82 ]
  %101 = phi ptr [ %89, %87 ], [ %81, %82 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %101, ptr noundef nonnull align 1 dereferenceable(1) %99, i64 %100, i1 false)
  br label %102

102:                                              ; preds = %92, %97
  %103 = phi ptr [ %95, %92 ], [ %56, %97 ]
  %104 = phi i64 [ 0, %92 ], [ %98, %97 ]
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %104, ptr %105, align 8, !tbaa !21
  br label %108

106:                                              ; preds = %79
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %120

108:                                              ; preds = %68, %102
  %109 = phi ptr [ %56, %68 ], [ %103, %102 ]
  %110 = load ptr, ptr %4, align 8, !tbaa !18
  %111 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i64, ptr %109, align 8, !tbaa !21
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  br label %119

116:                                              ; preds = %108
  %117 = load i64, ptr %111, align 8, !tbaa !8
  %118 = add i64 %117, 1
  call void @_ZdlPvm(ptr noundef %110, i64 noundef %118) #27
  br label %119

119:                                              ; preds = %113, %116
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret void

120:                                              ; preds = %106, %73
  %121 = phi ptr [ %75, %73 ], [ %60, %106 ]
  %122 = phi { ptr, i32 } [ %74, %73 ], [ %107, %106 ]
  %123 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i64, ptr %56, align 8, !tbaa !21
  %127 = icmp ult i64 %126, 16
  call void @llvm.assume(i1 %127)
  br label %131

128:                                              ; preds = %120
  %129 = load i64, ptr %123, align 8, !tbaa !8
  %130 = add i64 %129, 1
  call void @_ZdlPvm(ptr noundef %121, i64 noundef %130) #27
  br label %131

131:                                              ; preds = %125, %128
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  resume { ptr, i32 } %122
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS6_S6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 6
  %11 = icmp sgt i64 %10, -1
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 %9, 9223372036854775744
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

14:                                               ; preds = %3
  %15 = tail call i64 @llvm.umax.i64(i64 %10, i64 1)
  %16 = add nuw nsw i64 %15, %10
  %17 = tail call noundef i64 @llvm.umin.i64(i64 %16, i64 144115188075855871)
  %18 = shl nuw nsw i64 %17, 6
  %19 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #26
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %20, align 8, !tbaa !14
  %22 = load ptr, ptr %1, align 8, !tbaa !18
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !21
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  %29 = add nuw nsw i64 %27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %23, i64 %29, i1 false)
  br label %34

30:                                               ; preds = %14
  store ptr %22, ptr %20, align 8, !tbaa !18
  %31 = load i64, ptr %23, align 8, !tbaa !8
  store i64 %31, ptr %21, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !21
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i64 [ %33, %30 ], [ %27, %25 ]
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %37 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %37)
  %38 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %35, ptr %38, align 8, !tbaa !21
  store ptr %23, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %36, align 8, !tbaa !21
  store i8 0, ptr %23, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %40, ptr %39, align 8, !tbaa !14
  %41 = load ptr, ptr %2, align 8, !tbaa !18
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !21
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  %48 = add nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %42, i64 %48, i1 false)
  br label %53

49:                                               ; preds = %34
  store ptr %41, ptr %39, align 8, !tbaa !18
  %50 = load i64, ptr %42, align 8, !tbaa !8
  store i64 %50, ptr %40, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %52 = load i64, ptr %51, align 8, !tbaa !21
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i64 [ %46, %44 ], [ %52, %49 ]
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = icmp ult i64 %54, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i64 %54, ptr %57, align 8, !tbaa !21
  store ptr %42, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %55, align 8, !tbaa !21
  store i8 0, ptr %42, align 8, !tbaa !8
  %58 = icmp eq ptr %6, %5
  br i1 %58, label %103, label %59

59:                                               ; preds = %53, %95
  %60 = phi ptr [ %101, %95 ], [ %19, %53 ]
  %61 = phi ptr [ %100, %95 ], [ %6, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %62, ptr %60, align 8, !tbaa !14, !alias.scope !161, !noalias !164
  %63 = load ptr, ptr %61, align 8, !tbaa !18, !alias.scope !164, !noalias !161
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %70, i1 false), !alias.scope !166
  br label %75

71:                                               ; preds = %59
  store ptr %63, ptr %60, align 8, !tbaa !18, !alias.scope !161, !noalias !164
  %72 = load i64, ptr %64, align 8, !tbaa !8, !alias.scope !164, !noalias !161
  store i64 %72, ptr %62, align 8, !tbaa !8, !alias.scope !161, !noalias !164
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %74, %71 ], [ %68, %66 ]
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %78 = icmp ult i64 %76, 9223372036854775807
  tail call void @llvm.assume(i1 %78)
  %79 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %76, ptr %79, align 8, !tbaa !21, !alias.scope !161, !noalias !164
  store ptr %64, ptr %61, align 8, !tbaa !18, !alias.scope !164, !noalias !161
  store i64 0, ptr %77, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  store i8 0, ptr %64, align 1, !tbaa !8, !alias.scope !164, !noalias !161
  %80 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %82, ptr %80, align 8, !tbaa !14, !alias.scope !161, !noalias !164
  %83 = load ptr, ptr %81, align 8, !tbaa !18, !alias.scope !164, !noalias !161
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %82, ptr noundef nonnull align 8 dereferenceable(1) %84, i64 %90, i1 false), !alias.scope !166
  br label %95

91:                                               ; preds = %75
  store ptr %83, ptr %80, align 8, !tbaa !18, !alias.scope !161, !noalias !164
  %92 = load i64, ptr %84, align 8, !tbaa !8, !alias.scope !164, !noalias !161
  store i64 %92, ptr %82, align 8, !tbaa !8, !alias.scope !161, !noalias !164
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i64 [ %88, %86 ], [ %94, %91 ]
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %98 = icmp ult i64 %96, 9223372036854775807
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i64 %96, ptr %99, align 8, !tbaa !21, !alias.scope !161, !noalias !164
  store ptr %84, ptr %81, align 8, !tbaa !18, !alias.scope !164, !noalias !161
  store i64 0, ptr %97, align 8, !tbaa !21, !alias.scope !164, !noalias !161
  store i8 0, ptr %84, align 1, !tbaa !8, !alias.scope !164, !noalias !161
  %100 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %102 = icmp eq ptr %100, %5
  br i1 %102, label %103, label %59, !llvm.loop !167

103:                                              ; preds = %95, %53
  %104 = phi ptr [ %19, %53 ], [ %101, %95 ]
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %106 = icmp eq ptr %6, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %105, align 8, !tbaa !71
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %109, %8
  tail call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %110) #27
  br label %111

111:                                              ; preds = %103, %107
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 64
  store ptr %19, ptr %0, align 8, !tbaa !67
  store ptr %112, ptr %4, align 8, !tbaa !69
  %113 = getelementptr inbounds nuw %"struct.std::pair", ptr %19, i64 %17
  store ptr %113, ptr %105, align 8, !tbaa !71
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %13

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !8
  %12 = add i64 %11, 1
  tail call void @_ZdlPvm(ptr noundef %3, i64 noundef %12) #27
  br label %13

13:                                               ; preds = %6, %10
  %14 = load ptr, ptr %0, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %24

21:                                               ; preds = %13
  %22 = load i64, ptr %15, align 8, !tbaa !8
  %23 = add i64 %22, 1
  tail call void @_ZdlPvm(ptr noundef %14, i64 noundef %23) #27
  br label %24

24:                                               ; preds = %17, %21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !21
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %4, i64 noundef %6, i64 noundef 3339675911)
          to label %12 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #28
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = urem i64 %8, %14
  %16 = load ptr, ptr %0, align 8, !tbaa !56
  %17 = getelementptr inbounds nuw ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %1, align 8, !tbaa !18
  br i1 %19, label %68, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %18, align 8, !tbaa !93
  %23 = load i64, ptr %5, align 8
  %24 = freeze i64 %23
  %25 = icmp ult i64 %24, 9223372036854775807
  %26 = icmp eq i64 %24, 0
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 72
  %28 = load i64, ptr %27, align 8, !tbaa !169
  br i1 %26, label %29, label %46

29:                                               ; preds = %21, %41
  %30 = phi i64 [ %43, %41 ], [ %28, %21 ]
  %31 = phi ptr [ %39, %41 ], [ %22, %21 ]
  %32 = icmp eq i64 %8, %30
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  tail call void @llvm.assume(i1 %25)
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !21
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %130, label %38

38:                                               ; preds = %33, %29
  %39 = load ptr, ptr %31, align 8, !tbaa !93
  %40 = icmp eq ptr %39, null
  br i1 %40, label %68, label %41, !prof !72

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 72
  %43 = load i64, ptr %42, align 8, !tbaa !169
  %44 = urem i64 %43, %14
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %29, label %68, !prof !128, !llvm.loop !171

46:                                               ; preds = %21, %63
  %47 = phi i64 [ %65, %63 ], [ %28, %21 ]
  %48 = phi ptr [ %61, %63 ], [ %22, %21 ]
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %50 = icmp eq i64 %8, %47
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  tail call void @llvm.assume(i1 %25)
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %53 = load i64, ptr %52, align 8, !tbaa !21
  %54 = icmp ult i64 %53, 9223372036854775807
  tail call void @llvm.assume(i1 %54)
  %55 = icmp eq i64 %24, %53
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load ptr, ptr %49, align 8, !tbaa !18
  %58 = tail call i32 @bcmp(ptr %20, ptr %57, i64 %24)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %130, label %60

60:                                               ; preds = %56, %51, %46
  %61 = load ptr, ptr %48, align 8, !tbaa !93
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !72

63:                                               ; preds = %60
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 72
  %65 = load i64, ptr %64, align 8, !tbaa !169
  %66 = urem i64 %65, %14
  %67 = icmp eq i64 %66, %15
  br i1 %67, label %46, label %68, !prof !128, !llvm.loop !171

68:                                               ; preds = %60, %63, %41, %38, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  store ptr %0, ptr %3, align 8, !tbaa !172
  %69 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
  store ptr null, ptr %69, align 8, !tbaa !93
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 24
  store ptr %71, ptr %70, align 8, !tbaa !14
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %73 = icmp eq ptr %20, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, ptr %5, align 8, !tbaa !21
  %76 = icmp ult i64 %75, 16
  tail call void @llvm.assume(i1 %76)
  %77 = add nuw nsw i64 %75, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %71, ptr noundef nonnull align 8 dereferenceable(1) %72, i64 %77, i1 false)
  br label %81

78:                                               ; preds = %68
  store ptr %20, ptr %70, align 8, !tbaa !18
  %79 = load i64, ptr %72, align 8, !tbaa !8
  store i64 %79, ptr %71, align 8, !tbaa !8
  %80 = load i64, ptr %5, align 8, !tbaa !21
  br label %81

81:                                               ; preds = %74, %78
  %82 = phi i64 [ %75, %74 ], [ %80, %78 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %84 = icmp ult i64 %82, 9223372036854775807
  tail call void @llvm.assume(i1 %84)
  %85 = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i64 %82, ptr %85, align 8, !tbaa !21
  store ptr %72, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %5, align 8, !tbaa !21
  store i8 0, ptr %72, align 8, !tbaa !8
  %86 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %87 = getelementptr inbounds nuw i8, ptr %69, i64 56
  store ptr %87, ptr %86, align 8, !tbaa !14
  %88 = getelementptr inbounds nuw i8, ptr %69, i64 48
  store i64 0, ptr %88, align 8, !tbaa !21
  store i8 0, ptr %87, align 1, !tbaa !8
  store ptr %69, ptr %83, align 8, !tbaa !176
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %91 = load i64, ptr %90, align 8, !tbaa !177
  %92 = load i64, ptr %13, align 8, !tbaa !63
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %94 = load i64, ptr %93, align 8, !tbaa !92
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
  %102 = load i64, ptr %13, align 8, !tbaa !63
  %103 = urem i64 %8, %102
  br label %106

104:                                              ; preds = %99, %81
  %105 = landingpad { ptr, i32 }
          cleanup
  store i64 %91, ptr %90, align 8, !tbaa !177
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %105

106:                                              ; preds = %101, %96
  %107 = phi i64 [ %15, %96 ], [ %103, %101 ]
  %108 = getelementptr inbounds nuw i8, ptr %69, i64 72
  store i64 %8, ptr %108, align 8, !tbaa !169
  %109 = load ptr, ptr %0, align 8, !tbaa !56
  %110 = getelementptr inbounds nuw ptr, ptr %109, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !168
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr %111, align 8, !tbaa !93
  store ptr %114, ptr %69, align 8, !tbaa !93
  %115 = load ptr, ptr %110, align 8, !tbaa !168
  store ptr %69, ptr %115, align 8, !tbaa !93
  br label %127

116:                                              ; preds = %106
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %118 = load ptr, ptr %117, align 8, !tbaa !156
  store ptr %118, ptr %69, align 8, !tbaa !93
  store ptr %69, ptr %117, align 8, !tbaa !156
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load i64, ptr %13, align 8, !tbaa !63
  %122 = getelementptr inbounds nuw i8, ptr %118, i64 72
  %123 = load i64, ptr %122, align 8, !tbaa !169
  %124 = urem i64 %123, %121
  %125 = getelementptr inbounds nuw ptr, ptr %109, i64 %124
  store ptr %69, ptr %125, align 8, !tbaa !168
  br label %126

126:                                              ; preds = %120, %116
  store ptr %117, ptr %110, align 8, !tbaa !168
  br label %127

127:                                              ; preds = %113, %126
  %128 = load i64, ptr %93, align 8, !tbaa !92
  %129 = add i64 %128, 1
  store i64 %129, ptr %93, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %130

130:                                              ; preds = %56, %33, %127
  %131 = phi ptr [ %69, %127 ], [ %31, %33 ], [ %48, %56 ]
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 40
  ret ptr %132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %13 = load i64, ptr %12, align 8, !tbaa !21
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %18

15:                                               ; preds = %5
  %16 = load i64, ptr %9, align 8, !tbaa !8
  %17 = add i64 %16, 1
  tail call void @_ZdlPvm(ptr noundef %8, i64 noundef %17) #27
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr %6, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %24 = load i64, ptr %23, align 8, !tbaa !21
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %29

26:                                               ; preds = %18
  %27 = load i64, ptr %20, align 8, !tbaa !8
  %28 = add i64 %27, 1
  tail call void @_ZdlPvm(ptr noundef %19, i64 noundef %28) #27
  br label %29

29:                                               ; preds = %22, %26
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 80) #27
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 1
  br i1 %3, label %4, label %6, !prof !72

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %5, align 8, !tbaa !178
  br label %15

6:                                                ; preds = %2
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %12, !prof !72

8:                                                ; preds = %6
  %9 = icmp ugt i64 %1, 2305843009213693951
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

11:                                               ; preds = %8
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

12:                                               ; preds = %6
  %13 = shl nuw nsw i64 %1, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #26
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %14, i8 0, i64 %13, i1 false)
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %5, %4 ], [ %14, %12 ]
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  store ptr null, ptr %17, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %15, %39
  %21 = phi ptr [ %23, %39 ], [ %18, %15 ]
  %22 = phi i64 [ %40, %39 ], [ 0, %15 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !93
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 72
  %25 = load i64, ptr %24, align 8, !tbaa !169
  %26 = urem i64 %25, %1
  %27 = getelementptr inbounds nuw ptr, ptr %16, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !168
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %17, align 8, !tbaa !156
  store ptr %31, ptr %21, align 8, !tbaa !93
  store ptr %21, ptr %17, align 8, !tbaa !156
  store ptr %17, ptr %27, align 8, !tbaa !168
  %32 = load ptr, ptr %21, align 8, !tbaa !93
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw ptr, ptr %16, i64 %22
  store ptr %21, ptr %35, align 8, !tbaa !168
  br label %39

36:                                               ; preds = %20
  %37 = load ptr, ptr %28, align 8, !tbaa !93
  store ptr %37, ptr %21, align 8, !tbaa !93
  %38 = load ptr, ptr %27, align 8, !tbaa !168
  store ptr %21, ptr %38, align 8, !tbaa !93
  br label %39

39:                                               ; preds = %30, %34, %36
  %40 = phi i64 [ %22, %36 ], [ %26, %34 ], [ %26, %30 ]
  %41 = icmp eq ptr %23, null
  br i1 %41, label %42, label %20, !llvm.loop !179

42:                                               ; preds = %39, %15
  %43 = load ptr, ptr %0, align 8, !tbaa !56
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !63
  %49 = shl i64 %48, 3
  tail call void @_ZdlPvm(ptr noundef %43, i64 noundef %49) #27
  br label %50

50:                                               ; preds = %42, %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %51, align 8, !tbaa !63
  store ptr %16, ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE22__resize_and_overwriteIZNS_9to_stringElEUlPcmE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = lshr i64 %2, 32
  %6 = trunc nuw i64 %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !21
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

23:                                               ; preds = %20
  %24 = shl nuw i64 %16, 1
  %25 = icmp ult i64 %1, %24
  %26 = tail call i64 @llvm.umin.i64(i64 %24, i64 9223372036854775806)
  %27 = select i1 %25, i64 %26, i64 %1
  %28 = add nuw nsw i64 %27, 1
  %29 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !21
  %32 = icmp ult i64 %31, 9223372036854775807
  tail call void @llvm.assume(i1 %32)
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i8, ptr %7, align 1, !tbaa !8
  store i8 %35, ptr %29, align 1, !tbaa !8
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
  tail call void @_ZdlPvm(ptr noundef %7, i64 noundef %42) #27
  br label %43

43:                                               ; preds = %41, %39
  store ptr %29, ptr %0, align 8, !tbaa !18
  store i64 %27, ptr %8, align 8, !tbaa !8
  br label %44

44:                                               ; preds = %14, %43
  %45 = phi ptr [ %7, %14 ], [ %29, %43 ]
  store i8 45, ptr %45, align 1, !tbaa !8
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
  %58 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = zext i32 %53 to i64
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 %60
  store i8 %59, ptr %61, align 1, !tbaa !8
  %62 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 0, i64 %55
  %63 = load i8, ptr %62, align 2, !tbaa !8
  %64 = add i32 %53, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %47, i64 %65
  store i8 %63, ptr %66, align 1, !tbaa !8
  %67 = add i32 %53, -2
  %68 = icmp ugt i64 %52, 9999
  br i1 %68, label %51, label %69, !llvm.loop !180

69:                                               ; preds = %51, %44
  %70 = phi i64 [ %3, %44 ], [ %56, %51 ]
  %71 = icmp samesign ugt i64 %70, 9
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = shl nuw nsw i64 %70, 1
  %74 = or disjoint i64 %73, 1
  %75 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !8
  %77 = getelementptr inbounds nuw i8, ptr %47, i64 1
  store i8 %76, ptr %77, align 1, !tbaa !8
  %78 = getelementptr inbounds nuw [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 0, i64 %73
  %79 = load i8, ptr %78, align 2, !tbaa !8
  br label %83

80:                                               ; preds = %69
  %81 = trunc nuw nsw i64 %70 to i8
  %82 = or disjoint i8 %81, 48
  br label %83

83:                                               ; preds = %72, %80
  %84 = phi i8 [ %82, %80 ], [ %79, %72 ]
  store i8 %84, ptr %47, align 1, !tbaa !8
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %85, align 8, !tbaa !21
  %86 = load ptr, ptr %0, align 8, !tbaa !18
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 %1
  store i8 0, ptr %87, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #14 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
declare void @_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %5, align 8, !tbaa !21
  store i8 0, ptr %4, align 8, !tbaa !8
  %6 = add i64 %1, 2
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = icmp ugt i64 %6, 9223372036854775806
  br i1 %9, label %38, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @llvm.umax.i64(i64 %6, i64 30)
  %12 = add nuw nsw i64 %11, 1
  %13 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #26
          to label %14 unwind label %53

14:                                               ; preds = %10
  store i8 0, ptr %13, align 1, !tbaa !8
  store ptr %13, ptr %0, align 8, !tbaa !18
  store i64 %11, ptr %4, align 8, !tbaa !8
  store i8 34, ptr %13, align 1, !tbaa !8
  store i64 1, ptr %5, align 8, !tbaa !21
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 0, ptr %15, align 1, !tbaa !8
  br label %20

16:                                               ; preds = %3
  store i8 34, ptr %4, align 8, !tbaa !8
  store i64 1, ptr %5, align 8, !tbaa !21
  %17 = load ptr, ptr %0, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  store i8 0, ptr %18, align 1, !tbaa !8
  %19 = icmp samesign eq i64 %1, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14, %16
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %1
  br label %55

22:                                               ; preds = %182, %16
  %23 = load i64, ptr %5, align 8, !tbaa !21
  %24 = icmp ult i64 %23, 9223372036854775807
  tail call void @llvm.assume(i1 %24)
  %25 = add nuw nsw i64 %23, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !18
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
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %39 unwind label %53

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %35
  %41 = shl nuw i64 %36, 1
  %42 = icmp ult i64 %25, %41
  %43 = tail call i64 @llvm.umin.i64(i64 %41, i64 9223372036854775806)
  %44 = select i1 %42, i64 %43, i64 %25
  %45 = add nuw nsw i64 %44, 1
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #26
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
  tail call void @_ZdlPvm(ptr noundef %26, i64 noundef %51) #27
  br label %52

52:                                               ; preds = %50, %48
  store ptr %46, ptr %0, align 8, !tbaa !18
  store i64 %44, ptr %4, align 8, !tbaa !8
  br label %188

53:                                               ; preds = %38, %40, %10
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %193

55:                                               ; preds = %20, %182
  %56 = phi ptr [ %186, %182 ], [ %2, %20 ]
  %57 = load i8, ptr %56, align 1, !tbaa !8
  %58 = load i64, ptr %5, align 8, !tbaa !21
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
  %63 = phi ptr [ @.str.15, %84 ], [ @.str.15, %101 ], [ @.str.15, %118 ], [ @.str.15, %135 ], [ @.str.4, %163 ], [ @.str.15, %60 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %63) #25
          to label %64 unwind label %82

64:                                               ; preds = %62
  unreachable

65:                                               ; preds = %60
  %66 = add nuw nsw i64 %58, 2
  %67 = load ptr, ptr %0, align 8, !tbaa !18
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
  %88 = load ptr, ptr %0, align 8, !tbaa !18
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
  %105 = load ptr, ptr %0, align 8, !tbaa !18
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
  %122 = load ptr, ptr %0, align 8, !tbaa !18
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
  %139 = load ptr, ptr %0, align 8, !tbaa !18
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
  %154 = load ptr, ptr %0, align 8, !tbaa !18
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
  %172 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %171) #26
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
  tail call void @_ZdlPvm(ptr noundef %154, i64 noundef %177) #27
  br label %178

178:                                              ; preds = %176, %174
  store ptr %172, ptr %0, align 8, !tbaa !18
  store i64 %170, ptr %4, align 8, !tbaa !8
  br label %179

179:                                              ; preds = %157, %159, %178
  %180 = phi ptr [ %154, %159 ], [ %172, %178 ], [ %154, %157 ]
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 %58
  store i8 %57, ptr %181, align 1, !tbaa !8
  br label %182

182:                                              ; preds = %149, %151, %132, %134, %115, %117, %98, %100, %77, %79, %179
  %183 = phi i64 [ %153, %179 ], [ %66, %79 ], [ %66, %77 ], [ %87, %100 ], [ %87, %98 ], [ %104, %117 ], [ %104, %115 ], [ %121, %134 ], [ %121, %132 ], [ %138, %151 ], [ %138, %149 ]
  store i64 %183, ptr %5, align 8, !tbaa !21
  %184 = load ptr, ptr %0, align 8, !tbaa !18
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %183
  store i8 0, ptr %185, align 1, !tbaa !8
  %186 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %187 = icmp eq ptr %186, %21
  br i1 %187, label %22, label %55

188:                                              ; preds = %52, %31, %29
  %189 = phi ptr [ %26, %31 ], [ %46, %52 ], [ %26, %29 ]
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 %23
  store i8 34, ptr %190, align 1, !tbaa !8
  store i64 %25, ptr %5, align 8, !tbaa !21
  %191 = load ptr, ptr %0, align 8, !tbaa !18
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %25
  store i8 0, ptr %192, align 1, !tbaa !8
  ret void

193:                                              ; preds = %80, %82, %53
  %194 = phi { ptr, i32 } [ %54, %53 ], [ %81, %80 ], [ %83, %82 ]
  %195 = load ptr, ptr %0, align 8, !tbaa !18
  %196 = icmp eq ptr %195, %4
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i64, ptr %5, align 8, !tbaa !21
  %199 = icmp ult i64 %198, 16
  tail call void @llvm.assume(i1 %199)
  br label %203

200:                                              ; preds = %193
  %201 = load i64, ptr %4, align 8, !tbaa !8
  %202 = add i64 %201, 1
  tail call void @_ZdlPvm(ptr noundef %195, i64 noundef %202) #27
  br label %203

203:                                              ; preds = %197, %200
  resume { ptr, i32 } %194
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib26json_write_array_fragmentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %0, align 8, !tbaa !14
  store i8 91, ptr %3, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %5, align 1, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = load ptr, ptr %1, align 8, !tbaa !133
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp sgt i64 %11, -1
  tail call void @llvm.assume(i1 %12)
  %13 = icmp eq ptr %7, %8
  br i1 %13, label %165, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !21
  %18 = icmp ult i64 %17, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = icmp samesign ugt i64 %17, 9223372036854775805
  br i1 %19, label %93, label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp samesign ugt i64 %17, 14
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = icmp eq i64 %17, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %27 = icmp eq i64 %17, 1
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %15, i64 %17, i1 false)
  br label %34

29:                                               ; preds = %25
  %30 = load i8, ptr %15, align 1, !tbaa !8
  store i8 %30, ptr %26, align 1, !tbaa !8
  br label %34

31:                                               ; preds = %20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i64 noundef 0, ptr noundef %15, i64 noundef %17)
          to label %32 unwind label %111

32:                                               ; preds = %31
  %33 = load ptr, ptr %0, align 8, !tbaa !18
  br label %34

34:                                               ; preds = %32, %29, %28, %23
  %35 = phi ptr [ %33, %32 ], [ %3, %29 ], [ %3, %28 ], [ %3, %23 ]
  store i64 %21, ptr %4, align 8, !tbaa !21
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 %21
  store i8 0, ptr %36, align 1, !tbaa !8
  %37 = load ptr, ptr %6, align 8, !tbaa !134
  %38 = load ptr, ptr %1, align 8, !tbaa !133
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 5
  %43 = icmp sgt i64 %42, -1
  tail call void @llvm.assume(i1 %43)
  %44 = icmp samesign ugt i64 %42, 1
  br i1 %44, label %76, label %45

45:                                               ; preds = %151, %34
  %46 = load i64, ptr %4, align 8, !tbaa !21
  %47 = load ptr, ptr %0, align 8, !tbaa !18
  %48 = icmp ult i64 %46, 9223372036854775807
  tail call void @llvm.assume(i1 %48)
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq ptr %47, %3
  %51 = load i64, ptr %3, align 8
  br i1 %50, label %52, label %54

52:                                               ; preds = %45
  %53 = icmp samesign ugt i64 %46, 14
  br i1 %53, label %58, label %165

54:                                               ; preds = %45
  %55 = icmp samesign ugt i64 %51, 14
  tail call void @llvm.assume(i1 %55)
  %56 = icmp ult i64 %51, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = icmp samesign ult i64 %46, %51
  br i1 %57, label %165, label %58

58:                                               ; preds = %54, %52
  %59 = phi i64 [ %51, %54 ], [ 15, %52 ]
  %60 = icmp eq i64 %49, 9223372036854775807
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %62 unwind label %163

62:                                               ; preds = %61
  unreachable

63:                                               ; preds = %58
  %64 = shl nuw i64 %59, 1
  %65 = icmp ult i64 %49, %64
  %66 = tail call i64 @llvm.umin.i64(i64 %64, i64 9223372036854775806)
  %67 = select i1 %65, i64 %66, i64 %49
  %68 = add nuw nsw i64 %67, 1
  %69 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %68) #26
          to label %70 unwind label %163

70:                                               ; preds = %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr align 1 %47, i64 %46, i1 false)
  br i1 %50, label %71, label %73

71:                                               ; preds = %70
  %72 = icmp samesign ult i64 %46, 16
  tail call void @llvm.assume(i1 %72)
  br label %75

73:                                               ; preds = %70
  %74 = add i64 %51, 1
  tail call void @_ZdlPvm(ptr noundef %47, i64 noundef %74) #27
  br label %75

75:                                               ; preds = %73, %71
  store ptr %69, ptr %0, align 8, !tbaa !18
  store i64 %67, ptr %3, align 8, !tbaa !8
  br label %165

76:                                               ; preds = %34, %151
  %77 = phi i64 [ %154, %151 ], [ 1, %34 ]
  %78 = load i64, ptr %4, align 8, !tbaa !21
  %79 = icmp ult i64 %78, 9223372036854775807
  tail call void @llvm.assume(i1 %79)
  %80 = add nuw nsw i64 %78, 1
  %81 = load ptr, ptr %0, align 8, !tbaa !18
  %82 = icmp eq ptr %81, %3
  %83 = load i64, ptr %3, align 8
  br i1 %82, label %84, label %86

84:                                               ; preds = %76
  %85 = icmp samesign ugt i64 %78, 14
  br i1 %85, label %90, label %115

86:                                               ; preds = %76
  %87 = icmp samesign ugt i64 %83, 14
  tail call void @llvm.assume(i1 %87)
  %88 = icmp ult i64 %83, 9223372036854775807
  tail call void @llvm.assume(i1 %88)
  %89 = icmp samesign ult i64 %78, %83
  br i1 %89, label %115, label %90

90:                                               ; preds = %86, %84
  %91 = phi i64 [ %83, %86 ], [ 15, %84 ]
  %92 = icmp eq i64 %80, 9223372036854775807
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %115, %14
  %94 = phi ptr [ @.str.15, %14 ], [ @.str.15, %115 ], [ @.str.4, %90 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %94) #25
          to label %95 unwind label %113

95:                                               ; preds = %93
  unreachable

96:                                               ; preds = %90
  %97 = shl nuw i64 %91, 1
  %98 = icmp ult i64 %80, %97
  %99 = tail call i64 @llvm.umin.i64(i64 %97, i64 9223372036854775806)
  %100 = select i1 %98, i64 %99, i64 %80
  %101 = add nuw nsw i64 %100, 1
  %102 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %101) #26
          to label %103 unwind label %109

103:                                              ; preds = %96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %102, ptr align 1 %81, i64 %78, i1 false)
  br i1 %82, label %104, label %106

104:                                              ; preds = %103
  %105 = icmp samesign ult i64 %78, 16
  tail call void @llvm.assume(i1 %105)
  br label %108

106:                                              ; preds = %103
  %107 = add i64 %83, 1
  tail call void @_ZdlPvm(ptr noundef %81, i64 noundef %107) #27
  br label %108

108:                                              ; preds = %106, %104
  store ptr %102, ptr %0, align 8, !tbaa !18
  store i64 %100, ptr %3, align 8, !tbaa !8
  br label %115

109:                                              ; preds = %150, %96
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %172

111:                                              ; preds = %31
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %172

113:                                              ; preds = %93
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %172

115:                                              ; preds = %84, %86, %108
  %116 = phi ptr [ %81, %86 ], [ %102, %108 ], [ %81, %84 ]
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %78
  store i8 44, ptr %117, align 1, !tbaa !8
  store i64 %80, ptr %4, align 8, !tbaa !21
  %118 = load ptr, ptr %0, align 8, !tbaa !18
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 %80
  store i8 0, ptr %119, align 1, !tbaa !8
  %120 = load ptr, ptr %1, align 8, !tbaa !133
  %121 = getelementptr inbounds nuw %"class.std::__cxx11::basic_string", ptr %120, i64 %77
  %122 = load ptr, ptr %121, align 8, !tbaa !18
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %124 = load i64, ptr %123, align 8, !tbaa !21
  %125 = icmp ult i64 %124, 9223372036854775807
  tail call void @llvm.assume(i1 %125)
  %126 = load i64, ptr %4, align 8, !tbaa !21
  %127 = icmp ult i64 %126, 9223372036854775807
  tail call void @llvm.assume(i1 %127)
  %128 = sub nuw nsw i64 9223372036854775806, %126
  %129 = icmp samesign ult i64 %128, %124
  br i1 %129, label %93, label %130

130:                                              ; preds = %115
  %131 = add nuw i64 %126, %124
  %132 = load ptr, ptr %0, align 8, !tbaa !18
  %133 = icmp eq ptr %132, %3
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = icmp samesign ult i64 %126, 16
  tail call void @llvm.assume(i1 %135)
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i64, ptr %3, align 8
  %138 = select i1 %133, i64 15, i64 %137
  %139 = icmp samesign ugt i64 %138, 14
  tail call void @llvm.assume(i1 %139)
  %140 = icmp ult i64 %138, 9223372036854775807
  tail call void @llvm.assume(i1 %140)
  %141 = icmp ugt i64 %131, %138
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = icmp eq i64 %124, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds nuw i8, ptr %132, i64 %126
  %146 = icmp eq i64 %124, 1
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i8, ptr %122, align 1, !tbaa !8
  store i8 %148, ptr %145, align 1, !tbaa !8
  br label %151

149:                                              ; preds = %144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %145, ptr align 1 %122, i64 %124, i1 false)
  br label %151

150:                                              ; preds = %136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %126, i64 noundef 0, ptr noundef %122, i64 noundef %124)
          to label %151 unwind label %109

151:                                              ; preds = %149, %147, %142, %150
  store i64 %131, ptr %4, align 8, !tbaa !21
  %152 = load ptr, ptr %0, align 8, !tbaa !18
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 %131
  store i8 0, ptr %153, align 1, !tbaa !8
  %154 = add nuw nsw i64 %77, 1
  %155 = load ptr, ptr %6, align 8, !tbaa !134
  %156 = load ptr, ptr %1, align 8, !tbaa !133
  %157 = ptrtoint ptr %155 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = ashr exact i64 %159, 5
  %161 = icmp sgt i64 %160, -1
  tail call void @llvm.assume(i1 %161)
  %162 = icmp samesign ult i64 %154, %160
  br i1 %162, label %76, label %45, !llvm.loop !181

163:                                              ; preds = %63, %61
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %172

165:                                              ; preds = %2, %75, %54, %52
  %166 = phi i64 [ %49, %54 ], [ %49, %75 ], [ %49, %52 ], [ 2, %2 ]
  %167 = phi i64 [ %46, %54 ], [ %46, %75 ], [ %46, %52 ], [ 1, %2 ]
  %168 = phi ptr [ %47, %54 ], [ %69, %75 ], [ %47, %52 ], [ %3, %2 ]
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 %167
  store i8 93, ptr %169, align 1, !tbaa !8
  store i64 %166, ptr %4, align 8, !tbaa !21
  %170 = load ptr, ptr %0, align 8, !tbaa !18
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %166
  store i8 0, ptr %171, align 1, !tbaa !8
  ret void

172:                                              ; preds = %109, %111, %113, %163
  %173 = phi { ptr, i32 } [ %164, %163 ], [ %114, %113 ], [ %110, %109 ], [ %112, %111 ]
  %174 = load ptr, ptr %0, align 8, !tbaa !18
  %175 = icmp eq ptr %174, %3
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i64, ptr %4, align 8, !tbaa !21
  %178 = icmp ult i64 %177, 16
  tail call void @llvm.assume(i1 %178)
  br label %182

179:                                              ; preds = %172
  %180 = load i64, ptr %3, align 8, !tbaa !8
  %181 = add i64 %180, 1
  tail call void @_ZdlPvm(ptr noundef %174, i64 noundef %181) #27
  br label %182

182:                                              ; preds = %179, %176
  resume { ptr, i32 } %173
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp ugt i64 %1, 144115188075855871
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = load ptr, ptr %0, align 8, !tbaa !67
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
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %10
  %20 = icmp sgt i64 %19, -1
  tail call void @llvm.assume(i1 %20)
  %21 = shl nuw nsw i64 %1, 6
  %22 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %21) #26
  %23 = icmp eq ptr %8, %17
  br i1 %23, label %70, label %24

24:                                               ; preds = %15, %60
  %25 = phi ptr [ %66, %60 ], [ %22, %15 ]
  %26 = phi ptr [ %65, %60 ], [ %8, %15 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %27, ptr %25, align 8, !tbaa !14, !alias.scope !183, !noalias !186
  %28 = load ptr, ptr %26, align 8, !tbaa !18, !alias.scope !186, !noalias !183
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  %34 = icmp ult i64 %33, 16
  tail call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %29, i64 %35, i1 false), !alias.scope !188
  br label %40

36:                                               ; preds = %24
  store ptr %28, ptr %25, align 8, !tbaa !18, !alias.scope !183, !noalias !186
  %37 = load i64, ptr %29, align 8, !tbaa !8, !alias.scope !186, !noalias !183
  store i64 %37, ptr %27, align 8, !tbaa !8, !alias.scope !183, !noalias !186
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i64 [ %39, %36 ], [ %33, %31 ]
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %43 = icmp ult i64 %41, 9223372036854775807
  tail call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %41, ptr %44, align 8, !tbaa !21, !alias.scope !183, !noalias !186
  store ptr %29, ptr %26, align 8, !tbaa !18, !alias.scope !186, !noalias !183
  store i64 0, ptr %42, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  store i8 0, ptr %29, align 1, !tbaa !8, !alias.scope !186, !noalias !183
  %45 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %25, i64 48
  store ptr %47, ptr %45, align 8, !tbaa !14, !alias.scope !183, !noalias !186
  %48 = load ptr, ptr %46, align 8, !tbaa !18, !alias.scope !186, !noalias !183
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  %54 = icmp ult i64 %53, 16
  tail call void @llvm.assume(i1 %54)
  %55 = add nuw nsw i64 %53, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %47, ptr noundef nonnull align 8 dereferenceable(1) %49, i64 %55, i1 false), !alias.scope !188
  br label %60

56:                                               ; preds = %40
  store ptr %48, ptr %45, align 8, !tbaa !18, !alias.scope !183, !noalias !186
  %57 = load i64, ptr %49, align 8, !tbaa !8, !alias.scope !186, !noalias !183
  store i64 %57, ptr %47, align 8, !tbaa !8, !alias.scope !183, !noalias !186
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %59 = load i64, ptr %58, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i64 [ %53, %51 ], [ %59, %56 ]
  %62 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %63 = icmp ult i64 %61, 9223372036854775807
  tail call void @llvm.assume(i1 %63)
  %64 = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 %61, ptr %64, align 8, !tbaa !21, !alias.scope !183, !noalias !186
  store ptr %49, ptr %46, align 8, !tbaa !18, !alias.scope !186, !noalias !183
  store i64 0, ptr %62, align 8, !tbaa !21, !alias.scope !186, !noalias !183
  store i8 0, ptr %49, align 1, !tbaa !8, !alias.scope !186, !noalias !183
  %65 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %67 = icmp eq ptr %65, %17
  br i1 %67, label %68, label %24, !llvm.loop !167

68:                                               ; preds = %60
  %69 = load ptr, ptr %0, align 8, !tbaa !67
  br label %70

70:                                               ; preds = %68, %15
  %71 = phi ptr [ %69, %68 ], [ %8, %15 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %6, align 8, !tbaa !71
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %71 to i64
  %77 = sub i64 %75, %76
  tail call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %77) #27
  br label %78

78:                                               ; preds = %70, %73
  store ptr %22, ptr %0, align 8, !tbaa !67
  %79 = getelementptr inbounds nuw i8, ptr %22, i64 %19
  store ptr %79, ptr %16, align 8, !tbaa !69
  %80 = getelementptr inbounds nuw %"struct.std::pair", ptr %22, i64 %1
  store ptr %80, ptr %6, align 8, !tbaa !71
  br label %81

81:                                               ; preds = %78, %5
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib27json_write_object_fragmentsERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %0, align 8, !tbaa !14
  store i8 123, ptr %4, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %5, align 8, !tbaa !21
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %6, align 1, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = load ptr, ptr %1, align 8, !tbaa !67
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, -1
  tail call void @llvm.assume(i1 %13)
  %14 = icmp eq ptr %8, %9
  br i1 %14, label %242, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %49

18:                                               ; preds = %210
  %19 = load i64, ptr %5, align 8, !tbaa !21
  %20 = load ptr, ptr %0, align 8, !tbaa !18
  %21 = icmp ult i64 %19, 9223372036854775807
  call void @llvm.assume(i1 %21)
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq ptr %20, %4
  %24 = load i64, ptr %4, align 8
  br i1 %23, label %25, label %27

25:                                               ; preds = %18
  %26 = icmp samesign ugt i64 %19, 14
  br i1 %26, label %31, label %242

27:                                               ; preds = %18
  %28 = icmp samesign ugt i64 %24, 14
  call void @llvm.assume(i1 %28)
  %29 = icmp ult i64 %24, 9223372036854775807
  call void @llvm.assume(i1 %29)
  %30 = icmp samesign ult i64 %19, %24
  br i1 %30, label %242, label %31

31:                                               ; preds = %27, %25
  %32 = phi i64 [ %24, %27 ], [ 15, %25 ]
  %33 = icmp eq i64 %22, 9223372036854775807
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %35 unwind label %240

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %31
  %37 = shl nuw i64 %32, 1
  %38 = icmp ult i64 %22, %37
  %39 = call i64 @llvm.umin.i64(i64 %37, i64 9223372036854775806)
  %40 = select i1 %38, i64 %39, i64 %22
  %41 = add nuw nsw i64 %40, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #26
          to label %43 unwind label %240

43:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %20, i64 %19, i1 false)
  br i1 %23, label %44, label %46

44:                                               ; preds = %43
  %45 = icmp samesign ult i64 %19, 16
  call void @llvm.assume(i1 %45)
  br label %48

46:                                               ; preds = %43
  %47 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %20, i64 noundef %47) #27
  br label %48

48:                                               ; preds = %46, %44
  store ptr %42, ptr %0, align 8, !tbaa !18
  store i64 %40, ptr %4, align 8, !tbaa !8
  br label %242

49:                                               ; preds = %15, %210
  %50 = phi ptr [ %9, %15 ], [ %215, %210 ]
  %51 = phi i64 [ 0, %15 ], [ %213, %210 ]
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  br label %97

54:                                               ; preds = %49
  %55 = load i64, ptr %5, align 8, !tbaa !21
  %56 = icmp ult i64 %55, 9223372036854775807
  call void @llvm.assume(i1 %56)
  %57 = add nuw nsw i64 %55, 1
  %58 = load ptr, ptr %0, align 8, !tbaa !18
  %59 = icmp eq ptr %58, %4
  %60 = load i64, ptr %4, align 8
  br i1 %59, label %61, label %63

61:                                               ; preds = %54
  %62 = icmp samesign ugt i64 %55, 14
  br i1 %62, label %67, label %86

63:                                               ; preds = %54
  %64 = icmp samesign ugt i64 %60, 14
  call void @llvm.assume(i1 %64)
  %65 = icmp ult i64 %60, 9223372036854775807
  call void @llvm.assume(i1 %65)
  %66 = icmp samesign ult i64 %55, %60
  br i1 %66, label %86, label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %60, %63 ], [ 15, %61 ]
  %69 = icmp eq i64 %57, 9223372036854775807
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %174, %158
  %71 = phi ptr [ @.str.4, %158 ], [ @.str.15, %174 ], [ @.str.4, %67 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %71) #25
          to label %72 unwind label %95

72:                                               ; preds = %70
  unreachable

73:                                               ; preds = %67
  %74 = shl nuw i64 %68, 1
  %75 = icmp ult i64 %57, %74
  %76 = call i64 @llvm.umin.i64(i64 %74, i64 9223372036854775806)
  %77 = select i1 %75, i64 %76, i64 %57
  %78 = add nuw nsw i64 %77, 1
  %79 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %78) #26
          to label %80 unwind label %93

80:                                               ; preds = %73
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %79, ptr align 1 %58, i64 %55, i1 false)
  br i1 %59, label %81, label %83

81:                                               ; preds = %80
  %82 = icmp samesign ult i64 %55, 16
  call void @llvm.assume(i1 %82)
  br label %85

83:                                               ; preds = %80
  %84 = add i64 %60, 1
  call void @_ZdlPvm(ptr noundef %58, i64 noundef %84) #27
  br label %85

85:                                               ; preds = %83, %81
  store ptr %79, ptr %0, align 8, !tbaa !18
  store i64 %77, ptr %4, align 8, !tbaa !8
  br label %86

86:                                               ; preds = %85, %63, %61
  %87 = phi ptr [ %58, %63 ], [ %79, %85 ], [ %58, %61 ]
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 %55
  store i8 44, ptr %88, align 1, !tbaa !8
  store i64 %57, ptr %5, align 8, !tbaa !21
  %89 = load ptr, ptr %0, align 8, !tbaa !18
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 %57
  store i8 0, ptr %90, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %91 = load ptr, ptr %1, align 8, !tbaa !67
  %92 = getelementptr inbounds nuw %"struct.std::pair", ptr %91, i64 %51
  br label %97

93:                                               ; preds = %73, %161, %209
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %249

95:                                               ; preds = %70
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %249

97:                                               ; preds = %86, %53
  %98 = phi ptr [ %50, %53 ], [ %92, %86 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %101 = load i64, ptr %100, align 8, !tbaa !21
  %102 = icmp ult i64 %101, 9223372036854775807
  call void @llvm.assume(i1 %102)
  invoke void @_ZN12__apo_stdlib16json_escape_textB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %101, ptr %99)
          to label %103 unwind label %222

103:                                              ; preds = %97
  %104 = load ptr, ptr %3, align 8, !tbaa !18
  %105 = load i64, ptr %16, align 8, !tbaa !21
  %106 = icmp ult i64 %105, 9223372036854775807
  call void @llvm.assume(i1 %106)
  %107 = load i64, ptr %5, align 8, !tbaa !21
  %108 = icmp ult i64 %107, 9223372036854775807
  call void @llvm.assume(i1 %108)
  %109 = sub nuw nsw i64 9223372036854775806, %107
  %110 = icmp samesign ult i64 %109, %105
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
          to label %112 unwind label %226

112:                                              ; preds = %111
  unreachable

113:                                              ; preds = %103
  %114 = add nuw i64 %107, %105
  %115 = load ptr, ptr %0, align 8, !tbaa !18
  %116 = icmp eq ptr %115, %4
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = icmp samesign ult i64 %107, 16
  call void @llvm.assume(i1 %118)
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i64, ptr %4, align 8
  %121 = select i1 %116, i64 15, i64 %120
  %122 = icmp samesign ugt i64 %121, 14
  call void @llvm.assume(i1 %122)
  %123 = icmp ult i64 %121, 9223372036854775807
  call void @llvm.assume(i1 %123)
  %124 = icmp ugt i64 %114, %121
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = icmp eq i64 %105, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds nuw i8, ptr %115, i64 %107
  %129 = icmp eq i64 %105, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i8, ptr %104, align 1, !tbaa !8
  store i8 %131, ptr %128, align 1, !tbaa !8
  br label %134

132:                                              ; preds = %127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %104, i64 %105, i1 false)
  br label %134

133:                                              ; preds = %119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %107, i64 noundef 0, ptr noundef %104, i64 noundef %105)
          to label %134 unwind label %224

134:                                              ; preds = %132, %130, %125, %133
  store i64 %114, ptr %5, align 8, !tbaa !21
  %135 = load ptr, ptr %0, align 8, !tbaa !18
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 %114
  store i8 0, ptr %136, align 1, !tbaa !8
  %137 = load ptr, ptr %3, align 8, !tbaa !18
  %138 = icmp eq ptr %137, %17
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i64, ptr %16, align 8, !tbaa !21
  %141 = icmp ult i64 %140, 16
  call void @llvm.assume(i1 %141)
  br label %145

142:                                              ; preds = %134
  %143 = load i64, ptr %17, align 8, !tbaa !8
  %144 = add i64 %143, 1
  call void @_ZdlPvm(ptr noundef %137, i64 noundef %144) #27
  br label %145

145:                                              ; preds = %139, %142
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  %146 = load i64, ptr %5, align 8, !tbaa !21
  %147 = icmp ult i64 %146, 9223372036854775807
  call void @llvm.assume(i1 %147)
  %148 = add nuw nsw i64 %146, 1
  %149 = load ptr, ptr %0, align 8, !tbaa !18
  %150 = icmp eq ptr %149, %4
  %151 = load i64, ptr %4, align 8
  br i1 %150, label %152, label %154

152:                                              ; preds = %145
  %153 = icmp samesign ugt i64 %146, 14
  br i1 %153, label %158, label %174

154:                                              ; preds = %145
  %155 = icmp samesign ugt i64 %151, 14
  call void @llvm.assume(i1 %155)
  %156 = icmp ult i64 %151, 9223372036854775807
  call void @llvm.assume(i1 %156)
  %157 = icmp samesign ult i64 %146, %151
  br i1 %157, label %174, label %158

158:                                              ; preds = %154, %152
  %159 = phi i64 [ %151, %154 ], [ 15, %152 ]
  %160 = icmp eq i64 %148, 9223372036854775807
  br i1 %160, label %70, label %161

161:                                              ; preds = %158
  %162 = shl nuw i64 %159, 1
  %163 = icmp ult i64 %148, %162
  %164 = call i64 @llvm.umin.i64(i64 %162, i64 9223372036854775806)
  %165 = select i1 %163, i64 %164, i64 %148
  %166 = add nuw nsw i64 %165, 1
  %167 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %166) #26
          to label %168 unwind label %93

168:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %167, ptr align 1 %149, i64 %146, i1 false)
  br i1 %150, label %169, label %171

169:                                              ; preds = %168
  %170 = icmp samesign ult i64 %146, 16
  call void @llvm.assume(i1 %170)
  br label %173

171:                                              ; preds = %168
  %172 = add i64 %151, 1
  call void @_ZdlPvm(ptr noundef %149, i64 noundef %172) #27
  br label %173

173:                                              ; preds = %171, %169
  store ptr %167, ptr %0, align 8, !tbaa !18
  store i64 %165, ptr %4, align 8, !tbaa !8
  br label %174

174:                                              ; preds = %173, %154, %152
  %175 = phi ptr [ %149, %154 ], [ %167, %173 ], [ %149, %152 ]
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %146
  store i8 58, ptr %176, align 1, !tbaa !8
  store i64 %148, ptr %5, align 8, !tbaa !21
  %177 = load ptr, ptr %0, align 8, !tbaa !18
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 %148
  store i8 0, ptr %178, align 1, !tbaa !8
  %179 = load ptr, ptr %1, align 8, !tbaa !67
  %180 = getelementptr inbounds nuw %"struct.std::pair", ptr %179, i64 %51, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !18
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 8
  %183 = load i64, ptr %182, align 8, !tbaa !21
  %184 = icmp ult i64 %183, 9223372036854775807
  call void @llvm.assume(i1 %184)
  %185 = load i64, ptr %5, align 8, !tbaa !21
  %186 = icmp ult i64 %185, 9223372036854775807
  call void @llvm.assume(i1 %186)
  %187 = sub nuw nsw i64 9223372036854775806, %185
  %188 = icmp samesign ult i64 %187, %183
  br i1 %188, label %70, label %189

189:                                              ; preds = %174
  %190 = add nuw i64 %185, %183
  %191 = load ptr, ptr %0, align 8, !tbaa !18
  %192 = icmp eq ptr %191, %4
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = icmp samesign ult i64 %185, 16
  call void @llvm.assume(i1 %194)
  br label %195

195:                                              ; preds = %193, %189
  %196 = load i64, ptr %4, align 8
  %197 = select i1 %192, i64 15, i64 %196
  %198 = icmp samesign ugt i64 %197, 14
  call void @llvm.assume(i1 %198)
  %199 = icmp ult i64 %197, 9223372036854775807
  call void @llvm.assume(i1 %199)
  %200 = icmp ugt i64 %190, %197
  br i1 %200, label %209, label %201

201:                                              ; preds = %195
  %202 = icmp eq i64 %183, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds nuw i8, ptr %191, i64 %185
  %205 = icmp eq i64 %183, 1
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i8, ptr %181, align 1, !tbaa !8
  store i8 %207, ptr %204, align 1, !tbaa !8
  br label %210

208:                                              ; preds = %203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %204, ptr align 1 %181, i64 %183, i1 false)
  br label %210

209:                                              ; preds = %195
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %185, i64 noundef 0, ptr noundef %181, i64 noundef %183)
          to label %210 unwind label %93

210:                                              ; preds = %208, %206, %201, %209
  store i64 %190, ptr %5, align 8, !tbaa !21
  %211 = load ptr, ptr %0, align 8, !tbaa !18
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 %190
  store i8 0, ptr %212, align 1, !tbaa !8
  %213 = add nuw nsw i64 %51, 1
  %214 = load ptr, ptr %7, align 8, !tbaa !69
  %215 = load ptr, ptr %1, align 8, !tbaa !67
  %216 = ptrtoint ptr %214 to i64
  %217 = ptrtoint ptr %215 to i64
  %218 = sub i64 %216, %217
  %219 = ashr exact i64 %218, 6
  %220 = icmp sgt i64 %219, -1
  call void @llvm.assume(i1 %220)
  %221 = icmp samesign ult i64 %213, %219
  br i1 %221, label %49, label %18, !llvm.loop !189

222:                                              ; preds = %97
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %238

224:                                              ; preds = %133
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %228

226:                                              ; preds = %111
  %227 = landingpad { ptr, i32 }
          cleanup
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi { ptr, i32 } [ %225, %224 ], [ %227, %226 ]
  %230 = load ptr, ptr %3, align 8, !tbaa !18
  %231 = icmp eq ptr %230, %17
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i64, ptr %16, align 8, !tbaa !21
  %234 = icmp ult i64 %233, 16
  call void @llvm.assume(i1 %234)
  br label %238

235:                                              ; preds = %228
  %236 = load i64, ptr %17, align 8, !tbaa !8
  %237 = add i64 %236, 1
  call void @_ZdlPvm(ptr noundef %230, i64 noundef %237) #27
  br label %238

238:                                              ; preds = %235, %232, %222
  %239 = phi { ptr, i32 } [ %223, %222 ], [ %229, %232 ], [ %229, %235 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %249

240:                                              ; preds = %36, %34
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %249

242:                                              ; preds = %2, %48, %27, %25
  %243 = phi i64 [ %22, %27 ], [ %22, %48 ], [ %22, %25 ], [ 2, %2 ]
  %244 = phi i64 [ %19, %27 ], [ %19, %48 ], [ %19, %25 ], [ 1, %2 ]
  %245 = phi ptr [ %20, %27 ], [ %42, %48 ], [ %20, %25 ], [ %4, %2 ]
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 %244
  store i8 125, ptr %246, align 1, !tbaa !8
  store i64 %243, ptr %5, align 8, !tbaa !21
  %247 = load ptr, ptr %0, align 8, !tbaa !18
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 %243
  store i8 0, ptr %248, align 1, !tbaa !8
  ret void

249:                                              ; preds = %93, %95, %238, %240
  %250 = phi { ptr, i32 } [ %241, %240 ], [ %239, %238 ], [ %94, %93 ], [ %96, %95 ]
  %251 = load ptr, ptr %0, align 8, !tbaa !18
  %252 = icmp eq ptr %251, %4
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i64, ptr %5, align 8, !tbaa !21
  %255 = icmp ult i64 %254, 16
  call void @llvm.assume(i1 %255)
  br label %259

256:                                              ; preds = %249
  %257 = load i64, ptr %4, align 8, !tbaa !8
  %258 = add i64 %257, 1
  call void @_ZdlPvm(ptr noundef %251, i64 noundef %258) #27
  br label %259

259:                                              ; preds = %256, %253
  resume { ptr, i32 } %250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_appendIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = load ptr, ptr %0, align 8, !tbaa !67
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 6
  %10 = icmp sgt i64 %9, -1
  tail call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %8, 9223372036854775744
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %15 = add nuw nsw i64 %14, %9
  %16 = tail call noundef i64 @llvm.umin.i64(i64 %15, i64 144115188075855871)
  %17 = shl nuw nsw i64 %16, 6
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %17) #26
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %20, ptr %19, align 8, !tbaa !14
  %21 = load ptr, ptr %1, align 8, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21
  %27 = icmp ult i64 %26, 16
  tail call void @llvm.assume(i1 %27)
  %28 = add nuw nsw i64 %26, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %22, i64 %28, i1 false)
  br label %33

29:                                               ; preds = %13
  store ptr %21, ptr %19, align 8, !tbaa !18
  %30 = load i64, ptr %22, align 8, !tbaa !8
  store i64 %30, ptr %20, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i64 [ %32, %29 ], [ %26, %24 ]
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %34, ptr %37, align 8, !tbaa !21
  store ptr %22, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %35, align 8, !tbaa !21
  store i8 0, ptr %22, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %40, ptr %38, align 8, !tbaa !14
  %41 = load ptr, ptr %39, align 8, !tbaa !18
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %46 = load i64, ptr %45, align 8, !tbaa !21
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  %48 = add nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(1) %42, i64 %48, i1 false)
  br label %53

49:                                               ; preds = %33
  store ptr %41, ptr %38, align 8, !tbaa !18
  %50 = load i64, ptr %42, align 8, !tbaa !8
  store i64 %50, ptr %40, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %52 = load i64, ptr %51, align 8, !tbaa !21
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i64 [ %46, %44 ], [ %52, %49 ]
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %56 = icmp ult i64 %54, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i64 %54, ptr %57, align 8, !tbaa !21
  store ptr %42, ptr %39, align 8, !tbaa !18
  store i64 0, ptr %55, align 8, !tbaa !21
  store i8 0, ptr %42, align 8, !tbaa !8
  %58 = icmp eq ptr %5, %4
  br i1 %58, label %103, label %59

59:                                               ; preds = %53, %95
  %60 = phi ptr [ %101, %95 ], [ %18, %53 ]
  %61 = phi ptr [ %100, %95 ], [ %5, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %62, ptr %60, align 8, !tbaa !14, !alias.scope !190, !noalias !193
  %63 = load ptr, ptr %61, align 8, !tbaa !18, !alias.scope !193, !noalias !190
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %64, i64 %70, i1 false), !alias.scope !195
  br label %75

71:                                               ; preds = %59
  store ptr %63, ptr %60, align 8, !tbaa !18, !alias.scope !190, !noalias !193
  %72 = load i64, ptr %64, align 8, !tbaa !8, !alias.scope !193, !noalias !190
  store i64 %72, ptr %62, align 8, !tbaa !8, !alias.scope !190, !noalias !193
  %73 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %74, %71 ], [ %68, %66 ]
  %77 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %78 = icmp ult i64 %76, 9223372036854775807
  tail call void @llvm.assume(i1 %78)
  %79 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %76, ptr %79, align 8, !tbaa !21, !alias.scope !190, !noalias !193
  store ptr %64, ptr %61, align 8, !tbaa !18, !alias.scope !193, !noalias !190
  store i64 0, ptr %77, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  store i8 0, ptr %64, align 1, !tbaa !8, !alias.scope !193, !noalias !190
  %80 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %82, ptr %80, align 8, !tbaa !14, !alias.scope !190, !noalias !193
  %83 = load ptr, ptr %81, align 8, !tbaa !18, !alias.scope !193, !noalias !190
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 48
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %88 = load i64, ptr %87, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  %89 = icmp ult i64 %88, 16
  tail call void @llvm.assume(i1 %89)
  %90 = add nuw nsw i64 %88, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %82, ptr noundef nonnull align 8 dereferenceable(1) %84, i64 %90, i1 false), !alias.scope !195
  br label %95

91:                                               ; preds = %75
  store ptr %83, ptr %80, align 8, !tbaa !18, !alias.scope !190, !noalias !193
  %92 = load i64, ptr %84, align 8, !tbaa !8, !alias.scope !193, !noalias !190
  store i64 %92, ptr %82, align 8, !tbaa !8, !alias.scope !190, !noalias !193
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i64 [ %88, %86 ], [ %94, %91 ]
  %97 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %98 = icmp ult i64 %96, 9223372036854775807
  tail call void @llvm.assume(i1 %98)
  %99 = getelementptr inbounds nuw i8, ptr %60, i64 40
  store i64 %96, ptr %99, align 8, !tbaa !21, !alias.scope !190, !noalias !193
  store ptr %84, ptr %81, align 8, !tbaa !18, !alias.scope !193, !noalias !190
  store i64 0, ptr %97, align 8, !tbaa !21, !alias.scope !193, !noalias !190
  store i8 0, ptr %84, align 1, !tbaa !8, !alias.scope !193, !noalias !190
  %100 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %102 = icmp eq ptr %100, %4
  br i1 %102, label %103, label %59, !llvm.loop !167

103:                                              ; preds = %95, %53
  %104 = phi ptr [ %18, %53 ], [ %101, %95 ]
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %106 = icmp eq ptr %5, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %105, align 8, !tbaa !71
  %109 = ptrtoint ptr %108 to i64
  %110 = sub i64 %109, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %110) #27
  br label %111

111:                                              ; preds = %103, %107
  %112 = getelementptr inbounds nuw i8, ptr %104, i64 64
  store ptr %18, ptr %0, align 8, !tbaa !67
  store ptr %112, ptr %3, align 8, !tbaa !69
  %113 = getelementptr inbounds nuw %"struct.std::pair", ptr %18, i64 %16
  store ptr %113, ptr %105, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_RSM_(ptr %0, ptr %16, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi ptr [ %21, %19 ], [ %16, %18 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -64
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_RSM_(ptr %0, ptr nonnull %21, ptr nonnull %21, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %6
  %24 = icmp sgt i64 %23, 64
  br i1 %24, label %19, label %25, !llvm.loop !196

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
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
  br i1 %35, label %13, label %36, !llvm.loop !197

36:                                               ; preds = %26, %3, %25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_RSM_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::pair", align 8
  %5 = alloca %"struct.std::pair", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 6
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %117, label %11

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

24:                                               ; preds = %114, %11
  %25 = phi i64 [ %13, %11 ], [ %96, %114 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %26 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !21
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  %34 = add nuw nsw i64 %32, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %28, i64 %34, i1 false)
  br label %39

35:                                               ; preds = %24
  store ptr %27, ptr %4, align 8, !tbaa !18
  %36 = load i64, ptr %28, align 8, !tbaa !8
  store i64 %36, ptr %14, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !21
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi ptr [ %27, %35 ], [ %14, %30 ]
  %41 = phi i64 [ %38, %35 ], [ %32, %30 ]
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %43 = icmp ult i64 %41, 9223372036854775807
  call void @llvm.assume(i1 %43)
  store i64 %41, ptr %15, align 8, !tbaa !21
  store ptr %28, ptr %26, align 8, !tbaa !18
  store i64 0, ptr %42, align 8, !tbaa !21
  store i8 0, ptr %28, align 1, !tbaa !8
  %44 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %17, ptr %16, align 8, !tbaa !14
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %50 = load i64, ptr %49, align 8, !tbaa !21
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  %52 = add nuw nsw i64 %50, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(1) %46, i64 %52, i1 false)
  br label %57

53:                                               ; preds = %39
  store ptr %45, ptr %16, align 8, !tbaa !18
  %54 = load i64, ptr %46, align 8, !tbaa !8
  store i64 %54, ptr %17, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %56 = load i64, ptr %55, align 8, !tbaa !21
  br label %57

57:                                               ; preds = %48, %53
  %58 = phi ptr [ %17, %48 ], [ %45, %53 ]
  %59 = phi i64 [ %50, %48 ], [ %56, %53 ]
  %60 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %61 = icmp ult i64 %59, 9223372036854775807
  call void @llvm.assume(i1 %61)
  store i64 %59, ptr %18, align 8, !tbaa !21
  store ptr %46, ptr %44, align 8, !tbaa !18
  store i64 0, ptr %60, align 8, !tbaa !21
  store i8 0, ptr %46, align 1, !tbaa !8
  store ptr %19, ptr %5, align 8, !tbaa !14
  %62 = icmp eq ptr %40, %14
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = icmp samesign ult i64 %41, 16
  call void @llvm.assume(i1 %64)
  %65 = add nuw nsw i64 %41, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %14, i64 %65, i1 false)
  br label %68

66:                                               ; preds = %57
  store ptr %40, ptr %5, align 8, !tbaa !18
  %67 = load i64, ptr %14, align 8, !tbaa !8
  store i64 %67, ptr %19, align 8, !tbaa !8
  br label %68

68:                                               ; preds = %66, %63
  store i64 %41, ptr %20, align 8, !tbaa !21
  store ptr %14, ptr %4, align 8, !tbaa !18
  store i64 0, ptr %15, align 8, !tbaa !21
  store i8 0, ptr %14, align 8, !tbaa !8
  store ptr %22, ptr %21, align 8, !tbaa !14
  %69 = icmp eq ptr %58, %17
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = icmp samesign ult i64 %59, 16
  call void @llvm.assume(i1 %71)
  %72 = add nuw nsw i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %72, i1 false)
  br label %75

73:                                               ; preds = %68
  store ptr %58, ptr %21, align 8, !tbaa !18
  %74 = load i64, ptr %17, align 8, !tbaa !8
  store i64 %74, ptr %22, align 8, !tbaa !8
  br label %75

75:                                               ; preds = %70, %73
  store i64 %59, ptr %23, align 8, !tbaa !21
  store ptr %17, ptr %16, align 8, !tbaa !18
  store i64 0, ptr %18, align 8, !tbaa !21
  store i8 0, ptr %17, align 8, !tbaa !8
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_(ptr nonnull %0, i64 noundef %25, i64 noundef %9, ptr noundef nonnull %5)
          to label %76 unwind label %115

76:                                               ; preds = %75
  %77 = load ptr, ptr %21, align 8, !tbaa !18
  %78 = icmp eq ptr %77, %22
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, ptr %23, align 8, !tbaa !21
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %85

82:                                               ; preds = %76
  %83 = load i64, ptr %22, align 8, !tbaa !8
  %84 = add i64 %83, 1
  call void @_ZdlPvm(ptr noundef %77, i64 noundef %84) #27
  br label %85

85:                                               ; preds = %82, %79
  %86 = load ptr, ptr %5, align 8, !tbaa !18
  %87 = icmp eq ptr %86, %19
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, ptr %20, align 8, !tbaa !21
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  br label %94

91:                                               ; preds = %85
  %92 = load i64, ptr %19, align 8, !tbaa !8
  %93 = add i64 %92, 1
  call void @_ZdlPvm(ptr noundef %86, i64 noundef %93) #27
  br label %94

94:                                               ; preds = %88, %91
  %95 = icmp eq i64 %25, 0
  %96 = add nsw i64 %25, -1
  %97 = load ptr, ptr %16, align 8, !tbaa !18
  %98 = icmp eq ptr %97, %17
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i64, ptr %18, align 8, !tbaa !21
  %101 = icmp ult i64 %100, 16
  call void @llvm.assume(i1 %101)
  br label %105

102:                                              ; preds = %94
  %103 = load i64, ptr %17, align 8, !tbaa !8
  %104 = add i64 %103, 1
  call void @_ZdlPvm(ptr noundef %97, i64 noundef %104) #27
  br label %105

105:                                              ; preds = %102, %99
  %106 = load ptr, ptr %4, align 8, !tbaa !18
  %107 = icmp eq ptr %106, %14
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i64, ptr %15, align 8, !tbaa !21
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %114

111:                                              ; preds = %105
  %112 = load i64, ptr %14, align 8, !tbaa !8
  %113 = add i64 %112, 1
  call void @_ZdlPvm(ptr noundef %106, i64 noundef %113) #27
  br label %114

114:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br i1 %95, label %117, label %24, !llvm.loop !198

115:                                              ; preds = %75
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  resume { ptr, i32 } %116

117:                                              ; preds = %114, %3
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_RSM_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
  %5 = alloca %"struct.std::pair", align 8
  %6 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %7, ptr %5, align 8, !tbaa !14
  %8 = load ptr, ptr %2, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !21
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(1) %9, i64 %15, i1 false)
  br label %20

16:                                               ; preds = %4
  store ptr %8, ptr %5, align 8, !tbaa !18
  %17 = load i64, ptr %9, align 8, !tbaa !8
  store i64 %17, ptr %7, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !21
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i64 [ %19, %16 ], [ %13, %11 ]
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %23)
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %21, ptr %24, align 8, !tbaa !21
  store ptr %9, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %22, align 8, !tbaa !21
  store i8 0, ptr %9, align 1, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %27, ptr %25, align 8, !tbaa !14
  %28 = load ptr, ptr %26, align 8, !tbaa !18
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %33 = load i64, ptr %32, align 8, !tbaa !21
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  %35 = add nuw nsw i64 %33, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %29, i64 %35, i1 false)
  br label %40

36:                                               ; preds = %20
  store ptr %28, ptr %25, align 8, !tbaa !18
  %37 = load i64, ptr %29, align 8, !tbaa !8
  store i64 %37, ptr %27, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %39 = load i64, ptr %38, align 8, !tbaa !21
  br label %40

40:                                               ; preds = %31, %36
  %41 = phi i64 [ %33, %31 ], [ %39, %36 ]
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %43 = icmp ult i64 %41, 9223372036854775807
  call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %41, ptr %44, align 8, !tbaa !21
  store ptr %29, ptr %26, align 8, !tbaa !18
  store i64 0, ptr %42, align 8, !tbaa !21
  store i8 0, ptr %29, align 1, !tbaa !8
  %45 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %0) #15
  %46 = ptrtoint ptr %1 to i64
  %47 = ptrtoint ptr %0 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 6
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %50, ptr %6, align 8, !tbaa !14
  %51 = load ptr, ptr %5, align 8, !tbaa !18
  %52 = icmp eq ptr %51, %7
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i64, ptr %24, align 8, !tbaa !21
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %56, i1 false)
  br label %60

57:                                               ; preds = %40
  store ptr %51, ptr %6, align 8, !tbaa !18
  %58 = load i64, ptr %7, align 8, !tbaa !8
  store i64 %58, ptr %50, align 8, !tbaa !8
  %59 = load i64, ptr %24, align 8, !tbaa !21
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %59, %57 ], [ %54, %53 ]
  %62 = icmp ult i64 %61, 9223372036854775807
  call void @llvm.assume(i1 %62)
  %63 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %61, ptr %63, align 8, !tbaa !21
  store ptr %7, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %24, align 8, !tbaa !21
  store i8 0, ptr %7, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %65, ptr %64, align 8, !tbaa !14
  %66 = load ptr, ptr %25, align 8, !tbaa !18
  %67 = icmp eq ptr %66, %27
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i64, ptr %44, align 8, !tbaa !21
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  %71 = add nuw nsw i64 %69, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %65, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %71, i1 false)
  br label %75

72:                                               ; preds = %60
  store ptr %66, ptr %64, align 8, !tbaa !18
  %73 = load i64, ptr %27, align 8, !tbaa !8
  store i64 %73, ptr %65, align 8, !tbaa !8
  %74 = load i64, ptr %44, align 8, !tbaa !21
  br label %75

75:                                               ; preds = %68, %72
  %76 = phi i64 [ %69, %68 ], [ %74, %72 ]
  %77 = icmp ult i64 %76, 9223372036854775807
  call void @llvm.assume(i1 %77)
  %78 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %76, ptr %78, align 8, !tbaa !21
  store ptr %27, ptr %25, align 8, !tbaa !18
  store i64 0, ptr %44, align 8, !tbaa !21
  store i8 0, ptr %27, align 8, !tbaa !8
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_SM_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %49, ptr noundef nonnull %6)
          to label %79 unwind label %116

79:                                               ; preds = %75
  %80 = load ptr, ptr %64, align 8, !tbaa !18
  %81 = icmp eq ptr %80, %65
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, ptr %78, align 8, !tbaa !21
  %84 = icmp ult i64 %83, 16
  call void @llvm.assume(i1 %84)
  br label %88

85:                                               ; preds = %79
  %86 = load i64, ptr %65, align 8, !tbaa !8
  %87 = add i64 %86, 1
  call void @_ZdlPvm(ptr noundef %80, i64 noundef %87) #27
  br label %88

88:                                               ; preds = %85, %82
  %89 = load ptr, ptr %6, align 8, !tbaa !18
  %90 = icmp eq ptr %89, %50
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i64, ptr %63, align 8, !tbaa !21
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %97

94:                                               ; preds = %88
  %95 = load i64, ptr %50, align 8, !tbaa !8
  %96 = add i64 %95, 1
  call void @_ZdlPvm(ptr noundef %89, i64 noundef %96) #27
  br label %97

97:                                               ; preds = %91, %94
  %98 = load ptr, ptr %25, align 8, !tbaa !18
  %99 = icmp eq ptr %98, %27
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, ptr %44, align 8, !tbaa !21
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  br label %106

103:                                              ; preds = %97
  %104 = load i64, ptr %27, align 8, !tbaa !8
  %105 = add i64 %104, 1
  call void @_ZdlPvm(ptr noundef %98, i64 noundef %105) #27
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr %5, align 8, !tbaa !18
  %108 = icmp eq ptr %107, %7
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, ptr %24, align 8, !tbaa !21
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %115

112:                                              ; preds = %106
  %113 = load i64, ptr %7, align 8, !tbaa !8
  %114 = add i64 %113, 1
  call void @_ZdlPvm(ptr noundef %107, i64 noundef %114) #27
  br label %115

115:                                              ; preds = %109, %112
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void

116:                                              ; preds = %75
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #15
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  resume { ptr, i32 } %117
}

; Function Attrs: mustprogress uwtable
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
  %17 = load i64, ptr %16, align 8, !tbaa !21
  %18 = icmp ult i64 %17, 9223372036854775807
  tail call void @llvm.assume(i1 %18)
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !21
  %21 = icmp ult i64 %20, 9223372036854775807
  tail call void @llvm.assume(i1 %21)
  %22 = tail call i64 @llvm.umin.i64(i64 %20, i64 %17)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %9
  %25 = load ptr, ptr %15, align 8, !tbaa !18
  %26 = load ptr, ptr %13, align 8, !tbaa !18
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
  br i1 %41, label %9, label %42, !llvm.loop !199

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
  store ptr %58, ptr %5, align 8, !tbaa !14
  %59 = load ptr, ptr %3, align 8, !tbaa !18
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %64 = load i64, ptr %63, align 8, !tbaa !21
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %58, ptr noundef nonnull align 8 dereferenceable(1) %60, i64 %66, i1 false)
  br label %71

67:                                               ; preds = %56
  store ptr %59, ptr %5, align 8, !tbaa !18
  %68 = load i64, ptr %60, align 8, !tbaa !8
  store i64 %68, ptr %58, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !21
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i64 [ %70, %67 ], [ %64, %62 ]
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %74 = icmp ult i64 %72, 9223372036854775807
  call void @llvm.assume(i1 %74)
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %72, ptr %75, align 8, !tbaa !21
  store ptr %60, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %73, align 8, !tbaa !21
  store i8 0, ptr %60, align 1, !tbaa !8
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %78, ptr %76, align 8, !tbaa !14
  %79 = load ptr, ptr %77, align 8, !tbaa !18
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %84 = load i64, ptr %83, align 8, !tbaa !21
  %85 = icmp ult i64 %84, 16
  call void @llvm.assume(i1 %85)
  %86 = add nuw nsw i64 %84, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %78, ptr noundef nonnull align 8 dereferenceable(1) %80, i64 %86, i1 false)
  br label %91

87:                                               ; preds = %71
  store ptr %79, ptr %76, align 8, !tbaa !18
  %88 = load i64, ptr %80, align 8, !tbaa !8
  store i64 %88, ptr %78, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %90 = load i64, ptr %89, align 8, !tbaa !21
  br label %91

91:                                               ; preds = %82, %87
  %92 = phi i64 [ %84, %82 ], [ %90, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %94 = icmp ult i64 %92, 9223372036854775807
  call void @llvm.assume(i1 %94)
  %95 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %92, ptr %95, align 8, !tbaa !21
  store ptr %80, ptr %77, align 8, !tbaa !18
  store i64 0, ptr %93, align 8, !tbaa !21
  store i8 0, ptr %80, align 1, !tbaa !8
  %96 = icmp sgt i64 %57, %1
  br i1 %96, label %97, label %126

97:                                               ; preds = %91, %122
  %98 = phi i64 [ %100, %122 ], [ %57, %91 ]
  %99 = add nsw i64 %98, -1
  %100 = sdiv i64 %99, 2
  %101 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %100
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %103 = load i64, ptr %102, align 8, !tbaa !21
  %104 = icmp ult i64 %103, 9223372036854775807
  call void @llvm.assume(i1 %104)
  %105 = load i64, ptr %75, align 8, !tbaa !21
  %106 = icmp ult i64 %105, 9223372036854775807
  call void @llvm.assume(i1 %106)
  %107 = call i64 @llvm.umin.i64(i64 %105, i64 %103)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %97
  %110 = load ptr, ptr %5, align 8, !tbaa !18
  %111 = load ptr, ptr %101, align 8, !tbaa !18
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
  br i1 %125, label %97, label %126, !llvm.loop !200

126:                                              ; preds = %122, %119, %91
  %127 = phi i64 [ %57, %91 ], [ %98, %119 ], [ %100, %122 ]
  %128 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 %127
  %129 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %128, ptr noundef nonnull align 8 dereferenceable(64) %5) #15
  %130 = load ptr, ptr %76, align 8, !tbaa !18
  %131 = icmp eq ptr %130, %78
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i64, ptr %95, align 8, !tbaa !21
  %134 = icmp ult i64 %133, 16
  call void @llvm.assume(i1 %134)
  br label %138

135:                                              ; preds = %126
  %136 = load i64, ptr %78, align 8, !tbaa !8
  %137 = add i64 %136, 1
  call void @_ZdlPvm(ptr noundef %130, i64 noundef %137) #27
  br label %138

138:                                              ; preds = %135, %132
  %139 = load ptr, ptr %5, align 8, !tbaa !18
  %140 = icmp eq ptr %139, %58
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64, ptr %75, align 8, !tbaa !21
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %147

144:                                              ; preds = %138
  %145 = load i64, ptr %58, align 8, !tbaa !8
  %146 = add i64 %145, 1
  call void @_ZdlPvm(ptr noundef %139, i64 noundef %146) #27
  br label %147

147:                                              ; preds = %141, %144
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  %10 = load ptr, ptr %1, align 8, !tbaa !18
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %17, label %36

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13, %6
  %18 = phi ptr [ %14, %13 ], [ %10, %6 ]
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !21
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  %22 = icmp eq ptr %1, %0
  br i1 %22, label %49, label %23, !prof !72

23:                                               ; preds = %17
  switch i64 %20, label %26 [
    i64 0, label %27
    i64 1, label %24
  ]

24:                                               ; preds = %23
  %25 = load i8, ptr %18, align 1, !tbaa !8
  store i8 %25, ptr %3, align 1, !tbaa !8
  br label %27

26:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %18, i64 %20, i1 false)
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = load i64, ptr %19, align 8, !tbaa !21
  %29 = icmp ult i64 %28, 9223372036854775807
  tail call void @llvm.assume(i1 %29)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %28, ptr %30, align 8, !tbaa !21
  %31 = load ptr, ptr %0, align 8, !tbaa !18
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %28
  store i8 0, ptr %32, align 1, !tbaa !8
  %33 = load ptr, ptr %1, align 8, !tbaa !18
  br label %49

34:                                               ; preds = %13
  %35 = load i64, ptr %4, align 8, !tbaa !8
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi ptr [ %15, %34 ], [ %11, %6 ]
  %38 = phi ptr [ %14, %34 ], [ %10, %6 ]
  %39 = phi ptr [ %3, %34 ], [ null, %6 ]
  %40 = phi i64 [ %35, %34 ], [ undef, %6 ]
  store ptr %38, ptr %0, align 8, !tbaa !18
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = icmp ult i64 %42, 9223372036854775807
  tail call void @llvm.assume(i1 %43)
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %42, ptr %44, align 8, !tbaa !21
  %45 = load i64, ptr %37, align 8, !tbaa !8
  store i64 %45, ptr %4, align 8, !tbaa !8
  %46 = icmp eq ptr %39, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store ptr %39, ptr %1, align 8, !tbaa !18
  store i64 %40, ptr %37, align 8, !tbaa !8
  br label %49

48:                                               ; preds = %36
  store ptr %37, ptr %1, align 8, !tbaa !18
  br label %49

49:                                               ; preds = %17, %27, %47, %48
  %50 = phi ptr [ %33, %27 ], [ %39, %47 ], [ %37, %48 ], [ %18, %17 ]
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %51, align 8, !tbaa !21
  store i8 0, ptr %50, align 1, !tbaa !8
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load ptr, ptr %53, align 8, !tbaa !18
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %59 = load i64, ptr %58, align 8, !tbaa !21
  %60 = icmp ult i64 %59, 16
  tail call void @llvm.assume(i1 %60)
  %61 = load ptr, ptr %52, align 8, !tbaa !18
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %68, label %87

64:                                               ; preds = %49
  %65 = load ptr, ptr %52, align 8, !tbaa !18
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64, %57
  %69 = phi ptr [ %65, %64 ], [ %61, %57 ]
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %71 = load i64, ptr %70, align 8, !tbaa !21
  %72 = icmp ult i64 %71, 16
  tail call void @llvm.assume(i1 %72)
  %73 = icmp eq ptr %1, %0
  br i1 %73, label %100, label %74, !prof !72

74:                                               ; preds = %68
  switch i64 %71, label %77 [
    i64 0, label %78
    i64 1, label %75
  ]

75:                                               ; preds = %74
  %76 = load i8, ptr %69, align 1, !tbaa !8
  store i8 %76, ptr %54, align 1, !tbaa !8
  br label %78

77:                                               ; preds = %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %69, i64 %71, i1 false)
  br label %78

78:                                               ; preds = %77, %75, %74
  %79 = load i64, ptr %70, align 8, !tbaa !21
  %80 = icmp ult i64 %79, 9223372036854775807
  tail call void @llvm.assume(i1 %80)
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %79, ptr %81, align 8, !tbaa !21
  %82 = load ptr, ptr %53, align 8, !tbaa !18
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %79
  store i8 0, ptr %83, align 1, !tbaa !8
  %84 = load ptr, ptr %52, align 8, !tbaa !18
  br label %100

85:                                               ; preds = %64
  %86 = load i64, ptr %55, align 8, !tbaa !8
  br label %87

87:                                               ; preds = %85, %57
  %88 = phi ptr [ %66, %85 ], [ %62, %57 ]
  %89 = phi ptr [ %65, %85 ], [ %61, %57 ]
  %90 = phi ptr [ %54, %85 ], [ null, %57 ]
  %91 = phi i64 [ %86, %85 ], [ undef, %57 ]
  store ptr %89, ptr %53, align 8, !tbaa !18
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %93 = load i64, ptr %92, align 8, !tbaa !21
  %94 = icmp ult i64 %93, 9223372036854775807
  tail call void @llvm.assume(i1 %94)
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %93, ptr %95, align 8, !tbaa !21
  %96 = load i64, ptr %88, align 8, !tbaa !8
  store i64 %96, ptr %55, align 8, !tbaa !8
  %97 = icmp eq ptr %90, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %87
  store ptr %90, ptr %52, align 8, !tbaa !18
  store i64 %91, ptr %88, align 8, !tbaa !8
  br label %100

99:                                               ; preds = %87
  store ptr %88, ptr %52, align 8, !tbaa !18
  br label %100

100:                                              ; preds = %68, %78, %98, %99
  %101 = phi ptr [ %84, %78 ], [ %90, %98 ], [ %88, %99 ], [ %69, %68 ]
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %102, align 8, !tbaa !21
  store i8 0, ptr %101, align 1, !tbaa !8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SJ_SJ_SM_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !21
  %7 = icmp ult i64 %6, 9223372036854775807
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = icmp ult i64 %9, 9223372036854775807
  tail call void @llvm.assume(i1 %10)
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !18
  %15 = load ptr, ptr %1, align 8, !tbaa !18
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
  %27 = load i64, ptr %26, align 8, !tbaa !21
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
  %49 = load ptr, ptr %3, align 8, !tbaa !18
  %50 = load ptr, ptr %1, align 8, !tbaa !18
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
  %66 = load ptr, ptr %3, align 8, !tbaa !18
  %67 = load ptr, ptr %1, align 8, !tbaa !18
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
  %82 = load ptr, ptr %3, align 8, !tbaa !18
  %83 = load ptr, ptr %2, align 8, !tbaa !18
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
  %96 = phi ptr [ %2, %42 ], [ %61, %58 ], [ %1, %75 ], [ %94, %91 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %96) #15
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %98) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEESJ_SJ_SJ_SJ_SM_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %5

5:                                                ; preds = %3, %55
  %6 = phi ptr [ %0, %3 ], [ %30, %55 ]
  %7 = phi ptr [ %1, %3 ], [ %33, %55 ]
  %8 = load i64, ptr %4, align 8, !tbaa !21
  %9 = icmp ult i64 %8, 9223372036854775807
  tail call void @llvm.assume(i1 %9)
  br label %10

10:                                               ; preds = %27, %5
  %11 = phi ptr [ %6, %5 ], [ %30, %27 ]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !21
  %14 = icmp ult i64 %13, 9223372036854775807
  tail call void @llvm.assume(i1 %14)
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %13)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !tbaa !18
  %19 = load ptr, ptr %11, align 8, !tbaa !18
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
  br i1 %29, label %10, label %31, !llvm.loop !201

31:                                               ; preds = %27, %49
  %32 = phi ptr [ %33, %49 ], [ %7, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 -64
  %34 = getelementptr inbounds i8, ptr %32, i64 -56
  %35 = load i64, ptr %34, align 8, !tbaa !21
  %36 = icmp ult i64 %35, 9223372036854775807
  tail call void @llvm.assume(i1 %36)
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 %8)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %33, align 8, !tbaa !18
  %41 = load ptr, ptr %2, align 8, !tbaa !18
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
  br i1 %51, label %31, label %52, !llvm.loop !202

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
  br label %5, !llvm.loop !203
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %11 = load i64, ptr %10, align 8, !tbaa !21
  %12 = icmp ult i64 %11, 16
  tail call void @llvm.assume(i1 %12)
  %13 = load ptr, ptr %1, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !21
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
  %29 = load i64, ptr %17, align 8, !tbaa !21
  %30 = icmp ult i64 %29, 9223372036854775807
  tail call void @llvm.assume(i1 %30)
  store i64 %29, ptr %10, align 8, !tbaa !21
  store i64 0, ptr %17, align 8, !tbaa !21
  %31 = load ptr, ptr %1, align 8, !tbaa !18
  store i8 0, ptr %31, align 1, !tbaa !8
  br label %60

32:                                               ; preds = %22
  %33 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %33, i1 false)
  %34 = load i64, ptr %10, align 8, !tbaa !21
  %35 = icmp ult i64 %34, 9223372036854775807
  tail call void @llvm.assume(i1 %35)
  store i64 %34, ptr %17, align 8, !tbaa !21
  store i64 0, ptr %10, align 8, !tbaa !21
  %36 = load ptr, ptr %0, align 8, !tbaa !18
  store i8 0, ptr %36, align 1, !tbaa !8
  br label %60

37:                                               ; preds = %9
  %38 = load i64, ptr %14, align 8, !tbaa !8
  %39 = add nuw nsw i64 %11, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(1) %7, i64 %39, i1 false)
  store ptr %13, ptr %0, align 8, !tbaa !18
  store ptr %14, ptr %1, align 8, !tbaa !18
  store i64 %38, ptr %7, align 8, !tbaa !8
  br label %53

40:                                               ; preds = %5
  %41 = load i64, ptr %7, align 8, !tbaa !8
  %42 = load ptr, ptr %1, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !21
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
  %51 = load i64, ptr %43, align 8, !tbaa !8
  store i64 %51, ptr %7, align 8, !tbaa !8
  br label %52

52:                                               ; preds = %50, %45
  store i64 %41, ptr %43, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %26, %37, %23, %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !21
  %56 = icmp ult i64 %55, 9223372036854775807
  tail call void @llvm.assume(i1 %56)
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %58 = load i64, ptr %57, align 8, !tbaa !21
  %59 = icmp ult i64 %58, 9223372036854775807
  tail call void @llvm.assume(i1 %59)
  store i64 %58, ptr %54, align 8, !tbaa !21
  store i64 %55, ptr %57, align 8, !tbaa !21
  br label %60

60:                                               ; preds = %32, %27, %2, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %193, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %193, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %15

15:                                               ; preds = %8, %190
  %16 = phi ptr [ %6, %8 ], [ %191, %190 ]
  %17 = phi ptr [ %0, %8 ], [ %16, %190 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 72
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = icmp ult i64 %19, 9223372036854775807
  call void @llvm.assume(i1 %20)
  %21 = load i64, ptr %9, align 8, !tbaa !21
  %22 = icmp ult i64 %21, 9223372036854775807
  call void @llvm.assume(i1 %22)
  %23 = call i64 @llvm.umin.i64(i64 %21, i64 %19)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr %0, align 8, !tbaa !18
  %27 = load ptr, ptr %16, align 8, !tbaa !18
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
  br i1 %37, label %38, label %189

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  store ptr %10, ptr %3, align 8, !tbaa !14
  %39 = load ptr, ptr %16, align 8, !tbaa !18
  %40 = getelementptr inbounds nuw i8, ptr %17, i64 80
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = icmp samesign ult i64 %19, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %19, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(1) %40, i64 %44, i1 false)
  %45 = load i64, ptr %18, align 8, !tbaa !21
  br label %48

46:                                               ; preds = %38
  store ptr %39, ptr %3, align 8, !tbaa !18
  %47 = load i64, ptr %40, align 8, !tbaa !8
  store i64 %47, ptr %10, align 8, !tbaa !8
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %19, %46 ], [ %45, %42 ]
  %50 = icmp ult i64 %49, 9223372036854775807
  call void @llvm.assume(i1 %50)
  store i64 %49, ptr %11, align 8, !tbaa !21
  store ptr %40, ptr %16, align 8, !tbaa !18
  store i64 0, ptr %18, align 8, !tbaa !21
  store i8 0, ptr %40, align 1, !tbaa !8
  %51 = getelementptr inbounds nuw i8, ptr %17, i64 96
  store ptr %13, ptr %12, align 8, !tbaa !14
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = getelementptr inbounds nuw i8, ptr %17, i64 112
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds nuw i8, ptr %17, i64 104
  %57 = load i64, ptr %56, align 8, !tbaa !21
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  %59 = add nuw nsw i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(1) %53, i64 %59, i1 false)
  br label %62

60:                                               ; preds = %48
  store ptr %52, ptr %12, align 8, !tbaa !18
  %61 = load i64, ptr %53, align 8, !tbaa !8
  store i64 %61, ptr %13, align 8, !tbaa !8
  br label %62

62:                                               ; preds = %55, %60
  %63 = getelementptr inbounds nuw i8, ptr %17, i64 104
  %64 = load i64, ptr %63, align 8, !tbaa !21
  %65 = icmp ult i64 %64, 9223372036854775807
  call void @llvm.assume(i1 %65)
  store i64 %64, ptr %14, align 8, !tbaa !21
  store ptr %53, ptr %51, align 8, !tbaa !18
  store i64 0, ptr %63, align 8, !tbaa !21
  store i8 0, ptr %53, align 1, !tbaa !8
  %66 = getelementptr inbounds nuw i8, ptr %17, i64 128
  br label %67

67:                                               ; preds = %62, %165
  %68 = phi ptr [ %71, %165 ], [ %66, %62 ]
  %69 = phi ptr [ %70, %165 ], [ %16, %62 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 -64
  %71 = getelementptr inbounds i8, ptr %68, i64 -64
  %72 = load ptr, ptr %71, align 8, !tbaa !18
  %73 = getelementptr inbounds i8, ptr %68, i64 -48
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = getelementptr inbounds i8, ptr %68, i64 -56
  %77 = load i64, ptr %76, align 8, !tbaa !21
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  %79 = load ptr, ptr %70, align 8, !tbaa !18
  %80 = getelementptr inbounds i8, ptr %69, i64 -48
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %86, label %103

82:                                               ; preds = %67
  %83 = load ptr, ptr %70, align 8, !tbaa !18
  %84 = getelementptr inbounds i8, ptr %69, i64 -48
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %75, %82
  %87 = phi ptr [ %83, %82 ], [ %79, %75 ]
  %88 = getelementptr inbounds i8, ptr %69, i64 -56
  %89 = load i64, ptr %88, align 8, !tbaa !21
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  switch i64 %89, label %93 [
    i64 0, label %94
    i64 1, label %91
  ]

91:                                               ; preds = %86
  %92 = load i8, ptr %87, align 1, !tbaa !8
  store i8 %92, ptr %72, align 1, !tbaa !8
  br label %94

93:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %87, i64 %89, i1 false)
  br label %94

94:                                               ; preds = %93, %91, %86
  %95 = load i64, ptr %88, align 8, !tbaa !21
  %96 = icmp ult i64 %95, 9223372036854775807
  call void @llvm.assume(i1 %96)
  %97 = getelementptr inbounds i8, ptr %68, i64 -56
  store i64 %95, ptr %97, align 8, !tbaa !21
  %98 = load ptr, ptr %71, align 8, !tbaa !18
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 %95
  store i8 0, ptr %99, align 1, !tbaa !8
  %100 = load ptr, ptr %70, align 8, !tbaa !18
  br label %116

101:                                              ; preds = %82
  %102 = load i64, ptr %73, align 8, !tbaa !8
  br label %103

103:                                              ; preds = %101, %75
  %104 = phi ptr [ %84, %101 ], [ %80, %75 ]
  %105 = phi ptr [ %83, %101 ], [ %79, %75 ]
  %106 = phi ptr [ %72, %101 ], [ null, %75 ]
  %107 = phi i64 [ %102, %101 ], [ undef, %75 ]
  store ptr %105, ptr %71, align 8, !tbaa !18
  %108 = getelementptr inbounds i8, ptr %69, i64 -56
  %109 = load i64, ptr %108, align 8, !tbaa !21
  %110 = icmp ult i64 %109, 9223372036854775807
  call void @llvm.assume(i1 %110)
  %111 = getelementptr inbounds i8, ptr %68, i64 -56
  store i64 %109, ptr %111, align 8, !tbaa !21
  %112 = load i64, ptr %104, align 8, !tbaa !8
  store i64 %112, ptr %73, align 8, !tbaa !8
  %113 = icmp eq ptr %106, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  store ptr %106, ptr %70, align 8, !tbaa !18
  store i64 %107, ptr %104, align 8, !tbaa !8
  br label %116

115:                                              ; preds = %103
  store ptr %104, ptr %70, align 8, !tbaa !18
  br label %116

116:                                              ; preds = %115, %114, %94
  %117 = phi ptr [ %100, %94 ], [ %106, %114 ], [ %104, %115 ]
  %118 = getelementptr inbounds i8, ptr %69, i64 -56
  store i64 0, ptr %118, align 8, !tbaa !21
  store i8 0, ptr %117, align 1, !tbaa !8
  %119 = getelementptr inbounds i8, ptr %69, i64 -32
  %120 = getelementptr inbounds i8, ptr %68, i64 -32
  %121 = load ptr, ptr %120, align 8, !tbaa !18
  %122 = getelementptr inbounds i8, ptr %68, i64 -16
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %68, i64 -24
  %126 = load i64, ptr %125, align 8, !tbaa !21
  %127 = icmp ult i64 %126, 16
  call void @llvm.assume(i1 %127)
  %128 = load ptr, ptr %119, align 8, !tbaa !18
  %129 = getelementptr inbounds i8, ptr %69, i64 -16
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %135, label %152

131:                                              ; preds = %116
  %132 = load ptr, ptr %119, align 8, !tbaa !18
  %133 = getelementptr inbounds i8, ptr %69, i64 -16
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %124, %131
  %136 = phi ptr [ %132, %131 ], [ %128, %124 ]
  %137 = getelementptr inbounds i8, ptr %69, i64 -24
  %138 = load i64, ptr %137, align 8, !tbaa !21
  %139 = icmp ult i64 %138, 16
  call void @llvm.assume(i1 %139)
  switch i64 %138, label %142 [
    i64 0, label %143
    i64 1, label %140
  ]

140:                                              ; preds = %135
  %141 = load i8, ptr %136, align 1, !tbaa !8
  store i8 %141, ptr %121, align 1, !tbaa !8
  br label %143

142:                                              ; preds = %135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %136, i64 %138, i1 false)
  br label %143

143:                                              ; preds = %142, %140, %135
  %144 = load i64, ptr %137, align 8, !tbaa !21
  %145 = icmp ult i64 %144, 9223372036854775807
  call void @llvm.assume(i1 %145)
  %146 = getelementptr inbounds i8, ptr %68, i64 -24
  store i64 %144, ptr %146, align 8, !tbaa !21
  %147 = load ptr, ptr %120, align 8, !tbaa !18
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 %144
  store i8 0, ptr %148, align 1, !tbaa !8
  %149 = load ptr, ptr %119, align 8, !tbaa !18
  br label %165

150:                                              ; preds = %131
  %151 = load i64, ptr %122, align 8, !tbaa !8
  br label %152

152:                                              ; preds = %150, %124
  %153 = phi ptr [ %133, %150 ], [ %129, %124 ]
  %154 = phi ptr [ %132, %150 ], [ %128, %124 ]
  %155 = phi ptr [ %121, %150 ], [ null, %124 ]
  %156 = phi i64 [ %151, %150 ], [ undef, %124 ]
  store ptr %154, ptr %120, align 8, !tbaa !18
  %157 = getelementptr inbounds i8, ptr %69, i64 -24
  %158 = load i64, ptr %157, align 8, !tbaa !21
  %159 = icmp ult i64 %158, 9223372036854775807
  call void @llvm.assume(i1 %159)
  %160 = getelementptr inbounds i8, ptr %68, i64 -24
  store i64 %158, ptr %160, align 8, !tbaa !21
  %161 = load i64, ptr %153, align 8, !tbaa !8
  store i64 %161, ptr %122, align 8, !tbaa !8
  %162 = icmp eq ptr %155, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %152
  store ptr %155, ptr %119, align 8, !tbaa !18
  store i64 %156, ptr %153, align 8, !tbaa !8
  br label %165

164:                                              ; preds = %152
  store ptr %153, ptr %119, align 8, !tbaa !18
  br label %165

165:                                              ; preds = %143, %163, %164
  %166 = phi ptr [ %149, %143 ], [ %155, %163 ], [ %153, %164 ]
  %167 = getelementptr inbounds i8, ptr %69, i64 -24
  store i64 0, ptr %167, align 8, !tbaa !21
  store i8 0, ptr %166, align 1, !tbaa !8
  %168 = icmp eq ptr %0, %70
  br i1 %168, label %169, label %67, !llvm.loop !204

169:                                              ; preds = %165
  %170 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %3) #15
  %171 = load ptr, ptr %12, align 8, !tbaa !18
  %172 = icmp eq ptr %171, %13
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i64, ptr %14, align 8, !tbaa !21
  %175 = icmp ult i64 %174, 16
  call void @llvm.assume(i1 %175)
  br label %179

176:                                              ; preds = %169
  %177 = load i64, ptr %13, align 8, !tbaa !8
  %178 = add i64 %177, 1
  call void @_ZdlPvm(ptr noundef %171, i64 noundef %178) #27
  br label %179

179:                                              ; preds = %176, %173
  %180 = load ptr, ptr %3, align 8, !tbaa !18
  %181 = icmp eq ptr %180, %10
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i64, ptr %11, align 8, !tbaa !21
  %184 = icmp ult i64 %183, 16
  call void @llvm.assume(i1 %184)
  br label %188

185:                                              ; preds = %179
  %186 = load i64, ptr %10, align 8, !tbaa !8
  %187 = add i64 %186, 1
  call void @_ZdlPvm(ptr noundef %180, i64 noundef %187) #27
  br label %188

188:                                              ; preds = %182, %185
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %190

189:                                              ; preds = %35
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr nonnull %16)
  br label %190

190:                                              ; preds = %188, %189
  %191 = getelementptr inbounds nuw i8, ptr %16, i64 64
  %192 = icmp eq ptr %191, %1
  br i1 %192, label %193, label %15, !llvm.loop !205

193:                                              ; preds = %190, %5, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN12__apo_stdlib26json_write_object_from_mapEPvEUlRKT_RKT0_E_EEEvSJ_SM_(ptr %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %3, ptr %2, align 8, !tbaa !14
  %4 = load ptr, ptr %0, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !21
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  %11 = add nuw nsw i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(1) %5, i64 %11, i1 false)
  br label %16

12:                                               ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !18
  %13 = load i64, ptr %5, align 8, !tbaa !8
  store i64 %13, ptr %3, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %15, %12 ], [ %9, %7 ]
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = icmp ult i64 %17, 9223372036854775807
  call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %17, ptr %20, align 8, !tbaa !21
  store ptr %5, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %18, align 8, !tbaa !21
  store i8 0, ptr %5, align 1, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %23, ptr %21, align 8, !tbaa !14
  %24 = load ptr, ptr %22, align 8, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i64, ptr %28, align 8, !tbaa !21
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %31, i1 false)
  br label %36

32:                                               ; preds = %16
  store ptr %24, ptr %21, align 8, !tbaa !18
  %33 = load i64, ptr %25, align 8, !tbaa !8
  store i64 %33, ptr %23, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %35 = load i64, ptr %34, align 8, !tbaa !21
  br label %36

36:                                               ; preds = %27, %32
  %37 = phi i64 [ %29, %27 ], [ %35, %32 ]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = icmp ult i64 %37, 9223372036854775807
  call void @llvm.assume(i1 %39)
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %37, ptr %40, align 8, !tbaa !21
  store ptr %25, ptr %22, align 8, !tbaa !18
  store i64 0, ptr %38, align 8, !tbaa !21
  store i8 0, ptr %25, align 1, !tbaa !8
  br label %41

41:                                               ; preds = %64, %36
  %42 = phi i64 [ %17, %36 ], [ %66, %64 ]
  %43 = phi ptr [ %0, %36 ], [ %44, %64 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 -64
  %45 = icmp ult i64 %42, 9223372036854775807
  call void @llvm.assume(i1 %45)
  %46 = getelementptr inbounds i8, ptr %43, i64 -56
  %47 = load i64, ptr %46, align 8, !tbaa !21
  %48 = icmp ult i64 %47, 9223372036854775807
  call void @llvm.assume(i1 %48)
  %49 = call i64 @llvm.umin.i64(i64 %47, i64 %42)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %44, align 8, !tbaa !18
  %53 = load ptr, ptr %2, align 8, !tbaa !18
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
  %66 = load i64, ptr %20, align 8, !tbaa !21
  br label %41, !llvm.loop !206

67:                                               ; preds = %61
  %68 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_Qcl13_S_assignableIT_T0_EE(ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull align 8 dereferenceable(64) %2) #15
  %69 = load ptr, ptr %21, align 8, !tbaa !18
  %70 = icmp eq ptr %69, %23
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %40, align 8, !tbaa !21
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %77

74:                                               ; preds = %67
  %75 = load i64, ptr %23, align 8, !tbaa !8
  %76 = add i64 %75, 1
  call void @_ZdlPvm(ptr noundef %69, i64 noundef %76) #27
  br label %77

77:                                               ; preds = %74, %71
  %78 = load ptr, ptr %2, align 8, !tbaa !18
  %79 = icmp eq ptr %78, %3
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, ptr %20, align 8, !tbaa !21
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %86

83:                                               ; preds = %77
  %84 = load i64, ptr %3, align 8, !tbaa !8
  %85 = add i64 %84, 1
  call void @_ZdlPvm(ptr noundef %78, i64 noundef %85) #27
  br label %86

86:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { cold noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!7 = distinct !{!7, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!19, !16, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !20, i64 8, !9, i64 16}
!20 = !{!"long", !9, i64 0}
!21 = !{!19, !20, i64 8}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!24 = distinct !{!24, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!27 = distinct !{!27, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!30 = distinct !{!30, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!31 = !{!"branch_weights", i32 1, i32 1023}
!32 = !{!33, !37, i64 48}
!33 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !34, i64 0, !20, i64 8, !36, i64 16, !36, i64 48}
!34 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0}
!35 = !{!"any p2 pointer", !17, i64 0}
!36 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !37, i64 0, !37, i64 8, !37, i64 16, !34, i64 24}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!38 = !{!33, !37, i64 64}
!39 = !{!36, !37, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!42 = distinct !{!42, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!43 = !{!36, !37, i64 8}
!44 = !{!36, !34, i64 24}
!45 = !{!37, !37, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!48 = distinct !{!48, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !51, i64 8}
!51 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !9, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !10, i64 0}
!54 = !{!55, !37, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !58, i64 0, !20, i64 8, !59, i64 16, !20, i64 24, !61, i64 32, !60, i64 48}
!58 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!59 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !60, i64 0}
!60 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!61 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !62, i64 0, !20, i64 8}
!62 = !{!"float", !9, i64 0}
!63 = !{!57, !20, i64 8}
!64 = !{!61, !62, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !17, i64 0}
!67 = !{!68, !66, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!69 = !{!68, !66, i64 8}
!70 = distinct !{!70, !12}
!71 = !{!68, !66, i64 16}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!75 = distinct !{!75, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!76 = distinct !{!76, !12}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!79 = distinct !{!79, !"_ZNSt7__cxx119to_stringEl"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!82 = distinct !{!82, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!85 = distinct !{!85, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!88 = distinct !{!88, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!91 = distinct !{!91, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!92 = !{!57, !20, i64 24}
!93 = !{!59, !60, i64 0}
!94 = distinct !{!94, !12}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!97 = distinct !{!97, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!100 = distinct !{!100, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!103 = distinct !{!103, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!106 = distinct !{!106, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!109 = distinct !{!109, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!110 = distinct !{!110, !12}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!113 = distinct !{!113, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!114 = !{!17, !17, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!117 = distinct !{!117, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!118 = !{!33, !34, i64 0}
!119 = !{!33, !34, i64 40}
!120 = !{!33, !34, i64 72}
!121 = distinct !{!121, !12}
!122 = !{!33, !20, i64 8}
!123 = distinct !{!123, !12}
!124 = !{!36, !37, i64 16}
!125 = !{!33, !37, i64 16}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!129 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!132 = distinct !{!132, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!133 = !{!55, !37, i64 0}
!134 = !{!55, !37, i64 8}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!137 = distinct !{!137, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!138 = distinct !{!138, !12}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!141 = distinct !{!141, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!147 = !{!143, !146}
!148 = distinct !{!148, !12}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!151 = distinct !{!151, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!152 = distinct !{!152, !12}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!155 = distinct !{!155, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!156 = !{!57, !60, i64 16}
!157 = distinct !{!157, !12}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!160 = distinct !{!160, !"_ZN12__apo_stdlib9trim_copyB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!166 = !{!162, !165}
!167 = distinct !{!167, !12}
!168 = !{!60, !60, i64 0}
!169 = !{!170, !20, i64 0}
!170 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !20, i64 0}
!171 = distinct !{!171, !12}
!172 = !{!173, !174, i64 0}
!173 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !174, i64 0, !175, i64 8}
!174 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !17, i64 0}
!175 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb1EEE", !17, i64 0}
!176 = !{!173, !175, i64 8}
!177 = !{!61, !20, i64 8}
!178 = !{!57, !60, i64 48}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !12, !182}
!182 = !{!"llvm.loop.peeled.count", i32 1}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!185 = distinct !{!185, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!188 = !{!184, !187}
!189 = distinct !{!189, !12}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!192 = distinct !{!192, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!193 = !{!194}
!194 = distinct !{!194, !192, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!195 = !{!191, !194}
!196 = distinct !{!196, !12}
!197 = distinct !{!197, !12}
!198 = distinct !{!198, !12}
!199 = distinct !{!199, !12}
!200 = distinct !{!200, !12}
!201 = distinct !{!201, !12}
!202 = distinct !{!202, !12}
!203 = distinct !{!203, !12}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, !12}
!206 = distinct !{!206, !12}
