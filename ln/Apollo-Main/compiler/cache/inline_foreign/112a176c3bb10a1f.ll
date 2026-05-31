; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\112a176c3bb10a1f.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\112a176c3bb10a1f.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::locale::id" = type { %"struct.std::__1::once_flag", i32 }
%"struct.std::__1::once_flag" = type { i32 }
%"class.std::__1::deque" = type { %"class.std::__1::__split_buffer", i64, %struct.anon.27 }
%"class.std::__1::__split_buffer" = type { %"class.std::__1::__split_buffer_pointer_layout" }
%"class.std::__1::__split_buffer_pointer_layout" = type { ptr, ptr, ptr, %struct.anon.26 }
%struct.anon.26 = type { ptr }
%struct.anon.27 = type { i64 }
%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }
%"class.std::__1::basic_string.3" = type { %struct.anon.4 }
%struct.anon.4 = type { %"union.std::__1::basic_string<wchar_t>::__rep" }
%"union.std::__1::basic_string<wchar_t>::__rep" = type { %"struct.std::__1::basic_string<wchar_t>::__long" }
%"struct.std::__1::basic_string<wchar_t>::__long" = type { %struct.anon.6, i64, ptr }
%struct.anon.6 = type { i64 }
%"class.std::__1::basic_string_view.13" = type { ptr, i64 }
%"class.std::__1::__fs::filesystem::path" = type { %"class.std::__1::basic_string.3" }
%"class.std::__1::basic_ofstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_filebuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_filebuf" = type <{ %"class.std::__1::basic_streambuf", ptr, ptr, ptr, [8 x i8], i64, ptr, i64, ptr, ptr, %struct._Mbstatet, %struct._Mbstatet, i32, i32, i8, i8, i8, [5 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%struct._Mbstatet = type { i32, i16, i16 }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, %"struct.std::__1::_SentinelValueFill" }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"struct.std::__1::_SentinelValueFill" = type { i32 }
%"class.std::__1::basic_string_view" = type { ptr, i64 }
%"class.std::__1::basic_ifstream" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_filebuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::__fs::filesystem::file_status" = type { i8, i32 }
%"class.std::__1::chrono::time_point" = type { %"class.std::__1::chrono::duration" }
%"class.std::__1::chrono::duration" = type { i128 }
%class.anon.52 = type { ptr, ptr, ptr }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::__less" = type { i8 }
%"class.std::__1::vector" = type { ptr, ptr, %struct.anon.50 }
%struct.anon.50 = type { ptr }
%"class.std::__1::__fs::filesystem::directory_iterator" = type { %"class.std::__1::shared_ptr" }
%"class.std::__1::shared_ptr" = type { ptr, ptr }
%"class.std::__1::__fs::filesystem::path::iterator" = type <{ %"class.std::__1::__fs::filesystem::path", ptr, %"class.std::__1::basic_string_view.13", i8, [7 x i8] }>
%"class.std::__1::fpos" = type { %struct._Mbstatet, i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }
%"struct.std::__1::pair.57" = type <{ ptr, i8, [7 x i8] }>

$_ZN12__apo_stdlib11file_createENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE = comdat any

$_ZN12__apo_stdlib10file_writeEPvNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib13file_read_allEPv = comdat any

$_ZN12__apo_stdlib9file_pathEPv = comdat any

$_ZN12__apo_stdlib13file_sync_allEPv = comdat any

$_ZN12__apo_stdlib12file_set_lenEPvx = comdat any

$_ZN12__apo_stdlib13file_metadataEPv = comdat any

$_ZN12__apo_stdlib17metadata_modifiedEPv = comdat any

$_ZN12__apo_stdlib17metadata_accessedEPv = comdat any

$_ZN12__apo_stdlib16metadata_createdEPv = comdat any

$_ZN12__apo_stdlib13fs_create_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib17fs_create_dir_allENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib9fs_renameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$_ZN12__apo_stdlib7fs_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$_ZN12__apo_stdlib11fs_read_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$_ZN12__apo_stdlib12fs_hard_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$_ZN12__apo_stdlib10fs_symlinkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$_ZN12__apo_stdlib12fs_read_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib11path_parentENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib14path_file_nameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib14path_extensionENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib14path_file_stemENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib16path_is_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib16path_is_relativeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib16path_to_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib17path_canonicalizeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib15path_componentsENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_ = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib11file_handleD2Ev = comdat any

$_ZN12__apo_stdlib11file_handleD0Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNSt3__120__throw_length_errorB9nqe220103EPKc = comdat any

$_ZNSt12length_errorC2B9nqe220103EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB9nqe220103v = comdat any

$_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj = comdat any

$_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev = comdat any

$_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_ = comdat any

$_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev = comdat any

$_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev = comdat any

$_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev = comdat any

$_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcx = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI9_MbstatetEEj = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6xsputnEPKcx = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi = comdat any

$_ZNSt3__116__throw_bad_castB9nqe220103Ev = comdat any

$_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj = comdat any

$_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y = comdat any

$_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev = comdat any

$_ZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE = comdat any

$_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj = comdat any

$_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev = comdat any

$_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_ = comdat any

$_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev = comdat any

$_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev = comdat any

$_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__init_with_sentinelB9nqe220103INS_19istreambuf_iteratorIcS2_EES8_EEvT_T0_ = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy = comdat any

$_ZN12__apo_stdlib15metadata_handleD2Ev = comdat any

$_ZN12__apo_stdlib15metadata_handleD0Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcy = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcy = comdat any

$_ZNSt3__14__fs10filesystem18directory_iteratorD2B9nqe220103Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev = comdat any

$_ZZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJS6_EEERS6_DpOT_ENKUlvE0_clEv = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB9nqe220103Ev = comdat any

$_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_ = comdat any

$_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb = comdat any

$_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_ = comdat any

$_ZNSt3__17__sort4B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SD_ = comdat any

$_ZNSt3__17__sort5B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_ = comdat any

$_ZNSt3__116__insertion_sortB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_ = comdat any

$_ZNSt3__126__insertion_sort_unguardedB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_ = comdat any

$_ZNSt3__131__partition_with_equals_on_leftB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEET0_SC_SC_T1_ = comdat any

$_ZNSt3__132__partition_with_equals_on_rightB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEENS_4pairIT0_bEESD_SD_T1_ = comdat any

$_ZNSt3__127__insertion_sort_incompleteB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbT1_SC_T0_ = comdat any

$_ZNSt3__111__sift_downB9nqe220103INS_17_ClassicAlgPolicyELb0ERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT2_OT1_NS_15iterator_traitsISC_E15difference_typeESH_ = comdat any

$_ZNSt3__110__pop_heapB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE = comdat any

$_ZNSt3__117__floyd_sift_downB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE = comdat any

$_ZNSt3__19__sift_upB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE = comdat any

$_ZN12__apo_stdlib17join_string_rangeINSt3__111__wrap_iterIPKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEES8_T_SC_NS1_17basic_string_viewIcS5_EE = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_ = comdat any

$_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE25__init_copy_ctor_externalEPKwy = comdat any

$_ZTVN12__apo_stdlib11file_handleE = comdat any

$_ZTIN12__apo_stdlib11file_handleE = comdat any

$_ZTSN12__apo_stdlib11file_handleE = comdat any

$_ZTIN12__apo_stdlib13opaque_handleE = comdat any

$_ZTSN12__apo_stdlib13opaque_handleE = comdat any

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

$_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE = comdat any

$_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE = comdat any

$_ZTINSt3__18ios_baseE = comdat any

$_ZTSNSt3__18ios_baseE = comdat any

$_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = comdat any

$_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = comdat any

$_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE = comdat any

$_ZTISt8bad_cast = comdat any

$_ZTSSt8bad_cast = comdat any

$_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = comdat any

$_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE = comdat any

$_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = comdat any

$_ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = comdat any

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
@.str = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt20bad_array_new_length, ptr @_ZTISt9bad_alloc }, comdat, align 8
@_ZTSSt20bad_array_new_length = linkonce_odr dso_local constant [25 x i8] c"St20bad_array_new_length\00", comdat, align 1
@_ZTISt9bad_alloc = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt9bad_alloc, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt9bad_alloc = linkonce_odr dso_local constant [13 x i8] c"St9bad_alloc\00", comdat, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 176 to ptr), ptr null, ptr @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -176 to ptr), ptr inttoptr (i64 -176 to ptr), ptr @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev] }, comdat, align 8
@_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 176 to ptr), ptr null, ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -176 to ptr), ptr inttoptr (i64 -176 to ptr), ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev] }, comdat, align 8
@_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE, i32 0, i32 1, ptr @_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE, i64 -6141 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [47 x i8] c"NSt3__113basic_ostreamIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE, ptr @_ZTINSt3__18ios_baseE }, comdat, align 8
@_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [42 x i8] c"NSt3__19basic_iosIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTINSt3__18ios_baseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt3__18ios_baseE }, comdat, align 8
@_ZTSNSt3__18ios_baseE = linkonce_odr dso_local constant [18 x i8] c"NSt3__18ios_baseE\00", comdat, align 1
@_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, ptr @_ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE }, comdat, align 8
@_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [48 x i8] c"NSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcx, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI9_MbstatetEEj, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcx, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv, ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6xsputnEPKcx, ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi] }, comdat, align 8
@_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, ptr @_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE }, comdat, align 8
@_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [47 x i8] c"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE }, comdat, align 8
@_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [49 x i8] c"NSt3__115basic_streambufIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZNSt3__17codecvtIcc9_MbstatetE2idE = external global %"class.std::__1::locale::id", align 4
@_ZTISt8bad_cast = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt8bad_cast, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt8bad_cast = linkonce_odr dso_local constant [12 x i8] c"St8bad_cast\00", comdat, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"a+b\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local global %"class.std::__1::deque" zeroinitializer, comdat, align 8
@_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool = linkonce_odr dso_local thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev] }, comdat, align 8
@_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev, ptr @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev] }, comdat, align 8
@_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE, i32 0, i32 1, ptr @_ZTINSt3__19basic_iosIcNS_11char_traitsIcEEEE, i64 -6141 }, comdat, align 8
@_ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [47 x i8] c"NSt3__113basic_istreamIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTINSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, ptr @_ZTINSt3__113basic_istreamIcNS_11char_traitsIcEEEE }, comdat, align 8
@_ZTSNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE = linkonce_odr dso_local constant [48 x i8] c"NSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE\00", comdat, align 1
@_ZTVN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12__apo_stdlib15metadata_handleE, ptr @_ZN12__apo_stdlib15metadata_handleD2Ev, ptr @_ZN12__apo_stdlib15metadata_handleD0Ev] }, comdat, align 8
@_ZTIN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12__apo_stdlib15metadata_handleE, ptr @_ZTIN12__apo_stdlib13opaque_handleE }, comdat, align 8
@_ZTSN12__apo_stdlib15metadata_handleE = linkonce_odr dso_local constant [34 x i8] c"N12__apo_stdlib15metadata_handleE\00", comdat, align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"vector\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN31__apollo_inline_inline_2887_5_721sys__native_file_openEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !12
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !12
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29, !noalias !12
  unreachable

11:                                               ; preds = %7
  %12 = icmp ult i64 %8, 23
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = trunc nuw nsw i64 %8 to i8
  %15 = shl nuw nsw i8 %14, 1
  store i8 %15, ptr %3, align 8, !alias.scope !12
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %26

17:                                               ; preds = %11
  %18 = and i64 %8, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #30, !noalias !15
  %23 = or disjoint i64 %21, 1
  store i64 %23, ptr %3, align 8, !tbaa !20, !alias.scope !12
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %8, ptr %24, align 8, !tbaa !21, !alias.scope !12
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %22, ptr %25, align 8, !tbaa !23, !alias.scope !12
  br label %26

26:                                               ; preds = %17, %13
  %27 = phi ptr [ %16, %13 ], [ %22, %17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %0, i64 %8, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 %8
  store i8 0, ptr %28, align 1, !tbaa !20
  br label %29

29:                                               ; preds = %6, %26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !26
  br label %56

32:                                               ; preds = %29
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !26
  %34 = icmp ugt i64 %33, -10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %36 unwind label %75

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %32
  %38 = icmp ult i64 %33, 23
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = trunc nuw nsw i64 %33 to i8
  %41 = shl nuw nsw i8 %40, 1
  store i8 %41, ptr %4, align 8, !alias.scope !26
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %53

43:                                               ; preds = %37
  %44 = and i64 %33, -8
  %45 = add nuw i64 %44, 8
  %46 = icmp eq i64 %45, 24
  %47 = select i1 %46, i64 26, i64 %45
  %48 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %47) #30
          to label %49 unwind label %75

49:                                               ; preds = %43
  %50 = or disjoint i64 %47, 1
  store i64 %50, ptr %4, align 8, !tbaa !20, !alias.scope !26
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %33, ptr %51, align 8, !tbaa !21, !alias.scope !26
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %48, ptr %52, align 8, !tbaa !23, !alias.scope !26
  br label %53

53:                                               ; preds = %49, %39
  %54 = phi ptr [ %42, %39 ], [ %48, %49 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr nonnull align 1 %1, i64 %33, i1 false)
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %33
  store i8 0, ptr %55, align 1, !tbaa !20
  br label %56

56:                                               ; preds = %53, %31
  %57 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwy(i64 noundef 72) #30
          to label %58 unwind label %77

58:                                               ; preds = %56
  %59 = load i8, ptr %3, align 8
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %61 = getelementptr inbounds nuw i8, ptr %57, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %61, ptr noundef nonnull align 1 dereferenceable(15) %60, i64 15, i1 false)
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %63 = load ptr, ptr %62, align 8, !tbaa !20
  %64 = load i8, ptr %4, align 8
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %66 = getelementptr inbounds nuw i8, ptr %57, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %66, ptr noundef nonnull align 1 dereferenceable(15) %65, i64 15, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %68 = load ptr, ptr %67, align 8, !tbaa !20
  %69 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 1, ptr %69, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %57, align 8, !tbaa !32
  %70 = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i8 %59, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %57, i64 32
  store ptr %63, ptr %71, align 8, !tbaa !20
  %72 = getelementptr inbounds nuw i8, ptr %57, i64 40
  store i8 %64, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %57, i64 56
  store ptr %68, ptr %73, align 8, !tbaa !20
  %74 = getelementptr inbounds nuw i8, ptr %57, i64 64
  store i8 0, ptr %74, align 8, !tbaa !34
  ret ptr %57

75:                                               ; preds = %43, %35
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load i8, ptr %4, align 8
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %84) #31
  br label %85

85:                                               ; preds = %82, %77, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %77 ], [ %78, %82 ]
  %87 = load i8, ptr %3, align 8
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %92) #31
  br label %93

93:                                               ; preds = %85, %90
  resume { ptr, i32 } %86
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_723sys__native_file_createEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !39
  br label %27

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !39
  %7 = icmp ugt i64 %6, -10
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29, !noalias !39
  unreachable

9:                                                ; preds = %5
  %10 = icmp ult i64 %6, 23
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = trunc nuw nsw i64 %6 to i8
  %13 = shl nuw nsw i8 %12, 1
  store i8 %13, ptr %2, align 8, !alias.scope !39
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %24

15:                                               ; preds = %9
  %16 = and i64 %6, -8
  %17 = add nuw i64 %16, 8
  %18 = icmp eq i64 %17, 24
  %19 = select i1 %18, i64 26, i64 %17
  %20 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #30, !noalias !42
  %21 = or disjoint i64 %19, 1
  store i64 %21, ptr %2, align 8, !tbaa !20, !alias.scope !39
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %6, ptr %22, align 8, !tbaa !21, !alias.scope !39
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %20, ptr %23, align 8, !tbaa !23, !alias.scope !39
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi ptr [ %14, %11 ], [ %20, %15 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr nonnull align 1 %0, i64 %6, i1 false)
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %6
  store i8 0, ptr %26, align 1, !tbaa !20
  br label %27

27:                                               ; preds = %4, %24
  %28 = invoke noundef ptr @_ZN12__apo_stdlib11file_createENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull %2)
          to label %29 unwind label %37

29:                                               ; preds = %27
  %30 = load i8, ptr %2, align 8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %35 = load ptr, ptr %34, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %35) #31
  br label %36

36:                                               ; preds = %29, %33
  ret ptr %28

37:                                               ; preds = %27
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load i8, ptr %2, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %44) #31
  br label %45

45:                                               ; preds = %37, %42
  resume { ptr, i32 } %38
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11file_createENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string.3", align 8
  %3 = alloca %"class.std::__1::basic_string_view.13", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::basic_ofstream", align 8
  %8 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %9 = load i8, ptr %0, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = select i1 %11, ptr %14, ptr %13
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = lshr i8 %9, 1
  %19 = zext nneg i8 %18 to i64
  %20 = select i1 %11, i64 %19, i64 %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 %20
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %15, ptr noundef %21)
          to label %32 unwind label %22

22:                                               ; preds = %1
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load i8, ptr %5, align 8
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %29) #31
  br label %30

30:                                               ; preds = %146, %149, %22, %27
  %31 = phi { ptr, i32 } [ %23, %22 ], [ %23, %27 ], [ %150, %149 ], [ %139, %146 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %33 unwind label %75

33:                                               ; preds = %32
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = icmp eq i64 %35, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %36, label %89, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !50
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %38 unwind label %77

38:                                               ; preds = %37
  %39 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !50
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !21, !noalias !50
  %42 = icmp ugt i64 %41, 9223372036854775797
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %44 unwind label %77

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %38
  %46 = icmp samesign ult i64 %41, 11
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = trunc nuw nsw i64 %41 to i8
  %49 = shl nuw nsw i8 %48, 1
  store i8 %49, ptr %2, align 8, !noalias !50
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %62

51:                                               ; preds = %45
  %52 = and i64 %41, 9223372036854775804
  %53 = add nuw nsw i64 %52, 4
  %54 = icmp eq i64 %53, 12
  %55 = select i1 %54, i64 14, i64 %53
  %56 = shl nuw i64 %55, 1
  %57 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %56) #30
          to label %58 unwind label %77

58:                                               ; preds = %51
  %59 = or disjoint i64 %55, 1
  store i64 %59, ptr %2, align 8, !tbaa !20, !noalias !50
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %41, ptr %60, align 8, !tbaa !21, !noalias !50
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %57, ptr %61, align 8, !tbaa !53, !noalias !50
  br label %62

62:                                               ; preds = %58, %47
  %63 = phi ptr [ %50, %47 ], [ %57, %58 ]
  %64 = shl nuw i64 %41, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %63, ptr align 2 %39, i64 %64, i1 false), !noalias !50
  %65 = getelementptr inbounds nuw i16, ptr %63, i64 %41
  store i16 0, ptr %65, align 2, !tbaa !54, !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !50
  %66 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null)
          to label %67 unwind label %79

67:                                               ; preds = %62
  %68 = load i8, ptr %6, align 8
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %73 = load ptr, ptr %72, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %73) #31
  br label %74

74:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %89

75:                                               ; preds = %32
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %138

77:                                               ; preds = %51, %43, %37
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %87

79:                                               ; preds = %62
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i8, ptr %6, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %86) #31
  br label %87

87:                                               ; preds = %84, %79, %77
  %88 = phi { ptr, i32 } [ %78, %77 ], [ %80, %79 ], [ %80, %84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %138

89:                                               ; preds = %74, %33
  %90 = load i8, ptr %5, align 8
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %95) #31
  br label %96

96:                                               ; preds = %89, %93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(176) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 48)
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %98 = load ptr, ptr %97, align 8, !tbaa !57
  %99 = icmp eq ptr %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %102 = load ptr, ptr %101, align 8, !tbaa !32
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 48
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef i32 %104(ptr noundef nonnull align 8 dereferenceable(163) %101)
          to label %106 unwind label %112

106:                                              ; preds = %100
  %107 = call i32 @fclose(ptr noundef nonnull %98)
  %108 = or i32 %107, %105
  %109 = icmp eq i32 %108, 0
  store ptr null, ptr %97, align 8, !tbaa !57
  %110 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %110, i8 0, i64 48, i1 false)
  store i32 32, ptr %111, align 4, !tbaa !67
  br i1 %109, label %123, label %115

112:                                              ; preds = %100
  %113 = landingpad { ptr, i32 }
          cleanup
  %114 = call noundef i32 @fclose(ptr noundef nonnull %98)
  br label %149

115:                                              ; preds = %106, %96
  %116 = load ptr, ptr %7, align 8, !tbaa !32
  %117 = getelementptr i8, ptr %116, i64 -24
  %118 = load i64, ptr %117, align 8
  %119 = getelementptr inbounds i8, ptr %7, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %121 = load i32, ptr %120, align 8, !tbaa !68
  %122 = or i32 %121, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %119, i32 noundef %122)
          to label %123 unwind label %147

123:                                              ; preds = %106, %115
  %124 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwy(i64 noundef 72) #30
          to label %125 unwind label %147

125:                                              ; preds = %123
  %126 = load i8, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %8, ptr noundef nonnull align 1 dereferenceable(15) %14, i64 15, i1 false), !tbaa.struct !73
  %127 = load ptr, ptr %12, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %128 = getelementptr inbounds nuw i8, ptr %124, i64 8
  store i32 1, ptr %128, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib11file_handleE, i64 16), ptr %124, align 8, !tbaa !32
  %129 = getelementptr inbounds nuw i8, ptr %124, i64 16
  store i8 %126, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %124, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %130, ptr noundef nonnull align 1 dereferenceable(15) %8, i64 15, i1 false), !tbaa.struct !73
  %131 = getelementptr inbounds nuw i8, ptr %124, i64 32
  store ptr %127, ptr %131, align 8, !tbaa !20
  %132 = getelementptr inbounds nuw i8, ptr %124, i64 40
  store i8 2, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %124, i64 41
  store i8 119, ptr %133, align 1
  %134 = getelementptr inbounds nuw i8, ptr %124, i64 42
  store i8 0, ptr %134, align 2
  %135 = getelementptr inbounds nuw i8, ptr %124, i64 64
  store i8 0, ptr %135, align 8, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %7, align 8, !tbaa !32
  %136 = getelementptr inbounds nuw i8, ptr %7, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %136, align 8, !tbaa !32
  %137 = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %137) #24
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %136) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %124

138:                                              ; preds = %87, %75
  %139 = phi { ptr, i32 } [ %88, %87 ], [ %76, %75 ]
  %140 = load i8, ptr %5, align 8
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %145 = load ptr, ptr %144, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %145) #31
  br label %146

146:                                              ; preds = %138, %143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %30

147:                                              ; preds = %115, %123
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %149

149:                                              ; preds = %147, %112
  %150 = phi { ptr, i32 } [ %113, %112 ], [ %148, %147 ]
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(176) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %30
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_722sys__native_file_writeEPvPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !74
  br label %9

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !77, !alias.scope !74
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !74
  store i64 %8, ptr %7, align 8, !tbaa !79, !alias.scope !74
  br label %9

9:                                                ; preds = %5, %6
  %10 = call noundef i32 @_ZN12__apo_stdlib10file_writeEPvNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef %0, ptr dead_on_return noundef nonnull %3)
  ret i32 %10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib10file_writeEPvNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string.3", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::basic_string_view.13", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %8 = alloca %"class.std::__1::basic_ofstream", align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %166, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %166

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load i8, ptr %15, align 8, !tbaa !34, !range !80, !noundef !81
  %17 = trunc nuw i8 %16 to i1
  br i1 %17, label %166, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %24 = load i64, ptr %23, align 8
  %25 = lshr i8 %20, 1
  %26 = zext nneg i8 %25 to i64
  %27 = select i1 %22, i64 %26, i64 %24
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 41
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8
  %31 = select i1 %22, ptr %28, ptr %30
  %32 = tail call noundef ptr @memchr(ptr noundef %31, i32 noundef 97, i64 noundef %27) #24
  %33 = icmp eq ptr %32, null
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %31 to i64
  %36 = sub i64 %34, %35
  %37 = icmp eq i64 %36, -1
  %38 = or i1 %33, %37
  %39 = select i1 %38, i32 48, i32 17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %47 = select i1 %43, ptr %46, ptr %45
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %49 = load i64, ptr %48, align 8
  %50 = lshr i8 %41, 1
  %51 = zext nneg i8 %50 to i64
  %52 = select i1 %43, i64 %51, i64 %49
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 %52
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %47, ptr noundef %53)
          to label %64 unwind label %54

54:                                               ; preds = %18
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load i8, ptr %6, align 8
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %61) #31
  br label %62

62:                                               ; preds = %145, %146, %54, %59
  %63 = phi { ptr, i32 } [ %55, %54 ], [ %55, %59 ], [ %147, %146 ], [ %138, %145 ]
  resume { ptr, i32 } %63

64:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %65 unwind label %107

65:                                               ; preds = %64
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %67 = load i64, ptr %66, align 8, !tbaa !47
  %68 = icmp eq i64 %67, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %68, label %121, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !82
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %70 unwind label %109

70:                                               ; preds = %69
  %71 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !82
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !21, !noalias !82
  %74 = icmp ugt i64 %73, 9223372036854775797
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %76 unwind label %109

76:                                               ; preds = %75
  unreachable

77:                                               ; preds = %70
  %78 = icmp samesign ult i64 %73, 11
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = trunc nuw nsw i64 %73 to i8
  %81 = shl nuw nsw i8 %80, 1
  store i8 %81, ptr %3, align 8, !noalias !82
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %94

83:                                               ; preds = %77
  %84 = and i64 %73, 9223372036854775804
  %85 = add nuw nsw i64 %84, 4
  %86 = icmp eq i64 %85, 12
  %87 = select i1 %86, i64 14, i64 %85
  %88 = shl nuw i64 %87, 1
  %89 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %88) #30
          to label %90 unwind label %109

90:                                               ; preds = %83
  %91 = or disjoint i64 %87, 1
  store i64 %91, ptr %3, align 8, !tbaa !20, !noalias !82
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %73, ptr %92, align 8, !tbaa !21, !noalias !82
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %89, ptr %93, align 8, !tbaa !53, !noalias !82
  br label %94

94:                                               ; preds = %90, %79
  %95 = phi ptr [ %82, %79 ], [ %89, %90 ]
  %96 = shl nuw i64 %73, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %95, ptr align 2 %71, i64 %96, i1 false), !noalias !82
  %97 = getelementptr inbounds nuw i16, ptr %95, i64 %73
  store i16 0, ptr %97, align 2, !tbaa !54, !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !82
  %98 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null)
          to label %99 unwind label %111

99:                                               ; preds = %94
  %100 = load i8, ptr %7, align 8
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %105) #31
  br label %106

106:                                              ; preds = %99, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %121

107:                                              ; preds = %64
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %137

109:                                              ; preds = %83, %75, %69
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %119

111:                                              ; preds = %94
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = load i8, ptr %7, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %118 = load ptr, ptr %117, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %118) #31
  br label %119

119:                                              ; preds = %116, %111, %109
  %120 = phi { ptr, i32 } [ %110, %109 ], [ %112, %111 ], [ %112, %116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %137

121:                                              ; preds = %106, %65
  %122 = load i8, ptr %6, align 8
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %127 = load ptr, ptr %126, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %127) #31
  br label %128

128:                                              ; preds = %125, %121
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef %39)
  %129 = load ptr, ptr %8, align 8, !tbaa !32
  %130 = getelementptr i8, ptr %129, i64 -24
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds i8, ptr %8, i64 %131
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %134 = load i32, ptr %133, align 8, !tbaa !68
  %135 = and i32 %134, 5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %162

137:                                              ; preds = %119, %107
  %138 = phi { ptr, i32 } [ %120, %119 ], [ %108, %107 ]
  %139 = load i8, ptr %6, align 8
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %144 = load ptr, ptr %143, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %144) #31
  br label %145

145:                                              ; preds = %137, %142
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %62

146:                                              ; preds = %148
  %147 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %62

148:                                              ; preds = %128
  %149 = load ptr, ptr %1, align 8, !tbaa !23
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %151 = load i64, ptr %150, align 8, !tbaa !21
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %149, i64 noundef %151)
          to label %153 unwind label %146

153:                                              ; preds = %148
  %154 = load ptr, ptr %8, align 8, !tbaa !32
  %155 = getelementptr i8, ptr %154, i64 -24
  %156 = load i64, ptr %155, align 8
  %157 = getelementptr inbounds i8, ptr %8, i64 %156
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %159 = load i32, ptr %158, align 8, !tbaa !68
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  br label %162

162:                                              ; preds = %128, %153
  %163 = phi i32 [ %161, %153 ], [ 0, %128 ]
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %8, align 8, !tbaa !32
  %164 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %164, align 8, !tbaa !32
  %165 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %165) #24
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %164) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %166

166:                                              ; preds = %10, %2, %14, %162
  %167 = phi i32 [ %163, %162 ], [ 0, %14 ], [ 0, %2 ], [ 0, %10 ]
  ret i32 %167
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_725sys__native_file_read_allEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13file_read_allEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_ifstream", align 8
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca [15 x i8], align 1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %70, label %10

10:                                               ; preds = %1, %6
  %11 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15, !prof !85

13:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %14 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = icmp eq ptr %18, %20
  %26 = mul i64 %24, 170
  %27 = add i64 %26, -1
  %28 = select i1 %25, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %30 = load i64, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !21
  %33 = add i64 %32, %30
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %15
  tail call void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %16)
  %36 = load i64, ptr %31, align 8, !tbaa !21, !noalias !95
  %37 = load i64, ptr %29, align 8, !tbaa !91, !noalias !95
  %38 = load ptr, ptr %19, align 8, !tbaa !90, !noalias !95
  %39 = load ptr, ptr %17, align 8, !tbaa !86, !noalias !95
  %40 = add i64 %37, %36
  br label %41

41:                                               ; preds = %35, %15
  %42 = phi i64 [ %40, %35 ], [ %33, %15 ]
  %43 = phi ptr [ %39, %35 ], [ %18, %15 ]
  %44 = phi ptr [ %38, %35 ], [ %20, %15 ]
  %45 = udiv i64 %42, 170
  %46 = getelementptr inbounds nuw ptr, ptr %44, i64 %45
  %47 = icmp ne ptr %44, %43
  tail call void @llvm.assume(i1 %47)
  %48 = load ptr, ptr %46, align 8, !tbaa !98, !noalias !95
  %49 = urem i64 %42, 170
  %50 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %48, i64 %49
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 1
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr null, ptr %52, align 8, !tbaa !20
  %53 = load i64, ptr %31, align 8, !tbaa !21
  %54 = add i64 %53, 1
  store i64 %54, ptr %31, align 8, !tbaa !21
  %55 = load i64, ptr %29, align 8, !tbaa !91
  %56 = add i64 %55, %53
  %57 = load ptr, ptr %19, align 8, !tbaa !90
  %58 = udiv i64 %56, 170
  %59 = getelementptr inbounds nuw ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  %61 = urem i64 %56, 170
  %62 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %60, i64 %61
  %63 = load i8, ptr %62, align 8
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds nuw i8, ptr %62, i64 1
  %69 = select i1 %65, ptr %68, ptr %67
  br label %239

70:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(24) %71, i32 noundef 4)
  %72 = load ptr, ptr %2, align 8, !tbaa !32
  %73 = getelementptr i8, ptr %72, i64 -24
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds i8, ptr %2, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = load i32, ptr %76, align 8, !tbaa !68
  %78 = and i32 %77, 5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %143, label %80

80:                                               ; preds = %70
  %81 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85, !prof !85

83:                                               ; preds = %80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %84 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %88 = load ptr, ptr %87, align 8, !tbaa !86
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !90
  %91 = ptrtoint ptr %88 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = ashr exact i64 %93, 3
  %95 = icmp eq ptr %88, %90
  %96 = mul i64 %94, 170
  %97 = add i64 %96, -1
  %98 = select i1 %95, i64 0, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %100 = load i64, ptr %99, align 8, !tbaa !91
  %101 = getelementptr inbounds nuw i8, ptr %86, i64 40
  %102 = load i64, ptr %101, align 8, !tbaa !21
  %103 = add i64 %102, %100
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %86)
          to label %106 unwind label %141

106:                                              ; preds = %105
  %107 = load i64, ptr %101, align 8, !tbaa !21, !noalias !100
  %108 = load i64, ptr %99, align 8, !tbaa !91, !noalias !100
  %109 = load ptr, ptr %89, align 8, !tbaa !90, !noalias !100
  %110 = load ptr, ptr %87, align 8, !tbaa !86, !noalias !100
  %111 = add i64 %108, %107
  br label %112

112:                                              ; preds = %106, %85
  %113 = phi i64 [ %111, %106 ], [ %103, %85 ]
  %114 = phi ptr [ %110, %106 ], [ %88, %85 ]
  %115 = phi ptr [ %109, %106 ], [ %90, %85 ]
  %116 = udiv i64 %113, 170
  %117 = getelementptr inbounds nuw ptr, ptr %115, i64 %116
  %118 = icmp ne ptr %115, %114
  call void @llvm.assume(i1 %118)
  %119 = load ptr, ptr %117, align 8, !tbaa !98, !noalias !100
  %120 = urem i64 %113, 170
  %121 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %119, i64 %120
  store i8 0, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 1
  store i8 0, ptr %122, align 1
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 16
  store ptr null, ptr %123, align 8, !tbaa !20
  %124 = load i64, ptr %101, align 8, !tbaa !21
  %125 = add i64 %124, 1
  store i64 %125, ptr %101, align 8, !tbaa !21
  %126 = load i64, ptr %99, align 8, !tbaa !91
  %127 = add i64 %126, %124
  %128 = load ptr, ptr %89, align 8, !tbaa !90
  %129 = udiv i64 %127, 170
  %130 = getelementptr inbounds nuw ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !98
  %132 = urem i64 %127, 170
  %133 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %131, i64 %132
  %134 = load i8, ptr %133, align 8
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds nuw i8, ptr %133, i64 16
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %140 = select i1 %136, ptr %139, ptr %138
  br label %233

141:                                              ; preds = %105
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %237

143:                                              ; preds = %70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %144 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %145 = load ptr, ptr %144, align 8, !tbaa !103
  %146 = ptrtoint ptr %145 to i64
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__init_with_sentinelB9nqe220103INS_19istreambuf_iteratorIcS2_EES8_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %146, i64 0)
          to label %147 unwind label %218

147:                                              ; preds = %143
  %148 = load i8, ptr %3, align 8
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %149, i64 15, i1 false), !tbaa.struct !73
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %151 = load ptr, ptr %150, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %152 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %156, !prof !85

154:                                              ; preds = %147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %155 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %156

156:                                              ; preds = %154, %147
  %157 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %159 = load ptr, ptr %158, align 8, !tbaa !86
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %161 = load ptr, ptr %160, align 8, !tbaa !90
  %162 = ptrtoint ptr %159 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = ashr exact i64 %164, 3
  %166 = icmp eq ptr %159, %161
  %167 = mul i64 %165, 170
  %168 = add i64 %167, -1
  %169 = select i1 %166, i64 0, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %171 = load i64, ptr %170, align 8, !tbaa !91
  %172 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %173 = load i64, ptr %172, align 8, !tbaa !21
  %174 = add i64 %173, %171
  %175 = icmp eq i64 %169, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %156
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %157)
          to label %177 unwind label %220

177:                                              ; preds = %176
  %178 = load i64, ptr %172, align 8, !tbaa !21, !noalias !104
  %179 = load i64, ptr %170, align 8, !tbaa !91, !noalias !104
  %180 = load ptr, ptr %160, align 8, !tbaa !90, !noalias !104
  %181 = load ptr, ptr %158, align 8, !tbaa !86, !noalias !104
  %182 = add i64 %179, %178
  br label %183

183:                                              ; preds = %156, %177
  %184 = phi i64 [ %182, %177 ], [ %174, %156 ]
  %185 = phi ptr [ %181, %177 ], [ %159, %156 ]
  %186 = phi ptr [ %180, %177 ], [ %161, %156 ]
  %187 = udiv i64 %184, 170
  %188 = getelementptr inbounds nuw ptr, ptr %186, i64 %187
  %189 = icmp ne ptr %186, %185
  call void @llvm.assume(i1 %189)
  %190 = load ptr, ptr %188, align 8, !tbaa !98, !noalias !104
  %191 = urem i64 %184, 170
  %192 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %190, i64 %191
  store i8 %148, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %193, ptr noundef nonnull align 1 dereferenceable(15) %4, i64 15, i1 false), !tbaa.struct !73
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 16
  store ptr %151, ptr %194, align 8, !tbaa !20
  %195 = load i64, ptr %172, align 8, !tbaa !21
  %196 = add i64 %195, 1
  store i64 %196, ptr %172, align 8, !tbaa !21
  %197 = load i64, ptr %170, align 8, !tbaa !91
  %198 = add i64 %197, %195
  %199 = load ptr, ptr %160, align 8, !tbaa !90
  %200 = udiv i64 %198, 170
  %201 = getelementptr inbounds nuw ptr, ptr %199, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !98
  %203 = urem i64 %198, 170
  %204 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %202, i64 %203
  %205 = load i8, ptr %204, align 8
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  %208 = getelementptr inbounds nuw i8, ptr %204, i64 16
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds nuw i8, ptr %204, i64 1
  %211 = select i1 %207, ptr %210, ptr %209
  %212 = load i8, ptr %3, align 8
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %183
  %216 = load ptr, ptr %150, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %216) #31
  br label %217

217:                                              ; preds = %183, %215
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %233

218:                                              ; preds = %143
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %231

220:                                              ; preds = %176
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = and i8 %148, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %151) #31
  br label %225

225:                                              ; preds = %220, %224
  %226 = load i8, ptr %3, align 8
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %150, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %230) #31
  br label %231

231:                                              ; preds = %229, %225, %218
  %232 = phi { ptr, i32 } [ %219, %218 ], [ %221, %225 ], [ %221, %229 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %237

233:                                              ; preds = %112, %217
  %234 = phi ptr [ %211, %217 ], [ %140, %112 ]
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %2, align 8, !tbaa !32
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %235, align 8, !tbaa !32
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %236) #24
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %235) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %239

237:                                              ; preds = %141, %231
  %238 = phi { ptr, i32 } [ %232, %231 ], [ %142, %141 ]
  call void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %238

239:                                              ; preds = %41, %233
  %240 = phi ptr [ %234, %233 ], [ %69, %41 ]
  ret ptr %240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_722sys__native_file_closeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %8, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %1, %3, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_721sys__native_file_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib9file_pathEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %18 = load i64, ptr %17, align 8, !tbaa !20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %16, i64 noundef %18)
  br label %20

19:                                               ; preds = %1, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %20

20:                                               ; preds = %14, %13, %19
  %21 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !85

23:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %24 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq ptr %28, %30
  %36 = mul i64 %34, 170
  %37 = add i64 %36, -1
  %38 = select i1 %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = add i64 %42, %40
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %46 unwind label %79

46:                                               ; preds = %45
  %47 = load i64, ptr %41, align 8, !tbaa !21, !noalias !107
  %48 = load i64, ptr %39, align 8, !tbaa !91, !noalias !107
  %49 = load ptr, ptr %29, align 8, !tbaa !90, !noalias !107
  %50 = load ptr, ptr %27, align 8, !tbaa !86, !noalias !107
  %51 = add i64 %48, %47
  br label %52

52:                                               ; preds = %25, %46
  %53 = phi i64 [ %51, %46 ], [ %43, %25 ]
  %54 = phi ptr [ %50, %46 ], [ %28, %25 ]
  %55 = phi ptr [ %49, %46 ], [ %30, %25 ]
  %56 = udiv i64 %53, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = icmp ne ptr %55, %54
  call void @llvm.assume(i1 %58)
  %59 = load ptr, ptr %57, align 8, !tbaa !98, !noalias !107
  %60 = urem i64 %53, 170
  %61 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %59, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %62 = load i64, ptr %41, align 8, !tbaa !21
  %63 = add i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !21
  %64 = load ptr, ptr %29, align 8, !tbaa !90
  %65 = load i64, ptr %39, align 8, !tbaa !91
  %66 = add i64 %65, %62
  %67 = udiv i64 %66, 170
  %68 = getelementptr inbounds nuw ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = urem i64 %66, 170
  %71 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %69, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load ptr, ptr %72, align 8
  %74 = load i8, ptr %71, align 8
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %78 = select i1 %76, ptr %77, ptr %73
  ret ptr %78

79:                                               ; preds = %45
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i8, ptr %2, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %86) #31
  br label %87

87:                                               ; preds = %79, %84
  resume { ptr, i32 } %80
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_725sys__native_file_sync_allEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN12__apo_stdlib13file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib13file_sync_allEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %17 = select i1 %13, ptr %16, ptr %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i64, ptr %18, align 8
  %20 = lshr i8 %11, 1
  %21 = zext nneg i8 %20 to i64
  %22 = select i1 %13, i64 %21, i64 %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %22
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %17, ptr noundef %23)
          to label %34 unwind label %24

24:                                               ; preds = %9
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = load i8, ptr %3, align 8
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %31) #31
  br label %32

32:                                               ; preds = %24, %29, %59
  %33 = phi { ptr, i32 } [ %52, %59 ], [ %25, %29 ], [ %25, %24 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null)
          to label %35 unwind label %51

35:                                               ; preds = %34
  %36 = load i64, ptr %2, align 8
  %37 = and i64 %36, 255
  %38 = icmp ne i64 %37, 0
  %39 = icmp ne i64 %37, 255
  %40 = and i1 %38, %39
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %41 = load i8, ptr %3, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %46) #31
  br label %47

47:                                               ; preds = %35, %44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %48 = zext i1 %40 to i32
  br label %49

49:                                               ; preds = %1, %5, %47
  %50 = phi i32 [ %48, %47 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %50

51:                                               ; preds = %34
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load i8, ptr %3, align 8
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %58) #31
  br label %59

59:                                               ; preds = %51, %56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %32
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_726sys__native_file_sync_dataEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN12__apo_stdlib13file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_724sys__native_file_set_lenEPvl(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = tail call noundef i32 @_ZN12__apo_stdlib12file_set_lenEPvx(ptr noundef %0, i64 noundef %3)
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12file_set_lenEPvx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, ptr %0, ptr null
  %10 = icmp eq ptr %9, null
  %11 = icmp slt i64 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %55, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 17
  %21 = select i1 %17, ptr %20, ptr %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i64, ptr %22, align 8
  %24 = lshr i8 %15, 1
  %25 = zext nneg i8 %24 to i64
  %26 = select i1 %17, i64 %25, i64 %23
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 %26
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %21, ptr noundef %27)
          to label %33 unwind label %28

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = load i8, ptr %3, align 8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %51, label %47

33:                                               ; preds = %13
  invoke void @_ZNSt3__14__fs10filesystem13__resize_fileERKNS1_4pathEyPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef null)
          to label %34 unwind label %42

34:                                               ; preds = %33
  %35 = load i8, ptr %3, align 8
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %40) #31
  br label %41

41:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %55

42:                                               ; preds = %33
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = load i8, ptr %3, align 8
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %28
  %48 = phi { ptr, i32 } [ %29, %28 ], [ %43, %42 ]
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %50 = load ptr, ptr %49, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %50) #31
  br label %51

51:                                               ; preds = %47, %42, %28
  %52 = phi { ptr, i32 } [ %29, %28 ], [ %43, %42 ], [ %48, %47 ]
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %54 = call ptr @__cxa_begin_catch(ptr %53) #24
  call void @__cxa_end_catch()
  br label %55

55:                                               ; preds = %2, %5, %51, %41
  %56 = phi i32 [ 0, %51 ], [ 1, %41 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %56
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_725sys__native_file_metadataEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::file_status", align 4
  %3 = alloca %"class.std::__1::__fs::filesystem::file_status", align 4
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %5 = alloca %"class.std::__1::__fs::filesystem::file_status", align 4
  %6 = alloca %"class.std::__1::chrono::time_point", align 16
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, ptr %0, ptr null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi ptr [ null, %1 ], [ %13, %9 ]
  %16 = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwy(i64 noundef 104) #30
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 16, ptr %17, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12__apo_stdlib15metadata_handleE, i64 16), ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(83) %18, i8 0, i64 83, i1 false)
  %19 = icmp eq ptr %15, null
  br i1 %19, label %157, label %20

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %15, i64 17
  %28 = select i1 %24, ptr %27, ptr %26
  %29 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %30 = load i64, ptr %29, align 8
  %31 = lshr i8 %22, 1
  %32 = zext nneg i8 %31 to i64
  %33 = select i1 %24, i64 %32, i64 %30
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 %33
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %28, ptr noundef %34)
          to label %40 unwind label %35

35:                                               ; preds = %20
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = load i8, ptr %4, align 8
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %153, label %149

40:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %41 unwind label %61

41:                                               ; preds = %40
  %42 = load i8, ptr %3, align 4, !tbaa !110
  %43 = icmp eq i8 %42, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %44 = getelementptr inbounds nuw i8, ptr %16, i64 96
  %45 = zext i1 %43 to i8
  store i8 %45, ptr %44, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %46 unwind label %61

46:                                               ; preds = %41
  %47 = load i8, ptr %2, align 4, !tbaa !110
  %48 = icmp eq i8 %47, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %49 = getelementptr inbounds nuw i8, ptr %16, i64 97
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %51 unwind label %63

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %53 = load i32, ptr %52, align 4, !tbaa !117
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds nuw i8, ptr %16, i64 98
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 2, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %48, label %58, label %65

58:                                               ; preds = %51
  %59 = invoke noundef i64 @_ZNSt3__14__fs10filesystem11__file_sizeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %60 unwind label %61

60:                                               ; preds = %58
  store i64 %59, ptr %18, align 8, !tbaa !119
  br label %65

61:                                               ; preds = %58, %41, %40
  %62 = landingpad { ptr, i32 }
          catch ptr null
  br label %144

63:                                               ; preds = %46
  %64 = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %144

65:                                               ; preds = %60, %51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt3__14__fs10filesystem17__last_write_timeERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::chrono::time_point") align 16 %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %66 unwind label %138

66:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %67 = load i64, ptr %6, align 16, !tbaa !120, !noalias !122
  invoke void @_ZNSt3__19to_stringEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %7, i64 noundef %67)
          to label %68 unwind label %140

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %75 = load ptr, ptr %74, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %75) #31
  br label %76

76:                                               ; preds = %73, %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %77 = getelementptr inbounds nuw i8, ptr %16, i64 48
  %78 = load i8, ptr %77, align 8
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  %81 = load i8, ptr %69, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %80, label %95, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %16, i64 25
  %88 = select i1 %83, ptr %87, ptr %86
  %89 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %90 = load i64, ptr %89, align 8
  %91 = lshr i8 %81, 1
  %92 = zext nneg i8 %91 to i64
  %93 = select i1 %83, i64 %92, i64 %90
  %94 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef %88, i64 noundef %93)
          to label %103 unwind label %138

95:                                               ; preds = %76
  br i1 %83, label %102, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %100 = load i64, ptr %99, align 8
  %101 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef %98, i64 noundef %100)
          to label %103 unwind label %138

102:                                              ; preds = %95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %69, i64 24, i1 false), !tbaa.struct !56
  br label %103

103:                                              ; preds = %102, %84, %96
  %104 = getelementptr inbounds nuw i8, ptr %16, i64 72
  %105 = load i8, ptr %104, align 8
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = load i8, ptr %69, align 8
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %107, label %122, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %16, i64 25
  %115 = select i1 %110, ptr %114, ptr %113
  %116 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %117 = load i64, ptr %116, align 8
  %118 = lshr i8 %108, 1
  %119 = zext nneg i8 %118 to i64
  %120 = select i1 %110, i64 %119, i64 %117
  %121 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef %115, i64 noundef %120)
          to label %130 unwind label %138

122:                                              ; preds = %103
  br i1 %110, label %129, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %127 = load i64, ptr %126, align 8
  %128 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef %125, i64 noundef %127)
          to label %130 unwind label %138

129:                                              ; preds = %122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %69, i64 24, i1 false), !tbaa.struct !56
  br label %130

130:                                              ; preds = %129, %111, %123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %131 = load i8, ptr %4, align 8
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %136 = load ptr, ptr %135, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %136) #31
  br label %137

137:                                              ; preds = %130, %134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %157

138:                                              ; preds = %123, %111, %96, %84, %65
  %139 = landingpad { ptr, i32 }
          catch ptr null
  br label %142

140:                                              ; preds = %66
  %141 = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %144

144:                                              ; preds = %142, %63, %61
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %62, %61 ], [ %64, %63 ]
  %146 = load i8, ptr %4, align 8
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144, %35
  %150 = phi { ptr, i32 } [ %36, %35 ], [ %145, %144 ]
  %151 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %152) #31
  br label %153

153:                                              ; preds = %149, %144, %35
  %154 = phi { ptr, i32 } [ %36, %35 ], [ %145, %144 ], [ %150, %149 ]
  %155 = extractvalue { ptr, i32 } %154, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %156 = call ptr @__cxa_begin_catch(ptr %155) #24
  call void @__cxa_end_catch()
  br label %157

157:                                              ; preds = %137, %153, %14
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_721sys__native_meta_sizeEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !119
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_725sys__native_meta_modifiedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_modifiedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i64, ptr %17, align 8, !tbaa !20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %16, i64 noundef %18)
  br label %20

19:                                               ; preds = %1, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %20

20:                                               ; preds = %14, %13, %19
  %21 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !85

23:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %24 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq ptr %28, %30
  %36 = mul i64 %34, 170
  %37 = add i64 %36, -1
  %38 = select i1 %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = add i64 %42, %40
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %46 unwind label %79

46:                                               ; preds = %45
  %47 = load i64, ptr %41, align 8, !tbaa !21, !noalias !125
  %48 = load i64, ptr %39, align 8, !tbaa !91, !noalias !125
  %49 = load ptr, ptr %29, align 8, !tbaa !90, !noalias !125
  %50 = load ptr, ptr %27, align 8, !tbaa !86, !noalias !125
  %51 = add i64 %48, %47
  br label %52

52:                                               ; preds = %25, %46
  %53 = phi i64 [ %51, %46 ], [ %43, %25 ]
  %54 = phi ptr [ %50, %46 ], [ %28, %25 ]
  %55 = phi ptr [ %49, %46 ], [ %30, %25 ]
  %56 = udiv i64 %53, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = icmp ne ptr %55, %54
  call void @llvm.assume(i1 %58)
  %59 = load ptr, ptr %57, align 8, !tbaa !98, !noalias !125
  %60 = urem i64 %53, 170
  %61 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %59, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %62 = load i64, ptr %41, align 8, !tbaa !21
  %63 = add i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !21
  %64 = load ptr, ptr %29, align 8, !tbaa !90
  %65 = load i64, ptr %39, align 8, !tbaa !91
  %66 = add i64 %65, %62
  %67 = udiv i64 %66, 170
  %68 = getelementptr inbounds nuw ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = urem i64 %66, 170
  %71 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %69, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load ptr, ptr %72, align 8
  %74 = load i8, ptr %71, align 8
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %78 = select i1 %76, ptr %77, ptr %73
  ret ptr %78

79:                                               ; preds = %45
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i8, ptr %2, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %86) #31
  br label %87

87:                                               ; preds = %79, %84
  resume { ptr, i32 } %80
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_725sys__native_meta_accessedEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17metadata_accessedEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load i64, ptr %17, align 8, !tbaa !20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %16, i64 noundef %18)
  br label %20

19:                                               ; preds = %1, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %20

20:                                               ; preds = %14, %13, %19
  %21 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !85

23:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %24 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq ptr %28, %30
  %36 = mul i64 %34, 170
  %37 = add i64 %36, -1
  %38 = select i1 %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = add i64 %42, %40
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %46 unwind label %79

46:                                               ; preds = %45
  %47 = load i64, ptr %41, align 8, !tbaa !21, !noalias !128
  %48 = load i64, ptr %39, align 8, !tbaa !91, !noalias !128
  %49 = load ptr, ptr %29, align 8, !tbaa !90, !noalias !128
  %50 = load ptr, ptr %27, align 8, !tbaa !86, !noalias !128
  %51 = add i64 %48, %47
  br label %52

52:                                               ; preds = %25, %46
  %53 = phi i64 [ %51, %46 ], [ %43, %25 ]
  %54 = phi ptr [ %50, %46 ], [ %28, %25 ]
  %55 = phi ptr [ %49, %46 ], [ %30, %25 ]
  %56 = udiv i64 %53, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = icmp ne ptr %55, %54
  call void @llvm.assume(i1 %58)
  %59 = load ptr, ptr %57, align 8, !tbaa !98, !noalias !128
  %60 = urem i64 %53, 170
  %61 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %59, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %62 = load i64, ptr %41, align 8, !tbaa !21
  %63 = add i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !21
  %64 = load ptr, ptr %29, align 8, !tbaa !90
  %65 = load i64, ptr %39, align 8, !tbaa !91
  %66 = add i64 %65, %62
  %67 = udiv i64 %66, 170
  %68 = getelementptr inbounds nuw ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = urem i64 %66, 170
  %71 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %69, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load ptr, ptr %72, align 8
  %74 = load i8, ptr %71, align 8
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %78 = select i1 %76, ptr %77, ptr %73
  ret ptr %78

79:                                               ; preds = %45
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i8, ptr %2, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %86) #31
  br label %87

87:                                               ; preds = %79, %84
  resume { ptr, i32 } %80
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_724sys__native_meta_createdEPv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16metadata_createdEPv(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %18 = load i64, ptr %17, align 8, !tbaa !20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %16, i64 noundef %18)
  br label %20

19:                                               ; preds = %1, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %20

20:                                               ; preds = %14, %13, %19
  %21 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25, !prof !85

23:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %24 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq ptr %28, %30
  %36 = mul i64 %34, 170
  %37 = add i64 %36, -1
  %38 = select i1 %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = add i64 %42, %40
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %46 unwind label %79

46:                                               ; preds = %45
  %47 = load i64, ptr %41, align 8, !tbaa !21, !noalias !131
  %48 = load i64, ptr %39, align 8, !tbaa !91, !noalias !131
  %49 = load ptr, ptr %29, align 8, !tbaa !90, !noalias !131
  %50 = load ptr, ptr %27, align 8, !tbaa !86, !noalias !131
  %51 = add i64 %48, %47
  br label %52

52:                                               ; preds = %25, %46
  %53 = phi i64 [ %51, %46 ], [ %43, %25 ]
  %54 = phi ptr [ %50, %46 ], [ %28, %25 ]
  %55 = phi ptr [ %49, %46 ], [ %30, %25 ]
  %56 = udiv i64 %53, 170
  %57 = getelementptr inbounds nuw ptr, ptr %55, i64 %56
  %58 = icmp ne ptr %55, %54
  call void @llvm.assume(i1 %58)
  %59 = load ptr, ptr %57, align 8, !tbaa !98, !noalias !131
  %60 = urem i64 %53, 170
  %61 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %59, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %62 = load i64, ptr %41, align 8, !tbaa !21
  %63 = add i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !21
  %64 = load ptr, ptr %29, align 8, !tbaa !90
  %65 = load i64, ptr %39, align 8, !tbaa !91
  %66 = add i64 %65, %62
  %67 = udiv i64 %66, 170
  %68 = getelementptr inbounds nuw ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = urem i64 %66, 170
  %71 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %69, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %73 = load ptr, ptr %72, align 8
  %74 = load i8, ptr %71, align 8
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %78 = select i1 %76, ptr %77, ptr %73
  ret ptr %78

79:                                               ; preds = %45
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load i8, ptr %2, align 8
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %86 = load ptr, ptr %85, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %86) #31
  br label %87

87:                                               ; preds = %79, %84
  resume { ptr, i32 } %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_723sys__native_meta_is_dirEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = load i8, ptr %8, align 8, !tbaa !114, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_724sys__native_meta_is_fileEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 97
  %9 = load i8, ptr %8, align 1, !tbaa !116, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_725sys__native_perm_readonlyEPv(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 98
  %9 = load i8, ptr %8, align 2, !tbaa !118, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_725sys__native_fs_create_dirEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !134
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !134
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !134
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !134
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib13fs_create_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret i32 %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib13fs_create_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %72, label %68

14:                                               ; preds = %1
  %15 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem18__create_directoryERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null)
          to label %16 unwind label %50

16:                                               ; preds = %14
  br i1 %15, label %41, label %17

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %18 = load ptr, ptr %0, align 8, !tbaa !77
  %19 = load i64, ptr %6, align 8, !tbaa !79
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %18, ptr noundef %20)
          to label %26 unwind label %21

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = load i8, ptr %4, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %61, label %57

26:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %27 unwind label %52

27:                                               ; preds = %26
  %28 = load i64, ptr %2, align 8
  %29 = and i64 %28, 255
  %30 = icmp ne i64 %29, 0
  %31 = icmp ne i64 %29, 255
  %32 = and i1 %30, %31
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = zext i1 %32 to i32
  %34 = load i8, ptr %4, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %39) #31
  br label %40

40:                                               ; preds = %27, %37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %41

41:                                               ; preds = %16, %40
  %42 = phi i32 [ %33, %40 ], [ 1, %16 ]
  %43 = load i8, ptr %3, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %48) #31
  br label %49

49:                                               ; preds = %41, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %76

50:                                               ; preds = %14
  %51 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

52:                                               ; preds = %26
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = load i8, ptr %4, align 8
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %21
  %58 = phi { ptr, i32 } [ %22, %21 ], [ %53, %52 ]
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %60) #31
  br label %61

61:                                               ; preds = %57, %52, %21
  %62 = phi { ptr, i32 } [ %22, %21 ], [ %53, %52 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %63

63:                                               ; preds = %61, %50
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %51, %50 ]
  %65 = load i8, ptr %3, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63, %9
  %69 = phi { ptr, i32 } [ %10, %9 ], [ %64, %63 ]
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %71) #31
  br label %72

72:                                               ; preds = %68, %63, %9
  %73 = phi { ptr, i32 } [ %10, %9 ], [ %64, %63 ], [ %69, %68 ]
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %75 = call ptr @__cxa_begin_catch(ptr %74) #24
  call void @__cxa_end_catch()
  br label %76

76:                                               ; preds = %72, %49
  %77 = phi i32 [ %42, %49 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_729sys__native_fs_create_dir_allEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !137
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !137
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !137
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !137
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret i32 %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %72, label %68

14:                                               ; preds = %1
  %15 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null)
          to label %16 unwind label %50

16:                                               ; preds = %14
  br i1 %15, label %41, label %17

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %18 = load ptr, ptr %0, align 8, !tbaa !77
  %19 = load i64, ptr %6, align 8, !tbaa !79
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %18, ptr noundef %20)
          to label %26 unwind label %21

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = load i8, ptr %4, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %61, label %57

26:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %27 unwind label %52

27:                                               ; preds = %26
  %28 = load i64, ptr %2, align 8
  %29 = and i64 %28, 255
  %30 = icmp ne i64 %29, 0
  %31 = icmp ne i64 %29, 255
  %32 = and i1 %30, %31
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %33 = zext i1 %32 to i32
  %34 = load i8, ptr %4, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %39) #31
  br label %40

40:                                               ; preds = %27, %37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %41

41:                                               ; preds = %16, %40
  %42 = phi i32 [ %33, %40 ], [ 1, %16 ]
  %43 = load i8, ptr %3, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %48) #31
  br label %49

49:                                               ; preds = %41, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %76

50:                                               ; preds = %14
  %51 = landingpad { ptr, i32 }
          catch ptr null
  br label %63

52:                                               ; preds = %26
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = load i8, ptr %4, align 8
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %21
  %58 = phi { ptr, i32 } [ %22, %21 ], [ %53, %52 ]
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %60) #31
  br label %61

61:                                               ; preds = %57, %52, %21
  %62 = phi { ptr, i32 } [ %22, %21 ], [ %53, %52 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %63

63:                                               ; preds = %61, %50
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %51, %50 ]
  %65 = load i8, ptr %3, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63, %9
  %69 = phi { ptr, i32 } [ %10, %9 ], [ %64, %63 ]
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %71) #31
  br label %72

72:                                               ; preds = %68, %63, %9
  %73 = phi { ptr, i32 } [ %10, %9 ], [ %64, %63 ], [ %69, %68 ]
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %75 = call ptr @__cxa_begin_catch(ptr %74) #24
  call void @__cxa_end_catch()
  br label %76

76:                                               ; preds = %72, %49
  %77 = phi i32 [ %42, %49 ], [ 0, %72 ]
  ret i32 %77
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_726sys__native_fs_remove_fileEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !140
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %0, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %2, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %30

14:                                               ; preds = %6
  %15 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem8__removeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null)
          to label %16 unwind label %25

16:                                               ; preds = %14
  %17 = zext i1 %15 to i32
  %18 = load i8, ptr %2, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %23) #31
  br label %24

24:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %38

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = load i8, ptr %2, align 8
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %9
  %31 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ]
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %33) #31
  br label %34

34:                                               ; preds = %30, %25, %9
  %35 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ], [ %31, %30 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %37 = call ptr @__cxa_begin_catch(ptr %36) #24
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %24, %34
  %39 = phi i32 [ %17, %24 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_725sys__native_fs_remove_dirEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !143
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %0, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %2, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %30

14:                                               ; preds = %6
  %15 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem8__removeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null)
          to label %16 unwind label %25

16:                                               ; preds = %14
  %17 = zext i1 %15 to i32
  %18 = load i8, ptr %2, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %23) #31
  br label %24

24:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %38

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = load i8, ptr %2, align 8
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %9
  %31 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ]
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %33) #31
  br label %34

34:                                               ; preds = %30, %25, %9
  %35 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ], [ %31, %30 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %37 = call ptr @__cxa_begin_catch(ptr %36) #24
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %24, %34
  %39 = phi i32 [ %17, %24 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_729sys__native_fs_remove_dir_allEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !146
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %0, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %2, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %30

14:                                               ; preds = %6
  %15 = invoke noundef i64 @_ZNSt3__14__fs10filesystem12__remove_allERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef null)
          to label %16 unwind label %25

16:                                               ; preds = %14
  %17 = trunc i64 %15 to i32
  %18 = load i8, ptr %2, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %23) #31
  br label %24

24:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %38

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = load i8, ptr %2, align 8
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %9
  %31 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ]
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %33) #31
  br label %34

34:                                               ; preds = %30, %25, %9
  %35 = phi { ptr, i32 } [ %10, %9 ], [ %26, %25 ], [ %31, %30 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %37 = call ptr @__cxa_begin_catch(ptr %36) #24
  call void @__cxa_end_catch()
  br label %38

38:                                               ; preds = %24, %34
  %39 = phi i32 [ %17, %24 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_721sys__native_fs_renameEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !149
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !149
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !149
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !149
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !152
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !152
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !152
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !152
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib9fs_renameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret i32 %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib9fs_renameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %54

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr %1, align 8, !tbaa !77
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %15, ptr noundef %18)
          to label %24 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %45

24:                                               ; preds = %14
  invoke void @_ZNSt3__14__fs10filesystem8__renameERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %25 unwind label %40

25:                                               ; preds = %24
  %26 = load i8, ptr %4, align 8
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %31) #31
  br label %32

32:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %33 = load i8, ptr %3, align 8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %38) #31
  br label %39

39:                                               ; preds = %32, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %62

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = load i8, ptr %4, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %19
  %46 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ]
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %48) #31
  br label %49

49:                                               ; preds = %45, %40, %19
  %50 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %51 = load i8, ptr %3, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %9
  %55 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ]
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %57) #31
  br label %58

58:                                               ; preds = %54, %49, %9
  %59 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ], [ %55, %54 ]
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %61 = call ptr @__cxa_begin_catch(ptr %60) #24
  call void @__cxa_end_catch()
  br label %62

62:                                               ; preds = %58, %39
  %63 = phi i32 [ 1, %39 ], [ 0, %58 ]
  ret i32 %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_719sys__native_fs_copyEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !155
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !155
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !155
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !155
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !158
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !158
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !158
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !158
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib7fs_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret i32 %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib7fs_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %59, label %55

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr %1, align 8, !tbaa !77
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %15, ptr noundef %18)
          to label %24 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %46

24:                                               ; preds = %14
  %25 = invoke noundef zeroext i1 @_ZNSt3__14__fs10filesystem11__copy_fileERKNS1_4pathES4_NS1_12copy_optionsEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef 2, ptr noundef null)
          to label %26 unwind label %41

26:                                               ; preds = %24
  %27 = load i8, ptr %4, align 8
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %32) #31
  br label %33

33:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %34 = load i8, ptr %3, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %39) #31
  br label %40

40:                                               ; preds = %33, %37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %63

41:                                               ; preds = %24
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = load i8, ptr %4, align 8
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41, %19
  %47 = phi { ptr, i32 } [ %20, %19 ], [ %42, %41 ]
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %49 = load ptr, ptr %48, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %49) #31
  br label %50

50:                                               ; preds = %46, %41, %19
  %51 = phi { ptr, i32 } [ %20, %19 ], [ %42, %41 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %52 = load i8, ptr %3, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50, %9
  %56 = phi { ptr, i32 } [ %10, %9 ], [ %51, %50 ]
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %58) #31
  br label %59

59:                                               ; preds = %55, %50, %9
  %60 = phi { ptr, i32 } [ %10, %9 ], [ %51, %50 ], [ %56, %55 ]
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %62 = call ptr @__cxa_begin_catch(ptr %61) #24
  call void @__cxa_end_catch()
  br label %63

63:                                               ; preds = %59, %40
  %64 = phi i32 [ 1, %40 ], [ 0, %59 ]
  ret i32 %64
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_723sys__native_fs_read_dirEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !161
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !161
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !161
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !161
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !164
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !164
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !164
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !164
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef ptr @_ZN12__apo_stdlib11fs_read_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret ptr %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11fs_read_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %class.anon.52, align 8
  %6 = alloca %"class.std::__1::allocator", align 1
  %7 = alloca %"class.std::__1::basic_string.3", align 8
  %8 = alloca %"class.std::__1::basic_string_view.13", align 8
  %9 = alloca %"struct.std::__1::__less", align 1
  %10 = alloca %"class.std::__1::vector", align 8
  %11 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8
  %12 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %13 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8
  %14 = alloca %"class.std::__1::__fs::filesystem::directory_iterator", align 8
  %15 = alloca %"class.std::__1::basic_string", align 8
  %16 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %17 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %18 = load ptr, ptr %0, align 8, !tbaa !77
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %18, ptr noundef %21)
          to label %27 unwind label %22

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = load i8, ptr %12, align 8
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %131, label %127

27:                                               ; preds = %2
  invoke void @_ZNSt3__14__fs10filesystem18directory_iteratorC2ERKNS1_4pathEPNS_10error_codeENS1_17directory_optionsE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef null, i8 noundef 0)
          to label %28 unwind label %122

28:                                               ; preds = %27
  %29 = load i8, ptr %12, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %34 = load ptr, ptr %33, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %34) #31
  br label %35

35:                                               ; preds = %28, %32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %36 = load ptr, ptr %11, align 8, !tbaa !167
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !171
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  store ptr %36, ptr %13, align 8, !tbaa !167, !alias.scope !172
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %41, align 8, !tbaa !171, !alias.scope !172
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  br label %48

42:                                               ; preds = %35
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %44 = atomicrmw add ptr %43, i32 1 monotonic, align 4
  %45 = load ptr, ptr %37, align 8, !tbaa !171
  store ptr %36, ptr %13, align 8, !tbaa !167, !alias.scope !175
  %46 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %38, ptr %46, align 8, !tbaa !171, !alias.scope !175
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40, %42
  %49 = phi ptr [ %46, %42 ], [ %41, %40 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !alias.scope !177
  br label %59

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %52 = atomicrmw add ptr %51, i32 1 monotonic, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !alias.scope !180
  %53 = atomicrmw add ptr %51, i32 -1 acq_rel, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load ptr, ptr %45, align 8, !tbaa !32
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %58 = load ptr, ptr %57, align 8
  call void %58(ptr noundef nonnull align 8 dereferenceable(16) %45) #24
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #24
  br label %59

59:                                               ; preds = %48, %50, %55
  %60 = phi ptr [ %49, %48 ], [ %46, %55 ], [ %46, %50 ]
  %61 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %62 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %63 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %64 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %70 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %71 = load ptr, ptr %14, align 8, !tbaa !167
  br label %72

72:                                               ; preds = %182, %59
  %73 = load ptr, ptr %13, align 8, !tbaa !167
  %74 = icmp eq ptr %73, %71
  br i1 %74, label %75, label %133

75:                                               ; preds = %72
  %76 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %77 = load ptr, ptr %76, align 8, !tbaa !171
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %81 = atomicrmw add ptr %80, i32 -1 acq_rel, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load ptr, ptr %77, align 8, !tbaa !32
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 16
  %86 = load ptr, ptr %85, align 8
  call void %86(ptr noundef nonnull align 8 dereferenceable(16) %77) #24
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16) %77) #24
  br label %87

87:                                               ; preds = %75, %79, %83
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %88 = load ptr, ptr %60, align 8, !tbaa !171
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %92 = atomicrmw add ptr %91, i32 -1 acq_rel, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load ptr, ptr %88, align 8, !tbaa !32
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 16
  %97 = load ptr, ptr %96, align 8
  call void %97(ptr noundef nonnull align 8 dereferenceable(16) %88) #24
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16) %88) #24
  br label %98

98:                                               ; preds = %87, %90, %94
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %99 = load ptr, ptr %37, align 8, !tbaa !171
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %103 = atomicrmw add ptr %102, i32 -1 acq_rel, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load ptr, ptr %99, align 8, !tbaa !32
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 16
  %108 = load ptr, ptr %107, align 8
  call void %108(ptr noundef nonnull align 8 dereferenceable(16) %99) #24
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16) %99) #24
  br label %109

109:                                              ; preds = %98, %101, %105
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %110 = load ptr, ptr %10, align 8, !tbaa !182
  call void @llvm.assume(i1 true) [ "align"(ptr %110, i64 8) ]
  %111 = load ptr, ptr %65, align 8, !tbaa !185
  call void @llvm.assume(i1 true) [ "align"(ptr %111, i64 8) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = ptrtoint ptr %111 to i64
  %115 = ptrtoint ptr %110 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 24
  %118 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %117, i1 true)
  %119 = shl nuw nsw i64 %118, 1
  %120 = xor i64 %119, 126
  invoke void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(ptr noundef %110, ptr noundef %111, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %120, i1 noundef zeroext true)
          to label %121 unwind label %212

121:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %218

122:                                              ; preds = %27
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = load i8, ptr %12, align 8
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122, %22
  %128 = phi { ptr, i32 } [ %23, %22 ], [ %123, %122 ]
  %129 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %130) #31
  br label %131

131:                                              ; preds = %127, %122, %22
  %132 = phi { ptr, i32 } [ %23, %22 ], [ %123, %122 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %214

133:                                              ; preds = %72
  %134 = invoke noundef nonnull align 16 dereferenceable(80) ptr @_ZNKSt3__14__fs10filesystem18directory_iterator13__dereferenceEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %135 unwind label %184

135:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !186
  invoke void @_ZNKSt3__14__fs10filesystem4path10__filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %134)
          to label %136 unwind label %186

136:                                              ; preds = %135
  %137 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !186
  %138 = load i64, ptr %61, align 8, !tbaa !21, !noalias !186
  %139 = icmp ugt i64 %138, 9223372036854775797
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %141 unwind label %188

141:                                              ; preds = %140
  unreachable

142:                                              ; preds = %136
  %143 = icmp samesign ult i64 %138, 11
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = trunc nuw nsw i64 %138 to i8
  %146 = shl nuw nsw i8 %145, 1
  store i8 %146, ptr %7, align 8, !noalias !186
  br label %156

147:                                              ; preds = %142
  %148 = and i64 %138, 9223372036854775804
  %149 = add nuw nsw i64 %148, 4
  %150 = icmp eq i64 %149, 12
  %151 = select i1 %150, i64 14, i64 %149
  %152 = shl nuw i64 %151, 1
  %153 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %152) #30
          to label %154 unwind label %186

154:                                              ; preds = %147
  %155 = or disjoint i64 %151, 1
  store i64 %155, ptr %7, align 8, !tbaa !20, !noalias !186
  store i64 %138, ptr %62, align 8, !tbaa !21, !noalias !186
  store ptr %153, ptr %63, align 8, !tbaa !53, !noalias !186
  br label %156

156:                                              ; preds = %154, %144
  %157 = phi ptr [ %64, %144 ], [ %153, %154 ]
  %158 = shl nuw i64 %138, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %157, ptr align 2 %137, i64 %158, i1 false), !noalias !186
  %159 = getelementptr inbounds nuw i16, ptr %157, i64 %138
  store i16 0, ptr %159, align 2, !tbaa !54, !noalias !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !189
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %160 unwind label %190

160:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %161 = load ptr, ptr %65, align 8, !tbaa !185
  store ptr %161, ptr %4, align 8, !tbaa !98
  %162 = load ptr, ptr %66, align 8, !tbaa !192
  store ptr %4, ptr %5, align 8, !tbaa !193
  store ptr %15, ptr %67, align 8, !tbaa !98
  store ptr %10, ptr %68, align 8, !tbaa !194
  %163 = icmp ult ptr %161, %162
  br i1 %163, label %164, label %166, !prof !197

164:                                              ; preds = %160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %161, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %165 = getelementptr inbounds nuw i8, ptr %161, i64 24
  br label %169

166:                                              ; preds = %160
  invoke void @_ZZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJS6_EEERS6_DpOT_ENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %167 unwind label %192

167:                                              ; preds = %166
  %168 = load ptr, ptr %4, align 8, !tbaa !98
  br label %169

169:                                              ; preds = %167, %164
  %170 = phi ptr [ %165, %164 ], [ %168, %167 ]
  store ptr %170, ptr %65, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %171 = load i8, ptr %15, align 8
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %69, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %175) #31
  br label %176

176:                                              ; preds = %169, %174
  %177 = load i8, ptr %16, align 8
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %70, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %181) #31
  br label %182

182:                                              ; preds = %176, %180
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %183 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__14__fs10filesystem18directory_iterator11__incrementEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef null)
          to label %72 unwind label %208

184:                                              ; preds = %133
  %185 = landingpad { ptr, i32 }
          catch ptr null
  br label %210

186:                                              ; preds = %135, %147
  %187 = landingpad { ptr, i32 }
          catch ptr null
  br label %206

188:                                              ; preds = %140
  %189 = landingpad { ptr, i32 }
          catch ptr null
  br label %206

190:                                              ; preds = %156
  %191 = landingpad { ptr, i32 }
          catch ptr null
  br label %199

192:                                              ; preds = %166
  %193 = landingpad { ptr, i32 }
          catch ptr null
  %194 = load i8, ptr %15, align 8
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %69, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %198) #31
  br label %199

199:                                              ; preds = %197, %192, %190
  %200 = phi { ptr, i32 } [ %191, %190 ], [ %193, %192 ], [ %193, %197 ]
  %201 = load i8, ptr %16, align 8
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %70, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %205) #31
  br label %206

206:                                              ; preds = %186, %188, %204, %199
  %207 = phi { ptr, i32 } [ %200, %204 ], [ %200, %199 ], [ %187, %186 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %210

208:                                              ; preds = %182
  %209 = landingpad { ptr, i32 }
          catch ptr null
  br label %210

210:                                              ; preds = %184, %206, %208
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %207, %206 ], [ %185, %184 ]
  call void @_ZNSt3__14__fs10filesystem18directory_iteratorD2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZNSt3__14__fs10filesystem18directory_iteratorD2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZNSt3__14__fs10filesystem18directory_iteratorD2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %214

212:                                              ; preds = %113
  %213 = landingpad { ptr, i32 }
          catch ptr null
  br label %214

214:                                              ; preds = %131, %210, %212
  %215 = phi { ptr, i32 } [ %213, %212 ], [ %211, %210 ], [ %132, %131 ]
  %216 = extractvalue { ptr, i32 } %215, 0
  %217 = call ptr @__cxa_begin_catch(ptr %216) #24
  invoke void @__cxa_end_catch()
          to label %218 unwind label %304

218:                                              ; preds = %121, %214
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %219 = load ptr, ptr %10, align 8, !tbaa !182, !noalias !198
  call void @llvm.assume(i1 true) [ "align"(ptr %219, i64 8) ]
  %220 = ptrtoint ptr %219 to i64
  %221 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %222 = load ptr, ptr %221, align 8, !tbaa !185, !noalias !198
  call void @llvm.assume(i1 true) [ "align"(ptr %222, i64 8) ]
  %223 = ptrtoint ptr %222 to i64
  invoke void @_ZN12__apo_stdlib17join_string_rangeINSt3__111__wrap_iterIPKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEES8_T_SC_NS1_17basic_string_viewIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %17, i64 %220, i64 %223, ptr dead_on_return noundef nonnull %3)
          to label %224 unwind label %304

224:                                              ; preds = %218
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %225 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %229, !prof !85

227:                                              ; preds = %224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %228 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %229

229:                                              ; preds = %227, %224
  %230 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 16
  %232 = load ptr, ptr %231, align 8, !tbaa !86
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 8
  %234 = load ptr, ptr %233, align 8, !tbaa !90
  %235 = ptrtoint ptr %232 to i64
  %236 = ptrtoint ptr %234 to i64
  %237 = sub i64 %235, %236
  %238 = ashr exact i64 %237, 3
  %239 = icmp eq ptr %232, %234
  %240 = mul i64 %238, 170
  %241 = add i64 %240, -1
  %242 = select i1 %239, i64 0, i64 %241
  %243 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %244 = load i64, ptr %243, align 8, !tbaa !91
  %245 = getelementptr inbounds nuw i8, ptr %230, i64 40
  %246 = load i64, ptr %245, align 8, !tbaa !21
  %247 = add i64 %246, %244
  %248 = icmp eq i64 %242, %247
  br i1 %248, label %249, label %256

249:                                              ; preds = %229
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %230)
          to label %250 unwind label %306

250:                                              ; preds = %249
  %251 = load i64, ptr %245, align 8, !tbaa !21, !noalias !201
  %252 = load i64, ptr %243, align 8, !tbaa !91, !noalias !201
  %253 = load ptr, ptr %233, align 8, !tbaa !90, !noalias !201
  %254 = load ptr, ptr %231, align 8, !tbaa !86, !noalias !201
  %255 = add i64 %252, %251
  br label %256

256:                                              ; preds = %250, %229
  %257 = phi i64 [ %255, %250 ], [ %247, %229 ]
  %258 = phi ptr [ %254, %250 ], [ %232, %229 ]
  %259 = phi ptr [ %253, %250 ], [ %234, %229 ]
  %260 = udiv i64 %257, 170
  %261 = getelementptr inbounds nuw ptr, ptr %259, i64 %260
  %262 = icmp ne ptr %259, %258
  call void @llvm.assume(i1 %262)
  %263 = load ptr, ptr %261, align 8, !tbaa !98, !noalias !201
  %264 = urem i64 %257, 170
  %265 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %263, i64 %264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %265, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %266 = load i64, ptr %245, align 8, !tbaa !21
  %267 = add i64 %266, 1
  store i64 %267, ptr %245, align 8, !tbaa !21
  %268 = load i64, ptr %243, align 8, !tbaa !91
  %269 = add i64 %268, %266
  %270 = load ptr, ptr %233, align 8, !tbaa !90
  %271 = udiv i64 %269, 170
  %272 = getelementptr inbounds nuw ptr, ptr %270, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !98
  %274 = urem i64 %269, 170
  %275 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %273, i64 %274
  %276 = load i8, ptr %275, align 8
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 16
  %278 = load ptr, ptr %277, align 8
  %279 = load ptr, ptr %10, align 8, !tbaa !182
  %280 = icmp eq ptr %279, null
  br i1 %280, label %299, label %281

281:                                              ; preds = %256
  %282 = load ptr, ptr %221, align 8, !tbaa !185
  %283 = icmp eq ptr %279, %282
  br i1 %283, label %297, label %284

284:                                              ; preds = %281, %293
  %285 = phi ptr [ %286, %293 ], [ %282, %281 ]
  %286 = getelementptr inbounds i8, ptr %285, i64 -24
  %287 = load i8, ptr %286, align 8
  %288 = and i8 %287, 1
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds i8, ptr %285, i64 -8
  %292 = load ptr, ptr %291, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %292) #31
  br label %293

293:                                              ; preds = %290, %284
  %294 = icmp eq ptr %279, %286
  br i1 %294, label %295, label %284

295:                                              ; preds = %293
  %296 = load ptr, ptr %10, align 8, !tbaa !182
  br label %297

297:                                              ; preds = %295, %281
  %298 = phi ptr [ %296, %295 ], [ %279, %281 ]
  store ptr %279, ptr %221, align 8, !tbaa !185
  call void @_ZdlPv(ptr noundef %298) #31
  br label %299

299:                                              ; preds = %256, %297
  %300 = and i8 %276, 1
  %301 = icmp eq i8 %300, 0
  %302 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %303 = select i1 %301, ptr %302, ptr %278
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret ptr %303

304:                                              ; preds = %218, %214
  %305 = landingpad { ptr, i32 }
          cleanup
  br label %314

306:                                              ; preds = %249
  %307 = landingpad { ptr, i32 }
          cleanup
  %308 = load i8, ptr %17, align 8
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %313 = load ptr, ptr %312, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %313) #31
  br label %314

314:                                              ; preds = %311, %306, %304
  %315 = phi { ptr, i32 } [ %305, %304 ], [ %307, %306 ], [ %307, %311 ]
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  resume { ptr, i32 } %315
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_724sys__native_fs_hard_linkEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !204
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !204
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !204
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !204
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !207
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !207
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !207
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !207
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib12fs_hard_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret i32 %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib12fs_hard_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %54

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr %1, align 8, !tbaa !77
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %15, ptr noundef %18)
          to label %24 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %45

24:                                               ; preds = %14
  invoke void @_ZNSt3__14__fs10filesystem18__create_hard_linkERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %25 unwind label %40

25:                                               ; preds = %24
  %26 = load i8, ptr %4, align 8
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %31) #31
  br label %32

32:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %33 = load i8, ptr %3, align 8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %38) #31
  br label %39

39:                                               ; preds = %32, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %62

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = load i8, ptr %4, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %19
  %46 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ]
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %48) #31
  br label %49

49:                                               ; preds = %45, %40, %19
  %50 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %51 = load i8, ptr %3, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %9
  %55 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ]
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %57) #31
  br label %58

58:                                               ; preds = %54, %49, %9
  %59 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ], [ %55, %54 ]
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %61 = call ptr @__cxa_begin_catch(ptr %60) #24
  call void @__cxa_end_catch()
  br label %62

62:                                               ; preds = %58, %39
  %63 = phi i32 [ 1, %39 ], [ 0, %58 ]
  ret i32 %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_722sys__native_fs_symlinkEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !210
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !210
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !210
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !210
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !213
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !213
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !213
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !213
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib10fs_symlinkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret i32 %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib10fs_symlinkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5, ptr noundef %8)
          to label %14 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = load i8, ptr %3, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %54

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr %1, align 8, !tbaa !77
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 %17
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %15, ptr noundef %18)
          to label %24 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = load i8, ptr %4, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %45

24:                                               ; preds = %14
  invoke void @_ZNSt3__14__fs10filesystem16__create_symlinkERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null)
          to label %25 unwind label %40

25:                                               ; preds = %24
  %26 = load i8, ptr %4, align 8
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %31) #31
  br label %32

32:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %33 = load i8, ptr %3, align 8
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %38) #31
  br label %39

39:                                               ; preds = %32, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %62

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = load i8, ptr %4, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %19
  %46 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ]
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %48) #31
  br label %49

49:                                               ; preds = %45, %40, %19
  %50 = phi { ptr, i32 } [ %20, %19 ], [ %41, %40 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %51 = load i8, ptr %3, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %9
  %55 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ]
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %57) #31
  br label %58

58:                                               ; preds = %54, %49, %9
  %59 = phi { ptr, i32 } [ %10, %9 ], [ %50, %49 ], [ %55, %54 ]
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %61 = call ptr @__cxa_begin_catch(ptr %60) #24
  call void @__cxa_end_catch()
  br label %62

62:                                               ; preds = %58, %39
  %63 = phi i32 [ 1, %39 ], [ 0, %58 ]
  ret i32 %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_724sys__native_fs_read_linkEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !216
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !216
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !216
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !216
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib12fs_read_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12fs_read_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %5 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %6 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7, ptr noundef %10)
          to label %16 unwind label %11

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = load i8, ptr %5, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %120, label %116

16:                                               ; preds = %1
  invoke void @_ZNSt3__14__fs10filesystem14__read_symlinkERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef null)
          to label %17 unwind label %91

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !219
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %18 unwind label %93

18:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !219
  %19 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !85

21:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %22 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 3
  %33 = icmp eq ptr %26, %28
  %34 = mul i64 %32, 170
  %35 = add i64 %34, -1
  %36 = select i1 %33, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %38 = load i64, ptr %37, align 8, !tbaa !91
  %39 = getelementptr inbounds nuw i8, ptr %24, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !21
  %41 = add i64 %40, %38
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %23
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %44 unwind label %95

44:                                               ; preds = %43
  %45 = load i64, ptr %39, align 8, !tbaa !21, !noalias !222
  %46 = load i64, ptr %37, align 8, !tbaa !91, !noalias !222
  %47 = load ptr, ptr %27, align 8, !tbaa !90, !noalias !222
  %48 = load ptr, ptr %25, align 8, !tbaa !86, !noalias !222
  %49 = add i64 %46, %45
  br label %50

50:                                               ; preds = %44, %23
  %51 = phi i64 [ %49, %44 ], [ %41, %23 ]
  %52 = phi ptr [ %48, %44 ], [ %26, %23 ]
  %53 = phi ptr [ %47, %44 ], [ %28, %23 ]
  %54 = udiv i64 %51, 170
  %55 = getelementptr inbounds nuw ptr, ptr %53, i64 %54
  %56 = icmp ne ptr %53, %52
  call void @llvm.assume(i1 %56)
  %57 = load ptr, ptr %55, align 8, !tbaa !98, !noalias !222
  %58 = urem i64 %51, 170
  %59 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %57, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %60 = load i64, ptr %39, align 8, !tbaa !21
  %61 = add i64 %60, 1
  store i64 %61, ptr %39, align 8, !tbaa !21
  %62 = load i64, ptr %37, align 8, !tbaa !91
  %63 = add i64 %62, %60
  %64 = load ptr, ptr %27, align 8, !tbaa !90
  %65 = udiv i64 %63, 170
  %66 = getelementptr inbounds nuw ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = urem i64 %63, 170
  %69 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %67, i64 %68
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 1
  %76 = select i1 %72, ptr %75, ptr %74
  %77 = load i8, ptr %4, align 8
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %50
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %82) #31
  br label %83

83:                                               ; preds = %50, %80
  %84 = load i8, ptr %5, align 8
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %89) #31
  br label %90

90:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %146

91:                                               ; preds = %16
  %92 = landingpad { ptr, i32 }
          catch ptr null
  br label %111

93:                                               ; preds = %17
  %94 = landingpad { ptr, i32 }
          catch ptr null
  br label %103

95:                                               ; preds = %43
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = load i8, ptr %3, align 8
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %102) #31
  br label %103

103:                                              ; preds = %100, %95, %93
  %104 = phi { ptr, i32 } [ %94, %93 ], [ %96, %95 ], [ %96, %100 ]
  %105 = load i8, ptr %4, align 8
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %110) #31
  br label %111

111:                                              ; preds = %108, %103, %91
  %112 = phi { ptr, i32 } [ %92, %91 ], [ %104, %103 ], [ %104, %108 ]
  %113 = load i8, ptr %5, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111, %11
  %117 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ]
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %119 = load ptr, ptr %118, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %119) #31
  br label %120

120:                                              ; preds = %116, %111, %11
  %121 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ], [ %117, %116 ]
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %123 = call ptr @__cxa_begin_catch(ptr %122) #24
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull @.str.13)
          to label %124 unwind label %134

124:                                              ; preds = %120
  %125 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull %6)
          to label %126 unwind label %136

126:                                              ; preds = %124
  %127 = load i8, ptr %6, align 8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %132) #31
  br label %133

133:                                              ; preds = %126, %130
  call void @__cxa_end_catch()
  br label %146

134:                                              ; preds = %120
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %144

136:                                              ; preds = %124
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load i8, ptr %6, align 8
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %143 = load ptr, ptr %142, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %143) #31
  br label %144

144:                                              ; preds = %141, %136, %134
  %145 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %137, %141 ]
  invoke void @__cxa_end_catch()
          to label %148 unwind label %149

146:                                              ; preds = %133, %90
  %147 = phi ptr [ %76, %90 ], [ %125, %133 ]
  ret ptr %147

148:                                              ; preds = %144
  resume { ptr, i32 } %145

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN31__apollo_inline_inline_2887_5_721sys__native_fs_existsEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8
  %3 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !225
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %0, ptr noundef %9)
          to label %15 unwind label %10

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = load i8, ptr %3, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %39, label %35

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef null)
          to label %16 unwind label %30

16:                                               ; preds = %15
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 255
  %19 = icmp ne i64 %18, 0
  %20 = icmp ne i64 %18, 255
  %21 = and i1 %19, %20
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %22 = zext i1 %21 to i32
  %23 = load i8, ptr %3, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %28) #31
  br label %29

29:                                               ; preds = %26, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %43

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = load i8, ptr %3, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30, %10
  %36 = phi { ptr, i32 } [ %11, %10 ], [ %31, %30 ]
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %38) #31
  br label %39

39:                                               ; preds = %35, %30, %10
  %40 = phi { ptr, i32 } [ %11, %10 ], [ %31, %30 ], [ %36, %35 ]
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %42 = call ptr @__cxa_begin_catch(ptr %41) #24
  call void @__cxa_end_catch()
  br label %43

43:                                               ; preds = %29, %39
  %44 = phi i32 [ %22, %29 ], [ 0, %39 ]
  ret i32 %44
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_723sys__native_path_parentEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !228
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !228
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !228
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !228
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib11path_parentENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib11path_parentENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string.3", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, ptr noundef %11)
          to label %22 unwind label %12

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load i8, ptr %7, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %19) #31
  br label %20

20:                                               ; preds = %12, %17, %164
  %21 = phi { ptr, i32 } [ %157, %164 ], [ %13, %17 ], [ %13, %12 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !231
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %23 unwind label %136

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !231
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21, !noalias !231
  %27 = icmp ugt i64 %26, 9223372036854775797
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %29 unwind label %136

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %23
  %31 = icmp samesign ult i64 %26, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = trunc nuw nsw i64 %26 to i8
  %34 = shl nuw nsw i8 %33, 1
  store i8 %34, ptr %3, align 8, !noalias !231
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %47

36:                                               ; preds = %30
  %37 = and i64 %26, 9223372036854775804
  %38 = add nuw nsw i64 %37, 4
  %39 = icmp eq i64 %38, 12
  %40 = select i1 %39, i64 14, i64 %38
  %41 = shl nuw i64 %40, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %41) #30
          to label %43 unwind label %136

43:                                               ; preds = %36
  %44 = or disjoint i64 %40, 1
  store i64 %44, ptr %3, align 8, !tbaa !20, !noalias !231
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %26, ptr %45, align 8, !tbaa !21, !noalias !231
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %42, ptr %46, align 8, !tbaa !53, !noalias !231
  br label %47

47:                                               ; preds = %43, %32
  %48 = phi ptr [ %35, %32 ], [ %42, %43 ]
  %49 = shl nuw i64 %26, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %48, ptr align 2 %24, i64 %49, i1 false), !noalias !231
  %50 = getelementptr inbounds nuw i16, ptr %48, i64 %26
  store i16 0, ptr %50, align 2, !tbaa !54, !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !231
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %51 = load i8, ptr %6, align 8, !noalias !234
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %55 = load i64, ptr %54, align 8, !noalias !234
  %56 = lshr i8 %51, 1
  %57 = zext nneg i8 %56 to i64
  %58 = select i1 %53, i64 %57, i64 %55
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !234
  br label %63

61:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !237
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %62 unwind label %138

62:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !237
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68, !prof !85

66:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %67 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = ashr exact i64 %76, 3
  %78 = icmp eq ptr %71, %73
  %79 = mul i64 %77, 170
  %80 = add i64 %79, -1
  %81 = select i1 %78, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %83 = load i64, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !21
  %86 = add i64 %85, %83
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %68
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %69)
          to label %89 unwind label %140

89:                                               ; preds = %88
  %90 = load i64, ptr %84, align 8, !tbaa !21, !noalias !240
  %91 = load i64, ptr %82, align 8, !tbaa !91, !noalias !240
  %92 = load ptr, ptr %72, align 8, !tbaa !90, !noalias !240
  %93 = load ptr, ptr %70, align 8, !tbaa !86, !noalias !240
  %94 = add i64 %91, %90
  br label %95

95:                                               ; preds = %89, %68
  %96 = phi i64 [ %94, %89 ], [ %86, %68 ]
  %97 = phi ptr [ %93, %89 ], [ %71, %68 ]
  %98 = phi ptr [ %92, %89 ], [ %73, %68 ]
  %99 = udiv i64 %96, 170
  %100 = getelementptr inbounds nuw ptr, ptr %98, i64 %99
  %101 = icmp ne ptr %98, %97
  call void @llvm.assume(i1 %101)
  %102 = load ptr, ptr %100, align 8, !tbaa !98, !noalias !240
  %103 = urem i64 %96, 170
  %104 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %102, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %105 = load i64, ptr %84, align 8, !tbaa !21
  %106 = add i64 %105, 1
  store i64 %106, ptr %84, align 8, !tbaa !21
  %107 = load i64, ptr %82, align 8, !tbaa !91
  %108 = add i64 %107, %105
  %109 = load ptr, ptr %72, align 8, !tbaa !90
  %110 = udiv i64 %108, 170
  %111 = getelementptr inbounds nuw ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !98
  %113 = urem i64 %108, 170
  %114 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %112, i64 %113
  %115 = load i8, ptr %114, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = load i8, ptr %6, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %95
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %123) #31
  br label %124

124:                                              ; preds = %95, %121
  %125 = load i8, ptr %7, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %130) #31
  br label %131

131:                                              ; preds = %124, %128
  %132 = and i8 %115, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %135 = select i1 %133, ptr %134, ptr %117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %135

136:                                              ; preds = %36, %28, %22
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %156

138:                                              ; preds = %61
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %148

140:                                              ; preds = %88
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load i8, ptr %5, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %147) #31
  br label %148

148:                                              ; preds = %145, %140, %138
  %149 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ], [ %141, %145 ]
  %150 = load i8, ptr %6, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %155) #31
  br label %156

156:                                              ; preds = %153, %148, %136
  %157 = phi { ptr, i32 } [ %137, %136 ], [ %149, %148 ], [ %149, %153 ]
  %158 = load i8, ptr %7, align 8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %163) #31
  br label %164

164:                                              ; preds = %156, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_726sys__native_path_file_nameEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !243
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !243
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !243
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !243
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_file_nameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_nameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string.3", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, ptr noundef %11)
          to label %22 unwind label %12

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load i8, ptr %7, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %19) #31
  br label %20

20:                                               ; preds = %12, %17, %164
  %21 = phi { ptr, i32 } [ %157, %164 ], [ %13, %17 ], [ %13, %12 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !246
  invoke void @_ZNKSt3__14__fs10filesystem4path10__filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %23 unwind label %136

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !246
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21, !noalias !246
  %27 = icmp ugt i64 %26, 9223372036854775797
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %29 unwind label %136

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %23
  %31 = icmp samesign ult i64 %26, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = trunc nuw nsw i64 %26 to i8
  %34 = shl nuw nsw i8 %33, 1
  store i8 %34, ptr %3, align 8, !noalias !246
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %47

36:                                               ; preds = %30
  %37 = and i64 %26, 9223372036854775804
  %38 = add nuw nsw i64 %37, 4
  %39 = icmp eq i64 %38, 12
  %40 = select i1 %39, i64 14, i64 %38
  %41 = shl nuw i64 %40, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %41) #30
          to label %43 unwind label %136

43:                                               ; preds = %36
  %44 = or disjoint i64 %40, 1
  store i64 %44, ptr %3, align 8, !tbaa !20, !noalias !246
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %26, ptr %45, align 8, !tbaa !21, !noalias !246
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %42, ptr %46, align 8, !tbaa !53, !noalias !246
  br label %47

47:                                               ; preds = %43, %32
  %48 = phi ptr [ %35, %32 ], [ %42, %43 ]
  %49 = shl nuw i64 %26, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %48, ptr align 2 %24, i64 %49, i1 false), !noalias !246
  %50 = getelementptr inbounds nuw i16, ptr %48, i64 %26
  store i16 0, ptr %50, align 2, !tbaa !54, !noalias !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !246
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %51 = load i8, ptr %6, align 8, !noalias !249
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %55 = load i64, ptr %54, align 8, !noalias !249
  %56 = lshr i8 %51, 1
  %57 = zext nneg i8 %56 to i64
  %58 = select i1 %53, i64 %57, i64 %55
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !249
  br label %63

61:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !252
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %62 unwind label %138

62:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !252
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68, !prof !85

66:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %67 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = ashr exact i64 %76, 3
  %78 = icmp eq ptr %71, %73
  %79 = mul i64 %77, 170
  %80 = add i64 %79, -1
  %81 = select i1 %78, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %83 = load i64, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !21
  %86 = add i64 %85, %83
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %68
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %69)
          to label %89 unwind label %140

89:                                               ; preds = %88
  %90 = load i64, ptr %84, align 8, !tbaa !21, !noalias !255
  %91 = load i64, ptr %82, align 8, !tbaa !91, !noalias !255
  %92 = load ptr, ptr %72, align 8, !tbaa !90, !noalias !255
  %93 = load ptr, ptr %70, align 8, !tbaa !86, !noalias !255
  %94 = add i64 %91, %90
  br label %95

95:                                               ; preds = %89, %68
  %96 = phi i64 [ %94, %89 ], [ %86, %68 ]
  %97 = phi ptr [ %93, %89 ], [ %71, %68 ]
  %98 = phi ptr [ %92, %89 ], [ %73, %68 ]
  %99 = udiv i64 %96, 170
  %100 = getelementptr inbounds nuw ptr, ptr %98, i64 %99
  %101 = icmp ne ptr %98, %97
  call void @llvm.assume(i1 %101)
  %102 = load ptr, ptr %100, align 8, !tbaa !98, !noalias !255
  %103 = urem i64 %96, 170
  %104 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %102, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %105 = load i64, ptr %84, align 8, !tbaa !21
  %106 = add i64 %105, 1
  store i64 %106, ptr %84, align 8, !tbaa !21
  %107 = load i64, ptr %82, align 8, !tbaa !91
  %108 = add i64 %107, %105
  %109 = load ptr, ptr %72, align 8, !tbaa !90
  %110 = udiv i64 %108, 170
  %111 = getelementptr inbounds nuw ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !98
  %113 = urem i64 %108, 170
  %114 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %112, i64 %113
  %115 = load i8, ptr %114, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = load i8, ptr %6, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %95
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %123) #31
  br label %124

124:                                              ; preds = %95, %121
  %125 = load i8, ptr %7, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %130) #31
  br label %131

131:                                              ; preds = %124, %128
  %132 = and i8 %115, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %135 = select i1 %133, ptr %134, ptr %117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %135

136:                                              ; preds = %36, %28, %22
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %156

138:                                              ; preds = %61
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %148

140:                                              ; preds = %88
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load i8, ptr %5, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %147) #31
  br label %148

148:                                              ; preds = %145, %140, %138
  %149 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ], [ %141, %145 ]
  %150 = load i8, ptr %6, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %155) #31
  br label %156

156:                                              ; preds = %153, %148, %136
  %157 = phi { ptr, i32 } [ %137, %136 ], [ %149, %148 ], [ %149, %153 ]
  %158 = load i8, ptr %7, align 8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %163) #31
  br label %164

164:                                              ; preds = %156, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_726sys__native_path_extensionEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !258
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !258
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !258
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !258
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_extensionENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_extensionENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string.3", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, ptr noundef %11)
          to label %22 unwind label %12

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load i8, ptr %7, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %19) #31
  br label %20

20:                                               ; preds = %12, %17, %164
  %21 = phi { ptr, i32 } [ %157, %164 ], [ %13, %17 ], [ %13, %12 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !261
  invoke void @_ZNKSt3__14__fs10filesystem4path11__extensionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %23 unwind label %136

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !261
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21, !noalias !261
  %27 = icmp ugt i64 %26, 9223372036854775797
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %29 unwind label %136

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %23
  %31 = icmp samesign ult i64 %26, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = trunc nuw nsw i64 %26 to i8
  %34 = shl nuw nsw i8 %33, 1
  store i8 %34, ptr %3, align 8, !noalias !261
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %47

36:                                               ; preds = %30
  %37 = and i64 %26, 9223372036854775804
  %38 = add nuw nsw i64 %37, 4
  %39 = icmp eq i64 %38, 12
  %40 = select i1 %39, i64 14, i64 %38
  %41 = shl nuw i64 %40, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %41) #30
          to label %43 unwind label %136

43:                                               ; preds = %36
  %44 = or disjoint i64 %40, 1
  store i64 %44, ptr %3, align 8, !tbaa !20, !noalias !261
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %26, ptr %45, align 8, !tbaa !21, !noalias !261
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %42, ptr %46, align 8, !tbaa !53, !noalias !261
  br label %47

47:                                               ; preds = %43, %32
  %48 = phi ptr [ %35, %32 ], [ %42, %43 ]
  %49 = shl nuw i64 %26, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %48, ptr align 2 %24, i64 %49, i1 false), !noalias !261
  %50 = getelementptr inbounds nuw i16, ptr %48, i64 %26
  store i16 0, ptr %50, align 2, !tbaa !54, !noalias !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !261
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %51 = load i8, ptr %6, align 8, !noalias !264
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %55 = load i64, ptr %54, align 8, !noalias !264
  %56 = lshr i8 %51, 1
  %57 = zext nneg i8 %56 to i64
  %58 = select i1 %53, i64 %57, i64 %55
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !264
  br label %63

61:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !267
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %62 unwind label %138

62:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !267
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68, !prof !85

66:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %67 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = ashr exact i64 %76, 3
  %78 = icmp eq ptr %71, %73
  %79 = mul i64 %77, 170
  %80 = add i64 %79, -1
  %81 = select i1 %78, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %83 = load i64, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !21
  %86 = add i64 %85, %83
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %68
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %69)
          to label %89 unwind label %140

89:                                               ; preds = %88
  %90 = load i64, ptr %84, align 8, !tbaa !21, !noalias !270
  %91 = load i64, ptr %82, align 8, !tbaa !91, !noalias !270
  %92 = load ptr, ptr %72, align 8, !tbaa !90, !noalias !270
  %93 = load ptr, ptr %70, align 8, !tbaa !86, !noalias !270
  %94 = add i64 %91, %90
  br label %95

95:                                               ; preds = %89, %68
  %96 = phi i64 [ %94, %89 ], [ %86, %68 ]
  %97 = phi ptr [ %93, %89 ], [ %71, %68 ]
  %98 = phi ptr [ %92, %89 ], [ %73, %68 ]
  %99 = udiv i64 %96, 170
  %100 = getelementptr inbounds nuw ptr, ptr %98, i64 %99
  %101 = icmp ne ptr %98, %97
  call void @llvm.assume(i1 %101)
  %102 = load ptr, ptr %100, align 8, !tbaa !98, !noalias !270
  %103 = urem i64 %96, 170
  %104 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %102, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %105 = load i64, ptr %84, align 8, !tbaa !21
  %106 = add i64 %105, 1
  store i64 %106, ptr %84, align 8, !tbaa !21
  %107 = load i64, ptr %82, align 8, !tbaa !91
  %108 = add i64 %107, %105
  %109 = load ptr, ptr %72, align 8, !tbaa !90
  %110 = udiv i64 %108, 170
  %111 = getelementptr inbounds nuw ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !98
  %113 = urem i64 %108, 170
  %114 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %112, i64 %113
  %115 = load i8, ptr %114, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = load i8, ptr %6, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %95
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %123) #31
  br label %124

124:                                              ; preds = %95, %121
  %125 = load i8, ptr %7, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %130) #31
  br label %131

131:                                              ; preds = %124, %128
  %132 = and i8 %115, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %135 = select i1 %133, ptr %134, ptr %117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %135

136:                                              ; preds = %36, %28, %22
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %156

138:                                              ; preds = %61
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %148

140:                                              ; preds = %88
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load i8, ptr %5, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %147) #31
  br label %148

148:                                              ; preds = %145, %140, %138
  %149 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ], [ %141, %145 ]
  %150 = load i8, ptr %6, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %155) #31
  br label %156

156:                                              ; preds = %153, %148, %136
  %157 = phi { ptr, i32 } [ %137, %136 ], [ %149, %148 ], [ %149, %153 ]
  %158 = load i8, ptr %7, align 8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %163) #31
  br label %164

164:                                              ; preds = %156, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_726sys__native_path_file_stemEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !273
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !273
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !273
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !273
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_file_stemENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib14path_file_stemENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string.3", align 8
  %4 = alloca %"class.std::__1::basic_string_view.13", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %7 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, ptr noundef %11)
          to label %22 unwind label %12

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load i8, ptr %7, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %19) #31
  br label %20

20:                                               ; preds = %12, %17, %164
  %21 = phi { ptr, i32 } [ %157, %164 ], [ %13, %17 ], [ %13, %12 ]
  resume { ptr, i32 } %21

22:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !276
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !276
  invoke void @_ZNKSt3__14__fs10filesystem4path6__stemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %23 unwind label %136

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !276
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !21, !noalias !276
  %27 = icmp ugt i64 %26, 9223372036854775797
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %29 unwind label %136

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %23
  %31 = icmp samesign ult i64 %26, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = trunc nuw nsw i64 %26 to i8
  %34 = shl nuw nsw i8 %33, 1
  store i8 %34, ptr %3, align 8, !noalias !276
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %47

36:                                               ; preds = %30
  %37 = and i64 %26, 9223372036854775804
  %38 = add nuw nsw i64 %37, 4
  %39 = icmp eq i64 %38, 12
  %40 = select i1 %39, i64 14, i64 %38
  %41 = shl nuw i64 %40, 1
  %42 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %41) #30
          to label %43 unwind label %136

43:                                               ; preds = %36
  %44 = or disjoint i64 %40, 1
  store i64 %44, ptr %3, align 8, !tbaa !20, !noalias !276
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %26, ptr %45, align 8, !tbaa !21, !noalias !276
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %42, ptr %46, align 8, !tbaa !53, !noalias !276
  br label %47

47:                                               ; preds = %43, %32
  %48 = phi ptr [ %35, %32 ], [ %42, %43 ]
  %49 = shl nuw i64 %26, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %48, ptr align 2 %24, i64 %49, i1 false), !noalias !276
  %50 = getelementptr inbounds nuw i16, ptr %48, i64 %26
  store i16 0, ptr %50, align 2, !tbaa !54, !noalias !276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !276
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %51 = load i8, ptr %6, align 8, !noalias !279
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %55 = load i64, ptr %54, align 8, !noalias !279
  %56 = lshr i8 %51, 1
  %57 = zext nneg i8 %56 to i64
  %58 = select i1 %53, i64 %57, i64 %55
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !279
  br label %63

61:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !282
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %62 unwind label %138

62:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !282
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68, !prof !85

66:                                               ; preds = %63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %67 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = ashr exact i64 %76, 3
  %78 = icmp eq ptr %71, %73
  %79 = mul i64 %77, 170
  %80 = add i64 %79, -1
  %81 = select i1 %78, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %83 = load i64, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds nuw i8, ptr %69, i64 40
  %85 = load i64, ptr %84, align 8, !tbaa !21
  %86 = add i64 %85, %83
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %68
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %69)
          to label %89 unwind label %140

89:                                               ; preds = %88
  %90 = load i64, ptr %84, align 8, !tbaa !21, !noalias !285
  %91 = load i64, ptr %82, align 8, !tbaa !91, !noalias !285
  %92 = load ptr, ptr %72, align 8, !tbaa !90, !noalias !285
  %93 = load ptr, ptr %70, align 8, !tbaa !86, !noalias !285
  %94 = add i64 %91, %90
  br label %95

95:                                               ; preds = %89, %68
  %96 = phi i64 [ %94, %89 ], [ %86, %68 ]
  %97 = phi ptr [ %93, %89 ], [ %71, %68 ]
  %98 = phi ptr [ %92, %89 ], [ %73, %68 ]
  %99 = udiv i64 %96, 170
  %100 = getelementptr inbounds nuw ptr, ptr %98, i64 %99
  %101 = icmp ne ptr %98, %97
  call void @llvm.assume(i1 %101)
  %102 = load ptr, ptr %100, align 8, !tbaa !98, !noalias !285
  %103 = urem i64 %96, 170
  %104 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %102, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %105 = load i64, ptr %84, align 8, !tbaa !21
  %106 = add i64 %105, 1
  store i64 %106, ptr %84, align 8, !tbaa !21
  %107 = load i64, ptr %82, align 8, !tbaa !91
  %108 = add i64 %107, %105
  %109 = load ptr, ptr %72, align 8, !tbaa !90
  %110 = udiv i64 %108, 170
  %111 = getelementptr inbounds nuw ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !98
  %113 = urem i64 %108, 170
  %114 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %112, i64 %113
  %115 = load i8, ptr %114, align 8
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 16
  %117 = load ptr, ptr %116, align 8
  %118 = load i8, ptr %6, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %95
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %123) #31
  br label %124

124:                                              ; preds = %95, %121
  %125 = load i8, ptr %7, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %130 = load ptr, ptr %129, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %130) #31
  br label %131

131:                                              ; preds = %124, %128
  %132 = and i8 %115, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %135 = select i1 %133, ptr %134, ptr %117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %135

136:                                              ; preds = %36, %28, %22
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %156

138:                                              ; preds = %61
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %148

140:                                              ; preds = %88
  %141 = landingpad { ptr, i32 }
          cleanup
  %142 = load i8, ptr %5, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %147) #31
  br label %148

148:                                              ; preds = %145, %140, %138
  %149 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ], [ %141, %145 ]
  %150 = load i8, ptr %6, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %155 = load ptr, ptr %154, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %155) #31
  br label %156

156:                                              ; preds = %153, %148, %136
  %157 = phi { ptr, i32 } [ %137, %136 ], [ %149, %148 ], [ %149, %153 ]
  %158 = load i8, ptr %7, align 8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %163) #31
  br label %164

164:                                              ; preds = %156, %161
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_728sys__native_path_is_absoluteEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !288
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !288
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !288
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !288
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib16path_is_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret i32 %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib16path_is_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string_view.13", align 8
  %3 = alloca %"class.std::__1::basic_string_view.13", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %8)
          to label %19 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load i8, ptr %4, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %9, %14, %62
  %18 = phi { ptr, i32 } [ %55, %62 ], [ %10, %14 ], [ %10, %9 ]
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path11__root_nameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %20 unwind label %54

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path16__root_directoryEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %21 unwind label %54

21:                                               ; preds = %20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i64, ptr %22, align 8, !tbaa !47
  switch i64 %23, label %33 [
    i64 2, label %24
    i64 0, label %44
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !tbaa !291
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !54
  %28 = icmp eq i16 %27, 58
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !47
  %32 = icmp ne i64 %31, 0
  br label %44

33:                                               ; preds = %21
  %34 = icmp ult i64 %23, 3
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %2, align 8, !tbaa !291
  %37 = load i16, ptr %36, align 2, !tbaa !54
  switch i16 %37, label %44 [
    i16 47, label %38
    i16 92, label %38
  ]

38:                                               ; preds = %35, %35
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %40 = load i16, ptr %39, align 2, !tbaa !54
  %41 = icmp eq i16 %40, 47
  %42 = icmp eq i16 %40, 92
  %43 = or i1 %41, %42
  br label %44

44:                                               ; preds = %38, %35, %33, %29, %24, %21
  %45 = phi i1 [ %32, %29 ], [ %43, %38 ], [ false, %21 ], [ false, %33 ], [ false, %35 ], [ false, %24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %46 = load i8, ptr %4, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %51) #31
  br label %52

52:                                               ; preds = %44, %49
  %53 = zext i1 %45 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i32 %53

54:                                               ; preds = %20, %19
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load i8, ptr %4, align 8
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %61) #31
  br label %62

62:                                               ; preds = %54, %59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN31__apollo_inline_inline_2887_5_728sys__native_path_is_relativeEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !292
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !292
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !292
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !292
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib16path_is_relativeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret i32 %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12__apo_stdlib16path_is_relativeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::basic_string_view.13", align 8
  %3 = alloca %"class.std::__1::basic_string_view.13", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %0, align 8, !tbaa !77
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %8)
          to label %19 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load i8, ptr %4, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %9, %14, %63
  %18 = phi { ptr, i32 } [ %56, %63 ], [ %10, %14 ], [ %10, %9 ]
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path11__root_nameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %20 unwind label %55

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path16__root_directoryEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %21 unwind label %55

21:                                               ; preds = %20
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i64, ptr %22, align 8, !tbaa !47
  switch i64 %23, label %33 [
    i64 2, label %24
    i64 0, label %44
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !tbaa !291
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !54
  %28 = icmp eq i16 %27, 58
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !47
  %32 = icmp ne i64 %31, 0
  br label %44

33:                                               ; preds = %21
  %34 = icmp ult i64 %23, 3
  br i1 %34, label %44, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %2, align 8, !tbaa !291
  %37 = load i16, ptr %36, align 2, !tbaa !54
  switch i16 %37, label %44 [
    i16 47, label %38
    i16 92, label %38
  ]

38:                                               ; preds = %35, %35
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 2
  %40 = load i16, ptr %39, align 2, !tbaa !54
  %41 = icmp eq i16 %40, 47
  %42 = icmp eq i16 %40, 92
  %43 = or i1 %41, %42
  br label %44

44:                                               ; preds = %38, %35, %33, %29, %24, %21
  %45 = phi i1 [ %32, %29 ], [ %43, %38 ], [ false, %21 ], [ false, %33 ], [ false, %35 ], [ false, %24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %46 = load i8, ptr %4, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %51 = load ptr, ptr %50, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %51) #31
  br label %52

52:                                               ; preds = %44, %49
  %53 = xor i1 %45, true
  %54 = zext i1 %53 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i32 %54

55:                                               ; preds = %20, %19
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load i8, ptr %4, align 8
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %62) #31
  br label %63

63:                                               ; preds = %55, %60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_728sys__native_path_to_absoluteEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !295
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !295
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !295
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !295
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib16path_to_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib16path_to_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %5 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %6 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7, ptr noundef %10)
          to label %16 unwind label %11

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = load i8, ptr %5, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %120, label %116

16:                                               ; preds = %1
  invoke void @_ZNSt3__14__fs10filesystem10__absoluteERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef null)
          to label %17 unwind label %91

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !298
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %18 unwind label %93

18:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !298
  %19 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !85

21:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %22 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 3
  %33 = icmp eq ptr %26, %28
  %34 = mul i64 %32, 170
  %35 = add i64 %34, -1
  %36 = select i1 %33, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %38 = load i64, ptr %37, align 8, !tbaa !91
  %39 = getelementptr inbounds nuw i8, ptr %24, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !21
  %41 = add i64 %40, %38
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %23
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %44 unwind label %95

44:                                               ; preds = %43
  %45 = load i64, ptr %39, align 8, !tbaa !21, !noalias !301
  %46 = load i64, ptr %37, align 8, !tbaa !91, !noalias !301
  %47 = load ptr, ptr %27, align 8, !tbaa !90, !noalias !301
  %48 = load ptr, ptr %25, align 8, !tbaa !86, !noalias !301
  %49 = add i64 %46, %45
  br label %50

50:                                               ; preds = %44, %23
  %51 = phi i64 [ %49, %44 ], [ %41, %23 ]
  %52 = phi ptr [ %48, %44 ], [ %26, %23 ]
  %53 = phi ptr [ %47, %44 ], [ %28, %23 ]
  %54 = udiv i64 %51, 170
  %55 = getelementptr inbounds nuw ptr, ptr %53, i64 %54
  %56 = icmp ne ptr %53, %52
  call void @llvm.assume(i1 %56)
  %57 = load ptr, ptr %55, align 8, !tbaa !98, !noalias !301
  %58 = urem i64 %51, 170
  %59 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %57, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %60 = load i64, ptr %39, align 8, !tbaa !21
  %61 = add i64 %60, 1
  store i64 %61, ptr %39, align 8, !tbaa !21
  %62 = load i64, ptr %37, align 8, !tbaa !91
  %63 = add i64 %62, %60
  %64 = load ptr, ptr %27, align 8, !tbaa !90
  %65 = udiv i64 %63, 170
  %66 = getelementptr inbounds nuw ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = urem i64 %63, 170
  %69 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %67, i64 %68
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 1
  %76 = select i1 %72, ptr %75, ptr %74
  %77 = load i8, ptr %4, align 8
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %50
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %82) #31
  br label %83

83:                                               ; preds = %50, %80
  %84 = load i8, ptr %5, align 8
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %89) #31
  br label %90

90:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %146

91:                                               ; preds = %16
  %92 = landingpad { ptr, i32 }
          catch ptr null
  br label %111

93:                                               ; preds = %17
  %94 = landingpad { ptr, i32 }
          catch ptr null
  br label %103

95:                                               ; preds = %43
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = load i8, ptr %3, align 8
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %102) #31
  br label %103

103:                                              ; preds = %100, %95, %93
  %104 = phi { ptr, i32 } [ %94, %93 ], [ %96, %95 ], [ %96, %100 ]
  %105 = load i8, ptr %4, align 8
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %110) #31
  br label %111

111:                                              ; preds = %108, %103, %91
  %112 = phi { ptr, i32 } [ %92, %91 ], [ %104, %103 ], [ %104, %108 ]
  %113 = load i8, ptr %5, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111, %11
  %117 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ]
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %119 = load ptr, ptr %118, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %119) #31
  br label %120

120:                                              ; preds = %116, %111, %11
  %121 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ], [ %117, %116 ]
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %123 = call ptr @__cxa_begin_catch(ptr %122) #24
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %124 unwind label %134

124:                                              ; preds = %120
  %125 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull %6)
          to label %126 unwind label %136

126:                                              ; preds = %124
  %127 = load i8, ptr %6, align 8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %132) #31
  br label %133

133:                                              ; preds = %126, %130
  call void @__cxa_end_catch()
  br label %146

134:                                              ; preds = %120
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %144

136:                                              ; preds = %124
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load i8, ptr %6, align 8
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %143 = load ptr, ptr %142, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %143) #31
  br label %144

144:                                              ; preds = %141, %136, %134
  %145 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %137, %141 ]
  invoke void @__cxa_end_catch()
          to label %148 unwind label %149

146:                                              ; preds = %133, %90
  %147 = phi ptr [ %76, %90 ], [ %125, %133 ]
  ret ptr %147

148:                                              ; preds = %144
  resume { ptr, i32 } %145

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_729sys__native_path_canonicalizeEPKc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !304
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !304
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !304
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !304
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib17path_canonicalizeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  ret ptr %9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib17path_canonicalizeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::allocator", align 1
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %5 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %6 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7, ptr noundef %10)
          to label %16 unwind label %11

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = load i8, ptr %5, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %120, label %116

16:                                               ; preds = %1
  invoke void @_ZNSt3__14__fs10filesystem18__weakly_canonicalERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef null)
          to label %17 unwind label %91

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !307
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %18 unwind label %93

18:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !307
  %19 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !85

21:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %22 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 3
  %33 = icmp eq ptr %26, %28
  %34 = mul i64 %32, 170
  %35 = add i64 %34, -1
  %36 = select i1 %33, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %38 = load i64, ptr %37, align 8, !tbaa !91
  %39 = getelementptr inbounds nuw i8, ptr %24, i64 40
  %40 = load i64, ptr %39, align 8, !tbaa !21
  %41 = add i64 %40, %38
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %23
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %44 unwind label %95

44:                                               ; preds = %43
  %45 = load i64, ptr %39, align 8, !tbaa !21, !noalias !310
  %46 = load i64, ptr %37, align 8, !tbaa !91, !noalias !310
  %47 = load ptr, ptr %27, align 8, !tbaa !90, !noalias !310
  %48 = load ptr, ptr %25, align 8, !tbaa !86, !noalias !310
  %49 = add i64 %46, %45
  br label %50

50:                                               ; preds = %44, %23
  %51 = phi i64 [ %49, %44 ], [ %41, %23 ]
  %52 = phi ptr [ %48, %44 ], [ %26, %23 ]
  %53 = phi ptr [ %47, %44 ], [ %28, %23 ]
  %54 = udiv i64 %51, 170
  %55 = getelementptr inbounds nuw ptr, ptr %53, i64 %54
  %56 = icmp ne ptr %53, %52
  call void @llvm.assume(i1 %56)
  %57 = load ptr, ptr %55, align 8, !tbaa !98, !noalias !310
  %58 = urem i64 %51, 170
  %59 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %57, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %60 = load i64, ptr %39, align 8, !tbaa !21
  %61 = add i64 %60, 1
  store i64 %61, ptr %39, align 8, !tbaa !21
  %62 = load i64, ptr %37, align 8, !tbaa !91
  %63 = add i64 %62, %60
  %64 = load ptr, ptr %27, align 8, !tbaa !90
  %65 = udiv i64 %63, 170
  %66 = getelementptr inbounds nuw ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = urem i64 %63, 170
  %69 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %67, i64 %68
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 1
  %76 = select i1 %72, ptr %75, ptr %74
  %77 = load i8, ptr %4, align 8
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %50
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %82) #31
  br label %83

83:                                               ; preds = %50, %80
  %84 = load i8, ptr %5, align 8
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %89 = load ptr, ptr %88, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %89) #31
  br label %90

90:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %146

91:                                               ; preds = %16
  %92 = landingpad { ptr, i32 }
          catch ptr null
  br label %111

93:                                               ; preds = %17
  %94 = landingpad { ptr, i32 }
          catch ptr null
  br label %103

95:                                               ; preds = %43
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = load i8, ptr %3, align 8
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %102) #31
  br label %103

103:                                              ; preds = %100, %95, %93
  %104 = phi { ptr, i32 } [ %94, %93 ], [ %96, %95 ], [ %96, %100 ]
  %105 = load i8, ptr %4, align 8
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %110 = load ptr, ptr %109, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %110) #31
  br label %111

111:                                              ; preds = %108, %103, %91
  %112 = phi { ptr, i32 } [ %92, %91 ], [ %104, %103 ], [ %104, %108 ]
  %113 = load i8, ptr %5, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111, %11
  %117 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ]
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %119 = load ptr, ptr %118, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %119) #31
  br label %120

120:                                              ; preds = %116, %111, %11
  %121 = phi { ptr, i32 } [ %12, %11 ], [ %112, %111 ], [ %117, %116 ]
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %123 = call ptr @__cxa_begin_catch(ptr %122) #24
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %124 unwind label %134

124:                                              ; preds = %120
  %125 = invoke noundef ptr @_ZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull %6)
          to label %126 unwind label %136

126:                                              ; preds = %124
  %127 = load i8, ptr %6, align 8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %132) #31
  br label %133

133:                                              ; preds = %126, %130
  call void @__cxa_end_catch()
  br label %146

134:                                              ; preds = %120
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %144

136:                                              ; preds = %124
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load i8, ptr %6, align 8
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %143 = load ptr, ptr %142, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %143) #31
  br label %144

144:                                              ; preds = %141, %136, %134
  %145 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %137, %141 ]
  invoke void @__cxa_end_catch()
          to label %148 unwind label %149

146:                                              ; preds = %133, %90
  %147 = phi ptr [ %76, %90 ], [ %125, %133 ]
  ret ptr %147

148:                                              ; preds = %144
  resume { ptr, i32 } %145

149:                                              ; preds = %144
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN31__apollo_inline_inline_2887_5_727sys__native_path_componentsEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !313
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !313
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !313
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !313
  br label %10

10:                                               ; preds = %6, %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !316
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !316
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !316
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !316
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef ptr @_ZN12__apo_stdlib15path_componentsENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  ret ptr %17
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib15path_componentsENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef %0, ptr dead_on_return noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca ptr, align 8
  %4 = alloca %class.anon.52, align 8
  %5 = alloca %"class.std::__1::allocator", align 1
  %6 = alloca %"class.std::__1::basic_string_view", align 8
  %7 = alloca %"class.std::__1::vector", align 8
  %8 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %9 = alloca %"class.std::__1::__fs::filesystem::path::iterator", align 8
  %10 = alloca %"class.std::__1::__fs::filesystem::path::iterator", align 8
  %11 = alloca %"class.std::__1::__fs::filesystem::path", align 8
  %12 = alloca %"class.std::__1::basic_string", align 8
  %13 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %0, align 8, !tbaa !77
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 %16
  invoke void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %14, ptr noundef %17)
          to label %26 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load i8, ptr %8, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %244, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %25) #31
  br label %244

26:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path::iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %27 unwind label %71

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNKSt3__14__fs10filesystem4path3endEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path::iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %28 unwind label %73

28:                                               ; preds = %27
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %39

39:                                               ; preds = %28, %108
  %40 = load <2 x ptr>, ptr %29, align 8
  %41 = load <2 x ptr>, ptr %30, align 8
  %42 = icmp ne <2 x ptr> %40, %41
  %43 = extractelement <2 x i1> %42, i64 0
  %44 = extractelement <2 x i1> %42, i64 1
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %77, label %46

46:                                               ; preds = %39
  %47 = load i8, ptr %10, align 8
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %52) #31
  br label %53

53:                                               ; preds = %46, %50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %54 = load i8, ptr %9, align 8
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %31, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %58) #31
  br label %59

59:                                               ; preds = %53, %57
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %60 = load i8, ptr %8, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %65 = load ptr, ptr %64, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %65) #31
  br label %66

66:                                               ; preds = %59, %63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %67 = load ptr, ptr %7, align 8, !tbaa !182, !noalias !319
  call void @llvm.assume(i1 true) [ "align"(ptr %67, i64 8) ]
  %68 = ptrtoint ptr %67 to i64
  %69 = load ptr, ptr %33, align 8, !tbaa !185, !noalias !319
  call void @llvm.assume(i1 true) [ "align"(ptr %69, i64 8) ]
  %70 = ptrtoint ptr %69 to i64
  invoke void @_ZN12__apo_stdlib17join_string_rangeINSt3__111__wrap_iterIPKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEES8_T_SC_NS1_17basic_string_viewIcS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %13, i64 %68, i64 %70, ptr dead_on_return noundef nonnull %6)
          to label %154 unwind label %234

71:                                               ; preds = %26
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %145

73:                                               ; preds = %27
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %137

75:                                               ; preds = %108
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %129

77:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %78 = load i8, ptr %9, align 8, !noalias !322
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(49) %9, i64 24, i1 false), !tbaa.struct !56
  br label %85

82:                                               ; preds = %77
  %83 = load ptr, ptr %31, align 8, !tbaa !20, !noalias !322
  %84 = load i64, ptr %32, align 8, !tbaa !20, !noalias !322
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE25__init_copy_ctor_externalEPKwy(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %83, i64 noundef %84)
          to label %85 unwind label %110

85:                                               ; preds = %81, %82
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !325
  invoke void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %86 unwind label %112

86:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %87 = load ptr, ptr %33, align 8, !tbaa !185
  store ptr %87, ptr %3, align 8, !tbaa !98
  %88 = load ptr, ptr %34, align 8, !tbaa !192
  store ptr %3, ptr %4, align 8, !tbaa !193
  store ptr %12, ptr %35, align 8, !tbaa !98
  store ptr %7, ptr %36, align 8, !tbaa !194
  %89 = icmp ult ptr %87, %88
  br i1 %89, label %90, label %92, !prof !197

90:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %91 = getelementptr inbounds nuw i8, ptr %87, i64 24
  br label %95

92:                                               ; preds = %86
  invoke void @_ZZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJS6_EEERS6_DpOT_ENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %93 unwind label %114

93:                                               ; preds = %92
  %94 = load ptr, ptr %3, align 8, !tbaa !98
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi ptr [ %91, %90 ], [ %94, %93 ]
  store ptr %96, ptr %33, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %97 = load i8, ptr %12, align 8
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %101) #31
  br label %102

102:                                              ; preds = %95, %100
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %103 = load i8, ptr %11, align 8
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %38, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %107) #31
  br label %108

108:                                              ; preds = %102, %106
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %109 = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt3__14__fs10filesystem4path8iterator11__incrementEv(ptr noundef nonnull align 8 dereferenceable(49) %9)
          to label %39 unwind label %75

110:                                              ; preds = %82
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %129

112:                                              ; preds = %85
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %121

114:                                              ; preds = %92
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load i8, ptr %12, align 8
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %37, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %120) #31
  br label %121

121:                                              ; preds = %119, %114, %112
  %122 = phi { ptr, i32 } [ %113, %112 ], [ %115, %114 ], [ %115, %119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %123 = load i8, ptr %11, align 8
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr %38, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %127) #31
  br label %128

128:                                              ; preds = %121, %126
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %129

129:                                              ; preds = %110, %128, %75
  %130 = phi { ptr, i32 } [ %76, %75 ], [ %122, %128 ], [ %111, %110 ]
  %131 = load i8, ptr %10, align 8
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %136 = load ptr, ptr %135, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %136) #31
  br label %137

137:                                              ; preds = %134, %129, %73
  %138 = phi { ptr, i32 } [ %74, %73 ], [ %130, %129 ], [ %130, %134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %139 = load i8, ptr %9, align 8
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %144 = load ptr, ptr %143, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %144) #31
  br label %145

145:                                              ; preds = %142, %137, %71
  %146 = phi { ptr, i32 } [ %72, %71 ], [ %138, %137 ], [ %138, %142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %147 = load i8, ptr %8, align 8
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %152 = load ptr, ptr %151, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %152) #31
  br label %153

153:                                              ; preds = %145, %150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %244

154:                                              ; preds = %66
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %155 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %159, !prof !85

157:                                              ; preds = %154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %158 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %159

159:                                              ; preds = %157, %154
  %160 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %162 = load ptr, ptr %161, align 8, !tbaa !86
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %164 = load ptr, ptr %163, align 8, !tbaa !90
  %165 = ptrtoint ptr %162 to i64
  %166 = ptrtoint ptr %164 to i64
  %167 = sub i64 %165, %166
  %168 = ashr exact i64 %167, 3
  %169 = icmp eq ptr %162, %164
  %170 = mul i64 %168, 170
  %171 = add i64 %170, -1
  %172 = select i1 %169, i64 0, i64 %171
  %173 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %174 = load i64, ptr %173, align 8, !tbaa !91
  %175 = getelementptr inbounds nuw i8, ptr %160, i64 40
  %176 = load i64, ptr %175, align 8, !tbaa !21
  %177 = add i64 %176, %174
  %178 = icmp eq i64 %172, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %159
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %160)
          to label %180 unwind label %236

180:                                              ; preds = %179
  %181 = load i64, ptr %175, align 8, !tbaa !21, !noalias !328
  %182 = load i64, ptr %173, align 8, !tbaa !91, !noalias !328
  %183 = load ptr, ptr %163, align 8, !tbaa !90, !noalias !328
  %184 = load ptr, ptr %161, align 8, !tbaa !86, !noalias !328
  %185 = add i64 %182, %181
  br label %186

186:                                              ; preds = %180, %159
  %187 = phi i64 [ %185, %180 ], [ %177, %159 ]
  %188 = phi ptr [ %184, %180 ], [ %162, %159 ]
  %189 = phi ptr [ %183, %180 ], [ %164, %159 ]
  %190 = udiv i64 %187, 170
  %191 = getelementptr inbounds nuw ptr, ptr %189, i64 %190
  %192 = icmp ne ptr %189, %188
  call void @llvm.assume(i1 %192)
  %193 = load ptr, ptr %191, align 8, !tbaa !98, !noalias !328
  %194 = urem i64 %187, 170
  %195 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %193, i64 %194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %195, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %196 = load i64, ptr %175, align 8, !tbaa !21
  %197 = add i64 %196, 1
  store i64 %197, ptr %175, align 8, !tbaa !21
  %198 = load i64, ptr %173, align 8, !tbaa !91
  %199 = add i64 %198, %196
  %200 = load ptr, ptr %163, align 8, !tbaa !90
  %201 = udiv i64 %199, 170
  %202 = getelementptr inbounds nuw ptr, ptr %200, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !98
  %204 = urem i64 %199, 170
  %205 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %203, i64 %204
  %206 = load i8, ptr %205, align 8
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %208 = load ptr, ptr %207, align 8
  %209 = load ptr, ptr %7, align 8, !tbaa !182
  %210 = icmp eq ptr %209, null
  br i1 %210, label %229, label %211

211:                                              ; preds = %186
  %212 = load ptr, ptr %33, align 8, !tbaa !185
  %213 = icmp eq ptr %209, %212
  br i1 %213, label %227, label %214

214:                                              ; preds = %211, %223
  %215 = phi ptr [ %216, %223 ], [ %212, %211 ]
  %216 = getelementptr inbounds i8, ptr %215, i64 -24
  %217 = load i8, ptr %216, align 8
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds i8, ptr %215, i64 -8
  %222 = load ptr, ptr %221, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %222) #31
  br label %223

223:                                              ; preds = %220, %214
  %224 = icmp eq ptr %209, %216
  br i1 %224, label %225, label %214

225:                                              ; preds = %223
  %226 = load ptr, ptr %7, align 8, !tbaa !182
  br label %227

227:                                              ; preds = %225, %211
  %228 = phi ptr [ %226, %225 ], [ %209, %211 ]
  store ptr %209, ptr %33, align 8, !tbaa !185
  call void @_ZdlPv(ptr noundef %228) #31
  br label %229

229:                                              ; preds = %186, %227
  %230 = and i8 %206, 1
  %231 = icmp eq i8 %230, 0
  %232 = getelementptr inbounds nuw i8, ptr %205, i64 1
  %233 = select i1 %231, ptr %232, ptr %208
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %233

234:                                              ; preds = %66
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %244

236:                                              ; preds = %179
  %237 = landingpad { ptr, i32 }
          cleanup
  %238 = load i8, ptr %13, align 8
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %243 = load ptr, ptr %242, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %243) #31
  br label %244

244:                                              ; preds = %241, %236, %23, %18, %153, %234
  %245 = phi { ptr, i32 } [ %235, %234 ], [ %19, %18 ], [ %146, %153 ], [ %237, %241 ], [ %19, %23 ], [ %237, %236 ]
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %245
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @sys__native_file_open(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN31__apollo_inline_inline_2887_5_721sys__native_file_openEPKcS1_(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_create(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN31__apollo_inline_inline_2887_5_723sys__native_file_createEPKc(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_file_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !331
  br label %9

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !77, !alias.scope !331
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !331
  store i64 %8, ptr %7, align 8, !tbaa !79, !alias.scope !331
  br label %9

9:                                                ; preds = %5, %6
  %10 = call noundef i32 @_ZN12__apo_stdlib10file_writeEPvNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef %0, ptr dead_on_return noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %10
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
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %8, align 8, !tbaa !34
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
define dso_local noundef i32 @sys__native_file_sync_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN12__apo_stdlib13file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_file_sync_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN12__apo_stdlib13file_sync_allEPv(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_file_set_len(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = tail call noundef i32 @_ZN12__apo_stdlib12file_set_lenEPvx(ptr noundef %0, i64 noundef %3)
  ret i32 %4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_file_metadata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN12__apo_stdlib13file_metadataEPv(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sys__native_meta_size(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8, !tbaa !119
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
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
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_dir(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %9 = load i8, ptr %8, align 8, !tbaa !114, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_meta_is_file(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 97
  %9 = load i8, ptr %8, align 1, !tbaa !116, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sys__native_perm_readonly(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 98
  %9 = load i8, ptr %8, align 2, !tbaa !118, !range !80, !noundef !81
  %10 = zext nneg i8 %9 to i32
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_create_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !334
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !334
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !334
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !334
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib13fs_create_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_create_dir_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !337
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !337
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !337
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !337
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib17fs_create_dir_allENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2887_5_726sys__native_fs_remove_fileEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_remove_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2887_5_725sys__native_fs_remove_dirEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_remove_dir_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2887_5_729sys__native_fs_remove_dir_allEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !340
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !340
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !340
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !340
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !343
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !343
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !343
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !343
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib9fs_renameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i32 %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !346
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !346
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !346
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !346
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !349
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !349
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !349
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !349
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib7fs_copyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i32 %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_fs_read_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !352
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !352
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !352
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !352
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !355
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !355
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !355
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !355
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef ptr @_ZN12__apo_stdlib11fs_read_dirENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_hard_link(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !358
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !358
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !358
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !358
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !361
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !361
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !361
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !361
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib12fs_hard_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i32 %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_fs_symlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !364
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !364
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !364
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !364
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !367
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !367
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !367
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !367
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef i32 @_ZN12__apo_stdlib10fs_symlinkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i32 %17
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_fs_read_link(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !370
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !370
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !370
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !370
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib12fs_read_linkENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @sys__native_fs_exists(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN31__apollo_inline_inline_2887_5_721sys__native_fs_existsEPKc(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_parent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !373
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !373
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !373
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !373
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib11path_parentENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_file_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !376
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !376
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !376
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !376
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_file_nameENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_extension(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !379
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !379
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !379
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !379
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_extensionENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_file_stem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !382
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !382
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !382
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !382
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib14path_file_stemENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_path_is_absolute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !385
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !385
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !385
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !385
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib16path_is_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @sys__native_path_is_relative(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !388
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !388
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !388
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !388
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef i32 @_ZN12__apo_stdlib16path_is_relativeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_to_absolute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !391
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !391
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !391
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !391
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib16path_to_absoluteENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_canonicalize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !394
  br label %8

5:                                                ; preds = %1
  store ptr %0, ptr %2, align 8, !tbaa !77, !alias.scope !394
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !394
  store i64 %7, ptr %6, align 8, !tbaa !79, !alias.scope !394
  br label %8

8:                                                ; preds = %4, %5
  %9 = call noundef ptr @_ZN12__apo_stdlib17path_canonicalizeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_return noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @sys__native_path_components(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  %4 = alloca %"class.std::__1::basic_string_view", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !397
  br label %10

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !77, !alias.scope !397
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24, !noalias !397
  store i64 %9, ptr %8, align 8, !tbaa !79, !alias.scope !397
  br label %10

10:                                               ; preds = %7, %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !400
  br label %16

13:                                               ; preds = %10
  store ptr %1, ptr %4, align 8, !tbaa !77, !alias.scope !400
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24, !noalias !400
  store i64 %15, ptr %14, align 8, !tbaa !79, !alias.scope !400
  br label %16

16:                                               ; preds = %12, %13
  %17 = call noundef ptr @_ZN12__apo_stdlib15path_componentsENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_(ptr dead_on_return noundef nonnull %3, ptr dead_on_return noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret ptr %17
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #24
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare dso_local ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare dso_local void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #31
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %9, %14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #31
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %9, %14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %4 = icmp ugt i64 %3, -10
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

6:                                                ; preds = %2
  %7 = icmp ult i64 %3, 23
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = trunc nuw nsw i64 %3 to i8
  %10 = shl nuw nsw i8 %9, 1
  store i8 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %21

12:                                               ; preds = %6
  %13 = and i64 %3, -8
  %14 = add nuw i64 %13, 8
  %15 = icmp eq i64 %14, 24
  %16 = select i1 %15, i64 26, i64 %14
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #30, !noalias !403
  %18 = or disjoint i64 %16, 1
  store i64 %18, ptr %0, align 8, !tbaa !20
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %19, align 8, !tbaa !21
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %17, ptr %20, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %8, %12
  %22 = phi ptr [ %11, %8 ], [ %17, %12 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %22, ptr nonnull align 1 %1, i64 %3, i1 false)
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 %3
  store i8 0, ptr %23, align 1, !tbaa !20
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #13 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #24
  invoke void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #29
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #24
  resume { ptr, i32 } %5
}

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !32
  ret void
}

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #17

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() local_unnamed_addr #14 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #24
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #29
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %5, align 8, !tbaa !408
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 64), ptr %4, align 8, !tbaa !32
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %4, ptr noundef nonnull %6)
          to label %7 unwind label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %8, align 8, !tbaa !409
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 -1, ptr %9, align 8, !tbaa !413
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %4, align 8, !tbaa !32
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6)
          to label %10 unwind label %32

10:                                               ; preds = %7
  %11 = or i32 %2, 16
  %12 = load i8, ptr %1, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %18 = select i1 %14, ptr %17, ptr %16
  %19 = invoke noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj(ptr noundef nonnull align 8 dereferenceable(163) %6, ptr noundef %18, i32 noundef %11)
          to label %20 unwind label %34

20:                                               ; preds = %10
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !32
  %24 = getelementptr i8, ptr %23, i64 -24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = load i32, ptr %27, align 8, !tbaa !68
  %29 = or i32 %28, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %26, i32 noundef %29)
          to label %36 unwind label %34

30:                                               ; preds = %3
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %39

32:                                               ; preds = %7
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %37

34:                                               ; preds = %22, %10
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6) #24
  br label %37

36:                                               ; preds = %22, %20
  ret void

37:                                               ; preds = %34, %32
  %38 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %31, %30 ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %4) #24
  resume { ptr, i32 } %40
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #24
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp ugt i64 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

10:                                               ; preds = %3
  %11 = icmp ult i64 %7, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = trunc nuw nsw i64 %7 to i8
  %14 = shl nuw nsw i8 %13, 1
  store i8 %14, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %25

16:                                               ; preds = %10
  %17 = and i64 %7, -8
  %18 = add nuw i64 %17, 8
  %19 = icmp eq i64 %18, 24
  %20 = select i1 %19, i64 26, i64 %18
  %21 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %20) #30, !noalias !414
  %22 = or disjoint i64 %20, 1
  store i64 %22, ptr %4, align 8, !tbaa !20
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %7, ptr %23, align 8, !tbaa !21
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %21, ptr %24, align 8, !tbaa !23
  br label %25

25:                                               ; preds = %12, %16
  %26 = phi ptr [ %15, %12 ], [ %21, %16 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %1, i64 %7, i1 false)
  %27 = getelementptr inbounds i8, ptr %26, i64 %7
  store i8 0, ptr %27, align 1, !tbaa !20
  %28 = invoke noundef i64 @_ZNSt3__14__fs10filesystem14__char_to_wideERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPwy(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null, i64 noundef 0)
          to label %29 unwind label %57

29:                                               ; preds = %25
  %30 = load i8, ptr %0, align 8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load i64, ptr %33, align 8
  %35 = lshr i8 %30, 1
  %36 = zext nneg i8 %35 to i64
  %37 = select i1 %32, i64 %36, i64 %34
  %38 = add i64 %37, %28
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6resizeEyw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %38, i16 noundef 0)
          to label %39 unwind label %57

39:                                               ; preds = %29
  %40 = load i8, ptr %0, align 8
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %46 = select i1 %42, ptr %45, ptr %44
  %47 = getelementptr inbounds nuw i16, ptr %46, i64 %37
  %48 = invoke noundef i64 @_ZNSt3__14__fs10filesystem14__char_to_wideERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPwy(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %47, i64 noundef %28)
          to label %49 unwind label %57

49:                                               ; preds = %39
  %50 = load i8, ptr %4, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %55) #31
  br label %56

56:                                               ; preds = %49, %53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

57:                                               ; preds = %39, %29, %25
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load i8, ptr %4, align 8
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %64) #31
  br label %65

65:                                               ; preds = %57, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %58
}

declare dso_local noundef i64 @_ZNSt3__14__fs10filesystem14__char_to_wideERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPwy(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6resizeEyw(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i16 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #13 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str) #29
  unreachable
}

declare dso_local void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

declare dso_local noundef zeroext i1 @_ZNSt3__14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::locale", align 8
  %3 = alloca %"class.std::__1::locale", align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 0, i64 60, i1 false)
  store i32 32, ptr %9, align 4, !tbaa !67
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %10, align 8, !tbaa !419
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %11, align 1, !tbaa !420
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %12, align 2, !tbaa !421
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  %13 = invoke noundef zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__17codecvtIcc9_MbstatetE2idE)
          to label %17 unwind label %14

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #32
  unreachable

17:                                               ; preds = %1
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %13, label %18, label %29

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  %19 = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__17codecvtIcc9_MbstatetE2idE)
          to label %20 unwind label %27

20:                                               ; preds = %18
  store ptr %19, ptr %8, align 8, !tbaa !422
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %21 = load ptr, ptr %8, align 8, !tbaa !422
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(12) %21) #24
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %12, align 2, !tbaa !421
  br label %29

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %37

29:                                               ; preds = %20, %17
  %30 = load ptr, ptr %0, align 8, !tbaa !32
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef null, i64 noundef 4096)
          to label %34 unwind label %35

34:                                               ; preds = %29
  ret void

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %28, %27 ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_seh0 {
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = invoke noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(163) %0)
          to label %7 unwind label %11

7:                                                ; preds = %5
  %8 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !57
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store i32 32, ptr %10, align 4, !tbaa !67
  br label %16

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = tail call noundef i32 @fclose(ptr noundef nonnull %3)
  %14 = extractvalue { ptr, i32 } %12, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #24
  invoke void @__cxa_end_catch()
          to label %16 unwind label %36

16:                                               ; preds = %7, %1, %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %18 = load i8, ptr %17, align 8, !tbaa !419, !range !80, !noundef !81
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !423
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_ZdaPv(ptr noundef nonnull %22) #31
  br label %25

25:                                               ; preds = %20, %24, %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %27 = load i8, ptr %26, align 1, !tbaa !420, !range !80, !noundef !81
  %28 = trunc nuw i8 %27 to i1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %31 = load ptr, ptr %30, align 8, !tbaa !424
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZdaPv(ptr noundef nonnull %31) #31
  br label %34

34:                                               ; preds = %29, %33, %25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35) #24
  ret void

36:                                               ; preds = %11
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #32
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #21 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #21 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #24
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #24
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #24
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #24
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(176) %5) #31
  ret void
}

declare dso_local void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #20 comdat align 2 {
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(163) %0)
  %7 = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__17codecvtIcc9_MbstatetE2idE)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %7, ptr %8, align 8, !tbaa !422
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %10 = load i8, ptr %9, align 2, !tbaa !421, !range !80, !noundef !81
  %11 = load ptr, ptr %7, align 8, !tbaa !32
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(12) %7) #24
  %15 = zext i1 %14 to i8
  store i8 %15, ptr %9, align 2, !tbaa !421
  %16 = icmp eq i8 %10, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = load i8, ptr %19, align 8, !tbaa !419, !range !80, !noundef !81
  %21 = trunc nuw i8 %20 to i1
  br i1 %14, label %22, label %37

22:                                               ; preds = %17
  br i1 %21, label %23, label %28

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !423
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdaPv(ptr noundef nonnull %25) #31
  br label %28

28:                                               ; preds = %23, %27, %22
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %30 = load i8, ptr %29, align 1, !tbaa !420, !range !80, !noundef !81
  store i8 %30, ptr %19, align 8, !tbaa !419
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !425
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %32, ptr %33, align 8, !tbaa !426
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %35 = load ptr, ptr %34, align 8, !tbaa !424
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %35, ptr %36, align 8, !tbaa !423
  store i8 0, ptr %29, align 1, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %57

37:                                               ; preds = %17
  br i1 %21, label %50, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !423
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %45 = load i64, ptr %44, align 8, !tbaa !426
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %45, ptr %46, align 8, !tbaa !425
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %40, ptr %47, align 8, !tbaa !424
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %48, align 1, !tbaa !420
  %49 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %45) #30
  store ptr %49, ptr %39, align 8, !tbaa !423
  store i8 1, ptr %19, align 8, !tbaa !419
  br label %57

50:                                               ; preds = %38, %37
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %52 = load i64, ptr %51, align 8, !tbaa !426
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %52, ptr %53, align 8, !tbaa !425
  %54 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %52) #30
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %54, ptr %55, align 8, !tbaa !424
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 1, ptr %56, align 1, !tbaa !420
  br label %57

57:                                               ; preds = %28, %50, %43, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcx(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = icmp eq i32 %6, 32
  %8 = icmp eq ptr %1, null
  %9 = and i1 %8, %7
  %10 = icmp eq i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @setbuf(ptr noundef nonnull %14, ptr noundef null)
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ 34, %12 ]
  store i32 %18, ptr %5, align 4, !tbaa !67
  br label %19

19:                                               ; preds = %3, %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %21 = load i8, ptr %20, align 8, !tbaa !419, !range !80, !noundef !81
  %22 = trunc nuw i8 %21 to i1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !423
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdaPv(ptr noundef nonnull %25) #31
  br label %28

28:                                               ; preds = %23, %27, %19
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %30 = load i8, ptr %29, align 1, !tbaa !420, !range !80, !noundef !81
  %31 = trunc nuw i8 %30 to i1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %34 = load ptr, ptr %33, align 8, !tbaa !424
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @_ZdaPv(ptr noundef nonnull %34) #31
  br label %37

37:                                               ; preds = %32, %36, %28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %38, align 8, !tbaa !426
  %39 = icmp ugt i64 %2, 8
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %42 = load i8, ptr %41, align 2, !tbaa !421, !range !80, !noundef !81
  %43 = trunc nuw i8 %42 to i1
  %44 = icmp ne ptr %1, null
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %47, align 8, !tbaa !423
  br label %54

48:                                               ; preds = %40
  %49 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %2) #30
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %49, ptr %50, align 8, !tbaa !423
  br label %54

51:                                               ; preds = %37
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %52, ptr %53, align 8, !tbaa !423
  store i64 8, ptr %38, align 8, !tbaa !426
  br label %54

54:                                               ; preds = %46, %48, %51
  %55 = phi i8 [ 0, %46 ], [ 1, %48 ], [ 0, %51 ]
  store i8 %55, ptr %20, align 8, !tbaa !419
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %57 = load i8, ptr %56, align 2, !tbaa !421, !range !80, !noundef !81
  %58 = trunc nuw i8 %57 to i1
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = tail call i64 @llvm.smax.i64(i64 %2, i64 8)
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %60, ptr %61, align 8, !tbaa !425
  %62 = icmp ne ptr %1, null
  %63 = icmp sgt i64 %2, 8
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %66, align 8, !tbaa !424
  store i8 0, ptr %29, align 1, !tbaa !420
  br label %72

67:                                               ; preds = %59
  %68 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %60) #30
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %68, ptr %69, align 8, !tbaa !424
  store i8 1, ptr %29, align 1, !tbaa !420
  br label %72

70:                                               ; preds = %54
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %29, align 1, !tbaa !420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  br label %72

72:                                               ; preds = %65, %67, %70
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj(ptr dead_on_unwind noalias writable sret(%"class.std::__1::fpos") align 8 %0, ptr noundef nonnull align 8 dereferenceable(163) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 {
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %7 = load ptr, ptr %6, align 8, !tbaa !422
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #29
  unreachable

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 8, !tbaa !32
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(12) %7) #24
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %10
  %19 = icmp slt i32 %14, 1
  %20 = icmp ne i64 %2, 0
  %21 = and i1 %20, %19
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %1, align 8, !tbaa !32
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(163) %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18, %22, %10
  store i64 0, ptr %0, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %29, align 8, !tbaa !427
  br label %50

30:                                               ; preds = %22
  %31 = icmp ult i32 %3, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  store i64 0, ptr %0, align 8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %33, align 8, !tbaa !427
  br label %50

34:                                               ; preds = %30
  %35 = load ptr, ptr %15, align 8, !tbaa !57
  %36 = icmp sgt i32 %14, 0
  %37 = zext nneg i32 %14 to i64
  %38 = mul nsw i64 %2, %37
  %39 = select i1 %36, i64 %38, i64 0
  %40 = tail call noundef i32 @_fseeki64(ptr noundef %35, i64 noundef %39, i32 noundef %3)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  store i64 0, ptr %0, align 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %43, align 8, !tbaa !427
  br label %50

44:                                               ; preds = %34
  %45 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %46 = tail call i64 @_ftelli64(ptr noundef %45), !noalias !429
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %46, ptr %47, align 8, !tbaa !427, !alias.scope !429
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %0, align 8
  br label %50

50:                                               ; preds = %32, %42, %44, %28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI9_MbstatetEEj(ptr dead_on_unwind noalias writable sret(%"class.std::__1::fpos") align 8 %0, ptr noundef nonnull align 8 dereferenceable(163) %1, ptr dead_on_return noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8, !tbaa !32
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(163) %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8, %4
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %15, align 8, !tbaa !427
  br label %27

16:                                               ; preds = %8
  %17 = load ptr, ptr %5, align 8, !tbaa !57
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = tail call noundef i32 @_fseeki64(ptr noundef %17, i64 noundef %19, i32 noundef 0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  store i64 0, ptr %0, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %23, align 8, !tbaa !427
  br label %27

24:                                               ; preds = %16
  %25 = load i64, ptr %2, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %25, ptr %26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !432
  br label %27

27:                                               ; preds = %24, %22, %14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._Mbstatet, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %9 = load ptr, ptr %8, align 8, !tbaa !422
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #29
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !435
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa !436
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %0, align 8, !tbaa !32
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 104
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(163) %0, i32 noundef -1)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %142, label %29

29:                                               ; preds = %23, %17
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %33

33:                                               ; preds = %50, %29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %34 = load ptr, ptr %8, align 8, !tbaa !422
  %35 = load ptr, ptr %31, align 8, !tbaa !423
  %36 = load i64, ptr %32, align 8, !tbaa !426
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %36
  %38 = load ptr, ptr %34, align 8, !tbaa !32
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 40
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef %35, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %42 = load ptr, ptr %2, align 8, !tbaa !23
  %43 = load ptr, ptr %31, align 8, !tbaa !423
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = load ptr, ptr %4, align 8, !tbaa !57
  %48 = call i64 @fwrite(ptr noundef %43, i64 noundef 1, i64 noundef %46, ptr noundef %47)
  %49 = icmp eq i64 %48, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  switch i32 %41, label %51 [
    i32 1, label %33
    i32 2, label %55
  ]

51:                                               ; preds = %50
  %52 = load ptr, ptr %4, align 8, !tbaa !57
  %53 = call i32 @fflush(ptr noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %142, label %55

55:                                               ; preds = %33, %50, %51
  br label %142

56:                                               ; preds = %12
  %57 = and i32 %14, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %142, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %3, align 8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %63 = load i8, ptr %62, align 2, !tbaa !421, !range !80, !noundef !81
  %64 = trunc nuw i8 %63 to i1
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %67 = load ptr, ptr %66, align 8, !tbaa !437
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %69 = load ptr, ptr %68, align 8, !tbaa !438
  %70 = ptrtoint ptr %67 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  br label %124

73:                                               ; preds = %59
  %74 = load ptr, ptr %9, align 8, !tbaa !32
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 48
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(12) %9) #24
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %79 = load ptr, ptr %78, align 8, !tbaa !439
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !440
  %82 = ptrtoint ptr %79 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp sgt i32 %77, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %73
  %87 = zext nneg i32 %77 to i64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !437
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %91 = load ptr, ptr %90, align 8, !tbaa !438
  %92 = ptrtoint ptr %89 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = mul nsw i64 %94, %87
  %96 = add nsw i64 %95, %84
  br label %124

97:                                               ; preds = %73
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %99 = load ptr, ptr %98, align 8, !tbaa !438
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %101 = load ptr, ptr %100, align 8, !tbaa !437
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %124, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %8, align 8, !tbaa !422
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %106 = load ptr, ptr %105, align 8, !tbaa !423
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %108 = load ptr, ptr %107, align 8, !tbaa !441
  %109 = ptrtoint ptr %99 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  %112 = load ptr, ptr %104, align 8, !tbaa !32
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(12) %104, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %106, ptr noundef %81, i64 noundef %111)
  %116 = load ptr, ptr %80, align 8, !tbaa !440
  %117 = load ptr, ptr %105, align 8, !tbaa !423
  %118 = ptrtoint ptr %116 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sext i32 %115 to i64
  %121 = add i64 %84, %118
  %122 = add i64 %120, %119
  %123 = sub i64 %121, %122
  br label %124

124:                                              ; preds = %86, %103, %97, %65
  %125 = phi i64 [ %72, %65 ], [ %96, %86 ], [ %123, %103 ], [ %84, %97 ]
  %126 = phi i1 [ false, %65 ], [ false, %86 ], [ true, %103 ], [ false, %97 ]
  %127 = load ptr, ptr %4, align 8, !tbaa !57
  %128 = sub nsw i64 0, %125
  %129 = call noundef i32 @_fseeki64(ptr noundef %127, i64 noundef %128, i32 noundef 1)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  br i1 %126, label %132, label %135

132:                                              ; preds = %131
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %134 = load i64, ptr %3, align 8
  store i64 %134, ptr %133, align 8
  br label %135

135:                                              ; preds = %131, %132
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %137 = load ptr, ptr %136, align 8, !tbaa !423
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %137, ptr %138, align 8, !tbaa !439
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %137, ptr %139, align 8, !tbaa !440
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %13, align 4, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %142

141:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %142

142:                                              ; preds = %56, %51, %135, %141, %55, %23, %1
  %143 = phi i32 [ -1, %141 ], [ 0, %1 ], [ -1, %23 ], [ -1, %55 ], [ 0, %135 ], [ 0, %51 ], [ 0, %56 ]
  ret i32 %143
}

; Function Attrs: mustprogress nounwind uwtable
declare dso_local noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #20 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcx(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %162, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %9 = load i32, ptr %8, align 4, !tbaa !67
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !438
  br label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %18 = load i8, ptr %17, align 2, !tbaa !421, !range !80, !noundef !81
  %19 = trunc nuw i8 %18 to i1
  %20 = select i1 %19, i64 64, i64 104
  %21 = select i1 %19, i64 96, i64 112
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %23, ptr %27, align 8, !tbaa !441
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %26, ptr %28, align 8, !tbaa !438
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %26, ptr %29, align 8, !tbaa !437
  store i32 8, ptr %8, align 4, !tbaa !67
  br label %30

30:                                               ; preds = %12, %15
  %31 = phi ptr [ %14, %12 ], [ %26, %15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %36, align 8, !tbaa !441
  store ptr %35, ptr %32, align 8, !tbaa !438
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %35, ptr %37, align 8, !tbaa !437
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %35, %34 ], [ %31, %30 ]
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %41 = load ptr, ptr %40, align 8, !tbaa !437
  br i1 %11, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %44 = load ptr, ptr %43, align 8, !tbaa !441
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv i64 %47, 2
  %49 = call i64 @llvm.umin.i64(i64 %48, i64 4)
  br label %50

50:                                               ; preds = %38, %42
  %51 = phi i64 [ %49, %42 ], [ 0, %38 ]
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = icmp eq ptr %39, %41
  br i1 %53, label %54, label %152

54:                                               ; preds = %50
  %55 = sub nsw i64 0, %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !441
  %58 = getelementptr inbounds i8, ptr %41, i64 %55
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %57, ptr align 1 %58, i64 %51, i1 false)
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %60 = load i8, ptr %59, align 2, !tbaa !421, !range !80, !noundef !81
  %61 = trunc nuw i8 %60 to i1
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load ptr, ptr %52, align 8, !tbaa !437
  %64 = load ptr, ptr %56, align 8, !tbaa !441
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = add i64 %51, %66
  %68 = sub i64 %65, %67
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 %51
  %70 = load ptr, ptr %4, align 8, !tbaa !57
  %71 = call i64 @fread(ptr noundef %69, i64 noundef 1, i64 noundef %68, ptr noundef %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %155, label %73

73:                                               ; preds = %62
  %74 = load ptr, ptr %56, align 8, !tbaa !441
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 %51
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %71
  store ptr %75, ptr %32, align 8, !tbaa !438
  store ptr %76, ptr %52, align 8, !tbaa !437
  %77 = load i8, ptr %75, align 1, !tbaa !20
  %78 = zext i8 %77 to i32
  br label %155

79:                                               ; preds = %54
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %81 = load ptr, ptr %80, align 8, !tbaa !439
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !440
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %87 = load ptr, ptr %86, align 8, !tbaa !423
  %88 = ptrtoint ptr %81 to i64
  %89 = ptrtoint ptr %83 to i64
  %90 = sub i64 %88, %89
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %87, ptr align 1 %83, i64 %90, i1 false)
  %91 = load ptr, ptr %80, align 8, !tbaa !439
  %92 = load ptr, ptr %82, align 8, !tbaa !440
  br label %93

93:                                               ; preds = %85, %79
  %94 = phi ptr [ %92, %85 ], [ %81, %79 ]
  %95 = phi ptr [ %91, %85 ], [ %81, %79 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %97 = load ptr, ptr %96, align 8, !tbaa !423
  %98 = ptrtoint ptr %95 to i64
  %99 = ptrtoint ptr %94 to i64
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  store ptr %101, ptr %82, align 8, !tbaa !440
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %103 = icmp eq ptr %97, %102
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %105 = load i64, ptr %104, align 8
  %106 = select i1 %103, i64 8, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %97, i64 %106
  store ptr %107, ptr %80, align 8, !tbaa !439
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %109 = load i64, ptr %108, align 8, !tbaa !425
  %110 = sub i64 %109, %51
  %111 = sub nsw i64 %106, %100
  %112 = call i64 @llvm.umin.i64(i64 %111, i64 %110)
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %115 = load i64, ptr %113, align 8
  store i64 %115, ptr %114, align 8
  %116 = load ptr, ptr %4, align 8, !tbaa !57
  %117 = call i64 @fread(ptr noundef %101, i64 noundef 1, i64 noundef %112, ptr noundef %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %93
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %121 = load ptr, ptr %120, align 8, !tbaa !422
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #29
  unreachable

124:                                              ; preds = %119
  %125 = load ptr, ptr %82, align 8, !tbaa !440
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 %117
  store ptr %126, ptr %80, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %127 = load ptr, ptr %96, align 8, !tbaa !423
  %128 = load ptr, ptr %56, align 8, !tbaa !441
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 %51
  %130 = load i64, ptr %108, align 8, !tbaa !425
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 %130
  %132 = load ptr, ptr %121, align 8, !tbaa !32
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %134 = load ptr, ptr %133, align 8
  %135 = call noundef i32 %134(ptr noundef nonnull align 8 dereferenceable(12) %121, ptr noundef nonnull align 4 dereferenceable(8) %113, ptr noundef %127, ptr noundef nonnull %126, ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %129, ptr noundef %131, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load ptr, ptr %96, align 8, !tbaa !423
  %139 = load ptr, ptr %80, align 8, !tbaa !439
  store ptr %138, ptr %56, align 8, !tbaa !441
  store ptr %138, ptr %32, align 8, !tbaa !438
  store ptr %139, ptr %52, align 8, !tbaa !437
  %140 = load i8, ptr %138, align 1, !tbaa !20
  %141 = zext i8 %140 to i32
  br label %150

142:                                              ; preds = %124
  %143 = load ptr, ptr %3, align 8, !tbaa !23
  %144 = load ptr, ptr %56, align 8, !tbaa !441
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 %51
  %146 = icmp eq ptr %143, %145
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  store ptr %145, ptr %32, align 8, !tbaa !438
  store ptr %143, ptr %52, align 8, !tbaa !437
  %148 = load i8, ptr %145, align 1, !tbaa !20
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %142, %147, %137
  %151 = phi i32 [ %141, %137 ], [ %149, %147 ], [ -1, %142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %155

152:                                              ; preds = %50
  %153 = load i8, ptr %39, align 1, !tbaa !20
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %93, %150, %62, %73, %152
  %156 = phi i32 [ %154, %152 ], [ -1, %62 ], [ %78, %73 ], [ %151, %150 ], [ -1, %93 ]
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !441
  %159 = icmp eq ptr %158, %2
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  br label %161

161:                                              ; preds = %160, %155
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %162

162:                                              ; preds = %1, %161
  %163 = phi i32 [ %156, %161 ], [ -1, %1 ]
  ret i32 %163
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(163) %0, i32 noundef %1) unnamed_addr #20 comdat align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !441
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !438
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %10, i64 -1
  store ptr %15, ptr %9, align 8, !tbaa !438
  br label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %18 = load i32, ptr %17, align 8, !tbaa !442
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  %21 = trunc i32 %1 to i8
  br i1 %20, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, ptr %10, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !20
  %25 = icmp eq i8 %24, %21
  br i1 %25, label %26, label %28

26:                                               ; preds = %16, %22
  %27 = getelementptr inbounds i8, ptr %10, i64 -1
  store ptr %27, ptr %9, align 8, !tbaa !438
  store i8 %21, ptr %27, align 1, !tbaa !20
  br label %28

28:                                               ; preds = %2, %6, %22, %26, %14
  %29 = phi i32 [ 0, %14 ], [ %1, %26 ], [ -1, %22 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6xsputnEPKcx(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %5 = load i8, ptr %4, align 2, !tbaa !421, !range !80, !noundef !81
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !443
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !436
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %2, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 104
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(163) %0, i32 noundef -1)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %62, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %24)
  br label %62

26:                                               ; preds = %7, %3
  %27 = icmp sgt i64 %2, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %31

31:                                               ; preds = %58, %28
  %32 = phi ptr [ %1, %28 ], [ %60, %58 ]
  %33 = phi i64 [ 0, %28 ], [ %59, %58 ]
  %34 = load ptr, ptr %29, align 8, !tbaa !435
  %35 = load ptr, ptr %30, align 8, !tbaa !443
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = load i8, ptr %32, align 1, !tbaa !20
  %39 = zext i8 %38 to i32
  %40 = load ptr, ptr %0, align 8, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 104
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %39)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %62, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %47 = add nsw i64 %33, 1
  br label %58

48:                                               ; preds = %31
  %49 = ptrtoint ptr %35 to i64
  %50 = ptrtoint ptr %34 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %2, %33
  %53 = tail call i64 @llvm.smin.i64(i64 %52, i64 %51)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %34, ptr align 1 %32, i64 %53, i1 false)
  %54 = load ptr, ptr %29, align 8, !tbaa !435
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  store ptr %55, ptr %29, align 8, !tbaa !435
  %56 = getelementptr inbounds i8, ptr %32, i64 %53
  %57 = add nsw i64 %53, %33
  br label %58

58:                                               ; preds = %48, %45
  %59 = phi i64 [ %47, %45 ], [ %57, %48 ]
  %60 = phi ptr [ %46, %45 ], [ %56, %48 ]
  %61 = icmp slt i64 %59, %2
  br i1 %61, label %31, label %62, !llvm.loop !444

62:                                               ; preds = %58, %37, %26, %16, %22
  %63 = phi i64 [ 0, %16 ], [ %25, %22 ], [ 0, %26 ], [ %59, %58 ], [ %33, %37 ]
  ret i64 %63
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(163) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %186, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !436
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load ptr, ptr %17, align 8, !tbaa !443
  br label %51

19:                                               ; preds = %9
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %22 = load i64, ptr %21, align 8, !tbaa !426
  %23 = icmp ugt i64 %22, 8
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %26 = load i8, ptr %25, align 2, !tbaa !421, !range !80, !noundef !81
  %27 = trunc nuw i8 %26 to i1
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %30 = load ptr, ptr %29, align 8, !tbaa !423
  %31 = getelementptr i8, ptr %30, i64 %22
  %32 = getelementptr i8, ptr %31, i64 -1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %30, ptr %33, align 8, !tbaa !435
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %30, ptr %34, align 8, !tbaa !436
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %32, ptr %35, align 8, !tbaa !443
  br label %48

36:                                               ; preds = %24
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %38 = load ptr, ptr %37, align 8, !tbaa !424
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %40 = load i64, ptr %39, align 8, !tbaa !425
  %41 = getelementptr i8, ptr %38, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %38, ptr %43, align 8, !tbaa !435
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %38, ptr %44, align 8, !tbaa !436
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %42, ptr %45, align 8, !tbaa !443
  br label %48

46:                                               ; preds = %19
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  br label %48

48:                                               ; preds = %46, %36, %28
  %49 = phi ptr [ null, %46 ], [ %42, %36 ], [ %32, %28 ]
  %50 = phi ptr [ null, %46 ], [ %38, %36 ], [ %30, %28 ]
  store i32 16, ptr %10, align 4, !tbaa !67
  br label %51

51:                                               ; preds = %14, %48
  %52 = phi ptr [ %18, %14 ], [ %49, %48 ]
  %53 = phi ptr [ %16, %14 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %56 = icmp eq i32 %1, -1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load ptr, ptr %57, align 8, !tbaa !435
  br i1 %56, label %69, label %59

59:                                               ; preds = %51
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store ptr %3, ptr %57, align 8, !tbaa !435
  store ptr %3, ptr %54, align 8, !tbaa !436
  store ptr %62, ptr %55, align 8, !tbaa !443
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %3, %61 ], [ %58, %59 ]
  %65 = trunc i32 %1 to i8
  store i8 %65, ptr %64, align 1, !tbaa !20
  %66 = load ptr, ptr %57, align 8, !tbaa !435
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1
  store ptr %67, ptr %57, align 8, !tbaa !435
  %68 = load ptr, ptr %54, align 8, !tbaa !436
  br label %69

69:                                               ; preds = %51, %63
  %70 = phi ptr [ %68, %63 ], [ %53, %51 ]
  %71 = phi ptr [ %67, %63 ], [ %58, %51 ]
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %73 = icmp eq ptr %71, %70
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = select i1 %56, i32 0, i32 %1
  br label %184

76:                                               ; preds = %69
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %78 = load i8, ptr %77, align 2, !tbaa !421, !range !80, !noundef !81
  %79 = trunc nuw i8 %78 to i1
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = ptrtoint ptr %71 to i64
  %82 = ptrtoint ptr %70 to i64
  %83 = sub i64 %81, %82
  %84 = load ptr, ptr %6, align 8, !tbaa !57
  %85 = call i64 @fwrite(ptr noundef %70, i64 noundef 1, i64 noundef %83, ptr noundef %84)
  %86 = icmp eq i64 %85, %83
  br i1 %86, label %178, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %72, align 8, !tbaa !435
  %89 = load ptr, ptr %55, align 8, !tbaa !443
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 1
  %91 = icmp eq ptr %88, %90
  br i1 %91, label %92, label %184

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %88, i64 -1
  store ptr %93, ptr %72, align 8, !tbaa !435
  br label %184

94:                                               ; preds = %76
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %96 = load ptr, ptr %95, align 8, !tbaa !422
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #29
  unreachable

99:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %101 = load ptr, ptr %100, align 8, !tbaa !423
  store ptr %101, ptr %5, align 8, !tbaa !23
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %104 = load i64, ptr %103, align 8, !tbaa !426
  %105 = getelementptr inbounds nuw i8, ptr %101, i64 %104
  %106 = load ptr, ptr %96, align 8, !tbaa !32
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(12) %96, ptr noundef nonnull align 4 dereferenceable(8) %102, ptr noundef %70, ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %101, ptr noundef %105, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %110 = load ptr, ptr %4, align 8, !tbaa !23
  %111 = icmp eq ptr %110, %70
  br i1 %111, label %112, label %117

112:                                              ; preds = %165, %99
  %113 = load ptr, ptr %72, align 8, !tbaa !435
  %114 = load ptr, ptr %55, align 8, !tbaa !443
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 1
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %180, label %183

117:                                              ; preds = %99, %165
  %118 = phi i32 [ %174, %165 ], [ %109, %99 ]
  %119 = phi ptr [ %166, %165 ], [ %70, %99 ]
  switch i32 %118, label %160 [
    i32 3, label %120
    i32 0, label %132
    i32 1, label %146
  ]

120:                                              ; preds = %117
  %121 = ptrtoint ptr %71 to i64
  %122 = ptrtoint ptr %119 to i64
  %123 = sub i64 %121, %122
  %124 = load ptr, ptr %6, align 8, !tbaa !57
  %125 = call i64 @fwrite(ptr noundef %119, i64 noundef 1, i64 noundef %123, ptr noundef %124)
  %126 = icmp eq i64 %125, %123
  br i1 %126, label %177, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %72, align 8, !tbaa !435
  %129 = load ptr, ptr %55, align 8, !tbaa !443
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %180, label %183

132:                                              ; preds = %117
  %133 = load ptr, ptr %5, align 8, !tbaa !23
  %134 = load ptr, ptr %100, align 8, !tbaa !423
  %135 = ptrtoint ptr %133 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = load ptr, ptr %6, align 8, !tbaa !57
  %139 = call i64 @fwrite(ptr noundef %134, i64 noundef 1, i64 noundef %137, ptr noundef %138)
  %140 = icmp eq i64 %139, %137
  br i1 %140, label %177, label %141

141:                                              ; preds = %132
  %142 = load ptr, ptr %72, align 8, !tbaa !435
  %143 = load ptr, ptr %55, align 8, !tbaa !443
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %180, label %183

146:                                              ; preds = %117
  %147 = load ptr, ptr %5, align 8, !tbaa !23
  %148 = load ptr, ptr %100, align 8, !tbaa !423
  %149 = ptrtoint ptr %147 to i64
  %150 = ptrtoint ptr %148 to i64
  %151 = sub i64 %149, %150
  %152 = load ptr, ptr %6, align 8, !tbaa !57
  %153 = call i64 @fwrite(ptr noundef %148, i64 noundef 1, i64 noundef %151, ptr noundef %152)
  %154 = icmp eq i64 %153, %151
  br i1 %154, label %165, label %155

155:                                              ; preds = %146
  %156 = load ptr, ptr %72, align 8, !tbaa !435
  %157 = load ptr, ptr %55, align 8, !tbaa !443
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 1
  %159 = icmp eq ptr %156, %158
  br i1 %159, label %180, label %183

160:                                              ; preds = %117
  %161 = load ptr, ptr %72, align 8, !tbaa !435
  %162 = load ptr, ptr %55, align 8, !tbaa !443
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %180, label %183

165:                                              ; preds = %146
  %166 = load ptr, ptr %4, align 8, !tbaa !23
  %167 = load ptr, ptr %95, align 8, !tbaa !422
  %168 = load ptr, ptr %100, align 8, !tbaa !423
  %169 = load i64, ptr %103, align 8, !tbaa !426
  %170 = getelementptr inbounds nuw i8, ptr %168, i64 %169
  %171 = load ptr, ptr %167, align 8, !tbaa !32
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 24
  %173 = load ptr, ptr %172, align 8
  %174 = call noundef i32 %173(ptr noundef nonnull align 8 dereferenceable(12) %167, ptr noundef nonnull align 4 dereferenceable(8) %102, ptr noundef %166, ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %168, ptr noundef %170, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %175 = load ptr, ptr %4, align 8, !tbaa !23
  %176 = icmp eq ptr %175, %166
  br i1 %176, label %112, label %117

177:                                              ; preds = %132, %120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %178

178:                                              ; preds = %80, %177
  store ptr %53, ptr %72, align 8, !tbaa !435
  store ptr %53, ptr %54, align 8, !tbaa !436
  store ptr %52, ptr %55, align 8, !tbaa !443
  %179 = select i1 %56, i32 0, i32 %1
  br label %184

180:                                              ; preds = %160, %155, %141, %127, %112
  %181 = phi ptr [ %142, %141 ], [ %156, %155 ], [ %113, %112 ], [ %128, %127 ], [ %161, %160 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 -1
  store ptr %182, ptr %72, align 8, !tbaa !435
  br label %183

183:                                              ; preds = %180, %112, %127, %141, %155, %160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %184

184:                                              ; preds = %87, %92, %183, %178, %74
  %185 = phi i32 [ %75, %74 ], [ %179, %178 ], [ -1, %183 ], [ -1, %92 ], [ -1, %87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %186

186:                                              ; preds = %2, %184
  %187 = phi i32 [ %185, %184 ], [ -1, %2 ]
  ret i32 %187
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare dso_local noundef zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #17

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare dso_local noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znay(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local void @setbuf(ptr noundef captures(none), ptr noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() local_unnamed_addr #14 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #24
  tail call void @_ZNSt8bad_castC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt8bad_cast, ptr nonnull @_ZNSt8bad_castD1Ev) #29
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8bad_castC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt8bad_castD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare dllimport i32 @_fseeki64(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

declare dllimport i64 @_ftelli64(ptr noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = and i32 %2, -3
  switch i32 %8, label %40 [
    i32 16, label %20
    i32 48, label %20
    i32 17, label %9
    i32 1, label %9
    i32 8, label %10
    i32 24, label %11
    i32 56, label %12
    i32 25, label %13
    i32 9, label %13
    i32 20, label %14
    i32 52, label %14
    i32 21, label %15
    i32 5, label %15
    i32 12, label %16
    i32 28, label %17
    i32 60, label %18
    i32 29, label %19
    i32 13, label %19
  ]

9:                                                ; preds = %7, %7
  br label %20

10:                                               ; preds = %7
  br label %20

11:                                               ; preds = %7
  br label %20

12:                                               ; preds = %7
  br label %20

13:                                               ; preds = %7, %7
  br label %20

14:                                               ; preds = %7, %7
  br label %20

15:                                               ; preds = %7, %7
  br label %20

16:                                               ; preds = %7
  br label %20

17:                                               ; preds = %7
  br label %20

18:                                               ; preds = %7
  br label %20

19:                                               ; preds = %7, %7
  br label %20

20:                                               ; preds = %19, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %7, %7
  %21 = phi ptr [ @.str.1, %7 ], [ @.str.1, %7 ], [ @.str.11, %18 ], [ @.str.10, %17 ], [ @.str.9, %16 ], [ @.str.8, %15 ], [ @.str.7, %14 ], [ @.str.6, %13 ], [ @.str.5, %12 ], [ @.str.4, %11 ], [ @.str.3, %10 ], [ @.str.2, %9 ], [ @.str.12, %19 ]
  %22 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull %21)
  store ptr %22, ptr %4, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %2, ptr %25, align 8, !tbaa !442
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @setbuf(ptr noundef nonnull %22, ptr noundef null)
  store i32 0, ptr %26, align 4, !tbaa !67
  br label %30

30:                                               ; preds = %29, %24
  %31 = and i32 %2, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  store i32 0, ptr %26, align 4, !tbaa !67
  %34 = load ptr, ptr %4, align 8, !tbaa !57
  %35 = tail call i32 @fseek(ptr noundef %34, i32 noundef 0, i32 noundef 2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !57
  %39 = tail call i32 @fclose(ptr noundef %38)
  store ptr null, ptr %4, align 8, !tbaa !57
  br label %40

40:                                               ; preds = %37, %33, %30, %20, %7, %3
  %41 = phi ptr [ null, %3 ], [ null, %7 ], [ null, %37 ], [ null, %20 ], [ %0, %33 ], [ %0, %30 ]
  ret ptr %41
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fseek(ptr noundef captures(none), i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #23

declare dso_local void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #17

declare dso_local void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::locale", align 8
  %5 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i8 0, ptr %5, align 8, !tbaa !446
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %6, align 8, !tbaa !448
  %7 = load ptr, ptr %0, align 8, !tbaa !32
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %16 = load ptr, ptr %15, align 8, !tbaa !409
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %20 unwind label %63

20:                                               ; preds = %14, %18
  store i8 1, ptr %5, align 8, !tbaa !446
  %21 = load ptr, ptr %0, align 8, !tbaa !32
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load i32, ptr %27, align 8, !tbaa !449
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 144
  %30 = load i32, ptr %29, align 8, !tbaa !413
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %4, ptr noundef nonnull align 8 dereferenceable(148) %24)
          to label %33 unwind label %67

33:                                               ; preds = %32
  %34 = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__15ctypeIcE2idE)
          to label %35 unwind label %40

35:                                               ; preds = %33
  %36 = load ptr, ptr %34, align 8, !tbaa !32
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 56
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef i8 %38(ptr noundef nonnull align 8 dereferenceable(25) %34, i8 noundef 32)
          to label %42 unwind label %40

40:                                               ; preds = %35, %33
  %41 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %70

42:                                               ; preds = %35
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %43 = sext i8 %39 to i32
  store i32 %43, ptr %29, align 1, !tbaa !413
  br label %44

44:                                               ; preds = %42, %20
  %45 = phi i32 [ %43, %42 ], [ %30, %20 ]
  %46 = trunc i32 %45 to i8
  %47 = and i32 %28, 176
  %48 = icmp eq i32 %47, 32
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %50 = select i1 %48, ptr %49, ptr %1
  %51 = ptrtoint ptr %26 to i64
  %52 = invoke i64 @_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %51, ptr noundef %1, ptr noundef %50, ptr noundef %49, ptr noundef nonnull align 8 dereferenceable(136) %24, i8 noundef %46)
          to label %53 unwind label %67

53:                                               ; preds = %44
  %54 = icmp eq i64 %52, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %53
  %56 = load ptr, ptr %0, align 8, !tbaa !32
  %57 = getelementptr i8, ptr %56, i64 -24
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = load i32, ptr %60, align 8, !tbaa !68
  %62 = or i32 %61, 5
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %59, i32 noundef %62)
          to label %69 unwind label %65

63:                                               ; preds = %18
  %64 = landingpad { ptr, i32 }
          catch ptr null
  br label %72

65:                                               ; preds = %55
  %66 = landingpad { ptr, i32 }
          catch ptr null
  br label %70

67:                                               ; preds = %32, %44
  %68 = landingpad { ptr, i32 }
          catch ptr null
  br label %70

69:                                               ; preds = %3, %55, %53
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %81

70:                                               ; preds = %67, %40, %65
  %71 = phi { ptr, i32 } [ %66, %65 ], [ %68, %67 ], [ %41, %40 ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %64, %63 ]
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %75 = call ptr @__cxa_begin_catch(ptr %74) #24
  %76 = load ptr, ptr %0, align 8, !tbaa !32
  %77 = getelementptr i8, ptr %76, i64 -24
  %78 = load i64, ptr %77, align 8
  %79 = getelementptr inbounds i8, ptr %0, i64 %78
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %79)
          to label %80 unwind label %82

80:                                               ; preds = %72
  call void @__cxa_end_catch()
  br label %81

81:                                               ; preds = %80, %69
  ret ptr %0

82:                                               ; preds = %72
  %83 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %84 unwind label %85

84:                                               ; preds = %82
  resume { ptr, i32 } %83

85:                                               ; preds = %82
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNSt3__116__pad_and_outputB9nqe220103IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(i64 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = inttoptr i64 %0 to ptr
  %9 = icmp eq i64 %0, 0
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %15 = load i64, ptr %14, align 8, !tbaa !450
  %16 = icmp sgt i64 %15, %13
  %17 = sub nsw i64 %15, %13
  %18 = ptrtoint ptr %2 to i64
  %19 = sub i64 %18, %12
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load ptr, ptr %8, align 8, !tbaa !32
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 96
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i64 %24(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %1, i64 noundef %19)
  %26 = icmp eq i64 %25, %19
  br i1 %26, label %27, label %83

27:                                               ; preds = %21, %10
  br i1 %16, label %28, label %73

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %29 = icmp samesign ult i64 %17, 23
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = and i64 %17, -8
  %32 = add nuw i64 %31, 8
  %33 = icmp eq i64 %32, 24
  %34 = select i1 %33, i64 26, i64 %32
  %35 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %34) #30, !noalias !451
  %36 = or disjoint i64 %34, 1
  store i64 %36, ptr %7, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %17, ptr %37, align 8, !tbaa !21
  %38 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %35, ptr %38, align 8, !tbaa !23
  br label %43

39:                                               ; preds = %28
  %40 = trunc nuw nsw i64 %17 to i8
  %41 = shl nuw nsw i8 %40, 1
  store i8 %41, ptr %7, align 8
  %42 = getelementptr inbounds nuw i8, ptr %7, i64 1
  br label %43

43:                                               ; preds = %30, %39
  %44 = phi ptr [ %35, %30 ], [ %42, %39 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %44, i8 %5, i64 %17, i1 false), !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 %17
  store i8 0, ptr %45, align 1, !tbaa !20
  %46 = load i8, ptr %7, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %52 = select i1 %48, ptr %51, ptr %50
  %53 = load ptr, ptr %8, align 8, !tbaa !32
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 96
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef i64 %55(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %52, i64 noundef %17)
          to label %57 unwind label %65

57:                                               ; preds = %43
  %58 = icmp eq i64 %56, %17
  %59 = load i8, ptr %7, align 8
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %49, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %63) #31
  br label %64

64:                                               ; preds = %57, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %58, label %73, label %83

65:                                               ; preds = %43
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load i8, ptr %7, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %49, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %71) #31
  br label %72

72:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  resume { ptr, i32 } %66

73:                                               ; preds = %64, %27
  %74 = sub i64 %11, %18
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !tbaa !32
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 96
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef i64 %79(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %2, i64 noundef %74)
  %81 = icmp eq i64 %80, %74
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %73
  store i64 0, ptr %14, align 8, !tbaa !450
  br label %83

83:                                               ; preds = %82, %64, %21, %76, %6
  %84 = phi i64 [ 0, %6 ], [ 0, %64 ], [ 0, %21 ], [ %0, %82 ], [ 0, %76 ]
  ret i64 %84
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !456, !nonnull !81, !align !457
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr i8, ptr %4, i64 -24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !449
  %18 = and i32 %17, 8192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8, !tbaa !456, !nonnull !81, !align !457
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = getelementptr i8, ptr %25, i64 -24
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 48
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %35 unwind label %46

35:                                               ; preds = %23
  %36 = icmp eq i32 %34, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load ptr, ptr %2, align 8, !tbaa !456, !nonnull !81, !align !457
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !68
  %45 = or i32 %44, 1
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %42, i32 noundef %45)
          to label %50 unwind label %46

46:                                               ; preds = %37, %23
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = tail call ptr @__cxa_begin_catch(ptr %48) #24
  invoke void @__cxa_end_catch()
          to label %50 unwind label %51

50:                                               ; preds = %37, %35, %46, %20, %15, %11, %1
  ret void

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #32
  unreachable
}

declare dso_local void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #17

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #17

; Function Attrs: nounwind
declare dso_local noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %2 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !85

4:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %5 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #24
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = icmp eq ptr %9, %11
  %17 = mul i64 %15, 170
  %18 = add i64 %17, -1
  %19 = select i1 %16, i64 0, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %21 = load i64, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %23 = load i64, ptr %22, align 8, !tbaa !21
  %24 = add i64 %23, %21
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  tail call void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %27 = load i64, ptr %22, align 8, !tbaa !21, !noalias !458
  %28 = load i64, ptr %20, align 8, !tbaa !91, !noalias !458
  %29 = load ptr, ptr %10, align 8, !tbaa !90, !noalias !458
  %30 = load ptr, ptr %8, align 8, !tbaa !86, !noalias !458
  %31 = add i64 %28, %27
  br label %32

32:                                               ; preds = %6, %26
  %33 = phi i64 [ %31, %26 ], [ %24, %6 ]
  %34 = phi ptr [ %30, %26 ], [ %9, %6 ]
  %35 = phi ptr [ %29, %26 ], [ %11, %6 ]
  %36 = udiv i64 %33, 170
  %37 = getelementptr inbounds nuw ptr, ptr %35, i64 %36
  %38 = icmp ne ptr %35, %34
  tail call void @llvm.assume(i1 %38)
  %39 = load ptr, ptr %37, align 8, !tbaa !98, !noalias !458
  %40 = urem i64 %33, 170
  %41 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %39, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %42 = load i64, ptr %22, align 8, !tbaa !21
  %43 = add i64 %42, 1
  store i64 %43, ptr %22, align 8, !tbaa !21
  %44 = load i64, ptr %20, align 8, !tbaa !91
  %45 = add i64 %44, %42
  %46 = load ptr, ptr %10, align 8, !tbaa !90
  %47 = udiv i64 %45, 170
  %48 = getelementptr inbounds nuw ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  %50 = urem i64 %45, 170
  %51 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %49, i64 %50
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds nuw i8, ptr %51, i64 1
  %58 = select i1 %54, ptr %57, ptr %56
  ret ptr %58
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %5, align 8, !tbaa !408
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i64 64), ptr %4, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %7, align 8, !tbaa !461
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %4, ptr noundef nonnull %6)
          to label %8 unwind label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %9, align 8, !tbaa !409
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 -1, ptr %10, align 8, !tbaa !413
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %4, align 8, !tbaa !32
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6)
          to label %11 unwind label %33

11:                                               ; preds = %8
  %12 = or i32 %2, 8
  %13 = load i8, ptr %1, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %19 = select i1 %15, ptr %18, ptr %17
  %20 = invoke noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj(ptr noundef nonnull align 8 dereferenceable(163) %6, ptr noundef %19, i32 noundef %12)
          to label %21 unwind label %35

21:                                               ; preds = %11
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8, !tbaa !32
  %25 = getelementptr i8, ptr %24, i64 -24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = or i32 %29, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %27, i32 noundef %30)
          to label %37 unwind label %35

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %40

33:                                               ; preds = %8
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %38

35:                                               ; preds = %23, %11
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6) #24
  br label %38

37:                                               ; preds = %23, %21
  ret void

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %32, %31 ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %4) #24
  resume { ptr, i32 } %41
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #24
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90, !noalias !463
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !86, !noalias !463
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !91, !noalias !463
  %12 = udiv i64 %11, 170
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !98, !noalias !463
  %15 = urem i64 %11, 170
  %16 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !21, !noalias !466
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 170
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !98, !noalias !466
  %23 = urem i64 %19, 170
  %24 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %60
  %27 = load ptr, ptr %5, align 8, !tbaa !86
  %28 = load ptr, ptr %2, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %26, %10, %8
  %30 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %6, %8 ]
  %31 = phi ptr [ %17, %26 ], [ %17, %10 ], [ %9, %8 ]
  %32 = phi ptr [ %28, %26 ], [ %3, %10 ], [ %3, %8 ]
  %33 = phi ptr [ %27, %26 ], [ %6, %10 ], [ %3, %8 ]
  store i64 0, ptr %31, align 8, !tbaa !21
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
  %48 = load ptr, ptr %47, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %48) #31
  %49 = load ptr, ptr %42, align 8, !tbaa !98
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
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %50 ]
  %62 = phi ptr [ %58, %57 ], [ %42, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %52, %50 ]
  %64 = icmp eq ptr %63, %24
  br i1 %64, label %26, label %39, !llvm.loop !469

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %69, %65 ], [ %32, %29 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  tail call void @_ZdlPv(ptr noundef %67) #31
  %68 = load ptr, ptr %2, align 8, !tbaa !90
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %2, align 8, !tbaa !90
  %70 = load ptr, ptr %5, align 8, !tbaa !86
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
  store i64 %82, ptr %4, align 8, !tbaa !91
  br label %83

83:                                               ; preds = %76, %81
  %84 = icmp eq ptr %78, %77
  br i1 %84, label %93, label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %78, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !98
  tail call void @_ZdlPv(ptr noundef %87) #31
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = icmp eq ptr %88, %77
  br i1 %89, label %90, label %85, !llvm.loop !470

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8, !tbaa !90
  %92 = load ptr, ptr %5, align 8, !tbaa !86
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
  store ptr %101, ptr %5, align 8, !tbaa !86
  %102 = load ptr, ptr %0, align 8, !tbaa !471
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @_ZdlPv(ptr noundef nonnull %102) #31
  br label %105

105:                                              ; preds = %93, %104
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !91
  %8 = icmp ugt i64 %7, 169
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -170
  store i64 %10, ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  store ptr %13, ptr %2, align 8, !tbaa !98
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !90
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !472
  %25 = load ptr, ptr %0, align 8, !tbaa !471
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #30
  store ptr %33, ptr %3, align 8, !tbaa !98
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #30
  store ptr %35, ptr %4, align 8, !tbaa !98
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %36 = load ptr, ptr %18, align 8, !tbaa !90
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  store ptr %37, ptr %5, align 8, !tbaa !98
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !90
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29, !noalias !473
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #30, !noalias !473
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #30
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
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #30
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #31
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !98
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !86
  %71 = load ptr, ptr %18, align 8, !tbaa !90
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !193
  store ptr %77, ptr %0, align 8, !tbaa !193
  store ptr %76, ptr %18, align 8, !tbaa !193
  store ptr %74, ptr %23, align 8, !tbaa !193
  store ptr %75, ptr %16, align 8, !tbaa !193
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #31
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !476
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #30
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
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !98
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !98
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !98
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !98
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !485

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
  %163 = load ptr, ptr %162, align 8, !tbaa !98
  store ptr %163, ptr %161, align 8, !tbaa !98
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !488

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #31
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !98
  store ptr %175, ptr %174, align 8, !tbaa !98
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !90
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #31
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
  tail call void @_ZdlPv(ptr noundef nonnull %190) #31
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !472
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load ptr, ptr %0, align 8, !tbaa !471
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !489
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !90
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !90
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29, !noalias !498
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #30, !noalias !498
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !90
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !98
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !98
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !98
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !98
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !501

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
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  store ptr %83, ptr %81, align 8, !tbaa !98
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !502

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !193
  store ptr %37, ptr %0, align 8, !tbaa !193
  store ptr %39, ptr %11, align 8, !tbaa !193
  store ptr %40, ptr %5, align 8, !tbaa !193
  store ptr %88, ptr %3, align 8, !tbaa !193
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #31
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %94, ptr %93, align 8, !tbaa !98
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !472
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load ptr, ptr %0, align 8, !tbaa !471
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !503
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !90
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !90
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29, !noalias !512
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #30, !noalias !512
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !90
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !98
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !98
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !98
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !98
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !515

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
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  store ptr %83, ptr %81, align 8, !tbaa !98
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !516

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !193
  store ptr %37, ptr %0, align 8, !tbaa !193
  store ptr %39, ptr %11, align 8, !tbaa !193
  store ptr %40, ptr %5, align 8, !tbaa !193
  store ptr %88, ptr %3, align 8, !tbaa !193
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #31
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %94, ptr %93, align 8, !tbaa !98
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = load ptr, ptr %0, align 8, !tbaa !471
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !472
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !517
  store ptr %22, ptr %10, align 8, !tbaa !86
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29, !noalias !526
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #30, !noalias !526
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !90
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
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !98
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !98
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !98
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !98
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !529

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
  %84 = load ptr, ptr %83, align 8, !tbaa !98
  store ptr %84, ptr %82, align 8, !tbaa !98
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !530

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !193
  store ptr %38, ptr %0, align 8, !tbaa !193
  store ptr %40, ptr %3, align 8, !tbaa !193
  store ptr %41, ptr %12, align 8, !tbaa !193
  store ptr %89, ptr %10, align 8, !tbaa !193
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #31
  %93 = load ptr, ptr %3, align 8, !tbaa !90
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %97, ptr %96, align 8, !tbaa !98
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !86
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !90
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !86
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #21 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #21 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #24
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #24
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #24
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #24
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #24
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(184) %5) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__init_with_sentinelB9nqe220103INS_19istreambuf_iteratorIcS2_EES8_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = inttoptr i64 %1 to ptr
  %5 = inttoptr i64 %2 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %6

6:                                                ; preds = %72, %3
  %7 = phi ptr [ %5, %3 ], [ %46, %72 ]
  %8 = phi ptr [ %4, %3 ], [ %25, %72 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %12 = load ptr, ptr %11, align 8, !tbaa !438
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !437
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load ptr, ptr %8, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 72
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %21 unwind label %75

21:                                               ; preds = %16
  %22 = icmp eq i32 %20, -1
  %23 = select i1 %22, ptr null, ptr %8
  br label %24

24:                                               ; preds = %21, %10, %6
  %25 = phi ptr [ null, %6 ], [ %23, %21 ], [ %8, %10 ]
  %26 = phi i1 [ true, %6 ], [ %22, %21 ], [ false, %10 ]
  %27 = icmp eq ptr %7, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br i1 %26, label %84, label %45

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !438
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %33 = load ptr, ptr %32, align 8, !tbaa !437
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br i1 %26, label %45, label %84

36:                                               ; preds = %29
  %37 = load ptr, ptr %7, align 8, !tbaa !32
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 72
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %41 unwind label %75

41:                                               ; preds = %36
  %42 = icmp eq i32 %40, -1
  %43 = select i1 %42, ptr null, ptr %7
  %44 = xor i1 %26, %42
  br i1 %44, label %45, label %84

45:                                               ; preds = %28, %35, %41
  %46 = phi ptr [ %7, %35 ], [ %43, %41 ], [ null, %28 ]
  %47 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %48 = load ptr, ptr %47, align 8, !tbaa !438
  %49 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !437
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load ptr, ptr %25, align 8, !tbaa !32
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 72
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef i32 %55(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %57 unwind label %75

57:                                               ; preds = %52
  %58 = trunc i32 %56 to i8
  br label %61

59:                                               ; preds = %45
  %60 = load i8, ptr %48, align 1, !tbaa !20
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8 [ %60, %59 ], [ %58, %57 ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef %62)
          to label %63 unwind label %75

63:                                               ; preds = %61
  %64 = load ptr, ptr %47, align 8, !tbaa !438
  %65 = load ptr, ptr %49, align 8, !tbaa !437
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load ptr, ptr %25, align 8, !tbaa !32
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 80
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %72 unwind label %75

72:                                               ; preds = %67, %73
  br label %6

73:                                               ; preds = %63
  %74 = getelementptr inbounds nuw i8, ptr %64, i64 1
  store ptr %74, ptr %47, align 8, !tbaa !438
  br label %72

75:                                               ; preds = %61, %16, %36, %52, %67
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load i8, ptr %0, align 8
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %82 = load ptr, ptr %81, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %82) #31
  br label %83

83:                                               ; preds = %75, %80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  resume { ptr, i32 } %76

84:                                               ; preds = %28, %35, %41
  ret void
}

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = icmp ugt i64 %2, -10
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

6:                                                ; preds = %3
  %7 = icmp ult i64 %2, 23
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = trunc nuw nsw i64 %2 to i8
  %10 = shl nuw nsw i8 %9, 1
  store i8 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %21

12:                                               ; preds = %6
  %13 = and i64 %2, -8
  %14 = add nuw i64 %13, 8
  %15 = icmp eq i64 %14, 24
  %16 = select i1 %15, i64 26, i64 %14
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #30, !noalias !531
  %18 = or disjoint i64 %16, 1
  store i64 %18, ptr %0, align 8, !tbaa !20
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %19, align 8, !tbaa !21
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %17, ptr %20, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %8, %12
  %22 = phi ptr [ %11, %8 ], [ %17, %12 ]
  %23 = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %23, i1 false)
  ret void
}

declare dso_local void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem13__resize_fileERKNS1_4pathEyPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #31
  br label %9

9:                                                ; preds = %1, %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %24) #31
  br label %25

25:                                               ; preds = %17, %22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib15metadata_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #31
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %24) #31
  br label %25

25:                                               ; preds = %17, %22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

declare dso_local noundef i64 @_ZNSt3__14__fs10filesystem11__file_sizeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem17__last_write_timeERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::chrono::time_point") align 16, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__19to_stringEx(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, -2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = icmp ult i64 %2, %5
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = icmp ugt i64 %2, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

11:                                               ; preds = %8
  %12 = and i64 %4, 1
  %13 = icmp eq i64 %12, 0
  %14 = add i64 %5, -1
  %15 = select i1 %13, i64 22, i64 %14
  %16 = icmp ugt i64 %15, 9223372036854775795
  %17 = shl nuw i64 %15, 1
  %18 = tail call i64 @llvm.umax.i64(i64 %2, i64 %17)
  %19 = and i64 %18, -8
  %20 = add i64 %19, 8
  %21 = select i1 %16, i64 -8, i64 %20
  %22 = icmp eq i64 %21, 24
  %23 = select i1 %22, i64 26, i64 %21
  %24 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %23) #30, !noalias !536
  %25 = load i8, ptr %0, align 8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq i64 %2, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %1, i64 %2, i1 false)
  br label %32

32:                                               ; preds = %31, %11
  %33 = getelementptr inbounds nuw i8, ptr %24, i64 %2
  store i8 0, ptr %33, align 1, !tbaa !20
  br i1 %27, label %35, label %34

34:                                               ; preds = %32
  tail call void @_ZdlPv(ptr noundef %29) #31
  br label %35

35:                                               ; preds = %32, %34
  %36 = or disjoint i64 %23, 1
  store i64 %36, ptr %0, align 8
  store i64 %2, ptr %6, align 8
  store ptr %24, ptr %28, align 8, !tbaa !20
  br label %41

37:                                               ; preds = %3
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  store i64 %2, ptr %6, align 8, !tbaa !20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %39, ptr align 1 %1, i64 %2, i1 false)
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 %2
  store i8 0, ptr %40, align 1, !tbaa !20
  br label %41

41:                                               ; preds = %37, %35
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = load i8, ptr %0, align 8
  %5 = icmp ugt i64 %2, 22
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = icmp ugt i64 %2, -10
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

9:                                                ; preds = %6
  %10 = and i8 %4, 1
  %11 = icmp eq i8 %10, 0
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, -2
  %14 = add i64 %13, -1
  %15 = select i1 %11, i64 22, i64 %14
  %16 = icmp ugt i64 %15, 9223372036854775795
  %17 = shl nuw i64 %15, 1
  %18 = tail call i64 @llvm.umax.i64(i64 %2, i64 %17)
  %19 = and i64 %18, -8
  %20 = add i64 %19, 8
  %21 = select i1 %16, i64 -8, i64 %20
  %22 = icmp eq i64 %21, 24
  %23 = select i1 %22, i64 26, i64 %21
  %24 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %23) #30, !noalias !541
  %25 = load i8, ptr %0, align 8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load ptr, ptr %28, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %1, i64 %2, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %2
  store i8 0, ptr %30, align 1, !tbaa !20
  br i1 %27, label %32, label %31

31:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %29) #31
  br label %32

32:                                               ; preds = %9, %31
  %33 = or disjoint i64 %23, 1
  store i64 %33, ptr %0, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %34, align 8
  store ptr %24, ptr %28, align 8, !tbaa !20
  br label %40

35:                                               ; preds = %3
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %37 = trunc nuw nsw i64 %2 to i8
  %38 = shl nuw nsw i8 %37, 1
  store i8 %38, ptr %0, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %36, ptr align 1 %1, i64 %2, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 %2
  store i8 0, ptr %39, align 1, !tbaa !20
  br label %40

40:                                               ; preds = %35, %32
  ret ptr %0
}

declare dso_local noundef zeroext i1 @_ZNSt3__14__fs10filesystem18__create_directoryERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local noundef zeroext i1 @_ZNSt3__14__fs10filesystem8__removeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local noundef i64 @_ZNSt3__14__fs10filesystem12__remove_allERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem8__renameERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local noundef zeroext i1 @_ZNSt3__14__fs10filesystem11__copy_fileERKNS1_4pathES4_NS1_12copy_optionsEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i16 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__14__fs10filesystem18directory_iteratorD2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #20 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = atomicrmw add ptr %6, i32 -1 acq_rel, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !32
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  br label %13

13:                                               ; preds = %1, %5, %9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = icmp eq ptr %2, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %17
  %9 = phi ptr [ %10, %17 ], [ %6, %4 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 -24
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %16) #31
  br label %17

17:                                               ; preds = %14, %8
  %18 = icmp eq ptr %2, %10
  br i1 %18, label %19, label %8

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !182
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi ptr [ %20, %19 ], [ %2, %4 ]
  store ptr %2, ptr %5, align 8, !tbaa !185
  tail call void @_ZdlPv(ptr noundef %22) #31
  br label %23

23:                                               ; preds = %1, %21
  ret void
}

declare dso_local void @_ZNSt3__14__fs10filesystem18directory_iteratorC2ERKNS1_4pathEPNS_10error_codeENS1_17directory_optionsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i8 noundef) unnamed_addr #17

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

declare dso_local noundef nonnull align 16 dereferenceable(80) ptr @_ZNKSt3__14__fs10filesystem18directory_iterator13__dereferenceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJS6_EEERS6_DpOT_ENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !546, !nonnull !81, !align !457
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = load ptr, ptr %3, align 8, !tbaa !182
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = add nsw i64 %12, 1
  %14 = icmp ugt i64 %13, 768614336404564650
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

16:                                               ; preds = %1
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %10
  %21 = sdiv exact i64 %20, 24
  %22 = icmp ult i64 %21, 384307168202282325
  %23 = shl nuw nsw i64 %21, 1
  %24 = tail call i64 @llvm.umax.i64(i64 %23, i64 %13)
  %25 = select i1 %22, i64 %24, i64 768614336404564650
  %26 = icmp ne i64 %25, 0
  tail call void @llvm.assume(i1 %26)
  %27 = icmp ugt i64 %25, 768614336404564650
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #29, !noalias !547
  unreachable

29:                                               ; preds = %16
  %30 = mul nuw i64 %25, 24
  %31 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %30) #30, !noalias !547
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %11
  %33 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %31, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %35 = load ptr, ptr %6, align 8, !tbaa !185
  %36 = load ptr, ptr %3, align 8, !tbaa !182
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, -24
  %41 = getelementptr inbounds %"class.std::__1::basic_string", ptr %32, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr align 8 %36, i64 %39, i1 false)
  store ptr %41, ptr %3, align 8, !tbaa !182
  store ptr %34, ptr %6, align 8, !tbaa !185
  store ptr %33, ptr %17, align 8, !tbaa !192
  %42 = icmp eq ptr %36, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef nonnull %36) #31
  br label %44

44:                                               ; preds = %29, %43
  %45 = load ptr, ptr %0, align 8, !tbaa !550, !nonnull !81, !align !457
  store ptr %34, ptr %45, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #13 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str.14) #29
  unreachable
}

declare dso_local void @_ZNKSt3__14__fs10filesystem4path10__filenameEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %4 = load i8, ptr %1, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = lshr i8 %4, 1
  %10 = zext nneg i8 %9 to i64
  %11 = select i1 %6, i64 %10, i64 %8
  %12 = icmp ugt i64 %11, -10
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
          to label %14 unwind label %64

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %3
  %16 = icmp ugt i64 %11, 22
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = and i64 %11, -8
  %19 = add nuw i64 %18, 8
  %20 = icmp eq i64 %19, 24
  %21 = select i1 %20, i64 26, i64 %19
  %22 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #30
          to label %23 unwind label %64

23:                                               ; preds = %17
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr %22, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = or disjoint i64 %21, 1
  store i64 %28, ptr %0, align 8
  store i64 0, ptr %27, align 8
  store ptr %22, ptr %26, align 8, !tbaa !20
  %29 = trunc i64 %28 to i8
  br label %30

30:                                               ; preds = %23, %15
  %31 = phi ptr [ %22, %23 ], [ null, %15 ]
  %32 = phi i8 [ %29, %23 ], [ 0, %15 ]
  %33 = invoke noundef i64 @_ZNSt3__14__fs10filesystem14__wide_to_charERKNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEPcy(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null, i64 noundef 0)
          to label %34 unwind label %64

34:                                               ; preds = %30
  %35 = and i8 %32, 1
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %38 = lshr i8 %32, 1
  %39 = select i1 %36, i8 %38, i8 0
  %40 = zext nneg i8 %39 to i64
  %41 = icmp ugt i64 %33, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = sub nuw i64 %33, %40
  %44 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEyc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %43, i8 noundef 0)
          to label %54 unwind label %64

45:                                               ; preds = %34
  br i1 %36, label %47, label %46

46:                                               ; preds = %45
  store i64 %33, ptr %37, align 8, !tbaa !20
  br label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %49 = trunc nuw nsw i64 %33 to i8
  %50 = shl nuw i8 %49, 1
  store i8 %50, ptr %0, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi ptr [ %31, %46 ], [ %48, %47 ]
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 %33
  store i8 0, ptr %53, align 1, !tbaa !20
  br label %54

54:                                               ; preds = %42, %51
  %55 = load i8, ptr %0, align 8
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %61 = select i1 %57, ptr %60, ptr %59
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 %40
  %63 = invoke noundef i64 @_ZNSt3__14__fs10filesystem14__wide_to_charERKNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEPcy(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %62, i64 noundef %33)
          to label %73 unwind label %64

64:                                               ; preds = %54, %42, %30, %17, %13
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load i8, ptr %0, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %71) #31
  br label %72

72:                                               ; preds = %64, %69
  resume { ptr, i32 } %65

73:                                               ; preds = %54
  ret void
}

declare dso_local noundef i64 @_ZNSt3__14__fs10filesystem14__wide_to_charERKNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEPcy(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEyc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i8 noundef) local_unnamed_addr #0 align 2

declare dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__14__fs10filesystem18directory_iterator11__incrementEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %6 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %7 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %8 = alloca %"struct.std::__1::pair.57", align 8
  %9 = zext i1 %4 to i8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %11

11:                                               ; preds = %238, %5
  %12 = phi ptr [ %239, %238 ], [ %1, %5 ]
  %13 = phi ptr [ %240, %238 ], [ %0, %5 ]
  %14 = phi i8 [ %241, %238 ], [ %9, %5 ]
  %15 = phi i64 [ %224, %238 ], [ %3, %5 ]
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 24
  switch i64 %19, label %20 [
    i64 0, label %243
    i64 1, label %243
    i64 2, label %90
    i64 3, label %125
    i64 4, label %130
    i64 5, label %135
  ]

20:                                               ; preds = %11
  %21 = icmp slt i64 %18, 576
  br i1 %21, label %143, label %22

22:                                               ; preds = %20
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %152, label %24

24:                                               ; preds = %22
  %25 = add nsw i64 %15, -1
  %26 = lshr i64 %19, 1
  %27 = icmp samesign ugt i64 %18, 3072
  %28 = getelementptr %"class.std::__1::basic_string", ptr %13, i64 %26
  %29 = getelementptr inbounds i8, ptr %12, i64 -24
  br i1 %27, label %32, label %30

30:                                               ; preds = %24
  %31 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %28, ptr noundef %13, ptr noundef nonnull %29, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %43

32:                                               ; preds = %24
  %33 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %13, ptr noundef %28, ptr noundef nonnull %29, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %35 = getelementptr i8, ptr %28, i64 -24
  %36 = getelementptr inbounds i8, ptr %12, i64 -48
  %37 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef nonnull %34, ptr noundef %35, ptr noundef nonnull %36, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %38 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %39 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %40 = getelementptr inbounds i8, ptr %12, i64 -72
  %41 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %42 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %35, ptr noundef %28, ptr noundef nonnull %39, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %43

43:                                               ; preds = %32, %30
  %44 = trunc nuw i8 %14 to i1
  br i1 %44, label %223, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds i8, ptr %13, i64 -24
  %47 = load i8, ptr %46, align 8, !noalias !551
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds i8, ptr %13, i64 -8
  %51 = load ptr, ptr %50, align 8, !noalias !551
  %52 = getelementptr inbounds i8, ptr %13, i64 -23
  %53 = select i1 %49, ptr %52, ptr %51
  %54 = getelementptr inbounds i8, ptr %13, i64 -16
  %55 = load i64, ptr %54, align 8, !noalias !551
  %56 = lshr i8 %47, 1
  %57 = zext nneg i8 %56 to i64
  %58 = select i1 %49, i64 %57, i64 %55
  %59 = load i8, ptr %13, align 8, !noalias !554
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %63 = load ptr, ptr %62, align 8, !noalias !554
  %64 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %65 = select i1 %61, ptr %64, ptr %63
  %66 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %67 = load i64, ptr %66, align 8, !noalias !554
  %68 = lshr i8 %59, 1
  %69 = zext nneg i8 %68 to i64
  %70 = select i1 %61, i64 %69, i64 %67
  %71 = call i64 @llvm.umin.i64(i64 %70, i64 %58)
  %72 = call noundef i32 @memcmp(ptr noundef %53, ptr noundef %65, i64 noundef %71) #24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %45
  %75 = icmp slt i32 %72, 0
  br i1 %75, label %223, label %78

76:                                               ; preds = %45
  %77 = icmp ult i64 %58, %70
  br i1 %77, label %223, label %78

78:                                               ; preds = %76, %74
  %79 = call noundef ptr @_ZNSt3__131__partition_with_equals_on_leftB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEET0_SC_SC_T1_(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %80 = ptrtoint ptr %12 to i64
  %81 = getelementptr inbounds i8, ptr %12, i64 -24
  %82 = getelementptr inbounds i8, ptr %12, i64 -48
  %83 = getelementptr inbounds i8, ptr %12, i64 -72
  br label %84

84:                                               ; preds = %78, %221
  %85 = phi ptr [ %222, %221 ], [ %79, %78 ]
  %86 = phi i64 [ %173, %221 ], [ %25, %78 ]
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %80, %87
  %89 = sdiv exact i64 %88, 24
  switch i64 %89, label %141 [
    i64 0, label %243
    i64 1, label %243
    i64 2, label %90
    i64 3, label %125
    i64 4, label %130
    i64 5, label %135
  ]

90:                                               ; preds = %11, %84
  %91 = phi ptr [ %85, %84 ], [ %13, %11 ]
  %92 = getelementptr inbounds i8, ptr %12, i64 -24
  %93 = load i8, ptr %92, align 8, !noalias !557
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = getelementptr inbounds i8, ptr %12, i64 -8
  %97 = load ptr, ptr %96, align 8, !noalias !557
  %98 = getelementptr inbounds i8, ptr %12, i64 -23
  %99 = select i1 %95, ptr %98, ptr %97
  %100 = getelementptr inbounds i8, ptr %12, i64 -16
  %101 = load i64, ptr %100, align 8, !noalias !557
  %102 = lshr i8 %93, 1
  %103 = zext nneg i8 %102 to i64
  %104 = select i1 %95, i64 %103, i64 %101
  %105 = load i8, ptr %91, align 8, !noalias !560
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %109 = load ptr, ptr %108, align 8, !noalias !560
  %110 = getelementptr inbounds nuw i8, ptr %91, i64 1
  %111 = select i1 %107, ptr %110, ptr %109
  %112 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %113 = load i64, ptr %112, align 8, !noalias !560
  %114 = lshr i8 %105, 1
  %115 = zext nneg i8 %114 to i64
  %116 = select i1 %107, i64 %115, i64 %113
  %117 = call i64 @llvm.umin.i64(i64 %116, i64 %104)
  %118 = call noundef i32 @memcmp(ptr noundef %99, ptr noundef %111, i64 noundef %117) #24
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %90
  %121 = icmp ult i64 %104, %116
  br i1 %121, label %124, label %243

122:                                              ; preds = %90
  %123 = icmp slt i32 %118, 0
  br i1 %123, label %124, label %243

124:                                              ; preds = %120, %122
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %91, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(24) %92, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %92, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %243

125:                                              ; preds = %11, %84
  %126 = phi ptr [ %85, %84 ], [ %13, %11 ]
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 24
  %128 = getelementptr inbounds i8, ptr %12, i64 -24
  %129 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %126, ptr noundef nonnull %127, ptr noundef nonnull %128, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %243

130:                                              ; preds = %11, %84
  %131 = phi ptr [ %85, %84 ], [ %13, %11 ]
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 24
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 48
  %134 = getelementptr inbounds i8, ptr %12, i64 -24
  call void @_ZNSt3__17__sort4B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SD_(ptr noundef %131, ptr noundef nonnull %132, ptr noundef nonnull %133, ptr noundef nonnull %134, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %243

135:                                              ; preds = %11, %84
  %136 = phi ptr [ %85, %84 ], [ %13, %11 ]
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 24
  %138 = getelementptr inbounds nuw i8, ptr %136, i64 48
  %139 = getelementptr inbounds nuw i8, ptr %136, i64 72
  %140 = getelementptr inbounds i8, ptr %12, i64 -24
  call void @_ZNSt3__17__sort5B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_(ptr noundef %136, ptr noundef nonnull %137, ptr noundef nonnull %138, ptr noundef nonnull %139, ptr noundef nonnull %140, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %243

141:                                              ; preds = %84
  %142 = icmp slt i64 %88, 576
  br i1 %142, label %145, label %150

143:                                              ; preds = %20
  %144 = trunc nuw i8 %14 to i1
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi ptr [ %13, %143 ], [ %85, %141 ]
  %147 = phi i1 [ %144, %143 ], [ false, %141 ]
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  call void @_ZNSt3__116__insertion_sortB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_(ptr noundef %146, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %243

149:                                              ; preds = %145
  call void @_ZNSt3__126__insertion_sort_unguardedB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_(ptr noundef %146, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %243

150:                                              ; preds = %141
  %151 = icmp eq i64 %86, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %22, %150
  %153 = phi ptr [ %85, %150 ], [ %13, %22 ]
  %154 = phi i64 [ %88, %150 ], [ %18, %22 ]
  %155 = phi i64 [ %89, %150 ], [ %19, %22 ]
  %156 = icmp eq ptr %153, %12
  br i1 %156, label %243, label %157

157:                                              ; preds = %152
  %158 = add nsw i64 %155, -2
  %159 = lshr i64 %158, 1
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i64 [ %159, %157 ], [ %162, %160 ]
  call void @_ZNSt3__111__sift_downB9nqe220103INS_17_ClassicAlgPolicyELb0ERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT2_OT1_NS_15iterator_traitsISC_E15difference_typeESH_(ptr noundef %153, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %155, i64 noundef %161)
  %162 = add nsw i64 %161, -1
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %164, label %160, !llvm.loop !563

164:                                              ; preds = %160
  %165 = udiv exact i64 %154, 24
  br label %166

166:                                              ; preds = %166, %164
  %167 = phi i64 [ %170, %166 ], [ %165, %164 ]
  %168 = phi ptr [ %169, %166 ], [ %12, %164 ]
  call void @_ZNSt3__110__pop_heapB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(ptr noundef %153, ptr noundef %168, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %167)
  %169 = getelementptr inbounds i8, ptr %168, i64 -24
  %170 = add nsw i64 %167, -1
  %171 = icmp samesign ugt i64 %167, 2
  br i1 %171, label %166, label %243, !llvm.loop !564

172:                                              ; preds = %150
  %173 = add nsw i64 %86, -1
  %174 = lshr i64 %89, 1
  %175 = icmp samesign ugt i64 %88, 3072
  %176 = getelementptr %"class.std::__1::basic_string", ptr %85, i64 %174
  br i1 %175, label %177, label %186

177:                                              ; preds = %172
  %178 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %85, ptr noundef %176, ptr noundef nonnull %81, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %179 = getelementptr inbounds nuw i8, ptr %85, i64 24
  %180 = getelementptr i8, ptr %176, i64 -24
  %181 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef nonnull %179, ptr noundef %180, ptr noundef nonnull %82, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %182 = getelementptr inbounds nuw i8, ptr %85, i64 48
  %183 = getelementptr inbounds nuw i8, ptr %176, i64 24
  %184 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef nonnull %182, ptr noundef nonnull %183, ptr noundef nonnull %83, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %185 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %180, ptr noundef %176, ptr noundef nonnull %183, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %85, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %176, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %176, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %188

186:                                              ; preds = %172
  %187 = call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %176, ptr noundef %85, ptr noundef nonnull %81, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %188

188:                                              ; preds = %177, %186
  %189 = getelementptr inbounds i8, ptr %85, i64 -24
  %190 = load i8, ptr %189, align 8, !noalias !551
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  %193 = getelementptr inbounds i8, ptr %85, i64 -8
  %194 = load ptr, ptr %193, align 8, !noalias !551
  %195 = getelementptr inbounds i8, ptr %85, i64 -23
  %196 = select i1 %192, ptr %195, ptr %194
  %197 = getelementptr inbounds i8, ptr %85, i64 -16
  %198 = load i64, ptr %197, align 8, !noalias !551
  %199 = lshr i8 %190, 1
  %200 = zext nneg i8 %199 to i64
  %201 = select i1 %192, i64 %200, i64 %198
  %202 = load i8, ptr %85, align 8, !noalias !554
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  %205 = getelementptr inbounds nuw i8, ptr %85, i64 16
  %206 = load ptr, ptr %205, align 8, !noalias !554
  %207 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %208 = select i1 %204, ptr %207, ptr %206
  %209 = getelementptr inbounds nuw i8, ptr %85, i64 8
  %210 = load i64, ptr %209, align 8, !noalias !554
  %211 = lshr i8 %202, 1
  %212 = zext nneg i8 %211 to i64
  %213 = select i1 %204, i64 %212, i64 %210
  %214 = call i64 @llvm.umin.i64(i64 %213, i64 %201)
  %215 = call noundef i32 @memcmp(ptr noundef %196, ptr noundef %208, i64 noundef %214) #24
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %188
  %218 = icmp ult i64 %201, %213
  br i1 %218, label %223, label %221

219:                                              ; preds = %188
  %220 = icmp slt i32 %215, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %219, %217
  %222 = call noundef ptr @_ZNSt3__131__partition_with_equals_on_leftB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEET0_SC_SC_T1_(ptr noundef nonnull %85, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %84, !llvm.loop !565

223:                                              ; preds = %217, %219, %76, %74, %43
  %224 = phi i64 [ %25, %43 ], [ %25, %74 ], [ %25, %76 ], [ %173, %219 ], [ %173, %217 ]
  %225 = phi ptr [ %13, %43 ], [ %13, %74 ], [ %13, %76 ], [ %85, %219 ], [ %85, %217 ]
  %226 = phi i8 [ %14, %43 ], [ %14, %74 ], [ %14, %76 ], [ 0, %219 ], [ 0, %217 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt3__132__partition_with_equals_on_rightB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEENS_4pairIT0_bEESD_SD_T1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::pair.57") align 8 %8, ptr noundef %225, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %227 = load ptr, ptr %8, align 8, !tbaa !567
  %228 = load i8, ptr %10, align 8, !tbaa !569, !range !80, !noundef !81
  %229 = trunc nuw i8 %228 to i1
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = call noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbT1_SC_T0_(ptr noundef %225, ptr noundef %227, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %232 = getelementptr inbounds nuw i8, ptr %227, i64 24
  %233 = call noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbT1_SC_T0_(ptr noundef nonnull %232, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br i1 %231, label %242, label %238

235:                                              ; preds = %230
  br i1 %231, label %238, label %236, !llvm.loop !570

236:                                              ; preds = %235, %223
  call void @_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEEvT1_SC_T0_NS_15iterator_traitsISC_E15difference_typeEb(ptr noundef %225, ptr noundef %227, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %224, i1 noundef zeroext %44)
  %237 = getelementptr inbounds nuw i8, ptr %227, i64 24
  br label %238

238:                                              ; preds = %236, %234, %235
  %239 = phi ptr [ %12, %235 ], [ %227, %234 ], [ %12, %236 ]
  %240 = phi ptr [ %232, %235 ], [ %225, %234 ], [ %237, %236 ]
  %241 = phi i8 [ %226, %235 ], [ %226, %234 ], [ 0, %236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %11, !llvm.loop !570

242:                                              ; preds = %234
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %243

243:                                              ; preds = %84, %84, %11, %11, %166, %242, %120, %152, %148, %149, %124, %130, %125, %135, %122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_seh0 {
  %5 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %6 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %7 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %8 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %9 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %10 = load i8, ptr %1, align 8, !noalias !571
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %14 = load ptr, ptr %13, align 8, !noalias !571
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %16 = select i1 %12, ptr %15, ptr %14
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = load i64, ptr %17, align 8, !noalias !571
  %19 = lshr i8 %10, 1
  %20 = zext nneg i8 %19 to i64
  %21 = select i1 %12, i64 %20, i64 %18
  %22 = load i8, ptr %0, align 8, !noalias !574
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load ptr, ptr %25, align 8, !noalias !574
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %28 = select i1 %24, ptr %27, ptr %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 8, !noalias !574
  %31 = lshr i8 %22, 1
  %32 = zext nneg i8 %31 to i64
  %33 = select i1 %24, i64 %32, i64 %30
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 %21)
  %35 = tail call noundef i32 @memcmp(ptr noundef %16, ptr noundef %28, i64 noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = icmp ult i64 %21, %33
  br i1 %38, label %88, label %41

39:                                               ; preds = %4
  %40 = icmp slt i32 %35, 0
  br i1 %40, label %88, label %41

41:                                               ; preds = %37, %39
  %42 = load i8, ptr %2, align 8, !noalias !577
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %46 = load ptr, ptr %45, align 8, !noalias !577
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %48 = select i1 %44, ptr %47, ptr %46
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %50 = load i64, ptr %49, align 8, !noalias !577
  %51 = lshr i8 %42, 1
  %52 = zext nneg i8 %51 to i64
  %53 = select i1 %44, i64 %52, i64 %50
  %54 = tail call i64 @llvm.umin.i64(i64 %21, i64 %53)
  %55 = tail call noundef i32 @memcmp(ptr noundef %48, ptr noundef %16, i64 noundef %54) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = icmp ult i64 %53, %21
  br i1 %58, label %61, label %136

59:                                               ; preds = %41
  %60 = icmp slt i32 %55, 0
  br i1 %60, label %61, label %136

61:                                               ; preds = %57, %59
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %62 = load i8, ptr %1, align 8, !noalias !580
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %13, align 8, !noalias !580
  %66 = select i1 %64, ptr %15, ptr %65
  %67 = load i64, ptr %17, align 8, !noalias !580
  %68 = lshr i8 %62, 1
  %69 = zext nneg i8 %68 to i64
  %70 = select i1 %64, i64 %69, i64 %67
  %71 = load i8, ptr %0, align 8, !noalias !583
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = load ptr, ptr %25, align 8, !noalias !583
  %75 = select i1 %73, ptr %27, ptr %74
  %76 = load i64, ptr %29, align 8, !noalias !583
  %77 = lshr i8 %71, 1
  %78 = zext nneg i8 %77 to i64
  %79 = select i1 %73, i64 %78, i64 %76
  %80 = tail call i64 @llvm.umin.i64(i64 %79, i64 %70)
  %81 = tail call noundef i32 @memcmp(ptr noundef %66, ptr noundef %75, i64 noundef %80) #24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %61
  %84 = icmp ult i64 %70, %79
  br i1 %84, label %87, label %136

85:                                               ; preds = %61
  %86 = icmp slt i32 %81, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %83, %85
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %136

88:                                               ; preds = %37, %39
  %89 = load i8, ptr %2, align 8, !noalias !586
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %93 = load ptr, ptr %92, align 8, !noalias !586
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %95 = select i1 %91, ptr %94, ptr %93
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %97 = load i64, ptr %96, align 8, !noalias !586
  %98 = lshr i8 %89, 1
  %99 = zext nneg i8 %98 to i64
  %100 = select i1 %91, i64 %99, i64 %97
  %101 = tail call i64 @llvm.umin.i64(i64 %21, i64 %100)
  %102 = tail call noundef i32 @memcmp(ptr noundef %95, ptr noundef %16, i64 noundef %101) #24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %88
  %105 = icmp ult i64 %100, %21
  br i1 %105, label %108, label %109

106:                                              ; preds = %88
  %107 = icmp slt i32 %102, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %106
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %136

109:                                              ; preds = %104, %106
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %110 = load i8, ptr %2, align 8, !noalias !589
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = load ptr, ptr %92, align 8, !noalias !589
  %114 = select i1 %112, ptr %94, ptr %113
  %115 = load i64, ptr %96, align 8, !noalias !589
  %116 = lshr i8 %110, 1
  %117 = zext nneg i8 %116 to i64
  %118 = select i1 %112, i64 %117, i64 %115
  %119 = load i8, ptr %1, align 8, !noalias !592
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = load ptr, ptr %13, align 8, !noalias !592
  %123 = select i1 %121, ptr %15, ptr %122
  %124 = load i64, ptr %17, align 8, !noalias !592
  %125 = lshr i8 %119, 1
  %126 = zext nneg i8 %125 to i64
  %127 = select i1 %121, i64 %126, i64 %124
  %128 = tail call i64 @llvm.umin.i64(i64 %127, i64 %118)
  %129 = tail call noundef i32 @memcmp(ptr noundef %114, ptr noundef %123, i64 noundef %128) #24
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %109
  %132 = icmp ult i64 %118, %127
  br i1 %132, label %135, label %136

133:                                              ; preds = %109
  %134 = icmp slt i32 %129, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %133
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %136

136:                                              ; preds = %131, %83, %57, %133, %135, %85, %87, %59, %108
  %137 = phi i1 [ true, %108 ], [ true, %85 ], [ false, %59 ], [ true, %87 ], [ true, %135 ], [ true, %133 ], [ true, %83 ], [ false, %57 ], [ true, %131 ]
  ret i1 %137
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__17__sort4B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_seh0 {
  %6 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %7 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %8 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %9 = tail call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %10 = load i8, ptr %3, align 8, !noalias !595
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %14 = load ptr, ptr %13, align 8, !noalias !595
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %16 = select i1 %12, ptr %15, ptr %14
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 8, !noalias !595
  %19 = lshr i8 %10, 1
  %20 = zext nneg i8 %19 to i64
  %21 = select i1 %12, i64 %20, i64 %18
  %22 = load i8, ptr %2, align 8, !noalias !598
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load ptr, ptr %25, align 8, !noalias !598
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %28 = select i1 %24, ptr %27, ptr %26
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 8, !noalias !598
  %31 = lshr i8 %22, 1
  %32 = zext nneg i8 %31 to i64
  %33 = select i1 %24, i64 %32, i64 %30
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 %21)
  %35 = tail call noundef i32 @memcmp(ptr noundef %16, ptr noundef %28, i64 noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = icmp ult i64 %21, %33
  br i1 %38, label %41, label %100

39:                                               ; preds = %5
  %40 = icmp slt i32 %35, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %37, %39
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %42 = load i8, ptr %2, align 8, !noalias !601
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr %25, align 8, !noalias !601
  %46 = select i1 %44, ptr %27, ptr %45
  %47 = load i64, ptr %29, align 8, !noalias !601
  %48 = lshr i8 %42, 1
  %49 = zext nneg i8 %48 to i64
  %50 = select i1 %44, i64 %49, i64 %47
  %51 = load i8, ptr %1, align 8, !noalias !604
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %55 = load ptr, ptr %54, align 8, !noalias !604
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %57 = select i1 %53, ptr %56, ptr %55
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %59 = load i64, ptr %58, align 8, !noalias !604
  %60 = lshr i8 %51, 1
  %61 = zext nneg i8 %60 to i64
  %62 = select i1 %53, i64 %61, i64 %59
  %63 = tail call i64 @llvm.umin.i64(i64 %62, i64 %50)
  %64 = tail call noundef i32 @memcmp(ptr noundef %46, ptr noundef %57, i64 noundef %63) #24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %41
  %67 = icmp ult i64 %50, %62
  br i1 %67, label %70, label %100

68:                                               ; preds = %41
  %69 = icmp slt i32 %64, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %66, %68
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %71 = load i8, ptr %1, align 8, !noalias !607
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = load ptr, ptr %54, align 8, !noalias !607
  %75 = select i1 %73, ptr %56, ptr %74
  %76 = load i64, ptr %58, align 8, !noalias !607
  %77 = lshr i8 %71, 1
  %78 = zext nneg i8 %77 to i64
  %79 = select i1 %73, i64 %78, i64 %76
  %80 = load i8, ptr %0, align 8, !noalias !610
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = load ptr, ptr %83, align 8, !noalias !610
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %86 = select i1 %82, ptr %85, ptr %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %88 = load i64, ptr %87, align 8, !noalias !610
  %89 = lshr i8 %80, 1
  %90 = zext nneg i8 %89 to i64
  %91 = select i1 %82, i64 %90, i64 %88
  %92 = tail call i64 @llvm.umin.i64(i64 %91, i64 %79)
  %93 = tail call noundef i32 @memcmp(ptr noundef %75, ptr noundef %86, i64 noundef %92) #24
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %70
  %96 = icmp ult i64 %79, %91
  br i1 %96, label %99, label %100

97:                                               ; preds = %70
  %98 = icmp slt i32 %93, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %97
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %100

100:                                              ; preds = %95, %66, %37, %68, %99, %97, %39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__17__sort5B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_seh0 {
  %7 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %8 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %9 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %10 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  tail call void @_ZNSt3__17__sort4B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %11 = load i8, ptr %4, align 8, !noalias !613
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = load ptr, ptr %14, align 8, !noalias !613
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %17 = select i1 %13, ptr %16, ptr %15
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %19 = load i64, ptr %18, align 8, !noalias !613
  %20 = lshr i8 %11, 1
  %21 = zext nneg i8 %20 to i64
  %22 = select i1 %13, i64 %21, i64 %19
  %23 = load i8, ptr %3, align 8, !noalias !616
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %27 = load ptr, ptr %26, align 8, !noalias !616
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %29 = select i1 %25, ptr %28, ptr %27
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %31 = load i64, ptr %30, align 8, !noalias !616
  %32 = lshr i8 %23, 1
  %33 = zext nneg i8 %32 to i64
  %34 = select i1 %25, i64 %33, i64 %31
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 %22)
  %36 = tail call noundef i32 @memcmp(ptr noundef %17, ptr noundef %29, i64 noundef %35) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = icmp ult i64 %22, %34
  br i1 %39, label %42, label %130

40:                                               ; preds = %6
  %41 = icmp slt i32 %36, 0
  br i1 %41, label %42, label %130

42:                                               ; preds = %38, %40
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %43 = load i8, ptr %3, align 8, !noalias !619
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %26, align 8, !noalias !619
  %47 = select i1 %45, ptr %28, ptr %46
  %48 = load i64, ptr %30, align 8, !noalias !619
  %49 = lshr i8 %43, 1
  %50 = zext nneg i8 %49 to i64
  %51 = select i1 %45, i64 %50, i64 %48
  %52 = load i8, ptr %2, align 8, !noalias !622
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %56 = load ptr, ptr %55, align 8, !noalias !622
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %58 = select i1 %54, ptr %57, ptr %56
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 8, !noalias !622
  %61 = lshr i8 %52, 1
  %62 = zext nneg i8 %61 to i64
  %63 = select i1 %54, i64 %62, i64 %60
  %64 = tail call i64 @llvm.umin.i64(i64 %63, i64 %51)
  %65 = tail call noundef i32 @memcmp(ptr noundef %47, ptr noundef %58, i64 noundef %64) #24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %42
  %68 = icmp ult i64 %51, %63
  br i1 %68, label %71, label %130

69:                                               ; preds = %42
  %70 = icmp slt i32 %65, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %67, %69
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %72 = load i8, ptr %2, align 8, !noalias !625
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = load ptr, ptr %55, align 8, !noalias !625
  %76 = select i1 %74, ptr %57, ptr %75
  %77 = load i64, ptr %59, align 8, !noalias !625
  %78 = lshr i8 %72, 1
  %79 = zext nneg i8 %78 to i64
  %80 = select i1 %74, i64 %79, i64 %77
  %81 = load i8, ptr %1, align 8, !noalias !628
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %85 = load ptr, ptr %84, align 8, !noalias !628
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %87 = select i1 %83, ptr %86, ptr %85
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %89 = load i64, ptr %88, align 8, !noalias !628
  %90 = lshr i8 %81, 1
  %91 = zext nneg i8 %90 to i64
  %92 = select i1 %83, i64 %91, i64 %89
  %93 = tail call i64 @llvm.umin.i64(i64 %92, i64 %80)
  %94 = tail call noundef i32 @memcmp(ptr noundef %76, ptr noundef %87, i64 noundef %93) #24
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %71
  %97 = icmp ult i64 %80, %92
  br i1 %97, label %100, label %130

98:                                               ; preds = %71
  %99 = icmp slt i32 %94, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %96, %98
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %101 = load i8, ptr %1, align 8, !noalias !631
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = load ptr, ptr %84, align 8, !noalias !631
  %105 = select i1 %103, ptr %86, ptr %104
  %106 = load i64, ptr %88, align 8, !noalias !631
  %107 = lshr i8 %101, 1
  %108 = zext nneg i8 %107 to i64
  %109 = select i1 %103, i64 %108, i64 %106
  %110 = load i8, ptr %0, align 8, !noalias !634
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %114 = load ptr, ptr %113, align 8, !noalias !634
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %116 = select i1 %112, ptr %115, ptr %114
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %118 = load i64, ptr %117, align 8, !noalias !634
  %119 = lshr i8 %110, 1
  %120 = zext nneg i8 %119 to i64
  %121 = select i1 %112, i64 %120, i64 %118
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 %109)
  %123 = tail call noundef i32 @memcmp(ptr noundef %105, ptr noundef %116, i64 noundef %122) #24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %100
  %126 = icmp ult i64 %109, %121
  br i1 %126, label %129, label %130

127:                                              ; preds = %100
  %128 = icmp slt i32 %123, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %127
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %130

130:                                              ; preds = %125, %96, %67, %38, %69, %127, %129, %98, %40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__116__insertion_sortB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %89, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %89, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %13

13:                                               ; preds = %9, %86
  %14 = phi ptr [ %7, %9 ], [ %87, %86 ]
  %15 = phi ptr [ %0, %9 ], [ %14, %86 ]
  %16 = load i8, ptr %14, align 8, !noalias !637
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %20 = load ptr, ptr %19, align 8, !noalias !637
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 25
  %22 = select i1 %18, ptr %21, ptr %20
  %23 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %24 = load i64, ptr %23, align 8, !noalias !637
  %25 = lshr i8 %16, 1
  %26 = zext nneg i8 %25 to i64
  %27 = select i1 %18, i64 %26, i64 %24
  %28 = load i8, ptr %15, align 8, !noalias !640
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %32 = load ptr, ptr %31, align 8, !noalias !640
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %34 = select i1 %30, ptr %33, ptr %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %36 = load i64, ptr %35, align 8, !noalias !640
  %37 = lshr i8 %28, 1
  %38 = zext nneg i8 %37 to i64
  %39 = select i1 %30, i64 %38, i64 %36
  %40 = tail call i64 @llvm.umin.i64(i64 %39, i64 %27)
  %41 = tail call noundef i32 @memcmp(ptr noundef %22, ptr noundef %34, i64 noundef %40) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %13
  %44 = icmp ult i64 %27, %39
  br i1 %44, label %47, label %86

45:                                               ; preds = %13
  %46 = icmp slt i32 %41, 0
  br i1 %46, label %47, label %86

47:                                               ; preds = %43, %45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %48 = load i8, ptr %4, align 8
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = load ptr, ptr %10, align 8
  %52 = select i1 %50, ptr %11, ptr %51
  %53 = load i64, ptr %12, align 8
  %54 = lshr i8 %48, 1
  %55 = zext nneg i8 %54 to i64
  %56 = select i1 %50, i64 %55, i64 %53
  br label %57

57:                                               ; preds = %81, %47
  %58 = phi ptr [ %15, %47 ], [ %63, %81 ]
  %59 = phi ptr [ %14, %47 ], [ %58, %81 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 1
  store i8 0, ptr %60, align 1, !tbaa !20
  %61 = icmp eq ptr %58, %0
  br i1 %61, label %84, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %58, i64 -24
  %64 = load i8, ptr %63, align 8, !noalias !643
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr inbounds i8, ptr %58, i64 -8
  %68 = load ptr, ptr %67, align 8, !noalias !643
  %69 = getelementptr inbounds i8, ptr %58, i64 -23
  %70 = select i1 %66, ptr %69, ptr %68
  %71 = getelementptr inbounds i8, ptr %58, i64 -16
  %72 = load i64, ptr %71, align 8, !noalias !643
  %73 = lshr i8 %64, 1
  %74 = zext nneg i8 %73 to i64
  %75 = select i1 %66, i64 %74, i64 %72
  %76 = tail call i64 @llvm.umin.i64(i64 %75, i64 %56)
  %77 = call noundef i32 @memcmp(ptr noundef %52, ptr noundef %70, i64 noundef %76) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = icmp ult i64 %56, %75
  br i1 %80, label %81, label %84

81:                                               ; preds = %79, %62
  %82 = phi i32 [ %77, %62 ], [ -1, %79 ]
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %57, label %84, !llvm.loop !646

84:                                               ; preds = %79, %57, %81
  %85 = phi ptr [ %58, %79 ], [ %0, %57 ], [ %58, %81 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %86

86:                                               ; preds = %43, %84, %45
  %87 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %89, label %13, !llvm.loop !647

89:                                               ; preds = %86, %6, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__126__insertion_sort_unguardedB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %86, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %86, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %13

13:                                               ; preds = %9, %83
  %14 = phi ptr [ %7, %9 ], [ %84, %83 ]
  %15 = phi ptr [ %0, %9 ], [ %14, %83 ]
  %16 = load i8, ptr %14, align 8, !noalias !648
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 40
  %20 = load ptr, ptr %19, align 8, !noalias !648
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 25
  %22 = select i1 %18, ptr %21, ptr %20
  %23 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %24 = load i64, ptr %23, align 8, !noalias !648
  %25 = lshr i8 %16, 1
  %26 = zext nneg i8 %25 to i64
  %27 = select i1 %18, i64 %26, i64 %24
  %28 = load i8, ptr %15, align 8, !noalias !651
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %32 = load ptr, ptr %31, align 8, !noalias !651
  %33 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %34 = select i1 %30, ptr %33, ptr %32
  %35 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %36 = load i64, ptr %35, align 8, !noalias !651
  %37 = lshr i8 %28, 1
  %38 = zext nneg i8 %37 to i64
  %39 = select i1 %30, i64 %38, i64 %36
  %40 = tail call i64 @llvm.umin.i64(i64 %39, i64 %27)
  %41 = tail call noundef i32 @memcmp(ptr noundef %22, ptr noundef %34, i64 noundef %40) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %13
  %44 = icmp ult i64 %27, %39
  br i1 %44, label %47, label %83

45:                                               ; preds = %13
  %46 = icmp slt i32 %41, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %43, %45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %48 = load i8, ptr %4, align 8
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = load ptr, ptr %10, align 8
  %52 = select i1 %50, ptr %11, ptr %51
  %53 = load i64, ptr %12, align 8
  %54 = lshr i8 %48, 1
  %55 = zext nneg i8 %54 to i64
  %56 = select i1 %50, i64 %55, i64 %53
  br label %57

57:                                               ; preds = %79, %47
  %58 = phi ptr [ %15, %47 ], [ %61, %79 ]
  %59 = phi ptr [ %14, %47 ], [ %58, %79 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 1
  store i8 0, ptr %60, align 1, !tbaa !20
  %61 = getelementptr inbounds i8, ptr %58, i64 -24
  %62 = load i8, ptr %61, align 8, !noalias !654
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds i8, ptr %58, i64 -8
  %66 = load ptr, ptr %65, align 8, !noalias !654
  %67 = getelementptr inbounds i8, ptr %58, i64 -23
  %68 = select i1 %64, ptr %67, ptr %66
  %69 = getelementptr inbounds i8, ptr %58, i64 -16
  %70 = load i64, ptr %69, align 8, !noalias !654
  %71 = lshr i8 %62, 1
  %72 = zext nneg i8 %71 to i64
  %73 = select i1 %64, i64 %72, i64 %70
  %74 = tail call i64 @llvm.umin.i64(i64 %73, i64 %56)
  %75 = call noundef i32 @memcmp(ptr noundef %52, ptr noundef %68, i64 noundef %74) #24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = icmp ult i64 %56, %73
  br i1 %78, label %79, label %82

79:                                               ; preds = %77, %57
  %80 = phi i32 [ %75, %57 ], [ -1, %77 ]
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %57, label %82, !llvm.loop !657

82:                                               ; preds = %77, %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %83

83:                                               ; preds = %43, %82, %45
  %84 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %86, label %13, !llvm.loop !658

86:                                               ; preds = %83, %6, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__131__partition_with_equals_on_leftB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEET0_SC_SC_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds i8, ptr %1, i64 -24
  %7 = load i8, ptr %5, align 8, !noalias !659
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %11 = load ptr, ptr %10, align 8, !noalias !659
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %13 = select i1 %9, ptr %12, ptr %11
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i64, ptr %14, align 8, !noalias !659
  %16 = lshr i8 %7, 1
  %17 = zext nneg i8 %16 to i64
  %18 = select i1 %9, i64 %17, i64 %15
  %19 = load i8, ptr %6, align 8, !noalias !662
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds i8, ptr %1, i64 -8
  %23 = load ptr, ptr %22, align 8, !noalias !662
  %24 = getelementptr inbounds i8, ptr %1, i64 -23
  %25 = select i1 %21, ptr %24, ptr %23
  %26 = getelementptr inbounds i8, ptr %1, i64 -16
  %27 = load i64, ptr %26, align 8, !noalias !662
  %28 = lshr i8 %19, 1
  %29 = zext nneg i8 %28 to i64
  %30 = select i1 %21, i64 %29, i64 %27
  %31 = tail call i64 @llvm.umin.i64(i64 %30, i64 %18)
  %32 = call noundef i32 @memcmp(ptr noundef %13, ptr noundef %25, i64 noundef %31) #24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = icmp ult i64 %18, %30
  br i1 %35, label %39, label %38

36:                                               ; preds = %3
  %37 = icmp slt i32 %32, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %36
  br label %65

39:                                               ; preds = %34, %36
  br label %40

40:                                               ; preds = %39, %62
  %41 = phi ptr [ %42, %62 ], [ %0, %39 ]
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %43 = load i8, ptr %42, align 8, !noalias !665
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 40
  %47 = load ptr, ptr %46, align 8, !noalias !665
  %48 = getelementptr inbounds nuw i8, ptr %41, i64 25
  %49 = select i1 %45, ptr %48, ptr %47
  %50 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %51 = load i64, ptr %50, align 8, !noalias !665
  %52 = lshr i8 %43, 1
  %53 = zext nneg i8 %52 to i64
  %54 = select i1 %45, i64 %53, i64 %51
  %55 = tail call i64 @llvm.umin.i64(i64 %54, i64 %18)
  %56 = call noundef i32 @memcmp(ptr noundef %13, ptr noundef %49, i64 noundef %55) #24
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = icmp eq i64 %18, %54
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = icmp ult i64 %18, %54
  br i1 %61, label %92, label %62

62:                                               ; preds = %60, %40, %58
  %63 = phi i32 [ %56, %40 ], [ 1, %60 ], [ 0, %58 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %92, label %40, !llvm.loop !668

65:                                               ; preds = %38, %89
  %66 = phi ptr [ %67, %89 ], [ %0, %38 ]
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 24
  %68 = icmp ult ptr %67, %1
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = load i8, ptr %67, align 8, !noalias !669
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds nuw i8, ptr %66, i64 40
  %74 = load ptr, ptr %73, align 8, !noalias !669
  %75 = getelementptr inbounds nuw i8, ptr %66, i64 25
  %76 = select i1 %72, ptr %75, ptr %74
  %77 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %78 = load i64, ptr %77, align 8, !noalias !669
  %79 = lshr i8 %70, 1
  %80 = zext nneg i8 %79 to i64
  %81 = select i1 %72, i64 %80, i64 %78
  %82 = tail call i64 @llvm.umin.i64(i64 %81, i64 %18)
  %83 = call noundef i32 @memcmp(ptr noundef %13, ptr noundef %76, i64 noundef %82) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %69
  %86 = icmp eq i64 %18, %81
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  %88 = icmp ult i64 %18, %81
  br i1 %88, label %92, label %89

89:                                               ; preds = %87, %69, %85
  %90 = phi i32 [ %83, %69 ], [ 1, %87 ], [ 0, %85 ]
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %65, !llvm.loop !672

92:                                               ; preds = %87, %89, %65, %60, %62
  %93 = phi ptr [ %42, %60 ], [ %42, %62 ], [ %67, %65 ], [ %67, %89 ], [ %67, %87 ]
  %94 = icmp ult ptr %93, %1
  br i1 %94, label %95, label %118

95:                                               ; preds = %92, %115
  %96 = phi ptr [ %97, %115 ], [ %1, %92 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 -24
  %98 = load i8, ptr %97, align 8, !noalias !673
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = getelementptr inbounds i8, ptr %96, i64 -8
  %102 = load ptr, ptr %101, align 8, !noalias !673
  %103 = getelementptr inbounds i8, ptr %96, i64 -23
  %104 = select i1 %100, ptr %103, ptr %102
  %105 = getelementptr inbounds i8, ptr %96, i64 -16
  %106 = load i64, ptr %105, align 8, !noalias !673
  %107 = lshr i8 %98, 1
  %108 = zext nneg i8 %107 to i64
  %109 = select i1 %100, i64 %108, i64 %106
  %110 = tail call i64 @llvm.umin.i64(i64 %109, i64 %18)
  %111 = call noundef i32 @memcmp(ptr noundef %13, ptr noundef %104, i64 noundef %110) #24
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %95
  %114 = icmp ult i64 %18, %109
  br i1 %114, label %115, label %118

115:                                              ; preds = %113, %95
  %116 = phi i32 [ %111, %95 ], [ -1, %113 ]
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %95, label %118, !llvm.loop !676

118:                                              ; preds = %113, %115, %92
  %119 = phi ptr [ %1, %92 ], [ %97, %115 ], [ %97, %113 ]
  %120 = icmp ult ptr %93, %119
  br i1 %120, label %121, label %184

121:                                              ; preds = %118, %182
  %122 = phi ptr [ %135, %182 ], [ %93, %118 ]
  %123 = phi ptr [ %161, %182 ], [ %119, %118 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %122, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(24) %123, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %124 = load i8, ptr %5, align 8, !noalias !677
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  %127 = load ptr, ptr %10, align 8, !noalias !677
  %128 = select i1 %126, ptr %12, ptr %127
  %129 = load i64, ptr %14, align 8, !noalias !677
  %130 = lshr i8 %124, 1
  %131 = zext nneg i8 %130 to i64
  %132 = select i1 %126, i64 %131, i64 %129
  br label %133

133:                                              ; preds = %155, %121
  %134 = phi ptr [ %122, %121 ], [ %135, %155 ]
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 24
  %136 = load i8, ptr %135, align 8, !noalias !680
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  %139 = getelementptr inbounds nuw i8, ptr %134, i64 40
  %140 = load ptr, ptr %139, align 8, !noalias !680
  %141 = getelementptr inbounds nuw i8, ptr %134, i64 25
  %142 = select i1 %138, ptr %141, ptr %140
  %143 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %144 = load i64, ptr %143, align 8, !noalias !680
  %145 = lshr i8 %136, 1
  %146 = zext nneg i8 %145 to i64
  %147 = select i1 %138, i64 %146, i64 %144
  %148 = tail call i64 @llvm.umin.i64(i64 %147, i64 %132)
  %149 = call noundef i32 @memcmp(ptr noundef %128, ptr noundef %142, i64 noundef %148) #24
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %133
  %152 = icmp eq i64 %132, %147
  br i1 %152, label %155, label %153

153:                                              ; preds = %151
  %154 = icmp ult i64 %132, %147
  br i1 %154, label %158, label %155

155:                                              ; preds = %153, %133, %151
  %156 = phi i32 [ %149, %133 ], [ 1, %153 ], [ 0, %151 ]
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %133, !llvm.loop !683

158:                                              ; preds = %153, %155
  br label %159

159:                                              ; preds = %158, %179
  %160 = phi ptr [ %161, %179 ], [ %123, %158 ]
  %161 = getelementptr inbounds i8, ptr %160, i64 -24
  %162 = load i8, ptr %161, align 8, !noalias !684
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  %165 = getelementptr inbounds i8, ptr %160, i64 -8
  %166 = load ptr, ptr %165, align 8, !noalias !684
  %167 = getelementptr inbounds i8, ptr %160, i64 -23
  %168 = select i1 %164, ptr %167, ptr %166
  %169 = getelementptr inbounds i8, ptr %160, i64 -16
  %170 = load i64, ptr %169, align 8, !noalias !684
  %171 = lshr i8 %162, 1
  %172 = zext nneg i8 %171 to i64
  %173 = select i1 %164, i64 %172, i64 %170
  %174 = tail call i64 @llvm.umin.i64(i64 %173, i64 %132)
  %175 = call noundef i32 @memcmp(ptr noundef %128, ptr noundef %168, i64 noundef %174) #24
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %159
  %178 = icmp ult i64 %132, %173
  br i1 %178, label %179, label %182

179:                                              ; preds = %177, %159
  %180 = phi i32 [ %175, %159 ], [ -1, %177 ]
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %159, label %182, !llvm.loop !687

182:                                              ; preds = %177, %179
  %183 = icmp ult ptr %135, %161
  br i1 %183, label %121, label %184, !llvm.loop !688

184:                                              ; preds = %182, %118
  %185 = phi ptr [ %93, %118 ], [ %135, %182 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 -24
  %187 = icmp eq ptr %0, %186
  %188 = load i8, ptr %0, align 8
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %187, label %197, label %191

191:                                              ; preds = %184
  br i1 %190, label %195, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %194 = load ptr, ptr %193, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %194) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %195

195:                                              ; preds = %192, %191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %186, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %186, align 8
  %196 = getelementptr inbounds i8, ptr %185, i64 -23
  store i8 0, ptr %196, align 1, !tbaa !20
  br label %201

197:                                              ; preds = %184
  br i1 %190, label %201, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds i8, ptr %185, i64 -8
  %200 = load ptr, ptr %199, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %200) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, i8 0, i64 24, i1 false)
  br label %201

201:                                              ; preds = %195, %198, %197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %186, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret ptr %185
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__132__partition_with_equals_on_rightB9nqe220103INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_6__lessIvvEEEENS_4pairIT0_bEESD_SD_T1_(ptr dead_on_unwind noalias writable sret(%"struct.std::__1::pair.57") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %5 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %6 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %7 = load i8, ptr %6, align 8, !noalias !689
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %11 = load ptr, ptr %10, align 8, !noalias !689
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %13 = select i1 %9, ptr %12, ptr %11
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %15 = load i64, ptr %14, align 8, !noalias !689
  %16 = lshr i8 %7, 1
  %17 = zext nneg i8 %16 to i64
  %18 = select i1 %9, i64 %17, i64 %15
  br label %19

19:                                               ; preds = %39, %4
  %20 = phi ptr [ %1, %4 ], [ %21, %39 ]
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %22 = load i8, ptr %21, align 8, !noalias !692
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %26 = load ptr, ptr %25, align 8, !noalias !692
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 25
  %28 = select i1 %24, ptr %27, ptr %26
  %29 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %30 = load i64, ptr %29, align 8, !noalias !692
  %31 = lshr i8 %22, 1
  %32 = zext nneg i8 %31 to i64
  %33 = select i1 %24, i64 %32, i64 %30
  %34 = tail call i64 @llvm.umin.i64(i64 %18, i64 %33)
  %35 = call noundef i32 @memcmp(ptr noundef %28, ptr noundef %13, i64 noundef %34) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = icmp ult i64 %33, %18
  br i1 %38, label %39, label %42

39:                                               ; preds = %37, %19
  %40 = phi i32 [ %35, %19 ], [ -1, %37 ]
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %19, label %42, !llvm.loop !695

42:                                               ; preds = %37, %39
  %43 = icmp eq ptr %1, %20
  br i1 %43, label %44, label %71

44:                                               ; preds = %42, %68
  %45 = phi ptr [ %48, %68 ], [ %2, %42 ]
  %46 = icmp ult ptr %21, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %45, i64 -24
  %49 = load i8, ptr %48, align 8, !noalias !696
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds i8, ptr %45, i64 -8
  %53 = load ptr, ptr %52, align 8, !noalias !696
  %54 = getelementptr inbounds i8, ptr %45, i64 -23
  %55 = select i1 %51, ptr %54, ptr %53
  %56 = getelementptr inbounds i8, ptr %45, i64 -16
  %57 = load i64, ptr %56, align 8, !noalias !696
  %58 = lshr i8 %49, 1
  %59 = zext nneg i8 %58 to i64
  %60 = select i1 %51, i64 %59, i64 %57
  %61 = tail call i64 @llvm.umin.i64(i64 %18, i64 %60)
  %62 = call noundef i32 @memcmp(ptr noundef %55, ptr noundef %13, i64 noundef %61) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = icmp eq i64 %60, %18
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = icmp ult i64 %60, %18
  br i1 %67, label %96, label %68

68:                                               ; preds = %66, %47, %64
  %69 = phi i32 [ %62, %47 ], [ 1, %66 ], [ 0, %64 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %96, label %44, !llvm.loop !699

71:                                               ; preds = %42, %93
  %72 = phi ptr [ %73, %93 ], [ %2, %42 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 -24
  %74 = load i8, ptr %73, align 8, !noalias !700
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds i8, ptr %72, i64 -8
  %78 = load ptr, ptr %77, align 8, !noalias !700
  %79 = getelementptr inbounds i8, ptr %72, i64 -23
  %80 = select i1 %76, ptr %79, ptr %78
  %81 = getelementptr inbounds i8, ptr %72, i64 -16
  %82 = load i64, ptr %81, align 8, !noalias !700
  %83 = lshr i8 %74, 1
  %84 = zext nneg i8 %83 to i64
  %85 = select i1 %76, i64 %84, i64 %82
  %86 = tail call i64 @llvm.umin.i64(i64 %18, i64 %85)
  %87 = call noundef i32 @memcmp(ptr noundef %80, ptr noundef %13, i64 noundef %86) #24
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %71
  %90 = icmp eq i64 %85, %18
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = icmp ult i64 %85, %18
  br i1 %92, label %96, label %93

93:                                               ; preds = %91, %71, %89
  %94 = phi i32 [ %87, %71 ], [ 1, %91 ], [ 0, %89 ]
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %71, !llvm.loop !703

96:                                               ; preds = %91, %93, %66, %68, %44
  %97 = phi ptr [ %48, %68 ], [ %48, %66 ], [ %45, %44 ], [ %73, %93 ], [ %73, %91 ]
  %98 = icmp ult ptr %21, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %96, %160
  %100 = phi ptr [ %113, %160 ], [ %21, %96 ]
  %101 = phi ptr [ %137, %160 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %100, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull align 8 dereferenceable(24) %101, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %102 = load i8, ptr %6, align 8, !noalias !704
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  %105 = load ptr, ptr %10, align 8, !noalias !704
  %106 = select i1 %104, ptr %12, ptr %105
  %107 = load i64, ptr %14, align 8, !noalias !704
  %108 = lshr i8 %102, 1
  %109 = zext nneg i8 %108 to i64
  %110 = select i1 %104, i64 %109, i64 %107
  br label %111

111:                                              ; preds = %131, %99
  %112 = phi ptr [ %100, %99 ], [ %113, %131 ]
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 24
  %114 = load i8, ptr %113, align 8, !noalias !707
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 40
  %118 = load ptr, ptr %117, align 8, !noalias !707
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 25
  %120 = select i1 %116, ptr %119, ptr %118
  %121 = getelementptr inbounds nuw i8, ptr %112, i64 32
  %122 = load i64, ptr %121, align 8, !noalias !707
  %123 = lshr i8 %114, 1
  %124 = zext nneg i8 %123 to i64
  %125 = select i1 %116, i64 %124, i64 %122
  %126 = tail call i64 @llvm.umin.i64(i64 %110, i64 %125)
  %127 = call noundef i32 @memcmp(ptr noundef %120, ptr noundef %106, i64 noundef %126) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = icmp ult i64 %125, %110
  br i1 %130, label %131, label %134

131:                                              ; preds = %129, %111
  %132 = phi i32 [ %127, %111 ], [ -1, %129 ]
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %111, label %134, !llvm.loop !710

134:                                              ; preds = %129, %131
  br label %135

135:                                              ; preds = %134, %157
  %136 = phi ptr [ %137, %157 ], [ %101, %134 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 -24
  %138 = load i8, ptr %137, align 8, !noalias !711
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  %141 = getelementptr inbounds i8, ptr %136, i64 -8
  %142 = load ptr, ptr %141, align 8, !noalias !711
  %143 = getelementptr inbounds i8, ptr %136, i64 -23
  %144 = select i1 %140, ptr %143, ptr %142
  %145 = getelementptr inbounds i8, ptr %136, i64 -16
  %146 = load i64, ptr %145, align 8, !noalias !711
  %147 = lshr i8 %138, 1
  %148 = zext nneg i8 %147 to i64
  %149 = select i1 %140, i64 %148, i64 %146
  %150 = tail call i64 @llvm.umin.i64(i64 %110, i64 %149)
  %151 = call noundef i32 @memcmp(ptr noundef %144, ptr noundef %106, i64 noundef %150) #24
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %135
  %154 = icmp eq i64 %149, %110
  br i1 %154, label %157, label %155

155:                                              ; preds = %153
  %156 = icmp ult i64 %149, %110
  br i1 %156, label %160, label %157

157:                                              ; preds = %155, %135, %153
  %158 = phi i32 [ %151, %135 ], [ 1, %155 ], [ 0, %153 ]
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %135, !llvm.loop !714

160:                                              ; preds = %155, %157
  %161 = icmp ult ptr %113, %137
  br i1 %161, label %99, label %162, !llvm.loop !715

162:                                              ; preds = %160, %96
  %163 = phi ptr [ %21, %96 ], [ %113, %160 ]
  %164 = getelementptr inbounds i8, ptr %163, i64 -24
  %165 = icmp eq ptr %1, %164
  %166 = load i8, ptr %1, align 8
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  br i1 %165, label %175, label %169

169:                                              ; preds = %162
  br i1 %168, label %173, label %170

170:                                              ; preds = %169
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %172 = load ptr, ptr %171, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %172) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %173

173:                                              ; preds = %170, %169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %164, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %164, align 8
  %174 = getelementptr inbounds i8, ptr %163, i64 -23
  store i8 0, ptr %174, align 1, !tbaa !20
  br label %179

175:                                              ; preds = %162
  br i1 %168, label %179, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds i8, ptr %163, i64 -8
  %178 = load ptr, ptr %177, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %178) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %164, i8 0, i64 24, i1 false)
  br label %179

179:                                              ; preds = %173, %176, %175
  %180 = icmp uge ptr %21, %97
  %181 = zext i1 %180 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %164, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !56
  store ptr %164, ptr %0, align 8, !tbaa !567, !alias.scope !716
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %181, ptr %182, align 8, !tbaa !569, !alias.scope !716
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt3__127__insertion_sort_incompleteB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbT1_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"struct.std::__1::basic_string<char>::__long", align 8
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  switch i64 %9, label %57 [
    i64 0, label %151
    i64 1, label %151
    i64 2, label %10
    i64 3, label %44
    i64 4, label %48
    i64 5, label %52
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, ptr %1, i64 -24
  %12 = load i8, ptr %11, align 8, !noalias !719
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds i8, ptr %1, i64 -8
  %16 = load ptr, ptr %15, align 8, !noalias !719
  %17 = getelementptr inbounds i8, ptr %1, i64 -23
  %18 = select i1 %14, ptr %17, ptr %16
  %19 = getelementptr inbounds i8, ptr %1, i64 -16
  %20 = load i64, ptr %19, align 8, !noalias !719
  %21 = lshr i8 %12, 1
  %22 = zext nneg i8 %21 to i64
  %23 = select i1 %14, i64 %22, i64 %20
  %24 = load i8, ptr %0, align 8, !noalias !722
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load ptr, ptr %27, align 8, !noalias !722
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %30 = select i1 %26, ptr %29, ptr %28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %32 = load i64, ptr %31, align 8, !noalias !722
  %33 = lshr i8 %24, 1
  %34 = zext nneg i8 %33 to i64
  %35 = select i1 %26, i64 %34, i64 %32
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 %23)
  %37 = tail call noundef i32 @memcmp(ptr noundef %18, ptr noundef %30, i64 noundef %36) #24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %10
  %40 = icmp ult i64 %23, %35
  br i1 %40, label %43, label %151

41:                                               ; preds = %10
  %42 = icmp slt i32 %37, 0
  br i1 %42, label %43, label %151

43:                                               ; preds = %39, %41
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %151

44:                                               ; preds = %3
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = getelementptr inbounds i8, ptr %1, i64 -24
  %47 = tail call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %151

48:                                               ; preds = %3
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %51 = getelementptr inbounds i8, ptr %1, i64 -24
  tail call void @_ZNSt3__17__sort4B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SD_(ptr noundef %0, ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %51, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %151

52:                                               ; preds = %3
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %56 = getelementptr inbounds i8, ptr %1, i64 -24
  tail call void @_ZNSt3__17__sort5B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEvSE_SE_SE_SE_SE_SD_(ptr noundef %0, ptr noundef nonnull %53, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %56, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %151

57:                                               ; preds = %3
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %60 = tail call noundef zeroext i1 @_ZNSt3__17__sort3B9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEETnNS_9enable_ifIXnt21__use_branchless_sortIT0_T1_EEiE4typeELi0EEEbSE_SE_SE_SD_(ptr noundef %0, ptr noundef nonnull %59, ptr noundef nonnull %58, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %151, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %67

67:                                               ; preds = %63, %147
  %68 = phi ptr [ %58, %63 ], [ %70, %147 ]
  %69 = phi i32 [ 0, %63 ], [ %148, %147 ]
  %70 = phi ptr [ %61, %63 ], [ %149, %147 ]
  %71 = load i8, ptr %70, align 8, !noalias !725
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %75 = load ptr, ptr %74, align 8, !noalias !725
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %77 = select i1 %73, ptr %76, ptr %75
  %78 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %79 = load i64, ptr %78, align 8, !noalias !725
  %80 = lshr i8 %71, 1
  %81 = zext nneg i8 %80 to i64
  %82 = select i1 %73, i64 %81, i64 %79
  %83 = load i8, ptr %68, align 8, !noalias !728
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %87 = load ptr, ptr %86, align 8, !noalias !728
  %88 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %89 = select i1 %85, ptr %88, ptr %87
  %90 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %91 = load i64, ptr %90, align 8, !noalias !728
  %92 = lshr i8 %83, 1
  %93 = zext nneg i8 %92 to i64
  %94 = select i1 %85, i64 %93, i64 %91
  %95 = tail call i64 @llvm.umin.i64(i64 %94, i64 %82)
  %96 = tail call noundef i32 @memcmp(ptr noundef %77, ptr noundef %89, i64 noundef %95) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %67
  %99 = icmp ult i64 %82, %94
  br i1 %99, label %102, label %147

100:                                              ; preds = %67
  %101 = icmp slt i32 %96, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %98, %100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %70, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  br label %103

103:                                              ; preds = %136, %102
  %104 = phi ptr [ %68, %102 ], [ %109, %136 ]
  %105 = phi ptr [ %70, %102 ], [ %104, %136 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %104, align 8
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 1
  store i8 0, ptr %106, align 1, !tbaa !20
  %107 = icmp eq ptr %104, %0
  br i1 %107, label %139, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds i8, ptr %104, i64 -24
  %110 = load i8, ptr %5, align 8, !noalias !731
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  %113 = load ptr, ptr %64, align 8, !noalias !731
  %114 = select i1 %112, ptr %65, ptr %113
  %115 = load i64, ptr %66, align 8, !noalias !731
  %116 = lshr i8 %110, 1
  %117 = zext nneg i8 %116 to i64
  %118 = select i1 %112, i64 %117, i64 %115
  %119 = load i8, ptr %109, align 8, !noalias !734
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = getelementptr inbounds i8, ptr %104, i64 -8
  %123 = load ptr, ptr %122, align 8, !noalias !734
  %124 = getelementptr inbounds i8, ptr %104, i64 -23
  %125 = select i1 %121, ptr %124, ptr %123
  %126 = getelementptr inbounds i8, ptr %104, i64 -16
  %127 = load i64, ptr %126, align 8, !noalias !734
  %128 = lshr i8 %119, 1
  %129 = zext nneg i8 %128 to i64
  %130 = select i1 %121, i64 %129, i64 %127
  %131 = tail call i64 @llvm.umin.i64(i64 %130, i64 %118)
  %132 = call noundef i32 @memcmp(ptr noundef %114, ptr noundef %125, i64 noundef %131) #24
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %108
  %135 = icmp ult i64 %118, %130
  br i1 %135, label %136, label %139

136:                                              ; preds = %134, %108
  %137 = phi i32 [ %132, %108 ], [ -1, %134 ]
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %103, label %139, !llvm.loop !737

139:                                              ; preds = %134, %136, %103
  %140 = phi ptr [ %104, %134 ], [ %104, %136 ], [ %0, %103 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  %141 = add i32 %69, 1
  %142 = icmp eq i32 %141, 8
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds nuw i8, ptr %70, i64 24
  %145 = icmp eq ptr %144, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %151

146:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %147

147:                                              ; preds = %98, %146, %100
  %148 = phi i32 [ %141, %146 ], [ %69, %100 ], [ %69, %98 ]
  %149 = getelementptr inbounds nuw i8, ptr %70, i64 24
  %150 = icmp eq ptr %149, %1
  br i1 %150, label %151, label %67, !llvm.loop !738

151:                                              ; preds = %147, %57, %143, %39, %41, %43, %3, %3, %52, %48, %44
  %152 = phi i1 [ true, %39 ], [ true, %52 ], [ true, %3 ], [ true, %44 ], [ true, %48 ], [ true, %3 ], [ true, %43 ], [ true, %41 ], [ %145, %143 ], [ true, %57 ], [ true, %147 ]
  ret i1 %152
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__111__sift_downB9nqe220103INS_17_ClassicAlgPolicyELb0ERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT2_OT1_NS_15iterator_traitsISC_E15difference_typeESH_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = icmp slt i64 %2, 2
  br i1 %6, label %172, label %7

7:                                                ; preds = %4
  %8 = add nsw i64 %2, -2
  %9 = lshr i64 %8, 1
  %10 = icmp slt i64 %9, %3
  br i1 %10, label %172, label %11

11:                                               ; preds = %7
  %12 = shl nsw i64 %3, 1
  %13 = or disjoint i64 %12, 1
  %14 = add nsw i64 %12, 2
  %15 = icmp slt i64 %14, %2
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %13
  %18 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %14
  %19 = load i8, ptr %17, align 8, !noalias !739
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %23 = load ptr, ptr %22, align 8, !noalias !739
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %25 = select i1 %21, ptr %24, ptr %23
  %26 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %27 = load i64, ptr %26, align 8, !noalias !739
  %28 = lshr i8 %19, 1
  %29 = zext nneg i8 %28 to i64
  %30 = select i1 %21, i64 %29, i64 %27
  %31 = load i8, ptr %18, align 8, !noalias !742
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %35 = load ptr, ptr %34, align 8, !noalias !742
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %37 = select i1 %33, ptr %36, ptr %35
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %39 = load i64, ptr %38, align 8, !noalias !742
  %40 = lshr i8 %31, 1
  %41 = zext nneg i8 %40 to i64
  %42 = select i1 %33, i64 %41, i64 %39
  %43 = tail call i64 @llvm.umin.i64(i64 %42, i64 %30)
  %44 = tail call noundef i32 @memcmp(ptr noundef %25, ptr noundef %37, i64 noundef %43) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %16
  %47 = icmp ult i64 %30, %42
  br i1 %47, label %50, label %51

48:                                               ; preds = %16
  %49 = icmp slt i32 %44, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %48
  br label %51

51:                                               ; preds = %46, %50, %48, %11
  %52 = phi i64 [ %13, %11 ], [ %14, %50 ], [ %13, %48 ], [ %13, %46 ]
  %53 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %52
  %54 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %3
  %55 = load i8, ptr %53, align 8, !noalias !745
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %59 = load ptr, ptr %58, align 8, !noalias !745
  %60 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %61 = select i1 %57, ptr %60, ptr %59
  %62 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %63 = load i64, ptr %62, align 8, !noalias !745
  %64 = lshr i8 %55, 1
  %65 = zext nneg i8 %64 to i64
  %66 = select i1 %57, i64 %65, i64 %63
  %67 = load i8, ptr %54, align 8, !noalias !748
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %71 = load ptr, ptr %70, align 8, !noalias !748
  %72 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %73 = select i1 %69, ptr %72, ptr %71
  %74 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %75 = load i64, ptr %74, align 8, !noalias !748
  %76 = lshr i8 %67, 1
  %77 = zext nneg i8 %76 to i64
  %78 = select i1 %69, i64 %77, i64 %75
  %79 = tail call i64 @llvm.umin.i64(i64 %78, i64 %66)
  %80 = tail call noundef i32 @memcmp(ptr noundef %61, ptr noundef %73, i64 noundef %79) #24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %51
  %83 = icmp ult i64 %66, %78
  br i1 %83, label %172, label %86

84:                                               ; preds = %51
  %85 = icmp slt i32 %80, 0
  br i1 %85, label %172, label %86

86:                                               ; preds = %82, %84
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %54, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %87 = load i8, ptr %5, align 8
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %93 = select i1 %89, ptr %92, ptr %91
  %94 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %95 = load i64, ptr %94, align 8
  %96 = lshr i8 %87, 1
  %97 = zext nneg i8 %96 to i64
  %98 = select i1 %89, i64 %97, i64 %95
  br label %99

99:                                               ; preds = %168, %86
  %100 = phi i64 [ %52, %86 ], [ %147, %168 ]
  %101 = phi i64 [ %3, %86 ], [ %100, %168 ]
  %102 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %100
  %103 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, ptr noundef nonnull align 8 dereferenceable(24) %102, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %102, align 8
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 1
  store i8 0, ptr %104, align 1, !tbaa !20
  %105 = icmp slt i64 %9, %100
  br i1 %105, label %171, label %106

106:                                              ; preds = %99
  %107 = shl nsw i64 %100, 1
  %108 = or disjoint i64 %107, 1
  %109 = add nsw i64 %107, 2
  %110 = icmp slt i64 %109, %2
  br i1 %110, label %111, label %146

111:                                              ; preds = %106
  %112 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %108
  %113 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %109
  %114 = load i8, ptr %112, align 8, !noalias !751
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 16
  %118 = load ptr, ptr %117, align 8, !noalias !751
  %119 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %120 = select i1 %116, ptr %119, ptr %118
  %121 = getelementptr inbounds nuw i8, ptr %112, i64 8
  %122 = load i64, ptr %121, align 8, !noalias !751
  %123 = lshr i8 %114, 1
  %124 = zext nneg i8 %123 to i64
  %125 = select i1 %116, i64 %124, i64 %122
  %126 = load i8, ptr %113, align 8, !noalias !754
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  %129 = getelementptr inbounds nuw i8, ptr %113, i64 16
  %130 = load ptr, ptr %129, align 8, !noalias !754
  %131 = getelementptr inbounds nuw i8, ptr %113, i64 1
  %132 = select i1 %128, ptr %131, ptr %130
  %133 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %134 = load i64, ptr %133, align 8, !noalias !754
  %135 = lshr i8 %126, 1
  %136 = zext nneg i8 %135 to i64
  %137 = select i1 %128, i64 %136, i64 %134
  %138 = tail call i64 @llvm.umin.i64(i64 %137, i64 %125)
  %139 = tail call noundef i32 @memcmp(ptr noundef %120, ptr noundef %132, i64 noundef %138) #24
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %111
  %142 = icmp ult i64 %125, %137
  br i1 %142, label %145, label %146

143:                                              ; preds = %111
  %144 = icmp slt i32 %139, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %143
  br label %146

146:                                              ; preds = %141, %145, %143, %106
  %147 = phi i64 [ %108, %106 ], [ %109, %145 ], [ %108, %143 ], [ %108, %141 ]
  %148 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i64 %147
  %149 = load i8, ptr %148, align 8, !noalias !757
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  %152 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %153 = load ptr, ptr %152, align 8, !noalias !757
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %155 = select i1 %151, ptr %154, ptr %153
  %156 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %157 = load i64, ptr %156, align 8, !noalias !757
  %158 = lshr i8 %149, 1
  %159 = zext nneg i8 %158 to i64
  %160 = select i1 %151, i64 %159, i64 %157
  %161 = tail call i64 @llvm.umin.i64(i64 %98, i64 %160)
  %162 = call noundef i32 @memcmp(ptr noundef %155, ptr noundef %93, i64 noundef %161) #24
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %146
  %165 = icmp eq i64 %160, %98
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = icmp ult i64 %160, %98
  br i1 %167, label %171, label %168

168:                                              ; preds = %166, %146, %164
  %169 = phi i32 [ %162, %146 ], [ 1, %166 ], [ 0, %164 ]
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %99, !llvm.loop !760

171:                                              ; preds = %166, %99, %168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %172

172:                                              ; preds = %82, %84, %4, %7, %171
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__110__pop_heapB9nqe220103INS_17_ClassicAlgPolicyENS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SB_RT0_NS_15iterator_traitsISB_E15difference_typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_seh0 {
  %5 = alloca [14 x i8], align 2
  %6 = icmp sgt i64 %3, 1
  br i1 %6, label %7, label %49

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %8 = load i8, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %5, ptr noundef nonnull align 2 dereferenceable(14) %11, i64 14, i1 false), !tbaa.struct !761
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %14 = invoke noundef ptr @_ZNSt3__117__floyd_sift_downB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3)
          to label %15 unwind label %29

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %1, i64 -24
  %17 = icmp eq ptr %14, %16
  %18 = load i8, ptr %14, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %17, label %21, label %35

21:                                               ; preds = %15
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %24) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %25

25:                                               ; preds = %21, %22
  store i8 %8, ptr %14, align 8
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %10, ptr %26, align 1
  %27 = getelementptr inbounds nuw i8, ptr %14, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %27, ptr noundef nonnull align 2 dereferenceable(14) %5, i64 14, i1 false), !tbaa.struct !761
  %28 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %13, ptr %28, align 8, !tbaa !20
  br label %48

29:                                               ; preds = %7
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = and i8 %8, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %13) #31
  br label %34

34:                                               ; preds = %29, %33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  resume { ptr, i32 } %30

35:                                               ; preds = %15
  br i1 %20, label %39, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %38) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %39

39:                                               ; preds = %36, %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !56
  %40 = getelementptr inbounds i8, ptr %1, i64 -23
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i8 %8, ptr %16, align 8
  store i8 %10, ptr %40, align 1
  %42 = getelementptr inbounds i8, ptr %1, i64 -22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %42, ptr noundef nonnull align 2 dereferenceable(14) %5, i64 14, i1 false), !tbaa.struct !761
  %43 = getelementptr inbounds i8, ptr %1, i64 -8
  store ptr %13, ptr %43, align 8, !tbaa !20
  %44 = ptrtoint ptr %41 to i64
  %45 = ptrtoint ptr %0 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 24
  tail call void @_ZNSt3__19__sift_upB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(ptr noundef nonnull %0, ptr noundef nonnull %41, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %47)
  br label %48

48:                                               ; preds = %39, %25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %49

49:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__117__floyd_sift_downB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEET1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = add nsw i64 %2, -2
  %5 = sdiv i64 %4, 2
  br label %6

6:                                                ; preds = %58, %3
  %7 = phi ptr [ %0, %3 ], [ %50, %58 ]
  %8 = phi i64 [ 0, %3 ], [ %51, %58 ]
  %9 = getelementptr %"class.std::__1::basic_string", ptr %7, i64 %8
  %10 = getelementptr i8, ptr %9, i64 24
  %11 = shl nsw i64 %8, 1
  %12 = or disjoint i64 %11, 1
  %13 = add nsw i64 %11, 2
  %14 = icmp slt i64 %13, %2
  br i1 %14, label %15, label %49

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %9, i64 48
  %17 = load i8, ptr %10, align 8, !noalias !762
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr i8, ptr %9, i64 40
  %21 = load ptr, ptr %20, align 8, !noalias !762
  %22 = getelementptr i8, ptr %9, i64 25
  %23 = select i1 %19, ptr %22, ptr %21
  %24 = getelementptr i8, ptr %9, i64 32
  %25 = load i64, ptr %24, align 8, !noalias !762
  %26 = lshr i8 %17, 1
  %27 = zext nneg i8 %26 to i64
  %28 = select i1 %19, i64 %27, i64 %25
  %29 = load i8, ptr %16, align 8, !noalias !765
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr i8, ptr %9, i64 64
  %33 = load ptr, ptr %32, align 8, !noalias !765
  %34 = getelementptr i8, ptr %9, i64 49
  %35 = select i1 %31, ptr %34, ptr %33
  %36 = getelementptr i8, ptr %9, i64 56
  %37 = load i64, ptr %36, align 8, !noalias !765
  %38 = lshr i8 %29, 1
  %39 = zext nneg i8 %38 to i64
  %40 = select i1 %31, i64 %39, i64 %37
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %28)
  %42 = tail call noundef i32 @memcmp(ptr noundef %23, ptr noundef %35, i64 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %15
  %45 = icmp ult i64 %28, %40
  br i1 %45, label %48, label %49

46:                                               ; preds = %15
  %47 = icmp slt i32 %42, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %46
  br label %49

49:                                               ; preds = %44, %48, %46, %6
  %50 = phi ptr [ %16, %48 ], [ %10, %46 ], [ %10, %6 ], [ %10, %44 ]
  %51 = phi i64 [ %13, %48 ], [ %12, %46 ], [ %12, %6 ], [ %12, %44 ]
  %52 = load i8, ptr %7, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %57) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %58

58:                                               ; preds = %49, %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %50, align 8
  %59 = getelementptr inbounds nuw i8, ptr %50, i64 1
  store i8 0, ptr %59, align 1, !tbaa !20
  %60 = icmp sgt i64 %51, %5
  br i1 %60, label %61, label %6, !llvm.loop !768

61:                                               ; preds = %58
  ret ptr %50
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__19__sift_upB9nqe220103INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvT1_SC_OT0_NS_15iterator_traitsISC_E15difference_typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = icmp sgt i64 %3, 1
  br i1 %6, label %7, label %87

7:                                                ; preds = %4
  %8 = add nsw i64 %3, -2
  %9 = lshr i64 %8, 1
  %10 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %0, i64 %9
  %11 = getelementptr inbounds i8, ptr %1, i64 -24
  %12 = load i8, ptr %10, align 8, !noalias !769
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %16 = load ptr, ptr %15, align 8, !noalias !769
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %18 = select i1 %14, ptr %17, ptr %16
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %20 = load i64, ptr %19, align 8, !noalias !769
  %21 = lshr i8 %12, 1
  %22 = zext nneg i8 %21 to i64
  %23 = select i1 %14, i64 %22, i64 %20
  %24 = load i8, ptr %11, align 8, !noalias !772
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds i8, ptr %1, i64 -8
  %28 = load ptr, ptr %27, align 8, !noalias !772
  %29 = getelementptr inbounds i8, ptr %1, i64 -23
  %30 = select i1 %26, ptr %29, ptr %28
  %31 = getelementptr inbounds i8, ptr %1, i64 -16
  %32 = load i64, ptr %31, align 8, !noalias !772
  %33 = lshr i8 %24, 1
  %34 = zext nneg i8 %33 to i64
  %35 = select i1 %26, i64 %34, i64 %32
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 %23)
  %37 = tail call noundef i32 @memcmp(ptr noundef %18, ptr noundef %30, i64 noundef %36) #24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %7
  %40 = icmp ult i64 %23, %35
  br i1 %40, label %43, label %87

41:                                               ; preds = %7
  %42 = icmp slt i32 %37, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %39, %41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %44 = load i8, ptr %5, align 8
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %50 = select i1 %46, ptr %49, ptr %48
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %52 = load i64, ptr %51, align 8
  %53 = lshr i8 %44, 1
  %54 = zext nneg i8 %53 to i64
  %55 = select i1 %46, i64 %54, i64 %52
  br label %56

56:                                               ; preds = %83, %43
  %57 = phi ptr [ %11, %43 ], [ %58, %83 ]
  %58 = phi ptr [ %10, %43 ], [ %65, %83 ]
  %59 = phi i64 [ %9, %43 ], [ %64, %83 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !56
  store i8 0, ptr %58, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 1
  store i8 0, ptr %60, align 1, !tbaa !20
  %61 = icmp eq i64 %59, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %56
  %63 = add nsw i64 %59, -1
  %64 = lshr i64 %63, 1
  %65 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %0, i64 %64
  %66 = load i8, ptr %65, align 8, !noalias !775
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %70 = load ptr, ptr %69, align 8, !noalias !775
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %72 = select i1 %68, ptr %71, ptr %70
  %73 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %74 = load i64, ptr %73, align 8, !noalias !775
  %75 = lshr i8 %66, 1
  %76 = zext nneg i8 %75 to i64
  %77 = select i1 %68, i64 %76, i64 %74
  %78 = tail call i64 @llvm.umin.i64(i64 %55, i64 %77)
  %79 = call noundef i32 @memcmp(ptr noundef %72, ptr noundef %50, i64 noundef %78) #24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = icmp ult i64 %77, %55
  br i1 %82, label %83, label %86

83:                                               ; preds = %81, %62
  %84 = phi i32 [ %79, %62 ], [ -1, %81 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %56, label %86, !llvm.loop !778

86:                                               ; preds = %81, %56, %83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %87

87:                                               ; preds = %39, %41, %86, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib17join_string_rangeINSt3__111__wrap_iterIPKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEES8_T_SC_NS1_17basic_string_viewIcS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, i64 %1, i64 %2, ptr dead_on_return noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %5 = inttoptr i64 %2 to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = icmp eq i64 %1, %2
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = inttoptr i64 %1 to ptr
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = load i8, ptr %8, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 1
  %18 = select i1 %16, ptr %17, ptr %13
  %19 = lshr i8 %14, 1
  %20 = zext nneg i8 %19 to i64
  %21 = select i1 %16, i64 %20, i64 %11
  %22 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %18, i64 noundef %21)
          to label %23 unwind label %34

23:                                               ; preds = %7
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %25 = icmp eq ptr %24, %5
  br i1 %25, label %26, label %27

26:                                               ; preds = %59, %23, %4
  ret void

27:                                               ; preds = %23, %59
  %28 = phi ptr [ %60, %59 ], [ %24, %23 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !23
  %30 = load i64, ptr %9, align 8, !tbaa !21
  %31 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %29, i64 noundef %30)
          to label %45 unwind label %32

32:                                               ; preds = %27, %45
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %7
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ]
  %38 = load i8, ptr %0, align 8
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %43) #31
  br label %44

44:                                               ; preds = %36, %41
  resume { ptr, i32 } %37

45:                                               ; preds = %27
  %46 = load i8, ptr %28, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds nuw i8, ptr %28, i64 1
  %52 = select i1 %48, ptr %51, ptr %50
  %53 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %54 = load i64, ptr %53, align 8
  %55 = lshr i8 %46, 1
  %56 = zext nneg i8 %55 to i64
  %57 = select i1 %48, i64 %56, i64 %54
  %58 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %52, i64 noundef %57)
          to label %59 unwind label %32

59:                                               ; preds = %45
  %60 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %61 = icmp eq ptr %60, %5
  br i1 %61, label %26, label %27, !llvm.loop !779
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcy(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #0 align 2

declare dso_local void @_ZNSt3__14__fs10filesystem18__create_hard_linkERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem16__create_symlinkERKNS1_4pathES4_PNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem14__read_symlinkERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path11__extensionEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path6__stemEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path11__root_nameEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path16__root_directoryEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B9nqe220103INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaa35__can_be_converted_to_string_view_vIcS2_T_Entsr7is_sameIu14__remove_cvrefISA_ES5_EE5valueEiE4typeELi0EEERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !23
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !21
  %6 = icmp ugt i64 %5, -10
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

8:                                                ; preds = %2
  %9 = icmp ult i64 %5, 23
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = trunc nuw nsw i64 %5 to i8
  %12 = shl nuw nsw i8 %11, 1
  store i8 %12, ptr %0, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %23

14:                                               ; preds = %8
  %15 = and i64 %5, -8
  %16 = add nuw i64 %15, 8
  %17 = icmp eq i64 %16, 24
  %18 = select i1 %17, i64 26, i64 %16
  %19 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %18) #30, !noalias !780
  %20 = or disjoint i64 %18, 1
  store i64 %20, ptr %0, align 8, !tbaa !20
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %21, align 8, !tbaa !21
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %19, ptr %22, align 8, !tbaa !23
  br label %23

23:                                               ; preds = %10, %14
  %24 = phi ptr [ %13, %10 ], [ %19, %14 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %3, i64 %5, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %5
  store i8 0, ptr %25, align 1, !tbaa !20
  ret void
}

declare dso_local void @_ZNSt3__14__fs10filesystem10__absoluteERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNSt3__14__fs10filesystem18__weakly_canonicalERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path5beginEv(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path::iterator") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

declare dso_local void @_ZNKSt3__14__fs10filesystem4path3endEv(ptr dead_on_unwind writable sret(%"class.std::__1::__fs::filesystem::path::iterator") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #17

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE25__init_copy_ctor_externalEPKwy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = icmp ugt i64 %2, 9223372036854775797
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #29
  unreachable

6:                                                ; preds = %3
  %7 = icmp samesign ult i64 %2, 11
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = trunc nuw nsw i64 %2 to i8
  %10 = shl nuw nsw i8 %9, 1
  store i8 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %22

12:                                               ; preds = %6
  %13 = and i64 %2, 9223372036854775804
  %14 = add nuw nsw i64 %13, 4
  %15 = icmp eq i64 %14, 12
  %16 = select i1 %15, i64 14, i64 %14
  %17 = shl nuw i64 %16, 1
  %18 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %17) #30, !noalias !785
  %19 = or disjoint i64 %16, 1
  store i64 %19, ptr %0, align 8, !tbaa !20
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %20, align 8, !tbaa !21
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %18, ptr %21, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %8, %12
  %23 = phi ptr [ %11, %8 ], [ %18, %12 ]
  %24 = shl nuw i64 %2, 1
  %25 = add nuw i64 %24, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %23, ptr noundef nonnull align 2 dereferenceable(1) %1, i64 %25, i1 false)
  ret void
}

declare dso_local noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt3__14__fs10filesystem4path8iterator11__incrementEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind }
attributes #25 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/112a176c3bb10a1f.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!13 = distinct !{!13, !14, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!14 = distinct !{!14, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!15 = !{!16, !18, !13}
!16 = distinct !{!16, !17, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!17 = distinct !{!17, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!18 = distinct !{!18, !19, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!19 = distinct !{!19, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long long", !10, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !25, i64 0}
!25 = !{!"any pointer", !10, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!28 = distinct !{!28, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSN12__apo_stdlib13opaque_handleE", !31, i64 8}
!31 = !{!"_ZTSN12__apo_stdlib11handle_kindE", !10, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !11, i64 0}
!34 = !{!35, !38, i64 64}
!35 = !{!"_ZTSN12__apo_stdlib11file_handleE", !30, i64 0, !36, i64 16, !36, i64 40, !38, i64 64}
!36 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !37, i64 0}
!37 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E", !10, i64 0}
!38 = !{!"bool", !10, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN12__apo_stdlib13text_or_emptyEPKc: argument 0"}
!41 = distinct !{!41, !"_ZN12__apo_stdlib13text_or_emptyEPKc"}
!42 = !{!43, !45, !40}
!43 = distinct !{!43, !44, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!44 = distinct !{!44, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!45 = distinct !{!45, !46, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!46 = distinct !{!46, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!47 = !{!48, !22, i64 8}
!48 = !{!"_ZTSNSt3__117basic_string_viewIwNS_11char_traitsIwEEEE", !49, i64 0, !22, i64 8}
!49 = !{!"p1 wchar_t", !25, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev: argument 0"}
!52 = distinct !{!52, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev"}
!53 = !{!49, !49, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"wchar_t", !10, i64 0}
!56 = !{i64 0, i64 24, !20}
!57 = !{!58, !62, i64 120}
!58 = !{!"_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE", !59, i64 0, !24, i64 64, !24, i64 72, !24, i64 80, !10, i64 88, !22, i64 96, !24, i64 104, !22, i64 112, !62, i64 120, !63, i64 128, !64, i64 136, !64, i64 144, !9, i64 152, !9, i64 156, !38, i64 160, !38, i64 161, !38, i64 162}
!59 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !60, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56}
!60 = !{!"_ZTSNSt3__16localeE", !61, i64 0}
!61 = !{!"p1 _ZTSNSt3__16locale5__impE", !25, i64 0}
!62 = !{!"p1 _ZTS6_iobuf", !25, i64 0}
!63 = !{!"p1 _ZTSNSt3__17codecvtIcc9_MbstatetEE", !25, i64 0}
!64 = !{!"_ZTS9_Mbstatet", !65, i64 0, !66, i64 4, !66, i64 6}
!65 = !{!"long", !10, i64 0}
!66 = !{!"short", !10, i64 0}
!67 = !{!58, !9, i64 156}
!68 = !{!69, !9, i64 32}
!69 = !{!"_ZTSNSt3__18ios_baseE", !9, i64 8, !22, i64 16, !22, i64 24, !9, i64 32, !9, i64 36, !25, i64 40, !25, i64 48, !70, i64 56, !71, i64 64, !22, i64 72, !22, i64 80, !72, i64 88, !22, i64 96, !22, i64 104, !70, i64 112, !22, i64 120, !22, i64 128}
!70 = !{!"any p2 pointer", !25, i64 0}
!71 = !{!"p1 int", !25, i64 0}
!72 = !{!"p1 long", !25, i64 0}
!73 = !{i64 0, i64 23, !20}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!76 = distinct !{!76, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!77 = !{!78, !24, i64 0}
!78 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !24, i64 0, !22, i64 8}
!79 = !{!78, !22, i64 8}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev: argument 0"}
!84 = distinct !{!84, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev"}
!85 = !{!"branch_weights", i32 1, i32 1023}
!86 = !{!87, !88, i64 16}
!87 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EE", !88, i64 0, !88, i64 8, !88, i64 16, !89, i64 24}
!88 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !70, i64 0}
!89 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EUt_E", !88, i64 0}
!90 = !{!87, !88, i64 8}
!91 = !{!92, !22, i64 32}
!92 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !93, i64 0, !22, i64 32, !94, i64 40}
!93 = !{!"_ZTSNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEEE", !87, i64 0}
!94 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !22, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!97 = distinct !{!97, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !25, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!102 = distinct !{!102, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!103 = !{!69, !25, i64 40}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!106 = distinct !{!106, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!109 = distinct !{!109, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!110 = !{!111, !112, i64 0}
!111 = !{!"_ZTSNSt3__14__fs10filesystem11file_statusE", !112, i64 0, !113, i64 4}
!112 = !{!"_ZTSNSt3__14__fs10filesystem9file_typeE", !10, i64 0}
!113 = !{!"_ZTSNSt3__14__fs10filesystem5permsE", !10, i64 0}
!114 = !{!115, !38, i64 96}
!115 = !{!"_ZTSN12__apo_stdlib15metadata_handleE", !30, i64 0, !22, i64 16, !36, i64 24, !36, i64 48, !36, i64 72, !38, i64 96, !38, i64 97, !38, i64 98}
!116 = !{!115, !38, i64 97}
!117 = !{!111, !113, i64 4}
!118 = !{!115, !38, i64 98}
!119 = !{!115, !22, i64 16}
!120 = !{!121, !121, i64 0}
!121 = !{!"__int128", !10, i64 0}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN12__apo_stdlib17file_time_to_textERKNSt3__16chrono10time_pointINS0_4__fs10filesystem16_FilesystemClockENS1_8durationInNS0_5ratioILx1ELx1000000000EEEEEEE: argument 0"}
!124 = distinct !{!124, !"_ZN12__apo_stdlib17file_time_to_textERKNSt3__16chrono10time_pointINS0_4__fs10filesystem16_FilesystemClockENS1_8durationInNS0_5ratioILx1ELx1000000000EEEEEEE"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!127 = distinct !{!127, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!130 = distinct !{!130, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!133 = distinct !{!133, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!136 = distinct !{!136, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!139 = distinct !{!139, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!142 = distinct !{!142, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!145 = distinct !{!145, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!148 = distinct !{!148, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!151 = distinct !{!151, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!154 = distinct !{!154, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
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
!167 = !{!168, !169, i64 0}
!168 = !{!"_ZTSNSt3__110shared_ptrINS_4__fs10filesystem12__dir_streamEEE", !169, i64 0, !170, i64 8}
!169 = !{!"p1 _ZTSNSt3__14__fs10filesystem12__dir_streamE", !25, i64 0}
!170 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !25, i64 0}
!171 = !{!168, !170, i64 8}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZNSt3__14__fs10filesystem5beginB9nqe220103ENS1_18directory_iteratorE: argument 0:thread"}
!174 = distinct !{!174, !"_ZNSt3__14__fs10filesystem5beginB9nqe220103ENS1_18directory_iteratorE"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"_ZNSt3__14__fs10filesystem5beginB9nqe220103ENS1_18directory_iteratorE: argument 0"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZNSt3__14__fs10filesystem3endB9nqe220103ENS1_18directory_iteratorE: argument 0:thread"}
!179 = distinct !{!179, !"_ZNSt3__14__fs10filesystem3endB9nqe220103ENS1_18directory_iteratorE"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"_ZNSt3__14__fs10filesystem3endB9nqe220103ENS1_18directory_iteratorE: argument 0"}
!182 = !{!183, !99, i64 0}
!183 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !99, i64 0, !99, i64 8, !184, i64 16}
!184 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !99, i64 0}
!185 = !{!183, !99, i64 8}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNKSt3__14__fs10filesystem4path8filenameB9nqe220103Ev: argument 0"}
!188 = distinct !{!188, !"_ZNKSt3__14__fs10filesystem4path8filenameB9nqe220103Ev"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!191 = distinct !{!191, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!192 = !{!183, !99, i64 16}
!193 = !{!88, !88, i64 0}
!194 = !{!195, !196, i64 16}
!195 = !{!"_ZTSZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJS6_EEERS6_DpOT_EUlvE0_", !88, i64 0, !99, i64 8, !196, i64 16}
!196 = !{!"p1 _ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !25, i64 0}
!197 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN12__apo_stdlib12join_stringsERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEENS0_17basic_string_viewIcS4_EE: argument 0"}
!200 = distinct !{!200, !"_ZN12__apo_stdlib12join_stringsERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEENS0_17basic_string_viewIcS4_EE"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!203 = distinct !{!203, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!206 = distinct !{!206, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!209 = distinct !{!209, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!212 = distinct !{!212, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!215 = distinct !{!215, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!218 = distinct !{!218, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!221 = distinct !{!221, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!224 = distinct !{!224, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!227 = distinct !{!227, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!230 = distinct !{!230, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev: argument 0"}
!233 = distinct !{!233, !"_ZNKSt3__14__fs10filesystem4path11parent_pathB9nqe220103Ev"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE: argument 0"}
!236 = distinct !{!236, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE"}
!237 = !{!238, !235}
!238 = distinct !{!238, !239, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!239 = distinct !{!239, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!242 = distinct !{!242, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!245 = distinct !{!245, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNKSt3__14__fs10filesystem4path8filenameB9nqe220103Ev: argument 0"}
!248 = distinct !{!248, !"_ZNKSt3__14__fs10filesystem4path8filenameB9nqe220103Ev"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE: argument 0"}
!251 = distinct !{!251, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE"}
!252 = !{!253, !250}
!253 = distinct !{!253, !254, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!254 = distinct !{!254, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!257 = distinct !{!257, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!260 = distinct !{!260, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZNKSt3__14__fs10filesystem4path9extensionB9nqe220103Ev: argument 0"}
!263 = distinct !{!263, !"_ZNKSt3__14__fs10filesystem4path9extensionB9nqe220103Ev"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE: argument 0"}
!266 = distinct !{!266, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE"}
!267 = !{!268, !265}
!268 = distinct !{!268, !269, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!269 = distinct !{!269, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!272 = distinct !{!272, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!275 = distinct !{!275, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNKSt3__14__fs10filesystem4path4stemB9nqe220103Ev: argument 0"}
!278 = distinct !{!278, !"_ZNKSt3__14__fs10filesystem4path4stemB9nqe220103Ev"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE: argument 0"}
!281 = distinct !{!281, !"_ZN12__apo_stdlib14safe_componentENSt3__14__fs10filesystem4pathE"}
!282 = !{!283, !280}
!283 = distinct !{!283, !284, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!284 = distinct !{!284, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!287 = distinct !{!287, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!290 = distinct !{!290, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!291 = !{!48, !49, i64 0}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!294 = distinct !{!294, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!297 = distinct !{!297, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!300 = distinct !{!300, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!303 = distinct !{!303, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!306 = distinct !{!306, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!309 = distinct !{!309, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!312 = distinct !{!312, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!315 = distinct !{!315, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!318 = distinct !{!318, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN12__apo_stdlib12join_stringsERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEENS0_17basic_string_viewIcS4_EE: argument 0"}
!321 = distinct !{!321, !"_ZN12__apo_stdlib12join_stringsERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEENS0_17basic_string_viewIcS4_EE"}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZNKSt3__14__fs10filesystem4path8iteratordeB9nqe220103Ev: argument 0"}
!324 = distinct !{!324, !"_ZNKSt3__14__fs10filesystem4path8iteratordeB9nqe220103Ev"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev: argument 0"}
!327 = distinct !{!327, !"_ZNKSt3__14__fs10filesystem4path6stringB9nqe220103Ev"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!330 = distinct !{!330, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!333 = distinct !{!333, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!336 = distinct !{!336, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!339 = distinct !{!339, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!342 = distinct !{!342, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!345 = distinct !{!345, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!348 = distinct !{!348, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!351 = distinct !{!351, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!354 = distinct !{!354, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!357 = distinct !{!357, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!360 = distinct !{!360, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!363 = distinct !{!363, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!366 = distinct !{!366, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!369 = distinct !{!369, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!372 = distinct !{!372, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!375 = distinct !{!375, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!378 = distinct !{!378, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!381 = distinct !{!381, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!384 = distinct !{!384, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!387 = distinct !{!387, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!390 = distinct !{!390, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!393 = distinct !{!393, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!396 = distinct !{!396, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!399 = distinct !{!399, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!402 = distinct !{!402, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!403 = !{!404, !406}
!404 = distinct !{!404, !405, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!405 = distinct !{!405, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!406 = distinct !{!406, !407, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!407 = distinct !{!407, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!408 = !{!69, !25, i64 48}
!409 = !{!410, !411, i64 136}
!410 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !69, i64 0, !411, i64 136, !412, i64 144}
!411 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !25, i64 0}
!412 = !{!"_ZTSNSt3__118_SentinelValueFillINS_11char_traitsIcEEEE", !9, i64 0}
!413 = !{!412, !9, i64 0}
!414 = !{!415, !417}
!415 = distinct !{!415, !416, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!416 = distinct !{!416, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!417 = distinct !{!417, !418, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!418 = distinct !{!418, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!419 = !{!58, !38, i64 160}
!420 = !{!58, !38, i64 161}
!421 = !{!58, !38, i64 162}
!422 = !{!58, !63, i64 128}
!423 = !{!58, !24, i64 64}
!424 = !{!58, !24, i64 104}
!425 = !{!58, !22, i64 112}
!426 = !{!58, !22, i64 96}
!427 = !{!428, !22, i64 8}
!428 = !{!"_ZTSNSt3__14fposI9_MbstatetEE", !64, i64 0, !22, i64 8}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7__ftellEP6_iobuf: argument 0"}
!431 = distinct !{!431, !"_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7__ftellEP6_iobuf"}
!432 = !{i64 0, i64 4, !433, i64 4, i64 2, !434, i64 6, i64 2, !434, i64 8, i64 8, !21}
!433 = !{!65, !65, i64 0}
!434 = !{!66, !66, i64 0}
!435 = !{!59, !24, i64 48}
!436 = !{!59, !24, i64 40}
!437 = !{!59, !24, i64 32}
!438 = !{!59, !24, i64 24}
!439 = !{!58, !24, i64 80}
!440 = !{!58, !24, i64 72}
!441 = !{!59, !24, i64 16}
!442 = !{!58, !9, i64 152}
!443 = !{!59, !24, i64 56}
!444 = distinct !{!444, !445}
!445 = !{!"llvm.loop.mustprogress"}
!446 = !{!447, !38, i64 0}
!447 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !38, i64 0, !411, i64 8}
!448 = !{!411, !411, i64 0}
!449 = !{!69, !9, i64 8}
!450 = !{!69, !22, i64 24}
!451 = !{!452, !454}
!452 = distinct !{!452, !453, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!453 = distinct !{!453, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!454 = distinct !{!454, !455, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!455 = distinct !{!455, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!456 = !{!447, !411, i64 8}
!457 = !{i64 8}
!458 = !{!459}
!459 = distinct !{!459, !460, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!460 = distinct !{!460, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!461 = !{!462, !22, i64 8}
!462 = !{!"_ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE", !22, i64 8}
!463 = !{!464}
!464 = distinct !{!464, !465, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev: argument 0"}
!465 = distinct !{!465, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev"}
!466 = !{!467}
!467 = distinct !{!467, !468, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!468 = distinct !{!468, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!469 = distinct !{!469, !445}
!470 = distinct !{!470, !445}
!471 = !{!87, !88, i64 0}
!472 = !{!87, !88, i64 24}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!475 = distinct !{!475, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!476 = !{!477, !479, !481, !483}
!477 = distinct !{!477, !478, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!478 = distinct !{!478, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!479 = distinct !{!479, !480, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!480 = distinct !{!480, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!481 = distinct !{!481, !482, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!482 = distinct !{!482, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!483 = distinct !{!483, !484, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!484 = distinct !{!484, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!485 = distinct !{!485, !445, !486, !487}
!486 = !{!"llvm.loop.isvectorized", i32 1}
!487 = !{!"llvm.loop.unroll.runtime.disable"}
!488 = distinct !{!488, !445, !486}
!489 = !{!490, !492, !494, !496}
!490 = distinct !{!490, !491, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!491 = distinct !{!491, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!492 = distinct !{!492, !493, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!493 = distinct !{!493, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!494 = distinct !{!494, !495, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!495 = distinct !{!495, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!496 = distinct !{!496, !497, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!497 = distinct !{!497, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!500 = distinct !{!500, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!501 = distinct !{!501, !445, !486, !487}
!502 = distinct !{!502, !445, !486}
!503 = !{!504, !506, !508, !510}
!504 = distinct !{!504, !505, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!505 = distinct !{!505, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!506 = distinct !{!506, !507, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!507 = distinct !{!507, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!508 = distinct !{!508, !509, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!509 = distinct !{!509, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!510 = distinct !{!510, !511, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!511 = distinct !{!511, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!514 = distinct !{!514, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!515 = distinct !{!515, !445, !486, !487}
!516 = distinct !{!516, !445, !486}
!517 = !{!518, !520, !522, !524}
!518 = distinct !{!518, !519, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!519 = distinct !{!519, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!520 = distinct !{!520, !521, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!521 = distinct !{!521, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!522 = distinct !{!522, !523, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!523 = distinct !{!523, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!524 = distinct !{!524, !525, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!525 = distinct !{!525, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!528 = distinct !{!528, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!529 = distinct !{!529, !445, !486, !487}
!530 = distinct !{!530, !445, !486}
!531 = !{!532, !534}
!532 = distinct !{!532, !533, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!533 = distinct !{!533, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!534 = distinct !{!534, !535, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!535 = distinct !{!535, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!536 = !{!537, !539}
!537 = distinct !{!537, !538, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!538 = distinct !{!538, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!539 = distinct !{!539, !540, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!540 = distinct !{!540, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!541 = !{!542, !544}
!542 = distinct !{!542, !543, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!543 = distinct !{!543, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!544 = distinct !{!544, !545, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!545 = distinct !{!545, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!546 = !{!195, !99, i64 8}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y: argument 0"}
!549 = distinct !{!549, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS7_EEEENS_19__allocation_resultINT0_7pointerENSB_9size_typeEEERT_y"}
!550 = !{!195, !88, i64 0}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!553 = distinct !{!553, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!556 = distinct !{!556, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!559 = distinct !{!559, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!560 = !{!561}
!561 = distinct !{!561, !562, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!562 = distinct !{!562, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!563 = distinct !{!563, !445}
!564 = distinct !{!564, !445}
!565 = distinct !{!565, !445, !566}
!566 = !{!"llvm.loop.peeled.count", i32 1}
!567 = !{!568, !99, i64 0}
!568 = !{!"_ZTSNSt3__14pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbEE", !99, i64 0, !38, i64 8}
!569 = !{!568, !38, i64 8}
!570 = distinct !{!570, !445}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!573 = distinct !{!573, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!576 = distinct !{!576, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!579 = distinct !{!579, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!582 = distinct !{!582, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!583 = !{!584}
!584 = distinct !{!584, !585, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!585 = distinct !{!585, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!588 = distinct !{!588, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!591 = distinct !{!591, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!594 = distinct !{!594, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!595 = !{!596}
!596 = distinct !{!596, !597, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!597 = distinct !{!597, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!600 = distinct !{!600, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!603 = distinct !{!603, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!606 = distinct !{!606, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!609 = distinct !{!609, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!612 = distinct !{!612, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!615 = distinct !{!615, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!618 = distinct !{!618, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!621 = distinct !{!621, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!624 = distinct !{!624, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!627 = distinct !{!627, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!630 = distinct !{!630, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!633 = distinct !{!633, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!636 = distinct !{!636, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!639 = distinct !{!639, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!642 = distinct !{!642, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!643 = !{!644}
!644 = distinct !{!644, !645, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!645 = distinct !{!645, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!646 = distinct !{!646, !445}
!647 = distinct !{!647, !445}
!648 = !{!649}
!649 = distinct !{!649, !650, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!650 = distinct !{!650, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!653 = distinct !{!653, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!656 = distinct !{!656, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!657 = distinct !{!657, !445}
!658 = distinct !{!658, !445}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!661 = distinct !{!661, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!664 = distinct !{!664, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!667 = distinct !{!667, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!668 = distinct !{!668, !445}
!669 = !{!670}
!670 = distinct !{!670, !671, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!671 = distinct !{!671, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!672 = distinct !{!672, !445}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!675 = distinct !{!675, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!676 = distinct !{!676, !445}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!679 = distinct !{!679, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!682 = distinct !{!682, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!683 = distinct !{!683, !445}
!684 = !{!685}
!685 = distinct !{!685, !686, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!686 = distinct !{!686, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!687 = distinct !{!687, !445}
!688 = distinct !{!688, !445}
!689 = !{!690}
!690 = distinct !{!690, !691, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!691 = distinct !{!691, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!692 = !{!693}
!693 = distinct !{!693, !694, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!694 = distinct !{!694, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!695 = distinct !{!695, !445}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!698 = distinct !{!698, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!699 = distinct !{!699, !445}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!702 = distinct !{!702, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!703 = distinct !{!703, !445}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!706 = distinct !{!706, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!709 = distinct !{!709, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!710 = distinct !{!710, !445}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!713 = distinct !{!713, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!714 = distinct !{!714, !445}
!715 = distinct !{!715, !445}
!716 = !{!717}
!717 = distinct !{!717, !718, !"_ZNSt3__19make_pairB9nqe220103IRPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERbEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSB_Iu7__decayIT0_EE4typeEEEOSC_OSG_: argument 0"}
!718 = distinct !{!718, !"_ZNSt3__19make_pairB9nqe220103IRPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERbEENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENSB_Iu7__decayIT0_EE4typeEEEOSC_OSG_"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!721 = distinct !{!721, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!724 = distinct !{!724, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!727 = distinct !{!727, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!730 = distinct !{!730, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!733 = distinct !{!733, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!736 = distinct !{!736, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!737 = distinct !{!737, !445}
!738 = distinct !{!738, !445}
!739 = !{!740}
!740 = distinct !{!740, !741, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!741 = distinct !{!741, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!742 = !{!743}
!743 = distinct !{!743, !744, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!744 = distinct !{!744, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!747 = distinct !{!747, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!748 = !{!749}
!749 = distinct !{!749, !750, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!750 = distinct !{!750, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!751 = !{!752}
!752 = distinct !{!752, !753, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!753 = distinct !{!753, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!754 = !{!755}
!755 = distinct !{!755, !756, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!756 = distinct !{!756, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!757 = !{!758}
!758 = distinct !{!758, !759, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!759 = distinct !{!759, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!760 = distinct !{!760, !445}
!761 = !{i64 0, i64 22, !20}
!762 = !{!763}
!763 = distinct !{!763, !764, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!764 = distinct !{!764, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!767 = distinct !{!767, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!768 = distinct !{!768, !445}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!771 = distinct !{!771, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!774 = distinct !{!774, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!775 = !{!776}
!776 = distinct !{!776, !777, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev: argument 0"}
!777 = distinct !{!777, !"_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB9nqe220103Ev"}
!778 = distinct !{!778, !445}
!779 = distinct !{!779, !445, !566}
!780 = !{!781, !783}
!781 = distinct !{!781, !782, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!782 = distinct !{!782, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!783 = distinct !{!783, !784, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!784 = distinct !{!784, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!785 = !{!786, !788}
!786 = distinct !{!786, !787, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIwEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!787 = distinct !{!787, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIwEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!788 = distinct !{!788, !789, !"_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!789 = distinct !{!789, !"_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
