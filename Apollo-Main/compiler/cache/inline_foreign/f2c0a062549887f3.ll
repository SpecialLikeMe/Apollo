; ModuleID = 'C:\Users\devon\Apollo\Apollo-Main\compiler\cache\inline_foreign\f2c0a062549887f3.cpp'
source_filename = "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign\\f2c0a062549887f3.cpp"
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
%"class.std::__1::basic_string_view" = type { ptr, i64 }
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
%"class.std::__1::basic_ifstream" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_filebuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::fpos" = type { %struct._Mbstatet, i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN12__apo_stdlib10file_writeEPvNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE = comdat any

$_ZN12__apo_stdlib13file_read_allEPv = comdat any

$_ZN12__apo_stdlib9file_pathEPv = comdat any

$__clang_call_terminate = comdat any

$_ZN12__apo_stdlib11file_handleD2Ev = comdat any

$_ZN12__apo_stdlib11file_handleD0Ev = comdat any

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
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
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

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef nonnull ptr @_ZN30__apollo_inline_inline_581_5_514sys__file_openEPKcS1_(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"class.std::__1::basic_string", align 8
  %4 = alloca %"class.std::__1::basic_string", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !12
  br label %29

7:                                                ; preds = %2
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22, !noalias !12
  %9 = icmp ugt i64 %8, -10
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #27, !noalias !12
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
  %22 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %21) #28, !noalias !15
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
  %33 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22, !noalias !26
  %34 = icmp ugt i64 %33, -10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #27
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
  %48 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %47) #28
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
  %57 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwy(i64 noundef 72) #28
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
  tail call void @_ZdlPv(ptr noundef %84) #29
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
  tail call void @_ZdlPv(ptr noundef %92) #29
  br label %93

93:                                               ; preds = %85, %90
  resume { ptr, i32 } %86
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN30__apollo_inline_inline_581_5_515sys__file_writeEPvPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %"class.std::__1::basic_string_view", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !39
  br label %9

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !42, !alias.scope !39
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22, !noalias !39
  store i64 %8, ptr %7, align 8, !tbaa !44, !alias.scope !39
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
  %16 = load i8, ptr %15, align 8, !tbaa !34, !range !45, !noundef !46
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
  %32 = tail call noundef ptr @memchr(ptr noundef %31, i32 noundef 97, i64 noundef %27) #22
  %33 = icmp eq ptr %32, null
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %31 to i64
  %36 = sub i64 %34, %35
  %37 = icmp eq i64 %36, -1
  %38 = or i1 %33, %37
  %39 = select i1 %38, i32 48, i32 17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
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
  call void @_ZdlPv(ptr noundef %61) #29
  br label %62

62:                                               ; preds = %145, %146, %54, %59
  %63 = phi { ptr, i32 } [ %55, %54 ], [ %55, %59 ], [ %147, %146 ], [ %138, %145 ]
  resume { ptr, i32 } %63

64:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %65 unwind label %107

65:                                               ; preds = %64
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %67 = load i64, ptr %66, align 8, !tbaa !47
  %68 = icmp eq i64 %67, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %68, label %121, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !50
  invoke void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string_view.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %70 unwind label %109

70:                                               ; preds = %69
  %71 = load ptr, ptr %4, align 8, !tbaa !53, !noalias !50
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %73 = load i64, ptr %72, align 8, !tbaa !21, !noalias !50
  %74 = icmp ugt i64 %73, 9223372036854775797
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  invoke void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() #27
          to label %76 unwind label %109

76:                                               ; preds = %75
  unreachable

77:                                               ; preds = %70
  %78 = icmp samesign ult i64 %73, 11
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = trunc nuw nsw i64 %73 to i8
  %81 = shl nuw nsw i8 %80, 1
  store i8 %81, ptr %3, align 8, !noalias !50
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %94

83:                                               ; preds = %77
  %84 = and i64 %73, 9223372036854775804
  %85 = add nuw nsw i64 %84, 4
  %86 = icmp eq i64 %85, 12
  %87 = select i1 %86, i64 14, i64 %85
  %88 = shl nuw i64 %87, 1
  %89 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %88) #28
          to label %90 unwind label %109

90:                                               ; preds = %83
  %91 = or disjoint i64 %87, 1
  store i64 %91, ptr %3, align 8, !tbaa !20, !noalias !50
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %73, ptr %92, align 8, !tbaa !21, !noalias !50
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %89, ptr %93, align 8, !tbaa !53, !noalias !50
  br label %94

94:                                               ; preds = %90, %79
  %95 = phi ptr [ %82, %79 ], [ %89, %90 ]
  %96 = shl nuw i64 %73, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %95, ptr align 2 %71, i64 %96, i1 false), !noalias !50
  %97 = getelementptr inbounds nuw i16, ptr %95, i64 %73
  store i16 0, ptr %97, align 2, !tbaa !54, !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !50
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
  call void @_ZdlPv(ptr noundef %105) #29
  br label %106

106:                                              ; preds = %99, %103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
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
  call void @_ZdlPv(ptr noundef %118) #29
  br label %119

119:                                              ; preds = %116, %111, %109
  %120 = phi { ptr, i32 } [ %110, %109 ], [ %112, %111 ], [ %112, %116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %137

121:                                              ; preds = %106, %65
  %122 = load i8, ptr %6, align 8
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %127 = load ptr, ptr %126, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %127) #29
  br label %128

128:                                              ; preds = %125, %121
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef %39)
  %129 = load ptr, ptr %8, align 8, !tbaa !32
  %130 = getelementptr i8, ptr %129, i64 -24
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds i8, ptr %8, i64 %131
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %134 = load i32, ptr %133, align 8, !tbaa !57
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
  call void @_ZdlPv(ptr noundef %144) #29
  br label %145

145:                                              ; preds = %137, %142
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %62

146:                                              ; preds = %148
  %147 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
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
  %159 = load i32, ptr %158, align 8, !tbaa !57
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  br label %162

162:                                              ; preds = %128, %153
  %163 = phi i32 [ %161, %153 ], [ 0, %128 ]
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %8, align 8, !tbaa !32
  %164 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %164, align 8, !tbaa !32
  %165 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %165) #22
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %164) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %166

166:                                              ; preds = %10, %2, %14, %162
  %167 = phi i32 [ %163, %162 ], [ 0, %14 ], [ 0, %2 ], [ 0, %10 ]
  ret i32 %167
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN30__apollo_inline_inline_581_5_518sys__file_read_allEPv(ptr noundef %0) local_unnamed_addr #0 {
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
  br i1 %12, label %13, label %15, !prof !62

13:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %14 = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #22
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = icmp eq ptr %18, %20
  %26 = mul i64 %24, 170
  %27 = add i64 %26, -1
  %28 = select i1 %25, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %32 = load i64, ptr %31, align 8, !tbaa !21
  %33 = add i64 %32, %30
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %15
  tail call void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %16)
  %36 = load i64, ptr %31, align 8, !tbaa !21, !noalias !72
  %37 = load i64, ptr %29, align 8, !tbaa !68, !noalias !72
  %38 = load ptr, ptr %19, align 8, !tbaa !67, !noalias !72
  %39 = load ptr, ptr %17, align 8, !tbaa !63, !noalias !72
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
  %48 = load ptr, ptr %46, align 8, !tbaa !75, !noalias !72
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
  %55 = load i64, ptr %29, align 8, !tbaa !68
  %56 = add i64 %55, %53
  %57 = load ptr, ptr %19, align 8, !tbaa !67
  %58 = udiv i64 %56, 170
  %59 = getelementptr inbounds nuw ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !75
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(24) %71, i32 noundef 4)
  %72 = load ptr, ptr %2, align 8, !tbaa !32
  %73 = getelementptr i8, ptr %72, i64 -24
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds i8, ptr %2, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = load i32, ptr %76, align 8, !tbaa !57
  %78 = and i32 %77, 5
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %143, label %80

80:                                               ; preds = %70
  %81 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85, !prof !62

83:                                               ; preds = %80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %84 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #22
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !67
  %91 = ptrtoint ptr %88 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = ashr exact i64 %93, 3
  %95 = icmp eq ptr %88, %90
  %96 = mul i64 %94, 170
  %97 = add i64 %96, -1
  %98 = select i1 %95, i64 0, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %100 = load i64, ptr %99, align 8, !tbaa !68
  %101 = getelementptr inbounds nuw i8, ptr %86, i64 40
  %102 = load i64, ptr %101, align 8, !tbaa !21
  %103 = add i64 %102, %100
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %85
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %86)
          to label %106 unwind label %141

106:                                              ; preds = %105
  %107 = load i64, ptr %101, align 8, !tbaa !21, !noalias !77
  %108 = load i64, ptr %99, align 8, !tbaa !68, !noalias !77
  %109 = load ptr, ptr %89, align 8, !tbaa !67, !noalias !77
  %110 = load ptr, ptr %87, align 8, !tbaa !63, !noalias !77
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
  %119 = load ptr, ptr %117, align 8, !tbaa !75, !noalias !77
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
  %126 = load i64, ptr %99, align 8, !tbaa !68
  %127 = add i64 %126, %124
  %128 = load ptr, ptr %89, align 8, !tbaa !67
  %129 = udiv i64 %127, 170
  %130 = getelementptr inbounds nuw ptr, ptr %128, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !75
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %144 = getelementptr inbounds nuw i8, ptr %75, i64 40
  %145 = load ptr, ptr %144, align 8, !tbaa !80
  %146 = ptrtoint ptr %145 to i64
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__init_with_sentinelB9nqe220103INS_19istreambuf_iteratorIcS2_EES8_EEvT_T0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %146, i64 0)
          to label %147 unwind label %218

147:                                              ; preds = %143
  %148 = load i8, ptr %3, align 8
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %149, i64 15, i1 false), !tbaa.struct !81
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %151 = load ptr, ptr %150, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %152 = load i8, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %156, !prof !62

154:                                              ; preds = %147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %155 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #22
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %156

156:                                              ; preds = %154, %147
  %157 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 16
  %159 = load ptr, ptr %158, align 8, !tbaa !63
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 8
  %161 = load ptr, ptr %160, align 8, !tbaa !67
  %162 = ptrtoint ptr %159 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = ashr exact i64 %164, 3
  %166 = icmp eq ptr %159, %161
  %167 = mul i64 %165, 170
  %168 = add i64 %167, -1
  %169 = select i1 %166, i64 0, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %171 = load i64, ptr %170, align 8, !tbaa !68
  %172 = getelementptr inbounds nuw i8, ptr %157, i64 40
  %173 = load i64, ptr %172, align 8, !tbaa !21
  %174 = add i64 %173, %171
  %175 = icmp eq i64 %169, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %156
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %157)
          to label %177 unwind label %220

177:                                              ; preds = %176
  %178 = load i64, ptr %172, align 8, !tbaa !21, !noalias !82
  %179 = load i64, ptr %170, align 8, !tbaa !68, !noalias !82
  %180 = load ptr, ptr %160, align 8, !tbaa !67, !noalias !82
  %181 = load ptr, ptr %158, align 8, !tbaa !63, !noalias !82
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
  %190 = load ptr, ptr %188, align 8, !tbaa !75, !noalias !82
  %191 = urem i64 %184, 170
  %192 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %190, i64 %191
  store i8 %148, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %193, ptr noundef nonnull align 1 dereferenceable(15) %4, i64 15, i1 false), !tbaa.struct !81
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 16
  store ptr %151, ptr %194, align 8, !tbaa !20
  %195 = load i64, ptr %172, align 8, !tbaa !21
  %196 = add i64 %195, 1
  store i64 %196, ptr %172, align 8, !tbaa !21
  %197 = load i64, ptr %170, align 8, !tbaa !68
  %198 = add i64 %197, %195
  %199 = load ptr, ptr %160, align 8, !tbaa !67
  %200 = udiv i64 %198, 170
  %201 = getelementptr inbounds nuw ptr, ptr %199, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !75
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
  call void @_ZdlPv(ptr noundef %216) #29
  br label %217

217:                                              ; preds = %183, %215
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @_ZdlPv(ptr noundef %151) #29
  br label %225

225:                                              ; preds = %220, %224
  %226 = load i8, ptr %3, align 8
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %150, align 8, !tbaa !20
  call void @_ZdlPv(ptr noundef %230) #29
  br label %231

231:                                              ; preds = %229, %225, %218
  %232 = phi { ptr, i32 } [ %219, %218 ], [ %221, %225 ], [ %221, %229 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %237

233:                                              ; preds = %112, %217
  %234 = phi ptr [ %211, %217 ], [ %140, %112 ]
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %2, align 8, !tbaa !32
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %235, align 8, !tbaa !32
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %236) #22
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %235) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %239

237:                                              ; preds = %141, %231
  %238 = phi { ptr, i32 } [ %232, %231 ], [ %142, %141 ]
  call void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %238

239:                                              ; preds = %41, %233
  %240 = phi ptr [ %234, %233 ], [ %69, %41 ]
  ret ptr %240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN30__apollo_inline_inline_581_5_515sys__file_closeEPv(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
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
define dso_local noundef ptr @_ZN30__apollo_inline_inline_581_5_514sys__file_pathEPv(ptr noundef %0) local_unnamed_addr #0 {
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
  br i1 %22, label %23, label %25, !prof !62

23:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, i8 0, i64 48, i1 false)
  %24 = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev, ptr nonnull @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, ptr nonnull @__dso_handle) #22
  store i8 1, ptr @_ZGVZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN12__apo_stdlib12store_stringENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4pool)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq ptr %28, %30
  %36 = mul i64 %34, 170
  %37 = add i64 %36, -1
  %38 = select i1 %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %40 = load i64, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !21
  %43 = add i64 %42, %40
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  invoke void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %46 unwind label %79

46:                                               ; preds = %45
  %47 = load i64, ptr %41, align 8, !tbaa !21, !noalias !85
  %48 = load i64, ptr %39, align 8, !tbaa !68, !noalias !85
  %49 = load ptr, ptr %29, align 8, !tbaa !67, !noalias !85
  %50 = load ptr, ptr %27, align 8, !tbaa !63, !noalias !85
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
  %59 = load ptr, ptr %57, align 8, !tbaa !75, !noalias !85
  %60 = urem i64 %53, 170
  %61 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %59, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %62 = load i64, ptr %41, align 8, !tbaa !21
  %63 = add i64 %62, 1
  store i64 %63, ptr %41, align 8, !tbaa !21
  %64 = load ptr, ptr %29, align 8, !tbaa !67
  %65 = load i64, ptr %39, align 8, !tbaa !68
  %66 = add i64 %65, %62
  %67 = udiv i64 %66, 170
  %68 = getelementptr inbounds nuw ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !75
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
  call void @_ZdlPv(ptr noundef %86) #29
  br label %87

87:                                               ; preds = %79, %84
  resume { ptr, i32 } %80
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare dso_local ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare dso_local void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #29
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
  tail call void @_ZdlPv(ptr noundef %16) #29
  br label %17

17:                                               ; preds = %9, %14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12__apo_stdlib11file_handleD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  tail call void @_ZdlPv(ptr noundef %8) #29
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
  tail call void @_ZdlPv(ptr noundef %16) #29
  br label %17

17:                                               ; preds = %9, %14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #11 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef %0) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #22
  invoke void @_ZNSt12length_errorC2B9nqe220103EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #27
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #22
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
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() local_unnamed_addr #12 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #22
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #27
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 64), ptr %4, align 8, !tbaa !32
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %4, ptr noundef nonnull %6)
          to label %7 unwind label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %8, align 8, !tbaa !89
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 -1, ptr %9, align 8, !tbaa !93
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
  %28 = load i32, ptr %27, align 8, !tbaa !57
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
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6) #22
  br label %37

36:                                               ; preds = %22, %20
  ret void

37:                                               ; preds = %34, %32
  %38 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %31, %30 ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %4) #22
  resume { ptr, i32 } %40
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #10 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #22
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__14__fs10filesystem8_PathCVTIcE14__append_rangeB9nqe220103IPKcTnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvRNS_12basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp ugt i64 %7, -10
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #27
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
  %21 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %20) #28, !noalias !94
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
  call void @_ZdlPv(ptr noundef %55) #29
  br label %56

56:                                               ; preds = %49, %53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
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
  call void @_ZdlPv(ptr noundef %64) #29
  br label %65

65:                                               ; preds = %57, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %58
}

declare dso_local noundef i64 @_ZNSt3__14__fs10filesystem14__char_to_wideERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPwy(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare dso_local void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6resizeEyw(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i16 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB9nqe220103Ev() local_unnamed_addr #11 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB9nqe220103EPKc(ptr noundef nonnull @.str) #27
  unreachable
}

declare dso_local void @_ZNKSt3__14__fs10filesystem4path13__parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string_view.13") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #15

declare dso_local noundef zeroext i1 @_ZNSt3__14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca %"class.std::__1::locale", align 8
  %3 = alloca %"class.std::__1::locale", align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 0, i64 60, i1 false)
  store i32 32, ptr %9, align 4, !tbaa !99
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %10, align 8, !tbaa !109
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %11, align 1, !tbaa !110
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %12, align 2, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %13 = invoke noundef zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__17codecvtIcc9_MbstatetE2idE)
          to label %17 unwind label %14

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  call void @__clang_call_terminate(ptr %16) #30
  unreachable

17:                                               ; preds = %1
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %13, label %18, label %29

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %19 = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) @_ZNSt3__17codecvtIcc9_MbstatetE2idE)
          to label %20 unwind label %27

20:                                               ; preds = %18
  store ptr %19, ptr %8, align 8, !tbaa !112
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %21 = load ptr, ptr %8, align 8, !tbaa !112
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(12) %21) #22
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %12, align 2, !tbaa !111
  br label %29

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_seh0 {
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = invoke noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(163) %0)
          to label %7 unwind label %11

7:                                                ; preds = %5
  %8 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !113
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store i32 32, ptr %10, align 4, !tbaa !99
  br label %16

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = tail call noundef i32 @fclose(ptr noundef nonnull %3)
  %14 = extractvalue { ptr, i32 } %12, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #22
  invoke void @__cxa_end_catch()
          to label %16 unwind label %36

16:                                               ; preds = %7, %1, %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %18 = load i8, ptr %17, align 8, !tbaa !109, !range !45, !noundef !46
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_ZdaPv(ptr noundef nonnull %22) #29
  br label %25

25:                                               ; preds = %20, %24, %16
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %27 = load i8, ptr %26, align 1, !tbaa !110, !range !45, !noundef !46
  %28 = trunc nuw i8 %27 to i1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZdaPv(ptr noundef nonnull %31) #29
  br label %34

34:                                               ; preds = %29, %33, %25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE, i64 16), ptr %0, align 8, !tbaa !32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35) #22
  ret void

36:                                               ; preds = %11
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #30
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #10 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #22
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #22
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #22
  tail call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #22
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(176) %5) #29
  ret void
}

declare dso_local void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #18 comdat align 2 {
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %0) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
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
  store ptr %7, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %10 = load i8, ptr %9, align 2, !tbaa !111, !range !45, !noundef !46
  %11 = load ptr, ptr %7, align 8, !tbaa !32
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(12) %7) #22
  %15 = zext i1 %14 to i8
  store i8 %15, ptr %9, align 2, !tbaa !111
  %16 = icmp eq i8 %10, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %20 = load i8, ptr %19, align 8, !tbaa !109, !range !45, !noundef !46
  %21 = trunc nuw i8 %20 to i1
  br i1 %14, label %22, label %37

22:                                               ; preds = %17
  br i1 %21, label %23, label %28

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdaPv(ptr noundef nonnull %25) #29
  br label %28

28:                                               ; preds = %23, %27, %22
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %30 = load i8, ptr %29, align 1, !tbaa !110, !range !45, !noundef !46
  store i8 %30, ptr %19, align 8, !tbaa !109
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !116
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %32, ptr %33, align 8, !tbaa !117
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %35 = load ptr, ptr %34, align 8, !tbaa !115
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %35, ptr %36, align 8, !tbaa !114
  store i8 0, ptr %29, align 1, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %57

37:                                               ; preds = %17
  br i1 %21, label %50, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %45 = load i64, ptr %44, align 8, !tbaa !117
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %45, ptr %46, align 8, !tbaa !116
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %40, ptr %47, align 8, !tbaa !115
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %48, align 1, !tbaa !110
  %49 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %45) #28
  store ptr %49, ptr %39, align 8, !tbaa !114
  store i8 1, ptr %19, align 8, !tbaa !109
  br label %57

50:                                               ; preds = %38, %37
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %52 = load i64, ptr %51, align 8, !tbaa !117
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %52, ptr %53, align 8, !tbaa !116
  %54 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %52) #28
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %54, ptr %55, align 8, !tbaa !115
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 1, ptr %56, align 1, !tbaa !110
  br label %57

57:                                               ; preds = %28, %50, %43, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcx(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %6 = load i32, ptr %5, align 4, !tbaa !99
  %7 = icmp eq i32 %6, 32
  %8 = icmp eq ptr %1, null
  %9 = and i1 %8, %7
  %10 = icmp eq i64 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @setbuf(ptr noundef nonnull %14, ptr noundef null)
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ 34, %12 ]
  store i32 %18, ptr %5, align 4, !tbaa !99
  br label %19

19:                                               ; preds = %3, %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %21 = load i8, ptr %20, align 8, !tbaa !109, !range !45, !noundef !46
  %22 = trunc nuw i8 %21 to i1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdaPv(ptr noundef nonnull %25) #29
  br label %28

28:                                               ; preds = %23, %27, %19
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 161
  %30 = load i8, ptr %29, align 1, !tbaa !110, !range !45, !noundef !46
  %31 = trunc nuw i8 %30 to i1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @_ZdaPv(ptr noundef nonnull %34) #29
  br label %37

37:                                               ; preds = %32, %36, %28
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %38, align 8, !tbaa !117
  %39 = icmp ugt i64 %2, 8
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %42 = load i8, ptr %41, align 2, !tbaa !111, !range !45, !noundef !46
  %43 = trunc nuw i8 %42 to i1
  %44 = icmp ne ptr %1, null
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %47, align 8, !tbaa !114
  br label %54

48:                                               ; preds = %40
  %49 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %2) #28
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %49, ptr %50, align 8, !tbaa !114
  br label %54

51:                                               ; preds = %37
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %52, ptr %53, align 8, !tbaa !114
  store i64 8, ptr %38, align 8, !tbaa !117
  br label %54

54:                                               ; preds = %46, %48, %51
  %55 = phi i8 [ 0, %46 ], [ 1, %48 ], [ 0, %51 ]
  store i8 %55, ptr %20, align 8, !tbaa !109
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %57 = load i8, ptr %56, align 2, !tbaa !111, !range !45, !noundef !46
  %58 = trunc nuw i8 %57 to i1
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = tail call i64 @llvm.smax.i64(i64 %2, i64 8)
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %60, ptr %61, align 8, !tbaa !116
  %62 = icmp ne ptr %1, null
  %63 = icmp sgt i64 %2, 8
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %66, align 8, !tbaa !115
  store i8 0, ptr %29, align 1, !tbaa !110
  br label %72

67:                                               ; preds = %59
  %68 = tail call noalias noundef nonnull ptr @_Znay(i64 noundef %60) #28
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %68, ptr %69, align 8, !tbaa !115
  store i8 1, ptr %29, align 1, !tbaa !110
  br label %72

70:                                               ; preds = %54
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %29, align 1, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, i8 0, i64 16, i1 false)
  br label %72

72:                                               ; preds = %65, %67, %70
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj(ptr dead_on_unwind noalias writable sret(%"class.std::__1::fpos") align 8 %0, ptr noundef nonnull align 8 dereferenceable(163) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 {
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #27
  unreachable

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 8, !tbaa !32
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(12) %7) #22
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %16 = load ptr, ptr %15, align 8, !tbaa !113
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
  store i64 -1, ptr %29, align 8, !tbaa !118
  br label %50

30:                                               ; preds = %22
  %31 = icmp ult i32 %3, 3
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  store i64 0, ptr %0, align 8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %33, align 8, !tbaa !118
  br label %50

34:                                               ; preds = %30
  %35 = load ptr, ptr %15, align 8, !tbaa !113
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
  store i64 -1, ptr %43, align 8, !tbaa !118
  br label %50

44:                                               ; preds = %34
  %45 = load ptr, ptr %15, align 8, !tbaa !113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %46 = tail call i64 @_ftelli64(ptr noundef %45), !noalias !120
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %46, ptr %47, align 8, !tbaa !118, !alias.scope !120
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
  %6 = load ptr, ptr %5, align 8, !tbaa !113
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
  store i64 -1, ptr %15, align 8, !tbaa !118
  br label %27

16:                                               ; preds = %8
  %17 = load ptr, ptr %5, align 8, !tbaa !113
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = tail call noundef i32 @_fseeki64(ptr noundef %17, i64 noundef %19, i32 noundef 0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  store i64 0, ptr %0, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %23, align 8, !tbaa !118
  br label %27

24:                                               ; preds = %16
  %25 = load i64, ptr %2, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %25, ptr %26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  br label %27

27:                                               ; preds = %24, %22, %14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._Mbstatet, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #27
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %14 = load i32, ptr %13, align 4, !tbaa !99
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa !127
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %34 = load ptr, ptr %8, align 8, !tbaa !112
  %35 = load ptr, ptr %31, align 8, !tbaa !114
  %36 = load i64, ptr %32, align 8, !tbaa !117
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %36
  %38 = load ptr, ptr %34, align 8, !tbaa !32
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 40
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef %35, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %42 = load ptr, ptr %2, align 8, !tbaa !23
  %43 = load ptr, ptr %31, align 8, !tbaa !114
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = load ptr, ptr %4, align 8, !tbaa !113
  %48 = call i64 @fwrite(ptr noundef %43, i64 noundef 1, i64 noundef %46, ptr noundef %47)
  %49 = icmp eq i64 %48, %46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  switch i32 %41, label %51 [
    i32 1, label %33
    i32 2, label %55
  ]

51:                                               ; preds = %50
  %52 = load ptr, ptr %4, align 8, !tbaa !113
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %3, align 8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %63 = load i8, ptr %62, align 2, !tbaa !111, !range !45, !noundef !46
  %64 = trunc nuw i8 %63 to i1
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %67 = load ptr, ptr %66, align 8, !tbaa !128
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %69 = load ptr, ptr %68, align 8, !tbaa !129
  %70 = ptrtoint ptr %67 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  br label %124

73:                                               ; preds = %59
  %74 = load ptr, ptr %9, align 8, !tbaa !32
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 48
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(12) %9) #22
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %79 = load ptr, ptr %78, align 8, !tbaa !130
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %81 = load ptr, ptr %80, align 8, !tbaa !131
  %82 = ptrtoint ptr %79 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp sgt i32 %77, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %73
  %87 = zext nneg i32 %77 to i64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %89 = load ptr, ptr %88, align 8, !tbaa !128
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %91 = load ptr, ptr %90, align 8, !tbaa !129
  %92 = ptrtoint ptr %89 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = mul nsw i64 %94, %87
  %96 = add nsw i64 %95, %84
  br label %124

97:                                               ; preds = %73
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %99 = load ptr, ptr %98, align 8, !tbaa !129
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %101 = load ptr, ptr %100, align 8, !tbaa !128
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %124, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %8, align 8, !tbaa !112
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %106 = load ptr, ptr %105, align 8, !tbaa !114
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %108 = load ptr, ptr %107, align 8, !tbaa !132
  %109 = ptrtoint ptr %99 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  %112 = load ptr, ptr %104, align 8, !tbaa !32
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(12) %104, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %106, ptr noundef %81, i64 noundef %111)
  %116 = load ptr, ptr %80, align 8, !tbaa !131
  %117 = load ptr, ptr %105, align 8, !tbaa !114
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
  %127 = load ptr, ptr %4, align 8, !tbaa !113
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
  %137 = load ptr, ptr %136, align 8, !tbaa !114
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %137, ptr %138, align 8, !tbaa !130
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %137, ptr %139, align 8, !tbaa !131
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %13, align 4, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %140, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %142

141:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %142

142:                                              ; preds = %56, %51, %135, %141, %55, %23, %1
  %143 = phi i32 [ -1, %141 ], [ 0, %1 ], [ -1, %23 ], [ -1, %55 ], [ 0, %135 ], [ 0, %51 ], [ 0, %56 ]
  ret i32 %143
}

; Function Attrs: mustprogress nounwind uwtable
declare dso_local noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #18 align 2

; Function Attrs: mustprogress uwtable
declare dso_local noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcx(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(163) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %162, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  br label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %18 = load i8, ptr %17, align 2, !tbaa !111, !range !45, !noundef !46
  %19 = trunc nuw i8 %18 to i1
  %20 = select i1 %19, i64 64, i64 104
  %21 = select i1 %19, i64 96, i64 112
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  %25 = load i64, ptr %24, align 8, !tbaa !21
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %23, ptr %27, align 8, !tbaa !132
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %26, ptr %28, align 8, !tbaa !129
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %26, ptr %29, align 8, !tbaa !128
  store i32 8, ptr %8, align 4, !tbaa !99
  br label %30

30:                                               ; preds = %12, %15
  %31 = phi ptr [ %14, %12 ], [ %26, %15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %36, align 8, !tbaa !132
  store ptr %35, ptr %32, align 8, !tbaa !129
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %35, ptr %37, align 8, !tbaa !128
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %35, %34 ], [ %31, %30 ]
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %41 = load ptr, ptr %40, align 8, !tbaa !128
  br i1 %11, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %44 = load ptr, ptr %43, align 8, !tbaa !132
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
  %57 = load ptr, ptr %56, align 8, !tbaa !132
  %58 = getelementptr inbounds i8, ptr %41, i64 %55
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %57, ptr align 1 %58, i64 %51, i1 false)
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %60 = load i8, ptr %59, align 2, !tbaa !111, !range !45, !noundef !46
  %61 = trunc nuw i8 %60 to i1
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load ptr, ptr %52, align 8, !tbaa !128
  %64 = load ptr, ptr %56, align 8, !tbaa !132
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = add i64 %51, %66
  %68 = sub i64 %65, %67
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 %51
  %70 = load ptr, ptr %4, align 8, !tbaa !113
  %71 = call i64 @fread(ptr noundef %69, i64 noundef 1, i64 noundef %68, ptr noundef %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %155, label %73

73:                                               ; preds = %62
  %74 = load ptr, ptr %56, align 8, !tbaa !132
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 %51
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %71
  store ptr %75, ptr %32, align 8, !tbaa !129
  store ptr %76, ptr %52, align 8, !tbaa !128
  %77 = load i8, ptr %75, align 1, !tbaa !20
  %78 = zext i8 %77 to i32
  br label %155

79:                                               ; preds = %54
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %81 = load ptr, ptr %80, align 8, !tbaa !130
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %87 = load ptr, ptr %86, align 8, !tbaa !114
  %88 = ptrtoint ptr %81 to i64
  %89 = ptrtoint ptr %83 to i64
  %90 = sub i64 %88, %89
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %87, ptr align 1 %83, i64 %90, i1 false)
  %91 = load ptr, ptr %80, align 8, !tbaa !130
  %92 = load ptr, ptr %82, align 8, !tbaa !131
  br label %93

93:                                               ; preds = %85, %79
  %94 = phi ptr [ %92, %85 ], [ %81, %79 ]
  %95 = phi ptr [ %91, %85 ], [ %81, %79 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %97 = load ptr, ptr %96, align 8, !tbaa !114
  %98 = ptrtoint ptr %95 to i64
  %99 = ptrtoint ptr %94 to i64
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  store ptr %101, ptr %82, align 8, !tbaa !131
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %103 = icmp eq ptr %97, %102
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %105 = load i64, ptr %104, align 8
  %106 = select i1 %103, i64 8, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %97, i64 %106
  store ptr %107, ptr %80, align 8, !tbaa !130
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %109 = load i64, ptr %108, align 8, !tbaa !116
  %110 = sub i64 %109, %51
  %111 = sub nsw i64 %106, %100
  %112 = call i64 @llvm.umin.i64(i64 %111, i64 %110)
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %115 = load i64, ptr %113, align 8
  store i64 %115, ptr %114, align 8
  %116 = load ptr, ptr %4, align 8, !tbaa !113
  %117 = call i64 @fread(ptr noundef %101, i64 noundef 1, i64 noundef %112, ptr noundef %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %93
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %121 = load ptr, ptr %120, align 8, !tbaa !112
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #27
  unreachable

124:                                              ; preds = %119
  %125 = load ptr, ptr %82, align 8, !tbaa !131
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 %117
  store ptr %126, ptr %80, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %127 = load ptr, ptr %96, align 8, !tbaa !114
  %128 = load ptr, ptr %56, align 8, !tbaa !132
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 %51
  %130 = load i64, ptr %108, align 8, !tbaa !116
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 %130
  %132 = load ptr, ptr %121, align 8, !tbaa !32
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %134 = load ptr, ptr %133, align 8
  %135 = call noundef i32 %134(ptr noundef nonnull align 8 dereferenceable(12) %121, ptr noundef nonnull align 4 dereferenceable(8) %113, ptr noundef %127, ptr noundef nonnull %126, ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %129, ptr noundef %131, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load ptr, ptr %96, align 8, !tbaa !114
  %139 = load ptr, ptr %80, align 8, !tbaa !130
  store ptr %138, ptr %56, align 8, !tbaa !132
  store ptr %138, ptr %32, align 8, !tbaa !129
  store ptr %139, ptr %52, align 8, !tbaa !128
  %140 = load i8, ptr %138, align 1, !tbaa !20
  %141 = zext i8 %140 to i32
  br label %150

142:                                              ; preds = %124
  %143 = load ptr, ptr %3, align 8, !tbaa !23
  %144 = load ptr, ptr %56, align 8, !tbaa !132
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 %51
  %146 = icmp eq ptr %143, %145
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  store ptr %145, ptr %32, align 8, !tbaa !129
  store ptr %143, ptr %52, align 8, !tbaa !128
  %148 = load i8, ptr %145, align 1, !tbaa !20
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %142, %147, %137
  %151 = phi i32 [ %141, %137 ], [ %149, %147 ], [ -1, %142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %155

152:                                              ; preds = %50
  %153 = load i8, ptr %39, align 1, !tbaa !20
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %93, %150, %62, %73, %152
  %156 = phi i32 [ %154, %152 ], [ -1, %62 ], [ %78, %73 ], [ %151, %150 ], [ -1, %93 ]
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !132
  %159 = icmp eq ptr %158, %2
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, i8 0, i64 24, i1 false)
  br label %161

161:                                              ; preds = %160, %155
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %162

162:                                              ; preds = %1, %161
  %163 = phi i32 [ %156, %161 ], [ -1, %1 ]
  ret i32 %163
}

; Function Attrs: mustprogress uwtable
declare dso_local noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(163) %0, i32 noundef %1) unnamed_addr #18 comdat align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, ptr %10, i64 -1
  store ptr %15, ptr %9, align 8, !tbaa !129
  br label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %18 = load i32, ptr %17, align 8, !tbaa !133
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
  store ptr %27, ptr %9, align 8, !tbaa !129
  store i8 %21, ptr %27, align 1, !tbaa !20
  br label %28

28:                                               ; preds = %2, %6, %22, %26, %14
  %29 = phi i32 [ 0, %14 ], [ %1, %26 ], [ -1, %22 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6xsputnEPKcx(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %5 = load i8, ptr %4, align 2, !tbaa !111, !range !45, !noundef !46
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !127
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
  %24 = load ptr, ptr %23, align 8, !tbaa !113
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
  %34 = load ptr, ptr %29, align 8, !tbaa !126
  %35 = load ptr, ptr %30, align 8, !tbaa !134
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
  %54 = load ptr, ptr %29, align 8, !tbaa !126
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  store ptr %55, ptr %29, align 8, !tbaa !126
  %56 = getelementptr inbounds i8, ptr %32, i64 %53
  %57 = add nsw i64 %53, %33
  br label %58

58:                                               ; preds = %48, %45
  %59 = phi i64 [ %47, %45 ], [ %57, %48 ]
  %60 = phi ptr [ %46, %45 ], [ %56, %48 ]
  %61 = icmp slt i64 %59, %2
  br i1 %61, label %31, label %62, !llvm.loop !135

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
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %186, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %11 = load i32, ptr %10, align 4, !tbaa !99
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  br label %51

19:                                               ; preds = %9
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %22 = load i64, ptr %21, align 8, !tbaa !117
  %23 = icmp ugt i64 %22, 8
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 162
  %26 = load i8, ptr %25, align 2, !tbaa !111, !range !45, !noundef !46
  %27 = trunc nuw i8 %26 to i1
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = getelementptr i8, ptr %30, i64 %22
  %32 = getelementptr i8, ptr %31, i64 -1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %30, ptr %33, align 8, !tbaa !126
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %30, ptr %34, align 8, !tbaa !127
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %32, ptr %35, align 8, !tbaa !134
  br label %48

36:                                               ; preds = %24
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %40 = load i64, ptr %39, align 8, !tbaa !116
  %41 = getelementptr i8, ptr %38, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %38, ptr %43, align 8, !tbaa !126
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %38, ptr %44, align 8, !tbaa !127
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %42, ptr %45, align 8, !tbaa !134
  br label %48

46:                                               ; preds = %19
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  br label %48

48:                                               ; preds = %46, %36, %28
  %49 = phi ptr [ null, %46 ], [ %42, %36 ], [ %32, %28 ]
  %50 = phi ptr [ null, %46 ], [ %38, %36 ], [ %30, %28 ]
  store i32 16, ptr %10, align 4, !tbaa !99
  br label %51

51:                                               ; preds = %14, %48
  %52 = phi ptr [ %18, %14 ], [ %49, %48 ]
  %53 = phi ptr [ %16, %14 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %56 = icmp eq i32 %1, -1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load ptr, ptr %57, align 8, !tbaa !126
  br i1 %56, label %69, label %59

59:                                               ; preds = %51
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store ptr %3, ptr %57, align 8, !tbaa !126
  store ptr %3, ptr %54, align 8, !tbaa !127
  store ptr %62, ptr %55, align 8, !tbaa !134
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ %3, %61 ], [ %58, %59 ]
  %65 = trunc i32 %1 to i8
  store i8 %65, ptr %64, align 1, !tbaa !20
  %66 = load ptr, ptr %57, align 8, !tbaa !126
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1
  store ptr %67, ptr %57, align 8, !tbaa !126
  %68 = load ptr, ptr %54, align 8, !tbaa !127
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
  %78 = load i8, ptr %77, align 2, !tbaa !111, !range !45, !noundef !46
  %79 = trunc nuw i8 %78 to i1
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = ptrtoint ptr %71 to i64
  %82 = ptrtoint ptr %70 to i64
  %83 = sub i64 %81, %82
  %84 = load ptr, ptr %6, align 8, !tbaa !113
  %85 = call i64 @fwrite(ptr noundef %70, i64 noundef 1, i64 noundef %83, ptr noundef %84)
  %86 = icmp eq i64 %85, %83
  br i1 %86, label %178, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %72, align 8, !tbaa !126
  %89 = load ptr, ptr %55, align 8, !tbaa !134
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 1
  %91 = icmp eq ptr %88, %90
  br i1 %91, label %92, label %184

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, ptr %88, i64 -1
  store ptr %93, ptr %72, align 8, !tbaa !126
  br label %184

94:                                               ; preds = %76
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %96 = load ptr, ptr %95, align 8, !tbaa !112
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() #27
  unreachable

99:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %101 = load ptr, ptr %100, align 8, !tbaa !114
  store ptr %101, ptr %5, align 8, !tbaa !23
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %104 = load i64, ptr %103, align 8, !tbaa !117
  %105 = getelementptr inbounds nuw i8, ptr %101, i64 %104
  %106 = load ptr, ptr %96, align 8, !tbaa !32
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(12) %96, ptr noundef nonnull align 4 dereferenceable(8) %102, ptr noundef %70, ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %101, ptr noundef %105, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %110 = load ptr, ptr %4, align 8, !tbaa !23
  %111 = icmp eq ptr %110, %70
  br i1 %111, label %112, label %117

112:                                              ; preds = %165, %99
  %113 = load ptr, ptr %72, align 8, !tbaa !126
  %114 = load ptr, ptr %55, align 8, !tbaa !134
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
  %124 = load ptr, ptr %6, align 8, !tbaa !113
  %125 = call i64 @fwrite(ptr noundef %119, i64 noundef 1, i64 noundef %123, ptr noundef %124)
  %126 = icmp eq i64 %125, %123
  br i1 %126, label %177, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %72, align 8, !tbaa !126
  %129 = load ptr, ptr %55, align 8, !tbaa !134
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %180, label %183

132:                                              ; preds = %117
  %133 = load ptr, ptr %5, align 8, !tbaa !23
  %134 = load ptr, ptr %100, align 8, !tbaa !114
  %135 = ptrtoint ptr %133 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = load ptr, ptr %6, align 8, !tbaa !113
  %139 = call i64 @fwrite(ptr noundef %134, i64 noundef 1, i64 noundef %137, ptr noundef %138)
  %140 = icmp eq i64 %139, %137
  br i1 %140, label %177, label %141

141:                                              ; preds = %132
  %142 = load ptr, ptr %72, align 8, !tbaa !126
  %143 = load ptr, ptr %55, align 8, !tbaa !134
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 1
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %180, label %183

146:                                              ; preds = %117
  %147 = load ptr, ptr %5, align 8, !tbaa !23
  %148 = load ptr, ptr %100, align 8, !tbaa !114
  %149 = ptrtoint ptr %147 to i64
  %150 = ptrtoint ptr %148 to i64
  %151 = sub i64 %149, %150
  %152 = load ptr, ptr %6, align 8, !tbaa !113
  %153 = call i64 @fwrite(ptr noundef %148, i64 noundef 1, i64 noundef %151, ptr noundef %152)
  %154 = icmp eq i64 %153, %151
  br i1 %154, label %165, label %155

155:                                              ; preds = %146
  %156 = load ptr, ptr %72, align 8, !tbaa !126
  %157 = load ptr, ptr %55, align 8, !tbaa !134
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 1
  %159 = icmp eq ptr %156, %158
  br i1 %159, label %180, label %183

160:                                              ; preds = %117
  %161 = load ptr, ptr %72, align 8, !tbaa !126
  %162 = load ptr, ptr %55, align 8, !tbaa !134
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %180, label %183

165:                                              ; preds = %146
  %166 = load ptr, ptr %4, align 8, !tbaa !23
  %167 = load ptr, ptr %95, align 8, !tbaa !112
  %168 = load ptr, ptr %100, align 8, !tbaa !114
  %169 = load i64, ptr %103, align 8, !tbaa !117
  %170 = getelementptr inbounds nuw i8, ptr %168, i64 %169
  %171 = load ptr, ptr %167, align 8, !tbaa !32
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 24
  %173 = load ptr, ptr %172, align 8
  %174 = call noundef i32 %173(ptr noundef nonnull align 8 dereferenceable(12) %167, ptr noundef nonnull align 4 dereferenceable(8) %102, ptr noundef %166, ptr noundef %71, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %168, ptr noundef %170, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %175 = load ptr, ptr %4, align 8, !tbaa !23
  %176 = icmp eq ptr %175, %166
  br i1 %176, label %112, label %117

177:                                              ; preds = %132, %120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %178

178:                                              ; preds = %80, %177
  store ptr %53, ptr %72, align 8, !tbaa !126
  store ptr %53, ptr %54, align 8, !tbaa !127
  store ptr %52, ptr %55, align 8, !tbaa !134
  %179 = select i1 %56, i32 0, i32 %1
  br label %184

180:                                              ; preds = %160, %155, %141, %127, %112
  %181 = phi ptr [ %142, %141 ], [ %156, %155 ], [ %113, %112 ], [ %128, %127 ], [ %161, %160 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 -1
  store ptr %182, ptr %72, align 8, !tbaa !126
  br label %183

183:                                              ; preds = %180, %112, %127, %141, %155, %160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %184

184:                                              ; preds = %87, %92, %183, %178, %74
  %185 = phi i32 [ %75, %74 ], [ %179, %178 ], [ -1, %183 ], [ -1, %92 ], [ -1, %87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %186

186:                                              ; preds = %2, %184
  %187 = phi i32 [ %185, %184 ], [ -1, %2 ]
  ret i32 %187
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare dso_local noundef zeroext i1 @_ZNKSt3__16locale9has_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare dso_local noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znay(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local void @setbuf(ptr noundef captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__116__throw_bad_castB9nqe220103Ev() local_unnamed_addr #12 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #22
  tail call void @_ZNSt8bad_castC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt8bad_cast, ptr nonnull @_ZNSt8bad_castD1Ev) #27
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8bad_castC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt8bad_castD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

declare dllimport i32 @_fseeki64(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

declare dllimport i64 @_ftelli64(ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj(ptr noundef nonnull align 8 dereferenceable(163) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %5 = load ptr, ptr %4, align 8, !tbaa !113
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
  store ptr %22, ptr %4, align 8, !tbaa !113
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %2, ptr %25, align 8, !tbaa !133
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %27 = load i32, ptr %26, align 4, !tbaa !99
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @setbuf(ptr noundef nonnull %22, ptr noundef null)
  store i32 0, ptr %26, align 4, !tbaa !99
  br label %30

30:                                               ; preds = %29, %24
  %31 = and i32 %2, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  store i32 0, ptr %26, align 4, !tbaa !99
  %34 = load ptr, ptr %4, align 8, !tbaa !113
  %35 = tail call i32 @fseek(ptr noundef %34, i32 noundef 0, i32 noundef 2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !113
  %39 = tail call i32 @fclose(ptr noundef %38)
  store ptr null, ptr %4, align 8, !tbaa !113
  br label %40

40:                                               ; preds = %37, %33, %30, %20, %7, %3
  %41 = phi ptr [ null, %3 ], [ null, %7 ], [ null, %37 ], [ null, %20 ], [ %0, %33 ], [ %0, %30 ]
  ret ptr %41
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fseek(ptr noundef captures(none), i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #21

declare dso_local void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #15

declare dso_local void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB9nqe220103IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.std::__1::locale", align 8
  %5 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i8 0, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %6, align 8, !tbaa !139
  %7 = load ptr, ptr %0, align 8, !tbaa !32
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load i32, ptr %11, align 8, !tbaa !57
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %20 unwind label %63

20:                                               ; preds = %14, %18
  store i8 1, ptr %5, align 8, !tbaa !137
  %21 = load ptr, ptr %0, align 8, !tbaa !32
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load i32, ptr %27, align 8, !tbaa !140
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 144
  %30 = load i32, ptr %29, align 8, !tbaa !93
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %44

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
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
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %70

42:                                               ; preds = %35
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %43 = sext i8 %39 to i32
  store i32 %43, ptr %29, align 1, !tbaa !93
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
  %61 = load i32, ptr %60, align 8, !tbaa !57
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
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %81

70:                                               ; preds = %67, %40, %65
  %71 = phi { ptr, i32 } [ %66, %65 ], [ %68, %67 ], [ %41, %40 ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %64, %63 ]
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %75 = call ptr @__cxa_begin_catch(ptr %74) #22
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
  call void @__clang_call_terminate(ptr %87) #30
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
  %15 = load i64, ptr %14, align 8, !tbaa !141
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %29 = icmp samesign ult i64 %17, 23
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = and i64 %17, -8
  %32 = add nuw i64 %31, 8
  %33 = icmp eq i64 %32, 24
  %34 = select i1 %33, i64 26, i64 %32
  %35 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %34) #28, !noalias !142
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
  call void @_ZdlPv(ptr noundef %63) #29
  br label %64

64:                                               ; preds = %57, %62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
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
  call void @_ZdlPv(ptr noundef %71) #29
  br label %72

72:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
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
  store i64 0, ptr %14, align 8, !tbaa !141
  br label %83

83:                                               ; preds = %82, %64, %21, %76, %6
  %84 = phi i64 [ 0, %6 ], [ 0, %64 ], [ 0, %21 ], [ %0, %82 ], [ 0, %76 ]
  ret i64 %84
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !147, !nonnull !46, !align !148
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr i8, ptr %4, i64 -24
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !140
  %18 = and i32 %17, 8192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %15
  %21 = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8, !tbaa !147, !nonnull !46, !align !148
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = getelementptr i8, ptr %25, i64 -24
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = load ptr, ptr %30, align 8, !tbaa !32
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 48
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(64) %30)
          to label %35 unwind label %46

35:                                               ; preds = %23
  %36 = icmp eq i32 %34, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load ptr, ptr %2, align 8, !tbaa !147, !nonnull !46, !align !148
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = or i32 %44, 1
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %42, i32 noundef %45)
          to label %50 unwind label %46

46:                                               ; preds = %37, %23
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = tail call ptr @__cxa_begin_catch(ptr %48) #22
  invoke void @__cxa_end_catch()
          to label %50 unwind label %51

50:                                               ; preds = %37, %35, %46, %20, %15, %11, %1
  ret void

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #30
  unreachable
}

declare dso_local void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #15

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare dso_local void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #15

; Function Attrs: nounwind
declare dso_local noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1ERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %5, align 8, !tbaa !88
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE, i64 64), ptr %4, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %7, align 8, !tbaa !149
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %4, ptr noundef nonnull %6)
          to label %8 unwind label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %9, align 8, !tbaa !89
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 -1, ptr %10, align 8, !tbaa !93
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
  %29 = load i32, ptr %28, align 8, !tbaa !57
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
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %6) #22
  br label %38

37:                                               ; preds = %23, %21
  ret void

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %32, %31 ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %4) #22
  resume { ptr, i32 } %41
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #10 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #22
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B9nqe220103Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !67, !noalias !151
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !63, !noalias !151
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %29

10:                                               ; preds = %1
  %11 = load i64, ptr %4, align 8, !tbaa !68, !noalias !151
  %12 = udiv i64 %11, 170
  %13 = getelementptr inbounds nuw ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !75, !noalias !151
  %15 = urem i64 %11, 170
  %16 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %14, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !21, !noalias !154
  %19 = add i64 %18, %11
  %20 = udiv i64 %19, 170
  %21 = getelementptr inbounds nuw ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !75, !noalias !154
  %23 = urem i64 %19, 170
  %24 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %22, i64 %23
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %29, label %39

26:                                               ; preds = %60
  %27 = load ptr, ptr %5, align 8, !tbaa !63
  %28 = load ptr, ptr %2, align 8, !tbaa !67
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
  tail call void @_ZdlPv(ptr noundef %48) #29
  %49 = load ptr, ptr %42, align 8, !tbaa !75
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
  %59 = load ptr, ptr %58, align 8, !tbaa !75
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %51, %50 ]
  %62 = phi ptr [ %58, %57 ], [ %42, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %52, %50 ]
  %64 = icmp eq ptr %63, %24
  br i1 %64, label %26, label %39, !llvm.loop !157

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %69, %65 ], [ %32, %29 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  tail call void @_ZdlPv(ptr noundef %67) #29
  %68 = load ptr, ptr %2, align 8, !tbaa !67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %69, ptr %2, align 8, !tbaa !67
  %70 = load ptr, ptr %5, align 8, !tbaa !63
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
  store i64 %82, ptr %4, align 8, !tbaa !68
  br label %83

83:                                               ; preds = %76, %81
  %84 = icmp eq ptr %78, %77
  br i1 %84, label %93, label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %88, %85 ], [ %78, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !75
  tail call void @_ZdlPv(ptr noundef %87) #29
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %89 = icmp eq ptr %88, %77
  br i1 %89, label %90, label %85, !llvm.loop !158

90:                                               ; preds = %85
  %91 = load ptr, ptr %2, align 8, !tbaa !67
  %92 = load ptr, ptr %5, align 8, !tbaa !63
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
  store ptr %101, ptr %5, align 8, !tbaa !63
  %102 = load ptr, ptr %0, align 8, !tbaa !159
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  tail call void @_ZdlPv(ptr noundef nonnull %102) #29
  br label %105

105:                                              ; preds = %93, %104
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i64, ptr %6, align 8, !tbaa !68
  %8 = icmp ugt i64 %7, 169
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = add i64 %7, -170
  store i64 %10, ptr %6, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  store ptr %13, ptr %2, align 8, !tbaa !75
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %14, ptr %11, align 8, !tbaa !67
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %191

15:                                               ; preds = %1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = load ptr, ptr %0, align 8, !tbaa !159
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = icmp eq ptr %24, %17
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %33 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #28
  store ptr %33, ptr %3, align 8, !tbaa !75
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %191

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %35 = tail call noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #28
  store ptr %35, ptr %4, align 8, !tbaa !75
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %36 = load ptr, ptr %18, align 8, !tbaa !67
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  store ptr %37, ptr %5, align 8, !tbaa !75
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %38, ptr %18, align 8, !tbaa !67
  call void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %191

39:                                               ; preds = %15
  %40 = ashr exact i64 %28, 2
  %41 = icmp eq ptr %24, %25
  %42 = select i1 %41, i64 1, i64 %40
  %43 = icmp ugt i64 %42, 2305843009213693951
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #27, !noalias !161
  unreachable

45:                                               ; preds = %39
  %46 = shl nuw i64 %42, 3
  %47 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %46) #28, !noalias !161
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 %22
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %46
  %50 = invoke noalias noundef nonnull dereferenceable(4080) ptr @_Znwy(i64 noundef 4080) #28
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
  %61 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwy(i64 noundef 8) #28
          to label %62 unwind label %182

62:                                               ; preds = %60
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  tail call void @_ZdlPv(ptr noundef nonnull %47) #29
  br label %64

64:                                               ; preds = %62, %55, %51
  %65 = phi ptr [ %49, %51 ], [ %63, %62 ], [ %49, %55 ]
  %66 = phi ptr [ %48, %51 ], [ %61, %62 ], [ %59, %55 ]
  %67 = phi ptr [ %47, %51 ], [ %61, %62 ], [ %47, %55 ]
  %68 = phi ptr [ %48, %51 ], [ %48, %62 ], [ %59, %55 ]
  store ptr %50, ptr %68, align 8, !tbaa !75
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %70 = load ptr, ptr %16, align 8, !tbaa !63
  %71 = load ptr, ptr %18, align 8, !tbaa !67
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %169, %64
  %74 = phi ptr [ %65, %64 ], [ %170, %169 ]
  %75 = phi ptr [ %69, %64 ], [ %179, %169 ]
  %76 = phi ptr [ %66, %64 ], [ %174, %169 ]
  %77 = phi ptr [ %67, %64 ], [ %172, %169 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !164
  store ptr %77, ptr %0, align 8, !tbaa !164
  store ptr %76, ptr %18, align 8, !tbaa !164
  store ptr %74, ptr %23, align 8, !tbaa !164
  store ptr %75, ptr %16, align 8, !tbaa !164
  %79 = icmp eq ptr %78, null
  br i1 %79, label %191, label %80

80:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef nonnull %78) #29
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %106, ptr nonnull align 8 %86, i64 %103, i1 false), !noalias !165
  br label %169

107:                                              ; preds = %93
  %108 = sub i64 %94, %91
  %109 = ashr exact i64 %108, 2
  %110 = icmp eq ptr %87, %85
  %111 = select i1 %110, i64 1, i64 %109
  %112 = icmp ugt i64 %111, 2305843009213693951
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  invoke void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #27
          to label %114 unwind label %186

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %107
  %116 = shl nuw i64 %111, 3
  %117 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %116) #28
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
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !75
  %151 = load <2 x ptr>, ptr %149, align 8, !tbaa !75
  %152 = getelementptr i8, ptr %146, i64 16
  store <2 x ptr> %150, ptr %146, align 8, !tbaa !75
  store <2 x ptr> %151, ptr %152, align 8, !tbaa !75
  %153 = add nuw i64 %144, 4
  %154 = icmp eq i64 %153, %138
  br i1 %154, label %155, label %143, !llvm.loop !174

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
  %163 = load ptr, ptr %162, align 8, !tbaa !75
  store ptr %163, ptr %161, align 8, !tbaa !75
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %166 = icmp eq ptr %164, %125
  br i1 %166, label %167, label %160, !llvm.loop !177

167:                                              ; preds = %160, %155, %118
  %168 = phi ptr [ %122, %118 ], [ %125, %155 ], [ %125, %160 ]
  tail call void @_ZdlPv(ptr noundef nonnull %85) #29
  br label %169

169:                                              ; preds = %83, %97, %167
  %170 = phi ptr [ %88, %83 ], [ %123, %167 ], [ %88, %97 ]
  %171 = phi ptr [ %87, %83 ], [ %168, %167 ], [ %102, %97 ]
  %172 = phi ptr [ %85, %83 ], [ %117, %167 ], [ %85, %97 ]
  %173 = phi ptr [ %86, %83 ], [ %122, %167 ], [ %106, %97 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 -8
  %175 = load ptr, ptr %89, align 8, !tbaa !75
  store ptr %175, ptr %174, align 8, !tbaa !75
  %176 = ptrtoint ptr %171 to i64
  %177 = ptrtoint ptr %173 to i64
  %178 = sub i64 %176, %177
  %179 = getelementptr i8, ptr %173, i64 %178
  %180 = load ptr, ptr %18, align 8, !tbaa !67
  %181 = icmp eq ptr %89, %180
  br i1 %181, label %73, label %83

182:                                              ; preds = %60
  %183 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #29
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
  tail call void @_ZdlPv(ptr noundef nonnull %190) #29
  resume { ptr, i32 } %189

191:                                              ; preds = %32, %34, %80, %73, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJRS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = load ptr, ptr %0, align 8, !tbaa !159
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !178
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !67
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !67
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #27, !noalias !187
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #28, !noalias !187
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !67
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !75
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !75
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !75
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !75
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !190

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
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  store ptr %83, ptr %81, align 8, !tbaa !75
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !191

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !164
  store ptr %37, ptr %0, align 8, !tbaa !164
  store ptr %39, ptr %11, align 8, !tbaa !164
  store ptr %40, ptr %5, align 8, !tbaa !164
  store ptr %88, ptr %3, align 8, !tbaa !164
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #29
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %94, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE12emplace_backIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = icmp eq ptr %6, %4
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = load ptr, ptr %0, align 8, !tbaa !159
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %12, i64 %23, i1 false), !noalias !192
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load ptr, ptr %11, align 8, !tbaa !67
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %26, ptr %11, align 8, !tbaa !67
  br label %92

27:                                               ; preds = %10
  %28 = sub i64 %7, %14
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %4, %12
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #27, !noalias !201
  unreachable

34:                                               ; preds = %27
  %35 = lshr i64 %31, 2
  %36 = shl nuw i64 %31, 3
  %37 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %36) #28, !noalias !201
  %38 = ptrtoint ptr %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %37, i64 %35
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %31
  %41 = load ptr, ptr %11, align 8, !tbaa !67
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
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !75
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !75
  %72 = getelementptr i8, ptr %66, i64 16
  store <2 x ptr> %70, ptr %66, align 8, !tbaa !75
  store <2 x ptr> %71, ptr %72, align 8, !tbaa !75
  %73 = add nuw i64 %64, 4
  %74 = icmp eq i64 %73, %58
  br i1 %74, label %75, label %63, !llvm.loop !204

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
  %83 = load ptr, ptr %82, align 8, !tbaa !75
  store ptr %83, ptr %81, align 8, !tbaa !75
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = icmp eq ptr %84, %44
  br i1 %86, label %87, label %80, !llvm.loop !205

87:                                               ; preds = %80, %75, %34
  %88 = phi ptr [ %39, %34 ], [ %44, %75 ], [ %44, %80 ]
  %89 = load ptr, ptr %0, align 8, !tbaa !164
  store ptr %37, ptr %0, align 8, !tbaa !164
  store ptr %39, ptr %11, align 8, !tbaa !164
  store ptr %40, ptr %5, align 8, !tbaa !164
  store ptr %88, ptr %3, align 8, !tbaa !164
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @_ZdlPv(ptr noundef nonnull %89) #29
  br label %92

92:                                               ; preds = %91, %87, %16, %2
  %93 = phi ptr [ %24, %16 ], [ %4, %2 ], [ %4, %87 ], [ %4, %91 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %94, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %95, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEE13emplace_frontIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = load ptr, ptr %0, align 8, !tbaa !159
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %9, label %94

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !160
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
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %4, i64 %23, i1 false), !noalias !206
  store ptr %22, ptr %10, align 8, !tbaa !63
  br label %94

27:                                               ; preds = %9
  %28 = sub i64 %14, %7
  %29 = ashr exact i64 %28, 2
  %30 = icmp eq ptr %11, %4
  %31 = select i1 %30, i64 1, i64 %29
  %32 = icmp ugt i64 %31, 2305843009213693951
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB9nqe220103v() #27, !noalias !215
  unreachable

34:                                               ; preds = %27
  %35 = add nuw nsw i64 %31, 3
  %36 = lshr i64 %35, 2
  %37 = shl nuw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %37) #28, !noalias !215
  %39 = ptrtoint ptr %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %38, i64 %36
  %41 = getelementptr inbounds nuw ptr, ptr %38, i64 %31
  %42 = load ptr, ptr %3, align 8, !tbaa !67
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
  %71 = load <2 x ptr>, ptr %69, align 8, !tbaa !75
  %72 = load <2 x ptr>, ptr %70, align 8, !tbaa !75
  %73 = getelementptr i8, ptr %67, i64 16
  store <2 x ptr> %71, ptr %67, align 8, !tbaa !75
  store <2 x ptr> %72, ptr %73, align 8, !tbaa !75
  %74 = add nuw i64 %65, 4
  %75 = icmp eq i64 %74, %59
  br i1 %75, label %76, label %64, !llvm.loop !218

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
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  store ptr %84, ptr %82, align 8, !tbaa !75
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %87 = icmp eq ptr %85, %45
  br i1 %87, label %88, label %81, !llvm.loop !219

88:                                               ; preds = %81, %76, %34
  %89 = phi ptr [ %40, %34 ], [ %45, %76 ], [ %45, %81 ]
  %90 = load ptr, ptr %0, align 8, !tbaa !164
  store ptr %38, ptr %0, align 8, !tbaa !164
  store ptr %40, ptr %3, align 8, !tbaa !164
  store ptr %41, ptr %12, align 8, !tbaa !164
  store ptr %89, ptr %10, align 8, !tbaa !164
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @_ZdlPv(ptr noundef nonnull %90) #29
  %93 = load ptr, ptr %3, align 8, !tbaa !67
  br label %94

94:                                               ; preds = %92, %88, %17, %2
  %95 = phi ptr [ %93, %92 ], [ %40, %88 ], [ %26, %17 ], [ %4, %2 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 -8
  %97 = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %97, ptr %96, align 8, !tbaa !75
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %95 to i64
  %102 = sub i64 %100, %101
  store ptr %96, ptr %3, align 8, !tbaa !67
  %103 = getelementptr i8, ptr %95, i64 %102
  store ptr %103, ptr %98, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #10 comdat align 2 {
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %2, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %3) #22
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #22
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__114basic_ifstreamIcNS_11char_traitsIcEEED0Ev(ptr noundef %0) unnamed_addr #20 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !32
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %6, align 8, !tbaa !32
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(163) %7) #22
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #22
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(148) %6) #22
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(184) %5) #29
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
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !128
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
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %33 = load ptr, ptr %32, align 8, !tbaa !128
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
  %48 = load ptr, ptr %47, align 8, !tbaa !129
  %49 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %50 = load ptr, ptr %49, align 8, !tbaa !128
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
  %64 = load ptr, ptr %47, align 8, !tbaa !129
  %65 = load ptr, ptr %49, align 8, !tbaa !128
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
  store ptr %74, ptr %47, align 8, !tbaa !129
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
  tail call void @_ZdlPv(ptr noundef %82) #29
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
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = icmp ugt i64 %2, -10
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB9nqe220103Ev() #27
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
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #28, !noalias !220
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 22.1.4 (https://github.com/msys2/MINGW-packages e97dcec28087f0155bb8cb6808ee2ab95f551f1b)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "C:\\Users\\devon\\Apollo\\Apollo-Main\\compiler\\cache\\inline_foreign/f2c0a062549887f3.cpp", directory: "C:/Users/devon/Apollo/Apollo-Main/compiler/tests/grammar/pass")
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
!40 = distinct !{!40, !41, !"_ZN12__apo_stdlib13view_or_emptyEPKc: argument 0"}
!41 = distinct !{!41, !"_ZN12__apo_stdlib13view_or_emptyEPKc"}
!42 = !{!43, !24, i64 0}
!43 = !{!"_ZTSNSt3__117basic_string_viewIcNS_11char_traitsIcEEEE", !24, i64 0, !22, i64 8}
!44 = !{!43, !22, i64 8}
!45 = !{i8 0, i8 2}
!46 = !{}
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
!57 = !{!58, !9, i64 32}
!58 = !{!"_ZTSNSt3__18ios_baseE", !9, i64 8, !22, i64 16, !22, i64 24, !9, i64 32, !9, i64 36, !25, i64 40, !25, i64 48, !59, i64 56, !60, i64 64, !22, i64 72, !22, i64 80, !61, i64 88, !22, i64 96, !22, i64 104, !59, i64 112, !22, i64 120, !22, i64 128}
!59 = !{!"any p2 pointer", !25, i64 0}
!60 = !{!"p1 int", !25, i64 0}
!61 = !{!"p1 long", !25, i64 0}
!62 = !{!"branch_weights", i32 1, i32 1023}
!63 = !{!64, !65, i64 16}
!64 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EE", !65, i64 0, !65, i64 8, !65, i64 16, !66, i64 24}
!65 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !59, i64 0}
!66 = !{!"_ZTSNSt3__129__split_buffer_pointer_layoutINS_14__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS8_EES0_EES8_S9_EUt_E", !65, i64 0}
!67 = !{!64, !65, i64 8}
!68 = !{!69, !22, i64 32}
!69 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !70, i64 0, !22, i64 32, !71, i64 40}
!70 = !{!"_ZTSNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EENS_29__split_buffer_pointer_layoutEEE", !64, i64 0}
!71 = !{!"_ZTSNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !22, i64 0}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!74 = distinct !{!74, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !25, i64 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!79 = distinct !{!79, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!80 = !{!58, !25, i64 40}
!81 = !{i64 0, i64 23, !20}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!84 = distinct !{!84, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!87 = distinct !{!87, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!88 = !{!58, !25, i64 48}
!89 = !{!90, !91, i64 136}
!90 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !58, i64 0, !91, i64 136, !92, i64 144}
!91 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !25, i64 0}
!92 = !{!"_ZTSNSt3__118_SentinelValueFillINS_11char_traitsIcEEEE", !9, i64 0}
!93 = !{!92, !9, i64 0}
!94 = !{!95, !97}
!95 = distinct !{!95, !96, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!96 = distinct !{!96, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!97 = distinct !{!97, !98, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!98 = distinct !{!98, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!99 = !{!100, !9, i64 156}
!100 = !{!"_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE", !101, i64 0, !24, i64 64, !24, i64 72, !24, i64 80, !10, i64 88, !22, i64 96, !24, i64 104, !22, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !106, i64 144, !9, i64 152, !9, i64 156, !38, i64 160, !38, i64 161, !38, i64 162}
!101 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !102, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56}
!102 = !{!"_ZTSNSt3__16localeE", !103, i64 0}
!103 = !{!"p1 _ZTSNSt3__16locale5__impE", !25, i64 0}
!104 = !{!"p1 _ZTS6_iobuf", !25, i64 0}
!105 = !{!"p1 _ZTSNSt3__17codecvtIcc9_MbstatetEE", !25, i64 0}
!106 = !{!"_ZTS9_Mbstatet", !107, i64 0, !108, i64 4, !108, i64 6}
!107 = !{!"long", !10, i64 0}
!108 = !{!"short", !10, i64 0}
!109 = !{!100, !38, i64 160}
!110 = !{!100, !38, i64 161}
!111 = !{!100, !38, i64 162}
!112 = !{!100, !105, i64 128}
!113 = !{!100, !104, i64 120}
!114 = !{!100, !24, i64 64}
!115 = !{!100, !24, i64 104}
!116 = !{!100, !22, i64 112}
!117 = !{!100, !22, i64 96}
!118 = !{!119, !22, i64 8}
!119 = !{!"_ZTSNSt3__14fposI9_MbstatetEE", !106, i64 0, !22, i64 8}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7__ftellEP6_iobuf: argument 0"}
!122 = distinct !{!122, !"_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7__ftellEP6_iobuf"}
!123 = !{i64 0, i64 4, !124, i64 4, i64 2, !125, i64 6, i64 2, !125, i64 8, i64 8, !21}
!124 = !{!107, !107, i64 0}
!125 = !{!108, !108, i64 0}
!126 = !{!101, !24, i64 48}
!127 = !{!101, !24, i64 40}
!128 = !{!101, !24, i64 32}
!129 = !{!101, !24, i64 24}
!130 = !{!100, !24, i64 80}
!131 = !{!100, !24, i64 72}
!132 = !{!101, !24, i64 16}
!133 = !{!100, !9, i64 152}
!134 = !{!101, !24, i64 56}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!138, !38, i64 0}
!138 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !38, i64 0, !91, i64 8}
!139 = !{!91, !91, i64 0}
!140 = !{!58, !9, i64 8}
!141 = !{!58, !22, i64 24}
!142 = !{!143, !145}
!143 = distinct !{!143, !144, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!144 = distinct !{!144, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!145 = distinct !{!145, !146, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!146 = distinct !{!146, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
!147 = !{!138, !91, i64 8}
!148 = !{i64 8}
!149 = !{!150, !22, i64 8}
!150 = !{!"_ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE", !22, i64 8}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev: argument 0"}
!153 = distinct !{!153, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB9nqe220103Ev"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev: argument 0"}
!156 = distinct !{!156, !"_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB9nqe220103Ev"}
!157 = distinct !{!157, !136}
!158 = distinct !{!158, !136}
!159 = !{!64, !65, i64 0}
!160 = !{!64, !65, i64 24}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!163 = distinct !{!163, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!164 = !{!65, !65, i64 0}
!165 = !{!166, !168, !170, !172}
!166 = distinct !{!166, !167, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!167 = distinct !{!167, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!168 = distinct !{!168, !169, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!169 = distinct !{!169, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!170 = distinct !{!170, !171, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!171 = distinct !{!171, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!172 = distinct !{!172, !173, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!173 = distinct !{!173, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!174 = distinct !{!174, !136, !175, !176}
!175 = !{!"llvm.loop.isvectorized", i32 1}
!176 = !{!"llvm.loop.unroll.runtime.disable"}
!177 = distinct !{!177, !136, !175}
!178 = !{!179, !181, !183, !185}
!179 = distinct !{!179, !180, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!180 = distinct !{!180, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!181 = distinct !{!181, !182, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!182 = distinct !{!182, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!183 = distinct !{!183, !184, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!184 = distinct !{!184, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!185 = distinct !{!185, !186, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!186 = distinct !{!186, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!189 = distinct !{!189, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!190 = distinct !{!190, !136, !175, !176}
!191 = distinct !{!191, !136, !175}
!192 = !{!193, !195, !197, !199}
!193 = distinct !{!193, !194, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!194 = distinct !{!194, !"_ZNSt3__119__copy_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!195 = distinct !{!195, !196, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!196 = distinct !{!196, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!197 = distinct !{!197, !198, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!198 = distinct !{!198, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_11__move_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!199 = distinct !{!199, !200, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!200 = distinct !{!200, !"_ZNSt3__16__moveB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!203 = distinct !{!203, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!204 = distinct !{!204, !136, !175, !176}
!205 = distinct !{!205, !136, !175}
!206 = !{!207, !209, !211, !213}
!207 = distinct !{!207, !208, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_: argument 0"}
!208 = distinct !{!208, !"_ZNSt3__128__copy_backward_trivial_implB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_4pairIPT_PT0_EESA_SA_SC_"}
!209 = distinct !{!209, !210, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_: argument 0"}
!210 = distinct !{!210, !"_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB9nqe220103IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPSC_PSD_EESH_SH_SI_"}
!211 = distinct !{!211, !212, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_: argument 0"}
!212 = distinct !{!212, !"_ZNSt3__124__copy_move_unwrap_itersB9nqe220103INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESB_SB_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISD_SE_EESD_T1_SE_"}
!213 = distinct !{!213, !214, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_: argument 0"}
!214 = distinct !{!214, !"_ZNSt3__115__move_backwardB9nqe220103INS_17_ClassicAlgPolicyEPPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_S9_EENS_4pairIT0_T2_EESB_T1_SC_"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y: argument 0"}
!217 = distinct !{!217, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIPNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16allocator_traitsIS8_EEEENS_19__allocation_resultINT0_7pointerENSC_9size_typeEEERT_y"}
!218 = distinct !{!218, !136, !175, !176}
!219 = distinct !{!219, !136, !175}
!220 = !{!221, !223}
!221 = distinct !{!221, !222, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y: argument 0"}
!222 = distinct !{!222, !"_ZNSt3__119__allocate_at_leastB9nqe220103INS_9allocatorIcEENS_16allocator_traitsIS2_EEEENS_19__allocation_resultINT0_7pointerENS6_9size_typeEEERT_y"}
!223 = distinct !{!223, !224, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y: argument 0"}
!224 = distinct !{!224, !"_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE22__allocate_long_bufferB9nqe220103ERS4_y"}
