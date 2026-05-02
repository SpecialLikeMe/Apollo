; ModuleID = '/mnt/c/Users/devon/apollo/compiler/output.cpp'
source_filename = "/mnt/c/Users/devon/apollo/compiler/output.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"struct.std::piecewise_construct_t" = type { i8 }
%class.__apo_phase3_runtime = type { %"class.std::mutex", %"class.std::unordered_map.38", %"class.std::unordered_set", %"class.std::unordered_map.65" }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::unordered_map.38" = type { %"class.std::_Hashtable.39" }
%"class.std::_Hashtable.39" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::unordered_set" = type { %"class.std::_Hashtable.52" }
%"class.std::_Hashtable.52" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::unordered_map.65" = type { %"class.std::_Hashtable.66" }
%"class.std::_Hashtable.66" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { ptr }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.11 }
%union.anon.11 = type { i32 }
%"class.std::allocator.2" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%struct.__apo_apollo_payload_value = type { i32, i64, %"class.std::__cxx11::basic_string" }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl" }
%"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl" = type { %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data" }
%"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.28" }
%"struct.std::_Head_base.28" = type { ptr }
%"class.std::tuple.29" = type { i8 }
%"class.std::vector.101" = type { %"struct.std::_Vector_base.102" }
%"struct.std::_Vector_base.102" = type { %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl" }
%"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl" = type { %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data" }
%"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.__apo_opstruct_field_info = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::error_code" = type { i32, ptr }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA22_cS1_EERKT_NS1_6formatE = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNK26__apo_apollo_payload_value6renderB5cxx11Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EED2Ev = comdat any

$_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_ = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_26__apo_apollo_payload_valueESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEPSC_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN20__apo_phase3_runtime17register_opstructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listI25__apo_opstruct_field_infoE = comdat any

$_ZN20__apo_phase3_runtimeC2Ev = comdat any

$_ZN20__apo_phase3_runtimeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE19_M_deallocate_nodesEPSF_ = comdat any

$_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP25__apo_opstruct_field_infoEvT_S2_ = comdat any

$_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EE19_M_range_initializeIPKS0_EEvT_S6_St20forward_iterator_tag = comdat any

$_ZN25__apo_opstruct_field_infoC2ERKS_ = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorI25__apo_opstruct_field_infoSaISA_EEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESM_IJEEEEEPSF_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN20__apo_phase3_runtime8instanceEvE7runtime = comdat any

$_ZGVZN20__apo_phase3_runtime8instanceEvE7runtime = comdat any

@_ZL18__apo_syscallQueueB5cxx11 = internal global { { ptr, ptr, ptr } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [8 x i8] c"apollo\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"output/apo_ir.txt\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"output/apo_ir_exec.ps1\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"output/apo_ir_exec.sh\00", align 1
@.str.10 = private unnamed_addr constant [5223 x i8] c"param(\0A    [string]$Kind = '',\0A    [string]$Name = ''\0A)\0A$outputDir = Join-Path (Get-Location) 'output'\0A$irPath = Join-Path $outputDir 'apo_ir.txt'\0A\0Afunction Unescape-Field([string]$Value) {\0A    $builder = New-Object System.Text.StringBuilder\0A    $escaping = $false\0A    foreach ($char in $Value.ToCharArray()) {\0A        if ($escaping) {\0A            switch ($char) {\0A                'n' { [void]$builder.Append(\22`n\22) }\0A                'r' { [void]$builder.Append(\22`r\22) }\0A                't' { [void]$builder.Append(\22`t\22) }\0A                default { [void]$builder.Append($char) }\0A            }\0A            $escaping = $false\0A            continue\0A        }\0A        if ($char -eq '\\\\') {\0A            $escaping = $true\0A            continue\0A        }\0A        [void]$builder.Append($char)\0A    }\0A    if ($escaping) { [void]$builder.Append('\\\\') }\0A    return $builder.ToString()\0A}\0A\0Afunction Split-Record([string]$Line) {\0A    $fields = New-Object System.Collections.Generic.List[string]\0A    $builder = New-Object System.Text.StringBuilder\0A    $escaping = $false\0A    foreach ($char in $Line.ToCharArray()) {\0A        if ($escaping) {\0A            switch ($char) {\0A                'n' { [void]$builder.Append(\22`n\22) }\0A                'r' { [void]$builder.Append(\22`r\22) }\0A                't' { [void]$builder.Append(\22`t\22) }\0A                default { [void]$builder.Append($char) }\0A            }\0A            $escaping = $false\0A            continue\0A        }\0A        if ($char -eq '\\\\') {\0A            $escaping = $true\0A            continue\0A        }\0A        if ($char -eq \22`t\22) {\0A            $fields.Add($builder.ToString())\0A            $builder.Clear() | Out-Null\0A            continue\0A        }\0A        [void]$builder.Append($char)\0A    }\0A    if ($escaping) { [void]$builder.Append('\\\\') }\0A    $fields.Add($builder.ToString())\0A    return ,$fields.ToArray()\0A}\0A\0Afunction Find-Record([string]$Kind, [string]$Name) {\0A    if (-not (Test-Path $irPath)) { return $null }\0A    $lines = Get-Content -Path $irPath -Encoding UTF8\0A    for ($index = $lines.Length - 1; $index -ge 0; $index -= 1) {\0A        $line = $lines[$index]\0A        if ([string]::IsNullOrEmpty($line)) { continue }\0A        $fields = Split-Record $line\0A        if ($fields.Length -lt 5) { continue }\0A        if ($Kind -and $fields[0] -ne $Kind) { continue }\0A        if ($fields[1] -ne $Name) { continue }\0A        return ,$fields\0A    }\0A    return $null\0A}\0A\0Afunction Run-Payload([string]$Lang, [string]$Code) {\0A    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null\0A    switch ($Lang) {\0A        'cpp' { Set-Content -Path (Join-Path $outputDir 'apo_async_cpp.cpp') -Value $Code -Encoding UTF8; cmd /c 'g++ output\\apo_async_cpp.cpp -o output\\apo_async_cpp.exe && .\\output\\apo_async_cpp.exe'; return $LASTEXITCODE }\0A        'c' { Set-Content -Path (Join-Path $outputDir 'apo_async_c.c') -Value $Code -Encoding UTF8; cmd /c 'gcc output\\apo_async_c.c -o output\\apo_async_c.exe && .\\output\\apo_async_c.exe'; return $LASTEXITCODE }\0A        'rs' { Set-Content -Path (Join-Path $outputDir 'apo_async_rs.rs') -Value $Code -Encoding UTF8; cmd /c 'rustc output\\apo_async_rs.rs -o output\\apo_async_rs.exe && .\\output\\apo_async_rs.exe'; return $LASTEXITCODE }\0A        'java' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.java') -Value $Code -Encoding UTF8; cmd /c 'javac output\\ApoAsyncTask.java -d output && java -cp output ApoAsyncTask'; return $LASTEXITCODE }\0A        'cs' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.cs') -Value $Code -Encoding UTF8; cmd /c 'csc /nologo /out:output\\ApoAsyncTask.exe output\\ApoAsyncTask.cs && .\\output\\ApoAsyncTask.exe'; return $LASTEXITCODE }\0A        'py' { Set-Content -Path (Join-Path $outputDir 'apo_async.py') -Value $Code -Encoding UTF8; cmd /c 'py output\\apo_async.py || python output\\apo_async.py'; return $LASTEXITCODE }\0A        'js' { Set-Content -Path (Join-Path $outputDir 'apo_async.js') -Value $Code -Encoding UTF8; cmd /c 'node output\\apo_async.js'; return $LASTEXITCODE }\0A        'ts' { Set-Content -Path (Join-Path $outputDir 'apo_async.ts') -Value $Code -Encoding UTF8; cmd /c 'tsc output\\apo_async.ts --outDir output && node output\\apo_async.js'; return $LASTEXITCODE }\0A        'go' { Set-Content -Path (Join-Path $outputDir 'apo_async_go.go') -Value $Code -Encoding UTF8; cmd /c 'go build -o output\\apo_async_go.exe output\\apo_async_go.go && .\\output\\apo_async_go.exe'; return $LASTEXITCODE }\0A        'php' { Set-Content -Path (Join-Path $outputDir 'apo_async.php') -Value $Code -Encoding UTF8; cmd /c 'php output\\apo_async.php'; return $LASTEXITCODE }\0A        'rb' { Set-Content -Path (Join-Path $outputDir 'apo_async.rb') -Value $Code -Encoding UTF8; cmd /c 'ruby output\\apo_async.rb'; return $LASTEXITCODE }\0A        'kt' { Set-Content -Path (Join-Path $outputDir 'ApoAsyncTask.kt') -Value $Code -Encoding UTF8; cmd /c 'kotlinc output\\ApoAsyncTask.kt -include-runtime -d output\\ApoAsyncTask.jar && java -jar output\\ApoAsyncTask.jar'; return $LASTEXITCODE }\0A        default { Write-Error \22unsupported stored language: $Lang\22; return -1 }\0A    }\0A}\0A\0A$record = Find-Record $Kind $Name\0Aif ($null -eq $record) {\0A    Write-Error \22IR entry not found: $Kind $Name\22\0A    exit 1\0A}\0Aexit (Run-Payload $record[3] $record[4])\0A\00", align 1
@.str.11 = private unnamed_addr constant [3385 x i8] c"#!/bin/sh\0Akind=${1:-}\0Aname=${2:-}\0Aoutput_dir=\22output\22\0Air_path=\22$output_dir/apo_ir.txt\22\0Atab_char=$(printf '\\t')\0A\0Aapo_unescape() {\0A    printf '%b' \22$1\22\0A}\0A\0Aapo_find_record() {\0A    [ -f \22$ir_path\22 ] || return 1\0A    record=\22\22\0A    while IFS= read -r line || [ -n \22$line\22 ]; do\0A        [ -z \22$line\22 ] && continue\0A        IFS=\22$tab_char\22 read -r field1 field2 field3 field4 field5 <<EOF\0A$line\0AEOF\0A        if [ -n \22$kind\22 ] && [ \22$field1\22 != \22$kind\22 ]; then\0A            continue\0A        fi\0A        if [ \22$field2\22 != \22$name\22 ]; then\0A            continue\0A        fi\0A        record=\22$line\22\0A    done < \22$ir_path\22\0A    [ -n \22$record\22 ] || return 1\0A    IFS=\22$tab_char\22 read -r record_kind record_name record_type record_lang record_payload <<EOF\0A$record\0AEOF\0A    return 0\0A}\0A\0Arun_payload() {\0A    lang=\22$1\22\0A    code=\22$2\22\0A    mkdir -p \22$output_dir\22\0A    case \22$lang\22 in\0A        cpp)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async_cpp.cpp\22\0A            c++ \22$output_dir/apo_async_cpp.cpp\22 -o \22$output_dir/apo_async_cpp\22 && \22$output_dir/apo_async_cpp\22\0A            ;;\0A        c)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async_c.c\22\0A            cc \22$output_dir/apo_async_c.c\22 -o \22$output_dir/apo_async_c\22 && \22$output_dir/apo_async_c\22\0A            ;;\0A        rs)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async_rs.rs\22\0A            rustc \22$output_dir/apo_async_rs.rs\22 -o \22$output_dir/apo_async_rs\22 && \22$output_dir/apo_async_rs\22\0A            ;;\0A        java)\0A            printf '%s' \22$code\22 > \22$output_dir/ApoAsyncTask.java\22\0A            javac \22$output_dir/ApoAsyncTask.java\22 -d \22$output_dir\22 && java -cp \22$output_dir\22 ApoAsyncTask\0A            ;;\0A        cs)\0A            printf '%s' \22$code\22 > \22$output_dir/ApoAsyncTask.cs\22\0A            csc /nologo /out:\22$output_dir/ApoAsyncTask.exe\22 \22$output_dir/ApoAsyncTask.cs\22 && (mono \22$output_dir/ApoAsyncTask.exe\22 2>/dev/null || \22$output_dir/ApoAsyncTask.exe\22)\0A            ;;\0A        py)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async.py\22\0A            python3 \22$output_dir/apo_async.py\22 || python \22$output_dir/apo_async.py\22\0A            ;;\0A        js)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async.js\22\0A            node \22$output_dir/apo_async.js\22\0A            ;;\0A        ts)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async.ts\22\0A            tsc \22$output_dir/apo_async.ts\22 --outDir \22$output_dir\22 && node \22$output_dir/apo_async.js\22\0A            ;;\0A        go)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async_go.go\22\0A            go build -o \22$output_dir/apo_async_go\22 \22$output_dir/apo_async_go.go\22 && \22$output_dir/apo_async_go\22\0A            ;;\0A        php)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async.php\22\0A            php \22$output_dir/apo_async.php\22\0A            ;;\0A        rb)\0A            printf '%s' \22$code\22 > \22$output_dir/apo_async.rb\22\0A            ruby \22$output_dir/apo_async.rb\22\0A            ;;\0A        kt)\0A            printf '%s' \22$code\22 > \22$output_dir/ApoAsyncTask.kt\22\0A            kotlinc \22$output_dir/ApoAsyncTask.kt\22 -include-runtime -d \22$output_dir/ApoAsyncTask.jar\22 && java -jar \22$output_dir/ApoAsyncTask.jar\22\0A            ;;\0A        *)\0A            echo \22unsupported stored language: $lang\22 >&2\0A            return 1\0A            ;;\0A    esac\0A}\0A\0Aif ! apo_find_record; then\0A    echo \22IR entry not found: $kind $name\22 >&2\0A    exit 1\0Afi\0A\0Arun_payload \22$record_lang\22 \22$(apo_unescape \22$record_payload\22)\22\0Aexit $?\0A\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"invalid syscall payload\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"apollo\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"output/apo_async_cpp\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"output/apo_async_cpp.cpp\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c" output/apo_async_cpp.cpp -o \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"output/apo_async_c\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"output/apo_async_c.c\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c" output/apo_async_c.c -o \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"output/apo_async_rs\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"output/apo_async_rs.rs\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"rustc output/apo_async_rs.rs -o \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"output/ApoAsyncTask.java\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"javac output/ApoAsyncTask.java -d output && java -cp output ApoAsyncTask\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"output/ApoAsyncTask.exe\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"output/ApoAsyncTask.cs\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"csc /nologo /out:\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c" output/ApoAsyncTask.cs && \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"output/apo_async.py\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"output/apo_async.js\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"node output/apo_async.js\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"output/apo_async.ts\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"tsc output/apo_async.ts --outDir output && node output/apo_async.js\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"output/apo_async_go\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"output/apo_async_go.go\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"go build -o \00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c" output/apo_async_go.go && \00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"output/apo_async.php\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"php output/apo_async.php\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"output/apo_async.rb\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"ruby output/apo_async.rb\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"kt\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"output/ApoAsyncTask.kt\00", align 1
@.str.56 = private unnamed_addr constant [112 x i8] c"kotlinc output/ApoAsyncTask.kt -include-runtime -d output/ApoAsyncTask.jar && java -jar output/ApoAsyncTask.jar\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"unsupported syscall language: \00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"#include\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"#include <iostream>\0A\0A\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"<?php\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"<?php\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.67 = private unnamed_addr constant [2914 x i8] c"#include <filesystem>\0A#include <fstream>\0A#include <string>\0A#include <vector>\0A\0Astatic std::string __apo_ir_escape(const std::string& value) {\0A    std::string escaped;\0A    for (char ch : value) {\0A        if (ch == '\\\\') escaped += \22\\\\\\\\\22;\0A        else if (ch == '\\t') escaped += \22\\\\t\22;\0A        else if (ch == '\\n') escaped += \22\\\\n\22;\0A        else if (ch == '\\r') escaped += \22\\\\r\22;\0A        else escaped.push_back(ch);\0A    }\0A    return escaped;\0A}\0A\0Astatic std::vector<std::string> __apo_ir_parse_line(const std::string& line) {\0A    std::vector<std::string> fields;\0A    std::string current;\0A    bool escaping = false;\0A    for (char ch : line) {\0A        if (escaping) {\0A            if (ch == 'n') current.push_back('\\n');\0A            else if (ch == 'r') current.push_back('\\r');\0A            else if (ch == 't') current.push_back('\\t');\0A            else current.push_back(ch);\0A            escaping = false;\0A            continue;\0A        }\0A        if (ch == '\\\\') {\0A            escaping = true;\0A            continue;\0A        }\0A        if (ch == '\\t') {\0A            fields.push_back(current);\0A            current.clear();\0A            continue;\0A        }\0A        current.push_back(ch);\0A    }\0A    if (escaping) current.push_back('\\\\');\0A    fields.push_back(current);\0A    return fields;\0A}\0A\0Astatic void async_write(const std::string& kind, const std::string& name, const std::string& typeName, const std::string& payload, const std::string& sourceLang = \22cpp\22) {\0A    std::filesystem::create_directories(\22output\22);\0A    std::ofstream out(\22output/apo_ir.txt\22, std::ios::app);\0A    out << __apo_ir_escape(kind) << '\\t' << __apo_ir_escape(name) << '\\t' << __apo_ir_escape(typeName) << '\\t' << __apo_ir_escape(sourceLang) << '\\t' << __apo_ir_escape(payload) << '\\n';\0A}\0A\0Astatic std::string async_read(const std::string& kind, const std::string& name) {\0A    std::ifstream in(\22output/apo_ir.txt\22);\0A    if (!in) return \22\22;\0A    std::vector<std::string> lines;\0A    std::string line;\0A    while (std::getline(in, line)) {\0A        if (!line.empty()) lines.push_back(line);\0A    }\0A    for (auto it = lines.rbegin(); it != lines.rend(); ++it) {\0A        std::vector<std::string> fields = __apo_ir_parse_line(*it);\0A        if (fields.size() < 5) continue;\0A        if (!kind.empty() && fields[0] != kind) continue;\0A        if (fields[1] != name) continue;\0A        return fields[4];\0A    }\0A    return \22\22;\0A}\0A\0Astatic std::string async_read(const std::string& name) {\0A    return async_read(\22\22, name);\0A}\0A\0Astatic int async_exec(const std::string& kind, const std::string& name) {\0A    std::string command;\0A#ifdef _WIN32\0A    command = \22powershell -NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \\\22\22 + kind + \22\\\22 \\\22\22 + name + \22\\\22\22;\0A#else\0A    command = \22sh output/apo_ir_exec.sh \\\22\22 + kind + \22\\\22 \\\22\22 + name + \22\\\22\22;\0A#endif\0A    return system(command.c_str());\0A}\0A\0Astatic int async_exec(const std::string& name) {\0A    return async_exec(\22\22, name);\0A}\0A\00", align 1
@.str.68 = private unnamed_addr constant [2486 x i8] c"from pathlib import Path\0Aimport os\0Aimport subprocess\0A\0Adef _apo_ir_escape(value):\0A    text = \22\22 if value is None else str(value)\0A    return text.replace('\\\\', '\\\\\\\\').replace('\\t', '\\\\t').replace('\\n', '\\\\n').replace('\\r', '\\\\r')\0A\0Adef _apo_ir_parse_line(line):\0A    fields = []\0A    current = []\0A    escaping = False\0A    for ch in line:\0A        if escaping:\0A            if ch == 'n':\0A                current.append('\\n')\0A            elif ch == 'r':\0A                current.append('\\r')\0A            elif ch == 't':\0A                current.append('\\t')\0A            else:\0A                current.append(ch)\0A            escaping = False\0A            continue\0A        if ch == '\\\\':\0A            escaping = True\0A            continue\0A        if ch == '\\t':\0A            fields.append(''.join(current))\0A            current = []\0A            continue\0A        current.append(ch)\0A    if escaping:\0A        current.append('\\\\')\0A    fields.append(''.join(current))\0A    return fields\0A\0Adef async_write(kind, name, type_name, payload, source_lang='py'):\0A    ir_path = Path('output') / 'apo_ir.txt'\0A    ir_path.parent.mkdir(parents=True, exist_ok=True)\0A    record = '\\t'.join([\0A        _apo_ir_escape(kind),\0A        _apo_ir_escape(name),\0A        _apo_ir_escape(type_name),\0A        _apo_ir_escape(source_lang),\0A        _apo_ir_escape(payload),\0A    ]) + '\\n'\0A    with ir_path.open('a', encoding='utf-8') as handle:\0A        handle.write(record)\0A\0Adef async_read(kind_or_name, name=None):\0A    kind = '' if name is None else str(kind_or_name)\0A    symbol_name = str(kind_or_name) if name is None else str(name)\0A    ir_path = Path('output') / 'apo_ir.txt'\0A    if not ir_path.exists():\0A        return ''\0A    lines = ir_path.read_text(encoding='utf-8').splitlines()\0A    for line in reversed(lines):\0A        if not line:\0A            continue\0A        fields = _apo_ir_parse_line(line)\0A        if len(fields) < 5:\0A            continue\0A        if kind and fields[0] != kind:\0A            continue\0A        if fields[1] != symbol_name:\0A            continue\0A        return fields[4]\0A    return ''\0A\0Adef async_exec(kind_or_name, name=None):\0A    kind = '' if name is None else str(kind_or_name)\0A    symbol_name = str(kind_or_name) if name is None else str(name)\0A    command = ['powershell', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'output/apo_ir_exec.ps1', kind, symbol_name] if os.name == 'nt' else ['sh', 'output/apo_ir_exec.sh', kind, symbol_name]\0A    result = subprocess.run(command)\0A    return result.returncode\0A\00", align 1
@.str.69 = private unnamed_addr constant [4540 x i8] c"import java.io.IOException;\0Aimport java.nio.charset.StandardCharsets;\0Aimport java.nio.file.Files;\0Aimport java.nio.file.Path;\0Aimport java.nio.file.Paths;\0Aimport java.nio.file.StandardOpenOption;\0Aimport java.util.ArrayList;\0Aimport java.util.List;\0Aimport java.lang.ProcessBuilder;\0A\0Aclass ApoAsyncIR {\0A    private static String escape(String value) {\0A        String text = value == null ? \22\22 : value;\0A        return text.replace(\22\\\\\22, \22\\\\\\\\\22)\0A                .replace(\22\\t\22, \22\\\\t\22)\0A                .replace(\22\\n\22, \22\\\\n\22)\0A                .replace(\22\\r\22, \22\\\\r\22);\0A    }\0A\0A    private static List<String> parseLine(String line) {\0A        List<String> fields = new ArrayList<>();\0A        StringBuilder current = new StringBuilder();\0A        boolean escaping = false;\0A        for (int i = 0; i < line.length(); i++) {\0A            char ch = line.charAt(i);\0A            if (escaping) {\0A                if (ch == 'n') current.append('\\n');\0A                else if (ch == 'r') current.append('\\r');\0A                else if (ch == 't') current.append('\\t');\0A                else current.append(ch);\0A                escaping = false;\0A                continue;\0A            }\0A            if (ch == '\\\\') {\0A                escaping = true;\0A                continue;\0A            }\0A            if (ch == '\\t') {\0A                fields.add(current.toString());\0A                current.setLength(0);\0A                continue;\0A            }\0A            current.append(ch);\0A        }\0A        if (escaping) current.append('\\\\');\0A        fields.add(current.toString());\0A        return fields;\0A    }\0A\0A    static void async_write(String kind, String name, String typeName, String payload) {\0A        async_write(kind, name, typeName, payload, \22java\22);\0A    }\0A\0A    static void async_write(String kind, String name, String typeName, String payload, String sourceLang) {\0A        Path irPath = Paths.get(\22output\22, \22apo_ir.txt\22);\0A        try {\0A            Files.createDirectories(irPath.getParent());\0A            String record = String.join(\22\\t\22,\0A                    escape(kind),\0A                    escape(name),\0A                    escape(typeName),\0A                    escape(sourceLang),\0A                    escape(payload)) + System.lineSeparator();\0A            Files.writeString(irPath, record, StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);\0A        } catch (IOException ex) {\0A            throw new RuntimeException(ex);\0A        }\0A    }\0A\0A    static String async_read(String name) {\0A        return async_read(\22\22, name);\0A    }\0A\0A    static String async_read(String kind, String name) {\0A        Path irPath = Paths.get(\22output\22, \22apo_ir.txt\22);\0A        if (!Files.exists(irPath)) {\0A            return \22\22;\0A        }\0A        try {\0A            List<String> lines = Files.readAllLines(irPath, StandardCharsets.UTF_8);\0A            for (int i = lines.size() - 1; i >= 0; i--) {\0A                String line = lines.get(i);\0A                if (line.isEmpty()) continue;\0A                List<String> fields = parseLine(line);\0A                if (fields.size() < 5) continue;\0A                if (!kind.isEmpty() && !fields.get(0).equals(kind)) continue;\0A                if (!fields.get(1).equals(name)) continue;\0A                return fields.get(4);\0A            }\0A            return \22\22;\0A        } catch (IOException ex) {\0A            throw new RuntimeException(ex);\0A        }\0A    }\0A\0A    static int async_exec(String name) {\0A        return async_exec(\22\22, name);\0A    }\0A\0A    static int async_exec(String kind, String name) {\0A        try {\0A            List<String> command = new ArrayList<>();\0A            String osName = System.getProperty(\22os.name\22, \22\22).toLowerCase();\0A            if (osName.contains(\22win\22)) {\0A                command.add(\22powershell\22);\0A                command.add(\22-NoProfile\22);\0A                command.add(\22-ExecutionPolicy\22);\0A                command.add(\22Bypass\22);\0A                command.add(\22-File\22);\0A                command.add(\22output/apo_ir_exec.ps1\22);\0A            } else {\0A                command.add(\22sh\22);\0A                command.add(\22output/apo_ir_exec.sh\22);\0A            }\0A            command.add(kind);\0A            command.add(name);\0A            Process process = new ProcessBuilder(command)\0A                    .inheritIO()\0A                    .start();\0A            return process.waitFor();\0A        } catch (IOException ex) {\0A            throw new RuntimeException(ex);\0A        } catch (InterruptedException ex) {\0A            Thread.currentThread().interrupt();\0A            throw new RuntimeException(ex);\0A        }\0A    }\0A}\0A\00", align 1
@.str.70 = private unnamed_addr constant [2968 x i8] c"#[allow(unused_macros)]\0Ause std::fs::{self, OpenOptions};\0Ause std::io::Write;\0Ause std::process::Command;\0A\0Afn __apo_ir_escape(value: &str) -> String {\0A    value.replace('\\\\', \22\\\\\\\\\22).replace('\\t', \22\\\\t\22).replace('\\n', \22\\\\n\22).replace('\\r', \22\\\\r\22)\0A}\0A\0Afn __apo_ir_parse_line(line: &str) -> Vec<String> {\0A    let mut fields: Vec<String> = Vec::new();\0A    let mut current = String::new();\0A    let mut escaping = false;\0A    for ch in line.chars() {\0A        if escaping {\0A            match ch {\0A                'n' => current.push('\\n'),\0A                'r' => current.push('\\r'),\0A                't' => current.push('\\t'),\0A                _ => current.push(ch),\0A            }\0A            escaping = false;\0A            continue;\0A        }\0A        if ch == '\\\\' { escaping = true; continue; }\0A        if ch == '\\t' { fields.push(current); current = String::new(); continue; }\0A        current.push(ch);\0A    }\0A    if escaping { current.push('\\\\'); }\0A    fields.push(current);\0A    fields\0A}\0A\0Afn __apo_async_write(kind: &str, name: &str, type_name: &str, payload: &str, source_lang: &str) {\0A    let _ = fs::create_dir_all(\22output\22);\0A    let mut file = OpenOptions::new().create(true).append(true).open(\22output/apo_ir.txt\22).unwrap();\0A    writeln!(file, \22{}\\t{}\\t{}\\t{}\\t{}\22, __apo_ir_escape(kind), __apo_ir_escape(name), __apo_ir_escape(type_name), __apo_ir_escape(source_lang), __apo_ir_escape(payload)).unwrap();\0A}\0A\0Afn __apo_async_read(kind: &str, name: &str) -> String {\0A    let content = fs::read_to_string(\22output/apo_ir.txt\22).unwrap_or_default();\0A    for line in content.lines().rev() {\0A        if line.is_empty() { continue; }\0A        let fields = __apo_ir_parse_line(line);\0A        if fields.len() < 5 { continue; }\0A        if !kind.is_empty() && fields[0] != kind { continue; }\0A        if fields[1] != name { continue; }\0A        return fields[4].clone();\0A    }\0A    String::new()\0A}\0A\0Afn __apo_async_exec(kind: &str, name: &str) -> i32 {\0A    let mut command = if cfg!(windows) {\0A        let mut cmd = Command::new(\22powershell\22);\0A        cmd.args([\22-NoProfile\22, \22-ExecutionPolicy\22, \22Bypass\22, \22-File\22, \22output/apo_ir_exec.ps1\22, kind, name]);\0A        cmd\0A    } else {\0A        let mut cmd = Command::new(\22sh\22);\0A        cmd.args([\22output/apo_ir_exec.sh\22, kind, name]);\0A        cmd\0A    };\0A    let status = command.status().unwrap();\0A    status.code().unwrap_or(-1)\0A}\0A\0Amacro_rules! async_write {\0A    ($kind:expr, $name:expr, $type_name:expr, $payload:expr) => { __apo_async_write($kind, $name, $type_name, $payload, \22rs\22) };\0A    ($kind:expr, $name:expr, $type_name:expr, $payload:expr, $source_lang:expr) => { __apo_async_write($kind, $name, $type_name, $payload, $source_lang) };\0A}\0A\0Amacro_rules! async_read {\0A    ($name:expr) => { __apo_async_read(\22\22, $name) };\0A    ($kind:expr, $name:expr) => { __apo_async_read($kind, $name) };\0A}\0A\0Amacro_rules! async_exec {\0A    ($name:expr) => { __apo_async_exec(\22\22, $name) };\0A    ($kind:expr, $name:expr) => { __apo_async_exec($kind, $name) };\0A}\0A\00", align 1
@.str.71 = private unnamed_addr constant [3361 x i8] c"using System;\0Ausing System.Collections.Generic;\0Ausing System.Diagnostics;\0Ausing System.IO;\0Ausing System.Text;\0A\0Astatic class ApoAsyncIR {\0A    private static string Escape(string value) {\0A        string text = value ?? string.Empty;\0A        return text.Replace(\22\\\\\22, \22\\\\\\\\\22).Replace(\22\\t\22, \22\\\\t\22).Replace(\22\\n\22, \22\\\\n\22).Replace(\22\\r\22, \22\\\\r\22);\0A    }\0A\0A    private static List<string> ParseLine(string line) {\0A        List<string> fields = new List<string>();\0A        StringBuilder current = new StringBuilder();\0A        bool escaping = false;\0A        foreach (char ch in line) {\0A            if (escaping) {\0A                if (ch == 'n') current.Append('\\n');\0A                else if (ch == 'r') current.Append('\\r');\0A                else if (ch == 't') current.Append('\\t');\0A                else current.Append(ch);\0A                escaping = false;\0A                continue;\0A            }\0A            if (ch == '\\\\') { escaping = true; continue; }\0A            if (ch == '\\t') { fields.Add(current.ToString()); current.Clear(); continue; }\0A            current.Append(ch);\0A        }\0A        if (escaping) current.Append('\\\\');\0A        fields.Add(current.ToString());\0A        return fields;\0A    }\0A\0A    public static void async_write(string kind, string name, string typeName, string payload) {\0A        async_write(kind, name, typeName, payload, \22cs\22);\0A    }\0A\0A    public static void async_write(string kind, string name, string typeName, string payload, string sourceLang) {\0A        Directory.CreateDirectory(\22output\22);\0A        string record = string.Join(\22\\t\22, Escape(kind), Escape(name), Escape(typeName), Escape(sourceLang), Escape(payload)) + Environment.NewLine;\0A        File.AppendAllText(Path.Combine(\22output\22, \22apo_ir.txt\22), record, Encoding.UTF8);\0A    }\0A\0A    public static string async_read(string name) {\0A        return async_read(\22\22, name);\0A    }\0A\0A    public static string async_read(string kind, string name) {\0A        string path = Path.Combine(\22output\22, \22apo_ir.txt\22);\0A        if (!File.Exists(path)) return string.Empty;\0A        string[] lines = File.ReadAllLines(path, Encoding.UTF8);\0A        for (int index = lines.Length - 1; index >= 0; index -= 1) {\0A            string line = lines[index];\0A            if (string.IsNullOrEmpty(line)) continue;\0A            List<string> fields = ParseLine(line);\0A            if (fields.Count < 5) continue;\0A            if (!string.IsNullOrEmpty(kind) && fields[0] != kind) continue;\0A            if (fields[1] != name) continue;\0A            return fields[4];\0A        }\0A        return string.Empty;\0A    }\0A\0A    public static int async_exec(string name) {\0A        return async_exec(\22\22, name);\0A    }\0A\0A    public static int async_exec(string kind, string name) {\0A        Process process = new Process();\0A        bool isWindows = Environment.OSVersion.Platform == PlatformID.Win32NT || Environment.OSVersion.Platform == PlatformID.Win32Windows;\0A        process.StartInfo = new ProcessStartInfo {\0A            FileName = isWindows ? \22powershell\22 : \22sh\22,\0A            Arguments = isWindows\0A                ? \22-NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \\\22\22 + kind + \22\\\22 \\\22\22 + name + \22\\\22\22\0A                : \22output/apo_ir_exec.sh \\\22\22 + kind + \22\\\22 \\\22\22 + name + \22\\\22\22,\0A            UseShellExecute = false\0A        };\0A        process.Start();\0A        process.WaitForExit();\0A        return process.ExitCode;\0A    }\0A}\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"declare function require(name: string): any;\0A\00", align 1
@.str.73 = private unnamed_addr constant [1034 x i8] c"const fs = require(\22fs\22);\0Aconst path = require(\22path\22);\0A\0Afunction __apoIrEscape(value) {\0A    const text = value == null ? \22\22 : String(value);\0A    return text.replace(/\\\\/g, \22\\\\\\\\\22).replace(/\\t/g, \22\\\\t\22).replace(/\\n/g, \22\\\\n\22).replace(/\\r/g, \22\\\\r\22);\0A}\0A\0Afunction __apoIrParseLine(line) {\0A    const fields = [];\0A    let current = \22\22;\0A    let escaping = false;\0A    for (const ch of line) {\0A        if (escaping) {\0A            if (ch === \22n\22) current += \22\\n\22;\0A            else if (ch === \22r\22) current += \22\\r\22;\0A            else if (ch === \22t\22) current += \22\\t\22;\0A            else current += ch;\0A            escaping = false;\0A            continue;\0A        }\0A        if (ch === \22\\\\\22) {\0A            escaping = true;\0A            continue;\0A        }\0A        if (ch === \22\\t\22) {\0A            fields.push(current);\0A            current = \22\22;\0A            continue;\0A        }\0A        current += ch;\0A    }\0A    if (escaping) current += \22\\\\\22;\0A    fields.push(current);\0A    return fields;\0A}\0A\0Afunction async_write(kind, name, typeName, payload, sourceLang = \22\00", align 1
@.str.74 = private unnamed_addr constant [1666 x i8] c"\22) {\0A    const irPath = path.join(\22output\22, \22apo_ir.txt\22);\0A    fs.mkdirSync(path.dirname(irPath), { recursive: true });\0A    const record = [kind, name, typeName, sourceLang, payload].map(__apoIrEscape).join(\22\\t\22) + \22\\n\22;\0A    fs.appendFileSync(irPath, record, \22utf8\22);\0A}\0A\0Afunction async_read(kindOrName, maybeName) {\0A    const kind = maybeName === undefined ? \22\22 : String(kindOrName ?? \22\22);\0A    const name = maybeName === undefined ? String(kindOrName ?? \22\22) : String(maybeName ?? \22\22);\0A    const irPath = path.join(\22output\22, \22apo_ir.txt\22);\0A    if (!fs.existsSync(irPath)) return \22\22;\0A    const lines = fs.readFileSync(irPath, \22utf8\22).split(/\\r?\\n/);\0A    for (let index = lines.length - 1; index >= 0; index -= 1) {\0A        const line = lines[index];\0A        if (!line) continue;\0A        const fields = __apoIrParseLine(line);\0A        if (fields.length < 5) continue;\0A        if (kind && fields[0] !== kind) continue;\0A        if (fields[1] !== name) continue;\0A        return fields[4];\0A    }\0A    return \22\22;\0A}\0A\0Afunction async_exec(kindOrName, maybeName) {\0A    const kind = maybeName === undefined ? \22\22 : String(kindOrName ?? \22\22);\0A    const name = maybeName === undefined ? String(kindOrName ?? \22\22) : String(maybeName ?? \22\22);\0A    try {\0A        const command = process.platform === \22win32\22 ? [\22powershell\22, \22-NoProfile\22, \22-ExecutionPolicy\22, \22Bypass\22, \22-File\22, \22output/apo_ir_exec.ps1\22, kind, name] : [\22sh\22, \22output/apo_ir_exec.sh\22, kind, name];\0A        require(\22child_process\22).execFileSync(command[0], command.slice(1), { stdio: \22inherit\22 });\0A        return 0;\0A    } catch (error) {\0A        return error && typeof error.status === \22number\22 ? error.status : -1;\0A    }\0A}\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [2963 x i8] c"package main\0A\0Aimport (\0A    \22os\22\0A    \22os/exec\22\0A    \22path/filepath\22\0A    \22runtime\22\0A    \22strings\22\0A)\0A\0Afunc apoIrEscape(value string) string {\0A    replacer := strings.NewReplacer(\22\\\\\22, \22\\\\\\\\\22, \22\\t\22, \22\\\\t\22, \22\\n\22, \22\\\\n\22, \22\\r\22, \22\\\\r\22)\0A    return replacer.Replace(value)\0A}\0A\0Afunc apoIrParseLine(line string) []string {\0A    fields := []string{}\0A    var current strings.Builder\0A    escaping := false\0A    for _, ch := range line {\0A        if escaping {\0A            switch ch {\0A            case 'n': current.WriteRune('\\n')\0A            case 'r': current.WriteRune('\\r')\0A            case 't': current.WriteRune('\\t')\0A            default: current.WriteRune(ch)\0A            }\0A            escaping = false\0A            continue\0A        }\0A        if ch == '\\\\' { escaping = true; continue }\0A        if ch == '\\t' { fields = append(fields, current.String()); current.Reset(); continue }\0A        current.WriteRune(ch)\0A    }\0A    if escaping { current.WriteRune('\\\\') }\0A    fields = append(fields, current.String())\0A    return fields\0A}\0A\0Afunc async_write(args ...string) {\0A    if len(args) < 4 { return }\0A    kind, name, typeName, payload := args[0], args[1], args[2], args[3]\0A    sourceLang := \22go\22\0A    if len(args) > 4 { sourceLang = args[4] }\0A    _ = os.MkdirAll(\22output\22, 0o755)\0A    record := strings.Join([]string{apoIrEscape(kind), apoIrEscape(name), apoIrEscape(typeName), apoIrEscape(sourceLang), apoIrEscape(payload)}, \22\\t\22) + \22\\n\22\0A    file, _ := os.OpenFile(filepath.Join(\22output\22, \22apo_ir.txt\22), os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0o644)\0A    defer file.Close()\0A    _, _ = file.WriteString(record)\0A}\0A\0Afunc async_read(args ...string) string {\0A    kind := \22\22\0A    name := \22\22\0A    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }\0A    content, err := os.ReadFile(filepath.Join(\22output\22, \22apo_ir.txt\22))\0A    if err != nil { return \22\22 }\0A    lines := strings.Split(strings.ReplaceAll(string(content), \22\\r\\n\22, \22\\n\22), \22\\n\22)\0A    for index := len(lines) - 1; index >= 0; index -= 1 {\0A        line := lines[index]\0A        if line == \22\22 { continue }\0A        fields := apoIrParseLine(line)\0A        if len(fields) < 5 { continue }\0A        if kind != \22\22 && fields[0] != kind { continue }\0A        if fields[1] != name { continue }\0A        return fields[4]\0A    }\0A    return \22\22\0A}\0A\0Afunc async_exec(args ...string) int {\0A    kind := \22\22\0A    name := \22\22\0A    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }\0A    var command *exec.Cmd\0A    if runtime.GOOS == \22windows\22 {\0A        command = exec.Command(\22powershell\22, \22-NoProfile\22, \22-ExecutionPolicy\22, \22Bypass\22, \22-File\22, \22output/apo_ir_exec.ps1\22, kind, name)\0A    } else {\0A        command = exec.Command(\22sh\22, \22output/apo_ir_exec.sh\22, kind, name)\0A    }\0A    command.Stdout = os.Stdout\0A    command.Stderr = os.Stderr\0A    err := command.Run()\0A    if err == nil { return 0 }\0A    if exitError, ok := err.(*exec.ExitError); ok { return exitError.ExitCode() }\0A    return -1\0A}\0A\00", align 1
@.str.76 = private unnamed_addr constant [2545 x i8] c"function _apo_ir_escape($value) {\0A    $text = $value === null ? '' : (string)$value;\0A    return str_replace([\22\\\\\22, \22\\t\22, \22\\n\22, \22\\r\22], [\22\\\\\\\\\22, \22\\\\t\22, \22\\\\n\22, \22\\\\r\22], $text);\0A}\0A\0Afunction _apo_ir_parse_line($line) {\0A    $fields = [];\0A    $current = '';\0A    $escaping = false;\0A    $length = strlen($line);\0A    for ($index = 0; $index < $length; $index += 1) {\0A        $ch = $line[$index];\0A        if ($escaping) {\0A            if ($ch === 'n') $current .= \22\\n\22;\0A            else if ($ch === 'r') $current .= \22\\r\22;\0A            else if ($ch === 't') $current .= \22\\t\22;\0A            else $current .= $ch;\0A            $escaping = false;\0A            continue;\0A        }\0A        if ($ch === '\\\\') { $escaping = true; continue; }\0A        if ($ch === \22\\t\22) { $fields[] = $current; $current = ''; continue; }\0A        $current .= $ch;\0A    }\0A    if ($escaping) $current .= '\\\\';\0A    $fields[] = $current;\0A    return $fields;\0A}\0A\0Afunction async_write($kind, $name, $typeName, $payload, $sourceLang = 'php') {\0A    if (!is_dir('output')) mkdir('output', 0777, true);\0A    $record = implode(\22\\t\22, [_apo_ir_escape($kind), _apo_ir_escape($name), _apo_ir_escape($typeName), _apo_ir_escape($sourceLang), _apo_ir_escape($payload)]) . PHP_EOL;\0A    file_put_contents('output/apo_ir.txt', $record, FILE_APPEND);\0A}\0A\0Afunction async_read($kindOrName, $maybeName = null) {\0A    $kind = $maybeName === null ? '' : (string)$kindOrName;\0A    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;\0A    if (!file_exists('output/apo_ir.txt')) return '';\0A    $lines = file('output/apo_ir.txt', FILE_IGNORE_NEW_LINES);\0A    for ($index = count($lines) - 1; $index >= 0; $index -= 1) {\0A        $line = $lines[$index];\0A        if ($line === '') continue;\0A        $fields = _apo_ir_parse_line($line);\0A        if (count($fields) < 5) continue;\0A        if ($kind !== '' && $fields[0] !== $kind) continue;\0A        if ($fields[1] !== $name) continue;\0A        return $fields[4];\0A    }\0A    return '';\0A}\0A\0Afunction async_exec($kindOrName, $maybeName = null) {\0A    $kind = $maybeName === null ? '' : (string)$kindOrName;\0A    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;\0A    $command = PHP_OS_FAMILY === 'Windows'\0A        ? 'powershell -NoProfile -ExecutionPolicy Bypass -File ' . escapeshellarg('output/apo_ir_exec.ps1') . ' ' . escapeshellarg($kind) . ' ' . escapeshellarg($name)\0A        : 'sh ' . escapeshellarg('output/apo_ir_exec.sh') . ' ' . escapeshellarg($kind) . ' ' . escapeshellarg($name);\0A    passthru($command, $exitCode);\0A    return $exitCode;\0A}\0A\00", align 1
@.str.77 = private unnamed_addr constant [1891 x i8] c"require 'fileutils'\0Arequire 'rbconfig'\0A\0Adef __apo_ir_escape(value)\0A  text = value.nil? ? '' : value.to_s\0A  text.gsub('\\\\', '\\\\\\\\').gsub(\22\\t\22, '\\\\t').gsub(\22\\n\22, '\\\\n').gsub(\22\\r\22, '\\\\r')\0Aend\0A\0Adef __apo_ir_parse_line(line)\0A  fields = []\0A  current = ''\0A  escaping = false\0A  line.each_char do |ch|\0A    if escaping\0A      current << case ch when 'n' then \22\\n\22 when 'r' then \22\\r\22 when 't' then \22\\t\22 else ch end\0A      escaping = false\0A      next\0A    end\0A    if ch == '\\\\'\0A      escaping = true\0A      next\0A    end\0A    if ch == \22\\t\22\0A      fields << current\0A      current = ''\0A      next\0A    end\0A    current << ch\0A  end\0A  current << '\\\\' if escaping\0A  fields << current\0A  fields\0Aend\0A\0Adef async_write(kind, name, type_name, payload, source_lang = 'rb')\0A  FileUtils.mkdir_p('output')\0A  record = [kind, name, type_name, source_lang, payload].map { |value| __apo_ir_escape(value) }.join(\22\\t\22) + \22\\n\22\0A  File.open('output/apo_ir.txt', 'a:utf-8') { |file| file.write(record) }\0Aend\0A\0Adef async_read(kind_or_name, name = nil)\0A  kind = name.nil? ? '' : kind_or_name.to_s\0A  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s\0A  return '' unless File.exist?('output/apo_ir.txt')\0A  File.readlines('output/apo_ir.txt', chomp: true).reverse_each do |line|\0A    next if line.empty?\0A    fields = __apo_ir_parse_line(line)\0A    next if fields.length < 5\0A    next unless kind.empty? || fields[0] == kind\0A    next unless fields[1] == symbol_name\0A    return fields[4]\0A  end\0A  ''\0Aend\0A\0Adef async_exec(kind_or_name, name = nil)\0A  kind = name.nil? ? '' : kind_or_name.to_s\0A  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s\0A    if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/i\0A        system('powershell', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'output/apo_ir_exec.ps1', kind, symbol_name)\0A    else\0A        system('sh', 'output/apo_ir_exec.sh', kind, symbol_name)\0A    end\0A  $?.exitstatus || -1\0Aend\0A\00", align 1
@.str.78 = private unnamed_addr constant [2656 x i8] c"import java.nio.charset.StandardCharsets\0Aimport java.nio.file.Files\0Aimport java.nio.file.Paths\0Aimport java.nio.file.StandardOpenOption\0A\0Afun apoIrEscape(value: String?): String {\0A    val text = value ?: \22\22\0A    return text.replace(\22\\\\\22, \22\\\\\\\\\22).replace(\22\\t\22, \22\\\\t\22).replace(\22\\n\22, \22\\\\n\22).replace(\22\\r\22, \22\\\\r\22)\0A}\0A\0Afun apoIrParseLine(line: String): List<String> {\0A    val fields = mutableListOf<String>()\0A    val current = StringBuilder()\0A    var escaping = false\0A    for (ch in line) {\0A        if (escaping) {\0A            when (ch) {\0A                'n' -> current.append('\\n')\0A                'r' -> current.append('\\r')\0A                't' -> current.append('\\t')\0A                else -> current.append(ch)\0A            }\0A            escaping = false\0A            continue\0A        }\0A        if (ch == '\\\\') { escaping = true; continue }\0A        if (ch == '\\t') { fields += current.toString(); current.setLength(0); continue }\0A        current.append(ch)\0A    }\0A    if (escaping) current.append('\\\\')\0A    fields += current.toString()\0A    return fields\0A}\0A\0Afun async_write(kind: String, name: String, typeName: String, payload: String, sourceLang: String = \22kt\22) {\0A    val irPath = Paths.get(\22output\22, \22apo_ir.txt\22)\0A    Files.createDirectories(irPath.parent)\0A    val record = listOf(kind, name, typeName, sourceLang, payload).joinToString(\22\\t\22) { apoIrEscape(it) } + System.lineSeparator()\0A    Files.write(irPath, record.toByteArray(StandardCharsets.UTF_8), StandardOpenOption.CREATE, StandardOpenOption.APPEND)\0A}\0A\0Afun async_read(name: String): String = async_read(\22\22, name)\0A\0Afun async_read(kind: String, name: String): String {\0A    val irPath = Paths.get(\22output\22, \22apo_ir.txt\22)\0A    if (!Files.exists(irPath)) return \22\22\0A    val lines = Files.readAllLines(irPath, StandardCharsets.UTF_8)\0A    for (index in lines.indices.reversed()) {\0A        val line = lines[index]\0A        if (line.isEmpty()) continue\0A        val fields = apoIrParseLine(line)\0A        if (fields.size < 5) continue\0A        if (kind.isNotEmpty() && fields[0] != kind) continue\0A        if (fields[1] != name) continue\0A        return fields[4]\0A    }\0A    return \22\22\0A}\0A\0Afun async_exec(name: String): Int = async_exec(\22\22, name)\0A\0Afun async_exec(kind: String, name: String): Int {\0A    val isWindows = System.getProperty(\22os.name\22, \22\22).lowercase().contains(\22win\22)\0A    val command = if (isWindows) {\0A        listOf(\22powershell\22, \22-NoProfile\22, \22-ExecutionPolicy\22, \22Bypass\22, \22-File\22, \22output/apo_ir_exec.ps1\22, kind, name)\0A    } else {\0A        listOf(\22sh\22, \22output/apo_ir_exec.sh\22, kind, name)\0A    }\0A    val process = ProcessBuilder(command)\0A        .inheritIO()\0A        .start()\0A    return process.waitFor()\0A}\0A\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"sys.println(\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"sys.print(\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"nconst\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"unsupported Apollo payload assignment target: \00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"unsupported Apollo payload expression: \00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"unsupported Apollo payload statement: \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.95 = private unnamed_addr constant [12 x i8] c"sys.stdin()\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.96 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"stoll\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"mono \00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c" || python \00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"python3 \00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN20__apo_phase3_runtime8instanceEvE7runtime = linkonce_odr dso_local global %class.__apo_phase3_runtime zeroinitializer, comdat, align 8
@_ZGVZN20__apo_phase3_runtime8instanceEvE7runtime = linkonce_odr dso_local global i64 0, comdat, align 8
@.str.112 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_output.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !15
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #26
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !llvm.loop !16

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !5
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %2, %1 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef nonnull %22) #26
  br label %25

25:                                               ; preds = %21, %24
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %4, ptr %2, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 7, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds i8, ptr %2, i64 23
  store i8 0, ptr %6, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %7, ptr %3, align 8, !tbaa !18, !alias.scope !20
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !15, !alias.scope !20
  store i8 0, ptr %7, align 8, !tbaa !19, !alias.scope !20
  %9 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
          to label %10 unwind label %36

10:                                               ; preds = %0
  %11 = load ptr, ptr %9, align 8, !tbaa !23
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %9, i64 %13
  %15 = getelementptr inbounds %"class.std::basic_ios", ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %19 unwind label %36

19:                                               ; preds = %18
  unreachable

20:                                               ; preds = %10
  %21 = getelementptr inbounds %"class.std::ctype", ptr %16, i64 0, i32 8
  %22 = load i8, ptr %21, align 8, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.std::ctype", ptr %16, i64 0, i32 9, i64 10
  %26 = load i8, ptr %25, align 1, !tbaa !19
  br label %33

27:                                               ; preds = %20
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
          to label %28 unwind label %36

28:                                               ; preds = %27
  %29 = load ptr, ptr %16, align 8, !tbaa !23
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
          to label %33 unwind label %36

33:                                               ; preds = %28, %24
  %34 = phi i8 [ %26, %24 ], [ %32, %28 ]
  %35 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %34)
          to label %44 unwind label %36

36:                                               ; preds = %33, %28, %27, %18, %0
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = load ptr, ptr %3, align 8, !tbaa !11, !alias.scope !20
  %39 = icmp eq ptr %38, %7
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, ptr %8, align 8, !tbaa !15, !alias.scope !20
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  br label %91

43:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %38) #26
  br label %91

44:                                               ; preds = %33
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %45 unwind label %72

45:                                               ; preds = %44
  %46 = load ptr, ptr %1, align 8
  %47 = getelementptr inbounds i8, ptr %1, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !15
  invoke fastcc void @_ZL16__apo_runPayloadRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %46, i64 %48)
          to label %49 unwind label %74

49:                                               ; preds = %45
  %50 = load ptr, ptr %1, align 8, !tbaa !11
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, ptr %47, align 8, !tbaa !15
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %57

56:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #26
  br label %57

57:                                               ; preds = %53, %56
  %58 = load ptr, ptr %3, align 8, !tbaa !11
  %59 = icmp eq ptr %58, %7
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, ptr %8, align 8, !tbaa !15
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %57
  call void @_ZdlPv(ptr noundef %58) #26
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %65 = load ptr, ptr %2, align 8, !tbaa !11
  %66 = icmp eq ptr %65, %4
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, ptr %5, align 8, !tbaa !15
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %64
  call void @_ZdlPv(ptr noundef %65) #26
  br label %71

71:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #27
  ret i32 0

72:                                               ; preds = %44
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %83

74:                                               ; preds = %45
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = load ptr, ptr %1, align 8, !tbaa !11
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, ptr %47, align 8, !tbaa !15
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %83

82:                                               ; preds = %74
  call void @_ZdlPv(ptr noundef %76) #26
  br label %83

83:                                               ; preds = %82, %79, %72
  %84 = phi { ptr, i32 } [ %73, %72 ], [ %75, %79 ], [ %75, %82 ]
  %85 = load ptr, ptr %3, align 8, !tbaa !11
  %86 = icmp eq ptr %85, %7
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, ptr %8, align 8, !tbaa !15
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %85) #26
  br label %91

91:                                               ; preds = %90, %87, %43, %40
  %92 = phi { ptr, i32 } [ %37, %43 ], [ %37, %40 ], [ %84, %87 ], [ %84, %90 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %93 = load ptr, ptr %2, align 8, !tbaa !11
  %94 = icmp eq ptr %93, %4
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %5, align 8, !tbaa !15
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %93) #26
  br label %99

99:                                               ; preds = %98, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #27
  resume { ptr, i32 } %92
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = add i64 %7, %5
  %9 = load ptr, ptr %1, align 8, !tbaa !11
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = icmp ult i64 %5, 16
  tail call void @llvm.assume(i1 %13)
  br label %14

14:                                               ; preds = %3, %12
  %15 = load i64, ptr %10, align 8
  %16 = select i1 %11, i64 15, i64 %15
  %17 = icmp ugt i64 %8, %16
  %18 = load ptr, ptr %2, align 8, !tbaa !11
  br i1 %17, label %19, label %45

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %23)
  br label %24

24:                                               ; preds = %19, %22
  %25 = load i64, ptr %20, align 8
  %26 = select i1 %21, i64 15, i64 %25
  %27 = icmp ugt i64 %8, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %9, i64 noundef %5)
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %30, ptr %0, align 8, !tbaa !18
  %31 = load ptr, ptr %29, align 8, !tbaa !11
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !15
  %37 = icmp ult i64 %36, 16
  tail call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %36, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %38, i1 false)
  br label %41

39:                                               ; preds = %28
  store ptr %31, ptr %0, align 8, !tbaa !11
  %40 = load i64, ptr %32, align 8, !tbaa !19
  store i64 %40, ptr %30, align 8, !tbaa !19
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !15
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !15
  store ptr %32, ptr %29, align 8, !tbaa !11
  br label %78

45:                                               ; preds = %24, %14
  %46 = sub i64 9223372036854775807, %5
  %47 = icmp ult i64 %46, %7
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
  unreachable

49:                                               ; preds = %45
  br i1 %11, label %50, label %52

50:                                               ; preds = %49
  %51 = icmp ult i64 %5, 16
  tail call void @llvm.assume(i1 %51)
  br label %52

52:                                               ; preds = %50, %49
  br i1 %17, label %61, label %53

53:                                               ; preds = %52
  %54 = icmp eq i64 %7, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, ptr %9, i64 %5
  %57 = icmp eq i64 %7, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8, ptr %18, align 1, !tbaa !19
  store i8 %59, ptr %56, align 1, !tbaa !19
  br label %62

60:                                               ; preds = %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %18, i64 %7, i1 false)
  br label %62

61:                                               ; preds = %52
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %5, i64 noundef 0, ptr noundef %18, i64 noundef %7)
  br label %62

62:                                               ; preds = %53, %58, %60, %61
  store i64 %8, ptr %4, align 8, !tbaa !15
  %63 = load ptr, ptr %1, align 8, !tbaa !11
  %64 = getelementptr inbounds i8, ptr %63, i64 %8
  store i8 0, ptr %64, align 1, !tbaa !19
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %65, ptr %0, align 8, !tbaa !18
  %66 = load ptr, ptr %1, align 8, !tbaa !11
  %67 = icmp eq ptr %66, %10
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, ptr %4, align 8, !tbaa !15
  %70 = icmp ult i64 %69, 16
  tail call void @llvm.assume(i1 %70)
  %71 = add nuw nsw i64 %69, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %65, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %71, i1 false)
  br label %75

72:                                               ; preds = %62
  store ptr %66, ptr %0, align 8, !tbaa !11
  %73 = load i64, ptr %10, align 8, !tbaa !19
  store i64 %73, ptr %65, align 8, !tbaa !19
  %74 = load i64, ptr %4, align 8, !tbaa !15
  br label %75

75:                                               ; preds = %68, %72
  %76 = phi i64 [ %69, %68 ], [ %74, %72 ]
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %76, ptr %77, align 8, !tbaa !15
  store ptr %10, ptr %1, align 8, !tbaa !11
  br label %78

78:                                               ; preds = %41, %75
  %79 = phi ptr [ %42, %41 ], [ %4, %75 ]
  %80 = phi ptr [ %32, %41 ], [ %10, %75 ]
  store i64 0, ptr %79, align 8, !tbaa !15
  store i8 0, ptr %80, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = icmp slt i64 %8, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

13:                                               ; preds = %10
  %14 = add nuw i64 %8, 1
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17, !prof !37

16:                                               ; preds = %13
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

17:                                               ; preds = %13
  %18 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %14) #29
  store ptr %18, ptr %0, align 8, !tbaa !11
  store i64 %8, ptr %4, align 8, !tbaa !19
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi ptr [ %18, %17 ], [ %4, %7 ]
  switch i64 %8, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %22, ptr %20, align 1, !tbaa !19
  br label %24

23:                                               ; preds = %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %1, i64 %8, i1 false)
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %8, ptr %25, align 8, !tbaa !15
  %26 = getelementptr inbounds i8, ptr %20, i64 %8
  store i8 0, ptr %26, align 1, !tbaa !19
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #27
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(7) %1, i8 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !18
  %6 = icmp ugt i64 %4, 15
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp slt i64 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

10:                                               ; preds = %7
  %11 = add nuw i64 %4, 1
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14, !prof !37

13:                                               ; preds = %10
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

14:                                               ; preds = %10
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #29
  store ptr %15, ptr %0, align 8, !tbaa !11
  store i64 %4, ptr %5, align 8, !tbaa !19
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %5, %3 ]
  switch i64 %4, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %19, ptr %17, align 1, !tbaa !19
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %4, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %4, ptr %22, align 8, !tbaa !15
  %23 = getelementptr inbounds i8, ptr %17, i64 %4
  store i8 0, ptr %23, align 1, !tbaa !19
  %24 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %0, i64 0, i32 1
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %25 unwind label %27

25:                                               ; preds = %21
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %26 unwind label %29

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %24, align 8, !tbaa !38
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull %31) #27
  br label %34

34:                                               ; preds = %29, %33
  store ptr null, ptr %24, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi { ptr, i32 } [ %30, %34 ], [ %28, %27 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !11
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, ptr %22, align 8, !tbaa !15
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %43

42:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %37) #26
  br label %43

43:                                               ; preds = %42, %39
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %3) #27
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !38
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %15

15:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #0 align 2

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #14

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %4 = alloca %"class.std::basic_ofstream", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i8 noundef zeroext 2)
  %5 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %6 unwind label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull %8) #27
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !38
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %11
  call void @_ZdlPv(ptr noundef %12) #26
  br label %20

20:                                               ; preds = %15, %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #27
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 32)
  %21 = load ptr, ptr %1, align 8, !tbaa !11
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %21, i64 noundef %23)
          to label %25 unwind label %28

25:                                               ; preds = %20
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #27
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #27
  ret void

26:                                               ; preds = %2
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  br label %30

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #27
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #27
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  resume { ptr, i32 } %31
}

; Function Attrs: nounwind
declare void @_ZNSt10filesystem11permissionsERKNS_7__cxx114pathENS_5permsENS_12perm_optionsERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA22_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, i8 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !18
  %6 = icmp ugt i64 %4, 15
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp slt i64 %4, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

10:                                               ; preds = %7
  %11 = add nuw i64 %4, 1
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14, !prof !37

13:                                               ; preds = %10
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

14:                                               ; preds = %10
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #29
  store ptr %15, ptr %0, align 8, !tbaa !11
  store i64 %4, ptr %5, align 8, !tbaa !19
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %5, %3 ]
  switch i64 %4, label %20 [
    i64 1, label %18
    i64 0, label %21
  ]

18:                                               ; preds = %16
  %19 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %19, ptr %17, align 1, !tbaa !19
  br label %21

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull align 1 %1, i64 %4, i1 false)
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %4, ptr %22, align 8, !tbaa !15
  %23 = getelementptr inbounds i8, ptr %17, i64 %4
  store i8 0, ptr %23, align 1, !tbaa !19
  %24 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %0, i64 0, i32 1
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %25 unwind label %27

25:                                               ; preds = %21
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %26 unwind label %29

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %24, align 8, !tbaa !38
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull %31) #27
  br label %34

34:                                               ; preds = %29, %33
  store ptr null, ptr %24, align 8, !tbaa !38
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi { ptr, i32 } [ %30, %34 ], [ %28, %27 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !11
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, ptr %22, align 8, !tbaa !15
  %41 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %41)
  br label %43

42:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %37) #26
  br label %43

43:                                               ; preds = %42, %39
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #15

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL16__apo_runPayloadRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = alloca %"class.std::allocator.2", align 1
  %6 = alloca %"class.std::allocator.2", align 1
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::vector", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::vector", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %struct.__apo_apollo_payload_value, align 8
  %18 = alloca %struct.__apo_apollo_payload_value, align 8
  %19 = alloca %"class.std::unordered_map", align 8
  %20 = alloca %"class.std::vector", align 8
  %21 = alloca %"class.std::allocator.2", align 1
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca %"class.std::__cxx11::basic_string", align 8
  %35 = alloca %"class.std::__cxx11::basic_string", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca %"class.std::allocator.2", align 1
  %38 = alloca %"class.std::__cxx11::basic_string", align 8
  %39 = alloca %"class.std::__cxx11::basic_string", align 8
  %40 = alloca %"class.std::__cxx11::basic_string", align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::__cxx11::basic_string", align 8
  %43 = alloca %"class.std::__cxx11::basic_string", align 8
  %44 = alloca %"class.std::__cxx11::basic_string", align 8
  %45 = alloca %"class.std::__cxx11::basic_string", align 8
  %46 = alloca %"class.std::__cxx11::basic_string", align 8
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca %"class.std::__cxx11::basic_string", align 8
  %49 = alloca %"class.std::__cxx11::basic_string", align 8
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca %"class.std::__cxx11::basic_string", align 8
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  %53 = alloca %"class.std::__cxx11::basic_string", align 8
  %54 = alloca %"class.std::__cxx11::basic_string", align 8
  %55 = alloca %"class.std::__cxx11::basic_string", align 8
  %56 = alloca %"class.std::__cxx11::basic_string", align 8
  %57 = alloca %"class.std::__cxx11::basic_string", align 8
  %58 = alloca %"class.std::__cxx11::basic_string", align 8
  %59 = alloca %"class.std::__cxx11::basic_string", align 8
  %60 = alloca %"class.std::__cxx11::basic_string", align 8
  %61 = alloca %"class.std::__cxx11::basic_string", align 8
  %62 = alloca %"class.std::__cxx11::basic_string", align 8
  %63 = alloca %"class.std::__cxx11::basic_string", align 8
  %64 = alloca %"class.std::__cxx11::basic_string", align 8
  %65 = alloca %"class.std::__cxx11::basic_string", align 8
  %66 = alloca %"class.std::__cxx11::basic_string", align 8
  %67 = alloca %"class.std::__cxx11::basic_string", align 8
  %68 = alloca %"class.std::__cxx11::basic_string", align 8
  %69 = alloca %"class.std::__cxx11::basic_string", align 8
  %70 = alloca %"class.std::__cxx11::basic_string", align 8
  %71 = alloca %"class.std::__cxx11::basic_string", align 8
  %72 = alloca %"class.std::__cxx11::basic_string", align 8
  %73 = alloca %"class.std::__cxx11::basic_string", align 8
  %74 = alloca %"class.std::__cxx11::basic_string", align 8
  %75 = alloca %"class.std::__cxx11::basic_string", align 8
  %76 = alloca %"class.std::__cxx11::basic_string", align 8
  %77 = alloca %"class.std::__cxx11::basic_string", align 8
  %78 = alloca %"class.std::__cxx11::basic_string", align 8
  %79 = alloca %"class.std::__cxx11::basic_string", align 8
  %80 = alloca %"class.std::__cxx11::basic_string", align 8
  %81 = alloca %"class.std::allocator.2", align 1
  %82 = alloca %"class.std::__cxx11::basic_string", align 8
  %83 = alloca %"class.std::allocator.2", align 1
  %84 = alloca %"class.std::__cxx11::basic_string", align 8
  %85 = alloca %"class.std::allocator.2", align 1
  %86 = alloca %"class.std::__cxx11::basic_string", align 8
  %87 = alloca %"class.std::__cxx11::basic_string", align 8
  %88 = alloca %"class.std::__cxx11::basic_string", align 8
  %89 = alloca %"class.std::__cxx11::basic_string", align 8
  %90 = alloca %"class.std::allocator.2", align 1
  %91 = alloca %"class.std::__cxx11::basic_string", align 8
  %92 = alloca %"class.std::__cxx11::basic_string", align 8
  %93 = alloca %"class.std::allocator.2", align 1
  %94 = alloca %"class.std::__cxx11::basic_string", align 8
  %95 = alloca %"class.std::__cxx11::basic_string", align 8
  %96 = alloca %"class.std::allocator.2", align 1
  %97 = alloca %"class.std::__cxx11::basic_string", align 8
  %98 = alloca %"class.std::allocator.2", align 1
  %99 = alloca %"class.std::__cxx11::basic_string", align 8
  %100 = alloca %"class.std::allocator.2", align 1
  %101 = alloca %"class.std::__cxx11::basic_string", align 8
  %102 = alloca %"class.std::allocator.2", align 1
  %103 = alloca %"class.std::__cxx11::basic_string", align 8
  %104 = alloca %"class.std::allocator.2", align 1
  %105 = alloca %"class.std::__cxx11::basic_string", align 8
  %106 = alloca %"class.std::__cxx11::basic_string", align 8
  %107 = alloca %"class.std::__cxx11::basic_string", align 8
  %108 = alloca %"class.std::__cxx11::basic_string", align 8
  %109 = alloca %"class.std::allocator.2", align 1
  %110 = alloca %"class.std::__cxx11::basic_string", align 8
  %111 = alloca %"class.std::__cxx11::basic_string", align 8
  %112 = alloca %"class.std::__cxx11::basic_string", align 8
  %113 = alloca %"class.std::allocator.2", align 1
  %114 = alloca %"class.std::__cxx11::basic_string", align 8
  %115 = alloca %"class.std::allocator.2", align 1
  %116 = alloca %"class.std::__cxx11::basic_string", align 8
  %117 = alloca %"class.std::allocator.2", align 1
  %118 = icmp eq i64 %1, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %2
  %120 = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %1) #27
  %121 = icmp eq ptr %120, null
  %122 = ptrtoint ptr %120 to i64
  %123 = ptrtoint ptr %0 to i64
  %124 = sub i64 %122, %123
  %125 = icmp eq i64 %124, -1
  %126 = select i1 %121, i1 true, i1 %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %119, %2
  %128 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 23)
  %129 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %130 = getelementptr i8, ptr %129, i64 -24
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %131
  %133 = getelementptr inbounds %"class.std::basic_ios", ptr %132, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !25
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

137:                                              ; preds = %127
  %138 = getelementptr inbounds %"class.std::ctype", ptr %134, i64 0, i32 8
  %139 = load i8, ptr %138, align 8, !tbaa !34
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.std::ctype", ptr %134, i64 0, i32 9, i64 10
  %143 = load i8, ptr %142, align 1, !tbaa !19
  br label %149

144:                                              ; preds = %137
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %134)
  %145 = load ptr, ptr %134, align 8, !tbaa !23
  %146 = getelementptr inbounds ptr, ptr %145, i64 6
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef signext i8 %147(ptr noundef nonnull align 8 dereferenceable(570) %134, i8 noundef signext 10)
  br label %149

149:                                              ; preds = %141, %144
  %150 = phi i8 [ %143, %141 ], [ %148, %144 ]
  %151 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %150)
  %152 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %151)
  br label %3555

153:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %54) #27
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 0, i32 2
  store ptr %154, ptr %54, align 8, !tbaa !18, !alias.scope !39
  %155 = call noundef i64 @llvm.umin.i64(i64 %1, i64 %124)
  %156 = icmp ugt i64 %155, 15
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = icmp slt i64 %155, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

160:                                              ; preds = %157
  %161 = add nuw i64 %155, 1
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164, !prof !37

163:                                              ; preds = %160
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

164:                                              ; preds = %160
  %165 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %161) #29
  store ptr %165, ptr %54, align 8, !tbaa !11, !alias.scope !39
  store i64 %155, ptr %154, align 8, !tbaa !19, !alias.scope !39
  br label %166

166:                                              ; preds = %164, %153
  %167 = phi ptr [ %165, %164 ], [ %154, %153 ]
  switch i64 %155, label %170 [
    i64 1, label %168
    i64 0, label %171
  ]

168:                                              ; preds = %166
  %169 = load i8, ptr %0, align 1, !tbaa !19
  store i8 %169, ptr %167, align 1, !tbaa !19
  br label %171

170:                                              ; preds = %166
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %167, ptr align 1 %0, i64 %155, i1 false)
  br label %171

171:                                              ; preds = %166, %168, %170
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %54, i64 0, i32 1
  store i64 %155, ptr %172, align 8, !tbaa !15, !alias.scope !39
  %173 = getelementptr inbounds i8, ptr %167, i64 %155
  store i8 0, ptr %173, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %55) #27
  %174 = add nuw i64 %124, 1
  %175 = icmp ult i64 %124, %1
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i64 noundef %174, i64 noundef %1) #28
          to label %177 unwind label %2236

177:                                              ; preds = %176
  unreachable

178:                                              ; preds = %171
  %179 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 2
  store ptr %179, ptr %55, align 8, !tbaa !18, !alias.scope !42
  %180 = getelementptr inbounds i8, ptr %0, i64 %174
  %181 = sub i64 %1, %174
  %182 = icmp ugt i64 %181, 15
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = icmp slt i64 %181, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %186 unwind label %2236

186:                                              ; preds = %185
  unreachable

187:                                              ; preds = %183
  %188 = add nuw i64 %181, 1
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %192, !prof !37

190:                                              ; preds = %187
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %191 unwind label %2236

191:                                              ; preds = %190
  unreachable

192:                                              ; preds = %187
  %193 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %188) #29
          to label %194 unwind label %2236

194:                                              ; preds = %192
  store ptr %193, ptr %55, align 8, !tbaa !11, !alias.scope !42
  store i64 %181, ptr %179, align 8, !tbaa !19, !alias.scope !42
  br label %195

195:                                              ; preds = %194, %178
  %196 = phi ptr [ %193, %194 ], [ %179, %178 ]
  switch i64 %181, label %199 [
    i64 1, label %197
    i64 0, label %200
  ]

197:                                              ; preds = %195
  %198 = load i8, ptr %180, align 1, !tbaa !19
  store i8 %198, ptr %196, align 1, !tbaa !19
  br label %200

199:                                              ; preds = %195
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %196, ptr nonnull align 1 %180, i64 %181, i1 false)
  br label %200

200:                                              ; preds = %199, %197, %195
  %201 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %55, i64 0, i32 1
  store i64 %181, ptr %201, align 8, !tbaa !15, !alias.scope !42
  %202 = getelementptr inbounds i8, ptr %196, i64 %181
  store i8 0, ptr %202, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %56) #27
  %203 = load ptr, ptr %55, align 8, !tbaa !11
  %204 = load i64, ptr %201, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %45)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #27, !noalias !45
  %205 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 2
  store ptr %205, ptr %22, align 8, !tbaa !18, !noalias !45
  %206 = icmp ugt i64 %204, 15
  br i1 %206, label %207, label %219

207:                                              ; preds = %200
  %208 = icmp slt i64 %204, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %207
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %210 unwind label %2238

210:                                              ; preds = %209
  unreachable

211:                                              ; preds = %207
  %212 = add nuw i64 %204, 1
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %216, !prof !37

214:                                              ; preds = %211
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %215 unwind label %2238

215:                                              ; preds = %214
  unreachable

216:                                              ; preds = %211
  %217 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %212) #29
          to label %218 unwind label %2238

218:                                              ; preds = %216
  store ptr %217, ptr %22, align 8, !tbaa !11, !noalias !45
  store i64 %204, ptr %205, align 8, !tbaa !19, !noalias !45
  br label %219

219:                                              ; preds = %218, %200
  %220 = phi ptr [ %217, %218 ], [ %205, %200 ]
  switch i64 %204, label %223 [
    i64 1, label %221
    i64 0, label %224
  ]

221:                                              ; preds = %219
  %222 = load i8, ptr %203, align 1, !tbaa !19, !noalias !45
  store i8 %222, ptr %220, align 1, !tbaa !19
  br label %224

223:                                              ; preds = %219
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %220, ptr align 1 %203, i64 %204, i1 false)
  br label %224

224:                                              ; preds = %223, %221, %219
  %225 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 1
  store i64 %204, ptr %225, align 8, !tbaa !15, !noalias !45
  %226 = getelementptr inbounds i8, ptr %220, i64 %204
  store i8 0, ptr %226, align 1, !tbaa !19
  %227 = load i64, ptr %172, align 8, !tbaa !15
  switch i64 %227, label %1539 [
    i64 3, label %228
    i64 2, label %410
    i64 4, label %513
  ]

228:                                              ; preds = %224
  %229 = load ptr, ptr %54, align 8, !tbaa !11
  %230 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %229, ptr noundef nonnull dereferenceable(3) @.str.14, i64 3)
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %1136

232:                                              ; preds = %228
  %233 = load i64, ptr %225, align 8, !tbaa !15, !noalias !45
  %234 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !45
  %235 = icmp ult i64 %233, 8
  br i1 %235, label %258, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %234, i64 %233
  %238 = ptrtoint ptr %237 to i64
  br label %239

239:                                              ; preds = %248, %236
  %240 = phi i64 [ %233, %236 ], [ %251, %248 ]
  %241 = phi ptr [ %234, %236 ], [ %249, %248 ]
  %242 = add i64 %240, -7
  %243 = call ptr @memchr(ptr noundef %241, i32 noundef 35, i64 noundef %242) #27
  %244 = icmp eq ptr %243, null
  br i1 %244, label %258, label %245

245:                                              ; preds = %239
  %246 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %243, ptr noundef nonnull dereferenceable(8) @.str.61, i64 8)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, ptr %243, i64 1
  %250 = ptrtoint ptr %249 to i64
  %251 = sub i64 %238, %250
  %252 = icmp ult i64 %251, 8
  br i1 %252, label %258, label %239, !llvm.loop !48

253:                                              ; preds = %245
  %254 = ptrtoint ptr %243 to i64
  %255 = ptrtoint ptr %234 to i64
  %256 = sub i64 %254, %255
  %257 = icmp eq i64 %256, -1
  br i1 %257, label %258, label %311

258:                                              ; preds = %248, %239, %253, %232
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #27, !noalias !49
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull @.str.62, i64 noundef 21, ptr noundef %234, i64 noundef %233, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %259 unwind label %309

259:                                              ; preds = %258
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #27, !noalias !49
  %260 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !45
  %261 = icmp eq ptr %260, %205
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i64, ptr %225, align 8, !tbaa !15, !noalias !45
  %264 = icmp ult i64 %263, 16
  call void @llvm.assume(i1 %264)
  %265 = load ptr, ptr %23, align 8, !tbaa !11, !noalias !45
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %267 = icmp eq ptr %265, %266
  br i1 %267, label %272, label %285

268:                                              ; preds = %259
  %269 = load ptr, ptr %23, align 8, !tbaa !11, !noalias !45
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %272, label %288

272:                                              ; preds = %268, %262
  %273 = phi ptr [ %269, %268 ], [ %266, %262 ]
  %274 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !15, !noalias !45
  %276 = icmp ult i64 %275, 16
  call void @llvm.assume(i1 %276)
  switch i64 %275, label %279 [
    i64 0, label %280
    i64 1, label %277
  ]

277:                                              ; preds = %272
  %278 = load i8, ptr %273, align 1, !tbaa !19
  store i8 %278, ptr %260, align 1, !tbaa !19
  br label %280

279:                                              ; preds = %272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %273, i64 %275, i1 false)
  br label %280

280:                                              ; preds = %279, %277, %272
  %281 = load i64, ptr %274, align 8, !tbaa !15, !noalias !45
  store i64 %281, ptr %225, align 8, !tbaa !15, !noalias !45
  %282 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !45
  %283 = getelementptr inbounds i8, ptr %282, i64 %281
  store i8 0, ptr %283, align 1, !tbaa !19
  %284 = load ptr, ptr %23, align 8, !tbaa !11, !noalias !45
  br label %296

285:                                              ; preds = %262
  store ptr %265, ptr %22, align 8, !tbaa !11, !noalias !45
  %286 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %287 = load <2 x i64>, ptr %286, align 8, !tbaa !19, !noalias !45
  store <2 x i64> %287, ptr %225, align 8, !tbaa !19, !noalias !45
  br label %294

288:                                              ; preds = %268
  %289 = load i64, ptr %205, align 8, !tbaa !19, !noalias !45
  store ptr %269, ptr %22, align 8, !tbaa !11, !noalias !45
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %291 = load <2 x i64>, ptr %290, align 8, !tbaa !19, !noalias !45
  store <2 x i64> %291, ptr %225, align 8, !tbaa !19, !noalias !45
  %292 = icmp eq ptr %260, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %288
  store ptr %260, ptr %23, align 8, !tbaa !11, !noalias !45
  store i64 %289, ptr %270, align 8, !tbaa !19, !noalias !45
  br label %296

294:                                              ; preds = %288, %285
  %295 = phi ptr [ %266, %285 ], [ %270, %288 ]
  store ptr %295, ptr %23, align 8, !tbaa !11, !noalias !45
  br label %296

296:                                              ; preds = %294, %293, %280
  %297 = phi ptr [ %284, %280 ], [ %260, %293 ], [ %295, %294 ]
  %298 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  store i64 0, ptr %298, align 8, !tbaa !15, !noalias !45
  store i8 0, ptr %297, align 1, !tbaa !19
  %299 = load ptr, ptr %23, align 8, !tbaa !11, !noalias !45
  %300 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %301 = icmp eq ptr %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %296
  %303 = load i64, ptr %298, align 8, !tbaa !15, !noalias !45
  %304 = icmp ult i64 %303, 16
  call void @llvm.assume(i1 %304)
  br label %306

305:                                              ; preds = %296
  call void @_ZdlPv(ptr noundef %299) #26
  br label %306

306:                                              ; preds = %305, %302
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27, !noalias !45
  br label %311

307:                                              ; preds = %1539
  %308 = landingpad { ptr, i32 }
          cleanup
  br label %1547

309:                                              ; preds = %258
  %310 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27, !noalias !45
  br label %1547

311:                                              ; preds = %306, %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 2
  %313 = invoke noalias noundef nonnull dereferenceable(2914) ptr @_Znwm(i64 noundef 2914) #29
          to label %314 unwind label %387

314:                                              ; preds = %311
  store ptr %313, ptr %25, align 8, !tbaa !11, !alias.scope !52, !noalias !45
  store i64 2913, ptr %312, align 8, !tbaa !19, !alias.scope !52, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2913) %313, ptr noundef nonnull align 1 dereferenceable(2913) @.str.67, i64 2913, i1 false), !noalias !52
  %315 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 1
  store i64 2913, ptr %315, align 8, !tbaa !15, !alias.scope !52, !noalias !45
  %316 = getelementptr inbounds i8, ptr %313, i64 2913
  store i8 0, ptr %316, align 1, !tbaa !19, !noalias !52
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %317 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !58
  %318 = load i64, ptr %225, align 8, !tbaa !15, !noalias !58
  %319 = icmp ugt i64 %318, 9223372036854772894
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %321 unwind label %389

321:                                              ; preds = %320
  unreachable

322:                                              ; preds = %314
  %323 = add nuw nsw i64 %318, 2913
  %324 = icmp eq i64 %318, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 2913, i64 noundef 0, ptr noundef %317, i64 noundef %318)
          to label %326 unwind label %389

326:                                              ; preds = %325
  %327 = load ptr, ptr %25, align 8, !tbaa !11, !noalias !58
  br label %328

328:                                              ; preds = %326, %322
  %329 = phi ptr [ %327, %326 ], [ %313, %322 ]
  store i64 %323, ptr %315, align 8, !tbaa !15, !noalias !58
  %330 = getelementptr inbounds i8, ptr %329, i64 %323
  store i8 0, ptr %330, align 1, !tbaa !19, !noalias !55
  %331 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 2
  store ptr %331, ptr %24, align 8, !tbaa !18, !alias.scope !55, !noalias !45
  %332 = load ptr, ptr %25, align 8, !tbaa !11, !noalias !58
  %333 = icmp eq ptr %332, %312
  br i1 %333, label %334, label %339

334:                                              ; preds = %328
  %335 = load i64, ptr %315, align 8, !tbaa !15, !noalias !58
  %336 = icmp ult i64 %335, 16
  call void @llvm.assume(i1 %336)
  %337 = add nuw nsw i64 %335, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %331, ptr noundef nonnull align 8 dereferenceable(1) %312, i64 %337, i1 false), !noalias !45
  %338 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 1
  store i64 %335, ptr %338, align 8, !tbaa !15, !alias.scope !55, !noalias !45
  store ptr %312, ptr %25, align 8, !tbaa !11, !noalias !58
  store i64 0, ptr %315, align 8, !tbaa !15, !noalias !58
  store i8 0, ptr %312, align 8, !tbaa !19, !noalias !58
  br label %349

339:                                              ; preds = %328
  store ptr %332, ptr %24, align 8, !tbaa !11, !alias.scope !55, !noalias !45
  %340 = load i64, ptr %312, align 8, !tbaa !19, !noalias !58
  store i64 %340, ptr %331, align 8, !tbaa !19, !alias.scope !55, !noalias !45
  %341 = load i64, ptr %315, align 8, !tbaa !15, !noalias !58
  %342 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 1
  store i64 %341, ptr %342, align 8, !tbaa !15, !alias.scope !55, !noalias !45
  store ptr %312, ptr %25, align 8, !tbaa !11, !noalias !58
  store i64 0, ptr %315, align 8, !tbaa !15, !noalias !58
  store i8 0, ptr %312, align 8, !tbaa !19, !noalias !58
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %343 = icmp eq i64 %341, 9223372036854775807
  br i1 %343, label %344, label %346

344:                                              ; preds = %339
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %345 unwind label %391

345:                                              ; preds = %344
  unreachable

346:                                              ; preds = %339
  %347 = add nsw i64 %341, 1
  %348 = icmp eq ptr %332, %331
  br i1 %348, label %349, label %354

349:                                              ; preds = %334, %346
  %350 = phi i64 [ %337, %334 ], [ %347, %346 ]
  %351 = phi i64 [ %335, %334 ], [ %341, %346 ]
  %352 = phi ptr [ %338, %334 ], [ %342, %346 ]
  %353 = icmp ult i64 %351, 16
  call void @llvm.assume(i1 %353)
  br label %354

354:                                              ; preds = %346, %349
  %355 = phi ptr [ %352, %349 ], [ %342, %346 ]
  %356 = phi i64 [ %351, %349 ], [ %341, %346 ]
  %357 = phi ptr [ %331, %349 ], [ %332, %346 ]
  %358 = phi i64 [ %350, %349 ], [ %347, %346 ]
  %359 = phi i64 [ 15, %349 ], [ %340, %346 ]
  %360 = icmp ugt i64 %358, %359
  br i1 %360, label %363, label %361

361:                                              ; preds = %354
  %362 = getelementptr inbounds i8, ptr %357, i64 %356
  store i8 10, ptr %362, align 1, !tbaa !19, !noalias !59
  br label %364

363:                                              ; preds = %354
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %356, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %364 unwind label %391

364:                                              ; preds = %363, %361
  store i64 %358, ptr %355, align 8, !tbaa !15, !noalias !62
  %365 = load ptr, ptr %24, align 8, !tbaa !11, !noalias !62
  %366 = getelementptr inbounds i8, ptr %365, i64 %358
  store i8 0, ptr %366, align 1, !tbaa !19, !noalias !59
  %367 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %367, ptr %56, align 8, !tbaa !18, !alias.scope !62
  %368 = load ptr, ptr %24, align 8, !tbaa !11, !noalias !62
  %369 = icmp eq ptr %368, %331
  br i1 %369, label %370, label %374

370:                                              ; preds = %364
  %371 = load i64, ptr %355, align 8, !tbaa !15, !noalias !62
  %372 = icmp ult i64 %371, 16
  call void @llvm.assume(i1 %372)
  %373 = add nuw nsw i64 %371, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %367, ptr noundef nonnull align 8 dereferenceable(1) %331, i64 %373, i1 false)
  br label %377

374:                                              ; preds = %364
  store ptr %368, ptr %56, align 8, !tbaa !11, !alias.scope !62
  %375 = load i64, ptr %331, align 8, !tbaa !19, !noalias !62
  store i64 %375, ptr %367, align 8, !tbaa !19, !alias.scope !62
  %376 = load i64, ptr %355, align 8, !tbaa !15, !noalias !62
  br label %377

377:                                              ; preds = %374, %370
  %378 = phi i64 [ %371, %370 ], [ %376, %374 ]
  %379 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %378, ptr %379, align 8, !tbaa !15, !alias.scope !62
  store ptr %331, ptr %24, align 8, !tbaa !11, !noalias !62
  store i64 0, ptr %355, align 8, !tbaa !15, !noalias !62
  store i8 0, ptr %331, align 8, !tbaa !19, !noalias !62
  %380 = load ptr, ptr %25, align 8, !tbaa !11, !noalias !45
  %381 = icmp eq ptr %380, %312
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i64, ptr %315, align 8, !tbaa !15, !noalias !45
  %384 = icmp ult i64 %383, 16
  call void @llvm.assume(i1 %384)
  br label %386

385:                                              ; preds = %377
  call void @_ZdlPv(ptr noundef %380) #26
  br label %386

386:                                              ; preds = %385, %382
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27, !noalias !45
  br label %1540

387:                                              ; preds = %311
  %388 = landingpad { ptr, i32 }
          cleanup
  br label %408

389:                                              ; preds = %325, %320
  %390 = landingpad { ptr, i32 }
          cleanup
  br label %400

391:                                              ; preds = %363, %344
  %392 = phi ptr [ %355, %363 ], [ %342, %344 ]
  %393 = landingpad { ptr, i32 }
          cleanup
  %394 = load ptr, ptr %24, align 8, !tbaa !11, !noalias !45
  %395 = icmp eq ptr %394, %331
  br i1 %395, label %396, label %399

396:                                              ; preds = %391
  %397 = load i64, ptr %392, align 8, !tbaa !15, !noalias !45
  %398 = icmp ult i64 %397, 16
  call void @llvm.assume(i1 %398)
  br label %400

399:                                              ; preds = %391
  call void @_ZdlPv(ptr noundef %394) #26
  br label %400

400:                                              ; preds = %399, %396, %389
  %401 = phi { ptr, i32 } [ %390, %389 ], [ %393, %396 ], [ %393, %399 ]
  %402 = load ptr, ptr %25, align 8, !tbaa !11, !noalias !45
  %403 = icmp eq ptr %402, %312
  br i1 %403, label %404, label %407

404:                                              ; preds = %400
  %405 = load i64, ptr %315, align 8, !tbaa !15, !noalias !45
  %406 = icmp ult i64 %405, 16
  call void @llvm.assume(i1 %406)
  br label %408

407:                                              ; preds = %400
  call void @_ZdlPv(ptr noundef %402) #26
  br label %408

408:                                              ; preds = %407, %404, %387
  %409 = phi { ptr, i32 } [ %388, %387 ], [ %401, %404 ], [ %401, %407 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27, !noalias !45
  br label %1547

410:                                              ; preds = %224
  %411 = load ptr, ptr %54, align 8, !tbaa !11
  %412 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.35, i64 2)
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %616

414:                                              ; preds = %410
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  %416 = invoke noalias noundef nonnull dereferenceable(2486) ptr @_Znwm(i64 noundef 2486) #29
          to label %417 unwind label %490

417:                                              ; preds = %414
  store ptr %416, ptr %27, align 8, !tbaa !11, !alias.scope !63, !noalias !45
  store i64 2485, ptr %415, align 8, !tbaa !19, !alias.scope !63, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2485) %416, ptr noundef nonnull align 1 dereferenceable(2485) @.str.68, i64 2485, i1 false), !noalias !63
  %418 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  store i64 2485, ptr %418, align 8, !tbaa !15, !alias.scope !63, !noalias !45
  %419 = getelementptr inbounds i8, ptr %416, i64 2485
  store i8 0, ptr %419, align 1, !tbaa !19, !noalias !63
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %420 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !69
  %421 = load i64, ptr %225, align 8, !tbaa !15, !noalias !69
  %422 = icmp ugt i64 %421, 9223372036854773322
  br i1 %422, label %423, label %425

423:                                              ; preds = %417
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %424 unwind label %492

424:                                              ; preds = %423
  unreachable

425:                                              ; preds = %417
  %426 = add nuw nsw i64 %421, 2485
  %427 = icmp eq i64 %421, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 2485, i64 noundef 0, ptr noundef %420, i64 noundef %421)
          to label %429 unwind label %492

429:                                              ; preds = %428
  %430 = load ptr, ptr %27, align 8, !tbaa !11, !noalias !69
  br label %431

431:                                              ; preds = %429, %425
  %432 = phi ptr [ %430, %429 ], [ %416, %425 ]
  store i64 %426, ptr %418, align 8, !tbaa !15, !noalias !69
  %433 = getelementptr inbounds i8, ptr %432, i64 %426
  store i8 0, ptr %433, align 1, !tbaa !19, !noalias !66
  %434 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %434, ptr %26, align 8, !tbaa !18, !alias.scope !66, !noalias !45
  %435 = load ptr, ptr %27, align 8, !tbaa !11, !noalias !69
  %436 = icmp eq ptr %435, %415
  br i1 %436, label %437, label %442

437:                                              ; preds = %431
  %438 = load i64, ptr %418, align 8, !tbaa !15, !noalias !69
  %439 = icmp ult i64 %438, 16
  call void @llvm.assume(i1 %439)
  %440 = add nuw nsw i64 %438, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %434, ptr noundef nonnull align 8 dereferenceable(1) %415, i64 %440, i1 false), !noalias !45
  %441 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 %438, ptr %441, align 8, !tbaa !15, !alias.scope !66, !noalias !45
  store ptr %415, ptr %27, align 8, !tbaa !11, !noalias !69
  store i64 0, ptr %418, align 8, !tbaa !15, !noalias !69
  store i8 0, ptr %415, align 8, !tbaa !19, !noalias !69
  br label %452

442:                                              ; preds = %431
  store ptr %435, ptr %26, align 8, !tbaa !11, !alias.scope !66, !noalias !45
  %443 = load i64, ptr %415, align 8, !tbaa !19, !noalias !69
  store i64 %443, ptr %434, align 8, !tbaa !19, !alias.scope !66, !noalias !45
  %444 = load i64, ptr %418, align 8, !tbaa !15, !noalias !69
  %445 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  store i64 %444, ptr %445, align 8, !tbaa !15, !alias.scope !66, !noalias !45
  store ptr %415, ptr %27, align 8, !tbaa !11, !noalias !69
  store i64 0, ptr %418, align 8, !tbaa !15, !noalias !69
  store i8 0, ptr %415, align 8, !tbaa !19, !noalias !69
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %446 = icmp eq i64 %444, 9223372036854775807
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %448 unwind label %494

448:                                              ; preds = %447
  unreachable

449:                                              ; preds = %442
  %450 = add nsw i64 %444, 1
  %451 = icmp eq ptr %435, %434
  br i1 %451, label %452, label %457

452:                                              ; preds = %437, %449
  %453 = phi i64 [ %440, %437 ], [ %450, %449 ]
  %454 = phi i64 [ %438, %437 ], [ %444, %449 ]
  %455 = phi ptr [ %441, %437 ], [ %445, %449 ]
  %456 = icmp ult i64 %454, 16
  call void @llvm.assume(i1 %456)
  br label %457

457:                                              ; preds = %449, %452
  %458 = phi ptr [ %455, %452 ], [ %445, %449 ]
  %459 = phi i64 [ %454, %452 ], [ %444, %449 ]
  %460 = phi ptr [ %434, %452 ], [ %435, %449 ]
  %461 = phi i64 [ %453, %452 ], [ %450, %449 ]
  %462 = phi i64 [ 15, %452 ], [ %443, %449 ]
  %463 = icmp ugt i64 %461, %462
  br i1 %463, label %466, label %464

464:                                              ; preds = %457
  %465 = getelementptr inbounds i8, ptr %460, i64 %459
  store i8 10, ptr %465, align 1, !tbaa !19, !noalias !70
  br label %467

466:                                              ; preds = %457
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %459, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %467 unwind label %494

467:                                              ; preds = %466, %464
  store i64 %461, ptr %458, align 8, !tbaa !15, !noalias !73
  %468 = load ptr, ptr %26, align 8, !tbaa !11, !noalias !73
  %469 = getelementptr inbounds i8, ptr %468, i64 %461
  store i8 0, ptr %469, align 1, !tbaa !19, !noalias !70
  %470 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %470, ptr %56, align 8, !tbaa !18, !alias.scope !73
  %471 = load ptr, ptr %26, align 8, !tbaa !11, !noalias !73
  %472 = icmp eq ptr %471, %434
  br i1 %472, label %473, label %477

473:                                              ; preds = %467
  %474 = load i64, ptr %458, align 8, !tbaa !15, !noalias !73
  %475 = icmp ult i64 %474, 16
  call void @llvm.assume(i1 %475)
  %476 = add nuw nsw i64 %474, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %470, ptr noundef nonnull align 8 dereferenceable(1) %434, i64 %476, i1 false)
  br label %480

477:                                              ; preds = %467
  store ptr %471, ptr %56, align 8, !tbaa !11, !alias.scope !73
  %478 = load i64, ptr %434, align 8, !tbaa !19, !noalias !73
  store i64 %478, ptr %470, align 8, !tbaa !19, !alias.scope !73
  %479 = load i64, ptr %458, align 8, !tbaa !15, !noalias !73
  br label %480

480:                                              ; preds = %477, %473
  %481 = phi i64 [ %474, %473 ], [ %479, %477 ]
  %482 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %481, ptr %482, align 8, !tbaa !15, !alias.scope !73
  store ptr %434, ptr %26, align 8, !tbaa !11, !noalias !73
  store i64 0, ptr %458, align 8, !tbaa !15, !noalias !73
  store i8 0, ptr %434, align 8, !tbaa !19, !noalias !73
  %483 = load ptr, ptr %27, align 8, !tbaa !11, !noalias !45
  %484 = icmp eq ptr %483, %415
  br i1 %484, label %485, label %488

485:                                              ; preds = %480
  %486 = load i64, ptr %418, align 8, !tbaa !15, !noalias !45
  %487 = icmp ult i64 %486, 16
  call void @llvm.assume(i1 %487)
  br label %489

488:                                              ; preds = %480
  call void @_ZdlPv(ptr noundef %483) #26
  br label %489

489:                                              ; preds = %488, %485
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27, !noalias !45
  br label %1540

490:                                              ; preds = %414
  %491 = landingpad { ptr, i32 }
          cleanup
  br label %511

492:                                              ; preds = %428, %423
  %493 = landingpad { ptr, i32 }
          cleanup
  br label %503

494:                                              ; preds = %466, %447
  %495 = phi ptr [ %458, %466 ], [ %445, %447 ]
  %496 = landingpad { ptr, i32 }
          cleanup
  %497 = load ptr, ptr %26, align 8, !tbaa !11, !noalias !45
  %498 = icmp eq ptr %497, %434
  br i1 %498, label %499, label %502

499:                                              ; preds = %494
  %500 = load i64, ptr %495, align 8, !tbaa !15, !noalias !45
  %501 = icmp ult i64 %500, 16
  call void @llvm.assume(i1 %501)
  br label %503

502:                                              ; preds = %494
  call void @_ZdlPv(ptr noundef %497) #26
  br label %503

503:                                              ; preds = %502, %499, %492
  %504 = phi { ptr, i32 } [ %493, %492 ], [ %496, %499 ], [ %496, %502 ]
  %505 = load ptr, ptr %27, align 8, !tbaa !11, !noalias !45
  %506 = icmp eq ptr %505, %415
  br i1 %506, label %507, label %510

507:                                              ; preds = %503
  %508 = load i64, ptr %418, align 8, !tbaa !15, !noalias !45
  %509 = icmp ult i64 %508, 16
  call void @llvm.assume(i1 %509)
  br label %511

510:                                              ; preds = %503
  call void @_ZdlPv(ptr noundef %505) #26
  br label %511

511:                                              ; preds = %510, %507, %490
  %512 = phi { ptr, i32 } [ %491, %490 ], [ %504, %507 ], [ %504, %510 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27, !noalias !45
  br label %1547

513:                                              ; preds = %224
  %514 = load ptr, ptr %54, align 8, !tbaa !11
  %515 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %514, ptr noundef nonnull dereferenceable(4) @.str.27, i64 4)
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %1539

517:                                              ; preds = %513
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %518 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %519 = invoke noalias noundef nonnull dereferenceable(4540) ptr @_Znwm(i64 noundef 4540) #29
          to label %520 unwind label %593

520:                                              ; preds = %517
  store ptr %519, ptr %29, align 8, !tbaa !11, !alias.scope !74, !noalias !45
  store i64 4539, ptr %518, align 8, !tbaa !19, !alias.scope !74, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4539) %519, ptr noundef nonnull align 1 dereferenceable(4539) @.str.69, i64 4539, i1 false), !noalias !74
  %521 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  store i64 4539, ptr %521, align 8, !tbaa !15, !alias.scope !74, !noalias !45
  %522 = getelementptr inbounds i8, ptr %519, i64 4539
  store i8 0, ptr %522, align 1, !tbaa !19, !noalias !74
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %523 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !80
  %524 = load i64, ptr %225, align 8, !tbaa !15, !noalias !80
  %525 = icmp ugt i64 %524, 9223372036854771268
  br i1 %525, label %526, label %528

526:                                              ; preds = %520
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %527 unwind label %595

527:                                              ; preds = %526
  unreachable

528:                                              ; preds = %520
  %529 = add nuw nsw i64 %524, 4539
  %530 = icmp eq i64 %524, 0
  br i1 %530, label %534, label %531

531:                                              ; preds = %528
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 4539, i64 noundef 0, ptr noundef %523, i64 noundef %524)
          to label %532 unwind label %595

532:                                              ; preds = %531
  %533 = load ptr, ptr %29, align 8, !tbaa !11, !noalias !80
  br label %534

534:                                              ; preds = %532, %528
  %535 = phi ptr [ %533, %532 ], [ %519, %528 ]
  store i64 %529, ptr %521, align 8, !tbaa !15, !noalias !80
  %536 = getelementptr inbounds i8, ptr %535, i64 %529
  store i8 0, ptr %536, align 1, !tbaa !19, !noalias !77
  %537 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 2
  store ptr %537, ptr %28, align 8, !tbaa !18, !alias.scope !77, !noalias !45
  %538 = load ptr, ptr %29, align 8, !tbaa !11, !noalias !80
  %539 = icmp eq ptr %538, %518
  br i1 %539, label %540, label %545

540:                                              ; preds = %534
  %541 = load i64, ptr %521, align 8, !tbaa !15, !noalias !80
  %542 = icmp ult i64 %541, 16
  call void @llvm.assume(i1 %542)
  %543 = add nuw nsw i64 %541, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %537, ptr noundef nonnull align 8 dereferenceable(1) %518, i64 %543, i1 false), !noalias !45
  %544 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 1
  store i64 %541, ptr %544, align 8, !tbaa !15, !alias.scope !77, !noalias !45
  store ptr %518, ptr %29, align 8, !tbaa !11, !noalias !80
  store i64 0, ptr %521, align 8, !tbaa !15, !noalias !80
  store i8 0, ptr %518, align 8, !tbaa !19, !noalias !80
  br label %555

545:                                              ; preds = %534
  store ptr %538, ptr %28, align 8, !tbaa !11, !alias.scope !77, !noalias !45
  %546 = load i64, ptr %518, align 8, !tbaa !19, !noalias !80
  store i64 %546, ptr %537, align 8, !tbaa !19, !alias.scope !77, !noalias !45
  %547 = load i64, ptr %521, align 8, !tbaa !15, !noalias !80
  %548 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 1
  store i64 %547, ptr %548, align 8, !tbaa !15, !alias.scope !77, !noalias !45
  store ptr %518, ptr %29, align 8, !tbaa !11, !noalias !80
  store i64 0, ptr %521, align 8, !tbaa !15, !noalias !80
  store i8 0, ptr %518, align 8, !tbaa !19, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %549 = icmp eq i64 %547, 9223372036854775807
  br i1 %549, label %550, label %552

550:                                              ; preds = %545
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %551 unwind label %597

551:                                              ; preds = %550
  unreachable

552:                                              ; preds = %545
  %553 = add nsw i64 %547, 1
  %554 = icmp eq ptr %538, %537
  br i1 %554, label %555, label %560

555:                                              ; preds = %540, %552
  %556 = phi i64 [ %543, %540 ], [ %553, %552 ]
  %557 = phi i64 [ %541, %540 ], [ %547, %552 ]
  %558 = phi ptr [ %544, %540 ], [ %548, %552 ]
  %559 = icmp ult i64 %557, 16
  call void @llvm.assume(i1 %559)
  br label %560

560:                                              ; preds = %552, %555
  %561 = phi ptr [ %558, %555 ], [ %548, %552 ]
  %562 = phi i64 [ %557, %555 ], [ %547, %552 ]
  %563 = phi ptr [ %537, %555 ], [ %538, %552 ]
  %564 = phi i64 [ %556, %555 ], [ %553, %552 ]
  %565 = phi i64 [ 15, %555 ], [ %546, %552 ]
  %566 = icmp ugt i64 %564, %565
  br i1 %566, label %569, label %567

567:                                              ; preds = %560
  %568 = getelementptr inbounds i8, ptr %563, i64 %562
  store i8 10, ptr %568, align 1, !tbaa !19, !noalias !81
  br label %570

569:                                              ; preds = %560
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %562, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %570 unwind label %597

570:                                              ; preds = %569, %567
  store i64 %564, ptr %561, align 8, !tbaa !15, !noalias !84
  %571 = load ptr, ptr %28, align 8, !tbaa !11, !noalias !84
  %572 = getelementptr inbounds i8, ptr %571, i64 %564
  store i8 0, ptr %572, align 1, !tbaa !19, !noalias !81
  %573 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %573, ptr %56, align 8, !tbaa !18, !alias.scope !84
  %574 = load ptr, ptr %28, align 8, !tbaa !11, !noalias !84
  %575 = icmp eq ptr %574, %537
  br i1 %575, label %576, label %580

576:                                              ; preds = %570
  %577 = load i64, ptr %561, align 8, !tbaa !15, !noalias !84
  %578 = icmp ult i64 %577, 16
  call void @llvm.assume(i1 %578)
  %579 = add nuw nsw i64 %577, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %573, ptr noundef nonnull align 8 dereferenceable(1) %537, i64 %579, i1 false)
  br label %583

580:                                              ; preds = %570
  store ptr %574, ptr %56, align 8, !tbaa !11, !alias.scope !84
  %581 = load i64, ptr %537, align 8, !tbaa !19, !noalias !84
  store i64 %581, ptr %573, align 8, !tbaa !19, !alias.scope !84
  %582 = load i64, ptr %561, align 8, !tbaa !15, !noalias !84
  br label %583

583:                                              ; preds = %580, %576
  %584 = phi i64 [ %577, %576 ], [ %582, %580 ]
  %585 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %584, ptr %585, align 8, !tbaa !15, !alias.scope !84
  store ptr %537, ptr %28, align 8, !tbaa !11, !noalias !84
  store i64 0, ptr %561, align 8, !tbaa !15, !noalias !84
  store i8 0, ptr %537, align 8, !tbaa !19, !noalias !84
  %586 = load ptr, ptr %29, align 8, !tbaa !11, !noalias !45
  %587 = icmp eq ptr %586, %518
  br i1 %587, label %588, label %591

588:                                              ; preds = %583
  %589 = load i64, ptr %521, align 8, !tbaa !15, !noalias !45
  %590 = icmp ult i64 %589, 16
  call void @llvm.assume(i1 %590)
  br label %592

591:                                              ; preds = %583
  call void @_ZdlPv(ptr noundef %586) #26
  br label %592

592:                                              ; preds = %591, %588
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #27, !noalias !45
  br label %1540

593:                                              ; preds = %517
  %594 = landingpad { ptr, i32 }
          cleanup
  br label %614

595:                                              ; preds = %531, %526
  %596 = landingpad { ptr, i32 }
          cleanup
  br label %606

597:                                              ; preds = %569, %550
  %598 = phi ptr [ %561, %569 ], [ %548, %550 ]
  %599 = landingpad { ptr, i32 }
          cleanup
  %600 = load ptr, ptr %28, align 8, !tbaa !11, !noalias !45
  %601 = icmp eq ptr %600, %537
  br i1 %601, label %602, label %605

602:                                              ; preds = %597
  %603 = load i64, ptr %598, align 8, !tbaa !15, !noalias !45
  %604 = icmp ult i64 %603, 16
  call void @llvm.assume(i1 %604)
  br label %606

605:                                              ; preds = %597
  call void @_ZdlPv(ptr noundef %600) #26
  br label %606

606:                                              ; preds = %605, %602, %595
  %607 = phi { ptr, i32 } [ %596, %595 ], [ %599, %602 ], [ %599, %605 ]
  %608 = load ptr, ptr %29, align 8, !tbaa !11, !noalias !45
  %609 = icmp eq ptr %608, %518
  br i1 %609, label %610, label %613

610:                                              ; preds = %606
  %611 = load i64, ptr %521, align 8, !tbaa !15, !noalias !45
  %612 = icmp ult i64 %611, 16
  call void @llvm.assume(i1 %612)
  br label %614

613:                                              ; preds = %606
  call void @_ZdlPv(ptr noundef %608) #26
  br label %614

614:                                              ; preds = %613, %610, %593
  %615 = phi { ptr, i32 } [ %594, %593 ], [ %607, %610 ], [ %607, %613 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #27, !noalias !45
  br label %1547

616:                                              ; preds = %410
  %617 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.23, i64 2)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %718

619:                                              ; preds = %616
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %620 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  %621 = invoke noalias noundef nonnull dereferenceable(2968) ptr @_Znwm(i64 noundef 2968) #29
          to label %622 unwind label %695

622:                                              ; preds = %619
  store ptr %621, ptr %31, align 8, !tbaa !11, !alias.scope !85, !noalias !45
  store i64 2967, ptr %620, align 8, !tbaa !19, !alias.scope !85, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2967) %621, ptr noundef nonnull align 1 dereferenceable(2967) @.str.70, i64 2967, i1 false), !noalias !85
  %623 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 1
  store i64 2967, ptr %623, align 8, !tbaa !15, !alias.scope !85, !noalias !45
  %624 = getelementptr inbounds i8, ptr %621, i64 2967
  store i8 0, ptr %624, align 1, !tbaa !19, !noalias !85
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %625 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !91
  %626 = load i64, ptr %225, align 8, !tbaa !15, !noalias !91
  %627 = icmp ugt i64 %626, 9223372036854772840
  br i1 %627, label %628, label %630

628:                                              ; preds = %622
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %629 unwind label %697

629:                                              ; preds = %628
  unreachable

630:                                              ; preds = %622
  %631 = add nuw nsw i64 %626, 2967
  %632 = icmp eq i64 %626, 0
  br i1 %632, label %636, label %633

633:                                              ; preds = %630
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 2967, i64 noundef 0, ptr noundef %625, i64 noundef %626)
          to label %634 unwind label %697

634:                                              ; preds = %633
  %635 = load ptr, ptr %31, align 8, !tbaa !11, !noalias !91
  br label %636

636:                                              ; preds = %634, %630
  %637 = phi ptr [ %635, %634 ], [ %621, %630 ]
  store i64 %631, ptr %623, align 8, !tbaa !15, !noalias !91
  %638 = getelementptr inbounds i8, ptr %637, i64 %631
  store i8 0, ptr %638, align 1, !tbaa !19, !noalias !88
  %639 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  store ptr %639, ptr %30, align 8, !tbaa !18, !alias.scope !88, !noalias !45
  %640 = load ptr, ptr %31, align 8, !tbaa !11, !noalias !91
  %641 = icmp eq ptr %640, %620
  br i1 %641, label %642, label %647

642:                                              ; preds = %636
  %643 = load i64, ptr %623, align 8, !tbaa !15, !noalias !91
  %644 = icmp ult i64 %643, 16
  call void @llvm.assume(i1 %644)
  %645 = add nuw nsw i64 %643, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %639, ptr noundef nonnull align 8 dereferenceable(1) %620, i64 %645, i1 false), !noalias !45
  %646 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  store i64 %643, ptr %646, align 8, !tbaa !15, !alias.scope !88, !noalias !45
  store ptr %620, ptr %31, align 8, !tbaa !11, !noalias !91
  store i64 0, ptr %623, align 8, !tbaa !15, !noalias !91
  store i8 0, ptr %620, align 8, !tbaa !19, !noalias !91
  br label %657

647:                                              ; preds = %636
  store ptr %640, ptr %30, align 8, !tbaa !11, !alias.scope !88, !noalias !45
  %648 = load i64, ptr %620, align 8, !tbaa !19, !noalias !91
  store i64 %648, ptr %639, align 8, !tbaa !19, !alias.scope !88, !noalias !45
  %649 = load i64, ptr %623, align 8, !tbaa !15, !noalias !91
  %650 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  store i64 %649, ptr %650, align 8, !tbaa !15, !alias.scope !88, !noalias !45
  store ptr %620, ptr %31, align 8, !tbaa !11, !noalias !91
  store i64 0, ptr %623, align 8, !tbaa !15, !noalias !91
  store i8 0, ptr %620, align 8, !tbaa !19, !noalias !91
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %651 = icmp eq i64 %649, 9223372036854775807
  br i1 %651, label %652, label %654

652:                                              ; preds = %647
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %653 unwind label %699

653:                                              ; preds = %652
  unreachable

654:                                              ; preds = %647
  %655 = add nsw i64 %649, 1
  %656 = icmp eq ptr %640, %639
  br i1 %656, label %657, label %662

657:                                              ; preds = %642, %654
  %658 = phi i64 [ %645, %642 ], [ %655, %654 ]
  %659 = phi i64 [ %643, %642 ], [ %649, %654 ]
  %660 = phi ptr [ %646, %642 ], [ %650, %654 ]
  %661 = icmp ult i64 %659, 16
  call void @llvm.assume(i1 %661)
  br label %662

662:                                              ; preds = %654, %657
  %663 = phi ptr [ %660, %657 ], [ %650, %654 ]
  %664 = phi i64 [ %659, %657 ], [ %649, %654 ]
  %665 = phi ptr [ %639, %657 ], [ %640, %654 ]
  %666 = phi i64 [ %658, %657 ], [ %655, %654 ]
  %667 = phi i64 [ 15, %657 ], [ %648, %654 ]
  %668 = icmp ugt i64 %666, %667
  br i1 %668, label %671, label %669

669:                                              ; preds = %662
  %670 = getelementptr inbounds i8, ptr %665, i64 %664
  store i8 10, ptr %670, align 1, !tbaa !19, !noalias !92
  br label %672

671:                                              ; preds = %662
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %664, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %672 unwind label %699

672:                                              ; preds = %671, %669
  store i64 %666, ptr %663, align 8, !tbaa !15, !noalias !95
  %673 = load ptr, ptr %30, align 8, !tbaa !11, !noalias !95
  %674 = getelementptr inbounds i8, ptr %673, i64 %666
  store i8 0, ptr %674, align 1, !tbaa !19, !noalias !92
  %675 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %675, ptr %56, align 8, !tbaa !18, !alias.scope !95
  %676 = load ptr, ptr %30, align 8, !tbaa !11, !noalias !95
  %677 = icmp eq ptr %676, %639
  br i1 %677, label %678, label %682

678:                                              ; preds = %672
  %679 = load i64, ptr %663, align 8, !tbaa !15, !noalias !95
  %680 = icmp ult i64 %679, 16
  call void @llvm.assume(i1 %680)
  %681 = add nuw nsw i64 %679, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %675, ptr noundef nonnull align 8 dereferenceable(1) %639, i64 %681, i1 false)
  br label %685

682:                                              ; preds = %672
  store ptr %676, ptr %56, align 8, !tbaa !11, !alias.scope !95
  %683 = load i64, ptr %639, align 8, !tbaa !19, !noalias !95
  store i64 %683, ptr %675, align 8, !tbaa !19, !alias.scope !95
  %684 = load i64, ptr %663, align 8, !tbaa !15, !noalias !95
  br label %685

685:                                              ; preds = %682, %678
  %686 = phi i64 [ %679, %678 ], [ %684, %682 ]
  %687 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %686, ptr %687, align 8, !tbaa !15, !alias.scope !95
  store ptr %639, ptr %30, align 8, !tbaa !11, !noalias !95
  store i64 0, ptr %663, align 8, !tbaa !15, !noalias !95
  store i8 0, ptr %639, align 8, !tbaa !19, !noalias !95
  %688 = load ptr, ptr %31, align 8, !tbaa !11, !noalias !45
  %689 = icmp eq ptr %688, %620
  br i1 %689, label %690, label %693

690:                                              ; preds = %685
  %691 = load i64, ptr %623, align 8, !tbaa !15, !noalias !45
  %692 = icmp ult i64 %691, 16
  call void @llvm.assume(i1 %692)
  br label %694

693:                                              ; preds = %685
  call void @_ZdlPv(ptr noundef %688) #26
  br label %694

694:                                              ; preds = %693, %690
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27, !noalias !45
  br label %1540

695:                                              ; preds = %619
  %696 = landingpad { ptr, i32 }
          cleanup
  br label %716

697:                                              ; preds = %633, %628
  %698 = landingpad { ptr, i32 }
          cleanup
  br label %708

699:                                              ; preds = %671, %652
  %700 = phi ptr [ %663, %671 ], [ %650, %652 ]
  %701 = landingpad { ptr, i32 }
          cleanup
  %702 = load ptr, ptr %30, align 8, !tbaa !11, !noalias !45
  %703 = icmp eq ptr %702, %639
  br i1 %703, label %704, label %707

704:                                              ; preds = %699
  %705 = load i64, ptr %700, align 8, !tbaa !15, !noalias !45
  %706 = icmp ult i64 %705, 16
  call void @llvm.assume(i1 %706)
  br label %708

707:                                              ; preds = %699
  call void @_ZdlPv(ptr noundef %702) #26
  br label %708

708:                                              ; preds = %707, %704, %697
  %709 = phi { ptr, i32 } [ %698, %697 ], [ %701, %704 ], [ %701, %707 ]
  %710 = load ptr, ptr %31, align 8, !tbaa !11, !noalias !45
  %711 = icmp eq ptr %710, %620
  br i1 %711, label %712, label %715

712:                                              ; preds = %708
  %713 = load i64, ptr %623, align 8, !tbaa !15, !noalias !45
  %714 = icmp ult i64 %713, 16
  call void @llvm.assume(i1 %714)
  br label %716

715:                                              ; preds = %708
  call void @_ZdlPv(ptr noundef %710) #26
  br label %716

716:                                              ; preds = %715, %712, %695
  %717 = phi { ptr, i32 } [ %696, %695 ], [ %709, %712 ], [ %709, %715 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27, !noalias !45
  br label %1547

718:                                              ; preds = %616
  %719 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.30, i64 2)
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %820

721:                                              ; preds = %718
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %722 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %723 = invoke noalias noundef nonnull dereferenceable(3361) ptr @_Znwm(i64 noundef 3361) #29
          to label %724 unwind label %797

724:                                              ; preds = %721
  store ptr %723, ptr %33, align 8, !tbaa !11, !alias.scope !96, !noalias !45
  store i64 3360, ptr %722, align 8, !tbaa !19, !alias.scope !96, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3360) %723, ptr noundef nonnull align 1 dereferenceable(3360) @.str.71, i64 3360, i1 false), !noalias !96
  %725 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  store i64 3360, ptr %725, align 8, !tbaa !15, !alias.scope !96, !noalias !45
  %726 = getelementptr inbounds i8, ptr %723, i64 3360
  store i8 0, ptr %726, align 1, !tbaa !19, !noalias !96
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %727 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !102
  %728 = load i64, ptr %225, align 8, !tbaa !15, !noalias !102
  %729 = icmp ugt i64 %728, 9223372036854772447
  br i1 %729, label %730, label %732

730:                                              ; preds = %724
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %731 unwind label %799

731:                                              ; preds = %730
  unreachable

732:                                              ; preds = %724
  %733 = add nuw nsw i64 %728, 3360
  %734 = icmp eq i64 %728, 0
  br i1 %734, label %738, label %735

735:                                              ; preds = %732
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 3360, i64 noundef 0, ptr noundef %727, i64 noundef %728)
          to label %736 unwind label %799

736:                                              ; preds = %735
  %737 = load ptr, ptr %33, align 8, !tbaa !11, !noalias !102
  br label %738

738:                                              ; preds = %736, %732
  %739 = phi ptr [ %737, %736 ], [ %723, %732 ]
  store i64 %733, ptr %725, align 8, !tbaa !15, !noalias !102
  %740 = getelementptr inbounds i8, ptr %739, i64 %733
  store i8 0, ptr %740, align 1, !tbaa !19, !noalias !99
  %741 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  store ptr %741, ptr %32, align 8, !tbaa !18, !alias.scope !99, !noalias !45
  %742 = load ptr, ptr %33, align 8, !tbaa !11, !noalias !102
  %743 = icmp eq ptr %742, %722
  br i1 %743, label %744, label %749

744:                                              ; preds = %738
  %745 = load i64, ptr %725, align 8, !tbaa !15, !noalias !102
  %746 = icmp ult i64 %745, 16
  call void @llvm.assume(i1 %746)
  %747 = add nuw nsw i64 %745, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %741, ptr noundef nonnull align 8 dereferenceable(1) %722, i64 %747, i1 false), !noalias !45
  %748 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  store i64 %745, ptr %748, align 8, !tbaa !15, !alias.scope !99, !noalias !45
  store ptr %722, ptr %33, align 8, !tbaa !11, !noalias !102
  store i64 0, ptr %725, align 8, !tbaa !15, !noalias !102
  store i8 0, ptr %722, align 8, !tbaa !19, !noalias !102
  br label %759

749:                                              ; preds = %738
  store ptr %742, ptr %32, align 8, !tbaa !11, !alias.scope !99, !noalias !45
  %750 = load i64, ptr %722, align 8, !tbaa !19, !noalias !102
  store i64 %750, ptr %741, align 8, !tbaa !19, !alias.scope !99, !noalias !45
  %751 = load i64, ptr %725, align 8, !tbaa !15, !noalias !102
  %752 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  store i64 %751, ptr %752, align 8, !tbaa !15, !alias.scope !99, !noalias !45
  store ptr %722, ptr %33, align 8, !tbaa !11, !noalias !102
  store i64 0, ptr %725, align 8, !tbaa !15, !noalias !102
  store i8 0, ptr %722, align 8, !tbaa !19, !noalias !102
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %753 = icmp eq i64 %751, 9223372036854775807
  br i1 %753, label %754, label %756

754:                                              ; preds = %749
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %755 unwind label %801

755:                                              ; preds = %754
  unreachable

756:                                              ; preds = %749
  %757 = add nsw i64 %751, 1
  %758 = icmp eq ptr %742, %741
  br i1 %758, label %759, label %764

759:                                              ; preds = %744, %756
  %760 = phi i64 [ %747, %744 ], [ %757, %756 ]
  %761 = phi i64 [ %745, %744 ], [ %751, %756 ]
  %762 = phi ptr [ %748, %744 ], [ %752, %756 ]
  %763 = icmp ult i64 %761, 16
  call void @llvm.assume(i1 %763)
  br label %764

764:                                              ; preds = %756, %759
  %765 = phi ptr [ %762, %759 ], [ %752, %756 ]
  %766 = phi i64 [ %761, %759 ], [ %751, %756 ]
  %767 = phi ptr [ %741, %759 ], [ %742, %756 ]
  %768 = phi i64 [ %760, %759 ], [ %757, %756 ]
  %769 = phi i64 [ 15, %759 ], [ %750, %756 ]
  %770 = icmp ugt i64 %768, %769
  br i1 %770, label %773, label %771

771:                                              ; preds = %764
  %772 = getelementptr inbounds i8, ptr %767, i64 %766
  store i8 10, ptr %772, align 1, !tbaa !19, !noalias !103
  br label %774

773:                                              ; preds = %764
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef %766, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %774 unwind label %801

774:                                              ; preds = %773, %771
  store i64 %768, ptr %765, align 8, !tbaa !15, !noalias !106
  %775 = load ptr, ptr %32, align 8, !tbaa !11, !noalias !106
  %776 = getelementptr inbounds i8, ptr %775, i64 %768
  store i8 0, ptr %776, align 1, !tbaa !19, !noalias !103
  %777 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %777, ptr %56, align 8, !tbaa !18, !alias.scope !106
  %778 = load ptr, ptr %32, align 8, !tbaa !11, !noalias !106
  %779 = icmp eq ptr %778, %741
  br i1 %779, label %780, label %784

780:                                              ; preds = %774
  %781 = load i64, ptr %765, align 8, !tbaa !15, !noalias !106
  %782 = icmp ult i64 %781, 16
  call void @llvm.assume(i1 %782)
  %783 = add nuw nsw i64 %781, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %777, ptr noundef nonnull align 8 dereferenceable(1) %741, i64 %783, i1 false)
  br label %787

784:                                              ; preds = %774
  store ptr %778, ptr %56, align 8, !tbaa !11, !alias.scope !106
  %785 = load i64, ptr %741, align 8, !tbaa !19, !noalias !106
  store i64 %785, ptr %777, align 8, !tbaa !19, !alias.scope !106
  %786 = load i64, ptr %765, align 8, !tbaa !15, !noalias !106
  br label %787

787:                                              ; preds = %784, %780
  %788 = phi i64 [ %781, %780 ], [ %786, %784 ]
  %789 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %788, ptr %789, align 8, !tbaa !15, !alias.scope !106
  store ptr %741, ptr %32, align 8, !tbaa !11, !noalias !106
  store i64 0, ptr %765, align 8, !tbaa !15, !noalias !106
  store i8 0, ptr %741, align 8, !tbaa !19, !noalias !106
  %790 = load ptr, ptr %33, align 8, !tbaa !11, !noalias !45
  %791 = icmp eq ptr %790, %722
  br i1 %791, label %792, label %795

792:                                              ; preds = %787
  %793 = load i64, ptr %725, align 8, !tbaa !15, !noalias !45
  %794 = icmp ult i64 %793, 16
  call void @llvm.assume(i1 %794)
  br label %796

795:                                              ; preds = %787
  call void @_ZdlPv(ptr noundef %790) #26
  br label %796

796:                                              ; preds = %795, %792
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27, !noalias !45
  br label %1540

797:                                              ; preds = %721
  %798 = landingpad { ptr, i32 }
          cleanup
  br label %818

799:                                              ; preds = %735, %730
  %800 = landingpad { ptr, i32 }
          cleanup
  br label %810

801:                                              ; preds = %773, %754
  %802 = phi ptr [ %765, %773 ], [ %752, %754 ]
  %803 = landingpad { ptr, i32 }
          cleanup
  %804 = load ptr, ptr %32, align 8, !tbaa !11, !noalias !45
  %805 = icmp eq ptr %804, %741
  br i1 %805, label %806, label %809

806:                                              ; preds = %801
  %807 = load i64, ptr %802, align 8, !tbaa !15, !noalias !45
  %808 = icmp ult i64 %807, 16
  call void @llvm.assume(i1 %808)
  br label %810

809:                                              ; preds = %801
  call void @_ZdlPv(ptr noundef %804) #26
  br label %810

810:                                              ; preds = %809, %806, %799
  %811 = phi { ptr, i32 } [ %800, %799 ], [ %803, %806 ], [ %803, %809 ]
  %812 = load ptr, ptr %33, align 8, !tbaa !11, !noalias !45
  %813 = icmp eq ptr %812, %722
  br i1 %813, label %814, label %817

814:                                              ; preds = %810
  %815 = load i64, ptr %725, align 8, !tbaa !15, !noalias !45
  %816 = icmp ult i64 %815, 16
  call void @llvm.assume(i1 %816)
  br label %818

817:                                              ; preds = %810
  call void @_ZdlPv(ptr noundef %812) #26
  br label %818

818:                                              ; preds = %817, %814, %797
  %819 = phi { ptr, i32 } [ %798, %797 ], [ %811, %814 ], [ %811, %817 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27, !noalias !45
  br label %1547

820:                                              ; preds = %718
  %821 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.37, i64 2)
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %893

823:                                              ; preds = %820
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %34) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %35) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %36) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #27, !noalias !45
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %824 unwind label %855

824:                                              ; preds = %823
  invoke fastcc void @_ZL19__apo_js_ir_preludeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nonnull writable align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, i1 noundef zeroext false)
          to label %825 unwind label %857

825:                                              ; preds = %824
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %826 unwind label %859

826:                                              ; preds = %825
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.63)
          to label %827 unwind label %861

827:                                              ; preds = %826
  %828 = load ptr, ptr %34, align 8, !tbaa !11, !noalias !45
  %829 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %830 = icmp eq ptr %828, %829
  br i1 %830, label %831, label %835

831:                                              ; preds = %827
  %832 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %833 = load i64, ptr %832, align 8, !tbaa !15, !noalias !45
  %834 = icmp ult i64 %833, 16
  call void @llvm.assume(i1 %834)
  br label %836

835:                                              ; preds = %827
  call void @_ZdlPv(ptr noundef %828) #26
  br label %836

836:                                              ; preds = %835, %831
  %837 = load ptr, ptr %35, align 8, !tbaa !11, !noalias !45
  %838 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 2
  %839 = icmp eq ptr %837, %838
  br i1 %839, label %840, label %844

840:                                              ; preds = %836
  %841 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 1
  %842 = load i64, ptr %841, align 8, !tbaa !15, !noalias !45
  %843 = icmp ult i64 %842, 16
  call void @llvm.assume(i1 %843)
  br label %845

844:                                              ; preds = %836
  call void @_ZdlPv(ptr noundef %837) #26
  br label %845

845:                                              ; preds = %844, %840
  %846 = load ptr, ptr %36, align 8, !tbaa !11, !noalias !45
  %847 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %848 = icmp eq ptr %846, %847
  br i1 %848, label %849, label %853

849:                                              ; preds = %845
  %850 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  %851 = load i64, ptr %850, align 8, !tbaa !15, !noalias !45
  %852 = icmp ult i64 %851, 16
  call void @llvm.assume(i1 %852)
  br label %854

853:                                              ; preds = %845
  call void @_ZdlPv(ptr noundef %846) #26
  br label %854

854:                                              ; preds = %853, %849
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #27, !noalias !45
  br label %1540

855:                                              ; preds = %823
  %856 = landingpad { ptr, i32 }
          cleanup
  br label %891

857:                                              ; preds = %824
  %858 = landingpad { ptr, i32 }
          cleanup
  br label %881

859:                                              ; preds = %825
  %860 = landingpad { ptr, i32 }
          cleanup
  br label %871

861:                                              ; preds = %826
  %862 = landingpad { ptr, i32 }
          cleanup
  %863 = load ptr, ptr %34, align 8, !tbaa !11, !noalias !45
  %864 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %865 = icmp eq ptr %863, %864
  br i1 %865, label %866, label %870

866:                                              ; preds = %861
  %867 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %868 = load i64, ptr %867, align 8, !tbaa !15, !noalias !45
  %869 = icmp ult i64 %868, 16
  call void @llvm.assume(i1 %869)
  br label %871

870:                                              ; preds = %861
  call void @_ZdlPv(ptr noundef %863) #26
  br label %871

871:                                              ; preds = %870, %866, %859
  %872 = phi { ptr, i32 } [ %860, %859 ], [ %862, %866 ], [ %862, %870 ]
  %873 = load ptr, ptr %35, align 8, !tbaa !11, !noalias !45
  %874 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 2
  %875 = icmp eq ptr %873, %874
  br i1 %875, label %876, label %880

876:                                              ; preds = %871
  %877 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %35, i64 0, i32 1
  %878 = load i64, ptr %877, align 8, !tbaa !15, !noalias !45
  %879 = icmp ult i64 %878, 16
  call void @llvm.assume(i1 %879)
  br label %881

880:                                              ; preds = %871
  call void @_ZdlPv(ptr noundef %873) #26
  br label %881

881:                                              ; preds = %880, %876, %857
  %882 = phi { ptr, i32 } [ %858, %857 ], [ %872, %876 ], [ %872, %880 ]
  %883 = load ptr, ptr %36, align 8, !tbaa !11, !noalias !45
  %884 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %885 = icmp eq ptr %883, %884
  br i1 %885, label %886, label %890

886:                                              ; preds = %881
  %887 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  %888 = load i64, ptr %887, align 8, !tbaa !15, !noalias !45
  %889 = icmp ult i64 %888, 16
  call void @llvm.assume(i1 %889)
  br label %891

890:                                              ; preds = %881
  call void @_ZdlPv(ptr noundef %883) #26
  br label %891

891:                                              ; preds = %890, %886, %855
  %892 = phi { ptr, i32 } [ %856, %855 ], [ %882, %886 ], [ %882, %890 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %35) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #27, !noalias !45
  br label %1547

893:                                              ; preds = %820
  %894 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.40, i64 2)
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %1030

896:                                              ; preds = %893
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %38) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %39) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %40) #27, !noalias !45
  %897 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 2
  store ptr %897, ptr %40, align 8, !tbaa !18
  store i16 29556, ptr %897, align 8
  %898 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  store i64 2, ptr %898, align 8, !tbaa !15
  %899 = getelementptr inbounds i8, ptr %40, i64 18
  store i8 0, ptr %899, align 2, !tbaa !19
  invoke fastcc void @_ZL19__apo_js_ir_preludeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nonnull writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(32) %40, i1 noundef zeroext true)
          to label %900 unwind label %999

900:                                              ; preds = %896
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %901 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !107
  %902 = load i64, ptr %225, align 8, !tbaa !15, !noalias !107
  %903 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 1
  %904 = load i64, ptr %903, align 8, !tbaa !15, !noalias !107
  %905 = sub i64 9223372036854775807, %904
  %906 = icmp ult i64 %905, %902
  br i1 %906, label %907, label %909

907:                                              ; preds = %900
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %908 unwind label %1001

908:                                              ; preds = %907
  unreachable

909:                                              ; preds = %900
  %910 = add i64 %904, %902
  %911 = load ptr, ptr %39, align 8, !tbaa !11, !noalias !107
  %912 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 2
  %913 = icmp eq ptr %911, %912
  br i1 %913, label %914, label %916

914:                                              ; preds = %909
  %915 = icmp ult i64 %904, 16
  call void @llvm.assume(i1 %915)
  br label %916

916:                                              ; preds = %914, %909
  %917 = load i64, ptr %912, align 8, !noalias !107
  %918 = select i1 %913, i64 15, i64 %917
  %919 = icmp ugt i64 %910, %918
  br i1 %919, label %928, label %920

920:                                              ; preds = %916
  %921 = icmp eq i64 %902, 0
  br i1 %921, label %929, label %922

922:                                              ; preds = %920
  %923 = getelementptr inbounds i8, ptr %911, i64 %904
  %924 = icmp eq i64 %902, 1
  br i1 %924, label %925, label %927

925:                                              ; preds = %922
  %926 = load i8, ptr %901, align 1, !tbaa !19, !noalias !107
  store i8 %926, ptr %923, align 1, !tbaa !19, !noalias !107
  br label %929

927:                                              ; preds = %922
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %923, ptr align 1 %901, i64 %902, i1 false), !noalias !107
  br label %929

928:                                              ; preds = %916
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef %904, i64 noundef 0, ptr noundef %901, i64 noundef %902)
          to label %929 unwind label %1001

929:                                              ; preds = %928, %927, %925, %920
  store i64 %910, ptr %903, align 8, !tbaa !15, !noalias !107
  %930 = load ptr, ptr %39, align 8, !tbaa !11, !noalias !107
  %931 = getelementptr inbounds i8, ptr %930, i64 %910
  store i8 0, ptr %931, align 1, !tbaa !19, !noalias !107
  %932 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 2
  store ptr %932, ptr %38, align 8, !tbaa !18, !alias.scope !107
  %933 = load ptr, ptr %39, align 8, !tbaa !11, !noalias !107
  %934 = icmp eq ptr %933, %912
  br i1 %934, label %935, label %941

935:                                              ; preds = %929
  %936 = load i64, ptr %903, align 8, !tbaa !15, !noalias !107
  %937 = icmp ult i64 %936, 16
  call void @llvm.assume(i1 %937)
  %938 = add nuw nsw i64 %936, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %932, ptr noundef nonnull align 8 dereferenceable(1) %912, i64 %938, i1 false)
  %939 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 1
  store i64 %936, ptr %939, align 8, !tbaa !15, !alias.scope !107
  store ptr %912, ptr %39, align 8, !tbaa !11, !noalias !107
  store i64 0, ptr %903, align 8, !tbaa !15, !noalias !107
  store i8 0, ptr %912, align 8, !tbaa !19, !noalias !107
  %940 = add nuw nsw i64 %936, 1
  br label %951

941:                                              ; preds = %929
  store ptr %933, ptr %38, align 8, !tbaa !11, !alias.scope !107
  %942 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 1
  %943 = load <2 x i64>, ptr %903, align 8, !tbaa !19, !noalias !107
  store <2 x i64> %943, ptr %942, align 8, !tbaa !19, !alias.scope !107
  store ptr %912, ptr %39, align 8, !tbaa !11, !noalias !107
  store i64 0, ptr %903, align 8, !tbaa !15, !noalias !107
  store i8 0, ptr %912, align 8, !tbaa !19, !noalias !107
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %944 = extractelement <2 x i64> %943, i64 0
  %945 = icmp eq i64 %944, 9223372036854775807
  br i1 %945, label %946, label %948

946:                                              ; preds = %941
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %947 unwind label %1003

947:                                              ; preds = %946
  unreachable

948:                                              ; preds = %941
  %949 = add nsw i64 %944, 1
  %950 = icmp eq ptr %933, %932
  br i1 %950, label %951, label %957

951:                                              ; preds = %935, %948
  %952 = phi i64 [ %940, %935 ], [ %949, %948 ]
  %953 = phi ptr [ %932, %935 ], [ %933, %948 ]
  %954 = phi i64 [ %936, %935 ], [ %944, %948 ]
  %955 = phi ptr [ %939, %935 ], [ %942, %948 ]
  %956 = icmp ult i64 %954, 16
  call void @llvm.assume(i1 %956)
  br label %957

957:                                              ; preds = %951, %948
  %958 = phi i1 [ true, %951 ], [ false, %948 ]
  %959 = phi i64 [ %952, %951 ], [ %949, %948 ]
  %960 = phi ptr [ %953, %951 ], [ %933, %948 ]
  %961 = phi i64 [ %954, %951 ], [ %944, %948 ]
  %962 = phi ptr [ %955, %951 ], [ %942, %948 ]
  %963 = load i64, ptr %932, align 8, !noalias !110
  %964 = select i1 %958, i64 15, i64 %963
  %965 = icmp ugt i64 %959, %964
  br i1 %965, label %968, label %966

966:                                              ; preds = %957
  %967 = getelementptr inbounds i8, ptr %960, i64 %961
  store i8 10, ptr %967, align 1, !tbaa !19, !noalias !110
  br label %969

968:                                              ; preds = %957
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %961, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %969 unwind label %1003

969:                                              ; preds = %968, %966
  store i64 %959, ptr %962, align 8, !tbaa !15, !noalias !110
  %970 = load ptr, ptr %38, align 8, !tbaa !11, !noalias !110
  %971 = getelementptr inbounds i8, ptr %970, i64 %959
  store i8 0, ptr %971, align 1, !tbaa !19, !noalias !110
  %972 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %972, ptr %56, align 8, !tbaa !18, !alias.scope !110
  %973 = load ptr, ptr %38, align 8, !tbaa !11, !noalias !110
  %974 = icmp eq ptr %973, %932
  br i1 %974, label %975, label %979

975:                                              ; preds = %969
  %976 = load i64, ptr %962, align 8, !tbaa !15, !noalias !110
  %977 = icmp ult i64 %976, 16
  call void @llvm.assume(i1 %977)
  %978 = add nuw nsw i64 %976, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %972, ptr noundef nonnull align 8 dereferenceable(1) %932, i64 %978, i1 false)
  br label %982

979:                                              ; preds = %969
  store ptr %973, ptr %56, align 8, !tbaa !11, !alias.scope !110
  %980 = load i64, ptr %932, align 8, !tbaa !19, !noalias !110
  store i64 %980, ptr %972, align 8, !tbaa !19, !alias.scope !110
  %981 = load i64, ptr %962, align 8, !tbaa !15, !noalias !110
  br label %982

982:                                              ; preds = %979, %975
  %983 = phi i64 [ %976, %975 ], [ %981, %979 ]
  %984 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %983, ptr %984, align 8, !tbaa !15, !alias.scope !110
  store ptr %932, ptr %38, align 8, !tbaa !11, !noalias !110
  store i64 0, ptr %962, align 8, !tbaa !15, !noalias !110
  store i8 0, ptr %932, align 8, !tbaa !19, !noalias !110
  %985 = load ptr, ptr %39, align 8, !tbaa !11, !noalias !45
  %986 = icmp eq ptr %985, %912
  br i1 %986, label %987, label %990

987:                                              ; preds = %982
  %988 = load i64, ptr %903, align 8, !tbaa !15, !noalias !45
  %989 = icmp ult i64 %988, 16
  call void @llvm.assume(i1 %989)
  br label %991

990:                                              ; preds = %982
  call void @_ZdlPv(ptr noundef %985) #26
  br label %991

991:                                              ; preds = %990, %987
  %992 = load ptr, ptr %40, align 8, !tbaa !11, !noalias !45
  %993 = icmp eq ptr %992, %897
  br i1 %993, label %994, label %997

994:                                              ; preds = %991
  %995 = load i64, ptr %898, align 8, !tbaa !15, !noalias !45
  %996 = icmp ult i64 %995, 16
  call void @llvm.assume(i1 %996)
  br label %998

997:                                              ; preds = %991
  call void @_ZdlPv(ptr noundef %992) #26
  br label %998

998:                                              ; preds = %997, %994
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %40) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %39) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %38) #27, !noalias !45
  br label %1540

999:                                              ; preds = %896
  %1000 = landingpad { ptr, i32 }
          cleanup
  br label %1021

1001:                                             ; preds = %928, %907
  %1002 = landingpad { ptr, i32 }
          cleanup
  br label %1012

1003:                                             ; preds = %968, %946
  %1004 = phi ptr [ %962, %968 ], [ %942, %946 ]
  %1005 = landingpad { ptr, i32 }
          cleanup
  %1006 = load ptr, ptr %38, align 8, !tbaa !11, !noalias !45
  %1007 = icmp eq ptr %1006, %932
  br i1 %1007, label %1008, label %1011

1008:                                             ; preds = %1003
  %1009 = load i64, ptr %1004, align 8, !tbaa !15, !noalias !45
  %1010 = icmp ult i64 %1009, 16
  call void @llvm.assume(i1 %1010)
  br label %1012

1011:                                             ; preds = %1003
  call void @_ZdlPv(ptr noundef %1006) #26
  br label %1012

1012:                                             ; preds = %1011, %1008, %1001
  %1013 = phi { ptr, i32 } [ %1002, %1001 ], [ %1005, %1008 ], [ %1005, %1011 ]
  %1014 = load ptr, ptr %39, align 8, !tbaa !11, !noalias !45
  %1015 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 2
  %1016 = icmp eq ptr %1014, %1015
  br i1 %1016, label %1017, label %1020

1017:                                             ; preds = %1012
  %1018 = load i64, ptr %903, align 8, !tbaa !15, !noalias !45
  %1019 = icmp ult i64 %1018, 16
  call void @llvm.assume(i1 %1019)
  br label %1021

1020:                                             ; preds = %1012
  call void @_ZdlPv(ptr noundef %1014) #26
  br label %1021

1021:                                             ; preds = %1020, %1017, %999
  %1022 = phi { ptr, i32 } [ %1000, %999 ], [ %1013, %1017 ], [ %1013, %1020 ]
  %1023 = load ptr, ptr %40, align 8, !tbaa !11, !noalias !45
  %1024 = icmp eq ptr %1023, %897
  br i1 %1024, label %1025, label %1028

1025:                                             ; preds = %1021
  %1026 = load i64, ptr %898, align 8, !tbaa !15, !noalias !45
  %1027 = icmp ult i64 %1026, 16
  call void @llvm.assume(i1 %1027)
  br label %1029

1028:                                             ; preds = %1021
  call void @_ZdlPv(ptr noundef %1023) #26
  br label %1029

1029:                                             ; preds = %1028, %1025
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %40) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %39) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %38) #27, !noalias !45
  br label %1547

1030:                                             ; preds = %893
  %1031 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.43, i64 2)
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1382

1033:                                             ; preds = %1030
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %41) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %42) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %1034 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 2
  %1035 = invoke noalias noundef nonnull dereferenceable(2963) ptr @_Znwm(i64 noundef 2963) #29
          to label %1036 unwind label %1113

1036:                                             ; preds = %1033
  store ptr %1035, ptr %42, align 8, !tbaa !11, !alias.scope !113, !noalias !45
  store i64 2962, ptr %1034, align 8, !tbaa !19, !alias.scope !113, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2962) %1035, ptr noundef nonnull align 1 dereferenceable(2962) @.str.75, i64 2962, i1 false), !noalias !113
  %1037 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  store i64 2962, ptr %1037, align 8, !tbaa !15, !alias.scope !113, !noalias !45
  %1038 = getelementptr inbounds i8, ptr %1035, i64 2962
  store i8 0, ptr %1038, align 1, !tbaa !19, !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %1039 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !116
  %1040 = load i64, ptr %225, align 8, !tbaa !15, !noalias !116
  %1041 = icmp ugt i64 %1040, 9223372036854772845
  br i1 %1041, label %1042, label %1044

1042:                                             ; preds = %1036
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1043 unwind label %1115

1043:                                             ; preds = %1042
  unreachable

1044:                                             ; preds = %1036
  %1045 = add nuw nsw i64 %1040, 2962
  %1046 = icmp eq i64 %1040, 0
  br i1 %1046, label %1050, label %1047

1047:                                             ; preds = %1044
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 noundef 2962, i64 noundef 0, ptr noundef %1039, i64 noundef %1040)
          to label %1048 unwind label %1115

1048:                                             ; preds = %1047
  %1049 = load ptr, ptr %42, align 8, !tbaa !11, !noalias !116
  br label %1050

1050:                                             ; preds = %1048, %1044
  %1051 = phi ptr [ %1049, %1048 ], [ %1035, %1044 ]
  store i64 %1045, ptr %1037, align 8, !tbaa !15, !noalias !116
  %1052 = getelementptr inbounds i8, ptr %1051, i64 %1045
  store i8 0, ptr %1052, align 1, !tbaa !19, !noalias !116
  %1053 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 2
  store ptr %1053, ptr %41, align 8, !tbaa !18, !alias.scope !116
  %1054 = load ptr, ptr %42, align 8, !tbaa !11, !noalias !116
  %1055 = icmp eq ptr %1054, %1034
  br i1 %1055, label %1056, label %1062

1056:                                             ; preds = %1050
  %1057 = load i64, ptr %1037, align 8, !tbaa !15, !noalias !116
  %1058 = icmp ult i64 %1057, 16
  call void @llvm.assume(i1 %1058)
  %1059 = add nuw nsw i64 %1057, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1053, ptr noundef nonnull align 8 dereferenceable(1) %1034, i64 %1059, i1 false)
  %1060 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 1
  store i64 %1057, ptr %1060, align 8, !tbaa !15, !alias.scope !116
  store ptr %1034, ptr %42, align 8, !tbaa !11, !noalias !116
  store i64 0, ptr %1037, align 8, !tbaa !15, !noalias !116
  store i8 0, ptr %1034, align 8, !tbaa !19, !noalias !116
  %1061 = add nuw nsw i64 %1057, 1
  br label %1072

1062:                                             ; preds = %1050
  store ptr %1054, ptr %41, align 8, !tbaa !11, !alias.scope !116
  %1063 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 1
  %1064 = load <2 x i64>, ptr %1037, align 8, !tbaa !19, !noalias !116
  store <2 x i64> %1064, ptr %1063, align 8, !tbaa !19, !alias.scope !116
  store ptr %1034, ptr %42, align 8, !tbaa !11, !noalias !116
  store i64 0, ptr %1037, align 8, !tbaa !15, !noalias !116
  store i8 0, ptr %1034, align 8, !tbaa !19, !noalias !116
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %1065 = extractelement <2 x i64> %1064, i64 0
  %1066 = icmp eq i64 %1065, 9223372036854775807
  br i1 %1066, label %1067, label %1069

1067:                                             ; preds = %1062
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1068 unwind label %1117

1068:                                             ; preds = %1067
  unreachable

1069:                                             ; preds = %1062
  %1070 = add nsw i64 %1065, 1
  %1071 = icmp eq ptr %1054, %1053
  br i1 %1071, label %1072, label %1078

1072:                                             ; preds = %1056, %1069
  %1073 = phi i64 [ %1061, %1056 ], [ %1070, %1069 ]
  %1074 = phi ptr [ %1053, %1056 ], [ %1054, %1069 ]
  %1075 = phi i64 [ %1057, %1056 ], [ %1065, %1069 ]
  %1076 = phi ptr [ %1060, %1056 ], [ %1063, %1069 ]
  %1077 = icmp ult i64 %1075, 16
  call void @llvm.assume(i1 %1077)
  br label %1078

1078:                                             ; preds = %1072, %1069
  %1079 = phi i1 [ true, %1072 ], [ false, %1069 ]
  %1080 = phi i64 [ %1073, %1072 ], [ %1070, %1069 ]
  %1081 = phi ptr [ %1074, %1072 ], [ %1054, %1069 ]
  %1082 = phi i64 [ %1075, %1072 ], [ %1065, %1069 ]
  %1083 = phi ptr [ %1076, %1072 ], [ %1063, %1069 ]
  %1084 = load i64, ptr %1053, align 8, !noalias !119
  %1085 = select i1 %1079, i64 15, i64 %1084
  %1086 = icmp ugt i64 %1080, %1085
  br i1 %1086, label %1089, label %1087

1087:                                             ; preds = %1078
  %1088 = getelementptr inbounds i8, ptr %1081, i64 %1082
  store i8 10, ptr %1088, align 1, !tbaa !19, !noalias !119
  br label %1090

1089:                                             ; preds = %1078
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %41, i64 noundef %1082, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %1090 unwind label %1117

1090:                                             ; preds = %1089, %1087
  store i64 %1080, ptr %1083, align 8, !tbaa !15, !noalias !119
  %1091 = load ptr, ptr %41, align 8, !tbaa !11, !noalias !119
  %1092 = getelementptr inbounds i8, ptr %1091, i64 %1080
  store i8 0, ptr %1092, align 1, !tbaa !19, !noalias !119
  %1093 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %1093, ptr %56, align 8, !tbaa !18, !alias.scope !119
  %1094 = load ptr, ptr %41, align 8, !tbaa !11, !noalias !119
  %1095 = icmp eq ptr %1094, %1053
  br i1 %1095, label %1096, label %1100

1096:                                             ; preds = %1090
  %1097 = load i64, ptr %1083, align 8, !tbaa !15, !noalias !119
  %1098 = icmp ult i64 %1097, 16
  call void @llvm.assume(i1 %1098)
  %1099 = add nuw nsw i64 %1097, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1093, ptr noundef nonnull align 8 dereferenceable(1) %1053, i64 %1099, i1 false)
  br label %1103

1100:                                             ; preds = %1090
  store ptr %1094, ptr %56, align 8, !tbaa !11, !alias.scope !119
  %1101 = load i64, ptr %1053, align 8, !tbaa !19, !noalias !119
  store i64 %1101, ptr %1093, align 8, !tbaa !19, !alias.scope !119
  %1102 = load i64, ptr %1083, align 8, !tbaa !15, !noalias !119
  br label %1103

1103:                                             ; preds = %1100, %1096
  %1104 = phi i64 [ %1097, %1096 ], [ %1102, %1100 ]
  %1105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %1104, ptr %1105, align 8, !tbaa !15, !alias.scope !119
  store ptr %1053, ptr %41, align 8, !tbaa !11, !noalias !119
  store i64 0, ptr %1083, align 8, !tbaa !15, !noalias !119
  store i8 0, ptr %1053, align 8, !tbaa !19, !noalias !119
  %1106 = load ptr, ptr %42, align 8, !tbaa !11, !noalias !45
  %1107 = icmp eq ptr %1106, %1034
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1103
  %1109 = load i64, ptr %1037, align 8, !tbaa !15, !noalias !45
  %1110 = icmp ult i64 %1109, 16
  call void @llvm.assume(i1 %1110)
  br label %1112

1111:                                             ; preds = %1103
  call void @_ZdlPv(ptr noundef %1106) #26
  br label %1112

1112:                                             ; preds = %1111, %1108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %42) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #27, !noalias !45
  br label %1540

1113:                                             ; preds = %1033
  %1114 = landingpad { ptr, i32 }
          cleanup
  br label %1134

1115:                                             ; preds = %1047, %1042
  %1116 = landingpad { ptr, i32 }
          cleanup
  br label %1126

1117:                                             ; preds = %1089, %1067
  %1118 = phi ptr [ %1083, %1089 ], [ %1063, %1067 ]
  %1119 = landingpad { ptr, i32 }
          cleanup
  %1120 = load ptr, ptr %41, align 8, !tbaa !11, !noalias !45
  %1121 = icmp eq ptr %1120, %1053
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1117
  %1123 = load i64, ptr %1118, align 8, !tbaa !15, !noalias !45
  %1124 = icmp ult i64 %1123, 16
  call void @llvm.assume(i1 %1124)
  br label %1126

1125:                                             ; preds = %1117
  call void @_ZdlPv(ptr noundef %1120) #26
  br label %1126

1126:                                             ; preds = %1125, %1122, %1115
  %1127 = phi { ptr, i32 } [ %1116, %1115 ], [ %1119, %1122 ], [ %1119, %1125 ]
  %1128 = load ptr, ptr %42, align 8, !tbaa !11, !noalias !45
  %1129 = icmp eq ptr %1128, %1034
  br i1 %1129, label %1130, label %1133

1130:                                             ; preds = %1126
  %1131 = load i64, ptr %1037, align 8, !tbaa !15, !noalias !45
  %1132 = icmp ult i64 %1131, 16
  call void @llvm.assume(i1 %1132)
  br label %1134

1133:                                             ; preds = %1126
  call void @_ZdlPv(ptr noundef %1128) #26
  br label %1134

1134:                                             ; preds = %1133, %1130, %1113
  %1135 = phi { ptr, i32 } [ %1114, %1113 ], [ %1127, %1130 ], [ %1127, %1133 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %42) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #27, !noalias !45
  br label %1547

1136:                                             ; preds = %228
  %1137 = call i32 @bcmp(ptr %229, ptr nonnull @.str.48, i64 %227)
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1139, label %1539

1139:                                             ; preds = %1136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %43) #27, !noalias !45
  %1140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 2
  store ptr %1140, ptr %43, align 8, !tbaa !18
  %1141 = load ptr, ptr %22, align 8, !tbaa !11
  %1142 = load i64, ptr %225, align 8, !tbaa !15
  %1143 = icmp ugt i64 %1142, 15
  br i1 %1143, label %1144, label %1156

1144:                                             ; preds = %1139
  %1145 = icmp slt i64 %1142, 0
  br i1 %1145, label %1146, label %1148

1146:                                             ; preds = %1144
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %1147 unwind label %1194

1147:                                             ; preds = %1146
  unreachable

1148:                                             ; preds = %1144
  %1149 = add nuw i64 %1142, 1
  %1150 = icmp slt i64 %1149, 0
  br i1 %1150, label %1151, label %1153, !prof !37

1151:                                             ; preds = %1148
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %1152 unwind label %1194

1152:                                             ; preds = %1151
  unreachable

1153:                                             ; preds = %1148
  %1154 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %1149) #29
          to label %1155 unwind label %1194

1155:                                             ; preds = %1153
  store ptr %1154, ptr %43, align 8, !tbaa !11
  store i64 %1142, ptr %1140, align 8, !tbaa !19
  br label %1156

1156:                                             ; preds = %1155, %1139
  %1157 = phi ptr [ %1154, %1155 ], [ %1140, %1139 ]
  switch i64 %1142, label %1160 [
    i64 1, label %1158
    i64 0, label %1161
  ]

1158:                                             ; preds = %1156
  %1159 = load i8, ptr %1141, align 1, !tbaa !19
  store i8 %1159, ptr %1157, align 1, !tbaa !19
  br label %1161

1160:                                             ; preds = %1156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1157, ptr align 1 %1141, i64 %1142, i1 false)
  br label %1161

1161:                                             ; preds = %1160, %1158, %1156
  %1162 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 1
  store i64 %1142, ptr %1162, align 8, !tbaa !15
  %1163 = getelementptr inbounds i8, ptr %1157, i64 %1142
  store i8 0, ptr %1163, align 1, !tbaa !19
  %1164 = load i64, ptr %1162, align 8, !tbaa !15
  %1165 = icmp ult i64 %1164, 5
  br i1 %1165, label %1209, label %1166

1166:                                             ; preds = %1161
  %1167 = load ptr, ptr %43, align 8, !tbaa !11
  %1168 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1167, ptr noundef nonnull dereferenceable(5) @.str.64, i64 5)
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1209

1170:                                             ; preds = %1166
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %44) #27, !noalias !45
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef 5, i64 noundef -1)
          to label %1171 unwind label %1196

1171:                                             ; preds = %1170
  %1172 = load ptr, ptr %45, align 8, !noalias !45
  %1173 = getelementptr inbounds i8, ptr %45, i64 8
  %1174 = load i64, ptr %1173, align 8, !noalias !45
  invoke fastcc void @_ZL12__apo_lstripNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %44, ptr %1172, i64 %1174)
          to label %1175 unwind label %1198

1175:                                             ; preds = %1171
  %1176 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(32) %44) #27
  %1177 = load ptr, ptr %44, align 8, !tbaa !11, !noalias !45
  %1178 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 0, i32 2
  %1179 = icmp eq ptr %1177, %1178
  br i1 %1179, label %1180, label %1184

1180:                                             ; preds = %1175
  %1181 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 0, i32 1
  %1182 = load i64, ptr %1181, align 8, !tbaa !15, !noalias !45
  %1183 = icmp ult i64 %1182, 16
  call void @llvm.assume(i1 %1183)
  br label %1185

1184:                                             ; preds = %1175
  call void @_ZdlPv(ptr noundef %1177) #26
  br label %1185

1185:                                             ; preds = %1184, %1180
  %1186 = load ptr, ptr %45, align 8, !tbaa !11, !noalias !45
  %1187 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %45, i64 0, i32 2
  %1188 = icmp eq ptr %1186, %1187
  br i1 %1188, label %1189, label %1192

1189:                                             ; preds = %1185
  %1190 = load i64, ptr %1173, align 8, !tbaa !15, !noalias !45
  %1191 = icmp ult i64 %1190, 16
  call void @llvm.assume(i1 %1191)
  br label %1193

1192:                                             ; preds = %1185
  call void @_ZdlPv(ptr noundef %1186) #26
  br label %1193

1193:                                             ; preds = %1192, %1189
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %44) #27, !noalias !45
  br label %1209

1194:                                             ; preds = %1153, %1151, %1146
  %1195 = landingpad { ptr, i32 }
          cleanup
  br label %1380

1196:                                             ; preds = %1170
  %1197 = landingpad { ptr, i32 }
          cleanup
  br label %1207

1198:                                             ; preds = %1171
  %1199 = landingpad { ptr, i32 }
          cleanup
  %1200 = load ptr, ptr %45, align 8, !tbaa !11, !noalias !45
  %1201 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %45, i64 0, i32 2
  %1202 = icmp eq ptr %1200, %1201
  br i1 %1202, label %1203, label %1206

1203:                                             ; preds = %1198
  %1204 = load i64, ptr %1173, align 8, !tbaa !15, !noalias !45
  %1205 = icmp ult i64 %1204, 16
  call void @llvm.assume(i1 %1205)
  br label %1207

1206:                                             ; preds = %1198
  call void @_ZdlPv(ptr noundef %1200) #26
  br label %1207

1207:                                             ; preds = %1206, %1203, %1196
  %1208 = phi { ptr, i32 } [ %1197, %1196 ], [ %1199, %1203 ], [ %1199, %1206 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %44) #27, !noalias !45
  br label %1372

1209:                                             ; preds = %1166, %1161, %1193
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %46) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %47) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %48) #27, !noalias !45
  %1210 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 2
  store ptr %1210, ptr %48, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %1210, ptr noundef nonnull align 1 dereferenceable(6) @.str.65, i64 6, i1 false)
  %1211 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 1
  store i64 6, ptr %1211, align 8, !tbaa !15
  %1212 = getelementptr inbounds i8, ptr %48, i64 22
  store i8 0, ptr %1212, align 2, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %49) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %1213 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 2
  %1214 = invoke noalias noundef nonnull dereferenceable(2545) ptr @_Znwm(i64 noundef 2545) #29
          to label %1215 unwind label %1331

1215:                                             ; preds = %1209
  store ptr %1214, ptr %49, align 8, !tbaa !11, !alias.scope !122, !noalias !45
  store i64 2544, ptr %1213, align 8, !tbaa !19, !alias.scope !122, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2544) %1214, ptr noundef nonnull align 1 dereferenceable(2544) @.str.76, i64 2544, i1 false), !noalias !122
  %1216 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 1
  store i64 2544, ptr %1216, align 8, !tbaa !15, !alias.scope !122, !noalias !45
  %1217 = getelementptr inbounds i8, ptr %1214, i64 2544
  store i8 0, ptr %1217, align 1, !tbaa !19, !noalias !122
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %1218 unwind label %1333

1218:                                             ; preds = %1215
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %1219 = load ptr, ptr %43, align 8, !tbaa !11, !noalias !125
  %1220 = load i64, ptr %1162, align 8, !tbaa !15, !noalias !125
  %1221 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 1
  %1222 = load i64, ptr %1221, align 8, !tbaa !15, !noalias !125
  %1223 = sub i64 9223372036854775807, %1222
  %1224 = icmp ult i64 %1223, %1220
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1218
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1226 unwind label %1335

1226:                                             ; preds = %1225
  unreachable

1227:                                             ; preds = %1218
  %1228 = add i64 %1222, %1220
  %1229 = load ptr, ptr %47, align 8, !tbaa !11, !noalias !125
  %1230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 2
  %1231 = icmp eq ptr %1229, %1230
  br i1 %1231, label %1232, label %1234

1232:                                             ; preds = %1227
  %1233 = icmp ult i64 %1222, 16
  call void @llvm.assume(i1 %1233)
  br label %1234

1234:                                             ; preds = %1232, %1227
  %1235 = load i64, ptr %1230, align 8, !noalias !125
  %1236 = select i1 %1231, i64 15, i64 %1235
  %1237 = icmp ugt i64 %1228, %1236
  br i1 %1237, label %1246, label %1238

1238:                                             ; preds = %1234
  %1239 = icmp eq i64 %1220, 0
  br i1 %1239, label %1247, label %1240

1240:                                             ; preds = %1238
  %1241 = getelementptr inbounds i8, ptr %1229, i64 %1222
  %1242 = icmp eq i64 %1220, 1
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1240
  %1244 = load i8, ptr %1219, align 1, !tbaa !19, !noalias !125
  store i8 %1244, ptr %1241, align 1, !tbaa !19, !noalias !125
  br label %1247

1245:                                             ; preds = %1240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1241, ptr align 1 %1219, i64 %1220, i1 false), !noalias !125
  br label %1247

1246:                                             ; preds = %1234
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %47, i64 noundef %1222, i64 noundef 0, ptr noundef %1219, i64 noundef %1220)
          to label %1247 unwind label %1335

1247:                                             ; preds = %1246, %1245, %1243, %1238
  store i64 %1228, ptr %1221, align 8, !tbaa !15, !noalias !125
  %1248 = load ptr, ptr %47, align 8, !tbaa !11, !noalias !125
  %1249 = getelementptr inbounds i8, ptr %1248, i64 %1228
  store i8 0, ptr %1249, align 1, !tbaa !19, !noalias !125
  %1250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 2
  store ptr %1250, ptr %46, align 8, !tbaa !18, !alias.scope !125
  %1251 = load ptr, ptr %47, align 8, !tbaa !11, !noalias !125
  %1252 = icmp eq ptr %1251, %1230
  br i1 %1252, label %1253, label %1259

1253:                                             ; preds = %1247
  %1254 = load i64, ptr %1221, align 8, !tbaa !15, !noalias !125
  %1255 = icmp ult i64 %1254, 16
  call void @llvm.assume(i1 %1255)
  %1256 = add nuw nsw i64 %1254, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1250, ptr noundef nonnull align 8 dereferenceable(1) %1230, i64 %1256, i1 false)
  %1257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 1
  store i64 %1254, ptr %1257, align 8, !tbaa !15, !alias.scope !125
  store ptr %1230, ptr %47, align 8, !tbaa !11, !noalias !125
  store i64 0, ptr %1221, align 8, !tbaa !15, !noalias !125
  store i8 0, ptr %1230, align 8, !tbaa !19, !noalias !125
  %1258 = add nuw nsw i64 %1254, 1
  br label %1269

1259:                                             ; preds = %1247
  store ptr %1251, ptr %46, align 8, !tbaa !11, !alias.scope !125
  %1260 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 1
  %1261 = load <2 x i64>, ptr %1221, align 8, !tbaa !19, !noalias !125
  store <2 x i64> %1261, ptr %1260, align 8, !tbaa !19, !alias.scope !125
  store ptr %1230, ptr %47, align 8, !tbaa !11, !noalias !125
  store i64 0, ptr %1221, align 8, !tbaa !15, !noalias !125
  store i8 0, ptr %1230, align 8, !tbaa !19, !noalias !125
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %1262 = extractelement <2 x i64> %1261, i64 0
  %1263 = icmp eq i64 %1262, 9223372036854775807
  br i1 %1263, label %1264, label %1266

1264:                                             ; preds = %1259
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1265 unwind label %1337

1265:                                             ; preds = %1264
  unreachable

1266:                                             ; preds = %1259
  %1267 = add nsw i64 %1262, 1
  %1268 = icmp eq ptr %1251, %1250
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1253, %1266
  %1270 = phi i64 [ %1258, %1253 ], [ %1267, %1266 ]
  %1271 = phi ptr [ %1250, %1253 ], [ %1251, %1266 ]
  %1272 = phi i64 [ %1254, %1253 ], [ %1262, %1266 ]
  %1273 = phi ptr [ %1257, %1253 ], [ %1260, %1266 ]
  %1274 = icmp ult i64 %1272, 16
  call void @llvm.assume(i1 %1274)
  br label %1275

1275:                                             ; preds = %1269, %1266
  %1276 = phi i1 [ true, %1269 ], [ false, %1266 ]
  %1277 = phi i64 [ %1270, %1269 ], [ %1267, %1266 ]
  %1278 = phi ptr [ %1271, %1269 ], [ %1251, %1266 ]
  %1279 = phi i64 [ %1272, %1269 ], [ %1262, %1266 ]
  %1280 = phi ptr [ %1273, %1269 ], [ %1260, %1266 ]
  %1281 = load i64, ptr %1250, align 8, !noalias !128
  %1282 = select i1 %1276, i64 15, i64 %1281
  %1283 = icmp ugt i64 %1277, %1282
  br i1 %1283, label %1286, label %1284

1284:                                             ; preds = %1275
  %1285 = getelementptr inbounds i8, ptr %1278, i64 %1279
  store i8 10, ptr %1285, align 1, !tbaa !19, !noalias !128
  br label %1287

1286:                                             ; preds = %1275
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %46, i64 noundef %1279, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %1287 unwind label %1337

1287:                                             ; preds = %1286, %1284
  store i64 %1277, ptr %1280, align 8, !tbaa !15, !noalias !128
  %1288 = load ptr, ptr %46, align 8, !tbaa !11, !noalias !128
  %1289 = getelementptr inbounds i8, ptr %1288, i64 %1277
  store i8 0, ptr %1289, align 1, !tbaa !19, !noalias !128
  %1290 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %1290, ptr %56, align 8, !tbaa !18, !alias.scope !128
  %1291 = load ptr, ptr %46, align 8, !tbaa !11, !noalias !128
  %1292 = icmp eq ptr %1291, %1250
  br i1 %1292, label %1293, label %1297

1293:                                             ; preds = %1287
  %1294 = load i64, ptr %1280, align 8, !tbaa !15, !noalias !128
  %1295 = icmp ult i64 %1294, 16
  call void @llvm.assume(i1 %1295)
  %1296 = add nuw nsw i64 %1294, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1290, ptr noundef nonnull align 8 dereferenceable(1) %1250, i64 %1296, i1 false)
  br label %1300

1297:                                             ; preds = %1287
  store ptr %1291, ptr %56, align 8, !tbaa !11, !alias.scope !128
  %1298 = load i64, ptr %1250, align 8, !tbaa !19, !noalias !128
  store i64 %1298, ptr %1290, align 8, !tbaa !19, !alias.scope !128
  %1299 = load i64, ptr %1280, align 8, !tbaa !15, !noalias !128
  br label %1300

1300:                                             ; preds = %1297, %1293
  %1301 = phi i64 [ %1294, %1293 ], [ %1299, %1297 ]
  %1302 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %1301, ptr %1302, align 8, !tbaa !15, !alias.scope !128
  store ptr %1250, ptr %46, align 8, !tbaa !11, !noalias !128
  store i64 0, ptr %1280, align 8, !tbaa !15, !noalias !128
  store i8 0, ptr %1250, align 8, !tbaa !19, !noalias !128
  %1303 = load ptr, ptr %47, align 8, !tbaa !11, !noalias !45
  %1304 = icmp eq ptr %1303, %1230
  br i1 %1304, label %1305, label %1308

1305:                                             ; preds = %1300
  %1306 = load i64, ptr %1221, align 8, !tbaa !15, !noalias !45
  %1307 = icmp ult i64 %1306, 16
  call void @llvm.assume(i1 %1307)
  br label %1309

1308:                                             ; preds = %1300
  call void @_ZdlPv(ptr noundef %1303) #26
  br label %1309

1309:                                             ; preds = %1308, %1305
  %1310 = load ptr, ptr %49, align 8, !tbaa !11, !noalias !45
  %1311 = icmp eq ptr %1310, %1213
  br i1 %1311, label %1312, label %1315

1312:                                             ; preds = %1309
  %1313 = load i64, ptr %1216, align 8, !tbaa !15, !noalias !45
  %1314 = icmp ult i64 %1313, 16
  call void @llvm.assume(i1 %1314)
  br label %1316

1315:                                             ; preds = %1309
  call void @_ZdlPv(ptr noundef %1310) #26
  br label %1316

1316:                                             ; preds = %1315, %1312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %49) #27, !noalias !45
  %1317 = load ptr, ptr %48, align 8, !tbaa !11, !noalias !45
  %1318 = icmp eq ptr %1317, %1210
  br i1 %1318, label %1319, label %1322

1319:                                             ; preds = %1316
  %1320 = load i64, ptr %1211, align 8, !tbaa !15, !noalias !45
  %1321 = icmp ult i64 %1320, 16
  call void @llvm.assume(i1 %1321)
  br label %1323

1322:                                             ; preds = %1316
  call void @_ZdlPv(ptr noundef %1317) #26
  br label %1323

1323:                                             ; preds = %1322, %1319
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %48) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %46) #27, !noalias !45
  %1324 = load ptr, ptr %43, align 8, !tbaa !11, !noalias !45
  %1325 = icmp eq ptr %1324, %1140
  br i1 %1325, label %1326, label %1329

1326:                                             ; preds = %1323
  %1327 = load i64, ptr %1162, align 8, !tbaa !15, !noalias !45
  %1328 = icmp ult i64 %1327, 16
  call void @llvm.assume(i1 %1328)
  br label %1330

1329:                                             ; preds = %1323
  call void @_ZdlPv(ptr noundef %1324) #26
  br label %1330

1330:                                             ; preds = %1329, %1326
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %43) #27, !noalias !45
  br label %1540

1331:                                             ; preds = %1209
  %1332 = landingpad { ptr, i32 }
          cleanup
  br label %1363

1333:                                             ; preds = %1215
  %1334 = landingpad { ptr, i32 }
          cleanup
  br label %1355

1335:                                             ; preds = %1246, %1225
  %1336 = landingpad { ptr, i32 }
          cleanup
  br label %1346

1337:                                             ; preds = %1286, %1264
  %1338 = phi ptr [ %1280, %1286 ], [ %1260, %1264 ]
  %1339 = landingpad { ptr, i32 }
          cleanup
  %1340 = load ptr, ptr %46, align 8, !tbaa !11, !noalias !45
  %1341 = icmp eq ptr %1340, %1250
  br i1 %1341, label %1342, label %1345

1342:                                             ; preds = %1337
  %1343 = load i64, ptr %1338, align 8, !tbaa !15, !noalias !45
  %1344 = icmp ult i64 %1343, 16
  call void @llvm.assume(i1 %1344)
  br label %1346

1345:                                             ; preds = %1337
  call void @_ZdlPv(ptr noundef %1340) #26
  br label %1346

1346:                                             ; preds = %1345, %1342, %1335
  %1347 = phi { ptr, i32 } [ %1336, %1335 ], [ %1339, %1342 ], [ %1339, %1345 ]
  %1348 = load ptr, ptr %47, align 8, !tbaa !11, !noalias !45
  %1349 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 2
  %1350 = icmp eq ptr %1348, %1349
  br i1 %1350, label %1351, label %1354

1351:                                             ; preds = %1346
  %1352 = load i64, ptr %1221, align 8, !tbaa !15, !noalias !45
  %1353 = icmp ult i64 %1352, 16
  call void @llvm.assume(i1 %1353)
  br label %1355

1354:                                             ; preds = %1346
  call void @_ZdlPv(ptr noundef %1348) #26
  br label %1355

1355:                                             ; preds = %1354, %1351, %1333
  %1356 = phi { ptr, i32 } [ %1334, %1333 ], [ %1347, %1351 ], [ %1347, %1354 ]
  %1357 = load ptr, ptr %49, align 8, !tbaa !11, !noalias !45
  %1358 = icmp eq ptr %1357, %1213
  br i1 %1358, label %1359, label %1362

1359:                                             ; preds = %1355
  %1360 = load i64, ptr %1216, align 8, !tbaa !15, !noalias !45
  %1361 = icmp ult i64 %1360, 16
  call void @llvm.assume(i1 %1361)
  br label %1363

1362:                                             ; preds = %1355
  call void @_ZdlPv(ptr noundef %1357) #26
  br label %1363

1363:                                             ; preds = %1362, %1359, %1331
  %1364 = phi { ptr, i32 } [ %1332, %1331 ], [ %1356, %1359 ], [ %1356, %1362 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %49) #27, !noalias !45
  %1365 = load ptr, ptr %48, align 8, !tbaa !11, !noalias !45
  %1366 = icmp eq ptr %1365, %1210
  br i1 %1366, label %1367, label %1370

1367:                                             ; preds = %1363
  %1368 = load i64, ptr %1211, align 8, !tbaa !15, !noalias !45
  %1369 = icmp ult i64 %1368, 16
  call void @llvm.assume(i1 %1369)
  br label %1371

1370:                                             ; preds = %1363
  call void @_ZdlPv(ptr noundef %1365) #26
  br label %1371

1371:                                             ; preds = %1370, %1367
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %48) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %46) #27, !noalias !45
  br label %1372

1372:                                             ; preds = %1371, %1207
  %1373 = phi { ptr, i32 } [ %1364, %1371 ], [ %1208, %1207 ]
  %1374 = load ptr, ptr %43, align 8, !tbaa !11, !noalias !45
  %1375 = icmp eq ptr %1374, %1140
  br i1 %1375, label %1376, label %1379

1376:                                             ; preds = %1372
  %1377 = load i64, ptr %1162, align 8, !tbaa !15, !noalias !45
  %1378 = icmp ult i64 %1377, 16
  call void @llvm.assume(i1 %1378)
  br label %1380

1379:                                             ; preds = %1372
  call void @_ZdlPv(ptr noundef %1374) #26
  br label %1380

1380:                                             ; preds = %1379, %1376, %1194
  %1381 = phi { ptr, i32 } [ %1195, %1194 ], [ %1373, %1376 ], [ %1373, %1379 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %43) #27, !noalias !45
  br label %1547

1382:                                             ; preds = %1030
  %1383 = call i32 @bcmp(ptr %411, ptr nonnull @.str.51, i64 %227)
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1385, label %1488

1385:                                             ; preds = %1382
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %50) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %51) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %1386 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %1387 = invoke noalias noundef nonnull dereferenceable(1891) ptr @_Znwm(i64 noundef 1891) #29
          to label %1388 unwind label %1465

1388:                                             ; preds = %1385
  store ptr %1387, ptr %51, align 8, !tbaa !11, !alias.scope !131, !noalias !45
  store i64 1890, ptr %1386, align 8, !tbaa !19, !alias.scope !131, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1890) %1387, ptr noundef nonnull align 1 dereferenceable(1890) @.str.77, i64 1890, i1 false), !noalias !131
  %1389 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  store i64 1890, ptr %1389, align 8, !tbaa !15, !alias.scope !131, !noalias !45
  %1390 = getelementptr inbounds i8, ptr %1387, i64 1890
  store i8 0, ptr %1390, align 1, !tbaa !19, !noalias !131
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %1391 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !134
  %1392 = load i64, ptr %225, align 8, !tbaa !15, !noalias !134
  %1393 = icmp ugt i64 %1392, 9223372036854773917
  br i1 %1393, label %1394, label %1396

1394:                                             ; preds = %1388
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1395 unwind label %1467

1395:                                             ; preds = %1394
  unreachable

1396:                                             ; preds = %1388
  %1397 = add nuw nsw i64 %1392, 1890
  %1398 = icmp eq i64 %1392, 0
  br i1 %1398, label %1402, label %1399

1399:                                             ; preds = %1396
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %51, i64 noundef 1890, i64 noundef 0, ptr noundef %1391, i64 noundef %1392)
          to label %1400 unwind label %1467

1400:                                             ; preds = %1399
  %1401 = load ptr, ptr %51, align 8, !tbaa !11, !noalias !134
  br label %1402

1402:                                             ; preds = %1400, %1396
  %1403 = phi ptr [ %1401, %1400 ], [ %1387, %1396 ]
  store i64 %1397, ptr %1389, align 8, !tbaa !15, !noalias !134
  %1404 = getelementptr inbounds i8, ptr %1403, i64 %1397
  store i8 0, ptr %1404, align 1, !tbaa !19, !noalias !134
  %1405 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %1405, ptr %50, align 8, !tbaa !18, !alias.scope !134
  %1406 = load ptr, ptr %51, align 8, !tbaa !11, !noalias !134
  %1407 = icmp eq ptr %1406, %1386
  br i1 %1407, label %1408, label %1414

1408:                                             ; preds = %1402
  %1409 = load i64, ptr %1389, align 8, !tbaa !15, !noalias !134
  %1410 = icmp ult i64 %1409, 16
  call void @llvm.assume(i1 %1410)
  %1411 = add nuw nsw i64 %1409, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1405, ptr noundef nonnull align 8 dereferenceable(1) %1386, i64 %1411, i1 false)
  %1412 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %1409, ptr %1412, align 8, !tbaa !15, !alias.scope !134
  store ptr %1386, ptr %51, align 8, !tbaa !11, !noalias !134
  store i64 0, ptr %1389, align 8, !tbaa !15, !noalias !134
  store i8 0, ptr %1386, align 8, !tbaa !19, !noalias !134
  %1413 = add nuw nsw i64 %1409, 1
  br label %1424

1414:                                             ; preds = %1402
  store ptr %1406, ptr %50, align 8, !tbaa !11, !alias.scope !134
  %1415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  %1416 = load <2 x i64>, ptr %1389, align 8, !tbaa !19, !noalias !134
  store <2 x i64> %1416, ptr %1415, align 8, !tbaa !19, !alias.scope !134
  store ptr %1386, ptr %51, align 8, !tbaa !11, !noalias !134
  store i64 0, ptr %1389, align 8, !tbaa !15, !noalias !134
  store i8 0, ptr %1386, align 8, !tbaa !19, !noalias !134
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %1417 = extractelement <2 x i64> %1416, i64 0
  %1418 = icmp eq i64 %1417, 9223372036854775807
  br i1 %1418, label %1419, label %1421

1419:                                             ; preds = %1414
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %1420 unwind label %1469

1420:                                             ; preds = %1419
  unreachable

1421:                                             ; preds = %1414
  %1422 = add nsw i64 %1417, 1
  %1423 = icmp eq ptr %1406, %1405
  br i1 %1423, label %1424, label %1430

1424:                                             ; preds = %1408, %1421
  %1425 = phi i64 [ %1413, %1408 ], [ %1422, %1421 ]
  %1426 = phi ptr [ %1405, %1408 ], [ %1406, %1421 ]
  %1427 = phi i64 [ %1409, %1408 ], [ %1417, %1421 ]
  %1428 = phi ptr [ %1412, %1408 ], [ %1415, %1421 ]
  %1429 = icmp ult i64 %1427, 16
  call void @llvm.assume(i1 %1429)
  br label %1430

1430:                                             ; preds = %1424, %1421
  %1431 = phi i1 [ true, %1424 ], [ false, %1421 ]
  %1432 = phi i64 [ %1425, %1424 ], [ %1422, %1421 ]
  %1433 = phi ptr [ %1426, %1424 ], [ %1406, %1421 ]
  %1434 = phi i64 [ %1427, %1424 ], [ %1417, %1421 ]
  %1435 = phi ptr [ %1428, %1424 ], [ %1415, %1421 ]
  %1436 = load i64, ptr %1405, align 8, !noalias !137
  %1437 = select i1 %1431, i64 15, i64 %1436
  %1438 = icmp ugt i64 %1432, %1437
  br i1 %1438, label %1441, label %1439

1439:                                             ; preds = %1430
  %1440 = getelementptr inbounds i8, ptr %1433, i64 %1434
  store i8 10, ptr %1440, align 1, !tbaa !19, !noalias !137
  br label %1442

1441:                                             ; preds = %1430
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef %1434, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 1)
          to label %1442 unwind label %1469

1442:                                             ; preds = %1441, %1439
  store i64 %1432, ptr %1435, align 8, !tbaa !15, !noalias !137
  %1443 = load ptr, ptr %50, align 8, !tbaa !11, !noalias !137
  %1444 = getelementptr inbounds i8, ptr %1443, i64 %1432
  store i8 0, ptr %1444, align 1, !tbaa !19, !noalias !137
  %1445 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %1445, ptr %56, align 8, !tbaa !18, !alias.scope !137
  %1446 = load ptr, ptr %50, align 8, !tbaa !11, !noalias !137
  %1447 = icmp eq ptr %1446, %1405
  br i1 %1447, label %1448, label %1452

1448:                                             ; preds = %1442
  %1449 = load i64, ptr %1435, align 8, !tbaa !15, !noalias !137
  %1450 = icmp ult i64 %1449, 16
  call void @llvm.assume(i1 %1450)
  %1451 = add nuw nsw i64 %1449, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1445, ptr noundef nonnull align 8 dereferenceable(1) %1405, i64 %1451, i1 false)
  br label %1455

1452:                                             ; preds = %1442
  store ptr %1446, ptr %56, align 8, !tbaa !11, !alias.scope !137
  %1453 = load i64, ptr %1405, align 8, !tbaa !19, !noalias !137
  store i64 %1453, ptr %1445, align 8, !tbaa !19, !alias.scope !137
  %1454 = load i64, ptr %1435, align 8, !tbaa !15, !noalias !137
  br label %1455

1455:                                             ; preds = %1452, %1448
  %1456 = phi i64 [ %1449, %1448 ], [ %1454, %1452 ]
  %1457 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %1456, ptr %1457, align 8, !tbaa !15, !alias.scope !137
  store ptr %1405, ptr %50, align 8, !tbaa !11, !noalias !137
  store i64 0, ptr %1435, align 8, !tbaa !15, !noalias !137
  store i8 0, ptr %1405, align 8, !tbaa !19, !noalias !137
  %1458 = load ptr, ptr %51, align 8, !tbaa !11, !noalias !45
  %1459 = icmp eq ptr %1458, %1386
  br i1 %1459, label %1460, label %1463

1460:                                             ; preds = %1455
  %1461 = load i64, ptr %1389, align 8, !tbaa !15, !noalias !45
  %1462 = icmp ult i64 %1461, 16
  call void @llvm.assume(i1 %1462)
  br label %1464

1463:                                             ; preds = %1455
  call void @_ZdlPv(ptr noundef %1458) #26
  br label %1464

1464:                                             ; preds = %1463, %1460
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #27, !noalias !45
  br label %1540

1465:                                             ; preds = %1385
  %1466 = landingpad { ptr, i32 }
          cleanup
  br label %1486

1467:                                             ; preds = %1399, %1394
  %1468 = landingpad { ptr, i32 }
          cleanup
  br label %1478

1469:                                             ; preds = %1441, %1419
  %1470 = phi ptr [ %1435, %1441 ], [ %1415, %1419 ]
  %1471 = landingpad { ptr, i32 }
          cleanup
  %1472 = load ptr, ptr %50, align 8, !tbaa !11, !noalias !45
  %1473 = icmp eq ptr %1472, %1405
  br i1 %1473, label %1474, label %1477

1474:                                             ; preds = %1469
  %1475 = load i64, ptr %1470, align 8, !tbaa !15, !noalias !45
  %1476 = icmp ult i64 %1475, 16
  call void @llvm.assume(i1 %1476)
  br label %1478

1477:                                             ; preds = %1469
  call void @_ZdlPv(ptr noundef %1472) #26
  br label %1478

1478:                                             ; preds = %1477, %1474, %1467
  %1479 = phi { ptr, i32 } [ %1468, %1467 ], [ %1471, %1474 ], [ %1471, %1477 ]
  %1480 = load ptr, ptr %51, align 8, !tbaa !11, !noalias !45
  %1481 = icmp eq ptr %1480, %1386
  br i1 %1481, label %1482, label %1485

1482:                                             ; preds = %1478
  %1483 = load i64, ptr %1389, align 8, !tbaa !15, !noalias !45
  %1484 = icmp ult i64 %1483, 16
  call void @llvm.assume(i1 %1484)
  br label %1486

1485:                                             ; preds = %1478
  call void @_ZdlPv(ptr noundef %1480) #26
  br label %1486

1486:                                             ; preds = %1485, %1482, %1465
  %1487 = phi { ptr, i32 } [ %1466, %1465 ], [ %1479, %1482 ], [ %1479, %1485 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #27, !noalias !45
  br label %1547

1488:                                             ; preds = %1382
  %1489 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %411, ptr noundef nonnull dereferenceable(2) @.str.54, i64 2)
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1491, label %1539

1491:                                             ; preds = %1488
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %52) #27, !noalias !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %53) #27, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %1492 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %53, i64 0, i32 2
  %1493 = invoke noalias noundef nonnull dereferenceable(2656) ptr @_Znwm(i64 noundef 2656) #29
          to label %1494 unwind label %1515

1494:                                             ; preds = %1491
  store ptr %1493, ptr %53, align 8, !tbaa !11, !alias.scope !140, !noalias !45
  store i64 2655, ptr %1492, align 8, !tbaa !19, !alias.scope !140, !noalias !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2655) %1493, ptr noundef nonnull align 1 dereferenceable(2655) @.str.78, i64 2655, i1 false), !noalias !140
  %1495 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %53, i64 0, i32 1
  store i64 2655, ptr %1495, align 8, !tbaa !15, !alias.scope !140, !noalias !45
  %1496 = getelementptr inbounds i8, ptr %1493, i64 2655
  store i8 0, ptr %1496, align 1, !tbaa !19, !noalias !140
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %1497 unwind label %1517

1497:                                             ; preds = %1494
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @.str.63)
          to label %1498 unwind label %1519

1498:                                             ; preds = %1497
  %1499 = load ptr, ptr %52, align 8, !tbaa !11, !noalias !45
  %1500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 2
  %1501 = icmp eq ptr %1499, %1500
  br i1 %1501, label %1502, label %1506

1502:                                             ; preds = %1498
  %1503 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %1504 = load i64, ptr %1503, align 8, !tbaa !15, !noalias !45
  %1505 = icmp ult i64 %1504, 16
  call void @llvm.assume(i1 %1505)
  br label %1507

1506:                                             ; preds = %1498
  call void @_ZdlPv(ptr noundef %1499) #26
  br label %1507

1507:                                             ; preds = %1506, %1502
  %1508 = load ptr, ptr %53, align 8, !tbaa !11, !noalias !45
  %1509 = icmp eq ptr %1508, %1492
  br i1 %1509, label %1510, label %1513

1510:                                             ; preds = %1507
  %1511 = load i64, ptr %1495, align 8, !tbaa !15, !noalias !45
  %1512 = icmp ult i64 %1511, 16
  call void @llvm.assume(i1 %1512)
  br label %1514

1513:                                             ; preds = %1507
  call void @_ZdlPv(ptr noundef %1508) #26
  br label %1514

1514:                                             ; preds = %1513, %1510
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %53) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #27, !noalias !45
  br label %1540

1515:                                             ; preds = %1491
  %1516 = landingpad { ptr, i32 }
          cleanup
  br label %1537

1517:                                             ; preds = %1494
  %1518 = landingpad { ptr, i32 }
          cleanup
  br label %1529

1519:                                             ; preds = %1497
  %1520 = landingpad { ptr, i32 }
          cleanup
  %1521 = load ptr, ptr %52, align 8, !tbaa !11, !noalias !45
  %1522 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 2
  %1523 = icmp eq ptr %1521, %1522
  br i1 %1523, label %1524, label %1528

1524:                                             ; preds = %1519
  %1525 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %1526 = load i64, ptr %1525, align 8, !tbaa !15, !noalias !45
  %1527 = icmp ult i64 %1526, 16
  call void @llvm.assume(i1 %1527)
  br label %1529

1528:                                             ; preds = %1519
  call void @_ZdlPv(ptr noundef %1521) #26
  br label %1529

1529:                                             ; preds = %1528, %1524, %1517
  %1530 = phi { ptr, i32 } [ %1518, %1517 ], [ %1520, %1524 ], [ %1520, %1528 ]
  %1531 = load ptr, ptr %53, align 8, !tbaa !11, !noalias !45
  %1532 = icmp eq ptr %1531, %1492
  br i1 %1532, label %1533, label %1536

1533:                                             ; preds = %1529
  %1534 = load i64, ptr %1495, align 8, !tbaa !15, !noalias !45
  %1535 = icmp ult i64 %1534, 16
  call void @llvm.assume(i1 %1535)
  br label %1537

1536:                                             ; preds = %1529
  call void @_ZdlPv(ptr noundef %1531) #26
  br label %1537

1537:                                             ; preds = %1536, %1533, %1515
  %1538 = phi { ptr, i32 } [ %1516, %1515 ], [ %1530, %1533 ], [ %1530, %1536 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %53) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #27, !noalias !45
  br label %1547

1539:                                             ; preds = %513, %1136, %224, %1488
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.63)
          to label %1540 unwind label %307

1540:                                             ; preds = %1539, %1514, %1464, %1330, %1112, %998, %854, %796, %694, %592, %489, %386
  %1541 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !45
  %1542 = icmp eq ptr %1541, %205
  br i1 %1542, label %1543, label %1546

1543:                                             ; preds = %1540
  %1544 = load i64, ptr %225, align 8, !tbaa !15, !noalias !45
  %1545 = icmp ult i64 %1544, 16
  call void @llvm.assume(i1 %1545)
  br label %1556

1546:                                             ; preds = %1540
  call void @_ZdlPv(ptr noundef %1541) #26
  br label %1556

1547:                                             ; preds = %1537, %1486, %1380, %1134, %1029, %891, %818, %716, %614, %511, %408, %309, %307
  %1548 = phi { ptr, i32 } [ %409, %408 ], [ %310, %309 ], [ %512, %511 ], [ %615, %614 ], [ %717, %716 ], [ %819, %818 ], [ %892, %891 ], [ %1022, %1029 ], [ %1135, %1134 ], [ %1381, %1380 ], [ %1487, %1486 ], [ %1538, %1537 ], [ %308, %307 ]
  %1549 = load ptr, ptr %22, align 8, !tbaa !11, !noalias !45
  %1550 = icmp eq ptr %1549, %205
  br i1 %1550, label %1551, label %1554

1551:                                             ; preds = %1547
  %1552 = load i64, ptr %225, align 8, !tbaa !15, !noalias !45
  %1553 = icmp ult i64 %1552, 16
  call void @llvm.assume(i1 %1553)
  br label %1555

1554:                                             ; preds = %1547
  call void @_ZdlPv(ptr noundef %1549) #26
  br label %1555

1555:                                             ; preds = %1554, %1551
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27, !noalias !45
  br label %3538

1556:                                             ; preds = %1546, %1543
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27, !noalias !45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %45)
  %1557 = load i64, ptr %172, align 8, !tbaa !15
  switch i64 %1557, label %2916 [
    i64 6, label %1558
    i64 3, label %2242
    i64 1, label %2463
    i64 2, label %2684
    i64 4, label %2886
  ]

1558:                                             ; preds = %1556
  %1559 = load ptr, ptr %54, align 8, !tbaa !11
  %1560 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %1559, ptr noundef nonnull dereferenceable(6) @.str.13, i64 6)
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1562, label %2916

1562:                                             ; preds = %1558
  %1563 = load ptr, ptr %55, align 8, !tbaa !11
  %1564 = load i64, ptr %201, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #27
  %1565 = getelementptr inbounds %"class.std::_Hashtable", ptr %19, i64 0, i32 5
  store ptr %1565, ptr %19, align 8, !tbaa !143
  %1566 = getelementptr inbounds %"class.std::_Hashtable", ptr %19, i64 0, i32 1
  store i64 1, ptr %1566, align 8, !tbaa !148
  %1567 = getelementptr inbounds %"class.std::_Hashtable", ptr %19, i64 0, i32 2
  %1568 = getelementptr inbounds %"class.std::_Hashtable", ptr %19, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1567, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %1568, align 8, !tbaa !149
  %1569 = getelementptr inbounds %"class.std::_Hashtable", ptr %19, i64 0, i32 4, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1569, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #27
  invoke fastcc void @_ZL21__apo_split_top_levelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nonnull writable align 8 %20, ptr %1563, i64 %1564, i8 noundef signext 59)
          to label %1570 unwind label %1604

1570:                                             ; preds = %1562
  %1571 = load ptr, ptr %20, align 8, !tbaa !38
  %1572 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %20, i64 0, i32 1
  %1573 = load ptr, ptr %1572, align 8, !tbaa !38
  %1574 = icmp eq ptr %1571, %1573
  br i1 %1574, label %2195, label %1575

1575:                                             ; preds = %1570
  %1576 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %1577 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %1578 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %1579 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2, i32 1, i64 4
  %1580 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %1581 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %1582 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, i32 1, i64 2
  %1583 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %10, i64 0, i32 1
  %1584 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %18, i64 0, i32 1
  %1585 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %18, i64 0, i32 2
  %1586 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %18, i64 0, i32 2, i32 2
  %1587 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %18, i64 0, i32 2, i32 1
  %1588 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %1589 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %1590 = getelementptr inbounds i8, ptr %11, i64 8
  %1591 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %1592 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %1593 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %13, i64 0, i32 1
  %1594 = getelementptr inbounds i8, ptr %15, i64 8
  %1595 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %1596 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %1597 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %1598 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 1
  %1599 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2
  %1600 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2, i32 2
  %1601 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2, i32 1
  %1602 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %1603 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  br label %1606

1604:                                             ; preds = %1562
  %1605 = landingpad { ptr, i32 }
          cleanup
  br label %2233

1606:                                             ; preds = %2167, %1575
  %1607 = phi ptr [ %1571, %1575 ], [ %2169, %2167 ]
  %1608 = load ptr, ptr %1607, align 8
  %1609 = getelementptr i8, ptr %1607, i64 8
  %1610 = load i64, ptr %1609, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  invoke fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr %1608, i64 %1610)
          to label %1611 unwind label %2172

1611:                                             ; preds = %1606
  %1612 = load i64, ptr %1576, align 8, !tbaa !15
  %1613 = icmp eq i64 %1612, 0
  br i1 %1613, label %2159, label %1614

1614:                                             ; preds = %1611
  %1615 = icmp ult i64 %1612, 12
  %1616 = load ptr, ptr %7, align 8, !tbaa !11
  br i1 %1615, label %1639, label %1617

1617:                                             ; preds = %1614
  %1618 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %1616, ptr noundef nonnull dereferenceable(12) @.str.80, i64 12)
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1620, label %1641

1620:                                             ; preds = %1617
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  store ptr %1577, ptr %8, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1577, ptr noundef nonnull align 1 dereferenceable(12) @.str.80, i64 12, i1 false)
  store i64 12, ptr %1578, align 8, !tbaa !15
  store i8 0, ptr %1579, align 4, !tbaa !19
  %1621 = invoke fastcc noundef i32 @"_ZZL30__apo_execute_apollo_statementRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEEENK3$_0clES6_b"(ptr nonnull %7, ptr nonnull %19, ptr nonnull %1577, i64 12, i1 noundef zeroext true)
          to label %1622 unwind label %1630

1622:                                             ; preds = %1620
  %1623 = load ptr, ptr %8, align 8, !tbaa !11
  %1624 = icmp eq ptr %1623, %1577
  br i1 %1624, label %1625, label %1628

1625:                                             ; preds = %1622
  %1626 = load i64, ptr %1578, align 8, !tbaa !15
  %1627 = icmp ult i64 %1626, 16
  call void @llvm.assume(i1 %1627)
  br label %1629

1628:                                             ; preds = %1622
  call void @_ZdlPv(ptr noundef %1623) #26
  br label %1629

1629:                                             ; preds = %1628, %1625
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  br label %2159

1630:                                             ; preds = %1620
  %1631 = landingpad { ptr, i32 }
          cleanup
  %1632 = load ptr, ptr %8, align 8, !tbaa !11
  %1633 = icmp eq ptr %1632, %1577
  br i1 %1633, label %1634, label %1637

1634:                                             ; preds = %1630
  %1635 = load i64, ptr %1578, align 8, !tbaa !15
  %1636 = icmp ult i64 %1635, 16
  call void @llvm.assume(i1 %1636)
  br label %1638

1637:                                             ; preds = %1630
  call void @_ZdlPv(ptr noundef %1632) #26
  br label %1638

1638:                                             ; preds = %1637, %1634
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  br label %2150

1639:                                             ; preds = %1614
  %1640 = icmp ult i64 %1612, 10
  br i1 %1640, label %1663, label %1641

1641:                                             ; preds = %1639, %1617
  %1642 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %1616, ptr noundef nonnull dereferenceable(10) @.str.81, i64 10)
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1644, label %1670

1644:                                             ; preds = %1641
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  store ptr %1580, ptr %9, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %1580, ptr noundef nonnull align 1 dereferenceable(10) @.str.81, i64 10, i1 false)
  store i64 10, ptr %1581, align 8, !tbaa !15
  store i8 0, ptr %1582, align 2, !tbaa !19
  %1645 = invoke fastcc noundef i32 @"_ZZL30__apo_execute_apollo_statementRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEEENK3$_0clES6_b"(ptr nonnull %7, ptr nonnull %19, ptr nonnull %1580, i64 10, i1 noundef zeroext false)
          to label %1646 unwind label %1654

1646:                                             ; preds = %1644
  %1647 = load ptr, ptr %9, align 8, !tbaa !11
  %1648 = icmp eq ptr %1647, %1580
  br i1 %1648, label %1649, label %1652

1649:                                             ; preds = %1646
  %1650 = load i64, ptr %1581, align 8, !tbaa !15
  %1651 = icmp ult i64 %1650, 16
  call void @llvm.assume(i1 %1651)
  br label %1653

1652:                                             ; preds = %1646
  call void @_ZdlPv(ptr noundef %1647) #26
  br label %1653

1653:                                             ; preds = %1652, %1649
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  br label %2159

1654:                                             ; preds = %1644
  %1655 = landingpad { ptr, i32 }
          cleanup
  %1656 = load ptr, ptr %9, align 8, !tbaa !11
  %1657 = icmp eq ptr %1656, %1580
  br i1 %1657, label %1658, label %1661

1658:                                             ; preds = %1654
  %1659 = load i64, ptr %1581, align 8, !tbaa !15
  %1660 = icmp ult i64 %1659, 16
  call void @llvm.assume(i1 %1660)
  br label %1662

1661:                                             ; preds = %1654
  call void @_ZdlPv(ptr noundef %1656) #26
  br label %1662

1662:                                             ; preds = %1661, %1658
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  br label %2150

1663:                                             ; preds = %1639
  %1664 = icmp eq i64 %1612, 6
  br i1 %1664, label %1665, label %1668

1665:                                             ; preds = %1663
  %1666 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %1616, ptr noundef nonnull dereferenceable(6) @.str.82, i64 6)
  %1667 = icmp eq i32 %1666, 0
  br i1 %1667, label %2159, label %1673

1668:                                             ; preds = %1663
  %1669 = icmp ult i64 %1612, 7
  br i1 %1669, label %1673, label %1670

1670:                                             ; preds = %1668, %1641
  %1671 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %1616, ptr noundef nonnull dereferenceable(7) @.str.83, i64 7)
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %2159, label %1673

1673:                                             ; preds = %1670, %1668, %1665
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #27
  invoke fastcc void @_ZL21__apo_split_top_levelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nonnull writable align 8 %10, ptr %1616, i64 %1612, i8 noundef signext 61)
          to label %1674 unwind label %1811

1674:                                             ; preds = %1673
  %1675 = load ptr, ptr %1583, align 8, !tbaa !10
  %1676 = load ptr, ptr %10, align 8, !tbaa !5
  %1677 = ptrtoint ptr %1675 to i64
  %1678 = ptrtoint ptr %1676 to i64
  %1679 = sub i64 %1677, %1678
  %1680 = icmp eq i64 %1679, 64
  br i1 %1680, label %1681, label %2062

1681:                                             ; preds = %1674
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #27
  %1682 = load ptr, ptr %1676, align 8
  %1683 = getelementptr i8, ptr %1676, i64 8
  %1684 = load i64, ptr %1683, align 8
  invoke fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr %1682, i64 %1684)
          to label %1685 unwind label %1813

1685:                                             ; preds = %1681
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  %1686 = load ptr, ptr %10, align 8, !tbaa !5
  %1687 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1686, i64 1
  store ptr %1588, ptr %12, align 8, !tbaa !18
  %1688 = load ptr, ptr %1687, align 8, !tbaa !11
  %1689 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1686, i64 1, i32 1
  %1690 = load i64, ptr %1689, align 8, !tbaa !15
  %1691 = icmp ugt i64 %1690, 15
  br i1 %1691, label %1692, label %1704

1692:                                             ; preds = %1685
  %1693 = icmp slt i64 %1690, 0
  br i1 %1693, label %1694, label %1696

1694:                                             ; preds = %1692
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %1695 unwind label %1817

1695:                                             ; preds = %1694
  unreachable

1696:                                             ; preds = %1692
  %1697 = add nuw i64 %1690, 1
  %1698 = icmp slt i64 %1697, 0
  br i1 %1698, label %1699, label %1701, !prof !37

1699:                                             ; preds = %1696
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %1700 unwind label %1817

1700:                                             ; preds = %1699
  unreachable

1701:                                             ; preds = %1696
  %1702 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %1697) #29
          to label %1703 unwind label %1815

1703:                                             ; preds = %1701
  store ptr %1702, ptr %12, align 8, !tbaa !11
  store i64 %1690, ptr %1588, align 8, !tbaa !19
  br label %1704

1704:                                             ; preds = %1703, %1685
  %1705 = phi ptr [ %1702, %1703 ], [ %1588, %1685 ]
  switch i64 %1690, label %1708 [
    i64 1, label %1706
    i64 0, label %1709
  ]

1706:                                             ; preds = %1704
  %1707 = load i8, ptr %1688, align 1, !tbaa !19
  store i8 %1707, ptr %1705, align 1, !tbaa !19
  br label %1709

1708:                                             ; preds = %1704
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1705, ptr align 1 %1688, i64 %1690, i1 false)
  br label %1709

1709:                                             ; preds = %1708, %1706, %1704
  store i64 %1690, ptr %1589, align 8, !tbaa !15
  %1710 = getelementptr inbounds i8, ptr %1705, i64 %1690
  store i8 0, ptr %1710, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #27
  %1711 = load ptr, ptr %11, align 8, !tbaa !11
  %1712 = load i64, ptr %1590, align 8, !tbaa !15
  invoke fastcc void @_ZL21__apo_split_top_levelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nonnull writable align 8 %13, ptr %1711, i64 %1712, i8 noundef signext 32)
          to label %1713 unwind label %1819

1713:                                             ; preds = %1709
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #27
  store ptr %1591, ptr %14, align 8, !tbaa !18
  %1714 = load ptr, ptr %11, align 8, !tbaa !11
  %1715 = load i64, ptr %1590, align 8, !tbaa !15
  %1716 = icmp ugt i64 %1715, 15
  br i1 %1716, label %1717, label %1729

1717:                                             ; preds = %1713
  %1718 = icmp slt i64 %1715, 0
  br i1 %1718, label %1719, label %1721

1719:                                             ; preds = %1717
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %1720 unwind label %1823

1720:                                             ; preds = %1719
  unreachable

1721:                                             ; preds = %1717
  %1722 = add nuw i64 %1715, 1
  %1723 = icmp slt i64 %1722, 0
  br i1 %1723, label %1724, label %1726, !prof !37

1724:                                             ; preds = %1721
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %1725 unwind label %1823

1725:                                             ; preds = %1724
  unreachable

1726:                                             ; preds = %1721
  %1727 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %1722) #29
          to label %1728 unwind label %1821

1728:                                             ; preds = %1726
  store ptr %1727, ptr %14, align 8, !tbaa !11
  store i64 %1715, ptr %1591, align 8, !tbaa !19
  br label %1729

1729:                                             ; preds = %1728, %1713
  %1730 = phi ptr [ %1727, %1728 ], [ %1591, %1713 ]
  switch i64 %1715, label %1733 [
    i64 1, label %1731
    i64 0, label %1734
  ]

1731:                                             ; preds = %1729
  %1732 = load i8, ptr %1714, align 1, !tbaa !19
  store i8 %1732, ptr %1730, align 1, !tbaa !19
  br label %1734

1733:                                             ; preds = %1729
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1730, ptr align 1 %1714, i64 %1715, i1 false)
  br label %1734

1734:                                             ; preds = %1733, %1731, %1729
  store i64 %1715, ptr %1592, align 8, !tbaa !15
  %1735 = getelementptr inbounds i8, ptr %1730, i64 %1715
  store i8 0, ptr %1735, align 1, !tbaa !19
  %1736 = load ptr, ptr %1593, align 8, !tbaa !38
  %1737 = load ptr, ptr %13, align 8, !tbaa !5
  %1738 = ptrtoint ptr %1736 to i64
  %1739 = ptrtoint ptr %1737 to i64
  %1740 = sub i64 %1738, %1739
  %1741 = icmp ugt i64 %1740, 32
  br i1 %1741, label %1742, label %1862

1742:                                             ; preds = %1734
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #27
  %1743 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1736, i64 -1
  %1744 = load ptr, ptr %1743, align 8
  %1745 = getelementptr %"class.std::__cxx11::basic_string", ptr %1736, i64 -1, i32 1
  %1746 = load i64, ptr %1745, align 8
  invoke fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %15, ptr %1744, i64 %1746)
          to label %1747 unwind label %1825

1747:                                             ; preds = %1742
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #27
  %1748 = load ptr, ptr %1593, align 8, !tbaa !10
  %1749 = load ptr, ptr %13, align 8, !tbaa !5
  %1750 = ptrtoint ptr %1748 to i64
  %1751 = ptrtoint ptr %1749 to i64
  %1752 = sub i64 %1750, %1751
  %1753 = getelementptr i8, ptr %1749, i64 %1752
  %1754 = getelementptr %"class.std::__cxx11::basic_string", ptr %1753, i64 -2
  %1755 = load ptr, ptr %1754, align 8
  %1756 = getelementptr %"class.std::__cxx11::basic_string", ptr %1753, i64 -2, i32 1
  %1757 = load i64, ptr %1756, align 8
  invoke fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %16, ptr %1755, i64 %1757)
          to label %1758 unwind label %1827

1758:                                             ; preds = %1747
  %1759 = load ptr, ptr %15, align 8
  %1760 = load i64, ptr %1594, align 8, !tbaa !15
  %1761 = icmp eq i64 %1760, 0
  br i1 %1761, label %1837, label %1762

1762:                                             ; preds = %1758
  %1763 = load i8, ptr %1759, align 1, !tbaa !19
  %1764 = zext i8 %1763 to i32
  %1765 = call i32 @isalpha(i32 noundef %1764) #31
  %1766 = icmp ne i32 %1765, 0
  %1767 = icmp eq i8 %1763, 95
  %1768 = or i1 %1767, %1766
  br i1 %1768, label %1769, label %1837

1769:                                             ; preds = %1762
  %1770 = icmp eq i64 %1760, 1
  br i1 %1770, label %1783, label %1774

1771:                                             ; preds = %1774
  %1772 = add nuw i64 %1775, 1
  %1773 = icmp eq i64 %1772, %1760
  br i1 %1773, label %1783, label %1774, !llvm.loop !150

1774:                                             ; preds = %1769, %1771
  %1775 = phi i64 [ %1772, %1771 ], [ 1, %1769 ]
  %1776 = getelementptr inbounds i8, ptr %1759, i64 %1775
  %1777 = load i8, ptr %1776, align 1, !tbaa !19
  %1778 = zext i8 %1777 to i32
  %1779 = call i32 @isalnum(i32 noundef %1778) #31
  %1780 = icmp ne i32 %1779, 0
  %1781 = icmp eq i8 %1777, 95
  %1782 = or i1 %1781, %1780
  br i1 %1782, label %1771, label %1837

1783:                                             ; preds = %1771, %1769
  %1784 = load i64, ptr %1595, align 8, !tbaa !15
  switch i64 %1784, label %1808 [
    i64 3, label %1785
    i64 5, label %1804
  ]

1785:                                             ; preds = %1783
  %1786 = load ptr, ptr %16, align 8, !tbaa !11
  %1787 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.84, i64 3)
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1810, label %1789

1789:                                             ; preds = %1785
  %1790 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.85, i64 3)
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1810, label %1792

1792:                                             ; preds = %1789
  %1793 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.86, i64 3)
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1810, label %1795

1795:                                             ; preds = %1792
  %1796 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.87, i64 3)
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1810, label %1798

1798:                                             ; preds = %1795
  %1799 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.88, i64 3)
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1810, label %1801

1801:                                             ; preds = %1798
  %1802 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1786, ptr noundef nonnull dereferenceable(3) @.str.89, i64 3)
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1810, label %1808

1804:                                             ; preds = %1783
  %1805 = load ptr, ptr %16, align 8, !tbaa !11
  %1806 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1805, ptr noundef nonnull dereferenceable(5) @.str.90, i64 5)
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %1810, label %1808

1808:                                             ; preds = %1801, %1783, %1804
  %1809 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.91)
  br i1 %1809, label %1810, label %1837

1810:                                             ; preds = %1808, %1804, %1801, %1798, %1795, %1792, %1789, %1785
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %1837 unwind label %1829

1811:                                             ; preds = %1673
  %1812 = landingpad { ptr, i32 }
          cleanup
  br label %2148

1813:                                             ; preds = %1681
  %1814 = landingpad { ptr, i32 }
          cleanup
  br label %2060

1815:                                             ; preds = %1701
  %1816 = landingpad { ptr, i32 }
          cleanup
  br label %2052

1817:                                             ; preds = %1699, %1694
  %1818 = landingpad { ptr, i32 }
          cleanup
  br label %2052

1819:                                             ; preds = %1709
  %1820 = landingpad { ptr, i32 }
          cleanup
  br label %2044

1821:                                             ; preds = %1726
  %1822 = landingpad { ptr, i32 }
          cleanup
  br label %2042

1823:                                             ; preds = %1724, %1719
  %1824 = landingpad { ptr, i32 }
          cleanup
  br label %2042

1825:                                             ; preds = %1742
  %1826 = landingpad { ptr, i32 }
          cleanup
  br label %1860

1827:                                             ; preds = %1747
  %1828 = landingpad { ptr, i32 }
          cleanup
  br label %1852

1829:                                             ; preds = %1810
  %1830 = landingpad { ptr, i32 }
          cleanup
  %1831 = load ptr, ptr %16, align 8, !tbaa !11
  %1832 = icmp eq ptr %1831, %1596
  br i1 %1832, label %1833, label %1836

1833:                                             ; preds = %1829
  %1834 = load i64, ptr %1595, align 8, !tbaa !15
  %1835 = icmp ult i64 %1834, 16
  call void @llvm.assume(i1 %1835)
  br label %1852

1836:                                             ; preds = %1829
  call void @_ZdlPv(ptr noundef %1831) #26
  br label %1852

1837:                                             ; preds = %1774, %1810, %1808, %1762, %1758
  %1838 = load ptr, ptr %16, align 8, !tbaa !11
  %1839 = icmp eq ptr %1838, %1596
  br i1 %1839, label %1840, label %1843

1840:                                             ; preds = %1837
  %1841 = load i64, ptr %1595, align 8, !tbaa !15
  %1842 = icmp ult i64 %1841, 16
  call void @llvm.assume(i1 %1842)
  br label %1844

1843:                                             ; preds = %1837
  call void @_ZdlPv(ptr noundef %1838) #26
  br label %1844

1844:                                             ; preds = %1843, %1840
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  %1845 = load ptr, ptr %15, align 8, !tbaa !11
  %1846 = icmp eq ptr %1845, %1597
  br i1 %1846, label %1847, label %1850

1847:                                             ; preds = %1844
  %1848 = load i64, ptr %1594, align 8, !tbaa !15
  %1849 = icmp ult i64 %1848, 16
  call void @llvm.assume(i1 %1849)
  br label %1851

1850:                                             ; preds = %1844
  call void @_ZdlPv(ptr noundef %1845) #26
  br label %1851

1851:                                             ; preds = %1850, %1847
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  br label %1862

1852:                                             ; preds = %1836, %1833, %1827
  %1853 = phi { ptr, i32 } [ %1828, %1827 ], [ %1830, %1833 ], [ %1830, %1836 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  %1854 = load ptr, ptr %15, align 8, !tbaa !11
  %1855 = icmp eq ptr %1854, %1597
  br i1 %1855, label %1856, label %1859

1856:                                             ; preds = %1852
  %1857 = load i64, ptr %1594, align 8, !tbaa !15
  %1858 = icmp ult i64 %1857, 16
  call void @llvm.assume(i1 %1858)
  br label %1860

1859:                                             ; preds = %1852
  call void @_ZdlPv(ptr noundef %1854) #26
  br label %1860

1860:                                             ; preds = %1859, %1856, %1825
  %1861 = phi { ptr, i32 } [ %1826, %1825 ], [ %1853, %1856 ], [ %1853, %1859 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  br label %2034

1862:                                             ; preds = %1851, %1734
  %1863 = load ptr, ptr %14, align 8
  %1864 = load i64, ptr %1592, align 8, !tbaa !15
  %1865 = icmp eq i64 %1864, 0
  br i1 %1865, label %1887, label %1866

1866:                                             ; preds = %1862
  %1867 = load i8, ptr %1863, align 1, !tbaa !19
  %1868 = zext i8 %1867 to i32
  %1869 = call i32 @isalpha(i32 noundef %1868) #31
  %1870 = icmp ne i32 %1869, 0
  %1871 = icmp eq i8 %1867, 95
  %1872 = or i1 %1871, %1870
  br i1 %1872, label %1873, label %1887

1873:                                             ; preds = %1866
  %1874 = icmp eq i64 %1864, 1
  br i1 %1874, label %1925, label %1878

1875:                                             ; preds = %1878
  %1876 = add nuw i64 %1879, 1
  %1877 = icmp eq i64 %1876, %1864
  br i1 %1877, label %1925, label %1878, !llvm.loop !150

1878:                                             ; preds = %1873, %1875
  %1879 = phi i64 [ %1876, %1875 ], [ 1, %1873 ]
  %1880 = getelementptr inbounds i8, ptr %1863, i64 %1879
  %1881 = load i8, ptr %1880, align 1, !tbaa !19
  %1882 = zext i8 %1881 to i32
  %1883 = call i32 @isalnum(i32 noundef %1882) #31
  %1884 = icmp ne i32 %1883, 0
  %1885 = icmp eq i8 %1881, 95
  %1886 = or i1 %1885, %1884
  br i1 %1886, label %1875, label %1887

1887:                                             ; preds = %1878, %1866, %1862
  %1888 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.92, i64 noundef 46)
          to label %1889 unwind label %1921

1889:                                             ; preds = %1887
  %1890 = load ptr, ptr %11, align 8, !tbaa !11
  %1891 = load i64, ptr %1590, align 8, !tbaa !15
  %1892 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1890, i64 noundef %1891)
          to label %1893 unwind label %1921

1893:                                             ; preds = %1889
  %1894 = load ptr, ptr %1892, align 8, !tbaa !23
  %1895 = getelementptr i8, ptr %1894, i64 -24
  %1896 = load i64, ptr %1895, align 8
  %1897 = getelementptr inbounds i8, ptr %1892, i64 %1896
  %1898 = getelementptr inbounds %"class.std::basic_ios", ptr %1897, i64 0, i32 5
  %1899 = load ptr, ptr %1898, align 8, !tbaa !25
  %1900 = icmp eq ptr %1899, null
  br i1 %1900, label %1901, label %1903

1901:                                             ; preds = %1893
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %1902 unwind label %1923

1902:                                             ; preds = %1901
  unreachable

1903:                                             ; preds = %1893
  %1904 = getelementptr inbounds %"class.std::ctype", ptr %1899, i64 0, i32 8
  %1905 = load i8, ptr %1904, align 8, !tbaa !34
  %1906 = icmp eq i8 %1905, 0
  br i1 %1906, label %1910, label %1907

1907:                                             ; preds = %1903
  %1908 = getelementptr inbounds %"class.std::ctype", ptr %1899, i64 0, i32 9, i64 10
  %1909 = load i8, ptr %1908, align 1, !tbaa !19
  br label %1916

1910:                                             ; preds = %1903
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1899)
          to label %1911 unwind label %1921

1911:                                             ; preds = %1910
  %1912 = load ptr, ptr %1899, align 8, !tbaa !23
  %1913 = getelementptr inbounds ptr, ptr %1912, i64 6
  %1914 = load ptr, ptr %1913, align 8
  %1915 = invoke noundef signext i8 %1914(ptr noundef nonnull align 8 dereferenceable(570) %1899, i8 noundef signext 10)
          to label %1916 unwind label %1921

1916:                                             ; preds = %1911, %1907
  %1917 = phi i8 [ %1909, %1907 ], [ %1915, %1911 ]
  %1918 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1892, i8 noundef signext %1917)
          to label %1919 unwind label %1921

1919:                                             ; preds = %1916
  %1920 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %1918)
          to label %1988 unwind label %1921

1921:                                             ; preds = %1919, %1916, %1911, %1910, %1889, %1887
  %1922 = landingpad { ptr, i32 }
          cleanup
  br label %2034

1923:                                             ; preds = %1901
  %1924 = landingpad { ptr, i32 }
          cleanup
  br label %2034

1925:                                             ; preds = %1875, %1873
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %17) #27
  store i32 1, ptr %17, align 8, !tbaa !151
  store i64 0, ptr %1598, align 8, !tbaa !155
  store ptr %1600, ptr %1599, align 8, !tbaa !18
  store i64 0, ptr %1601, align 8, !tbaa !15
  store i8 0, ptr %1600, align 8, !tbaa !19
  %1926 = invoke fastcc noundef zeroext i1 @_ZL22__apo_eval_apollo_exprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEERS8_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %1927 unwind label %1962

1927:                                             ; preds = %1925
  br i1 %1926, label %1975, label %1928

1928:                                             ; preds = %1927
  %1929 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 39)
          to label %1930 unwind label %1962

1930:                                             ; preds = %1928
  %1931 = load ptr, ptr %12, align 8, !tbaa !11
  %1932 = load i64, ptr %1589, align 8, !tbaa !15
  %1933 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %1931, i64 noundef %1932)
          to label %1934 unwind label %1962

1934:                                             ; preds = %1930
  %1935 = load ptr, ptr %1933, align 8, !tbaa !23
  %1936 = getelementptr i8, ptr %1935, i64 -24
  %1937 = load i64, ptr %1936, align 8
  %1938 = getelementptr inbounds i8, ptr %1933, i64 %1937
  %1939 = getelementptr inbounds %"class.std::basic_ios", ptr %1938, i64 0, i32 5
  %1940 = load ptr, ptr %1939, align 8, !tbaa !25
  %1941 = icmp eq ptr %1940, null
  br i1 %1941, label %1942, label %1944

1942:                                             ; preds = %1934
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %1943 unwind label %1964

1943:                                             ; preds = %1942
  unreachable

1944:                                             ; preds = %1934
  %1945 = getelementptr inbounds %"class.std::ctype", ptr %1940, i64 0, i32 8
  %1946 = load i8, ptr %1945, align 8, !tbaa !34
  %1947 = icmp eq i8 %1946, 0
  br i1 %1947, label %1951, label %1948

1948:                                             ; preds = %1944
  %1949 = getelementptr inbounds %"class.std::ctype", ptr %1940, i64 0, i32 9, i64 10
  %1950 = load i8, ptr %1949, align 1, !tbaa !19
  br label %1957

1951:                                             ; preds = %1944
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1940)
          to label %1952 unwind label %1962

1952:                                             ; preds = %1951
  %1953 = load ptr, ptr %1940, align 8, !tbaa !23
  %1954 = getelementptr inbounds ptr, ptr %1953, i64 6
  %1955 = load ptr, ptr %1954, align 8
  %1956 = invoke noundef signext i8 %1955(ptr noundef nonnull align 8 dereferenceable(570) %1940, i8 noundef signext 10)
          to label %1957 unwind label %1962

1957:                                             ; preds = %1952, %1948
  %1958 = phi i8 [ %1950, %1948 ], [ %1956, %1952 ]
  %1959 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1933, i8 noundef signext %1958)
          to label %1960 unwind label %1962

1960:                                             ; preds = %1957
  %1961 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %1959)
          to label %1979 unwind label %1962

1962:                                             ; preds = %1977, %1975, %1960, %1957, %1952, %1951, %1930, %1928, %1925
  %1963 = landingpad { ptr, i32 }
          cleanup
  br label %1966

1964:                                             ; preds = %1942
  %1965 = landingpad { ptr, i32 }
          cleanup
  br label %1966

1966:                                             ; preds = %1964, %1962
  %1967 = phi { ptr, i32 } [ %1963, %1962 ], [ %1965, %1964 ]
  %1968 = load ptr, ptr %1599, align 8, !tbaa !11
  %1969 = icmp eq ptr %1968, %1600
  br i1 %1969, label %1970, label %1973

1970:                                             ; preds = %1966
  %1971 = load i64, ptr %1601, align 8, !tbaa !15
  %1972 = icmp ult i64 %1971, 16
  call void @llvm.assume(i1 %1972)
  br label %1974

1973:                                             ; preds = %1966
  call void @_ZdlPv(ptr noundef %1968) #26
  br label %1974

1974:                                             ; preds = %1973, %1970
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #27
  br label %2034

1975:                                             ; preds = %1927
  %1976 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_26__apo_apollo_payload_valueESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %1977 unwind label %1962

1977:                                             ; preds = %1975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1976, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %1978 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1976, i64 0, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1978, ptr noundef nonnull align 8 dereferenceable(32) %1599)
          to label %1979 unwind label %1962

1979:                                             ; preds = %1977, %1960
  %1980 = phi i32 [ 0, %1977 ], [ -1, %1960 ]
  %1981 = load ptr, ptr %1599, align 8, !tbaa !11
  %1982 = icmp eq ptr %1981, %1600
  br i1 %1982, label %1983, label %1986

1983:                                             ; preds = %1979
  %1984 = load i64, ptr %1601, align 8, !tbaa !15
  %1985 = icmp ult i64 %1984, 16
  call void @llvm.assume(i1 %1985)
  br label %1987

1986:                                             ; preds = %1979
  call void @_ZdlPv(ptr noundef %1981) #26
  br label %1987

1987:                                             ; preds = %1986, %1983
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #27
  br label %1988

1988:                                             ; preds = %1987, %1919
  %1989 = phi i32 [ %1980, %1987 ], [ -1, %1919 ]
  %1990 = load ptr, ptr %14, align 8, !tbaa !11
  %1991 = icmp eq ptr %1990, %1591
  br i1 %1991, label %1992, label %1995

1992:                                             ; preds = %1988
  %1993 = load i64, ptr %1592, align 8, !tbaa !15
  %1994 = icmp ult i64 %1993, 16
  call void @llvm.assume(i1 %1994)
  br label %1996

1995:                                             ; preds = %1988
  call void @_ZdlPv(ptr noundef %1990) #26
  br label %1996

1996:                                             ; preds = %1995, %1992
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  %1997 = load ptr, ptr %13, align 8, !tbaa !5
  %1998 = load ptr, ptr %1593, align 8, !tbaa !10
  %1999 = icmp eq ptr %1997, %1998
  br i1 %1999, label %2015, label %2000

2000:                                             ; preds = %1996, %2010
  %2001 = phi ptr [ %2011, %2010 ], [ %1997, %1996 ]
  %2002 = load ptr, ptr %2001, align 8, !tbaa !11
  %2003 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2001, i64 0, i32 2
  %2004 = icmp eq ptr %2002, %2003
  br i1 %2004, label %2005, label %2009

2005:                                             ; preds = %2000
  %2006 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2001, i64 0, i32 1
  %2007 = load i64, ptr %2006, align 8, !tbaa !15
  %2008 = icmp ult i64 %2007, 16
  call void @llvm.assume(i1 %2008)
  br label %2010

2009:                                             ; preds = %2000
  call void @_ZdlPv(ptr noundef %2002) #26
  br label %2010

2010:                                             ; preds = %2009, %2005
  %2011 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2001, i64 1
  %2012 = icmp eq ptr %2011, %1998
  br i1 %2012, label %2013, label %2000, !llvm.loop !16

2013:                                             ; preds = %2010
  %2014 = load ptr, ptr %13, align 8, !tbaa !5
  br label %2015

2015:                                             ; preds = %2013, %1996
  %2016 = phi ptr [ %2014, %2013 ], [ %1997, %1996 ]
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2019, label %2018

2018:                                             ; preds = %2015
  call void @_ZdlPv(ptr noundef nonnull %2016) #26
  br label %2019

2019:                                             ; preds = %2018, %2015
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #27
  %2020 = load ptr, ptr %12, align 8, !tbaa !11
  %2021 = icmp eq ptr %2020, %1588
  br i1 %2021, label %2022, label %2025

2022:                                             ; preds = %2019
  %2023 = load i64, ptr %1589, align 8, !tbaa !15
  %2024 = icmp ult i64 %2023, 16
  call void @llvm.assume(i1 %2024)
  br label %2026

2025:                                             ; preds = %2019
  call void @_ZdlPv(ptr noundef %2020) #26
  br label %2026

2026:                                             ; preds = %2025, %2022
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  %2027 = load ptr, ptr %11, align 8, !tbaa !11
  %2028 = icmp eq ptr %2027, %1602
  br i1 %2028, label %2029, label %2032

2029:                                             ; preds = %2026
  %2030 = load i64, ptr %1590, align 8, !tbaa !15
  %2031 = icmp ult i64 %2030, 16
  call void @llvm.assume(i1 %2031)
  br label %2033

2032:                                             ; preds = %2026
  call void @_ZdlPv(ptr noundef %2027) #26
  br label %2033

2033:                                             ; preds = %2032, %2029
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  br label %2121

2034:                                             ; preds = %1974, %1923, %1921, %1860
  %2035 = phi { ptr, i32 } [ %1967, %1974 ], [ %1861, %1860 ], [ %1922, %1921 ], [ %1924, %1923 ]
  %2036 = load ptr, ptr %14, align 8, !tbaa !11
  %2037 = icmp eq ptr %2036, %1591
  br i1 %2037, label %2038, label %2041

2038:                                             ; preds = %2034
  %2039 = load i64, ptr %1592, align 8, !tbaa !15
  %2040 = icmp ult i64 %2039, 16
  call void @llvm.assume(i1 %2040)
  br label %2042

2041:                                             ; preds = %2034
  call void @_ZdlPv(ptr noundef %2036) #26
  br label %2042

2042:                                             ; preds = %2041, %2038, %1823, %1821
  %2043 = phi { ptr, i32 } [ %2035, %2038 ], [ %2035, %2041 ], [ %1822, %1821 ], [ %1824, %1823 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #27
  br label %2044

2044:                                             ; preds = %2042, %1819
  %2045 = phi { ptr, i32 } [ %2043, %2042 ], [ %1820, %1819 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #27
  %2046 = load ptr, ptr %12, align 8, !tbaa !11
  %2047 = icmp eq ptr %2046, %1588
  br i1 %2047, label %2048, label %2051

2048:                                             ; preds = %2044
  %2049 = load i64, ptr %1589, align 8, !tbaa !15
  %2050 = icmp ult i64 %2049, 16
  call void @llvm.assume(i1 %2050)
  br label %2052

2051:                                             ; preds = %2044
  call void @_ZdlPv(ptr noundef %2046) #26
  br label %2052

2052:                                             ; preds = %2051, %2048, %1817, %1815
  %2053 = phi { ptr, i32 } [ %2045, %2048 ], [ %2045, %2051 ], [ %1816, %1815 ], [ %1818, %1817 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  %2054 = load ptr, ptr %11, align 8, !tbaa !11
  %2055 = icmp eq ptr %2054, %1602
  br i1 %2055, label %2056, label %2059

2056:                                             ; preds = %2052
  %2057 = load i64, ptr %1590, align 8, !tbaa !15
  %2058 = icmp ult i64 %2057, 16
  call void @llvm.assume(i1 %2058)
  br label %2060

2059:                                             ; preds = %2052
  call void @_ZdlPv(ptr noundef %2054) #26
  br label %2060

2060:                                             ; preds = %2059, %2056, %1813
  %2061 = phi { ptr, i32 } [ %1814, %1813 ], [ %2053, %2056 ], [ %2053, %2059 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  br label %2146

2062:                                             ; preds = %1674
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #27
  store i32 1, ptr %18, align 8, !tbaa !151
  store i64 0, ptr %1584, align 8, !tbaa !155
  store ptr %1586, ptr %1585, align 8, !tbaa !18
  store i64 0, ptr %1587, align 8, !tbaa !15
  store i8 0, ptr %1586, align 8, !tbaa !19
  %2063 = invoke fastcc noundef zeroext i1 @_ZL22__apo_eval_apollo_exprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEERS8_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %2064 unwind label %2065

2064:                                             ; preds = %2062
  br i1 %2063, label %2112, label %2078

2065:                                             ; preds = %2110, %2107, %2102, %2101, %2080, %2078, %2062
  %2066 = landingpad { ptr, i32 }
          cleanup
  br label %2069

2067:                                             ; preds = %2092
  %2068 = landingpad { ptr, i32 }
          cleanup
  br label %2069

2069:                                             ; preds = %2067, %2065
  %2070 = phi { ptr, i32 } [ %2066, %2065 ], [ %2068, %2067 ]
  %2071 = load ptr, ptr %1585, align 8, !tbaa !11
  %2072 = icmp eq ptr %2071, %1586
  br i1 %2072, label %2073, label %2076

2073:                                             ; preds = %2069
  %2074 = load i64, ptr %1587, align 8, !tbaa !15
  %2075 = icmp ult i64 %2074, 16
  call void @llvm.assume(i1 %2075)
  br label %2077

2076:                                             ; preds = %2069
  call void @_ZdlPv(ptr noundef %2071) #26
  br label %2077

2077:                                             ; preds = %2076, %2073
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #27
  br label %2146

2078:                                             ; preds = %2064
  %2079 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.94, i64 noundef 38)
          to label %2080 unwind label %2065

2080:                                             ; preds = %2078
  %2081 = load ptr, ptr %7, align 8, !tbaa !11
  %2082 = load i64, ptr %1576, align 8, !tbaa !15
  %2083 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %2081, i64 noundef %2082)
          to label %2084 unwind label %2065

2084:                                             ; preds = %2080
  %2085 = load ptr, ptr %2083, align 8, !tbaa !23
  %2086 = getelementptr i8, ptr %2085, i64 -24
  %2087 = load i64, ptr %2086, align 8
  %2088 = getelementptr inbounds i8, ptr %2083, i64 %2087
  %2089 = getelementptr inbounds %"class.std::basic_ios", ptr %2088, i64 0, i32 5
  %2090 = load ptr, ptr %2089, align 8, !tbaa !25
  %2091 = icmp eq ptr %2090, null
  br i1 %2091, label %2092, label %2094

2092:                                             ; preds = %2084
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %2093 unwind label %2067

2093:                                             ; preds = %2092
  unreachable

2094:                                             ; preds = %2084
  %2095 = getelementptr inbounds %"class.std::ctype", ptr %2090, i64 0, i32 8
  %2096 = load i8, ptr %2095, align 8, !tbaa !34
  %2097 = icmp eq i8 %2096, 0
  br i1 %2097, label %2101, label %2098

2098:                                             ; preds = %2094
  %2099 = getelementptr inbounds %"class.std::ctype", ptr %2090, i64 0, i32 9, i64 10
  %2100 = load i8, ptr %2099, align 1, !tbaa !19
  br label %2107

2101:                                             ; preds = %2094
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %2090)
          to label %2102 unwind label %2065

2102:                                             ; preds = %2101
  %2103 = load ptr, ptr %2090, align 8, !tbaa !23
  %2104 = getelementptr inbounds ptr, ptr %2103, i64 6
  %2105 = load ptr, ptr %2104, align 8
  %2106 = invoke noundef signext i8 %2105(ptr noundef nonnull align 8 dereferenceable(570) %2090, i8 noundef signext 10)
          to label %2107 unwind label %2065

2107:                                             ; preds = %2102, %2098
  %2108 = phi i8 [ %2100, %2098 ], [ %2106, %2102 ]
  %2109 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2083, i8 noundef signext %2108)
          to label %2110 unwind label %2065

2110:                                             ; preds = %2107
  %2111 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %2109)
          to label %2112 unwind label %2065

2112:                                             ; preds = %2110, %2064
  %2113 = phi i32 [ 0, %2064 ], [ -1, %2110 ]
  %2114 = load ptr, ptr %1585, align 8, !tbaa !11
  %2115 = icmp eq ptr %2114, %1586
  br i1 %2115, label %2116, label %2119

2116:                                             ; preds = %2112
  %2117 = load i64, ptr %1587, align 8, !tbaa !15
  %2118 = icmp ult i64 %2117, 16
  call void @llvm.assume(i1 %2118)
  br label %2120

2119:                                             ; preds = %2112
  call void @_ZdlPv(ptr noundef %2114) #26
  br label %2120

2120:                                             ; preds = %2119, %2116
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #27
  br label %2121

2121:                                             ; preds = %2120, %2033
  %2122 = phi i32 [ %1989, %2033 ], [ %2113, %2120 ]
  %2123 = load ptr, ptr %10, align 8, !tbaa !5
  %2124 = load ptr, ptr %1583, align 8, !tbaa !10
  %2125 = icmp eq ptr %2123, %2124
  br i1 %2125, label %2141, label %2126

2126:                                             ; preds = %2121, %2136
  %2127 = phi ptr [ %2137, %2136 ], [ %2123, %2121 ]
  %2128 = load ptr, ptr %2127, align 8, !tbaa !11
  %2129 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2127, i64 0, i32 2
  %2130 = icmp eq ptr %2128, %2129
  br i1 %2130, label %2131, label %2135

2131:                                             ; preds = %2126
  %2132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2127, i64 0, i32 1
  %2133 = load i64, ptr %2132, align 8, !tbaa !15
  %2134 = icmp ult i64 %2133, 16
  call void @llvm.assume(i1 %2134)
  br label %2136

2135:                                             ; preds = %2126
  call void @_ZdlPv(ptr noundef %2128) #26
  br label %2136

2136:                                             ; preds = %2135, %2131
  %2137 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2127, i64 1
  %2138 = icmp eq ptr %2137, %2124
  br i1 %2138, label %2139, label %2126, !llvm.loop !16

2139:                                             ; preds = %2136
  %2140 = load ptr, ptr %10, align 8, !tbaa !5
  br label %2141

2141:                                             ; preds = %2139, %2121
  %2142 = phi ptr [ %2140, %2139 ], [ %2123, %2121 ]
  %2143 = icmp eq ptr %2142, null
  br i1 %2143, label %2145, label %2144

2144:                                             ; preds = %2141
  call void @_ZdlPv(ptr noundef nonnull %2142) #26
  br label %2145

2145:                                             ; preds = %2144, %2141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  br label %2159

2146:                                             ; preds = %2077, %2060
  %2147 = phi { ptr, i32 } [ %2061, %2060 ], [ %2070, %2077 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #27
  br label %2148

2148:                                             ; preds = %2146, %1811
  %2149 = phi { ptr, i32 } [ %2147, %2146 ], [ %1812, %1811 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  br label %2150

2150:                                             ; preds = %2148, %1662, %1638
  %2151 = phi { ptr, i32 } [ %1631, %1638 ], [ %1655, %1662 ], [ %2149, %2148 ]
  %2152 = load ptr, ptr %7, align 8, !tbaa !11
  %2153 = icmp eq ptr %2152, %1603
  br i1 %2153, label %2154, label %2157

2154:                                             ; preds = %2150
  %2155 = load i64, ptr %1576, align 8, !tbaa !15
  %2156 = icmp ult i64 %2155, 16
  call void @llvm.assume(i1 %2156)
  br label %2158

2157:                                             ; preds = %2150
  call void @_ZdlPv(ptr noundef %2152) #26
  br label %2158

2158:                                             ; preds = %2157, %2154
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  br label %2174

2159:                                             ; preds = %2145, %1670, %1665, %1653, %1629, %1611
  %2160 = phi i32 [ 0, %1611 ], [ %1621, %1629 ], [ %1645, %1653 ], [ %2122, %2145 ], [ 0, %1665 ], [ 0, %1670 ]
  %2161 = load ptr, ptr %7, align 8, !tbaa !11
  %2162 = icmp eq ptr %2161, %1603
  br i1 %2162, label %2163, label %2166

2163:                                             ; preds = %2159
  %2164 = load i64, ptr %1576, align 8, !tbaa !15
  %2165 = icmp ult i64 %2164, 16
  call void @llvm.assume(i1 %2165)
  br label %2167

2166:                                             ; preds = %2159
  call void @_ZdlPv(ptr noundef %2161) #26
  br label %2167

2167:                                             ; preds = %2166, %2163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  %2168 = icmp ne i32 %2160, 0
  %2169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1607, i64 1
  %2170 = icmp eq ptr %2169, %1573
  %2171 = select i1 %2168, i1 true, i1 %2170
  br i1 %2171, label %2176, label %1606

2172:                                             ; preds = %1606
  %2173 = landingpad { ptr, i32 }
          cleanup
  br label %2174

2174:                                             ; preds = %2172, %2158
  %2175 = phi { ptr, i32 } [ %2173, %2172 ], [ %2151, %2158 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #27
  br label %2233

2176:                                             ; preds = %2167
  %2177 = load ptr, ptr %20, align 8, !tbaa !5
  %2178 = load ptr, ptr %1572, align 8, !tbaa !10
  %2179 = icmp eq ptr %2177, %2178
  br i1 %2179, label %2195, label %2180

2180:                                             ; preds = %2176, %2190
  %2181 = phi ptr [ %2191, %2190 ], [ %2177, %2176 ]
  %2182 = load ptr, ptr %2181, align 8, !tbaa !11
  %2183 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2181, i64 0, i32 2
  %2184 = icmp eq ptr %2182, %2183
  br i1 %2184, label %2185, label %2189

2185:                                             ; preds = %2180
  %2186 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2181, i64 0, i32 1
  %2187 = load i64, ptr %2186, align 8, !tbaa !15
  %2188 = icmp ult i64 %2187, 16
  call void @llvm.assume(i1 %2188)
  br label %2190

2189:                                             ; preds = %2180
  call void @_ZdlPv(ptr noundef %2182) #26
  br label %2190

2190:                                             ; preds = %2189, %2185
  %2191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2181, i64 1
  %2192 = icmp eq ptr %2191, %2178
  br i1 %2192, label %2193, label %2180, !llvm.loop !16

2193:                                             ; preds = %2190
  %2194 = load ptr, ptr %20, align 8, !tbaa !5
  br label %2195

2195:                                             ; preds = %2193, %2176, %1570
  %2196 = phi ptr [ %2194, %2193 ], [ %2177, %2176 ], [ %1571, %1570 ]
  %2197 = icmp eq ptr %2196, null
  br i1 %2197, label %2199, label %2198

2198:                                             ; preds = %2195
  call void @_ZdlPv(ptr noundef nonnull %2196) #26
  br label %2199

2199:                                             ; preds = %2198, %2195
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #27
  %2200 = load ptr, ptr %1567, align 8, !tbaa !156
  %2201 = icmp eq ptr %2200, null
  br i1 %2201, label %2226, label %2202

2202:                                             ; preds = %2199, %2224
  %2203 = phi ptr [ %2204, %2224 ], [ %2200, %2199 ]
  %2204 = load ptr, ptr %2203, align 8, !tbaa !157
  %2205 = getelementptr inbounds i8, ptr %2203, i64 8
  %2206 = getelementptr inbounds i8, ptr %2203, i64 56
  %2207 = load ptr, ptr %2206, align 8, !tbaa !11
  %2208 = getelementptr inbounds i8, ptr %2203, i64 72
  %2209 = icmp eq ptr %2207, %2208
  br i1 %2209, label %2210, label %2214

2210:                                             ; preds = %2202
  %2211 = getelementptr inbounds i8, ptr %2203, i64 64
  %2212 = load i64, ptr %2211, align 8, !tbaa !15
  %2213 = icmp ult i64 %2212, 16
  call void @llvm.assume(i1 %2213)
  br label %2215

2214:                                             ; preds = %2202
  call void @_ZdlPv(ptr noundef %2207) #26
  br label %2215

2215:                                             ; preds = %2214, %2210
  %2216 = load ptr, ptr %2205, align 8, !tbaa !11
  %2217 = getelementptr inbounds i8, ptr %2203, i64 24
  %2218 = icmp eq ptr %2216, %2217
  br i1 %2218, label %2219, label %2223

2219:                                             ; preds = %2215
  %2220 = getelementptr inbounds i8, ptr %2203, i64 16
  %2221 = load i64, ptr %2220, align 8, !tbaa !15
  %2222 = icmp ult i64 %2221, 16
  call void @llvm.assume(i1 %2222)
  br label %2224

2223:                                             ; preds = %2215
  call void @_ZdlPv(ptr noundef %2216) #26
  br label %2224

2224:                                             ; preds = %2223, %2219
  call void @_ZdlPv(ptr noundef nonnull %2203) #26
  %2225 = icmp eq ptr %2204, null
  br i1 %2225, label %2226, label %2202, !llvm.loop !158

2226:                                             ; preds = %2224, %2199
  %2227 = load ptr, ptr %19, align 8, !tbaa !143
  %2228 = load i64, ptr %1566, align 8, !tbaa !148
  %2229 = shl i64 %2228, 3
  call void @llvm.memset.p0.i64(ptr align 8 %2227, i8 0, i64 %2229, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1567, i8 0, i64 16, i1 false)
  %2230 = load ptr, ptr %19, align 8, !tbaa !143
  %2231 = icmp eq ptr %1565, %2230
  br i1 %2231, label %2235, label %2232

2232:                                             ; preds = %2226
  call void @_ZdlPv(ptr noundef %2230) #26
  br label %2235

2233:                                             ; preds = %2174, %1604
  %2234 = phi { ptr, i32 } [ %2175, %2174 ], [ %1605, %1604 ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %19) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #27
  br label %3528

2235:                                             ; preds = %2226, %2232
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #27
  br label %3504

2236:                                             ; preds = %192, %190, %185, %176
  %2237 = landingpad { ptr, i32 }
          cleanup
  br label %3546

2238:                                             ; preds = %216, %214, %209
  %2239 = landingpad { ptr, i32 }
          cleanup
  br label %3538

2240:                                             ; preds = %3479, %3502, %3498, %3496
  %2241 = landingpad { ptr, i32 }
          cleanup
  br label %3528

2242:                                             ; preds = %1556
  %2243 = load ptr, ptr %54, align 8, !tbaa !11
  %2244 = call i32 @bcmp(ptr %2243, ptr nonnull @.str.14, i64 %1557)
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2246, label %2916

2246:                                             ; preds = %2242
  %2247 = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #29
          to label %2248 unwind label %2373

2248:                                             ; preds = %2246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %2247, ptr noundef nonnull align 1 dereferenceable(20) @.str.15, i64 20, i1 false)
  %2249 = getelementptr inbounds i8, ptr %2247, i64 20
  store i8 0, ptr %2249, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %57) #27
  %2250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 2
  %2251 = invoke noalias noundef nonnull dereferenceable(25) ptr @_Znwm(i64 noundef 25) #29
          to label %2252 unwind label %2375

2252:                                             ; preds = %2248
  store ptr %2251, ptr %57, align 8, !tbaa !11
  store i64 24, ptr %2250, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %2251, ptr noundef nonnull align 1 dereferenceable(24) @.str.16, i64 24, i1 false)
  %2253 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  store i64 24, ptr %2253, align 8, !tbaa !15
  %2254 = getelementptr inbounds i8, ptr %2251, i64 24
  store i8 0, ptr %2254, align 1, !tbaa !19
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %2255 unwind label %2377

2255:                                             ; preds = %2252
  %2256 = load ptr, ptr %57, align 8, !tbaa !11
  %2257 = icmp eq ptr %2256, %2250
  br i1 %2257, label %2258, label %2261

2258:                                             ; preds = %2255
  %2259 = load i64, ptr %2253, align 8, !tbaa !15
  %2260 = icmp ult i64 %2259, 16
  call void @llvm.assume(i1 %2260)
  br label %2262

2261:                                             ; preds = %2255
  call void @_ZdlPv(ptr noundef %2256) #26
  br label %2262

2262:                                             ; preds = %2258, %2261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %57) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %58) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %59) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %60) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %61) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %62) #27
  %2263 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %62, i64 0, i32 2
  store ptr %2263, ptr %62, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %2263, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false)
  %2264 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %62, i64 0, i32 1
  store i64 3, ptr %2264, align 8, !tbaa !15
  %2265 = getelementptr inbounds i8, ptr %62, i64 19
  store i8 0, ptr %2265, align 1, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %62, i64 noundef 3, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 29)
          to label %2266 unwind label %2387

2266:                                             ; preds = %2262
  %2267 = load ptr, ptr %62, align 8, !tbaa !11, !noalias !159
  %2268 = getelementptr inbounds i8, ptr %2267, i64 32
  store i8 0, ptr %2268, align 1, !tbaa !19, !noalias !159
  %2269 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 2
  store ptr %2269, ptr %61, align 8, !tbaa !18, !alias.scope !159
  %2270 = icmp ne ptr %2267, %2263
  call void @llvm.assume(i1 %2270)
  store ptr %2267, ptr %61, align 8, !tbaa !11, !alias.scope !159
  %2271 = load i64, ptr %2263, align 8, !tbaa !19, !noalias !159
  store i64 %2271, ptr %2269, align 8, !tbaa !19, !alias.scope !159
  %2272 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 1
  store i64 32, ptr %2272, align 8, !tbaa !15, !alias.scope !159
  store ptr %2263, ptr %62, align 8, !tbaa !11, !noalias !159
  store i64 0, ptr %2264, align 8, !tbaa !15, !noalias !159
  store i8 0, ptr %2263, align 8, !tbaa !19, !noalias !159
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %63) #27
  %2273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 2
  store ptr %2273, ptr %63, align 8, !tbaa !18, !alias.scope !162
  %2274 = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #29
          to label %2275 unwind label %2389

2275:                                             ; preds = %2266
  store ptr %2274, ptr %63, align 8, !tbaa !11, !alias.scope !162
  store i64 20, ptr %2273, align 8, !tbaa !19, !alias.scope !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %2274, ptr noundef nonnull align 1 dereferenceable(20) %2247, i64 20, i1 false)
  %2276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 1
  store i64 20, ptr %2276, align 8, !tbaa !15, !alias.scope !162
  %2277 = getelementptr inbounds i8, ptr %2274, i64 20
  store i8 0, ptr %2277, align 1, !tbaa !19
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %2278 unwind label %2391

2278:                                             ; preds = %2275
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %2279 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 1
  %2280 = load i64, ptr %2279, align 8, !tbaa !15, !noalias !165
  %2281 = and i64 %2280, -4
  %2282 = icmp eq i64 %2281, 9223372036854775804
  br i1 %2282, label %2283, label %2285

2283:                                             ; preds = %2278
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %2284 unwind label %2393

2284:                                             ; preds = %2283
  unreachable

2285:                                             ; preds = %2278
  %2286 = add i64 %2280, 4
  %2287 = load ptr, ptr %60, align 8, !tbaa !11, !noalias !165
  %2288 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 2
  %2289 = icmp eq ptr %2287, %2288
  br i1 %2289, label %2290, label %2292

2290:                                             ; preds = %2285
  %2291 = icmp ult i64 %2280, 16
  call void @llvm.assume(i1 %2291)
  br label %2292

2292:                                             ; preds = %2290, %2285
  %2293 = load i64, ptr %2288, align 8, !noalias !165
  %2294 = select i1 %2289, i64 15, i64 %2293
  %2295 = icmp ugt i64 %2286, %2294
  br i1 %2295, label %2298, label %2296

2296:                                             ; preds = %2292
  %2297 = getelementptr inbounds i8, ptr %2287, i64 %2280
  store i32 539371040, ptr %2297, align 1, !noalias !165
  br label %2299

2298:                                             ; preds = %2292
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %60, i64 noundef %2280, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 4)
          to label %2299 unwind label %2393

2299:                                             ; preds = %2298, %2296
  store i64 %2286, ptr %2279, align 8, !tbaa !15, !noalias !165
  %2300 = load ptr, ptr %60, align 8, !tbaa !11, !noalias !165
  %2301 = getelementptr inbounds i8, ptr %2300, i64 %2286
  store i8 0, ptr %2301, align 1, !tbaa !19, !noalias !165
  %2302 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 0, i32 2
  store ptr %2302, ptr %59, align 8, !tbaa !18, !alias.scope !165
  %2303 = load ptr, ptr %60, align 8, !tbaa !11, !noalias !165
  %2304 = icmp eq ptr %2303, %2288
  br i1 %2304, label %2305, label %2309

2305:                                             ; preds = %2299
  %2306 = load i64, ptr %2279, align 8, !tbaa !15, !noalias !165
  %2307 = icmp ult i64 %2306, 16
  call void @llvm.assume(i1 %2307)
  %2308 = add nuw nsw i64 %2306, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2302, ptr noundef nonnull align 8 dereferenceable(1) %2288, i64 %2308, i1 false)
  br label %2312

2309:                                             ; preds = %2299
  store ptr %2303, ptr %59, align 8, !tbaa !11, !alias.scope !165
  %2310 = load i64, ptr %2288, align 8, !tbaa !19, !noalias !165
  store i64 %2310, ptr %2302, align 8, !tbaa !19, !alias.scope !165
  %2311 = load i64, ptr %2279, align 8, !tbaa !15, !noalias !165
  br label %2312

2312:                                             ; preds = %2309, %2305
  %2313 = phi i64 [ %2306, %2305 ], [ %2311, %2309 ]
  %2314 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %59, i64 0, i32 1
  store i64 %2313, ptr %2314, align 8, !tbaa !15, !alias.scope !165
  store ptr %2288, ptr %60, align 8, !tbaa !11, !noalias !165
  store i64 0, ptr %2279, align 8, !tbaa !15, !noalias !165
  store i8 0, ptr %2288, align 8, !tbaa !19, !noalias !165
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %64) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27, !noalias !168
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull @.str.101, i64 noundef 2, ptr noundef nonnull %2247, i64 noundef 20, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %2315 unwind label %2395

2315:                                             ; preds = %2312
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27, !noalias !168
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %64)
          to label %2316 unwind label %2397

2316:                                             ; preds = %2315
  %2317 = load ptr, ptr %58, align 8, !tbaa !11
  %2318 = invoke i32 @system(ptr noundef %2317)
          to label %2319 unwind label %2399

2319:                                             ; preds = %2316
  %2320 = load ptr, ptr %58, align 8, !tbaa !11
  %2321 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 2
  %2322 = icmp eq ptr %2320, %2321
  br i1 %2322, label %2323, label %2327

2323:                                             ; preds = %2319
  %2324 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %2325 = load i64, ptr %2324, align 8, !tbaa !15
  %2326 = icmp ult i64 %2325, 16
  call void @llvm.assume(i1 %2326)
  br label %2328

2327:                                             ; preds = %2319
  call void @_ZdlPv(ptr noundef %2320) #26
  br label %2328

2328:                                             ; preds = %2323, %2327
  %2329 = load ptr, ptr %64, align 8, !tbaa !11
  %2330 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 2
  %2331 = icmp eq ptr %2329, %2330
  br i1 %2331, label %2332, label %2336

2332:                                             ; preds = %2328
  %2333 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 1
  %2334 = load i64, ptr %2333, align 8, !tbaa !15
  %2335 = icmp ult i64 %2334, 16
  call void @llvm.assume(i1 %2335)
  br label %2337

2336:                                             ; preds = %2328
  call void @_ZdlPv(ptr noundef %2329) #26
  br label %2337

2337:                                             ; preds = %2332, %2336
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %64) #27
  %2338 = load ptr, ptr %59, align 8, !tbaa !11
  %2339 = icmp eq ptr %2338, %2302
  br i1 %2339, label %2340, label %2343

2340:                                             ; preds = %2337
  %2341 = load i64, ptr %2314, align 8, !tbaa !15
  %2342 = icmp ult i64 %2341, 16
  call void @llvm.assume(i1 %2342)
  br label %2344

2343:                                             ; preds = %2337
  call void @_ZdlPv(ptr noundef %2338) #26
  br label %2344

2344:                                             ; preds = %2340, %2343
  %2345 = load ptr, ptr %60, align 8, !tbaa !11
  %2346 = icmp eq ptr %2345, %2288
  br i1 %2346, label %2347, label %2350

2347:                                             ; preds = %2344
  %2348 = load i64, ptr %2279, align 8, !tbaa !15
  %2349 = icmp ult i64 %2348, 16
  call void @llvm.assume(i1 %2349)
  br label %2351

2350:                                             ; preds = %2344
  call void @_ZdlPv(ptr noundef %2345) #26
  br label %2351

2351:                                             ; preds = %2347, %2350
  %2352 = load ptr, ptr %63, align 8, !tbaa !11
  %2353 = icmp eq ptr %2352, %2273
  br i1 %2353, label %2354, label %2357

2354:                                             ; preds = %2351
  %2355 = load i64, ptr %2276, align 8, !tbaa !15
  %2356 = icmp ult i64 %2355, 16
  call void @llvm.assume(i1 %2356)
  br label %2358

2357:                                             ; preds = %2351
  call void @_ZdlPv(ptr noundef %2352) #26
  br label %2358

2358:                                             ; preds = %2354, %2357
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %63) #27
  %2359 = load ptr, ptr %61, align 8, !tbaa !11
  %2360 = icmp eq ptr %2359, %2269
  br i1 %2360, label %2361, label %2364

2361:                                             ; preds = %2358
  %2362 = load i64, ptr %2272, align 8, !tbaa !15
  %2363 = icmp ult i64 %2362, 16
  call void @llvm.assume(i1 %2363)
  br label %2365

2364:                                             ; preds = %2358
  call void @_ZdlPv(ptr noundef %2359) #26
  br label %2365

2365:                                             ; preds = %2361, %2364
  %2366 = load ptr, ptr %62, align 8, !tbaa !11
  %2367 = icmp eq ptr %2366, %2263
  br i1 %2367, label %2368, label %2371

2368:                                             ; preds = %2365
  %2369 = load i64, ptr %2264, align 8, !tbaa !15
  %2370 = icmp ult i64 %2369, 16
  call void @llvm.assume(i1 %2370)
  br label %2372

2371:                                             ; preds = %2365
  call void @_ZdlPv(ptr noundef %2366) #26
  br label %2372

2372:                                             ; preds = %2368, %2371
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %62) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %61) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %60) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %59) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #27
  call void @_ZdlPv(ptr noundef %2247) #26
  br label %3504

2373:                                             ; preds = %2246
  %2374 = landingpad { ptr, i32 }
          cleanup
  br label %3528

2375:                                             ; preds = %2248
  %2376 = landingpad { ptr, i32 }
          cleanup
  br label %2385

2377:                                             ; preds = %2252
  %2378 = landingpad { ptr, i32 }
          cleanup
  %2379 = load ptr, ptr %57, align 8, !tbaa !11
  %2380 = icmp eq ptr %2379, %2250
  br i1 %2380, label %2381, label %2384

2381:                                             ; preds = %2377
  %2382 = load i64, ptr %2253, align 8, !tbaa !15
  %2383 = icmp ult i64 %2382, 16
  call void @llvm.assume(i1 %2383)
  br label %2385

2384:                                             ; preds = %2377
  call void @_ZdlPv(ptr noundef %2379) #26
  br label %2385

2385:                                             ; preds = %2384, %2381, %2375
  %2386 = phi { ptr, i32 } [ %2376, %2375 ], [ %2378, %2381 ], [ %2378, %2384 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %57) #27
  br label %2461

2387:                                             ; preds = %2262
  %2388 = landingpad { ptr, i32 }
          cleanup
  br label %2452

2389:                                             ; preds = %2266
  %2390 = landingpad { ptr, i32 }
          cleanup
  br label %2444

2391:                                             ; preds = %2275
  %2392 = landingpad { ptr, i32 }
          cleanup
  br label %2436

2393:                                             ; preds = %2298, %2283
  %2394 = landingpad { ptr, i32 }
          cleanup
  br label %2427

2395:                                             ; preds = %2312
  %2396 = landingpad { ptr, i32 }
          cleanup
  br label %2419

2397:                                             ; preds = %2315
  %2398 = landingpad { ptr, i32 }
          cleanup
  br label %2409

2399:                                             ; preds = %2316
  %2400 = landingpad { ptr, i32 }
          cleanup
  %2401 = load ptr, ptr %58, align 8, !tbaa !11
  %2402 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 2
  %2403 = icmp eq ptr %2401, %2402
  br i1 %2403, label %2404, label %2408

2404:                                             ; preds = %2399
  %2405 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %2406 = load i64, ptr %2405, align 8, !tbaa !15
  %2407 = icmp ult i64 %2406, 16
  call void @llvm.assume(i1 %2407)
  br label %2409

2408:                                             ; preds = %2399
  call void @_ZdlPv(ptr noundef %2401) #26
  br label %2409

2409:                                             ; preds = %2408, %2404, %2397
  %2410 = phi { ptr, i32 } [ %2398, %2397 ], [ %2400, %2404 ], [ %2400, %2408 ]
  %2411 = load ptr, ptr %64, align 8, !tbaa !11
  %2412 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 2
  %2413 = icmp eq ptr %2411, %2412
  br i1 %2413, label %2414, label %2418

2414:                                             ; preds = %2409
  %2415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %64, i64 0, i32 1
  %2416 = load i64, ptr %2415, align 8, !tbaa !15
  %2417 = icmp ult i64 %2416, 16
  call void @llvm.assume(i1 %2417)
  br label %2419

2418:                                             ; preds = %2409
  call void @_ZdlPv(ptr noundef %2411) #26
  br label %2419

2419:                                             ; preds = %2418, %2414, %2395
  %2420 = phi { ptr, i32 } [ %2396, %2395 ], [ %2410, %2414 ], [ %2410, %2418 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %64) #27
  %2421 = load ptr, ptr %59, align 8, !tbaa !11
  %2422 = icmp eq ptr %2421, %2302
  br i1 %2422, label %2423, label %2426

2423:                                             ; preds = %2419
  %2424 = load i64, ptr %2314, align 8, !tbaa !15
  %2425 = icmp ult i64 %2424, 16
  call void @llvm.assume(i1 %2425)
  br label %2427

2426:                                             ; preds = %2419
  call void @_ZdlPv(ptr noundef %2421) #26
  br label %2427

2427:                                             ; preds = %2426, %2423, %2393
  %2428 = phi { ptr, i32 } [ %2394, %2393 ], [ %2420, %2423 ], [ %2420, %2426 ]
  %2429 = load ptr, ptr %60, align 8, !tbaa !11
  %2430 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 2
  %2431 = icmp eq ptr %2429, %2430
  br i1 %2431, label %2432, label %2435

2432:                                             ; preds = %2427
  %2433 = load i64, ptr %2279, align 8, !tbaa !15
  %2434 = icmp ult i64 %2433, 16
  call void @llvm.assume(i1 %2434)
  br label %2436

2435:                                             ; preds = %2427
  call void @_ZdlPv(ptr noundef %2429) #26
  br label %2436

2436:                                             ; preds = %2435, %2432, %2391
  %2437 = phi { ptr, i32 } [ %2392, %2391 ], [ %2428, %2432 ], [ %2428, %2435 ]
  %2438 = load ptr, ptr %63, align 8, !tbaa !11
  %2439 = icmp eq ptr %2438, %2273
  br i1 %2439, label %2440, label %2443

2440:                                             ; preds = %2436
  %2441 = load i64, ptr %2276, align 8, !tbaa !15
  %2442 = icmp ult i64 %2441, 16
  call void @llvm.assume(i1 %2442)
  br label %2444

2443:                                             ; preds = %2436
  call void @_ZdlPv(ptr noundef %2438) #26
  br label %2444

2444:                                             ; preds = %2443, %2440, %2389
  %2445 = phi { ptr, i32 } [ %2390, %2389 ], [ %2437, %2440 ], [ %2437, %2443 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %63) #27
  %2446 = load ptr, ptr %61, align 8, !tbaa !11
  %2447 = icmp eq ptr %2446, %2269
  br i1 %2447, label %2448, label %2451

2448:                                             ; preds = %2444
  %2449 = load i64, ptr %2272, align 8, !tbaa !15
  %2450 = icmp ult i64 %2449, 16
  call void @llvm.assume(i1 %2450)
  br label %2452

2451:                                             ; preds = %2444
  call void @_ZdlPv(ptr noundef %2446) #26
  br label %2452

2452:                                             ; preds = %2451, %2448, %2387
  %2453 = phi { ptr, i32 } [ %2388, %2387 ], [ %2445, %2448 ], [ %2445, %2451 ]
  %2454 = load ptr, ptr %62, align 8, !tbaa !11
  %2455 = icmp eq ptr %2454, %2263
  br i1 %2455, label %2456, label %2459

2456:                                             ; preds = %2452
  %2457 = load i64, ptr %2264, align 8, !tbaa !15
  %2458 = icmp ult i64 %2457, 16
  call void @llvm.assume(i1 %2458)
  br label %2460

2459:                                             ; preds = %2452
  call void @_ZdlPv(ptr noundef %2454) #26
  br label %2460

2460:                                             ; preds = %2456, %2459
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %62) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %61) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %60) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %59) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #27
  br label %2461

2461:                                             ; preds = %2385, %2460
  %2462 = phi { ptr, i32 } [ %2453, %2460 ], [ %2386, %2385 ]
  call void @_ZdlPv(ptr noundef %2247) #26
  br label %3528

2463:                                             ; preds = %1556
  %2464 = load ptr, ptr %54, align 8, !tbaa !11
  %2465 = call i32 @bcmp(ptr %2464, ptr nonnull @.str.19, i64 %1557)
  %2466 = icmp eq i32 %2465, 0
  br i1 %2466, label %2467, label %2916

2467:                                             ; preds = %2463
  %2468 = invoke noalias noundef nonnull dereferenceable(19) ptr @_Znwm(i64 noundef 19) #29
          to label %2469 unwind label %2594

2469:                                             ; preds = %2467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %2468, ptr noundef nonnull align 1 dereferenceable(18) @.str.20, i64 18, i1 false)
  %2470 = getelementptr inbounds i8, ptr %2468, i64 18
  store i8 0, ptr %2470, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %65) #27
  %2471 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %65, i64 0, i32 2
  %2472 = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #29
          to label %2473 unwind label %2596

2473:                                             ; preds = %2469
  store ptr %2472, ptr %65, align 8, !tbaa !11
  store i64 20, ptr %2471, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %2472, ptr noundef nonnull align 1 dereferenceable(20) @.str.21, i64 20, i1 false)
  %2474 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %65, i64 0, i32 1
  store i64 20, ptr %2474, align 8, !tbaa !15
  %2475 = getelementptr inbounds i8, ptr %2472, i64 20
  store i8 0, ptr %2475, align 1, !tbaa !19
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %2476 unwind label %2598

2476:                                             ; preds = %2473
  %2477 = load ptr, ptr %65, align 8, !tbaa !11
  %2478 = icmp eq ptr %2477, %2471
  br i1 %2478, label %2479, label %2482

2479:                                             ; preds = %2476
  %2480 = load i64, ptr %2474, align 8, !tbaa !15
  %2481 = icmp ult i64 %2480, 16
  call void @llvm.assume(i1 %2481)
  br label %2483

2482:                                             ; preds = %2476
  call void @_ZdlPv(ptr noundef %2477) #26
  br label %2483

2483:                                             ; preds = %2482, %2479
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %65) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %66) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %67) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %68) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %69) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %70) #27
  %2484 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 0, i32 2
  store ptr %2484, ptr %70, align 8, !tbaa !18
  store i16 25443, ptr %2484, align 8
  %2485 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 0, i32 1
  store i64 2, ptr %2485, align 8, !tbaa !15
  %2486 = getelementptr inbounds i8, ptr %70, i64 18
  store i8 0, ptr %2486, align 2, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %70, i64 noundef 2, i64 noundef 0, ptr noundef nonnull @.str.22, i64 noundef 25)
          to label %2487 unwind label %2608

2487:                                             ; preds = %2483
  %2488 = load ptr, ptr %70, align 8, !tbaa !11, !noalias !173
  %2489 = getelementptr inbounds i8, ptr %2488, i64 27
  store i8 0, ptr %2489, align 1, !tbaa !19, !noalias !173
  %2490 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %69, i64 0, i32 2
  store ptr %2490, ptr %69, align 8, !tbaa !18, !alias.scope !173
  %2491 = icmp ne ptr %2488, %2484
  call void @llvm.assume(i1 %2491)
  store ptr %2488, ptr %69, align 8, !tbaa !11, !alias.scope !173
  %2492 = load i64, ptr %2484, align 8, !tbaa !19, !noalias !173
  store i64 %2492, ptr %2490, align 8, !tbaa !19, !alias.scope !173
  %2493 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %69, i64 0, i32 1
  store i64 27, ptr %2493, align 8, !tbaa !15, !alias.scope !173
  store ptr %2484, ptr %70, align 8, !tbaa !11, !noalias !173
  store i64 0, ptr %2485, align 8, !tbaa !15, !noalias !173
  store i8 0, ptr %2484, align 8, !tbaa !19, !noalias !173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %71) #27
  %2494 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 0, i32 2
  store ptr %2494, ptr %71, align 8, !tbaa !18, !alias.scope !176
  %2495 = invoke noalias noundef nonnull dereferenceable(19) ptr @_Znwm(i64 noundef 19) #29
          to label %2496 unwind label %2610

2496:                                             ; preds = %2487
  store ptr %2495, ptr %71, align 8, !tbaa !11, !alias.scope !176
  store i64 18, ptr %2494, align 8, !tbaa !19, !alias.scope !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %2495, ptr noundef nonnull align 1 dereferenceable(18) %2468, i64 18, i1 false)
  %2497 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 0, i32 1
  store i64 18, ptr %2497, align 8, !tbaa !15, !alias.scope !176
  %2498 = getelementptr inbounds i8, ptr %2495, i64 18
  store i8 0, ptr %2498, align 1, !tbaa !19
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %2499 unwind label %2612

2499:                                             ; preds = %2496
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %2500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 1
  %2501 = load i64, ptr %2500, align 8, !tbaa !15, !noalias !179
  %2502 = and i64 %2501, -4
  %2503 = icmp eq i64 %2502, 9223372036854775804
  br i1 %2503, label %2504, label %2506

2504:                                             ; preds = %2499
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %2505 unwind label %2614

2505:                                             ; preds = %2504
  unreachable

2506:                                             ; preds = %2499
  %2507 = add i64 %2501, 4
  %2508 = load ptr, ptr %68, align 8, !tbaa !11, !noalias !179
  %2509 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 2
  %2510 = icmp eq ptr %2508, %2509
  br i1 %2510, label %2511, label %2513

2511:                                             ; preds = %2506
  %2512 = icmp ult i64 %2501, 16
  call void @llvm.assume(i1 %2512)
  br label %2513

2513:                                             ; preds = %2511, %2506
  %2514 = load i64, ptr %2509, align 8, !noalias !179
  %2515 = select i1 %2510, i64 15, i64 %2514
  %2516 = icmp ugt i64 %2507, %2515
  br i1 %2516, label %2519, label %2517

2517:                                             ; preds = %2513
  %2518 = getelementptr inbounds i8, ptr %2508, i64 %2501
  store i32 539371040, ptr %2518, align 1, !noalias !179
  br label %2520

2519:                                             ; preds = %2513
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %68, i64 noundef %2501, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 4)
          to label %2520 unwind label %2614

2520:                                             ; preds = %2519, %2517
  store i64 %2507, ptr %2500, align 8, !tbaa !15, !noalias !179
  %2521 = load ptr, ptr %68, align 8, !tbaa !11, !noalias !179
  %2522 = getelementptr inbounds i8, ptr %2521, i64 %2507
  store i8 0, ptr %2522, align 1, !tbaa !19, !noalias !179
  %2523 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %67, i64 0, i32 2
  store ptr %2523, ptr %67, align 8, !tbaa !18, !alias.scope !179
  %2524 = load ptr, ptr %68, align 8, !tbaa !11, !noalias !179
  %2525 = icmp eq ptr %2524, %2509
  br i1 %2525, label %2526, label %2530

2526:                                             ; preds = %2520
  %2527 = load i64, ptr %2500, align 8, !tbaa !15, !noalias !179
  %2528 = icmp ult i64 %2527, 16
  call void @llvm.assume(i1 %2528)
  %2529 = add nuw nsw i64 %2527, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2523, ptr noundef nonnull align 8 dereferenceable(1) %2509, i64 %2529, i1 false)
  br label %2533

2530:                                             ; preds = %2520
  store ptr %2524, ptr %67, align 8, !tbaa !11, !alias.scope !179
  %2531 = load i64, ptr %2509, align 8, !tbaa !19, !noalias !179
  store i64 %2531, ptr %2523, align 8, !tbaa !19, !alias.scope !179
  %2532 = load i64, ptr %2500, align 8, !tbaa !15, !noalias !179
  br label %2533

2533:                                             ; preds = %2530, %2526
  %2534 = phi i64 [ %2527, %2526 ], [ %2532, %2530 ]
  %2535 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %67, i64 0, i32 1
  store i64 %2534, ptr %2535, align 8, !tbaa !15, !alias.scope !179
  store ptr %2509, ptr %68, align 8, !tbaa !11, !noalias !179
  store i64 0, ptr %2500, align 8, !tbaa !15, !noalias !179
  store i8 0, ptr %2509, align 8, !tbaa !19, !noalias !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %72) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27, !noalias !182
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull @.str.101, i64 noundef 2, ptr noundef nonnull %2468, i64 noundef 18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %2536 unwind label %2616

2536:                                             ; preds = %2533
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27, !noalias !182
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(32) %72)
          to label %2537 unwind label %2618

2537:                                             ; preds = %2536
  %2538 = load ptr, ptr %66, align 8, !tbaa !11
  %2539 = invoke i32 @system(ptr noundef %2538)
          to label %2540 unwind label %2620

2540:                                             ; preds = %2537
  %2541 = load ptr, ptr %66, align 8, !tbaa !11
  %2542 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 2
  %2543 = icmp eq ptr %2541, %2542
  br i1 %2543, label %2544, label %2548

2544:                                             ; preds = %2540
  %2545 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 1
  %2546 = load i64, ptr %2545, align 8, !tbaa !15
  %2547 = icmp ult i64 %2546, 16
  call void @llvm.assume(i1 %2547)
  br label %2549

2548:                                             ; preds = %2540
  call void @_ZdlPv(ptr noundef %2541) #26
  br label %2549

2549:                                             ; preds = %2544, %2548
  %2550 = load ptr, ptr %72, align 8, !tbaa !11
  %2551 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 2
  %2552 = icmp eq ptr %2550, %2551
  br i1 %2552, label %2553, label %2557

2553:                                             ; preds = %2549
  %2554 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 1
  %2555 = load i64, ptr %2554, align 8, !tbaa !15
  %2556 = icmp ult i64 %2555, 16
  call void @llvm.assume(i1 %2556)
  br label %2558

2557:                                             ; preds = %2549
  call void @_ZdlPv(ptr noundef %2550) #26
  br label %2558

2558:                                             ; preds = %2553, %2557
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %72) #27
  %2559 = load ptr, ptr %67, align 8, !tbaa !11
  %2560 = icmp eq ptr %2559, %2523
  br i1 %2560, label %2561, label %2564

2561:                                             ; preds = %2558
  %2562 = load i64, ptr %2535, align 8, !tbaa !15
  %2563 = icmp ult i64 %2562, 16
  call void @llvm.assume(i1 %2563)
  br label %2565

2564:                                             ; preds = %2558
  call void @_ZdlPv(ptr noundef %2559) #26
  br label %2565

2565:                                             ; preds = %2561, %2564
  %2566 = load ptr, ptr %68, align 8, !tbaa !11
  %2567 = icmp eq ptr %2566, %2509
  br i1 %2567, label %2568, label %2571

2568:                                             ; preds = %2565
  %2569 = load i64, ptr %2500, align 8, !tbaa !15
  %2570 = icmp ult i64 %2569, 16
  call void @llvm.assume(i1 %2570)
  br label %2572

2571:                                             ; preds = %2565
  call void @_ZdlPv(ptr noundef %2566) #26
  br label %2572

2572:                                             ; preds = %2568, %2571
  %2573 = load ptr, ptr %71, align 8, !tbaa !11
  %2574 = icmp eq ptr %2573, %2494
  br i1 %2574, label %2575, label %2578

2575:                                             ; preds = %2572
  %2576 = load i64, ptr %2497, align 8, !tbaa !15
  %2577 = icmp ult i64 %2576, 16
  call void @llvm.assume(i1 %2577)
  br label %2579

2578:                                             ; preds = %2572
  call void @_ZdlPv(ptr noundef %2573) #26
  br label %2579

2579:                                             ; preds = %2575, %2578
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %71) #27
  %2580 = load ptr, ptr %69, align 8, !tbaa !11
  %2581 = icmp eq ptr %2580, %2490
  br i1 %2581, label %2582, label %2585

2582:                                             ; preds = %2579
  %2583 = load i64, ptr %2493, align 8, !tbaa !15
  %2584 = icmp ult i64 %2583, 16
  call void @llvm.assume(i1 %2584)
  br label %2586

2585:                                             ; preds = %2579
  call void @_ZdlPv(ptr noundef %2580) #26
  br label %2586

2586:                                             ; preds = %2582, %2585
  %2587 = load ptr, ptr %70, align 8, !tbaa !11
  %2588 = icmp eq ptr %2587, %2484
  br i1 %2588, label %2589, label %2592

2589:                                             ; preds = %2586
  %2590 = load i64, ptr %2485, align 8, !tbaa !15
  %2591 = icmp ult i64 %2590, 16
  call void @llvm.assume(i1 %2591)
  br label %2593

2592:                                             ; preds = %2586
  call void @_ZdlPv(ptr noundef %2587) #26
  br label %2593

2593:                                             ; preds = %2589, %2592
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %70) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %69) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %68) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %67) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %66) #27
  call void @_ZdlPv(ptr noundef %2468) #26
  br label %3504

2594:                                             ; preds = %2467
  %2595 = landingpad { ptr, i32 }
          cleanup
  br label %3528

2596:                                             ; preds = %2469
  %2597 = landingpad { ptr, i32 }
          cleanup
  br label %2606

2598:                                             ; preds = %2473
  %2599 = landingpad { ptr, i32 }
          cleanup
  %2600 = load ptr, ptr %65, align 8, !tbaa !11
  %2601 = icmp eq ptr %2600, %2471
  br i1 %2601, label %2602, label %2605

2602:                                             ; preds = %2598
  %2603 = load i64, ptr %2474, align 8, !tbaa !15
  %2604 = icmp ult i64 %2603, 16
  call void @llvm.assume(i1 %2604)
  br label %2606

2605:                                             ; preds = %2598
  call void @_ZdlPv(ptr noundef %2600) #26
  br label %2606

2606:                                             ; preds = %2605, %2602, %2596
  %2607 = phi { ptr, i32 } [ %2597, %2596 ], [ %2599, %2602 ], [ %2599, %2605 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %65) #27
  br label %2682

2608:                                             ; preds = %2483
  %2609 = landingpad { ptr, i32 }
          cleanup
  br label %2673

2610:                                             ; preds = %2487
  %2611 = landingpad { ptr, i32 }
          cleanup
  br label %2665

2612:                                             ; preds = %2496
  %2613 = landingpad { ptr, i32 }
          cleanup
  br label %2657

2614:                                             ; preds = %2519, %2504
  %2615 = landingpad { ptr, i32 }
          cleanup
  br label %2648

2616:                                             ; preds = %2533
  %2617 = landingpad { ptr, i32 }
          cleanup
  br label %2640

2618:                                             ; preds = %2536
  %2619 = landingpad { ptr, i32 }
          cleanup
  br label %2630

2620:                                             ; preds = %2537
  %2621 = landingpad { ptr, i32 }
          cleanup
  %2622 = load ptr, ptr %66, align 8, !tbaa !11
  %2623 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 2
  %2624 = icmp eq ptr %2622, %2623
  br i1 %2624, label %2625, label %2629

2625:                                             ; preds = %2620
  %2626 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 1
  %2627 = load i64, ptr %2626, align 8, !tbaa !15
  %2628 = icmp ult i64 %2627, 16
  call void @llvm.assume(i1 %2628)
  br label %2630

2629:                                             ; preds = %2620
  call void @_ZdlPv(ptr noundef %2622) #26
  br label %2630

2630:                                             ; preds = %2629, %2625, %2618
  %2631 = phi { ptr, i32 } [ %2619, %2618 ], [ %2621, %2625 ], [ %2621, %2629 ]
  %2632 = load ptr, ptr %72, align 8, !tbaa !11
  %2633 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 2
  %2634 = icmp eq ptr %2632, %2633
  br i1 %2634, label %2635, label %2639

2635:                                             ; preds = %2630
  %2636 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 0, i32 1
  %2637 = load i64, ptr %2636, align 8, !tbaa !15
  %2638 = icmp ult i64 %2637, 16
  call void @llvm.assume(i1 %2638)
  br label %2640

2639:                                             ; preds = %2630
  call void @_ZdlPv(ptr noundef %2632) #26
  br label %2640

2640:                                             ; preds = %2639, %2635, %2616
  %2641 = phi { ptr, i32 } [ %2617, %2616 ], [ %2631, %2635 ], [ %2631, %2639 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %72) #27
  %2642 = load ptr, ptr %67, align 8, !tbaa !11
  %2643 = icmp eq ptr %2642, %2523
  br i1 %2643, label %2644, label %2647

2644:                                             ; preds = %2640
  %2645 = load i64, ptr %2535, align 8, !tbaa !15
  %2646 = icmp ult i64 %2645, 16
  call void @llvm.assume(i1 %2646)
  br label %2648

2647:                                             ; preds = %2640
  call void @_ZdlPv(ptr noundef %2642) #26
  br label %2648

2648:                                             ; preds = %2647, %2644, %2614
  %2649 = phi { ptr, i32 } [ %2615, %2614 ], [ %2641, %2644 ], [ %2641, %2647 ]
  %2650 = load ptr, ptr %68, align 8, !tbaa !11
  %2651 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %68, i64 0, i32 2
  %2652 = icmp eq ptr %2650, %2651
  br i1 %2652, label %2653, label %2656

2653:                                             ; preds = %2648
  %2654 = load i64, ptr %2500, align 8, !tbaa !15
  %2655 = icmp ult i64 %2654, 16
  call void @llvm.assume(i1 %2655)
  br label %2657

2656:                                             ; preds = %2648
  call void @_ZdlPv(ptr noundef %2650) #26
  br label %2657

2657:                                             ; preds = %2656, %2653, %2612
  %2658 = phi { ptr, i32 } [ %2613, %2612 ], [ %2649, %2653 ], [ %2649, %2656 ]
  %2659 = load ptr, ptr %71, align 8, !tbaa !11
  %2660 = icmp eq ptr %2659, %2494
  br i1 %2660, label %2661, label %2664

2661:                                             ; preds = %2657
  %2662 = load i64, ptr %2497, align 8, !tbaa !15
  %2663 = icmp ult i64 %2662, 16
  call void @llvm.assume(i1 %2663)
  br label %2665

2664:                                             ; preds = %2657
  call void @_ZdlPv(ptr noundef %2659) #26
  br label %2665

2665:                                             ; preds = %2664, %2661, %2610
  %2666 = phi { ptr, i32 } [ %2611, %2610 ], [ %2658, %2661 ], [ %2658, %2664 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %71) #27
  %2667 = load ptr, ptr %69, align 8, !tbaa !11
  %2668 = icmp eq ptr %2667, %2490
  br i1 %2668, label %2669, label %2672

2669:                                             ; preds = %2665
  %2670 = load i64, ptr %2493, align 8, !tbaa !15
  %2671 = icmp ult i64 %2670, 16
  call void @llvm.assume(i1 %2671)
  br label %2673

2672:                                             ; preds = %2665
  call void @_ZdlPv(ptr noundef %2667) #26
  br label %2673

2673:                                             ; preds = %2672, %2669, %2608
  %2674 = phi { ptr, i32 } [ %2609, %2608 ], [ %2666, %2669 ], [ %2666, %2672 ]
  %2675 = load ptr, ptr %70, align 8, !tbaa !11
  %2676 = icmp eq ptr %2675, %2484
  br i1 %2676, label %2677, label %2680

2677:                                             ; preds = %2673
  %2678 = load i64, ptr %2485, align 8, !tbaa !15
  %2679 = icmp ult i64 %2678, 16
  call void @llvm.assume(i1 %2679)
  br label %2681

2680:                                             ; preds = %2673
  call void @_ZdlPv(ptr noundef %2675) #26
  br label %2681

2681:                                             ; preds = %2680, %2677
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %70) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %69) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %68) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %67) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %66) #27
  br label %2682

2682:                                             ; preds = %2606, %2681
  %2683 = phi { ptr, i32 } [ %2674, %2681 ], [ %2607, %2606 ]
  call void @_ZdlPv(ptr noundef %2468) #26
  br label %3528

2684:                                             ; preds = %1556
  %2685 = load ptr, ptr %54, align 8, !tbaa !11
  %2686 = call i32 @bcmp(ptr %2685, ptr nonnull @.str.23, i64 %1557)
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2688, label %2916

2688:                                             ; preds = %2684
  %2689 = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #29
          to label %2690 unwind label %2803

2690:                                             ; preds = %2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %2689, ptr noundef nonnull align 1 dereferenceable(19) @.str.24, i64 19, i1 false)
  %2691 = getelementptr inbounds i8, ptr %2689, i64 19
  store i8 0, ptr %2691, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %73) #27
  %2692 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %2693 = invoke noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #29
          to label %2694 unwind label %2805

2694:                                             ; preds = %2690
  store ptr %2693, ptr %73, align 8, !tbaa !11
  store i64 22, ptr %2692, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %2693, ptr noundef nonnull align 1 dereferenceable(22) @.str.25, i64 22, i1 false)
  %2695 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  store i64 22, ptr %2695, align 8, !tbaa !15
  %2696 = getelementptr inbounds i8, ptr %2693, i64 22
  store i8 0, ptr %2696, align 1, !tbaa !19
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %2697 unwind label %2807

2697:                                             ; preds = %2694
  %2698 = load ptr, ptr %73, align 8, !tbaa !11
  %2699 = icmp eq ptr %2698, %2692
  br i1 %2699, label %2700, label %2703

2700:                                             ; preds = %2697
  %2701 = load i64, ptr %2695, align 8, !tbaa !15
  %2702 = icmp ult i64 %2701, 16
  call void @llvm.assume(i1 %2702)
  br label %2704

2703:                                             ; preds = %2697
  call void @_ZdlPv(ptr noundef %2698) #26
  br label %2704

2704:                                             ; preds = %2700, %2703
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %73) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %74) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %75) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %76) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %77) #27
  %2705 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %77, i64 0, i32 2
  %2706 = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #29
          to label %2707 unwind label %2817

2707:                                             ; preds = %2704
  store ptr %2706, ptr %77, align 8, !tbaa !11
  store i64 32, ptr %2705, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %2706, ptr noundef nonnull align 1 dereferenceable(32) @.str.26, i64 32, i1 false)
  %2708 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %77, i64 0, i32 1
  store i64 32, ptr %2708, align 8, !tbaa !15
  %2709 = getelementptr inbounds i8, ptr %2706, i64 32
  store i8 0, ptr %2709, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %78) #27
  %2710 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %78, i64 0, i32 2
  store ptr %2710, ptr %78, align 8, !tbaa !18, !alias.scope !187
  %2711 = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #29
          to label %2712 unwind label %2819

2712:                                             ; preds = %2707
  store ptr %2711, ptr %78, align 8, !tbaa !11, !alias.scope !187
  store i64 19, ptr %2710, align 8, !tbaa !19, !alias.scope !187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %2711, ptr noundef nonnull align 1 dereferenceable(19) %2689, i64 19, i1 false)
  %2713 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %78, i64 0, i32 1
  store i64 19, ptr %2713, align 8, !tbaa !15, !alias.scope !187
  %2714 = getelementptr inbounds i8, ptr %2711, i64 19
  store i8 0, ptr %2714, align 1, !tbaa !19
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %78)
          to label %2715 unwind label %2821

2715:                                             ; preds = %2712
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %2716 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 0, i32 1
  %2717 = load i64, ptr %2716, align 8, !tbaa !15, !noalias !190
  %2718 = and i64 %2717, -4
  %2719 = icmp eq i64 %2718, 9223372036854775804
  br i1 %2719, label %2720, label %2722

2720:                                             ; preds = %2715
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %2721 unwind label %2823

2721:                                             ; preds = %2720
  unreachable

2722:                                             ; preds = %2715
  %2723 = add i64 %2717, 4
  %2724 = load ptr, ptr %76, align 8, !tbaa !11, !noalias !190
  %2725 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 0, i32 2
  %2726 = icmp eq ptr %2724, %2725
  br i1 %2726, label %2727, label %2729

2727:                                             ; preds = %2722
  %2728 = icmp ult i64 %2717, 16
  call void @llvm.assume(i1 %2728)
  br label %2729

2729:                                             ; preds = %2727, %2722
  %2730 = load i64, ptr %2725, align 8, !noalias !190
  %2731 = select i1 %2726, i64 15, i64 %2730
  %2732 = icmp ugt i64 %2723, %2731
  br i1 %2732, label %2735, label %2733

2733:                                             ; preds = %2729
  %2734 = getelementptr inbounds i8, ptr %2724, i64 %2717
  store i32 539371040, ptr %2734, align 1, !noalias !190
  br label %2736

2735:                                             ; preds = %2729
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %76, i64 noundef %2717, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 4)
          to label %2736 unwind label %2823

2736:                                             ; preds = %2735, %2733
  store i64 %2723, ptr %2716, align 8, !tbaa !15, !noalias !190
  %2737 = load ptr, ptr %76, align 8, !tbaa !11, !noalias !190
  %2738 = getelementptr inbounds i8, ptr %2737, i64 %2723
  store i8 0, ptr %2738, align 1, !tbaa !19, !noalias !190
  %2739 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %75, i64 0, i32 2
  store ptr %2739, ptr %75, align 8, !tbaa !18, !alias.scope !190
  %2740 = load ptr, ptr %76, align 8, !tbaa !11, !noalias !190
  %2741 = icmp eq ptr %2740, %2725
  br i1 %2741, label %2742, label %2746

2742:                                             ; preds = %2736
  %2743 = load i64, ptr %2716, align 8, !tbaa !15, !noalias !190
  %2744 = icmp ult i64 %2743, 16
  call void @llvm.assume(i1 %2744)
  %2745 = add nuw nsw i64 %2743, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2739, ptr noundef nonnull align 8 dereferenceable(1) %2725, i64 %2745, i1 false)
  br label %2749

2746:                                             ; preds = %2736
  store ptr %2740, ptr %75, align 8, !tbaa !11, !alias.scope !190
  %2747 = load i64, ptr %2725, align 8, !tbaa !19, !noalias !190
  store i64 %2747, ptr %2739, align 8, !tbaa !19, !alias.scope !190
  %2748 = load i64, ptr %2716, align 8, !tbaa !15, !noalias !190
  br label %2749

2749:                                             ; preds = %2746, %2742
  %2750 = phi i64 [ %2743, %2742 ], [ %2748, %2746 ]
  %2751 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %75, i64 0, i32 1
  store i64 %2750, ptr %2751, align 8, !tbaa !15, !alias.scope !190
  store ptr %2725, ptr %76, align 8, !tbaa !11, !noalias !190
  store i64 0, ptr %2716, align 8, !tbaa !15, !noalias !190
  store i8 0, ptr %2725, align 8, !tbaa !19, !noalias !190
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %79) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #27, !noalias !193
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull @.str.101, i64 noundef 2, ptr noundef nonnull %2689, i64 noundef 19, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %2752 unwind label %2825

2752:                                             ; preds = %2749
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #27, !noalias !193
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %2753 unwind label %2827

2753:                                             ; preds = %2752
  %2754 = load ptr, ptr %74, align 8, !tbaa !11
  %2755 = invoke i32 @system(ptr noundef %2754)
          to label %2756 unwind label %2829

2756:                                             ; preds = %2753
  %2757 = load ptr, ptr %74, align 8, !tbaa !11
  %2758 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %74, i64 0, i32 2
  %2759 = icmp eq ptr %2757, %2758
  br i1 %2759, label %2760, label %2764

2760:                                             ; preds = %2756
  %2761 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %74, i64 0, i32 1
  %2762 = load i64, ptr %2761, align 8, !tbaa !15
  %2763 = icmp ult i64 %2762, 16
  call void @llvm.assume(i1 %2763)
  br label %2765

2764:                                             ; preds = %2756
  call void @_ZdlPv(ptr noundef %2757) #26
  br label %2765

2765:                                             ; preds = %2760, %2764
  %2766 = load ptr, ptr %79, align 8, !tbaa !11
  %2767 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 2
  %2768 = icmp eq ptr %2766, %2767
  br i1 %2768, label %2769, label %2773

2769:                                             ; preds = %2765
  %2770 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 1
  %2771 = load i64, ptr %2770, align 8, !tbaa !15
  %2772 = icmp ult i64 %2771, 16
  call void @llvm.assume(i1 %2772)
  br label %2774

2773:                                             ; preds = %2765
  call void @_ZdlPv(ptr noundef %2766) #26
  br label %2774

2774:                                             ; preds = %2769, %2773
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %79) #27
  %2775 = load ptr, ptr %75, align 8, !tbaa !11
  %2776 = icmp eq ptr %2775, %2739
  br i1 %2776, label %2777, label %2780

2777:                                             ; preds = %2774
  %2778 = load i64, ptr %2751, align 8, !tbaa !15
  %2779 = icmp ult i64 %2778, 16
  call void @llvm.assume(i1 %2779)
  br label %2781

2780:                                             ; preds = %2774
  call void @_ZdlPv(ptr noundef %2775) #26
  br label %2781

2781:                                             ; preds = %2777, %2780
  %2782 = load ptr, ptr %76, align 8, !tbaa !11
  %2783 = icmp eq ptr %2782, %2725
  br i1 %2783, label %2784, label %2787

2784:                                             ; preds = %2781
  %2785 = load i64, ptr %2716, align 8, !tbaa !15
  %2786 = icmp ult i64 %2785, 16
  call void @llvm.assume(i1 %2786)
  br label %2788

2787:                                             ; preds = %2781
  call void @_ZdlPv(ptr noundef %2782) #26
  br label %2788

2788:                                             ; preds = %2784, %2787
  %2789 = load ptr, ptr %78, align 8, !tbaa !11
  %2790 = icmp eq ptr %2789, %2710
  br i1 %2790, label %2791, label %2794

2791:                                             ; preds = %2788
  %2792 = load i64, ptr %2713, align 8, !tbaa !15
  %2793 = icmp ult i64 %2792, 16
  call void @llvm.assume(i1 %2793)
  br label %2795

2794:                                             ; preds = %2788
  call void @_ZdlPv(ptr noundef %2789) #26
  br label %2795

2795:                                             ; preds = %2791, %2794
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %78) #27
  %2796 = load ptr, ptr %77, align 8, !tbaa !11
  %2797 = icmp eq ptr %2796, %2705
  br i1 %2797, label %2798, label %2801

2798:                                             ; preds = %2795
  %2799 = load i64, ptr %2708, align 8, !tbaa !15
  %2800 = icmp ult i64 %2799, 16
  call void @llvm.assume(i1 %2800)
  br label %2802

2801:                                             ; preds = %2795
  call void @_ZdlPv(ptr noundef %2796) #26
  br label %2802

2802:                                             ; preds = %2798, %2801
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %76) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %75) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %74) #27
  call void @_ZdlPv(ptr noundef %2689) #26
  br label %3504

2803:                                             ; preds = %2688
  %2804 = landingpad { ptr, i32 }
          cleanup
  br label %3528

2805:                                             ; preds = %2690
  %2806 = landingpad { ptr, i32 }
          cleanup
  br label %2815

2807:                                             ; preds = %2694
  %2808 = landingpad { ptr, i32 }
          cleanup
  %2809 = load ptr, ptr %73, align 8, !tbaa !11
  %2810 = icmp eq ptr %2809, %2692
  br i1 %2810, label %2811, label %2814

2811:                                             ; preds = %2807
  %2812 = load i64, ptr %2695, align 8, !tbaa !15
  %2813 = icmp ult i64 %2812, 16
  call void @llvm.assume(i1 %2813)
  br label %2815

2814:                                             ; preds = %2807
  call void @_ZdlPv(ptr noundef %2809) #26
  br label %2815

2815:                                             ; preds = %2814, %2811, %2805
  %2816 = phi { ptr, i32 } [ %2806, %2805 ], [ %2808, %2811 ], [ %2808, %2814 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %73) #27
  br label %2884

2817:                                             ; preds = %2704
  %2818 = landingpad { ptr, i32 }
          cleanup
  br label %2882

2819:                                             ; preds = %2707
  %2820 = landingpad { ptr, i32 }
          cleanup
  br label %2874

2821:                                             ; preds = %2712
  %2822 = landingpad { ptr, i32 }
          cleanup
  br label %2866

2823:                                             ; preds = %2735, %2720
  %2824 = landingpad { ptr, i32 }
          cleanup
  br label %2857

2825:                                             ; preds = %2749
  %2826 = landingpad { ptr, i32 }
          cleanup
  br label %2849

2827:                                             ; preds = %2752
  %2828 = landingpad { ptr, i32 }
          cleanup
  br label %2839

2829:                                             ; preds = %2753
  %2830 = landingpad { ptr, i32 }
          cleanup
  %2831 = load ptr, ptr %74, align 8, !tbaa !11
  %2832 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %74, i64 0, i32 2
  %2833 = icmp eq ptr %2831, %2832
  br i1 %2833, label %2834, label %2838

2834:                                             ; preds = %2829
  %2835 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %74, i64 0, i32 1
  %2836 = load i64, ptr %2835, align 8, !tbaa !15
  %2837 = icmp ult i64 %2836, 16
  call void @llvm.assume(i1 %2837)
  br label %2839

2838:                                             ; preds = %2829
  call void @_ZdlPv(ptr noundef %2831) #26
  br label %2839

2839:                                             ; preds = %2838, %2834, %2827
  %2840 = phi { ptr, i32 } [ %2828, %2827 ], [ %2830, %2834 ], [ %2830, %2838 ]
  %2841 = load ptr, ptr %79, align 8, !tbaa !11
  %2842 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 2
  %2843 = icmp eq ptr %2841, %2842
  br i1 %2843, label %2844, label %2848

2844:                                             ; preds = %2839
  %2845 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 0, i32 1
  %2846 = load i64, ptr %2845, align 8, !tbaa !15
  %2847 = icmp ult i64 %2846, 16
  call void @llvm.assume(i1 %2847)
  br label %2849

2848:                                             ; preds = %2839
  call void @_ZdlPv(ptr noundef %2841) #26
  br label %2849

2849:                                             ; preds = %2848, %2844, %2825
  %2850 = phi { ptr, i32 } [ %2826, %2825 ], [ %2840, %2844 ], [ %2840, %2848 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %79) #27
  %2851 = load ptr, ptr %75, align 8, !tbaa !11
  %2852 = icmp eq ptr %2851, %2739
  br i1 %2852, label %2853, label %2856

2853:                                             ; preds = %2849
  %2854 = load i64, ptr %2751, align 8, !tbaa !15
  %2855 = icmp ult i64 %2854, 16
  call void @llvm.assume(i1 %2855)
  br label %2857

2856:                                             ; preds = %2849
  call void @_ZdlPv(ptr noundef %2851) #26
  br label %2857

2857:                                             ; preds = %2856, %2853, %2823
  %2858 = phi { ptr, i32 } [ %2824, %2823 ], [ %2850, %2853 ], [ %2850, %2856 ]
  %2859 = load ptr, ptr %76, align 8, !tbaa !11
  %2860 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 0, i32 2
  %2861 = icmp eq ptr %2859, %2860
  br i1 %2861, label %2862, label %2865

2862:                                             ; preds = %2857
  %2863 = load i64, ptr %2716, align 8, !tbaa !15
  %2864 = icmp ult i64 %2863, 16
  call void @llvm.assume(i1 %2864)
  br label %2866

2865:                                             ; preds = %2857
  call void @_ZdlPv(ptr noundef %2859) #26
  br label %2866

2866:                                             ; preds = %2865, %2862, %2821
  %2867 = phi { ptr, i32 } [ %2822, %2821 ], [ %2858, %2862 ], [ %2858, %2865 ]
  %2868 = load ptr, ptr %78, align 8, !tbaa !11
  %2869 = icmp eq ptr %2868, %2710
  br i1 %2869, label %2870, label %2873

2870:                                             ; preds = %2866
  %2871 = load i64, ptr %2713, align 8, !tbaa !15
  %2872 = icmp ult i64 %2871, 16
  call void @llvm.assume(i1 %2872)
  br label %2874

2873:                                             ; preds = %2866
  call void @_ZdlPv(ptr noundef %2868) #26
  br label %2874

2874:                                             ; preds = %2873, %2870, %2819
  %2875 = phi { ptr, i32 } [ %2820, %2819 ], [ %2867, %2870 ], [ %2867, %2873 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %78) #27
  %2876 = load ptr, ptr %77, align 8, !tbaa !11
  %2877 = icmp eq ptr %2876, %2705
  br i1 %2877, label %2878, label %2881

2878:                                             ; preds = %2874
  %2879 = load i64, ptr %2708, align 8, !tbaa !15
  %2880 = icmp ult i64 %2879, 16
  call void @llvm.assume(i1 %2880)
  br label %2882

2881:                                             ; preds = %2874
  call void @_ZdlPv(ptr noundef %2876) #26
  br label %2882

2882:                                             ; preds = %2881, %2878, %2817
  %2883 = phi { ptr, i32 } [ %2818, %2817 ], [ %2875, %2878 ], [ %2875, %2881 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %76) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %75) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %74) #27
  br label %2884

2884:                                             ; preds = %2815, %2882
  %2885 = phi { ptr, i32 } [ %2883, %2882 ], [ %2816, %2815 ]
  call void @_ZdlPv(ptr noundef %2689) #26
  br label %3528

2886:                                             ; preds = %1556
  %2887 = load ptr, ptr %54, align 8, !tbaa !11
  %2888 = call i32 @bcmp(ptr %2887, ptr nonnull @.str.27, i64 %1557)
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2890, label %2916

2890:                                             ; preds = %2886
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %80) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %81) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %81)
          to label %2891 unwind label %2902

2891:                                             ; preds = %2890
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %2892 unwind label %2904

2892:                                             ; preds = %2891
  %2893 = load ptr, ptr %80, align 8, !tbaa !11
  %2894 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %80, i64 0, i32 2
  %2895 = icmp eq ptr %2893, %2894
  br i1 %2895, label %2896, label %2900

2896:                                             ; preds = %2892
  %2897 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %80, i64 0, i32 1
  %2898 = load i64, ptr %2897, align 8, !tbaa !15
  %2899 = icmp ult i64 %2898, 16
  call void @llvm.assume(i1 %2899)
  br label %2901

2900:                                             ; preds = %2892
  call void @_ZdlPv(ptr noundef %2893) #26
  br label %2901

2901:                                             ; preds = %2896, %2900
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %81) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %80) #27
  br label %3479

2902:                                             ; preds = %2890
  %2903 = landingpad { ptr, i32 }
          cleanup
  br label %2914

2904:                                             ; preds = %2891
  %2905 = landingpad { ptr, i32 }
          cleanup
  %2906 = load ptr, ptr %80, align 8, !tbaa !11
  %2907 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %80, i64 0, i32 2
  %2908 = icmp eq ptr %2906, %2907
  br i1 %2908, label %2909, label %2913

2909:                                             ; preds = %2904
  %2910 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %80, i64 0, i32 1
  %2911 = load i64, ptr %2910, align 8, !tbaa !15
  %2912 = icmp ult i64 %2911, 16
  call void @llvm.assume(i1 %2912)
  br label %2914

2913:                                             ; preds = %2904
  call void @_ZdlPv(ptr noundef %2906) #26
  br label %2914

2914:                                             ; preds = %2913, %2909, %2902
  %2915 = phi { ptr, i32 } [ %2903, %2902 ], [ %2905, %2909 ], [ %2905, %2913 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %81) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %80) #27
  br label %3528

2916:                                             ; preds = %2684, %2463, %2242, %1558, %1556, %2886
  %2917 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.30)
  br i1 %2917, label %2918, label %3083

2918:                                             ; preds = %2916
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %82) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %83) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %2919 unwind label %2993

2919:                                             ; preds = %2918
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %83) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %84) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %85) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %2920 unwind label %2995

2920:                                             ; preds = %2919
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %2921 unwind label %2997

2921:                                             ; preds = %2920
  %2922 = load ptr, ptr %84, align 8, !tbaa !11
  %2923 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 2
  %2924 = icmp eq ptr %2922, %2923
  br i1 %2924, label %2925, label %2929

2925:                                             ; preds = %2921
  %2926 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 1
  %2927 = load i64, ptr %2926, align 8, !tbaa !15
  %2928 = icmp ult i64 %2927, 16
  call void @llvm.assume(i1 %2928)
  br label %2930

2929:                                             ; preds = %2921
  call void @_ZdlPv(ptr noundef %2922) #26
  br label %2930

2930:                                             ; preds = %2925, %2929
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %85) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %84) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %86) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %87) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %88) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %89) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %90) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %90)
          to label %2931 unwind label %3009

2931:                                             ; preds = %2930
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %88, ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %2932 unwind label %3011

2932:                                             ; preds = %2931
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @.str.34)
          to label %2933 unwind label %3013

2933:                                             ; preds = %2932
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %91) #27
  invoke fastcc void @_ZL20__apo_csharp_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %91, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %2934 unwind label %3015

2934:                                             ; preds = %2933
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull align 8 dereferenceable(32) %91)
          to label %2935 unwind label %3017

2935:                                             ; preds = %2934
  %2936 = load ptr, ptr %86, align 8, !tbaa !11
  %2937 = invoke i32 @system(ptr noundef %2936)
          to label %2938 unwind label %3019

2938:                                             ; preds = %2935
  %2939 = load ptr, ptr %86, align 8, !tbaa !11
  %2940 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 2
  %2941 = icmp eq ptr %2939, %2940
  br i1 %2941, label %2942, label %2946

2942:                                             ; preds = %2938
  %2943 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 1
  %2944 = load i64, ptr %2943, align 8, !tbaa !15
  %2945 = icmp ult i64 %2944, 16
  call void @llvm.assume(i1 %2945)
  br label %2947

2946:                                             ; preds = %2938
  call void @_ZdlPv(ptr noundef %2939) #26
  br label %2947

2947:                                             ; preds = %2942, %2946
  %2948 = load ptr, ptr %91, align 8, !tbaa !11
  %2949 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 2
  %2950 = icmp eq ptr %2948, %2949
  br i1 %2950, label %2951, label %2955

2951:                                             ; preds = %2947
  %2952 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 1
  %2953 = load i64, ptr %2952, align 8, !tbaa !15
  %2954 = icmp ult i64 %2953, 16
  call void @llvm.assume(i1 %2954)
  br label %2956

2955:                                             ; preds = %2947
  call void @_ZdlPv(ptr noundef %2948) #26
  br label %2956

2956:                                             ; preds = %2951, %2955
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %91) #27
  %2957 = load ptr, ptr %87, align 8, !tbaa !11
  %2958 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 2
  %2959 = icmp eq ptr %2957, %2958
  br i1 %2959, label %2960, label %2964

2960:                                             ; preds = %2956
  %2961 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 1
  %2962 = load i64, ptr %2961, align 8, !tbaa !15
  %2963 = icmp ult i64 %2962, 16
  call void @llvm.assume(i1 %2963)
  br label %2965

2964:                                             ; preds = %2956
  call void @_ZdlPv(ptr noundef %2957) #26
  br label %2965

2965:                                             ; preds = %2960, %2964
  %2966 = load ptr, ptr %88, align 8, !tbaa !11
  %2967 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 0, i32 2
  %2968 = icmp eq ptr %2966, %2967
  br i1 %2968, label %2969, label %2973

2969:                                             ; preds = %2965
  %2970 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 0, i32 1
  %2971 = load i64, ptr %2970, align 8, !tbaa !15
  %2972 = icmp ult i64 %2971, 16
  call void @llvm.assume(i1 %2972)
  br label %2974

2973:                                             ; preds = %2965
  call void @_ZdlPv(ptr noundef %2966) #26
  br label %2974

2974:                                             ; preds = %2969, %2973
  %2975 = load ptr, ptr %89, align 8, !tbaa !11
  %2976 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %89, i64 0, i32 2
  %2977 = icmp eq ptr %2975, %2976
  br i1 %2977, label %2978, label %2982

2978:                                             ; preds = %2974
  %2979 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %89, i64 0, i32 1
  %2980 = load i64, ptr %2979, align 8, !tbaa !15
  %2981 = icmp ult i64 %2980, 16
  call void @llvm.assume(i1 %2981)
  br label %2983

2982:                                             ; preds = %2974
  call void @_ZdlPv(ptr noundef %2975) #26
  br label %2983

2983:                                             ; preds = %2978, %2982
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %90) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %89) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %88) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %87) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %86) #27
  %2984 = load ptr, ptr %82, align 8, !tbaa !11
  %2985 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %82, i64 0, i32 2
  %2986 = icmp eq ptr %2984, %2985
  br i1 %2986, label %2987, label %2991

2987:                                             ; preds = %2983
  %2988 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %82, i64 0, i32 1
  %2989 = load i64, ptr %2988, align 8, !tbaa !15
  %2990 = icmp ult i64 %2989, 16
  call void @llvm.assume(i1 %2990)
  br label %2992

2991:                                             ; preds = %2983
  call void @_ZdlPv(ptr noundef %2984) #26
  br label %2992

2992:                                             ; preds = %2987, %2991
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %82) #27
  br label %3504

2993:                                             ; preds = %2918
  %2994 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %83) #27
  br label %3081

2995:                                             ; preds = %2919
  %2996 = landingpad { ptr, i32 }
          cleanup
  br label %3007

2997:                                             ; preds = %2920
  %2998 = landingpad { ptr, i32 }
          cleanup
  %2999 = load ptr, ptr %84, align 8, !tbaa !11
  %3000 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 2
  %3001 = icmp eq ptr %2999, %3000
  br i1 %3001, label %3002, label %3006

3002:                                             ; preds = %2997
  %3003 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 1
  %3004 = load i64, ptr %3003, align 8, !tbaa !15
  %3005 = icmp ult i64 %3004, 16
  call void @llvm.assume(i1 %3005)
  br label %3007

3006:                                             ; preds = %2997
  call void @_ZdlPv(ptr noundef %2999) #26
  br label %3007

3007:                                             ; preds = %3006, %3002, %2995
  %3008 = phi { ptr, i32 } [ %2996, %2995 ], [ %2998, %3002 ], [ %2998, %3006 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %85) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %84) #27
  br label %3071

3009:                                             ; preds = %2930
  %3010 = landingpad { ptr, i32 }
          cleanup
  br label %3069

3011:                                             ; preds = %2931
  %3012 = landingpad { ptr, i32 }
          cleanup
  br label %3059

3013:                                             ; preds = %2932
  %3014 = landingpad { ptr, i32 }
          cleanup
  br label %3049

3015:                                             ; preds = %2933
  %3016 = landingpad { ptr, i32 }
          cleanup
  br label %3039

3017:                                             ; preds = %2934
  %3018 = landingpad { ptr, i32 }
          cleanup
  br label %3029

3019:                                             ; preds = %2935
  %3020 = landingpad { ptr, i32 }
          cleanup
  %3021 = load ptr, ptr %86, align 8, !tbaa !11
  %3022 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 2
  %3023 = icmp eq ptr %3021, %3022
  br i1 %3023, label %3024, label %3028

3024:                                             ; preds = %3019
  %3025 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %86, i64 0, i32 1
  %3026 = load i64, ptr %3025, align 8, !tbaa !15
  %3027 = icmp ult i64 %3026, 16
  call void @llvm.assume(i1 %3027)
  br label %3029

3028:                                             ; preds = %3019
  call void @_ZdlPv(ptr noundef %3021) #26
  br label %3029

3029:                                             ; preds = %3028, %3024, %3017
  %3030 = phi { ptr, i32 } [ %3018, %3017 ], [ %3020, %3024 ], [ %3020, %3028 ]
  %3031 = load ptr, ptr %91, align 8, !tbaa !11
  %3032 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 2
  %3033 = icmp eq ptr %3031, %3032
  br i1 %3033, label %3034, label %3038

3034:                                             ; preds = %3029
  %3035 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 1
  %3036 = load i64, ptr %3035, align 8, !tbaa !15
  %3037 = icmp ult i64 %3036, 16
  call void @llvm.assume(i1 %3037)
  br label %3039

3038:                                             ; preds = %3029
  call void @_ZdlPv(ptr noundef %3031) #26
  br label %3039

3039:                                             ; preds = %3038, %3034, %3015
  %3040 = phi { ptr, i32 } [ %3016, %3015 ], [ %3030, %3034 ], [ %3030, %3038 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %91) #27
  %3041 = load ptr, ptr %87, align 8, !tbaa !11
  %3042 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 2
  %3043 = icmp eq ptr %3041, %3042
  br i1 %3043, label %3044, label %3048

3044:                                             ; preds = %3039
  %3045 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %87, i64 0, i32 1
  %3046 = load i64, ptr %3045, align 8, !tbaa !15
  %3047 = icmp ult i64 %3046, 16
  call void @llvm.assume(i1 %3047)
  br label %3049

3048:                                             ; preds = %3039
  call void @_ZdlPv(ptr noundef %3041) #26
  br label %3049

3049:                                             ; preds = %3048, %3044, %3013
  %3050 = phi { ptr, i32 } [ %3014, %3013 ], [ %3040, %3044 ], [ %3040, %3048 ]
  %3051 = load ptr, ptr %88, align 8, !tbaa !11
  %3052 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 0, i32 2
  %3053 = icmp eq ptr %3051, %3052
  br i1 %3053, label %3054, label %3058

3054:                                             ; preds = %3049
  %3055 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %88, i64 0, i32 1
  %3056 = load i64, ptr %3055, align 8, !tbaa !15
  %3057 = icmp ult i64 %3056, 16
  call void @llvm.assume(i1 %3057)
  br label %3059

3058:                                             ; preds = %3049
  call void @_ZdlPv(ptr noundef %3051) #26
  br label %3059

3059:                                             ; preds = %3058, %3054, %3011
  %3060 = phi { ptr, i32 } [ %3012, %3011 ], [ %3050, %3054 ], [ %3050, %3058 ]
  %3061 = load ptr, ptr %89, align 8, !tbaa !11
  %3062 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %89, i64 0, i32 2
  %3063 = icmp eq ptr %3061, %3062
  br i1 %3063, label %3064, label %3068

3064:                                             ; preds = %3059
  %3065 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %89, i64 0, i32 1
  %3066 = load i64, ptr %3065, align 8, !tbaa !15
  %3067 = icmp ult i64 %3066, 16
  call void @llvm.assume(i1 %3067)
  br label %3069

3068:                                             ; preds = %3059
  call void @_ZdlPv(ptr noundef %3061) #26
  br label %3069

3069:                                             ; preds = %3068, %3064, %3009
  %3070 = phi { ptr, i32 } [ %3010, %3009 ], [ %3060, %3064 ], [ %3060, %3068 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %90) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %89) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %88) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %87) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %86) #27
  br label %3071

3071:                                             ; preds = %3069, %3007
  %3072 = phi { ptr, i32 } [ %3070, %3069 ], [ %3008, %3007 ]
  %3073 = load ptr, ptr %82, align 8, !tbaa !11
  %3074 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %82, i64 0, i32 2
  %3075 = icmp eq ptr %3073, %3074
  br i1 %3075, label %3076, label %3080

3076:                                             ; preds = %3071
  %3077 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %82, i64 0, i32 1
  %3078 = load i64, ptr %3077, align 8, !tbaa !15
  %3079 = icmp ult i64 %3078, 16
  call void @llvm.assume(i1 %3079)
  br label %3081

3080:                                             ; preds = %3071
  call void @_ZdlPv(ptr noundef %3073) #26
  br label %3081

3081:                                             ; preds = %3080, %3076, %2993
  %3082 = phi { ptr, i32 } [ %2994, %2993 ], [ %3072, %3076 ], [ %3072, %3080 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %82) #27
  br label %3528

3083:                                             ; preds = %2916
  %3084 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.35)
  br i1 %3084, label %3085, label %3160

3085:                                             ; preds = %3083
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %92) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %93) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %93)
          to label %3086 unwind label %3120

3086:                                             ; preds = %3085
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3087 unwind label %3122

3087:                                             ; preds = %3086
  %3088 = load ptr, ptr %92, align 8, !tbaa !11
  %3089 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %92, i64 0, i32 2
  %3090 = icmp eq ptr %3088, %3089
  br i1 %3090, label %3091, label %3095

3091:                                             ; preds = %3087
  %3092 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %92, i64 0, i32 1
  %3093 = load i64, ptr %3092, align 8, !tbaa !15
  %3094 = icmp ult i64 %3093, 16
  call void @llvm.assume(i1 %3094)
  br label %3096

3095:                                             ; preds = %3087
  call void @_ZdlPv(ptr noundef %3088) #26
  br label %3096

3096:                                             ; preds = %3091, %3095
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %93) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %92) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %94) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %95) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %96) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %96)
          to label %3097 unwind label %3134

3097:                                             ; preds = %3096
  invoke fastcc void @_ZL20__apo_python_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %94, ptr noundef nonnull align 8 dereferenceable(32) %95)
          to label %3098 unwind label %3136

3098:                                             ; preds = %3097
  %3099 = load ptr, ptr %94, align 8, !tbaa !11
  %3100 = invoke i32 @system(ptr noundef %3099)
          to label %3101 unwind label %3138

3101:                                             ; preds = %3098
  %3102 = load ptr, ptr %94, align 8, !tbaa !11
  %3103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %94, i64 0, i32 2
  %3104 = icmp eq ptr %3102, %3103
  br i1 %3104, label %3105, label %3109

3105:                                             ; preds = %3101
  %3106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %94, i64 0, i32 1
  %3107 = load i64, ptr %3106, align 8, !tbaa !15
  %3108 = icmp ult i64 %3107, 16
  call void @llvm.assume(i1 %3108)
  br label %3110

3109:                                             ; preds = %3101
  call void @_ZdlPv(ptr noundef %3102) #26
  br label %3110

3110:                                             ; preds = %3105, %3109
  %3111 = load ptr, ptr %95, align 8, !tbaa !11
  %3112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %95, i64 0, i32 2
  %3113 = icmp eq ptr %3111, %3112
  br i1 %3113, label %3114, label %3118

3114:                                             ; preds = %3110
  %3115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %95, i64 0, i32 1
  %3116 = load i64, ptr %3115, align 8, !tbaa !15
  %3117 = icmp ult i64 %3116, 16
  call void @llvm.assume(i1 %3117)
  br label %3119

3118:                                             ; preds = %3110
  call void @_ZdlPv(ptr noundef %3111) #26
  br label %3119

3119:                                             ; preds = %3114, %3118
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %95) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %94) #27
  br label %3504

3120:                                             ; preds = %3085
  %3121 = landingpad { ptr, i32 }
          cleanup
  br label %3132

3122:                                             ; preds = %3086
  %3123 = landingpad { ptr, i32 }
          cleanup
  %3124 = load ptr, ptr %92, align 8, !tbaa !11
  %3125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %92, i64 0, i32 2
  %3126 = icmp eq ptr %3124, %3125
  br i1 %3126, label %3127, label %3131

3127:                                             ; preds = %3122
  %3128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %92, i64 0, i32 1
  %3129 = load i64, ptr %3128, align 8, !tbaa !15
  %3130 = icmp ult i64 %3129, 16
  call void @llvm.assume(i1 %3130)
  br label %3132

3131:                                             ; preds = %3122
  call void @_ZdlPv(ptr noundef %3124) #26
  br label %3132

3132:                                             ; preds = %3131, %3127, %3120
  %3133 = phi { ptr, i32 } [ %3121, %3120 ], [ %3123, %3127 ], [ %3123, %3131 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %93) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %92) #27
  br label %3528

3134:                                             ; preds = %3096
  %3135 = landingpad { ptr, i32 }
          cleanup
  br label %3158

3136:                                             ; preds = %3097
  %3137 = landingpad { ptr, i32 }
          cleanup
  br label %3148

3138:                                             ; preds = %3098
  %3139 = landingpad { ptr, i32 }
          cleanup
  %3140 = load ptr, ptr %94, align 8, !tbaa !11
  %3141 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %94, i64 0, i32 2
  %3142 = icmp eq ptr %3140, %3141
  br i1 %3142, label %3143, label %3147

3143:                                             ; preds = %3138
  %3144 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %94, i64 0, i32 1
  %3145 = load i64, ptr %3144, align 8, !tbaa !15
  %3146 = icmp ult i64 %3145, 16
  call void @llvm.assume(i1 %3146)
  br label %3148

3147:                                             ; preds = %3138
  call void @_ZdlPv(ptr noundef %3140) #26
  br label %3148

3148:                                             ; preds = %3147, %3143, %3136
  %3149 = phi { ptr, i32 } [ %3137, %3136 ], [ %3139, %3143 ], [ %3139, %3147 ]
  %3150 = load ptr, ptr %95, align 8, !tbaa !11
  %3151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %95, i64 0, i32 2
  %3152 = icmp eq ptr %3150, %3151
  br i1 %3152, label %3153, label %3157

3153:                                             ; preds = %3148
  %3154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %95, i64 0, i32 1
  %3155 = load i64, ptr %3154, align 8, !tbaa !15
  %3156 = icmp ult i64 %3155, 16
  call void @llvm.assume(i1 %3156)
  br label %3158

3157:                                             ; preds = %3148
  call void @_ZdlPv(ptr noundef %3150) #26
  br label %3158

3158:                                             ; preds = %3157, %3153, %3134
  %3159 = phi { ptr, i32 } [ %3135, %3134 ], [ %3149, %3153 ], [ %3149, %3157 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %95) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %94) #27
  br label %3528

3160:                                             ; preds = %3083
  %3161 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.37)
  br i1 %3161, label %3162, label %3188

3162:                                             ; preds = %3160
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %97) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %98) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %98)
          to label %3163 unwind label %3174

3163:                                             ; preds = %3162
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3164 unwind label %3176

3164:                                             ; preds = %3163
  %3165 = load ptr, ptr %97, align 8, !tbaa !11
  %3166 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %97, i64 0, i32 2
  %3167 = icmp eq ptr %3165, %3166
  br i1 %3167, label %3168, label %3172

3168:                                             ; preds = %3164
  %3169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %97, i64 0, i32 1
  %3170 = load i64, ptr %3169, align 8, !tbaa !15
  %3171 = icmp ult i64 %3170, 16
  call void @llvm.assume(i1 %3171)
  br label %3173

3172:                                             ; preds = %3164
  call void @_ZdlPv(ptr noundef %3165) #26
  br label %3173

3173:                                             ; preds = %3168, %3172
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %97) #27
  br label %3479

3174:                                             ; preds = %3162
  %3175 = landingpad { ptr, i32 }
          cleanup
  br label %3186

3176:                                             ; preds = %3163
  %3177 = landingpad { ptr, i32 }
          cleanup
  %3178 = load ptr, ptr %97, align 8, !tbaa !11
  %3179 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %97, i64 0, i32 2
  %3180 = icmp eq ptr %3178, %3179
  br i1 %3180, label %3181, label %3185

3181:                                             ; preds = %3176
  %3182 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %97, i64 0, i32 1
  %3183 = load i64, ptr %3182, align 8, !tbaa !15
  %3184 = icmp ult i64 %3183, 16
  call void @llvm.assume(i1 %3184)
  br label %3186

3185:                                             ; preds = %3176
  call void @_ZdlPv(ptr noundef %3178) #26
  br label %3186

3186:                                             ; preds = %3185, %3181, %3174
  %3187 = phi { ptr, i32 } [ %3175, %3174 ], [ %3177, %3181 ], [ %3177, %3185 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %97) #27
  br label %3528

3188:                                             ; preds = %3160
  %3189 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.40)
  br i1 %3189, label %3190, label %3216

3190:                                             ; preds = %3188
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %99) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %100) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %3191 unwind label %3202

3191:                                             ; preds = %3190
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3192 unwind label %3204

3192:                                             ; preds = %3191
  %3193 = load ptr, ptr %99, align 8, !tbaa !11
  %3194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %99, i64 0, i32 2
  %3195 = icmp eq ptr %3193, %3194
  br i1 %3195, label %3196, label %3200

3196:                                             ; preds = %3192
  %3197 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %99, i64 0, i32 1
  %3198 = load i64, ptr %3197, align 8, !tbaa !15
  %3199 = icmp ult i64 %3198, 16
  call void @llvm.assume(i1 %3199)
  br label %3201

3200:                                             ; preds = %3192
  call void @_ZdlPv(ptr noundef %3193) #26
  br label %3201

3201:                                             ; preds = %3196, %3200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %100) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %99) #27
  br label %3479

3202:                                             ; preds = %3190
  %3203 = landingpad { ptr, i32 }
          cleanup
  br label %3214

3204:                                             ; preds = %3191
  %3205 = landingpad { ptr, i32 }
          cleanup
  %3206 = load ptr, ptr %99, align 8, !tbaa !11
  %3207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %99, i64 0, i32 2
  %3208 = icmp eq ptr %3206, %3207
  br i1 %3208, label %3209, label %3213

3209:                                             ; preds = %3204
  %3210 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %99, i64 0, i32 1
  %3211 = load i64, ptr %3210, align 8, !tbaa !15
  %3212 = icmp ult i64 %3211, 16
  call void @llvm.assume(i1 %3212)
  br label %3214

3213:                                             ; preds = %3204
  call void @_ZdlPv(ptr noundef %3206) #26
  br label %3214

3214:                                             ; preds = %3213, %3209, %3202
  %3215 = phi { ptr, i32 } [ %3203, %3202 ], [ %3205, %3209 ], [ %3205, %3213 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %100) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %99) #27
  br label %3528

3216:                                             ; preds = %3188
  %3217 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.43)
  br i1 %3217, label %3218, label %3409

3218:                                             ; preds = %3216
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %101) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %102) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %101, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %102)
          to label %3219 unwind label %3307

3219:                                             ; preds = %3218
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %103) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %104) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %104)
          to label %3220 unwind label %3309

3220:                                             ; preds = %3219
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3221 unwind label %3311

3221:                                             ; preds = %3220
  %3222 = load ptr, ptr %103, align 8, !tbaa !11
  %3223 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 2
  %3224 = icmp eq ptr %3222, %3223
  br i1 %3224, label %3225, label %3229

3225:                                             ; preds = %3221
  %3226 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %3227 = load i64, ptr %3226, align 8, !tbaa !15
  %3228 = icmp ult i64 %3227, 16
  call void @llvm.assume(i1 %3228)
  br label %3230

3229:                                             ; preds = %3221
  call void @_ZdlPv(ptr noundef %3222) #26
  br label %3230

3230:                                             ; preds = %3225, %3229
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %104) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %103) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %105) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %106) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %107) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %108) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %109) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %108, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %109)
          to label %3231 unwind label %3323

3231:                                             ; preds = %3230
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %110) #27
  %3232 = load ptr, ptr %101, align 8, !tbaa !11
  %3233 = getelementptr inbounds i8, ptr %101, i64 8
  %3234 = load i64, ptr %3233, align 8, !tbaa !15
  invoke fastcc void @_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %110, ptr %3232, i64 %3234)
          to label %3235 unwind label %3325

3235:                                             ; preds = %3231
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %107, ptr noundef nonnull align 8 dereferenceable(32) %108, ptr noundef nonnull align 8 dereferenceable(32) %110)
          to label %3236 unwind label %3327

3236:                                             ; preds = %3235
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %106, ptr noundef nonnull align 8 dereferenceable(32) %107, ptr noundef nonnull @.str.47)
          to label %3237 unwind label %3329

3237:                                             ; preds = %3236
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %111) #27
  %3238 = load ptr, ptr %101, align 8, !tbaa !11, !noalias !198
  %3239 = load i64, ptr %3233, align 8, !tbaa !15, !noalias !198
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27, !noalias !201
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %111, ptr noundef nonnull @.str.101, i64 noundef 2, ptr noundef %3238, i64 noundef %3239, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %3240 unwind label %3331

3240:                                             ; preds = %3237
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27, !noalias !201
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %105, ptr noundef nonnull align 8 dereferenceable(32) %106, ptr noundef nonnull align 8 dereferenceable(32) %111)
          to label %3241 unwind label %3333

3241:                                             ; preds = %3240
  %3242 = load ptr, ptr %105, align 8, !tbaa !11
  %3243 = invoke i32 @system(ptr noundef %3242)
          to label %3244 unwind label %3335

3244:                                             ; preds = %3241
  %3245 = load ptr, ptr %105, align 8, !tbaa !11
  %3246 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 2
  %3247 = icmp eq ptr %3245, %3246
  br i1 %3247, label %3248, label %3252

3248:                                             ; preds = %3244
  %3249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 1
  %3250 = load i64, ptr %3249, align 8, !tbaa !15
  %3251 = icmp ult i64 %3250, 16
  call void @llvm.assume(i1 %3251)
  br label %3253

3252:                                             ; preds = %3244
  call void @_ZdlPv(ptr noundef %3245) #26
  br label %3253

3253:                                             ; preds = %3248, %3252
  %3254 = load ptr, ptr %111, align 8, !tbaa !11
  %3255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %111, i64 0, i32 2
  %3256 = icmp eq ptr %3254, %3255
  br i1 %3256, label %3257, label %3261

3257:                                             ; preds = %3253
  %3258 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %111, i64 0, i32 1
  %3259 = load i64, ptr %3258, align 8, !tbaa !15
  %3260 = icmp ult i64 %3259, 16
  call void @llvm.assume(i1 %3260)
  br label %3262

3261:                                             ; preds = %3253
  call void @_ZdlPv(ptr noundef %3254) #26
  br label %3262

3262:                                             ; preds = %3257, %3261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %111) #27
  %3263 = load ptr, ptr %106, align 8, !tbaa !11
  %3264 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %106, i64 0, i32 2
  %3265 = icmp eq ptr %3263, %3264
  br i1 %3265, label %3266, label %3270

3266:                                             ; preds = %3262
  %3267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %106, i64 0, i32 1
  %3268 = load i64, ptr %3267, align 8, !tbaa !15
  %3269 = icmp ult i64 %3268, 16
  call void @llvm.assume(i1 %3269)
  br label %3271

3270:                                             ; preds = %3262
  call void @_ZdlPv(ptr noundef %3263) #26
  br label %3271

3271:                                             ; preds = %3266, %3270
  %3272 = load ptr, ptr %107, align 8, !tbaa !11
  %3273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %107, i64 0, i32 2
  %3274 = icmp eq ptr %3272, %3273
  br i1 %3274, label %3275, label %3279

3275:                                             ; preds = %3271
  %3276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %107, i64 0, i32 1
  %3277 = load i64, ptr %3276, align 8, !tbaa !15
  %3278 = icmp ult i64 %3277, 16
  call void @llvm.assume(i1 %3278)
  br label %3280

3279:                                             ; preds = %3271
  call void @_ZdlPv(ptr noundef %3272) #26
  br label %3280

3280:                                             ; preds = %3275, %3279
  %3281 = load ptr, ptr %110, align 8, !tbaa !11
  %3282 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %110, i64 0, i32 2
  %3283 = icmp eq ptr %3281, %3282
  br i1 %3283, label %3284, label %3288

3284:                                             ; preds = %3280
  %3285 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %110, i64 0, i32 1
  %3286 = load i64, ptr %3285, align 8, !tbaa !15
  %3287 = icmp ult i64 %3286, 16
  call void @llvm.assume(i1 %3287)
  br label %3289

3288:                                             ; preds = %3280
  call void @_ZdlPv(ptr noundef %3281) #26
  br label %3289

3289:                                             ; preds = %3284, %3288
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %110) #27
  %3290 = load ptr, ptr %108, align 8, !tbaa !11
  %3291 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 2
  %3292 = icmp eq ptr %3290, %3291
  br i1 %3292, label %3293, label %3297

3293:                                             ; preds = %3289
  %3294 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 1
  %3295 = load i64, ptr %3294, align 8, !tbaa !15
  %3296 = icmp ult i64 %3295, 16
  call void @llvm.assume(i1 %3296)
  br label %3298

3297:                                             ; preds = %3289
  call void @_ZdlPv(ptr noundef %3290) #26
  br label %3298

3298:                                             ; preds = %3293, %3297
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %109) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %108) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %107) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %106) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %105) #27
  %3299 = load ptr, ptr %101, align 8, !tbaa !11
  %3300 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 2
  %3301 = icmp eq ptr %3299, %3300
  br i1 %3301, label %3302, label %3305

3302:                                             ; preds = %3298
  %3303 = load i64, ptr %3233, align 8, !tbaa !15
  %3304 = icmp ult i64 %3303, 16
  call void @llvm.assume(i1 %3304)
  br label %3306

3305:                                             ; preds = %3298
  call void @_ZdlPv(ptr noundef %3299) #26
  br label %3306

3306:                                             ; preds = %3302, %3305
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %101) #27
  br label %3504

3307:                                             ; preds = %3218
  %3308 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102) #27
  br label %3407

3309:                                             ; preds = %3219
  %3310 = landingpad { ptr, i32 }
          cleanup
  br label %3321

3311:                                             ; preds = %3220
  %3312 = landingpad { ptr, i32 }
          cleanup
  %3313 = load ptr, ptr %103, align 8, !tbaa !11
  %3314 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 2
  %3315 = icmp eq ptr %3313, %3314
  br i1 %3315, label %3316, label %3320

3316:                                             ; preds = %3311
  %3317 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %103, i64 0, i32 1
  %3318 = load i64, ptr %3317, align 8, !tbaa !15
  %3319 = icmp ult i64 %3318, 16
  call void @llvm.assume(i1 %3319)
  br label %3321

3320:                                             ; preds = %3311
  call void @_ZdlPv(ptr noundef %3313) #26
  br label %3321

3321:                                             ; preds = %3320, %3316, %3309
  %3322 = phi { ptr, i32 } [ %3310, %3309 ], [ %3312, %3316 ], [ %3312, %3320 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %104) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %103) #27
  br label %3397

3323:                                             ; preds = %3230
  %3324 = landingpad { ptr, i32 }
          cleanup
  br label %3395

3325:                                             ; preds = %3231
  %3326 = landingpad { ptr, i32 }
          cleanup
  br label %3385

3327:                                             ; preds = %3235
  %3328 = landingpad { ptr, i32 }
          cleanup
  br label %3375

3329:                                             ; preds = %3236
  %3330 = landingpad { ptr, i32 }
          cleanup
  br label %3365

3331:                                             ; preds = %3237
  %3332 = landingpad { ptr, i32 }
          cleanup
  br label %3355

3333:                                             ; preds = %3240
  %3334 = landingpad { ptr, i32 }
          cleanup
  br label %3345

3335:                                             ; preds = %3241
  %3336 = landingpad { ptr, i32 }
          cleanup
  %3337 = load ptr, ptr %105, align 8, !tbaa !11
  %3338 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 2
  %3339 = icmp eq ptr %3337, %3338
  br i1 %3339, label %3340, label %3344

3340:                                             ; preds = %3335
  %3341 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 1
  %3342 = load i64, ptr %3341, align 8, !tbaa !15
  %3343 = icmp ult i64 %3342, 16
  call void @llvm.assume(i1 %3343)
  br label %3345

3344:                                             ; preds = %3335
  call void @_ZdlPv(ptr noundef %3337) #26
  br label %3345

3345:                                             ; preds = %3344, %3340, %3333
  %3346 = phi { ptr, i32 } [ %3334, %3333 ], [ %3336, %3340 ], [ %3336, %3344 ]
  %3347 = load ptr, ptr %111, align 8, !tbaa !11
  %3348 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %111, i64 0, i32 2
  %3349 = icmp eq ptr %3347, %3348
  br i1 %3349, label %3350, label %3354

3350:                                             ; preds = %3345
  %3351 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %111, i64 0, i32 1
  %3352 = load i64, ptr %3351, align 8, !tbaa !15
  %3353 = icmp ult i64 %3352, 16
  call void @llvm.assume(i1 %3353)
  br label %3355

3354:                                             ; preds = %3345
  call void @_ZdlPv(ptr noundef %3347) #26
  br label %3355

3355:                                             ; preds = %3354, %3350, %3331
  %3356 = phi { ptr, i32 } [ %3332, %3331 ], [ %3346, %3350 ], [ %3346, %3354 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %111) #27
  %3357 = load ptr, ptr %106, align 8, !tbaa !11
  %3358 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %106, i64 0, i32 2
  %3359 = icmp eq ptr %3357, %3358
  br i1 %3359, label %3360, label %3364

3360:                                             ; preds = %3355
  %3361 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %106, i64 0, i32 1
  %3362 = load i64, ptr %3361, align 8, !tbaa !15
  %3363 = icmp ult i64 %3362, 16
  call void @llvm.assume(i1 %3363)
  br label %3365

3364:                                             ; preds = %3355
  call void @_ZdlPv(ptr noundef %3357) #26
  br label %3365

3365:                                             ; preds = %3364, %3360, %3329
  %3366 = phi { ptr, i32 } [ %3330, %3329 ], [ %3356, %3360 ], [ %3356, %3364 ]
  %3367 = load ptr, ptr %107, align 8, !tbaa !11
  %3368 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %107, i64 0, i32 2
  %3369 = icmp eq ptr %3367, %3368
  br i1 %3369, label %3370, label %3374

3370:                                             ; preds = %3365
  %3371 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %107, i64 0, i32 1
  %3372 = load i64, ptr %3371, align 8, !tbaa !15
  %3373 = icmp ult i64 %3372, 16
  call void @llvm.assume(i1 %3373)
  br label %3375

3374:                                             ; preds = %3365
  call void @_ZdlPv(ptr noundef %3367) #26
  br label %3375

3375:                                             ; preds = %3374, %3370, %3327
  %3376 = phi { ptr, i32 } [ %3328, %3327 ], [ %3366, %3370 ], [ %3366, %3374 ]
  %3377 = load ptr, ptr %110, align 8, !tbaa !11
  %3378 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %110, i64 0, i32 2
  %3379 = icmp eq ptr %3377, %3378
  br i1 %3379, label %3380, label %3384

3380:                                             ; preds = %3375
  %3381 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %110, i64 0, i32 1
  %3382 = load i64, ptr %3381, align 8, !tbaa !15
  %3383 = icmp ult i64 %3382, 16
  call void @llvm.assume(i1 %3383)
  br label %3385

3384:                                             ; preds = %3375
  call void @_ZdlPv(ptr noundef %3377) #26
  br label %3385

3385:                                             ; preds = %3384, %3380, %3325
  %3386 = phi { ptr, i32 } [ %3326, %3325 ], [ %3376, %3380 ], [ %3376, %3384 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %110) #27
  %3387 = load ptr, ptr %108, align 8, !tbaa !11
  %3388 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 2
  %3389 = icmp eq ptr %3387, %3388
  br i1 %3389, label %3390, label %3394

3390:                                             ; preds = %3385
  %3391 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %108, i64 0, i32 1
  %3392 = load i64, ptr %3391, align 8, !tbaa !15
  %3393 = icmp ult i64 %3392, 16
  call void @llvm.assume(i1 %3393)
  br label %3395

3394:                                             ; preds = %3385
  call void @_ZdlPv(ptr noundef %3387) #26
  br label %3395

3395:                                             ; preds = %3394, %3390, %3323
  %3396 = phi { ptr, i32 } [ %3324, %3323 ], [ %3386, %3390 ], [ %3386, %3394 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %109) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %108) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %107) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %106) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %105) #27
  br label %3397

3397:                                             ; preds = %3395, %3321
  %3398 = phi { ptr, i32 } [ %3396, %3395 ], [ %3322, %3321 ]
  %3399 = load ptr, ptr %101, align 8, !tbaa !11
  %3400 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 2
  %3401 = icmp eq ptr %3399, %3400
  br i1 %3401, label %3402, label %3406

3402:                                             ; preds = %3397
  %3403 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %101, i64 0, i32 1
  %3404 = load i64, ptr %3403, align 8, !tbaa !15
  %3405 = icmp ult i64 %3404, 16
  call void @llvm.assume(i1 %3405)
  br label %3407

3406:                                             ; preds = %3397
  call void @_ZdlPv(ptr noundef %3399) #26
  br label %3407

3407:                                             ; preds = %3406, %3402, %3307
  %3408 = phi { ptr, i32 } [ %3308, %3307 ], [ %3398, %3402 ], [ %3398, %3406 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %101) #27
  br label %3528

3409:                                             ; preds = %3216
  %3410 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.48)
  br i1 %3410, label %3411, label %3437

3411:                                             ; preds = %3409
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %112) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %113) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %113)
          to label %3412 unwind label %3423

3412:                                             ; preds = %3411
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3413 unwind label %3425

3413:                                             ; preds = %3412
  %3414 = load ptr, ptr %112, align 8, !tbaa !11
  %3415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %112, i64 0, i32 2
  %3416 = icmp eq ptr %3414, %3415
  br i1 %3416, label %3417, label %3421

3417:                                             ; preds = %3413
  %3418 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %112, i64 0, i32 1
  %3419 = load i64, ptr %3418, align 8, !tbaa !15
  %3420 = icmp ult i64 %3419, 16
  call void @llvm.assume(i1 %3420)
  br label %3422

3421:                                             ; preds = %3413
  call void @_ZdlPv(ptr noundef %3414) #26
  br label %3422

3422:                                             ; preds = %3417, %3421
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %113) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %112) #27
  br label %3479

3423:                                             ; preds = %3411
  %3424 = landingpad { ptr, i32 }
          cleanup
  br label %3435

3425:                                             ; preds = %3412
  %3426 = landingpad { ptr, i32 }
          cleanup
  %3427 = load ptr, ptr %112, align 8, !tbaa !11
  %3428 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %112, i64 0, i32 2
  %3429 = icmp eq ptr %3427, %3428
  br i1 %3429, label %3430, label %3434

3430:                                             ; preds = %3425
  %3431 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %112, i64 0, i32 1
  %3432 = load i64, ptr %3431, align 8, !tbaa !15
  %3433 = icmp ult i64 %3432, 16
  call void @llvm.assume(i1 %3433)
  br label %3435

3434:                                             ; preds = %3425
  call void @_ZdlPv(ptr noundef %3427) #26
  br label %3435

3435:                                             ; preds = %3434, %3430, %3423
  %3436 = phi { ptr, i32 } [ %3424, %3423 ], [ %3426, %3430 ], [ %3426, %3434 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %113) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %112) #27
  br label %3528

3437:                                             ; preds = %3409
  %3438 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.51)
  br i1 %3438, label %3439, label %3465

3439:                                             ; preds = %3437
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %114) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %115) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %115)
          to label %3440 unwind label %3451

3440:                                             ; preds = %3439
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3441 unwind label %3453

3441:                                             ; preds = %3440
  %3442 = load ptr, ptr %114, align 8, !tbaa !11
  %3443 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 2
  %3444 = icmp eq ptr %3442, %3443
  br i1 %3444, label %3445, label %3449

3445:                                             ; preds = %3441
  %3446 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 1
  %3447 = load i64, ptr %3446, align 8, !tbaa !15
  %3448 = icmp ult i64 %3447, 16
  call void @llvm.assume(i1 %3448)
  br label %3450

3449:                                             ; preds = %3441
  call void @_ZdlPv(ptr noundef %3442) #26
  br label %3450

3450:                                             ; preds = %3445, %3449
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %115) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %114) #27
  br label %3479

3451:                                             ; preds = %3439
  %3452 = landingpad { ptr, i32 }
          cleanup
  br label %3463

3453:                                             ; preds = %3440
  %3454 = landingpad { ptr, i32 }
          cleanup
  %3455 = load ptr, ptr %114, align 8, !tbaa !11
  %3456 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 2
  %3457 = icmp eq ptr %3455, %3456
  br i1 %3457, label %3458, label %3462

3458:                                             ; preds = %3453
  %3459 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %114, i64 0, i32 1
  %3460 = load i64, ptr %3459, align 8, !tbaa !15
  %3461 = icmp ult i64 %3460, 16
  call void @llvm.assume(i1 %3461)
  br label %3463

3462:                                             ; preds = %3453
  call void @_ZdlPv(ptr noundef %3455) #26
  br label %3463

3463:                                             ; preds = %3462, %3458, %3451
  %3464 = phi { ptr, i32 } [ %3452, %3451 ], [ %3454, %3458 ], [ %3454, %3462 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %115) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %114) #27
  br label %3528

3465:                                             ; preds = %3437
  %3466 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.54)
  br i1 %3466, label %3467, label %3496

3467:                                             ; preds = %3465
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %116) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %117) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %117)
          to label %3468 unwind label %3482

3468:                                             ; preds = %3467
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %3469 unwind label %3484

3469:                                             ; preds = %3468
  %3470 = load ptr, ptr %116, align 8, !tbaa !11
  %3471 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %116, i64 0, i32 2
  %3472 = icmp eq ptr %3470, %3471
  br i1 %3472, label %3473, label %3477

3473:                                             ; preds = %3469
  %3474 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %116, i64 0, i32 1
  %3475 = load i64, ptr %3474, align 8, !tbaa !15
  %3476 = icmp ult i64 %3475, 16
  call void @llvm.assume(i1 %3476)
  br label %3478

3477:                                             ; preds = %3469
  call void @_ZdlPv(ptr noundef %3470) #26
  br label %3478

3478:                                             ; preds = %3473, %3477
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %117) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %116) #27
  br label %3479

3479:                                             ; preds = %2901, %3173, %3201, %3422, %3450, %3478
  %3480 = phi ptr [ @.str.56, %3478 ], [ @.str.53, %3450 ], [ @.str.50, %3422 ], [ @.str.42, %3201 ], [ @.str.39, %3173 ], [ @.str.29, %2901 ]
  %3481 = invoke i32 @system(ptr noundef nonnull %3480)
          to label %3504 unwind label %2240

3482:                                             ; preds = %3467
  %3483 = landingpad { ptr, i32 }
          cleanup
  br label %3494

3484:                                             ; preds = %3468
  %3485 = landingpad { ptr, i32 }
          cleanup
  %3486 = load ptr, ptr %116, align 8, !tbaa !11
  %3487 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %116, i64 0, i32 2
  %3488 = icmp eq ptr %3486, %3487
  br i1 %3488, label %3489, label %3493

3489:                                             ; preds = %3484
  %3490 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %116, i64 0, i32 1
  %3491 = load i64, ptr %3490, align 8, !tbaa !15
  %3492 = icmp ult i64 %3491, 16
  call void @llvm.assume(i1 %3492)
  br label %3494

3493:                                             ; preds = %3484
  call void @_ZdlPv(ptr noundef %3486) #26
  br label %3494

3494:                                             ; preds = %3493, %3489, %3482
  %3495 = phi { ptr, i32 } [ %3483, %3482 ], [ %3485, %3489 ], [ %3485, %3493 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %117) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %116) #27
  br label %3528

3496:                                             ; preds = %3465
  %3497 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 30)
          to label %3498 unwind label %2240

3498:                                             ; preds = %3496
  %3499 = load ptr, ptr %54, align 8, !tbaa !11
  %3500 = load i64, ptr %172, align 8, !tbaa !15
  %3501 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %3499, i64 noundef %3500)
          to label %3502 unwind label %2240

3502:                                             ; preds = %3498
  %3503 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %3501)
          to label %3504 unwind label %2240

3504:                                             ; preds = %3479, %3502, %2235, %3306, %3119, %2992, %2802, %2593, %2372
  %3505 = load ptr, ptr %56, align 8, !tbaa !11
  %3506 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  %3507 = icmp eq ptr %3505, %3506
  br i1 %3507, label %3508, label %3512

3508:                                             ; preds = %3504
  %3509 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  %3510 = load i64, ptr %3509, align 8, !tbaa !15
  %3511 = icmp ult i64 %3510, 16
  call void @llvm.assume(i1 %3511)
  br label %3513

3512:                                             ; preds = %3504
  call void @_ZdlPv(ptr noundef %3505) #26
  br label %3513

3513:                                             ; preds = %3508, %3512
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %56) #27
  %3514 = load ptr, ptr %55, align 8, !tbaa !11
  %3515 = icmp eq ptr %3514, %179
  br i1 %3515, label %3516, label %3519

3516:                                             ; preds = %3513
  %3517 = load i64, ptr %201, align 8, !tbaa !15
  %3518 = icmp ult i64 %3517, 16
  call void @llvm.assume(i1 %3518)
  br label %3520

3519:                                             ; preds = %3513
  call void @_ZdlPv(ptr noundef %3514) #26
  br label %3520

3520:                                             ; preds = %3516, %3519
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %55) #27
  %3521 = load ptr, ptr %54, align 8, !tbaa !11
  %3522 = icmp eq ptr %3521, %154
  br i1 %3522, label %3523, label %3526

3523:                                             ; preds = %3520
  %3524 = load i64, ptr %172, align 8, !tbaa !15
  %3525 = icmp ult i64 %3524, 16
  call void @llvm.assume(i1 %3525)
  br label %3527

3526:                                             ; preds = %3520
  call void @_ZdlPv(ptr noundef %3521) #26
  br label %3527

3527:                                             ; preds = %3523, %3526
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #27
  br label %3555

3528:                                             ; preds = %2803, %2884, %2594, %2682, %2373, %2461, %2240, %2233, %3494, %3463, %3435, %3407, %3214, %3186, %3158, %3132, %3081, %2914
  %3529 = phi { ptr, i32 } [ %2915, %2914 ], [ %3082, %3081 ], [ %3159, %3158 ], [ %3133, %3132 ], [ %3187, %3186 ], [ %3215, %3214 ], [ %3408, %3407 ], [ %3436, %3435 ], [ %3464, %3463 ], [ %3495, %3494 ], [ %2241, %2240 ], [ %2234, %2233 ], [ %2374, %2373 ], [ %2462, %2461 ], [ %2595, %2594 ], [ %2683, %2682 ], [ %2804, %2803 ], [ %2885, %2884 ]
  %3530 = load ptr, ptr %56, align 8, !tbaa !11
  %3531 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  %3532 = icmp eq ptr %3530, %3531
  br i1 %3532, label %3533, label %3537

3533:                                             ; preds = %3528
  %3534 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  %3535 = load i64, ptr %3534, align 8, !tbaa !15
  %3536 = icmp ult i64 %3535, 16
  call void @llvm.assume(i1 %3536)
  br label %3538

3537:                                             ; preds = %3528
  call void @_ZdlPv(ptr noundef %3530) #26
  br label %3538

3538:                                             ; preds = %3537, %3533, %2238, %1555
  %3539 = phi { ptr, i32 } [ %2239, %2238 ], [ %1548, %1555 ], [ %3529, %3533 ], [ %3529, %3537 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %56) #27
  %3540 = load ptr, ptr %55, align 8, !tbaa !11
  %3541 = icmp eq ptr %3540, %179
  br i1 %3541, label %3542, label %3545

3542:                                             ; preds = %3538
  %3543 = load i64, ptr %201, align 8, !tbaa !15
  %3544 = icmp ult i64 %3543, 16
  call void @llvm.assume(i1 %3544)
  br label %3546

3545:                                             ; preds = %3538
  call void @_ZdlPv(ptr noundef %3540) #26
  br label %3546

3546:                                             ; preds = %3545, %3542, %2236
  %3547 = phi { ptr, i32 } [ %2237, %2236 ], [ %3539, %3542 ], [ %3539, %3545 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %55) #27
  %3548 = load ptr, ptr %54, align 8, !tbaa !11
  %3549 = icmp eq ptr %3548, %154
  br i1 %3549, label %3550, label %3553

3550:                                             ; preds = %3546
  %3551 = load i64, ptr %172, align 8, !tbaa !15
  %3552 = icmp ult i64 %3551, 16
  call void @llvm.assume(i1 %3552)
  br label %3554

3553:                                             ; preds = %3546
  call void @_ZdlPv(ptr noundef %3548) #26
  br label %3554

3554:                                             ; preds = %3550, %3553
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #27
  resume { ptr, i32 } %3547

3555:                                             ; preds = %3527, %149
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = icmp ult i64 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i64 noundef %2, i64 noundef %6) #28
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %10, ptr %0, align 8, !tbaa !18
  %11 = load ptr, ptr %1, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %11, i64 %2
  %13 = sub i64 %6, %2
  %14 = tail call noundef i64 @llvm.umin.i64(i64 %13, i64 %3)
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp slt i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

19:                                               ; preds = %16
  %20 = add nuw i64 %14, 1
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23, !prof !37

22:                                               ; preds = %19
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

23:                                               ; preds = %19
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #29
  store ptr %24, ptr %0, align 8, !tbaa !11
  store i64 %14, ptr %10, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi ptr [ %24, %23 ], [ %10, %9 ]
  switch i64 %14, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %28, ptr %26, align 1, !tbaa !19
  br label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %12, i64 %14, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %14, ptr %31, align 8, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %26, i64 %14
  store i8 0, ptr %32, align 1, !tbaa !19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #16 comdat {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %5 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = tail call i32 @bcmp(ptr %10, ptr %1, i64 %4)
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %9, %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ], [ true, %7 ]
  ret i1 %14
}

; Function Attrs: nofree
declare noundef i32 @system(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = sub i64 9223372036854775807, %6
  %8 = icmp ult i64 %7, %4
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
  unreachable

10:                                               ; preds = %3
  %11 = add i64 %6, %4
  %12 = load ptr, ptr %1, align 8, !tbaa !11
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = icmp ult i64 %6, 16
  tail call void @llvm.assume(i1 %16)
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i64, ptr %13, align 8
  %19 = select i1 %14, i64 15, i64 %18
  %20 = icmp ugt i64 %11, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = icmp eq i64 %4, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, ptr %12, i64 %6
  %25 = icmp eq i64 %4, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8, ptr %2, align 1, !tbaa !19
  store i8 %27, ptr %24, align 1, !tbaa !19
  br label %30

28:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %2, i64 %4, i1 false)
  br label %30

29:                                               ; preds = %17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %6, i64 noundef 0, ptr noundef %2, i64 noundef %4)
  br label %30

30:                                               ; preds = %21, %26, %28, %29
  store i64 %11, ptr %5, align 8, !tbaa !15
  %31 = load ptr, ptr %1, align 8, !tbaa !11
  %32 = getelementptr inbounds i8, ptr %31, i64 %11
  store i8 0, ptr %32, align 1, !tbaa !19
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %33, ptr %0, align 8, !tbaa !18
  %34 = load ptr, ptr %1, align 8, !tbaa !11
  %35 = icmp eq ptr %34, %13
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, ptr %5, align 8, !tbaa !15
  %38 = icmp ult i64 %37, 16
  tail call void @llvm.assume(i1 %38)
  %39 = add nuw nsw i64 %37, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %33, ptr noundef nonnull align 8 dereferenceable(1) %13, i64 %39, i1 false)
  br label %43

40:                                               ; preds = %30
  store ptr %34, ptr %0, align 8, !tbaa !11
  %41 = load i64, ptr %13, align 8, !tbaa !19
  store i64 %41, ptr %33, align 8, !tbaa !19
  %42 = load i64, ptr %5, align 8, !tbaa !15
  br label %43

43:                                               ; preds = %36, %40
  %44 = phi i64 [ %37, %36 ], [ %42, %40 ]
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !15
  store ptr %13, ptr %1, align 8, !tbaa !11
  store i64 0, ptr %5, align 8, !tbaa !15
  store i8 0, ptr %13, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture readonly %1, i64 %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !18
  %5 = icmp ugt i64 %2, 15
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = icmp slt i64 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

9:                                                ; preds = %6
  %10 = add nuw i64 %2, 1
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13, !prof !37

12:                                               ; preds = %9
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

13:                                               ; preds = %9
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #29
  store ptr %14, ptr %0, align 8, !tbaa !11
  store i64 %2, ptr %4, align 8, !tbaa !19
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %4, %3 ]
  switch i64 %2, label %19 [
    i64 1, label %17
    i64 0, label %20
  ]

17:                                               ; preds = %15
  %18 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %18, ptr %16, align 1, !tbaa !19
  br label %20

19:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr align 1 %1, i64 %2, i1 false)
  br label %20

20:                                               ; preds = %15, %17, %19
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %2, ptr %21, align 8, !tbaa !15
  %22 = getelementptr inbounds i8, ptr %16, i64 %2
  store i8 0, ptr %22, align 1, !tbaa !19
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %9 = sub i64 9223372036854775807, %8
  %10 = icmp ult i64 %9, %6
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
  unreachable

12:                                               ; preds = %3
  %13 = add i64 %8, %6
  %14 = load ptr, ptr %1, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %18)
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i64, ptr %15, align 8
  %21 = select i1 %16, i64 15, i64 %20
  %22 = icmp ugt i64 %13, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = icmp eq i64 %6, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %14, i64 %8
  %27 = icmp eq i64 %6, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %29, ptr %26, align 1, !tbaa !19
  br label %32

30:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %4, i64 %6, i1 false)
  br label %32

31:                                               ; preds = %19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %8, i64 noundef 0, ptr noundef %4, i64 noundef %6)
  br label %32

32:                                               ; preds = %23, %28, %30, %31
  store i64 %13, ptr %7, align 8, !tbaa !15
  %33 = load ptr, ptr %1, align 8, !tbaa !11
  %34 = getelementptr inbounds i8, ptr %33, i64 %13
  store i8 0, ptr %34, align 1, !tbaa !19
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %35, ptr %0, align 8, !tbaa !18
  %36 = load ptr, ptr %1, align 8, !tbaa !11
  %37 = icmp eq ptr %36, %15
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, ptr %7, align 8, !tbaa !15
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  %41 = add nuw nsw i64 %39, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %35, ptr noundef nonnull align 8 dereferenceable(1) %15, i64 %41, i1 false)
  br label %45

42:                                               ; preds = %32
  store ptr %36, ptr %0, align 8, !tbaa !11
  %43 = load i64, ptr %15, align 8, !tbaa !19
  store i64 %43, ptr %35, align 8, !tbaa !19
  %44 = load i64, ptr %7, align 8, !tbaa !15
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi i64 [ %39, %38 ], [ %44, %42 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !15
  store ptr %15, ptr %1, align 8, !tbaa !11
  store i64 0, ptr %7, align 8, !tbaa !15
  store i8 0, ptr %15, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL20__apo_csharp_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = load ptr, ptr %1, align 8, !tbaa !11, !noalias !206
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15, !noalias !206
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27, !noalias !206
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.104, i64 noundef 5, ptr noundef %6, i64 noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27, !noalias !206
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !15, !noalias !209
  %11 = and i64 %10, -4
  %12 = icmp eq i64 %11, 9223372036854775804
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %14 unwind label %93

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %2
  %16 = add i64 %10, 4
  %17 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !209
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = icmp ult i64 %10, 16
  call void @llvm.assume(i1 %21)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, ptr %18, align 8, !noalias !209
  %24 = select i1 %19, i64 15, i64 %23
  %25 = icmp ugt i64 %16, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %17, i64 %10
  store i32 545029152, ptr %27, align 1, !noalias !209
  br label %29

28:                                               ; preds = %22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %10, i64 noundef 0, ptr noundef nonnull @.str.105, i64 noundef 4)
          to label %29 unwind label %93

29:                                               ; preds = %28, %26
  store i64 %16, ptr %9, align 8, !tbaa !15, !noalias !209
  %30 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !209
  %31 = getelementptr inbounds i8, ptr %30, i64 %16
  store i8 0, ptr %31, align 1, !tbaa !19, !noalias !209
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %32, ptr %4, align 8, !tbaa !18, !alias.scope !209
  %33 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !209
  %34 = icmp eq ptr %33, %18
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, ptr %9, align 8, !tbaa !15, !noalias !209
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %36, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %32, ptr noundef nonnull align 8 dereferenceable(1) %18, i64 %38, i1 false)
  br label %42

39:                                               ; preds = %29
  store ptr %33, ptr %4, align 8, !tbaa !11, !alias.scope !209
  %40 = load i64, ptr %18, align 8, !tbaa !19, !noalias !209
  store i64 %40, ptr %32, align 8, !tbaa !19, !alias.scope !209
  %41 = load i64, ptr %9, align 8, !tbaa !15, !noalias !209
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %32, %35 ], [ %33, %39 ]
  %44 = phi i64 [ %36, %35 ], [ %41, %39 ]
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !15, !alias.scope !209
  store ptr %18, ptr %5, align 8, !tbaa !11, !noalias !209
  store i64 0, ptr %9, align 8, !tbaa !15, !noalias !209
  store i8 0, ptr %18, align 8, !tbaa !19, !noalias !209
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %46 = load ptr, ptr %1, align 8, !tbaa !11, !noalias !212
  %47 = load i64, ptr %7, align 8, !tbaa !15, !noalias !212
  %48 = sub i64 9223372036854775807, %44
  %49 = icmp ult i64 %48, %47
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %51 unwind label %95

51:                                               ; preds = %50
  unreachable

52:                                               ; preds = %42
  %53 = add i64 %47, %44
  %54 = icmp eq ptr %43, %32
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = icmp ult i64 %44, 16
  call void @llvm.assume(i1 %56)
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, ptr %32, align 8, !noalias !212
  %59 = select i1 %54, i64 15, i64 %58
  %60 = icmp ugt i64 %53, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = icmp eq i64 %47, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, ptr %43, i64 %44
  %65 = icmp eq i64 %47, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8, ptr %46, align 1, !tbaa !19, !noalias !212
  store i8 %67, ptr %64, align 1, !tbaa !19, !noalias !212
  br label %70

68:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %46, i64 %47, i1 false), !noalias !212
  br label %70

69:                                               ; preds = %57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %44, i64 noundef 0, ptr noundef %46, i64 noundef %47)
          to label %70 unwind label %95

70:                                               ; preds = %69, %68, %66, %61
  store i64 %53, ptr %45, align 8, !tbaa !15, !noalias !212
  %71 = load ptr, ptr %4, align 8, !tbaa !11, !noalias !212
  %72 = getelementptr inbounds i8, ptr %71, i64 %53
  store i8 0, ptr %72, align 1, !tbaa !19, !noalias !212
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %73, ptr %0, align 8, !tbaa !18, !alias.scope !212
  %74 = load ptr, ptr %4, align 8, !tbaa !11, !noalias !212
  %75 = icmp eq ptr %74, %32
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i64, ptr %45, align 8, !tbaa !15, !noalias !212
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  %79 = add nuw nsw i64 %77, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %73, ptr noundef nonnull align 8 dereferenceable(1) %32, i64 %79, i1 false)
  br label %83

80:                                               ; preds = %70
  store ptr %74, ptr %0, align 8, !tbaa !11, !alias.scope !212
  %81 = load i64, ptr %32, align 8, !tbaa !19, !noalias !212
  store i64 %81, ptr %73, align 8, !tbaa !19, !alias.scope !212
  %82 = load i64, ptr %45, align 8, !tbaa !15, !noalias !212
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i64 [ %77, %76 ], [ %82, %80 ]
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %84, ptr %85, align 8, !tbaa !15, !alias.scope !212
  store ptr %32, ptr %4, align 8, !tbaa !11, !noalias !212
  store i64 0, ptr %45, align 8, !tbaa !15, !noalias !212
  store i8 0, ptr %32, align 8, !tbaa !19, !noalias !212
  %86 = load ptr, ptr %5, align 8, !tbaa !11
  %87 = icmp eq ptr %86, %18
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, ptr %9, align 8, !tbaa !15
  %90 = icmp ult i64 %89, 16
  call void @llvm.assume(i1 %90)
  br label %92

91:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %86) #26
  br label %92

92:                                               ; preds = %88, %91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void

93:                                               ; preds = %28, %13
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %103

95:                                               ; preds = %69, %50
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = load ptr, ptr %4, align 8, !tbaa !11
  %98 = icmp eq ptr %97, %32
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, ptr %45, align 8, !tbaa !15
  %101 = icmp ult i64 %100, 16
  call void @llvm.assume(i1 %101)
  br label %103

102:                                              ; preds = %95
  call void @_ZdlPv(ptr noundef %97) #26
  br label %103

103:                                              ; preds = %102, %99, %93
  %104 = phi { ptr, i32 } [ %94, %93 ], [ %96, %99 ], [ %96, %102 ]
  %105 = load ptr, ptr %5, align 8, !tbaa !11
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, ptr %9, align 8, !tbaa !15
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %112

111:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %105) #26
  br label %112

112:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  resume { ptr, i32 } %104
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL20__apo_python_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = load ptr, ptr %1, align 8, !tbaa !11, !noalias !215
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15, !noalias !215
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27, !noalias !215
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.108, i64 noundef 8, ptr noundef %6, i64 noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27, !noalias !215
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !15, !noalias !218
  %11 = icmp sgt i64 %10, 9223372036854775796
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %13 unwind label %92

13:                                               ; preds = %12
  unreachable

14:                                               ; preds = %2
  %15 = add nsw i64 %10, 11
  %16 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !218
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = icmp ult i64 %10, 16
  call void @llvm.assume(i1 %20)
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i64, ptr %17, align 8, !noalias !218
  %23 = select i1 %18, i64 15, i64 %22
  %24 = icmp ugt i64 %15, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %16, i64 %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %26, ptr noundef nonnull align 1 dereferenceable(11) @.str.107, i64 11, i1 false), !noalias !218
  br label %28

27:                                               ; preds = %21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %10, i64 noundef 0, ptr noundef nonnull @.str.107, i64 noundef 11)
          to label %28 unwind label %92

28:                                               ; preds = %27, %25
  store i64 %15, ptr %9, align 8, !tbaa !15, !noalias !218
  %29 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !218
  %30 = getelementptr inbounds i8, ptr %29, i64 %15
  store i8 0, ptr %30, align 1, !tbaa !19, !noalias !218
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %31, ptr %4, align 8, !tbaa !18, !alias.scope !218
  %32 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !218
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, ptr %9, align 8, !tbaa !15, !noalias !218
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %37, i1 false)
  br label %41

38:                                               ; preds = %28
  store ptr %32, ptr %4, align 8, !tbaa !11, !alias.scope !218
  %39 = load i64, ptr %17, align 8, !tbaa !19, !noalias !218
  store i64 %39, ptr %31, align 8, !tbaa !19, !alias.scope !218
  %40 = load i64, ptr %9, align 8, !tbaa !15, !noalias !218
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %31, %34 ], [ %32, %38 ]
  %43 = phi i64 [ %35, %34 ], [ %40, %38 ]
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !15, !alias.scope !218
  store ptr %17, ptr %5, align 8, !tbaa !11, !noalias !218
  store i64 0, ptr %9, align 8, !tbaa !15, !noalias !218
  store i8 0, ptr %17, align 8, !tbaa !19, !noalias !218
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %45 = load ptr, ptr %1, align 8, !tbaa !11, !noalias !221
  %46 = load i64, ptr %7, align 8, !tbaa !15, !noalias !221
  %47 = sub i64 9223372036854775807, %43
  %48 = icmp ult i64 %47, %46
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %50 unwind label %94

50:                                               ; preds = %49
  unreachable

51:                                               ; preds = %41
  %52 = add i64 %46, %43
  %53 = icmp eq ptr %42, %31
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %55)
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i64, ptr %31, align 8, !noalias !221
  %58 = select i1 %53, i64 15, i64 %57
  %59 = icmp ugt i64 %52, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = icmp eq i64 %46, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds i8, ptr %42, i64 %43
  %64 = icmp eq i64 %46, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i8, ptr %45, align 1, !tbaa !19, !noalias !221
  store i8 %66, ptr %63, align 1, !tbaa !19, !noalias !221
  br label %69

67:                                               ; preds = %62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %45, i64 %46, i1 false), !noalias !221
  br label %69

68:                                               ; preds = %56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %43, i64 noundef 0, ptr noundef %45, i64 noundef %46)
          to label %69 unwind label %94

69:                                               ; preds = %68, %67, %65, %60
  store i64 %52, ptr %44, align 8, !tbaa !15, !noalias !221
  %70 = load ptr, ptr %4, align 8, !tbaa !11, !noalias !221
  %71 = getelementptr inbounds i8, ptr %70, i64 %52
  store i8 0, ptr %71, align 1, !tbaa !19, !noalias !221
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %72, ptr %0, align 8, !tbaa !18, !alias.scope !221
  %73 = load ptr, ptr %4, align 8, !tbaa !11, !noalias !221
  %74 = icmp eq ptr %73, %31
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, ptr %44, align 8, !tbaa !15, !noalias !221
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  %78 = add nuw nsw i64 %76, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %78, i1 false)
  br label %82

79:                                               ; preds = %69
  store ptr %73, ptr %0, align 8, !tbaa !11, !alias.scope !221
  %80 = load i64, ptr %31, align 8, !tbaa !19, !noalias !221
  store i64 %80, ptr %72, align 8, !tbaa !19, !alias.scope !221
  %81 = load i64, ptr %44, align 8, !tbaa !15, !noalias !221
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i64 [ %76, %75 ], [ %81, %79 ]
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %83, ptr %84, align 8, !tbaa !15, !alias.scope !221
  store ptr %31, ptr %4, align 8, !tbaa !11, !noalias !221
  store i64 0, ptr %44, align 8, !tbaa !15, !noalias !221
  store i8 0, ptr %31, align 8, !tbaa !19, !noalias !221
  %85 = load ptr, ptr %5, align 8, !tbaa !11
  %86 = icmp eq ptr %85, %17
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, ptr %9, align 8, !tbaa !15
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %85) #26
  br label %91

91:                                               ; preds = %87, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void

92:                                               ; preds = %27, %12
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %102

94:                                               ; preds = %68, %49
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = load ptr, ptr %4, align 8, !tbaa !11
  %97 = icmp eq ptr %96, %31
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, ptr %44, align 8, !tbaa !15
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %102

101:                                              ; preds = %94
  call void @_ZdlPv(ptr noundef %96) #26
  br label %102

102:                                              ; preds = %101, %98, %92
  %103 = phi { ptr, i32 } [ %93, %92 ], [ %95, %98 ], [ %95, %101 ]
  %104 = load ptr, ptr %5, align 8, !tbaa !11
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, ptr %9, align 8, !tbaa !15
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %111

110:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %104) #26
  br label %111

111:                                              ; preds = %107, %110
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  resume { ptr, i32 } %103
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  %10 = load ptr, ptr %1, align 8, !tbaa !11
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %17, label %33

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13, %6
  %18 = phi ptr [ %14, %13 ], [ %11, %6 ]
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !15
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  %22 = icmp eq ptr %1, %0
  br i1 %22, label %47, label %23, !prof !37

23:                                               ; preds = %17
  switch i64 %20, label %26 [
    i64 0, label %27
    i64 1, label %24
  ]

24:                                               ; preds = %23
  %25 = load i8, ptr %18, align 1, !tbaa !19
  store i8 %25, ptr %3, align 1, !tbaa !19
  br label %27

26:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %18, i64 %20, i1 false)
  br label %27

27:                                               ; preds = %23, %26, %24
  %28 = load i64, ptr %19, align 8, !tbaa !15
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !15
  %30 = load ptr, ptr %0, align 8, !tbaa !11
  %31 = getelementptr inbounds i8, ptr %30, i64 %28
  store i8 0, ptr %31, align 1, !tbaa !19
  %32 = load ptr, ptr %1, align 8, !tbaa !11
  br label %47

33:                                               ; preds = %6
  store ptr %10, ptr %0, align 8, !tbaa !11
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !15
  store i64 %35, ptr %7, align 8, !tbaa !15
  %36 = load i64, ptr %11, align 8, !tbaa !19
  store i64 %36, ptr %3, align 8, !tbaa !19
  br label %45

37:                                               ; preds = %13
  %38 = load i64, ptr %4, align 8, !tbaa !19
  store ptr %14, ptr %0, align 8, !tbaa !11
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !15
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %40, ptr %41, align 8, !tbaa !15
  %42 = load i64, ptr %15, align 8, !tbaa !19
  store i64 %42, ptr %4, align 8, !tbaa !19
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store ptr %3, ptr %1, align 8, !tbaa !11
  store i64 %38, ptr %15, align 8, !tbaa !19
  br label %47

45:                                               ; preds = %33, %37
  %46 = phi ptr [ %11, %33 ], [ %15, %37 ]
  store ptr %46, ptr %1, align 8, !tbaa !11
  br label %47

47:                                               ; preds = %27, %44, %45, %17
  %48 = phi ptr [ %32, %27 ], [ %3, %44 ], [ %46, %45 ], [ %18, %17 ]
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 0, ptr %49, align 8, !tbaa !15
  store i8 0, ptr %48, align 1, !tbaa !19
  ret ptr %0
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL19__apo_js_ir_preludeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %7, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !15
  store i8 0, ptr %7, align 8, !tbaa !19
  br i1 %2, label %9, label %15

9:                                                ; preds = %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.72, i64 noundef 45)
          to label %10 unwind label %13

10:                                               ; preds = %9
  store i64 45, ptr %8, align 8, !tbaa !15
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %11, i64 45
  store i8 0, ptr %12, align 1, !tbaa !19
  br label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %122

15:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %16 = load ptr, ptr %1, align 8, !tbaa !11, !noalias !224
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !15, !noalias !224
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #27, !noalias !224
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.73, i64 noundef 1033, ptr noundef %16, i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %19 unwind label %99

19:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #27, !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !15, !noalias !227
  %22 = icmp sgt i64 %21, 9223372036854774142
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %24 unwind label %101

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %19
  %26 = add nsw i64 %21, 1665
  %27 = load ptr, ptr %6, align 8, !tbaa !11, !noalias !227
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %31)
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i64, ptr %28, align 8, !noalias !227
  %34 = select i1 %29, i64 15, i64 %33
  %35 = icmp ugt i64 %26, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %27, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1665) %37, ptr noundef nonnull align 1 dereferenceable(1665) @.str.74, i64 1665, i1 false), !noalias !227
  br label %41

38:                                               ; preds = %32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %21, i64 noundef 0, ptr noundef nonnull @.str.74, i64 noundef 1665)
          to label %39 unwind label %101

39:                                               ; preds = %38
  %40 = load ptr, ptr %6, align 8, !tbaa !11, !noalias !227
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %40, %39 ], [ %27, %36 ]
  store i64 %26, ptr %20, align 8, !tbaa !15, !noalias !227
  %43 = getelementptr inbounds i8, ptr %42, i64 %26
  store i8 0, ptr %43, align 1, !tbaa !19, !noalias !227
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %44, ptr %5, align 8, !tbaa !18, !alias.scope !227
  %45 = load ptr, ptr %6, align 8, !tbaa !11, !noalias !227
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, ptr %20, align 8, !tbaa !15, !noalias !227
  %49 = icmp ult i64 %48, 16
  call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, ptr noundef nonnull align 8 dereferenceable(1) %28, i64 %50, i1 false)
  br label %54

51:                                               ; preds = %41
  store ptr %45, ptr %5, align 8, !tbaa !11, !alias.scope !227
  %52 = load i64, ptr %28, align 8, !tbaa !19, !noalias !227
  store i64 %52, ptr %44, align 8, !tbaa !19, !alias.scope !227
  %53 = load i64, ptr %20, align 8, !tbaa !15, !noalias !227
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %44, %47 ], [ %45, %51 ]
  %56 = phi i64 [ %48, %47 ], [ %53, %51 ]
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !15, !alias.scope !227
  store ptr %28, ptr %6, align 8, !tbaa !11, !noalias !227
  store i64 0, ptr %20, align 8, !tbaa !15, !noalias !227
  store i8 0, ptr %28, align 8, !tbaa !19, !noalias !227
  %58 = load i64, ptr %8, align 8, !tbaa !15
  %59 = sub i64 9223372036854775807, %58
  %60 = icmp ult i64 %59, %56
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %62 unwind label %103

62:                                               ; preds = %61
  unreachable

63:                                               ; preds = %54
  %64 = add i64 %58, %56
  %65 = load ptr, ptr %0, align 8, !tbaa !11
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %68)
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i64, ptr %7, align 8
  %71 = select i1 %66, i64 15, i64 %70
  %72 = icmp ugt i64 %64, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = icmp eq i64 %56, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, ptr %65, i64 %58
  %77 = icmp eq i64 %56, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i8, ptr %55, align 1, !tbaa !19
  store i8 %79, ptr %76, align 1, !tbaa !19
  br label %82

80:                                               ; preds = %75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %76, ptr align 1 %55, i64 %56, i1 false)
  br label %82

81:                                               ; preds = %69
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %58, i64 noundef 0, ptr noundef %55, i64 noundef %56)
          to label %82 unwind label %103

82:                                               ; preds = %80, %78, %73, %81
  store i64 %64, ptr %8, align 8, !tbaa !15
  %83 = load ptr, ptr %0, align 8, !tbaa !11
  %84 = getelementptr inbounds i8, ptr %83, i64 %64
  store i8 0, ptr %84, align 1, !tbaa !19
  %85 = load ptr, ptr %5, align 8, !tbaa !11
  %86 = icmp eq ptr %85, %44
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, ptr %57, align 8, !tbaa !15
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %85) #26
  br label %91

91:                                               ; preds = %87, %90
  %92 = load ptr, ptr %6, align 8, !tbaa !11
  %93 = icmp eq ptr %92, %28
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, ptr %20, align 8, !tbaa !15
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %98

97:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %92) #26
  br label %98

98:                                               ; preds = %94, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void

99:                                               ; preds = %15
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %120

101:                                              ; preds = %38, %23
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %111

103:                                              ; preds = %81, %61
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = load ptr, ptr %5, align 8, !tbaa !11
  %106 = icmp eq ptr %105, %44
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, ptr %57, align 8, !tbaa !15
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %111

110:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %105) #26
  br label %111

111:                                              ; preds = %110, %107, %101
  %112 = phi { ptr, i32 } [ %102, %101 ], [ %104, %107 ], [ %104, %110 ]
  %113 = load ptr, ptr %6, align 8, !tbaa !11
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, ptr %20, align 8, !tbaa !15
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br label %120

119:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %113) #26
  br label %120

120:                                              ; preds = %119, %116, %99
  %121 = phi { ptr, i32 } [ %100, %99 ], [ %112, %116 ], [ %112, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br label %122

122:                                              ; preds = %120, %13
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %14, %13 ]
  %124 = load ptr, ptr %0, align 8, !tbaa !11
  %125 = icmp eq ptr %124, %7
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i64, ptr %8, align 8, !tbaa !15
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %122
  call void @_ZdlPv(ptr noundef %124) #26
  br label %130

130:                                              ; preds = %126, %129
  resume { ptr, i32 } %123
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL12__apo_lstripNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture readonly %1, i64 %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !19
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %2
  br i1 %14, label %18, label %5, !llvm.loop !230

15:                                               ; preds = %5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %16 = icmp ugt i64 %6, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i64 noundef %6, i64 noundef %2) #28, !noalias !231
  unreachable

18:                                               ; preds = %12, %3, %15
  %19 = phi i64 [ %6, %15 ], [ %2, %3 ], [ %2, %12 ]
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %20, ptr %0, align 8, !tbaa !18, !alias.scope !231
  %21 = getelementptr inbounds i8, ptr %1, i64 %19
  %22 = sub i64 %2, %19
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = icmp slt i64 %22, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

27:                                               ; preds = %24
  %28 = add nuw i64 %22, 1
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31, !prof !37

30:                                               ; preds = %27
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

31:                                               ; preds = %27
  %32 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #29
  store ptr %32, ptr %0, align 8, !tbaa !11, !alias.scope !231
  store i64 %22, ptr %20, align 8, !tbaa !19, !alias.scope !231
  br label %33

33:                                               ; preds = %31, %18
  %34 = phi ptr [ %32, %31 ], [ %20, %18 ]
  switch i64 %22, label %37 [
    i64 1, label %35
    i64 0, label %38
  ]

35:                                               ; preds = %33
  %36 = load i8, ptr %21, align 1, !tbaa !19
  store i8 %36, ptr %34, align 1, !tbaa !19
  br label %38

37:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr align 1 %21, i64 %22, i1 false)
  br label %38

38:                                               ; preds = %33, %35, %37
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %22, ptr %39, align 8, !tbaa !15, !alias.scope !231
  %40 = getelementptr inbounds i8, ptr %34, i64 %22
  store i8 0, ptr %40, align 1, !tbaa !19
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.2", align 1
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #27
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %5, i64 noundef %7, ptr noundef %2, i64 noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %7, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !15
  store i8 0, ptr %7, align 8, !tbaa !19
  %9 = add i64 %4, %2
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = icmp slt i64 %9, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.umax.i64(i64 %9, i64 30)
  %15 = add nuw i64 %14, 1
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19, !prof !37

17:                                               ; preds = %13
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %18 unwind label %65

18:                                               ; preds = %17
  unreachable

19:                                               ; preds = %13
  %20 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %15) #29
          to label %21 unwind label %65

21:                                               ; preds = %19
  store i8 0, ptr %20, align 1, !tbaa !19
  store ptr %20, ptr %0, align 8, !tbaa !11
  store i64 %14, ptr %7, align 8, !tbaa !19
  br label %22

22:                                               ; preds = %21, %6
  %23 = phi ptr [ %20, %21 ], [ %7, %6 ]
  %24 = icmp slt i64 %2, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = icmp eq ptr %23, %7
  %27 = load i64, ptr %7, align 8
  %28 = select i1 %26, i64 15, i64 %27
  %29 = icmp ult i64 %28, %2
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  switch i64 %2, label %33 [
    i64 0, label %37
    i64 1, label %31
  ]

31:                                               ; preds = %30
  %32 = load i8, ptr %1, align 1, !tbaa !19
  store i8 %32, ptr %23, align 1, !tbaa !19
  br label %37

33:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr align 1 %1, i64 %2, i1 false)
  br label %37

34:                                               ; preds = %25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %35 unwind label %65

35:                                               ; preds = %34
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %30, %35, %33, %31
  %38 = phi ptr [ %36, %35 ], [ %23, %33 ], [ %23, %31 ], [ %23, %30 ]
  store i64 %2, ptr %8, align 8, !tbaa !15
  %39 = getelementptr inbounds i8, ptr %38, i64 %2
  store i8 0, ptr %39, align 1, !tbaa !19
  %40 = load i64, ptr %8, align 8, !tbaa !15
  %41 = sub i64 9223372036854775807, %40
  %42 = icmp ult i64 %41, %4
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %22, %11
  %44 = phi ptr [ @.str.7, %11 ], [ @.str.66, %22 ], [ @.str.66, %37 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %44) #28
          to label %45 unwind label %65

45:                                               ; preds = %43
  unreachable

46:                                               ; preds = %37
  %47 = add i64 %40, %4
  %48 = load ptr, ptr %0, align 8, !tbaa !11
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = icmp ult i64 %40, 16
  tail call void @llvm.assume(i1 %51)
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, ptr %7, align 8
  %54 = select i1 %49, i64 15, i64 %53
  %55 = icmp ugt i64 %47, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = icmp eq i64 %4, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, ptr %48, i64 %40
  %60 = icmp eq i64 %4, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %62, ptr %59, align 1, !tbaa !19
  br label %74

63:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %3, i64 %4, i1 false)
  br label %74

64:                                               ; preds = %52
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %40, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %74 unwind label %65

65:                                               ; preds = %43, %64, %34, %19, %17
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %0, align 8, !tbaa !11
  %68 = icmp eq ptr %67, %7
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, ptr %8, align 8, !tbaa !15
  %71 = icmp ult i64 %70, 16
  tail call void @llvm.assume(i1 %71)
  br label %73

72:                                               ; preds = %65
  tail call void @_ZdlPv(ptr noundef %67) #26
  br label %73

73:                                               ; preds = %69, %72
  resume { ptr, i32 } %66

74:                                               ; preds = %63, %61, %56, %64
  store i64 %47, ptr %8, align 8, !tbaa !15
  %75 = load ptr, ptr %0, align 8, !tbaa !11
  %76 = getelementptr inbounds i8, ptr %75, i64 %47
  store i8 0, ptr %76, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = add i64 %2, %1
  %9 = sub i64 %7, %8
  %10 = sub i64 %4, %2
  %11 = add i64 %10, %7
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %16)
  br label %17

17:                                               ; preds = %5, %15
  %18 = load i64, ptr %13, align 8
  %19 = select i1 %14, i64 15, i64 %18
  %20 = icmp slt i64 %11, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

22:                                               ; preds = %17
  %23 = icmp ugt i64 %11, %19
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = shl nuw i64 %19, 1
  %26 = icmp ult i64 %11, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call i64 @llvm.umin.i64(i64 %25, i64 9223372036854775807)
  br label %29

29:                                               ; preds = %27, %24, %22
  %30 = phi i64 [ %28, %27 ], [ %11, %24 ], [ %11, %22 ]
  %31 = add nuw i64 %30, 1
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34, !prof !37

33:                                               ; preds = %29
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

34:                                               ; preds = %29
  %35 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %31) #29
  switch i64 %1, label %38 [
    i64 0, label %39
    i64 1, label %36
  ]

36:                                               ; preds = %34
  %37 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %37, ptr %35, align 1, !tbaa !19
  br label %39

38:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %12, i64 %1, i1 false)
  br label %39

39:                                               ; preds = %34, %38, %36
  %40 = icmp ne ptr %3, null
  %41 = icmp ne i64 %4, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %35, i64 %1
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
  %50 = icmp eq i64 %7, %8
  br i1 %50, label %59, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %35, i64 %1
  %53 = getelementptr inbounds i8, ptr %52, i64 %4
  %54 = getelementptr inbounds i8, ptr %12, i64 %1
  %55 = getelementptr inbounds i8, ptr %54, i64 %2
  switch i64 %9, label %58 [
    i64 1, label %56
    i64 0, label %59
  ]

56:                                               ; preds = %51
  %57 = load i8, ptr %55, align 1, !tbaa !19
  store i8 %57, ptr %53, align 1, !tbaa !19
  br label %59

58:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %55, i64 %9, i1 false)
  br label %59

59:                                               ; preds = %58, %56, %51, %49
  br i1 %14, label %60, label %62

60:                                               ; preds = %59
  %61 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %61)
  br label %63

62:                                               ; preds = %59
  tail call void @_ZdlPv(ptr noundef %12) #26
  br label %63

63:                                               ; preds = %60, %62
  store ptr %35, ptr %0, align 8, !tbaa !11
  store i64 %30, ptr %13, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21__apo_split_top_levelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias writable align 8 %0, ptr readonly %1, i64 %2, i8 noundef signext %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 0, ptr %7, align 8, !tbaa !15
  store i8 0, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds i8, ptr %1, i64 %2
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  br label %47

13:                                               ; preds = %286
  %14 = load ptr, ptr %11, align 8, !tbaa !38
  %15 = load ptr, ptr %12, align 8, !tbaa !234
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %17 = icmp eq ptr %14, %15
  br i1 %17, label %45, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %19, ptr %14, align 8, !tbaa !18
  %20 = load ptr, ptr %5, align 8, !tbaa !11
  %21 = load i64, ptr %7, align 8, !tbaa !15
  %22 = icmp ugt i64 %21, 15
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = icmp slt i64 %21, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %26 unwind label %302

26:                                               ; preds = %25
  unreachable

27:                                               ; preds = %23
  %28 = add nuw i64 %21, 1
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32, !prof !37

30:                                               ; preds = %27
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %31 unwind label %302

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %27
  %33 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %28) #29
          to label %34 unwind label %302

34:                                               ; preds = %32
  store ptr %33, ptr %14, align 8, !tbaa !11
  store i64 %21, ptr %19, align 8, !tbaa !19
  br label %35

35:                                               ; preds = %34, %18
  %36 = phi ptr [ %33, %34 ], [ %19, %18 ]
  switch i64 %21, label %39 [
    i64 1, label %37
    i64 0, label %40
  ]

37:                                               ; preds = %35
  %38 = load i8, ptr %20, align 1, !tbaa !19
  store i8 %38, ptr %36, align 1, !tbaa !19
  br label %40

39:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %36, ptr align 1 %20, i64 %21, i1 false)
  br label %40

40:                                               ; preds = %39, %37, %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 %21, ptr %41, align 8, !tbaa !15
  %42 = getelementptr inbounds i8, ptr %36, i64 %21
  store i8 0, ptr %42, align 1, !tbaa !19
  %43 = load ptr, ptr %16, align 8, !tbaa !10
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 1
  store ptr %44, ptr %16, align 8, !tbaa !10
  br label %294

45:                                               ; preds = %4, %13
  %46 = phi ptr [ %15, %13 ], [ null, %4 ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %46, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %294 unwind label %302

47:                                               ; preds = %10, %286
  %48 = phi i8 [ 0, %10 ], [ %291, %286 ]
  %49 = phi i32 [ 0, %10 ], [ %290, %286 ]
  %50 = phi i32 [ 0, %10 ], [ %289, %286 ]
  %51 = phi i32 [ 0, %10 ], [ %288, %286 ]
  %52 = phi i8 [ 0, %10 ], [ %287, %286 ]
  %53 = phi ptr [ %1, %10 ], [ %292, %286 ]
  %54 = load i8, ptr %53, align 1, !tbaa !19
  %55 = and i8 %48, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %47
  %58 = load i64, ptr %7, align 8, !tbaa !15
  %59 = add i64 %58, 1
  %60 = load ptr, ptr %5, align 8, !tbaa !11
  %61 = icmp eq ptr %60, %6
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %63)
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, ptr %6, align 8
  %66 = select i1 %61, i64 15, i64 %65
  %67 = icmp ugt i64 %59, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %58, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %69 unwind label %78

69:                                               ; preds = %68
  %70 = load ptr, ptr %5, align 8, !tbaa !11
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %60, %64 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 %58
  store i8 %54, ptr %73, align 1, !tbaa !19
  store i64 %59, ptr %7, align 8, !tbaa !15
  %74 = load ptr, ptr %5, align 8, !tbaa !11
  %75 = getelementptr inbounds i8, ptr %74, i64 %59
  store i8 0, ptr %75, align 1, !tbaa !19
  %76 = and i8 %52, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %286

78:                                               ; preds = %68, %97, %116, %136, %156, %176, %196, %216, %251, %264, %278
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %304

80:                                               ; preds = %244, %249
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %304

82:                                               ; preds = %71
  switch i8 %54, label %84 [
    i8 92, label %286
    i8 34, label %83
  ]

83:                                               ; preds = %82
  br label %286

84:                                               ; preds = %82
  br label %286

85:                                               ; preds = %47
  switch i8 %54, label %225 [
    i8 34, label %86
    i8 40, label %105
    i8 41, label %125
    i8 123, label %145
    i8 125, label %165
    i8 91, label %185
    i8 93, label %205
  ]

86:                                               ; preds = %85
  %87 = load i64, ptr %7, align 8, !tbaa !15
  %88 = add i64 %87, 1
  %89 = load ptr, ptr %5, align 8, !tbaa !11
  %90 = icmp eq ptr %89, %6
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %92)
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i64, ptr %6, align 8
  %95 = select i1 %90, i64 15, i64 %94
  %96 = icmp ugt i64 %88, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %87, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %98 unwind label %78

98:                                               ; preds = %97
  %99 = load ptr, ptr %5, align 8, !tbaa !11
  br label %100

100:                                              ; preds = %93, %98
  %101 = phi ptr [ %99, %98 ], [ %89, %93 ]
  %102 = getelementptr inbounds i8, ptr %101, i64 %87
  store i8 34, ptr %102, align 1, !tbaa !19
  store i64 %88, ptr %7, align 8, !tbaa !15
  %103 = load ptr, ptr %5, align 8, !tbaa !11
  %104 = getelementptr inbounds i8, ptr %103, i64 %88
  store i8 0, ptr %104, align 1, !tbaa !19
  br label %286

105:                                              ; preds = %85
  %106 = load i64, ptr %7, align 8, !tbaa !15
  %107 = add i64 %106, 1
  %108 = load ptr, ptr %5, align 8, !tbaa !11
  %109 = icmp eq ptr %108, %6
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %111)
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i64, ptr %6, align 8
  %114 = select i1 %109, i64 15, i64 %113
  %115 = icmp ugt i64 %107, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %106, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %117 unwind label %78

117:                                              ; preds = %116
  %118 = load ptr, ptr %5, align 8, !tbaa !11
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi ptr [ %118, %117 ], [ %108, %112 ]
  %121 = getelementptr inbounds i8, ptr %120, i64 %106
  store i8 40, ptr %121, align 1, !tbaa !19
  store i64 %107, ptr %7, align 8, !tbaa !15
  %122 = load ptr, ptr %5, align 8, !tbaa !11
  %123 = getelementptr inbounds i8, ptr %122, i64 %107
  store i8 0, ptr %123, align 1, !tbaa !19
  %124 = add nsw i32 %51, 1
  br label %286

125:                                              ; preds = %85
  %126 = load i64, ptr %7, align 8, !tbaa !15
  %127 = add i64 %126, 1
  %128 = load ptr, ptr %5, align 8, !tbaa !11
  %129 = icmp eq ptr %128, %6
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = icmp ult i64 %126, 16
  call void @llvm.assume(i1 %131)
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i64, ptr %6, align 8
  %134 = select i1 %129, i64 15, i64 %133
  %135 = icmp ugt i64 %127, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %126, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %137 unwind label %78

137:                                              ; preds = %136
  %138 = load ptr, ptr %5, align 8, !tbaa !11
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi ptr [ %138, %137 ], [ %128, %132 ]
  %141 = getelementptr inbounds i8, ptr %140, i64 %126
  store i8 41, ptr %141, align 1, !tbaa !19
  store i64 %127, ptr %7, align 8, !tbaa !15
  %142 = load ptr, ptr %5, align 8, !tbaa !11
  %143 = getelementptr inbounds i8, ptr %142, i64 %127
  store i8 0, ptr %143, align 1, !tbaa !19
  %144 = add nsw i32 %51, -1
  br label %286

145:                                              ; preds = %85
  %146 = load i64, ptr %7, align 8, !tbaa !15
  %147 = add i64 %146, 1
  %148 = load ptr, ptr %5, align 8, !tbaa !11
  %149 = icmp eq ptr %148, %6
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %151)
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i64, ptr %6, align 8
  %154 = select i1 %149, i64 15, i64 %153
  %155 = icmp ugt i64 %147, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %146, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %157 unwind label %78

157:                                              ; preds = %156
  %158 = load ptr, ptr %5, align 8, !tbaa !11
  br label %159

159:                                              ; preds = %157, %152
  %160 = phi ptr [ %158, %157 ], [ %148, %152 ]
  %161 = getelementptr inbounds i8, ptr %160, i64 %146
  store i8 123, ptr %161, align 1, !tbaa !19
  store i64 %147, ptr %7, align 8, !tbaa !15
  %162 = load ptr, ptr %5, align 8, !tbaa !11
  %163 = getelementptr inbounds i8, ptr %162, i64 %147
  store i8 0, ptr %163, align 1, !tbaa !19
  %164 = add nsw i32 %50, 1
  br label %286

165:                                              ; preds = %85
  %166 = load i64, ptr %7, align 8, !tbaa !15
  %167 = add i64 %166, 1
  %168 = load ptr, ptr %5, align 8, !tbaa !11
  %169 = icmp eq ptr %168, %6
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = icmp ult i64 %166, 16
  call void @llvm.assume(i1 %171)
  br label %172

172:                                              ; preds = %170, %165
  %173 = load i64, ptr %6, align 8
  %174 = select i1 %169, i64 15, i64 %173
  %175 = icmp ugt i64 %167, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %166, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %177 unwind label %78

177:                                              ; preds = %176
  %178 = load ptr, ptr %5, align 8, !tbaa !11
  br label %179

179:                                              ; preds = %177, %172
  %180 = phi ptr [ %178, %177 ], [ %168, %172 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 %166
  store i8 125, ptr %181, align 1, !tbaa !19
  store i64 %167, ptr %7, align 8, !tbaa !15
  %182 = load ptr, ptr %5, align 8, !tbaa !11
  %183 = getelementptr inbounds i8, ptr %182, i64 %167
  store i8 0, ptr %183, align 1, !tbaa !19
  %184 = add nsw i32 %50, -1
  br label %286

185:                                              ; preds = %85
  %186 = load i64, ptr %7, align 8, !tbaa !15
  %187 = add i64 %186, 1
  %188 = load ptr, ptr %5, align 8, !tbaa !11
  %189 = icmp eq ptr %188, %6
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = icmp ult i64 %186, 16
  call void @llvm.assume(i1 %191)
  br label %192

192:                                              ; preds = %190, %185
  %193 = load i64, ptr %6, align 8
  %194 = select i1 %189, i64 15, i64 %193
  %195 = icmp ugt i64 %187, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %186, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %197 unwind label %78

197:                                              ; preds = %196
  %198 = load ptr, ptr %5, align 8, !tbaa !11
  br label %199

199:                                              ; preds = %197, %192
  %200 = phi ptr [ %198, %197 ], [ %188, %192 ]
  %201 = getelementptr inbounds i8, ptr %200, i64 %186
  store i8 91, ptr %201, align 1, !tbaa !19
  store i64 %187, ptr %7, align 8, !tbaa !15
  %202 = load ptr, ptr %5, align 8, !tbaa !11
  %203 = getelementptr inbounds i8, ptr %202, i64 %187
  store i8 0, ptr %203, align 1, !tbaa !19
  %204 = add nsw i32 %49, 1
  br label %286

205:                                              ; preds = %85
  %206 = load i64, ptr %7, align 8, !tbaa !15
  %207 = add i64 %206, 1
  %208 = load ptr, ptr %5, align 8, !tbaa !11
  %209 = icmp eq ptr %208, %6
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = icmp ult i64 %206, 16
  call void @llvm.assume(i1 %211)
  br label %212

212:                                              ; preds = %210, %205
  %213 = load i64, ptr %6, align 8
  %214 = select i1 %209, i64 15, i64 %213
  %215 = icmp ugt i64 %207, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %206, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %217 unwind label %78

217:                                              ; preds = %216
  %218 = load ptr, ptr %5, align 8, !tbaa !11
  br label %219

219:                                              ; preds = %217, %212
  %220 = phi ptr [ %218, %217 ], [ %208, %212 ]
  %221 = getelementptr inbounds i8, ptr %220, i64 %206
  store i8 93, ptr %221, align 1, !tbaa !19
  store i64 %207, ptr %7, align 8, !tbaa !15
  %222 = load ptr, ptr %5, align 8, !tbaa !11
  %223 = getelementptr inbounds i8, ptr %222, i64 %207
  store i8 0, ptr %223, align 1, !tbaa !19
  %224 = add nsw i32 %49, -1
  br label %286

225:                                              ; preds = %85
  %226 = icmp eq i8 %54, %3
  %227 = icmp eq i32 %51, 0
  %228 = select i1 %226, i1 %227, i1 false
  %229 = icmp eq i32 %50, 0
  %230 = select i1 %228, i1 %229, i1 false
  %231 = icmp eq i32 %49, 0
  %232 = select i1 %230, i1 %231, i1 false
  br i1 %232, label %233, label %267

233:                                              ; preds = %225
  %234 = load ptr, ptr %11, align 8, !tbaa !38
  %235 = load ptr, ptr %12, align 8, !tbaa !234
  %236 = icmp eq ptr %234, %235
  br i1 %236, label %264, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %234, i64 0, i32 2
  store ptr %238, ptr %234, align 8, !tbaa !18
  %239 = load ptr, ptr %5, align 8, !tbaa !11
  %240 = load i64, ptr %7, align 8, !tbaa !15
  %241 = icmp ugt i64 %240, 15
  br i1 %241, label %242, label %254

242:                                              ; preds = %237
  %243 = icmp slt i64 %240, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %242
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %245 unwind label %80

245:                                              ; preds = %244
  unreachable

246:                                              ; preds = %242
  %247 = add nuw i64 %240, 1
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %251, !prof !37

249:                                              ; preds = %246
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %250 unwind label %80

250:                                              ; preds = %249
  unreachable

251:                                              ; preds = %246
  %252 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %247) #29
          to label %253 unwind label %78

253:                                              ; preds = %251
  store ptr %252, ptr %234, align 8, !tbaa !11
  store i64 %240, ptr %238, align 8, !tbaa !19
  br label %254

254:                                              ; preds = %253, %237
  %255 = phi ptr [ %252, %253 ], [ %238, %237 ]
  switch i64 %240, label %258 [
    i64 1, label %256
    i64 0, label %259
  ]

256:                                              ; preds = %254
  %257 = load i8, ptr %239, align 1, !tbaa !19
  store i8 %257, ptr %255, align 1, !tbaa !19
  br label %259

258:                                              ; preds = %254
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %255, ptr align 1 %239, i64 %240, i1 false)
  br label %259

259:                                              ; preds = %258, %256, %254
  %260 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %234, i64 0, i32 1
  store i64 %240, ptr %260, align 8, !tbaa !15
  %261 = getelementptr inbounds i8, ptr %255, i64 %240
  store i8 0, ptr %261, align 1, !tbaa !19
  %262 = load ptr, ptr %11, align 8, !tbaa !10
  %263 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %262, i64 1
  store ptr %263, ptr %11, align 8, !tbaa !10
  br label %265

264:                                              ; preds = %233
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %234, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %265 unwind label %78

265:                                              ; preds = %259, %264
  store i64 0, ptr %7, align 8, !tbaa !15
  %266 = load ptr, ptr %5, align 8, !tbaa !11
  store i8 0, ptr %266, align 1, !tbaa !19
  br label %286

267:                                              ; preds = %225
  %268 = load i64, ptr %7, align 8, !tbaa !15
  %269 = add i64 %268, 1
  %270 = load ptr, ptr %5, align 8, !tbaa !11
  %271 = icmp eq ptr %270, %6
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = icmp ult i64 %268, 16
  call void @llvm.assume(i1 %273)
  br label %274

274:                                              ; preds = %272, %267
  %275 = load i64, ptr %6, align 8
  %276 = select i1 %271, i64 15, i64 %275
  %277 = icmp ugt i64 %269, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %268, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %279 unwind label %78

279:                                              ; preds = %278
  %280 = load ptr, ptr %5, align 8, !tbaa !11
  br label %281

281:                                              ; preds = %274, %279
  %282 = phi ptr [ %280, %279 ], [ %270, %274 ]
  %283 = getelementptr inbounds i8, ptr %282, i64 %268
  store i8 %54, ptr %283, align 1, !tbaa !19
  store i64 %269, ptr %7, align 8, !tbaa !15
  %284 = load ptr, ptr %5, align 8, !tbaa !11
  %285 = getelementptr inbounds i8, ptr %284, i64 %269
  store i8 0, ptr %285, align 1, !tbaa !19
  br label %286

286:                                              ; preds = %281, %100, %83, %71, %84, %82, %265, %219, %199, %179, %159, %139, %119
  %287 = phi i8 [ %52, %119 ], [ %52, %139 ], [ %52, %159 ], [ %52, %179 ], [ %52, %199 ], [ %52, %219 ], [ %52, %265 ], [ %52, %83 ], [ 0, %71 ], [ 1, %82 ], [ %52, %84 ], [ %52, %100 ], [ %52, %281 ]
  %288 = phi i32 [ %124, %119 ], [ %144, %139 ], [ %51, %159 ], [ %51, %179 ], [ %51, %199 ], [ %51, %219 ], [ 0, %265 ], [ %51, %83 ], [ %51, %71 ], [ %51, %82 ], [ %51, %84 ], [ %51, %100 ], [ %51, %281 ]
  %289 = phi i32 [ %50, %119 ], [ %50, %139 ], [ %164, %159 ], [ %184, %179 ], [ %50, %199 ], [ %50, %219 ], [ 0, %265 ], [ %50, %83 ], [ %50, %71 ], [ %50, %82 ], [ %50, %84 ], [ %50, %100 ], [ %50, %281 ]
  %290 = phi i32 [ %49, %119 ], [ %49, %139 ], [ %49, %159 ], [ %49, %179 ], [ %204, %199 ], [ %224, %219 ], [ 0, %265 ], [ %49, %83 ], [ %49, %71 ], [ %49, %82 ], [ %49, %84 ], [ %49, %100 ], [ %49, %281 ]
  %291 = phi i8 [ %48, %119 ], [ %48, %139 ], [ %48, %159 ], [ %48, %179 ], [ %48, %199 ], [ %48, %219 ], [ %48, %265 ], [ 0, %83 ], [ %48, %71 ], [ %48, %82 ], [ %48, %84 ], [ 1, %100 ], [ %48, %281 ]
  %292 = getelementptr inbounds i8, ptr %53, i64 1
  %293 = icmp eq ptr %292, %8
  br i1 %293, label %13, label %47

294:                                              ; preds = %40, %45
  %295 = load ptr, ptr %5, align 8, !tbaa !11
  %296 = icmp eq ptr %295, %6
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i64, ptr %7, align 8, !tbaa !15
  %299 = icmp ult i64 %298, 16
  call void @llvm.assume(i1 %299)
  br label %301

300:                                              ; preds = %294
  call void @_ZdlPv(ptr noundef %295) #26
  br label %301

301:                                              ; preds = %297, %300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void

302:                                              ; preds = %45, %32, %30, %25
  %303 = landingpad { ptr, i32 }
          cleanup
  br label %304

304:                                              ; preds = %78, %80, %302
  %305 = phi { ptr, i32 } [ %303, %302 ], [ %79, %78 ], [ %81, %80 ]
  %306 = load ptr, ptr %5, align 8, !tbaa !11
  %307 = icmp eq ptr %306, %6
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i64, ptr %7, align 8, !tbaa !15
  %310 = icmp ult i64 %309, 16
  call void @llvm.assume(i1 %310)
  br label %312

311:                                              ; preds = %304
  call void @_ZdlPv(ptr noundef %306) #26
  br label %312

312:                                              ; preds = %308, %311
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  resume { ptr, i32 } %305
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %7, %27 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = getelementptr inbounds i8, ptr %6, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds i8, ptr %6, i64 72
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %6, i64 64
  %15 = load i64, ptr %14, align 8, !tbaa !15
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %5
  tail call void @_ZdlPv(ptr noundef %10) #26
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %8, align 8, !tbaa !11
  %20 = getelementptr inbounds i8, ptr %6, i64 24
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %6, i64 16
  %24 = load i64, ptr %23, align 8, !tbaa !15
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #26
  br label %27

27:                                               ; preds = %26, %22
  tail call void @_ZdlPv(ptr noundef nonnull %6) #26
  %28 = icmp eq ptr %7, null
  br i1 %28, label %29, label %5, !llvm.loop !158

29:                                               ; preds = %27, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !143
  %31 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !148
  %33 = shl i64 %32, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %34 = load ptr, ptr %0, align 8, !tbaa !143
  %35 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 5
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %34) #26
  br label %38

38:                                               ; preds = %29, %37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #28
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add nsw i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #29
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !18
  %30 = load ptr, ptr %2, align 8, !tbaa !11
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !15
  %33 = icmp ugt i64 %32, 15
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = icmp slt i64 %32, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %37 unwind label %114

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %34
  %39 = add nuw i64 %32, 1
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43, !prof !37

41:                                               ; preds = %38
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %42 unwind label %114

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %39) #29
          to label %45 unwind label %114

45:                                               ; preds = %43
  store ptr %44, ptr %28, align 8, !tbaa !11
  store i64 %32, ptr %29, align 8, !tbaa !19
  br label %46

46:                                               ; preds = %45, %26
  %47 = phi ptr [ %44, %45 ], [ %29, %26 ]
  switch i64 %32, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, ptr %30, align 1, !tbaa !19
  store i8 %49, ptr %47, align 1, !tbaa !19
  br label %51

50:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %30, i64 %32, i1 false)
  br label %51

51:                                               ; preds = %46, %48, %50
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %32, ptr %52, align 8, !tbaa !15
  %53 = getelementptr inbounds i8, ptr %47, i64 %32
  store i8 0, ptr %53, align 1, !tbaa !19
  %54 = icmp eq ptr %6, %1
  br i1 %54, label %78, label %55

55:                                               ; preds = %51, %71
  %56 = phi ptr [ %76, %71 ], [ %27, %51 ]
  %57 = phi ptr [ %75, %71 ], [ %6, %51 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 2
  store ptr %58, ptr %56, align 8, !tbaa !18, !alias.scope !235, !noalias !238
  %59 = load ptr, ptr %57, align 8, !tbaa !11, !alias.scope !238, !noalias !235
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 2
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !15, !alias.scope !238, !noalias !235
  %65 = icmp ult i64 %64, 16
  tail call void @llvm.assume(i1 %65)
  %66 = add nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %58, ptr noundef nonnull align 8 dereferenceable(1) %59, i64 %66, i1 false)
  br label %71

67:                                               ; preds = %55
  store ptr %59, ptr %56, align 8, !tbaa !11, !alias.scope !235, !noalias !238
  %68 = load i64, ptr %60, align 8, !tbaa !19, !alias.scope !238, !noalias !235
  store i64 %68, ptr %58, align 8, !tbaa !19, !alias.scope !235, !noalias !238
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !15, !alias.scope !238, !noalias !235
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i64 [ %64, %62 ], [ %70, %67 ]
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 0, i32 1
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 0, i32 1
  store i64 %72, ptr %74, align 8, !tbaa !15, !alias.scope !235, !noalias !238
  store ptr %60, ptr %57, align 8, !tbaa !11, !alias.scope !238, !noalias !235
  store i64 0, ptr %73, align 8, !tbaa !15, !alias.scope !238, !noalias !235
  store i8 0, ptr %60, align 1, !tbaa !19, !alias.scope !238, !noalias !235
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %57, i64 1
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %56, i64 1
  %77 = icmp eq ptr %75, %1
  br i1 %77, label %78, label %55, !llvm.loop !240

78:                                               ; preds = %71, %51
  %79 = phi ptr [ %27, %51 ], [ %76, %71 ]
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %79, i64 1
  %81 = icmp eq ptr %5, %1
  br i1 %81, label %105, label %82

82:                                               ; preds = %78, %98
  %83 = phi ptr [ %103, %98 ], [ %80, %78 ]
  %84 = phi ptr [ %102, %98 ], [ %1, %78 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %83, i64 0, i32 2
  store ptr %85, ptr %83, align 8, !tbaa !18, !alias.scope !241, !noalias !244
  %86 = load ptr, ptr %84, align 8, !tbaa !11, !alias.scope !244, !noalias !241
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 2
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !15, !alias.scope !244, !noalias !241
  %92 = icmp ult i64 %91, 16
  tail call void @llvm.assume(i1 %92)
  %93 = add nuw nsw i64 %91, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %85, ptr noundef nonnull align 8 dereferenceable(1) %86, i64 %93, i1 false)
  br label %98

94:                                               ; preds = %82
  store ptr %86, ptr %83, align 8, !tbaa !11, !alias.scope !241, !noalias !244
  %95 = load i64, ptr %87, align 8, !tbaa !19, !alias.scope !244, !noalias !241
  store i64 %95, ptr %85, align 8, !tbaa !19, !alias.scope !241, !noalias !244
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !15, !alias.scope !244, !noalias !241
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i64 [ %91, %89 ], [ %97, %94 ]
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 0, i32 1
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %83, i64 0, i32 1
  store i64 %99, ptr %101, align 8, !tbaa !15, !alias.scope !241, !noalias !244
  store ptr %87, ptr %84, align 8, !tbaa !11, !alias.scope !244, !noalias !241
  store i64 0, ptr %100, align 8, !tbaa !15, !alias.scope !244, !noalias !241
  store i8 0, ptr %87, align 1, !tbaa !19, !alias.scope !244, !noalias !241
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %84, i64 1
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %83, i64 1
  %104 = icmp eq ptr %102, %5
  br i1 %104, label %105, label %82, !llvm.loop !240

105:                                              ; preds = %98, %78
  %106 = phi ptr [ %80, %78 ], [ %103, %98 ]
  %107 = icmp eq ptr %6, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @_ZdlPv(ptr noundef nonnull %6) #26
  br label %109

109:                                              ; preds = %105, %108
  %110 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !5
  store ptr %106, ptr %4, align 8, !tbaa !10
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %111, ptr %110, align 8, !tbaa !234
  ret void

112:                                              ; preds = %114
  %113 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %118 unwind label %119

114:                                              ; preds = %43, %41, %36
  %115 = landingpad { ptr, i32 }
          catch ptr null
  %116 = extractvalue { ptr, i32 } %115, 0
  %117 = tail call ptr @__cxa_begin_catch(ptr %116) #27
  tail call void @_ZdlPv(ptr noundef nonnull %27) #26
  invoke void @__cxa_rethrow() #28
          to label %122 unwind label %112

118:                                              ; preds = %112
  resume { ptr, i32 } %113

119:                                              ; preds = %112
  %120 = landingpad { ptr, i32 }
          catch ptr null
  %121 = extractvalue { ptr, i32 } %120, 0
  tail call void @__clang_call_terminate(ptr %121) #30
  unreachable

122:                                              ; preds = %114
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nocapture readonly %1, i64 %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !19
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @isspace(i32 noundef %9) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = add nuw i64 %6, 1
  %14 = icmp eq i64 %13, %2
  br i1 %14, label %15, label %5, !llvm.loop !246

15:                                               ; preds = %5, %12, %3
  %16 = phi i64 [ 0, %3 ], [ %2, %12 ], [ %6, %5 ]
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %2)
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %2, %15 ], [ %22, %21 ]
  %20 = icmp ugt i64 %19, %16
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = add i64 %19, -1
  %23 = getelementptr inbounds i8, ptr %1, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !19
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @isspace(i32 noundef %25) #31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !247

28:                                               ; preds = %18, %21
  %29 = phi i64 [ %17, %18 ], [ %19, %21 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %30 = icmp ugt i64 %16, %2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i64 noundef %16, i64 noundef %2) #28, !noalias !248
  unreachable

32:                                               ; preds = %28
  %33 = sub i64 %29, %16
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %34, ptr %0, align 8, !tbaa !18, !alias.scope !248
  %35 = getelementptr inbounds i8, ptr %1, i64 %16
  %36 = sub i64 %2, %16
  %37 = tail call noundef i64 @llvm.umin.i64(i64 %36, i64 %33)
  %38 = icmp ugt i64 %37, 15
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = icmp slt i64 %37, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

42:                                               ; preds = %39
  %43 = add nuw i64 %37, 1
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46, !prof !37

45:                                               ; preds = %42
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

46:                                               ; preds = %42
  %47 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #29
  store ptr %47, ptr %0, align 8, !tbaa !11, !alias.scope !248
  store i64 %37, ptr %34, align 8, !tbaa !19, !alias.scope !248
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi ptr [ %47, %46 ], [ %34, %32 ]
  switch i64 %37, label %52 [
    i64 1, label %50
    i64 0, label %53
  ]

50:                                               ; preds = %48
  %51 = load i8, ptr %35, align 1, !tbaa !19
  store i8 %51, ptr %49, align 1, !tbaa !19
  br label %53

52:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %35, i64 %37, i1 false)
  br label %53

53:                                               ; preds = %48, %50, %52
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %37, ptr %54, align 8, !tbaa !15, !alias.scope !248
  %55 = getelementptr inbounds i8, ptr %49, i64 %37
  store i8 0, ptr %55, align 1, !tbaa !19
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse uwtable
define internal fastcc noundef i32 @"_ZZL30__apo_execute_apollo_statementRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEEENK3$_0clES6_b"(ptr nocapture readonly %0, ptr %1, ptr nocapture readonly %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %struct.__apo_apollo_payload_value, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %11 = icmp ult i64 %10, %3
  br i1 %11, label %184, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !11
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @bcmp(ptr %13, ptr %2, i64 %3)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %184

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %13, i64 %10
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !19
  %22 = icmp eq i8 %21, 41
  br i1 %22, label %29, label %184

23:                                               ; preds = %12
  %24 = getelementptr i8, ptr %13, i64 %10
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !19
  %27 = icmp eq i8 %26, 41
  br i1 %27, label %28, label %184

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  br label %31

29:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %30 = xor i64 %3, -1
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ %30, %29 ], [ -1, %28 ]
  %33 = add i64 %10, %32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %34, ptr %6, align 8, !tbaa !18, !alias.scope !251
  %35 = getelementptr inbounds i8, ptr %13, i64 %3
  %36 = sub i64 %10, %3
  %37 = call noundef i64 @llvm.umin.i64(i64 %36, i64 %33)
  %38 = icmp ugt i64 %37, 15
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = icmp slt i64 %37, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

42:                                               ; preds = %39
  %43 = add nuw i64 %37, 1
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46, !prof !37

45:                                               ; preds = %42
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

46:                                               ; preds = %42
  %47 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %43) #29
  store ptr %47, ptr %6, align 8, !tbaa !11, !alias.scope !251
  store i64 %37, ptr %34, align 8, !tbaa !19, !alias.scope !251
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi ptr [ %47, %46 ], [ %34, %31 ]
  switch i64 %37, label %52 [
    i64 1, label %50
    i64 0, label %53
  ]

50:                                               ; preds = %48
  %51 = load i8, ptr %35, align 1, !tbaa !19
  store i8 %51, ptr %49, align 1, !tbaa !19
  br label %53

52:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %35, i64 %37, i1 false)
  br label %53

53:                                               ; preds = %48, %50, %52
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %37, ptr %54, align 8, !tbaa !15, !alias.scope !251
  %55 = getelementptr inbounds i8, ptr %49, i64 %37
  store i8 0, ptr %55, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #27
  store i32 1, ptr %7, align 8, !tbaa !151
  %56 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 1
  store i64 0, ptr %56, align 8, !tbaa !155
  %57 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2
  %58 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2, i32 2
  store ptr %58, ptr %57, align 8, !tbaa !18
  %59 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2, i32 1
  store i64 0, ptr %59, align 8, !tbaa !15
  store i8 0, ptr %58, align 8, !tbaa !19
  %60 = invoke fastcc noundef zeroext i1 @_ZL22__apo_eval_apollo_exprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEERS8_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %61 unwind label %94

61:                                               ; preds = %53
  br i1 %60, label %96, label %62

62:                                               ; preds = %61
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.93, i64 noundef 39)
          to label %64 unwind label %94

64:                                               ; preds = %62
  %65 = load ptr, ptr %6, align 8, !tbaa !11
  %66 = load i64, ptr %54, align 8, !tbaa !15
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %65, i64 noundef %66)
          to label %68 unwind label %94

68:                                               ; preds = %64
  %69 = load ptr, ptr %67, align 8, !tbaa !23
  %70 = getelementptr i8, ptr %69, i64 -24
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds i8, ptr %67, i64 %71
  %73 = getelementptr inbounds %"class.std::basic_ios", ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = icmp eq ptr %74, null
  br i1 %75, label %119, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %"class.std::ctype", ptr %74, i64 0, i32 8
  %78 = load i8, ptr %77, align 8, !tbaa !34
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.std::ctype", ptr %74, i64 0, i32 9, i64 10
  %82 = load i8, ptr %81, align 1, !tbaa !19
  br label %89

83:                                               ; preds = %76
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %74)
          to label %84 unwind label %94

84:                                               ; preds = %83
  %85 = load ptr, ptr %74, align 8, !tbaa !23
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef signext i8 %87(ptr noundef nonnull align 8 dereferenceable(570) %74, i8 noundef signext 10)
          to label %89 unwind label %94

89:                                               ; preds = %84, %80
  %90 = phi i8 [ %82, %80 ], [ %88, %84 ]
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %67, i8 noundef signext %90)
          to label %92 unwind label %94

92:                                               ; preds = %89
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %152 unwind label %94

94:                                               ; preds = %119, %137, %134, %129, %128, %92, %89, %84, %83, %64, %62, %53
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %168

96:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  invoke void @_ZNK26__apo_apollo_payload_value6renderB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %97 unwind label %139

97:                                               ; preds = %96
  %98 = load ptr, ptr %8, align 8, !tbaa !11
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !15
  %101 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %98, i64 noundef %100)
          to label %102 unwind label %141

102:                                              ; preds = %97
  %103 = load ptr, ptr %8, align 8, !tbaa !11
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, ptr %99, align 8, !tbaa !15
  %108 = icmp ult i64 %107, 16
  call void @llvm.assume(i1 %108)
  br label %110

109:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %103) #26
  br label %110

110:                                              ; preds = %106, %109
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  br i1 %4, label %111, label %152

111:                                              ; preds = %110
  %112 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %113 = getelementptr i8, ptr %112, i64 -24
  %114 = load i64, ptr %113, align 8
  %115 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %114
  %116 = getelementptr inbounds %"class.std::basic_ios", ptr %115, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !25
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %68, %111
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %120 unwind label %94

120:                                              ; preds = %119
  unreachable

121:                                              ; preds = %111
  %122 = getelementptr inbounds %"class.std::ctype", ptr %117, i64 0, i32 8
  %123 = load i8, ptr %122, align 8, !tbaa !34
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %"class.std::ctype", ptr %117, i64 0, i32 9, i64 10
  %127 = load i8, ptr %126, align 1, !tbaa !19
  br label %134

128:                                              ; preds = %121
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %117)
          to label %129 unwind label %94

129:                                              ; preds = %128
  %130 = load ptr, ptr %117, align 8, !tbaa !23
  %131 = getelementptr inbounds ptr, ptr %130, i64 6
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef signext i8 %132(ptr noundef nonnull align 8 dereferenceable(570) %117, i8 noundef signext 10)
          to label %134 unwind label %94

134:                                              ; preds = %129, %125
  %135 = phi i8 [ %127, %125 ], [ %133, %129 ]
  %136 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %135)
          to label %137 unwind label %94

137:                                              ; preds = %134
  %138 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %136)
          to label %152 unwind label %94

139:                                              ; preds = %96
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %150

141:                                              ; preds = %97
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = load ptr, ptr %8, align 8, !tbaa !11
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i64, ptr %99, align 8, !tbaa !15
  %148 = icmp ult i64 %147, 16
  call void @llvm.assume(i1 %148)
  br label %150

149:                                              ; preds = %141
  call void @_ZdlPv(ptr noundef %143) #26
  br label %150

150:                                              ; preds = %149, %146, %139
  %151 = phi { ptr, i32 } [ %140, %139 ], [ %142, %146 ], [ %142, %149 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  br label %168

152:                                              ; preds = %137, %92, %110
  %153 = phi i32 [ 0, %110 ], [ -1, %92 ], [ 0, %137 ]
  %154 = load ptr, ptr %57, align 8, !tbaa !11
  %155 = icmp eq ptr %154, %58
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i64, ptr %59, align 8, !tbaa !15
  %158 = icmp ult i64 %157, 16
  call void @llvm.assume(i1 %158)
  br label %160

159:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %154) #26
  br label %160

160:                                              ; preds = %156, %159
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #27
  %161 = load ptr, ptr %6, align 8, !tbaa !11
  %162 = icmp eq ptr %161, %34
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, ptr %54, align 8, !tbaa !15
  %165 = icmp ult i64 %164, 16
  call void @llvm.assume(i1 %165)
  br label %167

166:                                              ; preds = %160
  call void @_ZdlPv(ptr noundef %161) #26
  br label %167

167:                                              ; preds = %163, %166
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %184

168:                                              ; preds = %150, %94
  %169 = phi { ptr, i32 } [ %95, %94 ], [ %151, %150 ]
  %170 = load ptr, ptr %57, align 8, !tbaa !11
  %171 = icmp eq ptr %170, %58
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i64, ptr %59, align 8, !tbaa !15
  %174 = icmp ult i64 %173, 16
  call void @llvm.assume(i1 %174)
  br label %176

175:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %170) #26
  br label %176

176:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #27
  %177 = load ptr, ptr %6, align 8, !tbaa !11
  %178 = icmp eq ptr %177, %34
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i64, ptr %54, align 8, !tbaa !15
  %181 = icmp ult i64 %180, 16
  call void @llvm.assume(i1 %181)
  br label %183

182:                                              ; preds = %176
  call void @_ZdlPv(ptr noundef %177) #26
  br label %183

183:                                              ; preds = %179, %182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  resume { ptr, i32 } %169

184:                                              ; preds = %15, %5, %23, %18, %167
  %185 = phi i32 [ %153, %167 ], [ 1, %18 ], [ 1, %23 ], [ 1, %5 ], [ 1, %15 ]
  ret i32 %185
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL22__apo_eval_apollo_exprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEERS8_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::vector", align 8
  %9 = alloca %"class.std::vector.20", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %struct.__apo_apollo_payload_value, align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %struct.__apo_apollo_payload_value, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %struct.__apo_apollo_payload_value, align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %struct.__apo_apollo_payload_value, align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %struct.__apo_apollo_payload_value, align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %struct.__apo_apollo_payload_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  %24 = load i64, ptr %23, align 8
  call fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr %22, i64 %24)
  %25 = getelementptr inbounds i8, ptr %5, i64 8
  %26 = load ptr, ptr %5, align 8
  %27 = load i64, ptr %25, align 8, !tbaa !15
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %173, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %35

35:                                               ; preds = %29, %155
  %36 = phi i64 [ %27, %29 ], [ %157, %155 ]
  %37 = phi ptr [ %26, %29 ], [ %156, %155 ]
  %38 = load i8, ptr %37, align 1, !tbaa !19
  %39 = icmp eq i8 %38, 40
  br i1 %39, label %40, label %173

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %37, i64 %36
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !19
  %44 = icmp eq i8 %43, 41
  br i1 %44, label %45, label %173

45:                                               ; preds = %40, %71
  %46 = phi i1 [ %76, %71 ], [ false, %40 ]
  %47 = phi i64 [ %75, %71 ], [ 0, %40 ]
  %48 = phi i32 [ %74, %71 ], [ 0, %40 ]
  %49 = phi i8 [ %73, %71 ], [ 0, %40 ]
  %50 = phi i8 [ %72, %71 ], [ 0, %40 ]
  %51 = getelementptr inbounds i8, ptr %37, i64 %47
  %52 = load i8, ptr %51, align 1, !tbaa !19
  %53 = and i8 %50, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = and i8 %49, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  switch i8 %52, label %60 [
    i8 92, label %71
    i8 34, label %59
  ]

59:                                               ; preds = %58
  br label %71

60:                                               ; preds = %58
  br label %71

61:                                               ; preds = %45
  switch i8 %52, label %70 [
    i8 34, label %71
    i8 40, label %62
    i8 41, label %64
  ]

62:                                               ; preds = %61
  %63 = add nsw i32 %48, 1
  br label %71

64:                                               ; preds = %61
  %65 = add nsw i32 %48, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = add nuw i64 %47, 1
  %69 = icmp ult i64 %68, %36
  br i1 %69, label %78, label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %67, %64, %62, %61, %60, %59, %58, %55
  %72 = phi i8 [ 1, %61 ], [ %50, %60 ], [ %50, %58 ], [ %50, %55 ], [ 0, %59 ], [ %50, %67 ], [ %50, %64 ], [ %50, %62 ], [ %50, %70 ]
  %73 = phi i8 [ %49, %61 ], [ %49, %60 ], [ 1, %58 ], [ 0, %55 ], [ %49, %59 ], [ %49, %67 ], [ %49, %64 ], [ %49, %62 ], [ %49, %70 ]
  %74 = phi i32 [ %48, %61 ], [ %48, %60 ], [ %48, %58 ], [ %48, %55 ], [ %48, %59 ], [ 0, %67 ], [ %65, %64 ], [ %63, %62 ], [ %48, %70 ]
  %75 = add nuw i64 %47, 1
  %76 = icmp uge i64 %75, %36
  %77 = icmp eq i64 %75, %36
  br i1 %77, label %78, label %45, !llvm.loop !254

78:                                               ; preds = %67, %71
  %79 = phi i1 [ %46, %67 ], [ %76, %71 ]
  %80 = phi i32 [ 0, %67 ], [ %74, %71 ]
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %173

83:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  %84 = add i64 %36, -2
  store ptr %30, ptr %7, align 8, !tbaa !18, !alias.scope !255
  %85 = getelementptr inbounds i8, ptr %37, i64 1
  %86 = add i64 %36, -1
  %87 = call noundef i64 @llvm.umin.i64(i64 %86, i64 %84)
  %88 = icmp ugt i64 %87, 15
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = icmp slt i64 %87, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %92 unwind label %161

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %89
  %94 = add nuw i64 %87, 1
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98, !prof !37

96:                                               ; preds = %93
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %97 unwind label %161

97:                                               ; preds = %96
  unreachable

98:                                               ; preds = %93
  %99 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %94) #29
          to label %100 unwind label %159

100:                                              ; preds = %98
  store ptr %99, ptr %7, align 8, !tbaa !11, !alias.scope !255
  store i64 %87, ptr %30, align 8, !tbaa !19, !alias.scope !255
  br label %101

101:                                              ; preds = %100, %83
  %102 = phi ptr [ %99, %100 ], [ %30, %83 ]
  switch i64 %87, label %105 [
    i64 1, label %103
    i64 0, label %106
  ]

103:                                              ; preds = %101
  %104 = load i8, ptr %85, align 1, !tbaa !19
  store i8 %104, ptr %102, align 1, !tbaa !19
  br label %106

105:                                              ; preds = %101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %102, ptr nonnull align 1 %85, i64 %87, i1 false)
  br label %106

106:                                              ; preds = %105, %103, %101
  store i64 %87, ptr %31, align 8, !tbaa !15, !alias.scope !255
  %107 = getelementptr inbounds i8, ptr %102, i64 %87
  store i8 0, ptr %107, align 1, !tbaa !19
  %108 = load ptr, ptr %7, align 8
  %109 = load i64, ptr %31, align 8
  invoke fastcc void @_ZL15__apo_trim_copyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr %108, i64 %109)
          to label %110 unwind label %163

110:                                              ; preds = %106
  %111 = load ptr, ptr %5, align 8, !tbaa !11
  %112 = icmp eq ptr %111, %32
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i64, ptr %25, align 8, !tbaa !15
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  %116 = load ptr, ptr %6, align 8, !tbaa !11
  %117 = icmp eq ptr %116, %33
  br i1 %117, label %121, label %132

118:                                              ; preds = %110
  %119 = load ptr, ptr %6, align 8, !tbaa !11
  %120 = icmp eq ptr %119, %33
  br i1 %120, label %121, label %134

121:                                              ; preds = %118, %113
  %122 = load i64, ptr %34, align 8, !tbaa !15
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  switch i64 %122, label %126 [
    i64 0, label %127
    i64 1, label %124
  ]

124:                                              ; preds = %121
  %125 = load i8, ptr %33, align 8, !tbaa !19
  store i8 %125, ptr %111, align 1, !tbaa !19
  br label %127

126:                                              ; preds = %121
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr nonnull align 8 %33, i64 %122, i1 false)
  br label %127

127:                                              ; preds = %126, %124, %121
  %128 = load i64, ptr %34, align 8, !tbaa !15
  store i64 %128, ptr %25, align 8, !tbaa !15
  %129 = load ptr, ptr %5, align 8, !tbaa !11
  %130 = getelementptr inbounds i8, ptr %129, i64 %128
  store i8 0, ptr %130, align 1, !tbaa !19
  %131 = load ptr, ptr %6, align 8, !tbaa !11
  br label %140

132:                                              ; preds = %113
  store ptr %116, ptr %5, align 8, !tbaa !11
  %133 = load <2 x i64>, ptr %34, align 8, !tbaa !19
  store <2 x i64> %133, ptr %25, align 8, !tbaa !19
  br label %139

134:                                              ; preds = %118
  %135 = load i64, ptr %32, align 8, !tbaa !19
  store ptr %119, ptr %5, align 8, !tbaa !11
  %136 = load <2 x i64>, ptr %34, align 8, !tbaa !19
  store <2 x i64> %136, ptr %25, align 8, !tbaa !19
  %137 = icmp eq ptr %111, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  store ptr %111, ptr %6, align 8, !tbaa !11
  store i64 %135, ptr %33, align 8, !tbaa !19
  br label %140

139:                                              ; preds = %134, %132
  store ptr %33, ptr %6, align 8, !tbaa !11
  br label %140

140:                                              ; preds = %127, %138, %139
  %141 = phi ptr [ %131, %127 ], [ %111, %138 ], [ %33, %139 ]
  store i64 0, ptr %34, align 8, !tbaa !15
  store i8 0, ptr %141, align 1, !tbaa !19
  %142 = load ptr, ptr %6, align 8, !tbaa !11
  %143 = icmp eq ptr %142, %33
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i64, ptr %34, align 8, !tbaa !15
  %146 = icmp ult i64 %145, 16
  call void @llvm.assume(i1 %146)
  br label %148

147:                                              ; preds = %140
  call void @_ZdlPv(ptr noundef %142) #26
  br label %148

148:                                              ; preds = %144, %147
  %149 = load ptr, ptr %7, align 8, !tbaa !11
  %150 = icmp eq ptr %149, %30
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, ptr %31, align 8, !tbaa !15
  %153 = icmp ult i64 %152, 16
  call void @llvm.assume(i1 %153)
  br label %155

154:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %149) #26
  br label %155

155:                                              ; preds = %151, %154
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  %156 = load ptr, ptr %5, align 8
  %157 = load i64, ptr %25, align 8, !tbaa !15
  %158 = icmp ult i64 %157, 2
  br i1 %158, label %173, label %35, !llvm.loop !258

159:                                              ; preds = %98
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %171

161:                                              ; preds = %91, %96
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %171

163:                                              ; preds = %106
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = load ptr, ptr %7, align 8, !tbaa !11
  %166 = icmp eq ptr %165, %30
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i64, ptr %31, align 8, !tbaa !15
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #26
  br label %171

171:                                              ; preds = %159, %161, %170, %167
  %172 = phi { ptr, i32 } [ %164, %167 ], [ %164, %170 ], [ %160, %159 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %991

173:                                              ; preds = %78, %40, %35, %155, %3
  %174 = phi ptr [ %26, %3 ], [ %156, %155 ], [ %37, %35 ], [ %37, %40 ], [ %37, %78 ]
  %175 = phi i64 [ %27, %3 ], [ %157, %155 ], [ %36, %35 ], [ %36, %40 ], [ %36, %78 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  invoke fastcc void @_ZL21__apo_split_top_levelRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr %174, i64 %175, i8 noundef signext 43)
          to label %176 unwind label %207

176:                                              ; preds = %173
  %177 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %8, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !38
  %179 = load ptr, ptr %8, align 8, !tbaa !38
  %180 = ptrtoint ptr %178 to i64
  %181 = ptrtoint ptr %179 to i64
  %182 = sub i64 %180, %181
  %183 = ashr exact i64 %182, 5
  %184 = icmp ugt i64 %183, 1
  br i1 %184, label %185, label %492

185:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %186 = icmp ugt i64 %183, 192153584101141162
  br i1 %186, label %187, label %189

187:                                              ; preds = %185
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #28
          to label %188 unwind label %209

188:                                              ; preds = %187
  unreachable

189:                                              ; preds = %185
  %190 = mul nuw nsw i64 %183, 48
  %191 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %190) #29
          to label %192 unwind label %209

192:                                              ; preds = %189
  %193 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %194 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %9, i64 0, i32 2
  store ptr %191, ptr %9, align 8, !tbaa !259
  store ptr %191, ptr %193, align 8, !tbaa !261
  %195 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %191, i64 %183
  store ptr %195, ptr %194, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  %196 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %196, ptr %10, align 8, !tbaa !18
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  store i64 0, ptr %197, align 8, !tbaa !15
  store i8 0, ptr %196, align 8, !tbaa !19
  %198 = icmp eq ptr %179, %178
  br i1 %198, label %406, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %11, i64 0, i32 1
  %201 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %11, i64 0, i32 2
  %202 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %11, i64 0, i32 2, i32 2
  %203 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %11, i64 0, i32 2, i32 1
  br label %211

204:                                              ; preds = %241
  %205 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %213, i64 1
  %206 = icmp eq ptr %205, %178
  br i1 %206, label %242, label %211

207:                                              ; preds = %173
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %989

209:                                              ; preds = %189, %187
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %490

211:                                              ; preds = %199, %204
  %212 = phi i8 [ 0, %199 ], [ %234, %204 ]
  %213 = phi ptr [ %179, %199 ], [ %205, %204 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #27
  store i32 1, ptr %11, align 8, !tbaa !151
  store i64 0, ptr %200, align 8, !tbaa !155
  store ptr %202, ptr %201, align 8, !tbaa !18
  store i64 0, ptr %203, align 8, !tbaa !15
  store i8 0, ptr %202, align 8, !tbaa !19
  %214 = invoke fastcc noundef zeroext i1 @_ZL22__apo_eval_apollo_exprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt13unordered_mapIS4_26__apo_apollo_payload_valueSt4hashIS4_ESt8equal_toIS4_ESaISt4pairIS5_S8_EEERS8_(ptr noundef nonnull align 8 dereferenceable(32) %213, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %215 unwind label %216

215:                                              ; preds = %211
  br i1 %214, label %225, label %233

216:                                              ; preds = %225, %211
  %217 = landingpad { ptr, i32 }
          cleanup
  %218 = load ptr, ptr %201, align 8, !tbaa !11
  %219 = icmp eq ptr %218, %202
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i64, ptr %203, align 8, !tbaa !15
  %222 = icmp ult i64 %221, 16
  call void @llvm.assume(i1 %222)
  br label %224

223:                                              ; preds = %216
  call void @_ZdlPv(ptr noundef %218) #26
  br label %224

224:                                              ; preds = %220, %223
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #27
  br label %481

225:                                              ; preds = %215
  %226 = load i32, ptr %11, align 8
  invoke void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %227 unwind label %216

227:                                              ; preds = %225
  %228 = and i8 %212, 1
  %229 = icmp ne i8 %228, 0
  %230 = icmp eq i32 %226, 1
  %231 = select i1 %229, i1 true, i1 %230
  %232 = zext i1 %231 to i8
  br label %233

233:                                              ; preds = %215, %227
  %234 = phi i8 [ %232, %227 ], [ %212, %215 ]
  %235 = load ptr, ptr %201, align 8, !tbaa !11
  %236 = icmp eq ptr %235, %202
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i64, ptr %203, align 8, !tbaa !15
  %239 = icmp ult i64 %238, 16
  call void @llvm.assume(i1 %239)
  br label %241

240:                                              ; preds = %233
  call void @_ZdlPv(ptr noundef %235) #26
  br label %241

241:                                              ; preds = %237, %240
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #27
  br i1 %214, label %204, label %447

242:                                              ; preds = %204
  %243 = and i8 %234, 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %406, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %9, align 8, !tbaa !38
  %247 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !38
  %249 = icmp eq ptr %246, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  br label %275

253:                                              ; preds = %313, %245
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #27
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %254, ptr %14, align 8, !tbaa !18
  %255 = load ptr, ptr %10, align 8, !tbaa !11
  %256 = load i64, ptr %197, align 8, !tbaa !15
  %257 = icmp ugt i64 %256, 15
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = icmp slt i64 %256, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %258
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %261 unwind label %404

261:                                              ; preds = %260
  unreachable

262:                                              ; preds = %258
  %263 = add nuw i64 %256, 1
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %267, !prof !37

265:                                              ; preds = %262
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %266 unwind label %404

266:                                              ; preds = %265
  unreachable

267:                                              ; preds = %262
  %268 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %263) #29
          to label %269 unwind label %404

269:                                              ; preds = %267
  store ptr %268, ptr %14, align 8, !tbaa !11
  store i64 %256, ptr %254, align 8, !tbaa !19
  br label %270

270:                                              ; preds = %269, %253
  %271 = phi ptr [ %268, %269 ], [ %254, %253 ]
  switch i64 %256, label %274 [
    i64 1, label %272
    i64 0, label %332
  ]

272:                                              ; preds = %270
  %273 = load i8, ptr %255, align 1, !tbaa !19
  store i8 %273, ptr %271, align 1, !tbaa !19
  br label %332

274:                                              ; preds = %270
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %271, ptr align 1 %255, i64 %256, i1 false)
  br label %332

275:                                              ; preds = %250, %313
  %276 = phi ptr [ %246, %250 ], [ %314, %313 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  invoke void @_ZNK26__apo_apollo_payload_value6renderB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %276)
          to label %277 unwind label %316

277:                                              ; preds = %275
  %278 = load ptr, ptr %12, align 8, !tbaa !11
  %279 = load i64, ptr %251, align 8, !tbaa !15
  %280 = load i64, ptr %197, align 8, !tbaa !15
  %281 = sub i64 9223372036854775807, %280
  %282 = icmp ult i64 %281, %279
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #28
          to label %284 unwind label %320

284:                                              ; preds = %283
  unreachable

285:                                              ; preds = %277
  %286 = add i64 %280, %279
  %287 = load ptr, ptr %10, align 8, !tbaa !11
  %288 = icmp eq ptr %287, %196
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = icmp ult i64 %280, 16
  call void @llvm.assume(i1 %290)
  br label %291

291:                                              ; preds = %289, %285
  %292 = load i64, ptr %196, align 8
  %293 = select i1 %288, i64 15, i64 %292
  %294 = icmp ugt i64 %286, %293
  br i1 %294, label %303, label %295

295:                                              ; preds = %291
  %296 = icmp eq i64 %279, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %295
  %298 = getelementptr inbounds i8, ptr %287, i64 %280
  %299 = icmp eq i64 %279, 1
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i8, ptr %278, align 1, !tbaa !19
  store i8 %301, ptr %298, align 1, !tbaa !19
  br label %304

302:                                              ; preds = %297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %298, ptr align 1 %278, i64 %279, i1 false)
  br label %304

303:                                              ; preds = %291
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %280, i64 noundef 0, ptr noundef %278, i64 noundef %279)
          to label %304 unwind label %318

304:                                              ; preds = %302, %300, %295, %303
  store i64 %286, ptr %197, align 8, !tbaa !15
  %305 = load ptr, ptr %10, align 8, !tbaa !11
  %306 = getelementptr inbounds i8, ptr %305, i64 %286
  store i8 0, ptr %306, align 1, !tbaa !19
  %307 = load ptr, ptr %12, align 8, !tbaa !11
  %308 = icmp eq ptr %307, %252
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i64, ptr %251, align 8, !tbaa !15
  %311 = icmp ult i64 %310, 16
  call void @llvm.assume(i1 %311)
  br label %313

312:                                              ; preds = %304
  call void @_ZdlPv(ptr noundef %307) #26
  br label %313

313:                                              ; preds = %309, %312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  %314 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %276, i64 1
  %315 = icmp eq ptr %314, %248
  br i1 %315, label %253, label %275

316:                                              ; preds = %275
  %317 = landingpad { ptr, i32 }
          cleanup
  br label %330

318:                                              ; preds = %303
  %319 = landingpad { ptr, i32 }
          cleanup
  br label %322

320:                                              ; preds = %283
  %321 = landingpad { ptr, i32 }
          cleanup
  br label %322

322:                                              ; preds = %320, %318
  %323 = phi { ptr, i32 } [ %319, %318 ], [ %321, %320 ]
  %324 = load ptr, ptr %12, align 8, !tbaa !11
  %325 = icmp eq ptr %324, %252
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i64, ptr %251, align 8, !tbaa !15
  %328 = icmp ult i64 %327, 16
  call void @llvm.assume(i1 %328)
  br label %330

329:                                              ; preds = %322
  call void @_ZdlPv(ptr noundef %324) #26
  br label %330

330:                                              ; preds = %329, %326, %316
  %331 = phi { ptr, i32 } [ %317, %316 ], [ %323, %326 ], [ %323, %329 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  br label %481

332:                                              ; preds = %274, %272, %270
  %333 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 %256, ptr %333, align 8, !tbaa !15
  %334 = getelementptr inbounds i8, ptr %271, i64 %256
  store i8 0, ptr %334, align 1, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %335 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %13, i64 0, i32 1
  store i64 0, ptr %335, align 8, !tbaa !155, !alias.scope !263
  %336 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %13, i64 0, i32 2
  %337 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %13, i64 0, i32 2, i32 2
  store ptr %337, ptr %336, align 8, !tbaa !18, !alias.scope !263
  %338 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %13, i64 0, i32 2, i32 1
  store i8 0, ptr %337, align 8, !tbaa !19, !alias.scope !263
  store i32 1, ptr %13, align 8, !tbaa !151, !alias.scope !263
  %339 = load ptr, ptr %14, align 8, !tbaa !11, !noalias !263
  %340 = icmp eq ptr %339, %254
  br i1 %340, label %341, label %349

341:                                              ; preds = %332
  %342 = load i64, ptr %333, align 8, !tbaa !15, !noalias !263
  %343 = icmp ult i64 %342, 16
  call void @llvm.assume(i1 %343)
  switch i64 %342, label %346 [
    i64 0, label %347
    i64 1, label %344
  ]

344:                                              ; preds = %341
  %345 = load i8, ptr %254, align 8, !tbaa !19
  store i8 %345, ptr %337, align 8, !tbaa !19, !alias.scope !263
  br label %347

346:                                              ; preds = %341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %337, ptr nonnull align 8 %254, i64 %342, i1 false)
  br label %347

347:                                              ; preds = %346, %344, %341
  store i64 %342, ptr %338, align 8, !tbaa !15, !alias.scope !263
  %348 = getelementptr inbounds i8, ptr %337, i64 %342
  store i8 0, ptr %348, align 1, !tbaa !19, !alias.scope !263
  br label %352

349:                                              ; preds = %332
  store ptr %339, ptr %336, align 8, !tbaa !11, !alias.scope !263
  %350 = load <2 x i64>, ptr %333, align 8, !tbaa !19, !noalias !263
  store <2 x i64> %350, ptr %338, align 8, !tbaa !19, !alias.scope !263
  store ptr %254, ptr %14, align 8, !tbaa !11, !noalias !263
  %351 = extractelement <2 x i64> %350, i64 0
  br label %352

352:                                              ; preds = %347, %349
  %353 = phi i64 [ %342, %347 ], [ %351, %349 ]
  %354 = phi ptr [ %337, %347 ], [ %339, %349 ]
  store i64 0, ptr %333, align 8, !tbaa !15, !noalias !263
  store i8 0, ptr %254, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %355 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !11
  %357 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 2
  %358 = icmp eq ptr %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %361 = load i64, ptr %360, align 8, !tbaa !15
  %362 = icmp ult i64 %361, 16
  call void @llvm.assume(i1 %362)
  %363 = icmp eq ptr %354, %337
  br i1 %363, label %366, label %379

364:                                              ; preds = %352
  %365 = icmp eq ptr %354, %337
  br i1 %365, label %366, label %381

366:                                              ; preds = %364, %359
  %367 = icmp ult i64 %353, 16
  call void @llvm.assume(i1 %367)
  %368 = icmp eq ptr %13, %2
  br i1 %368, label %388, label %369, !prof !37

369:                                              ; preds = %366
  switch i64 %353, label %372 [
    i64 0, label %373
    i64 1, label %370
  ]

370:                                              ; preds = %369
  %371 = load i8, ptr %337, align 8, !tbaa !19
  store i8 %371, ptr %356, align 1, !tbaa !19
  br label %373

372:                                              ; preds = %369
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %356, ptr nonnull align 8 %337, i64 %353, i1 false)
  br label %373

373:                                              ; preds = %372, %370, %369
  %374 = load i64, ptr %338, align 8, !tbaa !15
  %375 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %374, ptr %375, align 8, !tbaa !15
  %376 = load ptr, ptr %355, align 8, !tbaa !11
  %377 = getelementptr inbounds i8, ptr %376, i64 %374
  store i8 0, ptr %377, align 1, !tbaa !19
  %378 = load ptr, ptr %336, align 8, !tbaa !11
  br label %388

379:                                              ; preds = %359
  store ptr %354, ptr %355, align 8, !tbaa !11
  store i64 %353, ptr %360, align 8, !tbaa !15
  %380 = load i64, ptr %337, align 8, !tbaa !19
  store i64 %380, ptr %357, align 8, !tbaa !19
  br label %387

381:                                              ; preds = %364
  %382 = load i64, ptr %357, align 8, !tbaa !19
  store ptr %354, ptr %355, align 8, !tbaa !11
  %383 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %353, ptr %383, align 8, !tbaa !15
  %384 = load i64, ptr %337, align 8, !tbaa !19
  store i64 %384, ptr %357, align 8, !tbaa !19
  %385 = icmp eq ptr %356, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %381
  store ptr %356, ptr %336, align 8, !tbaa !11
  store i64 %382, ptr %337, align 8, !tbaa !19
  br label %388

387:                                              ; preds = %381, %379
  store ptr %337, ptr %336, align 8, !tbaa !11
  br label %388

388:                                              ; preds = %366, %373, %386, %387
  %389 = phi ptr [ %378, %373 ], [ %356, %386 ], [ %337, %387 ], [ %337, %366 ]
  store i64 0, ptr %338, align 8, !tbaa !15
  store i8 0, ptr %389, align 1, !tbaa !19
  %390 = load ptr, ptr %336, align 8, !tbaa !11
  %391 = icmp eq ptr %390, %337
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i64, ptr %338, align 8, !tbaa !15
  %394 = icmp ult i64 %393, 16
  call void @llvm.assume(i1 %394)
  br label %396

395:                                              ; preds = %388
  call void @_ZdlPv(ptr noundef %390) #26
  br label %396

396:                                              ; preds = %392, %395
  %397 = load ptr, ptr %14, align 8, !tbaa !11
  %398 = icmp eq ptr %397, %254
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i64, ptr %333, align 8, !tbaa !15
  %401 = icmp ult i64 %400, 16
  call void @llvm.assume(i1 %401)
  br label %403

402:                                              ; preds = %396
  call void @_ZdlPv(ptr noundef %397) #26
  br label %403

403:                                              ; preds = %399, %402
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #27
  br label %447

404:                                              ; preds = %267, %265, %260
  %405 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #27
  br label %481

406:                                              ; preds = %192, %242
  %407 = load ptr, ptr %9, align 8, !tbaa !38
  %408 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !38
  %410 = icmp eq ptr %407, %409
  br i1 %410, label %411, label %439

411:                                              ; preds = %439, %406
  %412 = phi i64 [ 0, %406 ], [ %444, %439 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #27
  %413 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %15, i64 0, i32 1
  %414 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %15, i64 0, i32 2
  %415 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %15, i64 0, i32 2, i32 2
  store ptr %415, ptr %414, align 8, !tbaa !18, !alias.scope !266
  %416 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %15, i64 0, i32 2, i32 1
  store i8 0, ptr %415, align 8, !tbaa !19, !alias.scope !266
  store i32 0, ptr %15, align 8, !tbaa !151, !alias.scope !266
  store i64 %412, ptr %413, align 8, !tbaa !155, !alias.scope !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false)
  %417 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !11
  %419 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 2
  %420 = icmp eq ptr %418, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %411
  %422 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %423 = load i64, ptr %422, align 8, !tbaa !15
  %424 = icmp ult i64 %423, 16
  call void @llvm.assume(i1 %424)
  br label %425

425:                                              ; preds = %411, %421
  %426 = icmp eq ptr %15, %2
  br i1 %426, label %430, label %427, !prof !37

427:                                              ; preds = %425
  %428 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 0, ptr %428, align 8, !tbaa !15
  store i8 0, ptr %418, align 1, !tbaa !19
  %429 = load ptr, ptr %414, align 8, !tbaa !11
  br label %430

430:                                              ; preds = %425, %427
  %431 = phi ptr [ %429, %427 ], [ %415, %425 ]
  store i64 0, ptr %416, align 8, !tbaa !15
  store i8 0, ptr %431, align 1, !tbaa !19
  %432 = load ptr, ptr %414, align 8, !tbaa !11
  %433 = icmp eq ptr %432, %415
  br i1 %433, label %434, label %437

434:                                              ; preds = %430
  %435 = load i64, ptr %416, align 8, !tbaa !15
  %436 = icmp ult i64 %435, 16
  call void @llvm.assume(i1 %436)
  br label %438

437:                                              ; preds = %430
  call void @_ZdlPv(ptr noundef %432) #26
  br label %438

438:                                              ; preds = %434, %437
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #27
  br label %447

439:                                              ; preds = %406, %439
  %440 = phi i64 [ %444, %439 ], [ 0, %406 ]
  %441 = phi ptr [ %445, %439 ], [ %407, %406 ]
  %442 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %441, i64 0, i32 1
  %443 = load i64, ptr %442, align 8, !tbaa !155
  %444 = add nsw i64 %443, %440
  %445 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %441, i64 1
  %446 = icmp eq ptr %445, %409
  br i1 %446, label %411, label %439

447:                                              ; preds = %241, %438, %403
  %448 = phi i1 [ true, %438 ], [ true, %403 ], [ false, %241 ]
  %449 = load ptr, ptr %10, align 8, !tbaa !11
  %450 = icmp eq ptr %449, %196
  br i1 %450, label %451, label %454

451:                                              ; preds = %447
  %452 = load i64, ptr %197, align 8, !tbaa !15
  %453 = icmp ult i64 %452, 16
  call void @llvm.assume(i1 %453)
  br label %455

454:                                              ; preds = %447
  call void @_ZdlPv(ptr noundef %449) #26
  br label %455

455:                                              ; preds = %451, %454
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  %456 = load ptr, ptr %9, align 8, !tbaa !259
  %457 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !261
  %459 = icmp eq ptr %456, %458
  br i1 %459, label %476, label %460

460:                                              ; preds = %455, %471
  %461 = phi ptr [ %472, %471 ], [ %456, %455 ]
  %462 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %461, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !11
  %464 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %461, i64 0, i32 2, i32 2
  %465 = icmp eq ptr %463, %464
  br i1 %465, label %466, label %470

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %461, i64 0, i32 2, i32 1
  %468 = load i64, ptr %467, align 8, !tbaa !15
  %469 = icmp ult i64 %468, 16
  call void @llvm.assume(i1 %469)
  br label %471

470:                                              ; preds = %460
  call void @_ZdlPv(ptr noundef %463) #26
  br label %471

471:                                              ; preds = %470, %466
  %472 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %461, i64 1
  %473 = icmp eq ptr %472, %458
  br i1 %473, label %474, label %460, !llvm.loop !269

474:                                              ; preds = %471
  %475 = load ptr, ptr %9, align 8, !tbaa !259
  br label %476

476:                                              ; preds = %474, %455
  %477 = phi ptr [ %475, %474 ], [ %456, %455 ]
  %478 = icmp eq ptr %477, null
  br i1 %478, label %480, label %479

479:                                              ; preds = %476
  call void @_ZdlPv(ptr noundef nonnull %477) #26
  br label %480

480:                                              ; preds = %476, %479
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  br label %954

481:                                              ; preds = %404, %330, %224
  %482 = phi { ptr, i32 } [ %331, %330 ], [ %405, %404 ], [ %217, %224 ]
  %483 = load ptr, ptr %10, align 8, !tbaa !11
  %484 = icmp eq ptr %483, %196
  br i1 %484, label %485, label %488

485:                                              ; preds = %481
  %486 = load i64, ptr %197, align 8, !tbaa !15
  %487 = icmp ult i64 %486, 16
  call void @llvm.assume(i1 %487)
  br label %489

488:                                              ; preds = %481
  call void @_ZdlPv(ptr noundef %483) #26
  br label %489

489:                                              ; preds = %485, %488
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br label %490

490:                                              ; preds = %489, %209
  %491 = phi { ptr, i32 } [ %482, %489 ], [ %210, %209 ]
  call void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  br label %987

492:                                              ; preds = %176
  %493 = load i64, ptr %25, align 8, !tbaa !15
  %494 = icmp eq i64 %493, 11
  br i1 %494, label %495, label %643

495:                                              ; preds = %492
  %496 = load ptr, ptr %5, align 8
  %497 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %496, ptr noundef nonnull dereferenceable(11) @.str.95, i64 11)
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %645

499:                                              ; preds = %495
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #27
  %500 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %500, ptr %16, align 8, !tbaa !18
  %501 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 0, ptr %501, align 8, !tbaa !15
  store i8 0, ptr %500, align 8, !tbaa !19
  %502 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
          to label %503 unwind label %630

503:                                              ; preds = %499
  %504 = load ptr, ptr %502, align 8, !tbaa !23
  %505 = getelementptr i8, ptr %504, i64 -24
  %506 = load i64, ptr %505, align 8
  %507 = getelementptr inbounds i8, ptr %502, i64 %506
  %508 = getelementptr inbounds %"class.std::basic_ios", ptr %507, i64 0, i32 5
  %509 = load ptr, ptr %508, align 8, !tbaa !25
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %513

511:                                              ; preds = %503
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %512 unwind label %630

512:                                              ; preds = %511
  unreachable

513:                                              ; preds = %503
  %514 = getelementptr inbounds %"class.std::ctype", ptr %509, i64 0, i32 8
  %515 = load i8, ptr %514, align 8, !tbaa !34
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %"class.std::ctype", ptr %509, i64 0, i32 9, i64 10
  %519 = load i8, ptr %518, align 1, !tbaa !19
  br label %526

520:                                              ; preds = %513
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %509)
          to label %521 unwind label %630

521:                                              ; preds = %520
  %522 = load ptr, ptr %509, align 8, !tbaa !23
  %523 = getelementptr inbounds ptr, ptr %522, i64 6
  %524 = load ptr, ptr %523, align 8
  %525 = invoke noundef signext i8 %524(ptr noundef nonnull align 8 dereferenceable(570) %509, i8 noundef signext 10)
          to label %526 unwind label %630

526:                                              ; preds = %521, %517
  %527 = phi i8 [ %519, %517 ], [ %525, %521 ]
  %528 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %502, ptr noundef nonnull align 8 dereferenceable(32) %16, i8 noundef signext %527)
          to label %529 unwind label %630

529:                                              ; preds = %526
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %17) #27
  %530 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %530, ptr %18, align 8, !tbaa !18
  %531 = load ptr, ptr %16, align 8, !tbaa !11
  %532 = load i64, ptr %501, align 8, !tbaa !15
  %533 = icmp ugt i64 %532, 15
  br i1 %533, label %534, label %546

534:                                              ; preds = %529
  %535 = icmp slt i64 %532, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %534
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %537 unwind label %632

537:                                              ; preds = %536
  unreachable

538:                                              ; preds = %534
  %539 = add nuw i64 %532, 1
  %540 = icmp slt i64 %539, 0
  br i1 %540, label %541, label %543, !prof !37

541:                                              ; preds = %538
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %542 unwind label %632

542:                                              ; preds = %541
  unreachable

543:                                              ; preds = %538
  %544 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %539) #29
          to label %545 unwind label %632

545:                                              ; preds = %543
  store ptr %544, ptr %18, align 8, !tbaa !11
  store i64 %532, ptr %530, align 8, !tbaa !19
  br label %546

546:                                              ; preds = %545, %529
  %547 = phi ptr [ %544, %545 ], [ %530, %529 ]
  switch i64 %532, label %550 [
    i64 1, label %548
    i64 0, label %551
  ]

548:                                              ; preds = %546
  %549 = load i8, ptr %531, align 1, !tbaa !19
  store i8 %549, ptr %547, align 1, !tbaa !19
  br label %551

550:                                              ; preds = %546
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %547, ptr align 1 %531, i64 %532, i1 false)
  br label %551

551:                                              ; preds = %550, %548, %546
  %552 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %532, ptr %552, align 8, !tbaa !15
  %553 = getelementptr inbounds i8, ptr %547, i64 %532
  store i8 0, ptr %553, align 1, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %554 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 1
  store i64 0, ptr %554, align 8, !tbaa !155, !alias.scope !270
  %555 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2
  %556 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2, i32 2
  store ptr %556, ptr %555, align 8, !tbaa !18, !alias.scope !270
  %557 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %17, i64 0, i32 2, i32 1
  store i8 0, ptr %556, align 8, !tbaa !19, !alias.scope !270
  store i32 1, ptr %17, align 8, !tbaa !151, !alias.scope !270
  %558 = load ptr, ptr %18, align 8, !tbaa !11, !noalias !270
  %559 = icmp eq ptr %558, %530
  br i1 %559, label %560, label %568

560:                                              ; preds = %551
  %561 = load i64, ptr %552, align 8, !tbaa !15, !noalias !270
  %562 = icmp ult i64 %561, 16
  call void @llvm.assume(i1 %562)
  switch i64 %561, label %565 [
    i64 0, label %566
    i64 1, label %563
  ]

563:                                              ; preds = %560
  %564 = load i8, ptr %530, align 8, !tbaa !19
  store i8 %564, ptr %556, align 8, !tbaa !19, !alias.scope !270
  br label %566

565:                                              ; preds = %560
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %556, ptr nonnull align 8 %530, i64 %561, i1 false)
  br label %566

566:                                              ; preds = %565, %563, %560
  store i64 %561, ptr %557, align 8, !tbaa !15, !alias.scope !270
  %567 = getelementptr inbounds i8, ptr %556, i64 %561
  store i8 0, ptr %567, align 1, !tbaa !19, !alias.scope !270
  br label %571

568:                                              ; preds = %551
  store ptr %558, ptr %555, align 8, !tbaa !11, !alias.scope !270
  %569 = load <2 x i64>, ptr %552, align 8, !tbaa !19, !noalias !270
  store <2 x i64> %569, ptr %557, align 8, !tbaa !19, !alias.scope !270
  store ptr %530, ptr %18, align 8, !tbaa !11, !noalias !270
  %570 = extractelement <2 x i64> %569, i64 0
  br label %571

571:                                              ; preds = %566, %568
  %572 = phi i64 [ %561, %566 ], [ %570, %568 ]
  %573 = phi ptr [ %556, %566 ], [ %558, %568 ]
  store i64 0, ptr %552, align 8, !tbaa !15, !noalias !270
  store i8 0, ptr %530, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %574 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !11
  %576 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 2
  %577 = icmp eq ptr %575, %576
  br i1 %577, label %578, label %583

578:                                              ; preds = %571
  %579 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %580 = load i64, ptr %579, align 8, !tbaa !15
  %581 = icmp ult i64 %580, 16
  call void @llvm.assume(i1 %581)
  %582 = icmp eq ptr %573, %556
  br i1 %582, label %585, label %598

583:                                              ; preds = %571
  %584 = icmp eq ptr %573, %556
  br i1 %584, label %585, label %600

585:                                              ; preds = %583, %578
  %586 = icmp ult i64 %572, 16
  call void @llvm.assume(i1 %586)
  %587 = icmp eq ptr %17, %2
  br i1 %587, label %607, label %588, !prof !37

588:                                              ; preds = %585
  switch i64 %572, label %591 [
    i64 0, label %592
    i64 1, label %589
  ]

589:                                              ; preds = %588
  %590 = load i8, ptr %556, align 8, !tbaa !19
  store i8 %590, ptr %575, align 1, !tbaa !19
  br label %592

591:                                              ; preds = %588
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %575, ptr nonnull align 8 %556, i64 %572, i1 false)
  br label %592

592:                                              ; preds = %591, %589, %588
  %593 = load i64, ptr %557, align 8, !tbaa !15
  %594 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %593, ptr %594, align 8, !tbaa !15
  %595 = load ptr, ptr %574, align 8, !tbaa !11
  %596 = getelementptr inbounds i8, ptr %595, i64 %593
  store i8 0, ptr %596, align 1, !tbaa !19
  %597 = load ptr, ptr %555, align 8, !tbaa !11
  br label %607

598:                                              ; preds = %578
  store ptr %573, ptr %574, align 8, !tbaa !11
  store i64 %572, ptr %579, align 8, !tbaa !15
  %599 = load i64, ptr %556, align 8, !tbaa !19
  store i64 %599, ptr %576, align 8, !tbaa !19
  br label %606

600:                                              ; preds = %583
  %601 = load i64, ptr %576, align 8, !tbaa !19
  store ptr %573, ptr %574, align 8, !tbaa !11
  %602 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %572, ptr %602, align 8, !tbaa !15
  %603 = load i64, ptr %556, align 8, !tbaa !19
  store i64 %603, ptr %576, align 8, !tbaa !19
  %604 = icmp eq ptr %575, null
  br i1 %604, label %606, label %605

605:                                              ; preds = %600
  store ptr %575, ptr %555, align 8, !tbaa !11
  store i64 %601, ptr %556, align 8, !tbaa !19
  br label %607

606:                                              ; preds = %600, %598
  store ptr %556, ptr %555, align 8, !tbaa !11
  br label %607

607:                                              ; preds = %585, %592, %605, %606
  %608 = phi ptr [ %597, %592 ], [ %575, %605 ], [ %556, %606 ], [ %556, %585 ]
  store i64 0, ptr %557, align 8, !tbaa !15
  store i8 0, ptr %608, align 1, !tbaa !19
  %609 = load ptr, ptr %555, align 8, !tbaa !11
  %610 = icmp eq ptr %609, %556
  br i1 %610, label %611, label %614

611:                                              ; preds = %607
  %612 = load i64, ptr %557, align 8, !tbaa !15
  %613 = icmp ult i64 %612, 16
  call void @llvm.assume(i1 %613)
  br label %615

614:                                              ; preds = %607
  call void @_ZdlPv(ptr noundef %609) #26
  br label %615

615:                                              ; preds = %611, %614
  %616 = load ptr, ptr %18, align 8, !tbaa !11
  %617 = icmp eq ptr %616, %530
  br i1 %617, label %618, label %621

618:                                              ; preds = %615
  %619 = load i64, ptr %552, align 8, !tbaa !15
  %620 = icmp ult i64 %619, 16
  call void @llvm.assume(i1 %620)
  br label %622

621:                                              ; preds = %615
  call void @_ZdlPv(ptr noundef %616) #26
  br label %622

622:                                              ; preds = %618, %621
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #27
  %623 = load ptr, ptr %16, align 8, !tbaa !11
  %624 = icmp eq ptr %623, %500
  br i1 %624, label %625, label %628

625:                                              ; preds = %622
  %626 = load i64, ptr %501, align 8, !tbaa !15
  %627 = icmp ult i64 %626, 16
  call void @llvm.assume(i1 %627)
  br label %629

628:                                              ; preds = %622
  call void @_ZdlPv(ptr noundef %623) #26
  br label %629

629:                                              ; preds = %625, %628
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  br label %954

630:                                              ; preds = %526, %521, %520, %511, %499
  %631 = landingpad { ptr, i32 }
          cleanup
  br label %634

632:                                              ; preds = %543, %541, %536
  %633 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #27
  br label %634

634:                                              ; preds = %632, %630
  %635 = phi { ptr, i32 } [ %633, %632 ], [ %631, %630 ]
  %636 = load ptr, ptr %16, align 8, !tbaa !11
  %637 = icmp eq ptr %636, %500
  br i1 %637, label %638, label %641

638:                                              ; preds = %634
  %639 = load i64, ptr %501, align 8, !tbaa !15
  %640 = icmp ult i64 %639, 16
  call void @llvm.assume(i1 %640)
  br label %642

641:                                              ; preds = %634
  call void @_ZdlPv(ptr noundef %636) #26
  br label %642

642:                                              ; preds = %638, %641
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  br label %987

643:                                              ; preds = %492
  %644 = icmp ugt i64 %493, 1
  br i1 %644, label %645, label %873

645:                                              ; preds = %495, %643
  %646 = load ptr, ptr %5, align 8
  %647 = load i8, ptr %646, align 1, !tbaa !19
  %648 = icmp eq i8 %647, 34
  br i1 %648, label %649, label %878

649:                                              ; preds = %645
  %650 = getelementptr i8, ptr %646, i64 %493
  %651 = getelementptr i8, ptr %650, i64 -1
  %652 = load i8, ptr %651, align 1, !tbaa !19
  %653 = icmp eq i8 %652, 34
  br i1 %653, label %654, label %878

654:                                              ; preds = %649
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %655 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  store ptr %655, ptr %20, align 8, !tbaa !18, !alias.scope !273
  %656 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 1
  store i64 0, ptr %656, align 8, !tbaa !15, !alias.scope !273
  store i8 0, ptr %655, align 8, !tbaa !19, !alias.scope !273
  %657 = icmp eq i64 %493, 2
  br i1 %657, label %658, label %667

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 1
  store i64 0, ptr %659, align 8, !tbaa !155, !alias.scope !276
  %660 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2
  %661 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2, i32 2
  store ptr %661, ptr %660, align 8, !tbaa !18, !alias.scope !276
  %662 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2, i32 1
  store i64 0, ptr %662, align 8, !tbaa !15, !alias.scope !276
  store i8 0, ptr %661, align 8, !tbaa !19, !alias.scope !276
  store i32 1, ptr %19, align 8, !tbaa !151, !alias.scope !276
  br label %802

663:                                              ; preds = %761
  %664 = and i8 %763, 1
  %665 = icmp eq i8 %664, 0
  %666 = load ptr, ptr %20, align 8, !tbaa !11
  br i1 %665, label %795, label %766

667:                                              ; preds = %654, %761
  %668 = phi i64 [ %762, %761 ], [ %493, %654 ]
  %669 = phi i64 [ %764, %761 ], [ 2, %654 ]
  %670 = phi i64 [ %669, %761 ], [ 1, %654 ]
  %671 = phi i8 [ %763, %761 ], [ 0, %654 ]
  %672 = load ptr, ptr %5, align 8, !tbaa !11, !noalias !273
  %673 = getelementptr inbounds i8, ptr %672, i64 %670
  %674 = load i8, ptr %673, align 1, !tbaa !19
  %675 = and i8 %671, 1
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %736, label %677

677:                                              ; preds = %667
  %678 = load i64, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %679 = add i64 %678, 1
  %680 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  %681 = icmp eq ptr %680, %655
  switch i8 %674, label %723 [
    i8 110, label %682
    i8 114, label %697
    i8 116, label %710
  ]

682:                                              ; preds = %677
  br i1 %681, label %683, label %685

683:                                              ; preds = %682
  %684 = icmp ult i64 %678, 16
  call void @llvm.assume(i1 %684)
  br label %685

685:                                              ; preds = %683, %682
  %686 = load i64, ptr %655, align 8, !alias.scope !273
  %687 = select i1 %681, i64 15, i64 %686
  %688 = icmp ugt i64 %679, %687
  br i1 %688, label %689, label %692

689:                                              ; preds = %685
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %678, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %690 unwind label %695

690:                                              ; preds = %689
  %691 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %692

692:                                              ; preds = %690, %685
  %693 = phi ptr [ %691, %690 ], [ %680, %685 ]
  %694 = getelementptr inbounds i8, ptr %693, i64 %678
  store i8 10, ptr %694, align 1, !tbaa !19
  br label %755

695:                                              ; preds = %749, %730, %717, %704, %689
  %696 = landingpad { ptr, i32 }
          cleanup
  br label %787

697:                                              ; preds = %677
  br i1 %681, label %698, label %700

698:                                              ; preds = %697
  %699 = icmp ult i64 %678, 16
  call void @llvm.assume(i1 %699)
  br label %700

700:                                              ; preds = %698, %697
  %701 = load i64, ptr %655, align 8, !alias.scope !273
  %702 = select i1 %681, i64 15, i64 %701
  %703 = icmp ugt i64 %679, %702
  br i1 %703, label %704, label %707

704:                                              ; preds = %700
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %678, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %705 unwind label %695

705:                                              ; preds = %704
  %706 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %707

707:                                              ; preds = %705, %700
  %708 = phi ptr [ %706, %705 ], [ %680, %700 ]
  %709 = getelementptr inbounds i8, ptr %708, i64 %678
  store i8 13, ptr %709, align 1, !tbaa !19
  br label %755

710:                                              ; preds = %677
  br i1 %681, label %711, label %713

711:                                              ; preds = %710
  %712 = icmp ult i64 %678, 16
  call void @llvm.assume(i1 %712)
  br label %713

713:                                              ; preds = %711, %710
  %714 = load i64, ptr %655, align 8, !alias.scope !273
  %715 = select i1 %681, i64 15, i64 %714
  %716 = icmp ugt i64 %679, %715
  br i1 %716, label %717, label %720

717:                                              ; preds = %713
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %678, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %718 unwind label %695

718:                                              ; preds = %717
  %719 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %720

720:                                              ; preds = %718, %713
  %721 = phi ptr [ %719, %718 ], [ %680, %713 ]
  %722 = getelementptr inbounds i8, ptr %721, i64 %678
  store i8 9, ptr %722, align 1, !tbaa !19
  br label %755

723:                                              ; preds = %677
  br i1 %681, label %724, label %726

724:                                              ; preds = %723
  %725 = icmp ult i64 %678, 16
  call void @llvm.assume(i1 %725)
  br label %726

726:                                              ; preds = %724, %723
  %727 = load i64, ptr %655, align 8, !alias.scope !273
  %728 = select i1 %681, i64 15, i64 %727
  %729 = icmp ugt i64 %679, %728
  br i1 %729, label %730, label %733

730:                                              ; preds = %726
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %678, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %731 unwind label %695

731:                                              ; preds = %730
  %732 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %733

733:                                              ; preds = %731, %726
  %734 = phi ptr [ %732, %731 ], [ %680, %726 ]
  %735 = getelementptr inbounds i8, ptr %734, i64 %678
  store i8 %674, ptr %735, align 1, !tbaa !19
  br label %755

736:                                              ; preds = %667
  %737 = icmp eq i8 %674, 92
  br i1 %737, label %761, label %738

738:                                              ; preds = %736
  %739 = load i64, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %740 = add i64 %739, 1
  %741 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  %742 = icmp eq ptr %741, %655
  br i1 %742, label %743, label %745

743:                                              ; preds = %738
  %744 = icmp ult i64 %739, 16
  call void @llvm.assume(i1 %744)
  br label %745

745:                                              ; preds = %743, %738
  %746 = load i64, ptr %655, align 8, !alias.scope !273
  %747 = select i1 %742, i64 15, i64 %746
  %748 = icmp ugt i64 %740, %747
  br i1 %748, label %749, label %752

749:                                              ; preds = %745
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %739, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %750 unwind label %695

750:                                              ; preds = %749
  %751 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %752

752:                                              ; preds = %750, %745
  %753 = phi ptr [ %751, %750 ], [ %741, %745 ]
  %754 = getelementptr inbounds i8, ptr %753, i64 %739
  store i8 %674, ptr %754, align 1, !tbaa !19
  br label %755

755:                                              ; preds = %752, %733, %720, %707, %692
  %756 = phi i64 [ %740, %752 ], [ %679, %733 ], [ %679, %720 ], [ %679, %707 ], [ %679, %692 ]
  %757 = phi i8 [ %671, %752 ], [ 0, %733 ], [ 0, %720 ], [ 0, %707 ], [ 0, %692 ]
  store i64 %756, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %758 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  %759 = getelementptr inbounds i8, ptr %758, i64 %756
  store i8 0, ptr %759, align 1, !tbaa !19
  %760 = load i64, ptr %25, align 8, !tbaa !15, !noalias !273
  br label %761

761:                                              ; preds = %755, %736
  %762 = phi i64 [ %668, %736 ], [ %760, %755 ]
  %763 = phi i8 [ 1, %736 ], [ %757, %755 ]
  %764 = add nuw i64 %669, 1
  %765 = icmp ult i64 %764, %762
  br i1 %765, label %667, label %663, !llvm.loop !279

766:                                              ; preds = %663
  %767 = load i64, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %768 = add i64 %767, 1
  %769 = icmp eq ptr %666, %655
  br i1 %769, label %770, label %772

770:                                              ; preds = %766
  %771 = icmp ult i64 %767, 16
  call void @llvm.assume(i1 %771)
  br label %772

772:                                              ; preds = %770, %766
  %773 = load i64, ptr %655, align 8, !alias.scope !273
  %774 = select i1 %769, i64 15, i64 %773
  %775 = icmp ugt i64 %768, %774
  br i1 %775, label %776, label %779

776:                                              ; preds = %772
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %767, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %777 unwind label %785

777:                                              ; preds = %776
  %778 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  br label %779

779:                                              ; preds = %777, %772
  %780 = phi ptr [ %778, %777 ], [ %666, %772 ]
  %781 = getelementptr inbounds i8, ptr %780, i64 %767
  store i8 92, ptr %781, align 1, !tbaa !19
  store i64 %768, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %782 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  %783 = getelementptr inbounds i8, ptr %782, i64 %768
  store i8 0, ptr %783, align 1, !tbaa !19
  %784 = load ptr, ptr %20, align 8, !tbaa !11, !noalias !280
  br label %795

785:                                              ; preds = %776
  %786 = landingpad { ptr, i32 }
          cleanup
  br label %787

787:                                              ; preds = %785, %695
  %788 = phi { ptr, i32 } [ %696, %695 ], [ %786, %785 ]
  %789 = load ptr, ptr %20, align 8, !tbaa !11, !alias.scope !273
  %790 = icmp eq ptr %789, %655
  br i1 %790, label %791, label %794

791:                                              ; preds = %787
  %792 = load i64, ptr %656, align 8, !tbaa !15, !alias.scope !273
  %793 = icmp ult i64 %792, 16
  call void @llvm.assume(i1 %793)
  br label %872

794:                                              ; preds = %787
  call void @_ZdlPv(ptr noundef %789) #26
  br label %872

795:                                              ; preds = %779, %663
  %796 = phi ptr [ %784, %779 ], [ %666, %663 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %797 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 1
  store i64 0, ptr %797, align 8, !tbaa !155, !alias.scope !280
  %798 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2
  %799 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2, i32 2
  store ptr %799, ptr %798, align 8, !tbaa !18, !alias.scope !280
  %800 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2, i32 1
  store i8 0, ptr %799, align 8, !tbaa !19, !alias.scope !280
  store i32 1, ptr %19, align 8, !tbaa !151, !alias.scope !280
  %801 = icmp eq ptr %796, %655
  br i1 %801, label %802, label %814

802:                                              ; preds = %658, %795
  %803 = phi ptr [ %662, %658 ], [ %800, %795 ]
  %804 = phi ptr [ %661, %658 ], [ %799, %795 ]
  %805 = phi ptr [ %660, %658 ], [ %798, %795 ]
  %806 = load i64, ptr %656, align 8, !tbaa !15, !noalias !280
  %807 = icmp ult i64 %806, 16
  call void @llvm.assume(i1 %807)
  switch i64 %806, label %810 [
    i64 0, label %811
    i64 1, label %808
  ]

808:                                              ; preds = %802
  %809 = load i8, ptr %655, align 8, !tbaa !19
  store i8 %809, ptr %804, align 1, !tbaa !19, !alias.scope !280
  br label %811

810:                                              ; preds = %802
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %804, ptr nonnull align 8 %655, i64 %806, i1 false)
  br label %811

811:                                              ; preds = %810, %808, %802
  %812 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %19, i64 0, i32 2, i32 2
  store i64 %806, ptr %803, align 8, !tbaa !15, !alias.scope !280
  %813 = getelementptr inbounds i8, ptr %812, i64 %806
  store i8 0, ptr %813, align 1, !tbaa !19, !alias.scope !280
  br label %817

814:                                              ; preds = %795
  store ptr %796, ptr %798, align 8, !tbaa !11, !alias.scope !280
  %815 = load <2 x i64>, ptr %656, align 8, !tbaa !19, !noalias !280
  store <2 x i64> %815, ptr %800, align 8, !tbaa !19, !alias.scope !280
  store ptr %655, ptr %20, align 8, !tbaa !11, !noalias !280
  %816 = extractelement <2 x i64> %815, i64 0
  br label %817

817:                                              ; preds = %811, %814
  %818 = phi ptr [ %803, %811 ], [ %800, %814 ]
  %819 = phi ptr [ %804, %811 ], [ %799, %814 ]
  %820 = phi ptr [ %805, %811 ], [ %798, %814 ]
  %821 = phi i64 [ %806, %811 ], [ %816, %814 ]
  %822 = phi ptr [ %804, %811 ], [ %796, %814 ]
  store i64 0, ptr %656, align 8, !tbaa !15, !noalias !280
  store i8 0, ptr %655, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false)
  %823 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %824 = load ptr, ptr %823, align 8, !tbaa !11
  %825 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 2
  %826 = icmp eq ptr %824, %825
  br i1 %826, label %827, label %832

827:                                              ; preds = %817
  %828 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %829 = load i64, ptr %828, align 8, !tbaa !15
  %830 = icmp ult i64 %829, 16
  call void @llvm.assume(i1 %830)
  %831 = icmp eq ptr %822, %819
  br i1 %831, label %834, label %847

832:                                              ; preds = %817
  %833 = icmp eq ptr %822, %819
  br i1 %833, label %834, label %849

834:                                              ; preds = %832, %827
  %835 = icmp ult i64 %821, 16
  call void @llvm.assume(i1 %835)
  %836 = icmp eq ptr %19, %2
  br i1 %836, label %856, label %837, !prof !37

837:                                              ; preds = %834
  switch i64 %821, label %840 [
    i64 0, label %841
    i64 1, label %838
  ]

838:                                              ; preds = %837
  %839 = load i8, ptr %819, align 1, !tbaa !19
  store i8 %839, ptr %824, align 1, !tbaa !19
  br label %841

840:                                              ; preds = %837
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %824, ptr nonnull align 8 %819, i64 %821, i1 false)
  br label %841

841:                                              ; preds = %840, %838, %837
  %842 = load i64, ptr %818, align 8, !tbaa !15
  %843 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %842, ptr %843, align 8, !tbaa !15
  %844 = load ptr, ptr %823, align 8, !tbaa !11
  %845 = getelementptr inbounds i8, ptr %844, i64 %842
  store i8 0, ptr %845, align 1, !tbaa !19
  %846 = load ptr, ptr %820, align 8, !tbaa !11
  br label %856

847:                                              ; preds = %827
  store ptr %822, ptr %823, align 8, !tbaa !11
  store i64 %821, ptr %828, align 8, !tbaa !15
  %848 = load i64, ptr %819, align 8, !tbaa !19
  store i64 %848, ptr %825, align 8, !tbaa !19
  br label %855

849:                                              ; preds = %832
  %850 = load i64, ptr %825, align 8, !tbaa !19
  store ptr %822, ptr %823, align 8, !tbaa !11
  %851 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 %821, ptr %851, align 8, !tbaa !15
  %852 = load i64, ptr %819, align 8, !tbaa !19
  store i64 %852, ptr %825, align 8, !tbaa !19
  %853 = icmp eq ptr %824, null
  br i1 %853, label %855, label %854

854:                                              ; preds = %849
  store ptr %824, ptr %820, align 8, !tbaa !11
  store i64 %850, ptr %819, align 8, !tbaa !19
  br label %856

855:                                              ; preds = %849, %847
  store ptr %819, ptr %820, align 8, !tbaa !11
  br label %856

856:                                              ; preds = %834, %841, %854, %855
  %857 = phi ptr [ %846, %841 ], [ %824, %854 ], [ %819, %855 ], [ %819, %834 ]
  store i64 0, ptr %818, align 8, !tbaa !15
  store i8 0, ptr %857, align 1, !tbaa !19
  %858 = load ptr, ptr %820, align 8, !tbaa !11
  %859 = icmp eq ptr %858, %819
  br i1 %859, label %860, label %863

860:                                              ; preds = %856
  %861 = load i64, ptr %818, align 8, !tbaa !15
  %862 = icmp ult i64 %861, 16
  call void @llvm.assume(i1 %862)
  br label %864

863:                                              ; preds = %856
  call void @_ZdlPv(ptr noundef %858) #26
  br label %864

864:                                              ; preds = %860, %863
  %865 = load ptr, ptr %20, align 8, !tbaa !11
  %866 = icmp eq ptr %865, %655
  br i1 %866, label %867, label %870

867:                                              ; preds = %864
  %868 = load i64, ptr %656, align 8, !tbaa !15
  %869 = icmp ult i64 %868, 16
  call void @llvm.assume(i1 %869)
  br label %871

870:                                              ; preds = %864
  call void @_ZdlPv(ptr noundef %865) #26
  br label %871

871:                                              ; preds = %867, %870
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #27
  br label %954

872:                                              ; preds = %791, %794
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #27
  br label %987

873:                                              ; preds = %643
  %874 = icmp eq i64 %493, 0
  br i1 %874, label %944, label %875

875:                                              ; preds = %873
  %876 = load ptr, ptr %5, align 8
  %877 = load i8, ptr %876, align 1, !tbaa !19
  br label %878

878:                                              ; preds = %875, %645, %649
  %879 = phi i8 [ %877, %875 ], [ %647, %645 ], [ 34, %649 ]
  %880 = phi ptr [ %876, %875 ], [ %646, %645 ], [ %646, %649 ]
  %881 = icmp eq i8 %879, 45
  %882 = icmp eq i8 %879, 43
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i64
  %885 = icmp eq i64 %493, %884
  br i1 %885, label %944, label %886

886:                                              ; preds = %878
  %887 = icmp ugt i64 %493, %884
  br i1 %887, label %891, label %898

888:                                              ; preds = %891
  %889 = add i64 %892, 1
  %890 = icmp eq i64 %889, %493
  br i1 %890, label %898, label %891, !llvm.loop !282

891:                                              ; preds = %886, %888
  %892 = phi i64 [ %889, %888 ], [ %884, %886 ]
  %893 = getelementptr inbounds i8, ptr %880, i64 %892
  %894 = load i8, ptr %893, align 1, !tbaa !19
  %895 = zext i8 %894 to i32
  %896 = add nsw i32 %895, -48
  %897 = icmp ult i32 %896, 10
  br i1 %897, label %888, label %944

898:                                              ; preds = %888, %886
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %899 = tail call ptr @__errno_location() #32
  %900 = load i32, ptr %899, align 4, !tbaa !283
  store i32 0, ptr %899, align 4, !tbaa !283
  %901 = call noundef i64 @__isoc23_strtoll(ptr noundef nonnull %880, ptr noundef nonnull %4, i32 noundef 10)
  %902 = load ptr, ptr %4, align 8, !tbaa !38
  %903 = icmp eq ptr %902, %880
  br i1 %903, label %904, label %912

904:                                              ; preds = %898
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.97) #28
          to label %905 unwind label %906

905:                                              ; preds = %904
  unreachable

906:                                              ; preds = %914, %904
  %907 = landingpad { ptr, i32 }
          cleanup
  %908 = load i32, ptr %899, align 4, !tbaa !283
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %911

910:                                              ; preds = %906
  store i32 %900, ptr %899, align 4, !tbaa !283
  br label %911

911:                                              ; preds = %910, %906
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #27
  br label %987

912:                                              ; preds = %898
  %913 = load i32, ptr %899, align 4, !tbaa !283
  switch i32 %913, label %917 [
    i32 34, label %914
    i32 0, label %916
  ]

914:                                              ; preds = %912
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.97) #28
          to label %915 unwind label %906

915:                                              ; preds = %914
  unreachable

916:                                              ; preds = %912
  store i32 %900, ptr %899, align 4, !tbaa !283
  br label %917

917:                                              ; preds = %912, %916
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %918 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %21, i64 0, i32 1
  %919 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %21, i64 0, i32 2
  %920 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %21, i64 0, i32 2, i32 2
  store ptr %920, ptr %919, align 8, !tbaa !18, !alias.scope !284
  %921 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %21, i64 0, i32 2, i32 1
  store i8 0, ptr %920, align 8, !tbaa !19, !alias.scope !284
  store i32 0, ptr %21, align 8, !tbaa !151, !alias.scope !284
  store i64 %901, ptr %918, align 8, !tbaa !155, !alias.scope !284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  %922 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !11
  %924 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 2
  %925 = icmp eq ptr %923, %924
  br i1 %925, label %926, label %930

926:                                              ; preds = %917
  %927 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %928 = load i64, ptr %927, align 8, !tbaa !15
  %929 = icmp ult i64 %928, 16
  call void @llvm.assume(i1 %929)
  br label %930

930:                                              ; preds = %917, %926
  %931 = icmp eq ptr %21, %2
  br i1 %931, label %935, label %932, !prof !37

932:                                              ; preds = %930
  %933 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  store i64 0, ptr %933, align 8, !tbaa !15
  store i8 0, ptr %923, align 1, !tbaa !19
  %934 = load ptr, ptr %919, align 8, !tbaa !11
  br label %935

935:                                              ; preds = %930, %932
  %936 = phi ptr [ %934, %932 ], [ %920, %930 ]
  store i64 0, ptr %921, align 8, !tbaa !15
  store i8 0, ptr %936, align 1, !tbaa !19
  %937 = load ptr, ptr %919, align 8, !tbaa !11
  %938 = icmp eq ptr %937, %920
  br i1 %938, label %939, label %942

939:                                              ; preds = %935
  %940 = load i64, ptr %921, align 8, !tbaa !15
  %941 = icmp ult i64 %940, 16
  call void @llvm.assume(i1 %941)
  br label %943

942:                                              ; preds = %935
  call void @_ZdlPv(ptr noundef %937) #26
  br label %943

943:                                              ; preds = %939, %942
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %21) #27
  br label %954

944:                                              ; preds = %891, %873, %878
  %945 = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %946 unwind label %952

946:                                              ; preds = %944
  %947 = icmp eq ptr %945, null
  br i1 %947, label %954, label %948

948:                                              ; preds = %946
  %949 = getelementptr inbounds i8, ptr %945, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %949, i64 16, i1 false)
  %950 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %951 = getelementptr inbounds i8, ptr %945, i64 56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %950, ptr noundef nonnull align 8 dereferenceable(32) %951)
          to label %954 unwind label %952

952:                                              ; preds = %948, %944
  %953 = landingpad { ptr, i32 }
          cleanup
  br label %987

954:                                              ; preds = %946, %948, %943, %871, %629, %480
  %955 = phi i1 [ %448, %480 ], [ true, %629 ], [ true, %871 ], [ true, %943 ], [ true, %948 ], [ false, %946 ]
  %956 = load ptr, ptr %8, align 8, !tbaa !5
  %957 = load ptr, ptr %177, align 8, !tbaa !10
  %958 = icmp eq ptr %956, %957
  br i1 %958, label %974, label %959

959:                                              ; preds = %954, %969
  %960 = phi ptr [ %970, %969 ], [ %956, %954 ]
  %961 = load ptr, ptr %960, align 8, !tbaa !11
  %962 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %960, i64 0, i32 2
  %963 = icmp eq ptr %961, %962
  br i1 %963, label %964, label %968

964:                                              ; preds = %959
  %965 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %960, i64 0, i32 1
  %966 = load i64, ptr %965, align 8, !tbaa !15
  %967 = icmp ult i64 %966, 16
  call void @llvm.assume(i1 %967)
  br label %969

968:                                              ; preds = %959
  call void @_ZdlPv(ptr noundef %961) #26
  br label %969

969:                                              ; preds = %968, %964
  %970 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %960, i64 1
  %971 = icmp eq ptr %970, %957
  br i1 %971, label %972, label %959, !llvm.loop !16

972:                                              ; preds = %969
  %973 = load ptr, ptr %8, align 8, !tbaa !5
  br label %974

974:                                              ; preds = %972, %954
  %975 = phi ptr [ %973, %972 ], [ %956, %954 ]
  %976 = icmp eq ptr %975, null
  br i1 %976, label %978, label %977

977:                                              ; preds = %974
  call void @_ZdlPv(ptr noundef nonnull %975) #26
  br label %978

978:                                              ; preds = %974, %977
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  %979 = load ptr, ptr %5, align 8, !tbaa !11
  %980 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %981 = icmp eq ptr %979, %980
  br i1 %981, label %982, label %985

982:                                              ; preds = %978
  %983 = load i64, ptr %25, align 8, !tbaa !15
  %984 = icmp ult i64 %983, 16
  call void @llvm.assume(i1 %984)
  br label %986

985:                                              ; preds = %978
  call void @_ZdlPv(ptr noundef %979) #26
  br label %986

986:                                              ; preds = %982, %985
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret i1 %955

987:                                              ; preds = %952, %911, %872, %642, %490
  %988 = phi { ptr, i32 } [ %491, %490 ], [ %635, %642 ], [ %788, %872 ], [ %907, %911 ], [ %953, %952 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %989

989:                                              ; preds = %987, %207
  %990 = phi { ptr, i32 } [ %988, %987 ], [ %208, %207 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  br label %991

991:                                              ; preds = %989, %171
  %992 = phi { ptr, i32 } [ %172, %171 ], [ %990, %989 ]
  %993 = load ptr, ptr %5, align 8, !tbaa !11
  %994 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %995 = icmp eq ptr %993, %994
  br i1 %995, label %996, label %999

996:                                              ; preds = %991
  %997 = load i64, ptr %25, align 8, !tbaa !15
  %998 = icmp ult i64 %997, 16
  call void @llvm.assume(i1 %998)
  br label %1000

999:                                              ; preds = %991
  call void @_ZdlPv(ptr noundef %993) #26
  br label %1000

1000:                                             ; preds = %996, %999
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  resume { ptr, i32 } %992
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK26__apo_apollo_payload_value6renderB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load i32, ptr %1, align 8, !tbaa !151
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %86

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %8 = tail call i64 @llvm.abs.i64(i64 %7, i1 false)
  %9 = icmp ult i64 %8, 10
  br i1 %9, label %28, label %10

10:                                               ; preds = %5, %24
  %11 = phi i64 [ %25, %24 ], [ %8, %5 ]
  %12 = phi i32 [ %26, %24 ], [ 1, %5 ]
  %13 = icmp ult i64 %11, 100
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = add i32 %12, 1
  br label %28

16:                                               ; preds = %10
  %17 = icmp ult i64 %11, 1000
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add i32 %12, 2
  br label %28

20:                                               ; preds = %16
  %21 = icmp ult i64 %11, 10000
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = add i32 %12, 3
  br label %28

24:                                               ; preds = %20
  %25 = udiv i64 %11, 10000
  %26 = add i32 %12, 4
  %27 = icmp ult i64 %11, 100000
  br i1 %27, label %28, label %10, !llvm.loop !290

28:                                               ; preds = %24, %22, %18, %14, %5
  %29 = phi i32 [ %15, %14 ], [ %19, %18 ], [ %23, %22 ], [ 1, %5 ], [ %26, %24 ]
  %30 = lshr i64 %7, 63
  %31 = trunc i64 %30 to i32
  %32 = add i32 %29, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %34, ptr %0, align 8, !tbaa !18, !alias.scope !287
  %35 = icmp ugt i32 %32, 15
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = add nuw nsw i64 %33, 1
  %38 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #29
  store ptr %38, ptr %0, align 8, !tbaa !11, !alias.scope !287
  store i64 %33, ptr %34, align 8, !tbaa !19, !alias.scope !287
  br label %41

39:                                               ; preds = %28
  switch i32 %32, label %41 [
    i32 0, label %43
    i32 1, label %40
  ]

40:                                               ; preds = %39
  store i8 45, ptr %34, align 8, !tbaa !19, !alias.scope !287
  br label %43

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %38, %36 ], [ %34, %39 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %42, i8 45, i64 %33, i1 false)
  br label %43

43:                                               ; preds = %41, %40, %39
  %44 = phi ptr [ %34, %39 ], [ %42, %41 ], [ %34, %40 ]
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %33, ptr %45, align 8, !tbaa !15, !alias.scope !287
  %46 = getelementptr inbounds i8, ptr %44, i64 %33
  store i8 0, ptr %46, align 1, !tbaa !19
  %47 = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !287
  %48 = getelementptr inbounds i8, ptr %47, i64 %30
  %49 = icmp ugt i64 %8, 99
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = add i32 %29, -1
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i64 [ %57, %52 ], [ %8, %50 ]
  %54 = phi i32 [ %68, %52 ], [ %51, %50 ]
  %55 = urem i64 %53, 100
  %56 = shl nuw nsw i64 %55, 1
  %57 = udiv i64 %53, 100
  %58 = or disjoint i64 %56, 1
  %59 = getelementptr inbounds [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !19, !noalias !287
  %61 = zext i32 %54 to i64
  %62 = getelementptr inbounds i8, ptr %48, i64 %61
  store i8 %60, ptr %62, align 1, !tbaa !19
  %63 = getelementptr inbounds [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %56
  %64 = load i8, ptr %63, align 2, !tbaa !19, !noalias !287
  %65 = add i32 %54, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %48, i64 %66
  store i8 %64, ptr %67, align 1, !tbaa !19
  %68 = add i32 %54, -2
  %69 = icmp ugt i64 %53, 9999
  br i1 %69, label %52, label %70, !llvm.loop !291

70:                                               ; preds = %52, %43
  %71 = phi i64 [ %8, %43 ], [ %57, %52 ]
  %72 = icmp ugt i64 %71, 9
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = shl nuw nsw i64 %71, 1
  %75 = or disjoint i64 %74, 1
  %76 = getelementptr inbounds [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !19, !noalias !287
  %78 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %77, ptr %78, align 1, !tbaa !19
  %79 = getelementptr inbounds [201 x i8], ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 0, i64 %74
  %80 = load i8, ptr %79, align 2, !tbaa !19, !noalias !287
  br label %84

81:                                               ; preds = %70
  %82 = trunc i64 %71 to i8
  %83 = or disjoint i8 %82, 48
  br label %84

84:                                               ; preds = %73, %81
  %85 = phi i8 [ %83, %81 ], [ %80, %73 ]
  store i8 %85, ptr %48, align 1, !tbaa !19
  br label %110

86:                                               ; preds = %2
  %87 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1, i64 0, i32 2
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %88, ptr %0, align 8, !tbaa !18
  %89 = load ptr, ptr %87, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1, i64 0, i32 2, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !15
  %92 = icmp ugt i64 %91, 15
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = icmp slt i64 %91, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

96:                                               ; preds = %93
  %97 = add nuw i64 %91, 1
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100, !prof !37

99:                                               ; preds = %96
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

100:                                              ; preds = %96
  %101 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %97) #29
  store ptr %101, ptr %0, align 8, !tbaa !11
  store i64 %91, ptr %88, align 8, !tbaa !19
  br label %102

102:                                              ; preds = %100, %86
  %103 = phi ptr [ %101, %100 ], [ %88, %86 ]
  switch i64 %91, label %106 [
    i64 1, label %104
    i64 0, label %107
  ]

104:                                              ; preds = %102
  %105 = load i8, ptr %89, align 1, !tbaa !19
  store i8 %105, ptr %103, align 1, !tbaa !19
  br label %107

106:                                              ; preds = %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %103, ptr align 1 %89, i64 %91, i1 false)
  br label %107

107:                                              ; preds = %102, %104, %106
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %91, ptr %108, align 8, !tbaa !15
  %109 = getelementptr inbounds i8, ptr %103, i64 %91
  store i8 0, ptr %109, align 1, !tbaa !19
  br label %110

110:                                              ; preds = %107, %84
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %54, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %14

14:                                               ; preds = %4, %10
  %15 = load i64, ptr %8, align 8
  %16 = select i1 %9, i64 15, i64 %15
  %17 = icmp ugt i64 %6, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = icmp slt i64 %6, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

21:                                               ; preds = %18
  %22 = shl nuw i64 %16, 1
  %23 = icmp ult i64 %6, %22
  %24 = tail call i64 @llvm.umin.i64(i64 %22, i64 9223372036854775807)
  %25 = select i1 %23, i64 %24, i64 %6
  %26 = add nuw i64 %25, 1
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29, !prof !37

28:                                               ; preds = %21
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

29:                                               ; preds = %21
  %30 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %26) #29
  br i1 %9, label %31, label %35

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !15
  %34 = icmp ult i64 %33, 16
  tail call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %36

36:                                               ; preds = %35, %31
  store ptr %30, ptr %0, align 8, !tbaa !11
  store i64 %25, ptr %8, align 8, !tbaa !19
  br label %41

37:                                               ; preds = %14
  %38 = icmp eq i64 %6, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %40, align 8, !tbaa !15
  br label %52

41:                                               ; preds = %36, %37
  %42 = phi ptr [ %30, %36 ], [ %7, %37 ]
  %43 = load ptr, ptr %1, align 8, !tbaa !11
  %44 = icmp eq i64 %6, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8, ptr %43, align 1, !tbaa !19
  store i8 %46, ptr %42, align 1, !tbaa !19
  br label %48

47:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 %6, i1 false)
  br label %48

48:                                               ; preds = %45, %47
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %6, ptr %49, align 8, !tbaa !15
  %50 = load ptr, ptr %0, align 8, !tbaa !11
  %51 = getelementptr inbounds i8, ptr %50, i64 %6
  br label %52

52:                                               ; preds = %39, %48
  %53 = phi ptr [ %51, %48 ], [ %7, %39 ]
  store i8 0, ptr %53, align 1, !tbaa !19
  br label %54

54:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !262
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %4, i64 0, i32 2, i32 2
  store ptr %11, ptr %9, align 8, !tbaa !18
  %12 = load ptr, ptr %10, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %1, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = icmp slt i64 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

19:                                               ; preds = %16
  %20 = add nuw i64 %14, 1
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23, !prof !37

22:                                               ; preds = %19
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

23:                                               ; preds = %19
  %24 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #29
  store ptr %24, ptr %9, align 8, !tbaa !11
  store i64 %14, ptr %11, align 8, !tbaa !19
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi ptr [ %24, %23 ], [ %11, %8 ]
  switch i64 %14, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, ptr %12, align 1, !tbaa !19
  store i8 %28, ptr %26, align 1, !tbaa !19
  br label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %12, i64 %14, i1 false)
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %4, i64 0, i32 2, i32 1
  store i64 %14, ptr %31, align 8, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %26, i64 %14
  store i8 0, ptr %32, align 1, !tbaa !19
  %33 = load ptr, ptr %3, align 8, !tbaa !261
  %34 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %33, i64 1
  store ptr %34, ptr %3, align 8, !tbaa !261
  br label %36

35:                                               ; preds = %2
  tail call void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %36

36:                                               ; preds = %35, %30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !259
  %3 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %22, label %6

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %7, i64 1
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %6, !llvm.loop !269

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !259
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef nonnull %23) #26
  br label %26

26:                                               ; preds = %22, %25
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI26__apo_apollo_payload_valueSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #28
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 48
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add nsw i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 192153584101141162)
  %18 = select i1 %16, i64 192153584101141162, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 48
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = mul nuw nsw i64 %18, 48
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #29
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %27, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %29 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %27, i64 %21, i32 2
  %30 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %27, i64 %21, i32 2, i32 2
  store ptr %31, ptr %29, align 8, !tbaa !18
  %32 = load ptr, ptr %30, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %2, i64 0, i32 2, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !15
  %35 = icmp ugt i64 %34, 15
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = icmp slt i64 %34, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %39 unwind label %120

39:                                               ; preds = %38
  unreachable

40:                                               ; preds = %36
  %41 = add nuw i64 %34, 1
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45, !prof !37

43:                                               ; preds = %40
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %44 unwind label %120

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %40
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #29
          to label %47 unwind label %120

47:                                               ; preds = %45
  store ptr %46, ptr %29, align 8, !tbaa !11
  store i64 %34, ptr %31, align 8, !tbaa !19
  br label %48

48:                                               ; preds = %47, %26
  %49 = phi ptr [ %46, %47 ], [ %31, %26 ]
  switch i64 %34, label %52 [
    i64 1, label %50
    i64 0, label %53
  ]

50:                                               ; preds = %48
  %51 = load i8, ptr %32, align 1, !tbaa !19
  store i8 %51, ptr %49, align 1, !tbaa !19
  br label %53

52:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %32, i64 %34, i1 false)
  br label %53

53:                                               ; preds = %48, %50, %52
  %54 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %27, i64 %21, i32 2, i32 1
  store i64 %34, ptr %54, align 8, !tbaa !15
  %55 = getelementptr inbounds i8, ptr %49, i64 %34
  store i8 0, ptr %55, align 1, !tbaa !19
  %56 = icmp eq ptr %6, %1
  br i1 %56, label %82, label %57

57:                                               ; preds = %53, %75
  %58 = phi ptr [ %80, %75 ], [ %27, %53 ]
  %59 = phi ptr [ %79, %75 ], [ %6, %53 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !alias.scope !297
  %60 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %58, i64 0, i32 2
  %61 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 0, i32 2
  %62 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %58, i64 0, i32 2, i32 2
  store ptr %62, ptr %60, align 8, !tbaa !18, !alias.scope !292, !noalias !295
  %63 = load ptr, ptr %61, align 8, !tbaa !11, !alias.scope !295, !noalias !292
  %64 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 0, i32 2, i32 2
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 0, i32 2, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !15, !alias.scope !295, !noalias !292
  %69 = icmp ult i64 %68, 16
  tail call void @llvm.assume(i1 %69)
  %70 = add nuw nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %62, ptr noundef nonnull align 8 dereferenceable(1) %63, i64 %70, i1 false)
  br label %75

71:                                               ; preds = %57
  store ptr %63, ptr %60, align 8, !tbaa !11, !alias.scope !292, !noalias !295
  %72 = load i64, ptr %64, align 8, !tbaa !19, !alias.scope !295, !noalias !292
  store i64 %72, ptr %62, align 8, !tbaa !19, !alias.scope !292, !noalias !295
  %73 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 0, i32 2, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !15, !alias.scope !295, !noalias !292
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ %68, %66 ], [ %74, %71 ]
  %77 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 0, i32 2, i32 1
  %78 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %58, i64 0, i32 2, i32 1
  store i64 %76, ptr %78, align 8, !tbaa !15, !alias.scope !292, !noalias !295
  store ptr %64, ptr %61, align 8, !tbaa !11, !alias.scope !295, !noalias !292
  store i64 0, ptr %77, align 8, !tbaa !15, !alias.scope !295, !noalias !292
  store i8 0, ptr %64, align 1, !tbaa !19, !alias.scope !295, !noalias !292
  %79 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %59, i64 1
  %80 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %58, i64 1
  %81 = icmp eq ptr %79, %1
  br i1 %81, label %82, label %57, !llvm.loop !298

82:                                               ; preds = %75, %53
  %83 = phi ptr [ %27, %53 ], [ %80, %75 ]
  %84 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %83, i64 1
  %85 = icmp eq ptr %5, %1
  br i1 %85, label %111, label %86

86:                                               ; preds = %82, %104
  %87 = phi ptr [ %109, %104 ], [ %84, %82 ]
  %88 = phi ptr [ %108, %104 ], [ %1, %82 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %88, i64 16, i1 false), !alias.scope !304
  %89 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %87, i64 0, i32 2
  %90 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 0, i32 2
  %91 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %87, i64 0, i32 2, i32 2
  store ptr %91, ptr %89, align 8, !tbaa !18, !alias.scope !299, !noalias !302
  %92 = load ptr, ptr %90, align 8, !tbaa !11, !alias.scope !302, !noalias !299
  %93 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 0, i32 2, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 0, i32 2, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !15, !alias.scope !302, !noalias !299
  %98 = icmp ult i64 %97, 16
  tail call void @llvm.assume(i1 %98)
  %99 = add nuw nsw i64 %97, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %91, ptr noundef nonnull align 8 dereferenceable(1) %92, i64 %99, i1 false)
  br label %104

100:                                              ; preds = %86
  store ptr %92, ptr %89, align 8, !tbaa !11, !alias.scope !299, !noalias !302
  %101 = load i64, ptr %93, align 8, !tbaa !19, !alias.scope !302, !noalias !299
  store i64 %101, ptr %91, align 8, !tbaa !19, !alias.scope !299, !noalias !302
  %102 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 0, i32 2, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !15, !alias.scope !302, !noalias !299
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi i64 [ %97, %95 ], [ %103, %100 ]
  %106 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 0, i32 2, i32 1
  %107 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %87, i64 0, i32 2, i32 1
  store i64 %105, ptr %107, align 8, !tbaa !15, !alias.scope !299, !noalias !302
  store ptr %93, ptr %90, align 8, !tbaa !11, !alias.scope !302, !noalias !299
  store i64 0, ptr %106, align 8, !tbaa !15, !alias.scope !302, !noalias !299
  store i8 0, ptr %93, align 1, !tbaa !19, !alias.scope !302, !noalias !299
  %108 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %88, i64 1
  %109 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %87, i64 1
  %110 = icmp eq ptr %108, %5
  br i1 %110, label %111, label %86, !llvm.loop !298

111:                                              ; preds = %104, %82
  %112 = phi ptr [ %84, %82 ], [ %109, %104 ]
  %113 = icmp eq ptr %6, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @_ZdlPv(ptr noundef nonnull %6) #26
  br label %115

115:                                              ; preds = %111, %114
  %116 = getelementptr inbounds %"struct.std::_Vector_base<__apo_apollo_payload_value, std::allocator<__apo_apollo_payload_value>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !259
  store ptr %112, ptr %4, align 8, !tbaa !261
  %117 = getelementptr inbounds %struct.__apo_apollo_payload_value, ptr %27, i64 %18
  store ptr %117, ptr %116, align 8, !tbaa !262
  ret void

118:                                              ; preds = %120
  %119 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %124 unwind label %125

120:                                              ; preds = %45, %43, %38
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  %123 = tail call ptr @__cxa_begin_catch(ptr %122) #27
  tail call void @_ZdlPv(ptr noundef nonnull %27) #26
  invoke void @__cxa_rethrow() #28
          to label %128 unwind label %118

124:                                              ; preds = %118
  resume { ptr, i32 } %119

125:                                              ; preds = %118
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  tail call void @__clang_call_terminate(ptr %127) #30
  unreachable

128:                                              ; preds = %120
  unreachable
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !305
  %5 = icmp ugt i64 %4, 20
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = icmp eq ptr %8, null
  br i1 %9, label %98, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = freeze i64 %12
  %14 = icmp eq i64 %13, 0
  %15 = load ptr, ptr %1, align 8
  br i1 %14, label %16, label %24

16:                                               ; preds = %10, %21
  %17 = phi ptr [ %22, %21 ], [ %8, %10 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 16
  %19 = load i64, ptr %18, align 8, !tbaa !15
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %98, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8, !tbaa !157
  %23 = icmp eq ptr %22, null
  br i1 %23, label %98, label %16, !llvm.loop !306

24:                                               ; preds = %10, %34
  %25 = phi ptr [ %35, %34 ], [ %8, %10 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 16
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = icmp eq i64 %13, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %25, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = tail call i32 @bcmp(ptr %15, ptr %31, i64 %13)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %98, label %34

34:                                               ; preds = %24, %29
  %35 = load ptr, ptr %25, align 8, !tbaa !157
  %36 = icmp eq ptr %35, null
  br i1 %36, label %98, label %24, !llvm.loop !306

37:                                               ; preds = %2
  %38 = load ptr, ptr %1, align 8, !tbaa !11
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !15
  %41 = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %38, i64 noundef %40, i64 noundef 3339675911)
          to label %45 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #30
  unreachable

45:                                               ; preds = %37
  %46 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = urem i64 %41, %47
  %49 = load ptr, ptr %0, align 8, !tbaa !143
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = icmp eq ptr %51, null
  br i1 %52, label %98, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %51, align 8, !tbaa !157
  %55 = load i64, ptr %39, align 8
  %56 = freeze i64 %55
  %57 = icmp eq i64 %56, 0
  %58 = load ptr, ptr %1, align 8
  %59 = getelementptr inbounds i8, ptr %54, i64 88
  %60 = load i64, ptr %59, align 8, !tbaa !307
  br i1 %57, label %61, label %77

61:                                               ; preds = %53, %72
  %62 = phi i64 [ %74, %72 ], [ %60, %53 ]
  %63 = phi ptr [ %70, %72 ], [ %54, %53 ]
  %64 = icmp eq i64 %62, %41
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %63, i64 16
  %67 = load i64, ptr %66, align 8, !tbaa !15
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %65, %61
  %70 = load ptr, ptr %63, align 8, !tbaa !157
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, ptr %70, i64 88
  %74 = load i64, ptr %73, align 8, !tbaa !307
  %75 = urem i64 %74, %47
  %76 = icmp eq i64 %75, %48
  br i1 %76, label %61, label %98, !llvm.loop !309

77:                                               ; preds = %53, %93
  %78 = phi i64 [ %95, %93 ], [ %60, %53 ]
  %79 = phi ptr [ %91, %93 ], [ %54, %53 ]
  %80 = getelementptr inbounds i8, ptr %79, i64 8
  %81 = icmp eq i64 %78, %41
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, ptr %79, i64 16
  %84 = load i64, ptr %83, align 8, !tbaa !15
  %85 = icmp eq i64 %56, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load ptr, ptr %80, align 8, !tbaa !11
  %88 = tail call i32 @bcmp(ptr %58, ptr %87, i64 %56)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86, %82, %77
  %91 = load ptr, ptr %79, align 8, !tbaa !157
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %91, i64 88
  %95 = load i64, ptr %94, align 8, !tbaa !307
  %96 = urem i64 %95, %47
  %97 = icmp eq i64 %96, %48
  br i1 %97, label %77, label %98, !llvm.loop !309

98:                                               ; preds = %29, %34, %21, %16, %93, %90, %86, %72, %69, %65, %6, %45
  %99 = phi ptr [ null, %45 ], [ null, %6 ], [ %63, %65 ], [ null, %69 ], [ null, %72 ], [ %79, %86 ], [ null, %93 ], [ null, %90 ], [ null, %21 ], [ %17, %16 ], [ %25, %29 ], [ null, %34 ]
  ret ptr %99
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_26__apo_apollo_payload_valueESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8
  %4 = alloca %"class.std::tuple.26", align 8
  %5 = alloca %"class.std::tuple.29", align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !11
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %9 = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %6, i64 noundef %8, i64 noundef 3339675911)
          to label %13 unwind label %10

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #30
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = urem i64 %9, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !143
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %19, align 8, !tbaa !157
  %23 = load i64, ptr %7, align 8
  %24 = freeze i64 %23
  %25 = icmp eq i64 %24, 0
  %26 = load ptr, ptr %1, align 8
  %27 = getelementptr inbounds i8, ptr %22, i64 88
  %28 = load i64, ptr %27, align 8, !tbaa !307
  br i1 %25, label %29, label %45

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %28, %21 ]
  %31 = phi ptr [ %38, %40 ], [ %22, %21 ]
  %32 = icmp eq i64 %30, %9
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %31, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !15
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %33, %29
  %38 = load ptr, ptr %31, align 8, !tbaa !157
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %38, i64 88
  %42 = load i64, ptr %41, align 8, !tbaa !307
  %43 = urem i64 %42, %15
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %29, label %66, !llvm.loop !309

45:                                               ; preds = %21, %61
  %46 = phi i64 [ %63, %61 ], [ %28, %21 ]
  %47 = phi ptr [ %59, %61 ], [ %22, %21 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = icmp eq i64 %46, %9
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %47, i64 16
  %52 = load i64, ptr %51, align 8, !tbaa !15
  %53 = icmp eq i64 %24, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load ptr, ptr %48, align 8, !tbaa !11
  %56 = tail call i32 @bcmp(ptr %26, ptr %55, i64 %24)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54, %50, %45
  %59 = load ptr, ptr %47, align 8, !tbaa !157
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %59, i64 88
  %63 = load i64, ptr %62, align 8, !tbaa !307
  %64 = urem i64 %63, %15
  %65 = icmp eq i64 %64, %16
  br i1 %65, label %45, label %66, !llvm.loop !309

66:                                               ; preds = %58, %61, %40, %37, %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr %1, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  store ptr %0, ptr %3, align 8, !tbaa !310
  %67 = getelementptr inbounds %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", ptr %3, i64 0, i32 1
  %68 = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEPSC_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  store ptr %68, ptr %67, align 8, !tbaa !312
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %69 = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %16, i64 noundef %9, ptr noundef %68, i64 noundef 1)
          to label %70 unwind label %71

70:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  br label %73

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  resume { ptr, i32 } %72

73:                                               ; preds = %54, %33, %70
  %74 = phi ptr [ %69, %70 ], [ %31, %33 ], [ %47, %54 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 40
  ret ptr %75
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !313
  %9 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !148
  %11 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !305
  %13 = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %10, i64 noundef %12, i64 noundef %4)
  %14 = extractvalue { i8, i64 } %13, 0
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %5
  %18 = extractvalue { i8, i64 } %13, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %18)
          to label %30 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #27
  store i64 %8, ptr %7, align 8, !tbaa !313
  invoke void @__cxa_rethrow() #28
          to label %29 unwind label %23

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %26

25:                                               ; preds = %23
  resume { ptr, i32 } %24

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #30
  unreachable

29:                                               ; preds = %19
  unreachable

30:                                               ; preds = %17
  %31 = load i64, ptr %9, align 8, !tbaa !148
  %32 = urem i64 %2, %31
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi i64 [ %32, %30 ], [ %1, %5 ]
  %35 = getelementptr inbounds i8, ptr %3, i64 88
  store i64 %2, ptr %35, align 8, !tbaa !307
  %36 = load ptr, ptr %0, align 8, !tbaa !143
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %38, align 8, !tbaa !157
  store ptr %41, ptr %3, align 8, !tbaa !157
  %42 = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %3, ptr %42, align 8, !tbaa !157
  br label %58

43:                                               ; preds = %33
  %44 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  store ptr %45, ptr %3, align 8, !tbaa !157
  store ptr %3, ptr %44, align 8, !tbaa !156
  %46 = load ptr, ptr %3, align 8, !tbaa !157
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %9, align 8, !tbaa !148
  %50 = getelementptr inbounds i8, ptr %46, i64 88
  %51 = load i64, ptr %50, align 8, !tbaa !307
  %52 = urem i64 %51, %49
  %53 = getelementptr inbounds ptr, ptr %36, i64 %52
  store ptr %3, ptr %53, align 8, !tbaa !38
  %54 = load ptr, ptr %0, align 8, !tbaa !143
  br label %55

55:                                               ; preds = %48, %43
  %56 = phi ptr [ %54, %48 ], [ %36, %43 ]
  %57 = getelementptr inbounds ptr, ptr %56, i64 %34
  store ptr %44, ptr %57, align 8, !tbaa !38
  br label %58

58:                                               ; preds = %40, %55
  %59 = load i64, ptr %11, align 8, !tbaa !305
  %60 = add i64 %59, 1
  store i64 %60, ptr %11, align 8, !tbaa !305
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, __apo_apollo_payload_value>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !312
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  %7 = getelementptr inbounds i8, ptr %3, i64 56
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds i8, ptr %3, i64 72
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %3, i64 64
  %13 = load i64, ptr %12, align 8, !tbaa !15
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %5
  tail call void @_ZdlPv(ptr noundef %8) #26
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %6, align 8, !tbaa !11
  %18 = getelementptr inbounds i8, ptr %3, i64 24
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %3, i64 16
  %22 = load i64, ptr %21, align 8, !tbaa !15
  %23 = icmp ult i64 %22, 16
  tail call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %17) #26
  br label %25

25:                                               ; preds = %20, %24
  tail call void @_ZdlPv(ptr noundef nonnull %3) #26
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE26__apo_apollo_payload_valueELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESJ_IJEEEEEPSC_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
  store ptr null, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %7 = load i64, ptr %2, align 8, !tbaa !38
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr %9, ptr %6, align 8, !tbaa !18
  %10 = load ptr, ptr %8, align 8, !tbaa !11
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = icmp slt i64 %12, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %17 unwind label %37

17:                                               ; preds = %16
  unreachable

18:                                               ; preds = %14
  %19 = add nuw i64 %12, 1
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23, !prof !37

21:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %22 unwind label %37

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %18
  %24 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #29
          to label %25 unwind label %37

25:                                               ; preds = %23
  store ptr %24, ptr %6, align 8, !tbaa !11
  store i64 %12, ptr %9, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %25, %4
  %27 = phi ptr [ %24, %25 ], [ %9, %4 ]
  switch i64 %12, label %30 [
    i64 1, label %28
    i64 0, label %31
  ]

28:                                               ; preds = %26
  %29 = load i8, ptr %10, align 1, !tbaa !19
  store i8 %29, ptr %27, align 1, !tbaa !19
  br label %31

30:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %10, i64 %12, i1 false)
  br label %31

31:                                               ; preds = %26, %28, %30
  %32 = getelementptr inbounds i8, ptr %5, i64 16
  store i64 %12, ptr %32, align 8, !tbaa !15
  %33 = getelementptr inbounds i8, ptr %27, i64 %12
  store i8 0, ptr %33, align 1, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %34, i8 0, i64 48, i1 false)
  store i32 1, ptr %34, align 8, !tbaa !151
  %35 = getelementptr inbounds i8, ptr %5, i64 56
  %36 = getelementptr inbounds i8, ptr %5, i64 72
  store ptr %36, ptr %35, align 8, !tbaa !18
  ret ptr %5

37:                                               ; preds = %16, %21, %23
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = tail call ptr @__cxa_begin_catch(ptr %39) #27
  tail call void @_ZdlPv(ptr noundef nonnull %5) #26
  invoke void @__cxa_rethrow() #28
          to label %47 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

43:                                               ; preds = %41
  resume { ptr, i32 } %42

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #30
  unreachable

47:                                               ; preds = %37
  unreachable
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
  %3 = icmp eq i64 %1, 1
  br i1 %3, label %4, label %6, !prof !37

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !314
  br label %15

6:                                                ; preds = %2
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %12, !prof !37

8:                                                ; preds = %6
  %9 = icmp ugt i64 %1, 2305843009213693951
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

11:                                               ; preds = %8
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

12:                                               ; preds = %6
  %13 = shl nuw nsw i64 %1, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %14, i8 0, i64 %13, i1 false)
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %5, %4 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  store ptr null, ptr %17, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %15, %42
  %21 = phi ptr [ %23, %42 ], [ %18, %15 ]
  %22 = phi i64 [ %43, %42 ], [ 0, %15 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !157
  %24 = getelementptr inbounds i8, ptr %21, i64 88
  %25 = load i64, ptr %24, align 8, !tbaa !307
  %26 = urem i64 %25, %1
  %27 = getelementptr inbounds ptr, ptr %16, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %17, align 8, !tbaa !156
  store ptr %31, ptr %21, align 8, !tbaa !157
  store ptr %21, ptr %17, align 8, !tbaa !156
  store ptr %17, ptr %27, align 8, !tbaa !38
  %32 = load ptr, ptr %21, align 8, !tbaa !157
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds ptr, ptr %16, i64 %22
  br label %39

36:                                               ; preds = %20
  %37 = load ptr, ptr %28, align 8, !tbaa !157
  store ptr %37, ptr %21, align 8, !tbaa !157
  %38 = load ptr, ptr %27, align 8, !tbaa !38
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi ptr [ %35, %34 ], [ %38, %36 ]
  %41 = phi i64 [ %26, %34 ], [ %22, %36 ]
  store ptr %21, ptr %40, align 8, !tbaa !38
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i64 [ %26, %30 ], [ %41, %39 ]
  %44 = icmp eq ptr %23, null
  br i1 %44, label %45, label %20, !llvm.loop !315

45:                                               ; preds = %42, %15
  %46 = load ptr, ptr %0, align 8, !tbaa !143
  %47 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 5
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @_ZdlPv(ptr noundef %46) #26
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %"class.std::_Hashtable", ptr %0, i64 0, i32 1
  store i64 %1, ptr %51, align 8, !tbaa !148
  store ptr %16, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %2, 9223372036854775807
  %9 = sub i64 %8, %7
  %10 = icmp ult i64 %9, %4
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #28
  unreachable

12:                                               ; preds = %5
  %13 = sub i64 %4, %2
  %14 = add i64 %13, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !11
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %19)
  br label %20

20:                                               ; preds = %12, %18
  %21 = load i64, ptr %16, align 8
  %22 = select i1 %17, i64 15, i64 %21
  %23 = icmp ugt i64 %14, %22
  br i1 %23, label %47, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %15, i64 %1
  %26 = add i64 %2, %1
  %27 = sub i64 %7, %26
  %28 = icmp ugt ptr %15, %3
  %29 = getelementptr inbounds i8, ptr %15, i64 %7
  %30 = icmp ult ptr %29, %3
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %46, !prof !316

32:                                               ; preds = %24
  %33 = icmp eq i64 %7, %26
  %34 = icmp eq i64 %2, %4
  %35 = or i1 %34, %33
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %25, i64 %4
  %38 = getelementptr inbounds i8, ptr %25, i64 %2
  switch i64 %27, label %41 [
    i64 1, label %39
    i64 0, label %42
  ]

39:                                               ; preds = %36
  %40 = load i8, ptr %38, align 1, !tbaa !19
  store i8 %40, ptr %37, align 1, !tbaa !19
  br label %42

41:                                               ; preds = %36
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %27, i1 false)
  br label %42

42:                                               ; preds = %41, %39, %36, %32
  switch i64 %4, label %45 [
    i64 0, label %48
    i64 1, label %43
  ]

43:                                               ; preds = %42
  %44 = load i8, ptr %3, align 1, !tbaa !19
  store i8 %44, ptr %25, align 1, !tbaa !19
  br label %48

45:                                               ; preds = %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %3, i64 %4, i1 false)
  br label %48

46:                                               ; preds = %24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %25, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %27) #33
  br label %48

47:                                               ; preds = %20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %48

48:                                               ; preds = %42, %45, %43, %46, %47
  store i64 %14, ptr %6, align 8, !tbaa !15
  %49 = load ptr, ptr %0, align 8, !tbaa !11
  %50 = getelementptr inbounds i8, ptr %49, i64 %14
  store i8 0, ptr %50, align 1, !tbaa !19
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20__apo_phase3_runtime17register_opstructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listI25__apo_opstruct_field_infoE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %"class.std::vector.101", align 16
  %6 = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %0) #27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @_ZSt20__throw_system_errori(i32 noundef %6) #28
  unreachable

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %10 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %2, i64 %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EE19_M_range_initializeIPKS0_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, ptr noundef %10)
          to label %16 unwind label %11

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = load ptr, ptr %5, align 16, !tbaa !317
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %11
  call void @_ZdlPv(ptr noundef nonnull %13) #26
  br label %92

16:                                               ; preds = %9
  %17 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1
  %18 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorI25__apo_opstruct_field_infoSaISA_EEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %19 unwind label %90

19:                                               ; preds = %16
  %20 = load ptr, ptr %18, align 8, !tbaa !317
  %21 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !319
  %23 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %18, i64 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %25 = load <2 x ptr>, ptr %5, align 16, !tbaa !38
  store <2 x ptr> %25, ptr %18, align 8, !tbaa !38
  %26 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 16, !tbaa !320
  store ptr %27, ptr %23, align 8, !tbaa !320
  %28 = icmp eq ptr %20, %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %28, label %52, label %29

29:                                               ; preds = %19, %49
  %30 = phi ptr [ %50, %49 ], [ %20, %19 ]
  %31 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %30, i64 0, i32 1, i32 2
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %30, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !15
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  br label %40

39:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %32) #26
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %30, align 8, !tbaa !11
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !15
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %41) #26
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %30, i64 1
  %51 = icmp eq ptr %50, %22
  br i1 %51, label %52, label %29, !llvm.loop !321

52:                                               ; preds = %49, %19
  %53 = icmp eq ptr %20, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef nonnull %20) #26
  br label %55

55:                                               ; preds = %52, %54
  %56 = load ptr, ptr %5, align 16, !tbaa !317
  %57 = load ptr, ptr %24, align 8, !tbaa !319
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %84, label %59

59:                                               ; preds = %55, %79
  %60 = phi ptr [ %80, %79 ], [ %56, %55 ]
  %61 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %60, i64 0, i32 1, i32 2
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %60, i64 0, i32 1, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !15
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %62) #26
  br label %70

70:                                               ; preds = %69, %65
  %71 = load ptr, ptr %60, align 8, !tbaa !11
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 2
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !15
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %71) #26
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %60, i64 1
  %81 = icmp eq ptr %80, %57
  br i1 %81, label %82, label %59, !llvm.loop !321

82:                                               ; preds = %79
  %83 = load ptr, ptr %5, align 16, !tbaa !317
  br label %84

84:                                               ; preds = %82, %55
  %85 = phi ptr [ %83, %82 ], [ %56, %55 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef nonnull %85) #26
  br label %88

88:                                               ; preds = %84, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %89 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #27
  ret void

90:                                               ; preds = %16
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %92

92:                                               ; preds = %15, %11, %90
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %12, %15 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %94 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #27
  resume { ptr, i32 } %93
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20__apo_phase3_runtimeC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %2 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 5
  store ptr %3, ptr %2, align 8, !tbaa !322
  %4 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i64 1, ptr %4, align 8, !tbaa !324
  %5 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 2
  %6 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 4, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 5
  store ptr %9, ptr %8, align 8, !tbaa !325
  %10 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 1
  store i64 1, ptr %10, align 8, !tbaa !327
  %11 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 2
  %12 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %12, align 8, !tbaa !149
  %13 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 4, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 5
  store ptr %15, ptr %14, align 8, !tbaa !328
  %16 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 1
  store i64 1, ptr %16, align 8, !tbaa !330
  %17 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 2
  %18 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %18, align 8, !tbaa !149
  %19 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 4, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20__apo_phase3_runtimeD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1, %28
  %7 = phi ptr [ %8, %28 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = getelementptr inbounds i8, ptr %7, i64 40
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, ptr %7, i64 56
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %7, i64 48
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %9, align 8, !tbaa !11
  %21 = getelementptr inbounds i8, ptr %7, i64 24
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %7, i64 16
  %25 = load i64, ptr %24, align 8, !tbaa !15
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %28

27:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #26
  br label %28

28:                                               ; preds = %27, %23
  tail call void @_ZdlPv(ptr noundef nonnull %7) #26
  %29 = icmp eq ptr %8, null
  br i1 %29, label %30, label %6, !llvm.loop !332

30:                                               ; preds = %28, %1
  %31 = load ptr, ptr %2, align 8, !tbaa !328
  %32 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !330
  %34 = shl i64 %33, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %34, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %35 = load ptr, ptr %2, align 8, !tbaa !328
  %36 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 3, i32 0, i32 5
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %35) #26
  br label %39

39:                                               ; preds = %30, %38
  %40 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !333
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %39, %56
  %45 = phi ptr [ %46, %56 ], [ %42, %39 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !157
  %47 = getelementptr inbounds i8, ptr %45, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds i8, ptr %45, i64 24
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %45, i64 16
  %53 = load i64, ptr %52, align 8, !tbaa !15
  %54 = icmp ult i64 %53, 16
  tail call void @llvm.assume(i1 %54)
  br label %56

55:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %48) #26
  br label %56

56:                                               ; preds = %55, %51
  tail call void @_ZdlPv(ptr noundef nonnull %45) #26
  %57 = icmp eq ptr %46, null
  br i1 %57, label %58, label %44, !llvm.loop !334

58:                                               ; preds = %56, %39
  %59 = load ptr, ptr %40, align 8, !tbaa !325
  %60 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !327
  %62 = shl i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %59, i8 0, i64 %62, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %63 = load ptr, ptr %40, align 8, !tbaa !325
  %64 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 2, i32 0, i32 5
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  tail call void @_ZdlPv(ptr noundef %63) #26
  br label %67

67:                                               ; preds = %58, %66
  %68 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !335
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE19_M_deallocate_nodesEPSF_(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef %70)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  tail call void @__clang_call_terminate(ptr %73) #30
  unreachable

74:                                               ; preds = %67
  %75 = load ptr, ptr %68, align 8, !tbaa !322
  %76 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !324
  %78 = shl i64 %77, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %75, i8 0, i64 %78, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %79 = load ptr, ptr %68, align 8, !tbaa !322
  %80 = getelementptr inbounds %class.__apo_phase3_runtime, ptr %0, i64 0, i32 1, i32 0, i32 5
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  tail call void @_ZdlPv(ptr noundef %79) #26
  br label %83

83:                                               ; preds = %74, %82
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE19_M_deallocate_nodesEPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2, %51
  %5 = phi ptr [ %6, %51 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = getelementptr inbounds i8, ptr %5, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !317
  %10 = getelementptr inbounds i8, ptr %5, i64 48
  %11 = load ptr, ptr %10, align 8, !tbaa !319
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %4, %33
  %14 = phi ptr [ %34, %33 ], [ %9, %4 ]
  %15 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %14, i64 0, i32 1, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %14, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !15
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %16) #26
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %14, align 8, !tbaa !11
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !15
  %31 = icmp ult i64 %30, 16
  tail call void @llvm.assume(i1 %31)
  br label %33

32:                                               ; preds = %24
  tail call void @_ZdlPv(ptr noundef %25) #26
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %14, i64 1
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %13, !llvm.loop !321

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 8, !tbaa !317
  br label %38

38:                                               ; preds = %36, %4
  %39 = phi ptr [ %37, %36 ], [ %9, %4 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef nonnull %39) #26
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr %7, align 8, !tbaa !11
  %44 = getelementptr inbounds i8, ptr %5, i64 24
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %5, i64 16
  %48 = load i64, ptr %47, align 8, !tbaa !15
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  br label %51

50:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %43) #26
  br label %51

51:                                               ; preds = %46, %50
  tail call void @_ZdlPv(ptr noundef nonnull %5) #26
  %52 = icmp eq ptr %6, null
  br i1 %52, label %53, label %4, !llvm.loop !336

53:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !317
  %3 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %1, %26
  %7 = phi ptr [ %27, %26 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %7, i64 0, i32 1, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %7, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !15
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %7, align 8, !tbaa !11
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = icmp ult i64 %23, 16
  tail call void @llvm.assume(i1 %24)
  br label %26

25:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %7, i64 1
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %6, !llvm.loop !321

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !317
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi ptr [ %30, %29 ], [ %2, %1 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef nonnull %32) #26
  br label %35

35:                                               ; preds = %31, %34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP25__apo_opstruct_field_infoEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %27, label %4

4:                                                ; preds = %2, %24
  %5 = phi ptr [ %25, %24 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %5, i64 0, i32 1, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %5, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %4
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %15

15:                                               ; preds = %14, %10
  %16 = load ptr, ptr %5, align 8, !tbaa !11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !15
  %22 = icmp ult i64 %21, 16
  tail call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %16) #26
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %5, i64 1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %4, !llvm.loop !321

27:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI25__apo_opstruct_field_infoSaIS0_EE19_M_range_initializeIPKS0_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = icmp ugt i64 %6, 9223372036854775744
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #28
  unreachable

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  store ptr null, ptr %0, align 8, !tbaa !317
  %12 = getelementptr inbounds i8, ptr null, i64 %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !320
  br label %37

14:                                               ; preds = %9
  %15 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %6) #29
  store ptr %15, ptr %0, align 8, !tbaa !317
  %16 = getelementptr inbounds i8, ptr %15, i64 %6
  %17 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !320
  br label %18

18:                                               ; preds = %14, %21
  %19 = phi ptr [ %23, %21 ], [ %15, %14 ]
  %20 = phi ptr [ %22, %21 ], [ %1, %14 ]
  invoke void @_ZN25__apo_opstruct_field_infoC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %20)
          to label %21 unwind label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %20, i64 1
  %23 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %19, i64 1
  %24 = icmp eq ptr %22, %2
  br i1 %24, label %37, label %18, !llvm.loop !337

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = tail call ptr @__cxa_begin_catch(ptr %27) #27
  invoke void @_ZSt8_DestroyIP25__apo_opstruct_field_infoEvT_S2_(ptr noundef nonnull %15, ptr noundef nonnull %19)
          to label %29 unwind label %30

29:                                               ; preds = %25
  invoke void @__cxa_rethrow() #28
          to label %36 unwind label %30

30:                                               ; preds = %29, %25
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %33

32:                                               ; preds = %30
  resume { ptr, i32 } %31

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #30
  unreachable

36:                                               ; preds = %29
  unreachable

37:                                               ; preds = %21, %11
  %38 = phi ptr [ null, %11 ], [ %23, %21 ]
  %39 = getelementptr inbounds %"struct.std::_Vector_base<__apo_opstruct_field_info, std::allocator<__apo_opstruct_field_info>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !319
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN25__apo_opstruct_field_infoC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !18
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = icmp slt i64 %6, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

11:                                               ; preds = %8
  %12 = add nuw i64 %6, 1
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15, !prof !37

14:                                               ; preds = %11
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

15:                                               ; preds = %11
  %16 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #29
  store ptr %16, ptr %0, align 8, !tbaa !11
  store i64 %6, ptr %3, align 8, !tbaa !19
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %3, %2 ]
  switch i64 %6, label %21 [
    i64 1, label %19
    i64 0, label %22
  ]

19:                                               ; preds = %17
  %20 = load i8, ptr %4, align 1, !tbaa !19
  store i8 %20, ptr %18, align 1, !tbaa !19
  br label %22

21:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr align 1 %4, i64 %6, i1 false)
  br label %22

22:                                               ; preds = %17, %19, %21
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %6, ptr %23, align 8, !tbaa !15
  %24 = getelementptr inbounds i8, ptr %18, i64 %6
  store i8 0, ptr %24, align 1, !tbaa !19
  %25 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %1, i64 0, i32 1
  %27 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %0, i64 0, i32 1, i32 2
  store ptr %27, ptr %25, align 8, !tbaa !18
  %28 = load ptr, ptr %26, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %1, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !15
  %31 = icmp ugt i64 %30, 15
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %35 unwind label %52

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %32
  %37 = add nuw i64 %30, 1
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41, !prof !37

39:                                               ; preds = %36
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %40 unwind label %52

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #29
          to label %43 unwind label %52

43:                                               ; preds = %41
  store ptr %42, ptr %25, align 8, !tbaa !11
  store i64 %30, ptr %27, align 8, !tbaa !19
  br label %44

44:                                               ; preds = %43, %22
  %45 = phi ptr [ %42, %43 ], [ %27, %22 ]
  switch i64 %30, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, ptr %28, align 1, !tbaa !19
  store i8 %47, ptr %45, align 1, !tbaa !19
  br label %49

48:                                               ; preds = %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %45, ptr align 1 %28, i64 %30, i1 false)
  br label %49

49:                                               ; preds = %48, %46, %44
  %50 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %0, i64 0, i32 1, i32 1
  store i64 %30, ptr %50, align 8, !tbaa !15
  %51 = getelementptr inbounds i8, ptr %45, i64 %30
  store i8 0, ptr %51, align 1, !tbaa !19
  ret void

52:                                               ; preds = %41, %39, %34
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = load ptr, ptr %0, align 8, !tbaa !11
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, ptr %23, align 8, !tbaa !15
  %58 = icmp ult i64 %57, 16
  tail call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %52
  tail call void @_ZdlPv(ptr noundef %54) #26
  br label %60

60:                                               ; preds = %56, %59
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorI25__apo_opstruct_field_infoSaISA_EEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8
  %4 = alloca %"class.std::tuple.26", align 8
  %5 = alloca %"class.std::tuple.29", align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !11
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %9 = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %6, i64 noundef %8, i64 noundef 3339675911)
          to label %13 unwind label %10

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #30
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = urem i64 %9, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !322
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %19, align 8, !tbaa !157
  %23 = load i64, ptr %7, align 8
  %24 = freeze i64 %23
  %25 = icmp eq i64 %24, 0
  %26 = load ptr, ptr %1, align 8
  %27 = getelementptr inbounds i8, ptr %22, i64 64
  %28 = load i64, ptr %27, align 8, !tbaa !307
  br i1 %25, label %29, label %45

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %28, %21 ]
  %31 = phi ptr [ %38, %40 ], [ %22, %21 ]
  %32 = icmp eq i64 %30, %9
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %31, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa !15
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %33, %29
  %38 = load ptr, ptr %31, align 8, !tbaa !157
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %38, i64 64
  %42 = load i64, ptr %41, align 8, !tbaa !307
  %43 = urem i64 %42, %15
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %29, label %66, !llvm.loop !338

45:                                               ; preds = %21, %61
  %46 = phi i64 [ %63, %61 ], [ %28, %21 ]
  %47 = phi ptr [ %59, %61 ], [ %22, %21 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %49 = icmp eq i64 %46, %9
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %47, i64 16
  %52 = load i64, ptr %51, align 8, !tbaa !15
  %53 = icmp eq i64 %24, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load ptr, ptr %48, align 8, !tbaa !11
  %56 = tail call i32 @bcmp(ptr %26, ptr %55, i64 %24)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54, %50, %45
  %59 = load ptr, ptr %47, align 8, !tbaa !157
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %59, i64 64
  %63 = load i64, ptr %62, align 8, !tbaa !307
  %64 = urem i64 %63, %15
  %65 = icmp eq i64 %64, %16
  br i1 %65, label %45, label %66, !llvm.loop !338

66:                                               ; preds = %58, %61, %40, %37, %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr %1, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  store ptr %0, ptr %3, align 8, !tbaa !339
  %67 = getelementptr inbounds %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", ptr %3, i64 0, i32 1
  %68 = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESM_IJEEEEEPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  store ptr %68, ptr %67, align 8, !tbaa !341
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %69 = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %16, i64 noundef %9, ptr noundef %68, i64 noundef 1)
          to label %70 unwind label %71

70:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  br label %73

71:                                               ; preds = %66
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  resume { ptr, i32 } %72

73:                                               ; preds = %54, %33, %70
  %74 = phi ptr [ %69, %70 ], [ %31, %33 ], [ %47, %54 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 40
  ret ptr %75
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !313
  %9 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !324
  %11 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !342
  %13 = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %10, i64 noundef %12, i64 noundef %4)
  %14 = extractvalue { i8, i64 } %13, 0
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %5
  %18 = extractvalue { i8, i64 } %13, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %18)
          to label %30 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #27
  store i64 %8, ptr %7, align 8, !tbaa !313
  invoke void @__cxa_rethrow() #28
          to label %29 unwind label %23

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %26

25:                                               ; preds = %23
  resume { ptr, i32 } %24

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #30
  unreachable

29:                                               ; preds = %19
  unreachable

30:                                               ; preds = %17
  %31 = load i64, ptr %9, align 8, !tbaa !324
  %32 = urem i64 %2, %31
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi i64 [ %32, %30 ], [ %1, %5 ]
  %35 = getelementptr inbounds i8, ptr %3, i64 64
  store i64 %2, ptr %35, align 8, !tbaa !307
  %36 = load ptr, ptr %0, align 8, !tbaa !322
  %37 = getelementptr inbounds ptr, ptr %36, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %38, align 8, !tbaa !157
  store ptr %41, ptr %3, align 8, !tbaa !157
  %42 = load ptr, ptr %37, align 8, !tbaa !38
  store ptr %3, ptr %42, align 8, !tbaa !157
  br label %58

43:                                               ; preds = %33
  %44 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !335
  store ptr %45, ptr %3, align 8, !tbaa !157
  store ptr %3, ptr %44, align 8, !tbaa !335
  %46 = load ptr, ptr %3, align 8, !tbaa !157
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %9, align 8, !tbaa !324
  %50 = getelementptr inbounds i8, ptr %46, i64 64
  %51 = load i64, ptr %50, align 8, !tbaa !307
  %52 = urem i64 %51, %49
  %53 = getelementptr inbounds ptr, ptr %36, i64 %52
  store ptr %3, ptr %53, align 8, !tbaa !38
  %54 = load ptr, ptr %0, align 8, !tbaa !322
  br label %55

55:                                               ; preds = %48, %43
  %56 = phi ptr [ %54, %48 ], [ %36, %43 ]
  %57 = getelementptr inbounds ptr, ptr %56, i64 %34
  store ptr %44, ptr %57, align 8, !tbaa !38
  br label %58

58:                                               ; preds = %40, %55
  %59 = load i64, ptr %11, align 8, !tbaa !342
  %60 = add i64 %59, 1
  store i64 %60, ptr %11, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::vector<__apo_opstruct_field_info>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !341
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  %7 = getelementptr inbounds i8, ptr %3, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !317
  %9 = getelementptr inbounds i8, ptr %3, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !319
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %5, %32
  %13 = phi ptr [ %33, %32 ], [ %8, %5 ]
  %14 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %13, i64 0, i32 1, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %13, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !15
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %13, align 8, !tbaa !11
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !15
  %30 = icmp ult i64 %29, 16
  tail call void @llvm.assume(i1 %30)
  br label %32

31:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #26
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.__apo_opstruct_field_info, ptr %13, i64 1
  %34 = icmp eq ptr %33, %10
  br i1 %34, label %35, label %12, !llvm.loop !321

35:                                               ; preds = %32
  %36 = load ptr, ptr %7, align 8, !tbaa !317
  br label %37

37:                                               ; preds = %35, %5
  %38 = phi ptr [ %36, %35 ], [ %8, %5 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef nonnull %38) #26
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr %6, align 8, !tbaa !11
  %43 = getelementptr inbounds i8, ptr %3, i64 24
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %3, i64 16
  %47 = load i64, ptr %46, align 8, !tbaa !15
  %48 = icmp ult i64 %47, 16
  tail call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %41
  tail call void @_ZdlPv(ptr noundef %42) #26
  br label %50

50:                                               ; preds = %45, %49
  tail call void @_ZdlPv(ptr noundef nonnull %3) #26
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI25__apo_opstruct_field_infoSaISB_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESM_IJEEEEEPSF_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
  store ptr null, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %7 = load i64, ptr %2, align 8, !tbaa !38
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr %9, ptr %6, align 8, !tbaa !18
  %10 = load ptr, ptr %8, align 8, !tbaa !11
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ugt i64 %12, 15
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = icmp slt i64 %12, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %17 unwind label %35

17:                                               ; preds = %16
  unreachable

18:                                               ; preds = %14
  %19 = add nuw i64 %12, 1
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23, !prof !37

21:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %22 unwind label %35

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %18
  %24 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #29
          to label %25 unwind label %35

25:                                               ; preds = %23
  store ptr %24, ptr %6, align 8, !tbaa !11
  store i64 %12, ptr %9, align 8, !tbaa !19
  br label %26

26:                                               ; preds = %25, %4
  %27 = phi ptr [ %24, %25 ], [ %9, %4 ]
  switch i64 %12, label %30 [
    i64 1, label %28
    i64 0, label %31
  ]

28:                                               ; preds = %26
  %29 = load i8, ptr %10, align 1, !tbaa !19
  store i8 %29, ptr %27, align 1, !tbaa !19
  br label %31

30:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %10, i64 %12, i1 false)
  br label %31

31:                                               ; preds = %26, %28, %30
  %32 = getelementptr inbounds i8, ptr %5, i64 16
  store i64 %12, ptr %32, align 8, !tbaa !15
  %33 = getelementptr inbounds i8, ptr %27, i64 %12
  store i8 0, ptr %33, align 1, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  ret ptr %5

35:                                               ; preds = %16, %21, %23
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = tail call ptr @__cxa_begin_catch(ptr %37) #27
  tail call void @_ZdlPv(ptr noundef nonnull %5) #26
  invoke void @__cxa_rethrow() #28
          to label %45 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %42

41:                                               ; preds = %39
  resume { ptr, i32 } %40

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #30
  unreachable

45:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
  %3 = icmp eq i64 %1, 1
  br i1 %3, label %4, label %6, !prof !37

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !343
  br label %15

6:                                                ; preds = %2
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %12, !prof !37

8:                                                ; preds = %6
  %9 = icmp ugt i64 %1, 2305843009213693951
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

11:                                               ; preds = %8
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

12:                                               ; preds = %6
  %13 = shl nuw nsw i64 %1, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %14, i8 0, i64 %13, i1 false)
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %5, %4 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !335
  store ptr null, ptr %17, align 8, !tbaa !335
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %15, %42
  %21 = phi ptr [ %23, %42 ], [ %18, %15 ]
  %22 = phi i64 [ %43, %42 ], [ 0, %15 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !157
  %24 = getelementptr inbounds i8, ptr %21, i64 64
  %25 = load i64, ptr %24, align 8, !tbaa !307
  %26 = urem i64 %25, %1
  %27 = getelementptr inbounds ptr, ptr %16, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load ptr, ptr %17, align 8, !tbaa !335
  store ptr %31, ptr %21, align 8, !tbaa !157
  store ptr %21, ptr %17, align 8, !tbaa !335
  store ptr %17, ptr %27, align 8, !tbaa !38
  %32 = load ptr, ptr %21, align 8, !tbaa !157
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds ptr, ptr %16, i64 %22
  br label %39

36:                                               ; preds = %20
  %37 = load ptr, ptr %28, align 8, !tbaa !157
  store ptr %37, ptr %21, align 8, !tbaa !157
  %38 = load ptr, ptr %27, align 8, !tbaa !38
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi ptr [ %35, %34 ], [ %38, %36 ]
  %41 = phi i64 [ %26, %34 ], [ %22, %36 ]
  store ptr %21, ptr %40, align 8, !tbaa !38
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i64 [ %26, %30 ], [ %41, %39 ]
  %44 = icmp eq ptr %23, null
  br i1 %44, label %45, label %20, !llvm.loop !344

45:                                               ; preds = %42, %15
  %46 = load ptr, ptr %0, align 8, !tbaa !322
  %47 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 5
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @_ZdlPv(ptr noundef %46) #26
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %"class.std::_Hashtable.39", ptr %0, i64 0, i32 1
  store i64 %1, ptr %51, align 8, !tbaa !324
  store ptr %16, ptr %0, align 8, !tbaa !322
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_output.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::error_code", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %9 = alloca %"class.std::basic_ofstream", align 8
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZL18__apo_syscallQueueB5cxx11, ptr nonnull @__dso_handle) #27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IA7_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i8 noundef zeroext 2)
  %11 = invoke noundef zeroext i1 @_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %12 unwind label %28

12:                                               ; preds = %0
  %13 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %14) #27
  br label %17

17:                                               ; preds = %16, %12
  store ptr null, ptr %13, align 8, !tbaa !38
  %18 = load ptr, ptr %8, align 8, !tbaa !11
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  br label %30

25:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #26
  br label %30

26:                                               ; preds = %96, %112, %141, %28
  %27 = phi { ptr, i32 } [ %29, %28 ], [ %134, %141 ], [ %113, %112 ], [ %97, %96 ]
  resume { ptr, i32 } %27

28:                                               ; preds = %0
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #27
  br label %26

30:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #27
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull @.str.5, i32 noundef 32)
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #27
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = invoke noalias noundef nonnull dereferenceable(23) ptr @_Znwm(i64 noundef 23) #29
          to label %33 unwind label %82

33:                                               ; preds = %30
  store ptr %32, ptr %2, align 8, !tbaa !11
  store i64 22, ptr %31, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %32, ptr noundef nonnull align 1 dereferenceable(22) @.str.8, i64 22, i1 false)
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 22, ptr %34, align 8, !tbaa !15
  %35 = getelementptr inbounds i8, ptr %32, i64 22
  store i8 0, ptr %35, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %36 = invoke noalias noundef nonnull dereferenceable(5223) ptr @_Znwm(i64 noundef 5223) #29
          to label %37 unwind label %84

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !11
  store i64 5222, ptr %38, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5222) %36, ptr noundef nonnull align 1 dereferenceable(5222) @.str.10, i64 5222, i1 false)
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 5222, ptr %39, align 8, !tbaa !15
  %40 = getelementptr inbounds i8, ptr %36, i64 5222
  store i8 0, ptr %40, align 1, !tbaa !19
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %41 unwind label %86

41:                                               ; preds = %37
  call void @_ZdlPv(ptr noundef nonnull %36) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %42 = load ptr, ptr %2, align 8, !tbaa !11
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, ptr %34, align 8, !tbaa !15
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #26
  br label %48

48:                                               ; preds = %47, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %50 = invoke noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #29
          to label %51 unwind label %98

51:                                               ; preds = %48
  store ptr %50, ptr %4, align 8, !tbaa !11
  store i64 21, ptr %49, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %50, ptr noundef nonnull align 1 dereferenceable(21) @.str.9, i64 21, i1 false)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 21, ptr %52, align 8, !tbaa !15
  %53 = getelementptr inbounds i8, ptr %50, i64 21
  store i8 0, ptr %53, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %54 = invoke noalias noundef nonnull dereferenceable(3385) ptr @_Znwm(i64 noundef 3385) #29
          to label %55 unwind label %100

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %54, ptr %5, align 8, !tbaa !11
  store i64 3384, ptr %56, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3384) %54, ptr noundef nonnull align 1 dereferenceable(3384) @.str.11, i64 3384, i1 false)
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 3384, ptr %57, align 8, !tbaa !15
  %58 = getelementptr inbounds i8, ptr %54, i64 3384
  store i8 0, ptr %58, align 1, !tbaa !19
  invoke fastcc void @_ZL15__apo_writeFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %59 unwind label %102

59:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef nonnull %54) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  %60 = load ptr, ptr %4, align 8, !tbaa !11
  %61 = icmp eq ptr %60, %49
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, ptr %52, align 8, !tbaa !15
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %66

65:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %60) #26
  br label %66

66:                                               ; preds = %65, %62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  store i32 0, ptr %6, align 8, !tbaa !345
  %67 = getelementptr inbounds %"class.std::error_code", ptr %6, i64 0, i32 1
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #32
  store ptr %68, ptr %67, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IA22_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(22) @.str.9, i8 noundef zeroext 2)
  call void @_ZNSt10filesystem11permissionsERKNS_7__cxx114pathENS_5permsENS_12perm_optionsERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 73, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %6) #27
  %69 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %69, ptr noundef nonnull %70) #27
  br label %73

73:                                               ; preds = %72, %66
  store ptr null, ptr %69, align 8, !tbaa !38
  %74 = load ptr, ptr %7, align 8, !tbaa !11
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !15
  %80 = icmp ult i64 %79, 16
  call void @llvm.assume(i1 %80)
  br label %114

81:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %74) #26
  br label %114

82:                                               ; preds = %30
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %96

84:                                               ; preds = %33
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %93

86:                                               ; preds = %37
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %36) #26
  %88 = load ptr, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %89 = icmp eq ptr %88, %31
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, ptr %34, align 8, !tbaa !15
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %96

93:                                               ; preds = %86, %84
  %94 = phi { ptr, i32 } [ %85, %84 ], [ %87, %86 ]
  %95 = phi ptr [ %32, %84 ], [ %88, %86 ]
  call void @_ZdlPv(ptr noundef %95) #26
  br label %96

96:                                               ; preds = %93, %90, %82
  %97 = phi { ptr, i32 } [ %83, %82 ], [ %87, %90 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  br label %26

98:                                               ; preds = %48
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %112

100:                                              ; preds = %51
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br label %109

102:                                              ; preds = %55
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %54) #26
  %104 = load ptr, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  %105 = icmp eq ptr %104, %49
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i64, ptr %52, align 8, !tbaa !15
  %108 = icmp ult i64 %107, 16
  call void @llvm.assume(i1 %108)
  br label %112

109:                                              ; preds = %102, %100
  %110 = phi { ptr, i32 } [ %101, %100 ], [ %103, %102 ]
  %111 = phi ptr [ %50, %100 ], [ %104, %102 ]
  call void @_ZdlPv(ptr noundef %111) #26
  br label %112

112:                                              ; preds = %109, %106, %98
  %113 = phi { ptr, i32 } [ %99, %98 ], [ %103, %106 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %26

114:                                              ; preds = %77, %81
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  %115 = load atomic i8, ptr @_ZGVZN20__apo_phase3_runtime8instanceEvE7runtime acquire, align 8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %122, !prof !348

117:                                              ; preds = %114
  %118 = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN20__apo_phase3_runtime8instanceEvE7runtime) #27
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  call void @_ZN20__apo_phase3_runtimeC2Ev(ptr noundef nonnull align 8 dereferenceable(208) @_ZZN20__apo_phase3_runtime8instanceEvE7runtime) #27
  %121 = call i32 @__cxa_atexit(ptr nonnull @_ZN20__apo_phase3_runtimeD2Ev, ptr nonnull @_ZZN20__apo_phase3_runtime8instanceEvE7runtime, ptr nonnull @__dso_handle) #27
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN20__apo_phase3_runtime8instanceEvE7runtime) #27
  br label %122

122:                                              ; preds = %120, %117, %114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #27
  %123 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  store ptr %123, ptr %1, align 8, !tbaa !18
  store i32 1819242339, ptr %123, align 8
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 4, ptr %124, align 8, !tbaa !15
  %125 = getelementptr inbounds i8, ptr %1, i64 20
  store i8 0, ptr %125, align 4, !tbaa !19
  invoke void @_ZN20__apo_phase3_runtime17register_opstructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listI25__apo_opstruct_field_infoE(ptr noundef nonnull align 8 dereferenceable(208) @_ZZN20__apo_phase3_runtime8instanceEvE7runtime, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr null, i64 0)
          to label %126 unwind label %133

126:                                              ; preds = %122
  %127 = load ptr, ptr %1, align 8, !tbaa !11
  %128 = icmp eq ptr %127, %123
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, ptr %124, align 8, !tbaa !15
  %131 = icmp ult i64 %130, 16
  call void @llvm.assume(i1 %131)
  br label %142

132:                                              ; preds = %126
  call void @_ZdlPv(ptr noundef %127) #26
  br label %142

133:                                              ; preds = %122
  %134 = landingpad { ptr, i32 }
          cleanup
  %135 = load ptr, ptr %1, align 8, !tbaa !11
  %136 = icmp eq ptr %135, %123
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64, ptr %124, align 8, !tbaa !15
  %139 = icmp ult i64 %138, 16
  call void @llvm.assume(i1 %139)
  br label %141

140:                                              ; preds = %133
  call void @_ZdlPv(ptr noundef %135) #26
  br label %141

141:                                              ; preds = %140, %137
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #27
  br label %26

142:                                              ; preds = %129, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { cold }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !7, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !8, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!12, !14, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!13, !7, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZZ4mainENK3$_0clB5cxx11Ev: argument 0"}
!22 = distinct !{!22, !"_ZZ4mainENK3$_0clB5cxx11Ev"}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !9, i64 0}
!25 = !{!26, !7, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !7, i64 216, !8, i64 224, !33, i64 225, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256}
!27 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !7, i64 40, !30, i64 48, !8, i64 64, !31, i64 192, !7, i64 200, !32, i64 208}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !14, i64 8}
!31 = !{!"int", !8, i64 0}
!32 = !{!"_ZTSSt6locale", !7, i64 0}
!33 = !{!"bool", !8, i64 0}
!34 = !{!35, !8, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !7, i64 16, !33, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !31, i64 8}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!7, !7, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!41 = distinct !{!41, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!44 = distinct !{!44, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZL24__apo_wrap_native_sourceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_: argument 0"}
!47 = distinct !{!47, !"_ZL24__apo_wrap_native_sourceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_"}
!48 = distinct !{!48, !17}
!49 = !{!50, !46}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZL20__apo_cpp_ir_preludeB5cxx11v: argument 0"}
!54 = distinct !{!54, !"_ZL20__apo_cpp_ir_preludeB5cxx11v"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!57 = distinct !{!57, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!58 = !{!56, !46}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!61 = distinct !{!61, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!62 = !{!60, !46}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZL23__apo_python_ir_preludeB5cxx11v: argument 0"}
!65 = distinct !{!65, !"_ZL23__apo_python_ir_preludeB5cxx11v"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!68 = distinct !{!68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!69 = !{!67, !46}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!72 = distinct !{!72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!73 = !{!71, !46}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZL21__apo_java_ir_preludeB5cxx11v: argument 0"}
!76 = distinct !{!76, !"_ZL21__apo_java_ir_preludeB5cxx11v"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!79 = distinct !{!79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!80 = !{!78, !46}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!83 = distinct !{!83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!84 = !{!82, !46}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZL21__apo_rust_ir_preludeB5cxx11v: argument 0"}
!87 = distinct !{!87, !"_ZL21__apo_rust_ir_preludeB5cxx11v"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!90 = distinct !{!90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!91 = !{!89, !46}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = !{!93, !46}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZL23__apo_csharp_ir_preludeB5cxx11v: argument 0"}
!98 = distinct !{!98, !"_ZL23__apo_csharp_ir_preludeB5cxx11v"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!101 = distinct !{!101, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!102 = !{!100, !46}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!105 = distinct !{!105, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!106 = !{!104, !46}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!109 = distinct !{!109, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!112 = distinct !{!112, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZL19__apo_go_ir_preludeB5cxx11v: argument 0"}
!115 = distinct !{!115, !"_ZL19__apo_go_ir_preludeB5cxx11v"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!118 = distinct !{!118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!121 = distinct !{!121, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZL20__apo_php_ir_preludeB5cxx11v: argument 0"}
!124 = distinct !{!124, !"_ZL20__apo_php_ir_preludeB5cxx11v"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!130 = distinct !{!130, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZL21__apo_ruby_ir_preludeB5cxx11v: argument 0"}
!133 = distinct !{!133, !"_ZL21__apo_ruby_ir_preludeB5cxx11v"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!136 = distinct !{!136, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!139 = distinct !{!139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZL23__apo_kotlin_ir_preludeB5cxx11v: argument 0"}
!142 = distinct !{!142, !"_ZL23__apo_kotlin_ir_preludeB5cxx11v"}
!143 = !{!144, !7, i64 0}
!144 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !7, i64 0, !14, i64 8, !145, i64 16, !14, i64 24, !146, i64 32, !7, i64 48}
!145 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !7, i64 0}
!146 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !147, i64 0, !14, i64 8}
!147 = !{!"float", !8, i64 0}
!148 = !{!144, !14, i64 8}
!149 = !{!146, !147, i64 0}
!150 = distinct !{!150, !17}
!151 = !{!152, !153, i64 0}
!152 = !{!"_ZTS26__apo_apollo_payload_value", !153, i64 0, !154, i64 8, !12, i64 16}
!153 = !{!"_ZTSN26__apo_apollo_payload_value4KindE", !8, i64 0}
!154 = !{!"long long", !8, i64 0}
!155 = !{!152, !154, i64 8}
!156 = !{!144, !7, i64 16}
!157 = !{!145, !7, i64 0}
!158 = distinct !{!158, !17}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!161 = distinct !{!161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!164 = distinct !{!164, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!167 = distinct !{!167, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!170 = distinct !{!170, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!171 = distinct !{!171, !172, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!172 = distinct !{!172, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!175 = distinct !{!175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!178 = distinct !{!178, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!181 = distinct !{!181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!184 = distinct !{!184, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!185 = distinct !{!185, !186, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!186 = distinct !{!186, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!189 = distinct !{!189, !"_ZL19__apo_binary_targetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!192 = distinct !{!192, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!193 = !{!194, !196}
!194 = distinct !{!194, !195, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!195 = distinct !{!195, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!196 = distinct !{!196, !197, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!197 = distinct !{!197, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!200 = distinct !{!200, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!201 = !{!202, !204}
!202 = distinct !{!202, !203, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!203 = distinct !{!203, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!204 = distinct !{!204, !205, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!205 = distinct !{!205, !"_ZL20__apo_binary_commandRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!208 = distinct !{!208, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!211 = distinct !{!211, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!214 = distinct !{!214, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!217 = distinct !{!217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!220 = distinct !{!220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!223 = distinct !{!223, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!226 = distinct !{!226, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!229 = distinct !{!229, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!230 = distinct !{!230, !17}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!233 = distinct !{!233, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!234 = !{!6, !7, i64 16}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!240 = distinct !{!240, !17}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!243 = distinct !{!243, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!246 = distinct !{!246, !17}
!247 = distinct !{!247, !17}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!250 = distinct !{!250, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!253 = distinct !{!253, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!254 = distinct !{!254, !17}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!257 = distinct !{!257, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!258 = distinct !{!258, !17}
!259 = !{!260, !7, i64 0}
!260 = !{!"_ZTSNSt12_Vector_baseI26__apo_apollo_payload_valueSaIS0_EE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!261 = !{!260, !7, i64 8}
!262 = !{!260, !7, i64 16}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!265 = distinct !{!265, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZN26__apo_apollo_payload_value7integerEx: argument 0"}
!268 = distinct !{!268, !"_ZN26__apo_apollo_payload_value7integerEx"}
!269 = distinct !{!269, !17}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!272 = distinct !{!272, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZL27__apo_decode_string_literalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!275 = distinct !{!275, !"_ZL27__apo_decode_string_literalRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0:thread"}
!278 = distinct !{!278, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!279 = distinct !{!279, !17}
!280 = !{!281}
!281 = distinct !{!281, !278, !"_ZN26__apo_apollo_payload_value6stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!282 = distinct !{!282, !17}
!283 = !{!31, !31, i64 0}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN26__apo_apollo_payload_value7integerEx: argument 0"}
!286 = distinct !{!286, !"_ZN26__apo_apollo_payload_value7integerEx"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZNSt7__cxx119to_stringEx: argument 0"}
!289 = distinct !{!289, !"_ZNSt7__cxx119to_stringEx"}
!290 = distinct !{!290, !17}
!291 = distinct !{!291, !17}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!294 = distinct !{!294, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!297 = !{!293, !296}
!298 = distinct !{!298, !17}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!301 = distinct !{!301, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_"}
!302 = !{!303}
!303 = distinct !{!303, !301, !"_ZSt19__relocate_object_aI26__apo_apollo_payload_valueS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!304 = !{!300, !303}
!305 = !{!144, !14, i64 24}
!306 = distinct !{!306, !17}
!307 = !{!308, !14, i64 0}
!308 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!309 = distinct !{!309, !17}
!310 = !{!311, !7, i64 0}
!311 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_26__apo_apollo_payload_valueESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !7, i64 0, !7, i64 8}
!312 = !{!311, !7, i64 8}
!313 = !{!146, !14, i64 8}
!314 = !{!144, !7, i64 48}
!315 = distinct !{!315, !17}
!316 = !{!"branch_weights", i32 2000, i32 1}
!317 = !{!318, !7, i64 0}
!318 = !{!"_ZTSNSt12_Vector_baseI25__apo_opstruct_field_infoSaIS0_EE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!319 = !{!318, !7, i64 8}
!320 = !{!318, !7, i64 16}
!321 = distinct !{!321, !17}
!322 = !{!323, !7, i64 0}
!323 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !7, i64 0, !14, i64 8, !145, i64 16, !14, i64 24, !146, i64 32, !7, i64 48}
!324 = !{!323, !14, i64 8}
!325 = !{!326, !7, i64 0}
!326 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !7, i64 0, !14, i64 8, !145, i64 16, !14, i64 24, !146, i64 32, !7, i64 48}
!327 = !{!326, !14, i64 8}
!328 = !{!329, !7, i64 0}
!329 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !7, i64 0, !14, i64 8, !145, i64 16, !14, i64 24, !146, i64 32, !7, i64 48}
!330 = !{!329, !14, i64 8}
!331 = !{!329, !7, i64 16}
!332 = distinct !{!332, !17}
!333 = !{!326, !7, i64 16}
!334 = distinct !{!334, !17}
!335 = !{!323, !7, i64 16}
!336 = distinct !{!336, !17}
!337 = distinct !{!337, !17}
!338 = distinct !{!338, !17}
!339 = !{!340, !7, i64 0}
!340 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI25__apo_opstruct_field_infoSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !7, i64 0, !7, i64 8}
!341 = !{!340, !7, i64 8}
!342 = !{!323, !14, i64 24}
!343 = !{!323, !7, i64 48}
!344 = distinct !{!344, !17}
!345 = !{!346, !31, i64 0}
!346 = !{!"_ZTSSt10error_code", !31, i64 0, !7, i64 8}
!347 = !{!346, !7, i64 8}
!348 = !{!"branch_weights", i32 1, i32 1048575}
