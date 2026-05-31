cmake_minimum_required(VERSION 3.21)

project(ApolloNativeFrontend LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Keep final executables directly in the chosen build root so launcher and
# harness code can resolve one canonical location independent of generator.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
foreach(apollo_cfg IN ITEMS DEBUG RELEASE RELWITHDEBINFO MINSIZEREL)
    set("CMAKE_RUNTIME_OUTPUT_DIRECTORY_${apollo_cfg}" "${CMAKE_BINARY_DIR}")
endforeach()

set(APOLLO_CPP_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}")

set(APOLLO_LLVM_API_ROOT "" CACHE PATH "Root directory of a host-compatible LLVM SDK with the C++ API")
set(APOLLO_LLVM_MONOREPO_ROOT "${APOLLO_CPP_SOURCE_DIR}/../../dependencies/llvm-source" CACHE PATH "Root directory of the checked-in LLVM monorepo source tree")
set(APOLLO_LLVM_CONFIG_DIR "")
set(APOLLO_LLVM_API_LIBS "")
set(APOLLO_LLVM_LIBRARY_DIRS "")

if(NOT APOLLO_LLVM_API_ROOT AND DEFINED ENV{APOLLO_LLVM_API_ROOT})
    set(APOLLO_LLVM_API_ROOT "$ENV{APOLLO_LLVM_API_ROOT}")
endif()

foreach(apollo_llvm_candidate IN ITEMS
    "C:/Program Files/LLVM"
    "C:/Program Files (x86)/LLVM"
    "C:/Program Files/Microsoft Visual Studio/18/Community/VC/Tools/Llvm/x64")
    if(NOT APOLLO_LLVM_API_ROOT
        AND EXISTS "${apollo_llvm_candidate}/include/llvm/IR/IRBuilder.h"
        AND EXISTS "${apollo_llvm_candidate}/lib/LLVMCore.lib")
        set(APOLLO_LLVM_API_ROOT "${apollo_llvm_candidate}")
    endif()
endforeach()

if(NOT APOLLO_LLVM_API_ROOT)
    find_program(APOLLO_LLVM_CONFIG_EXECUTABLE
        NAMES llvm-config llvm-config-21 llvm-config-20 llvm-config-19 llvm-config-18 llvm-config-17 llvm-config-16)
    if(APOLLO_LLVM_CONFIG_EXECUTABLE)
        execute_process(
            COMMAND "${APOLLO_LLVM_CONFIG_EXECUTABLE}" --prefix
            OUTPUT_VARIABLE APOLLO_LLVM_CONFIG_PREFIX
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET
        )
        if(APOLLO_LLVM_CONFIG_PREFIX)
            set(APOLLO_LLVM_API_ROOT "${APOLLO_LLVM_CONFIG_PREFIX}")
        endif()
    endif()
endif()

foreach(apollo_llvm_cmake_dir IN ITEMS
    "${APOLLO_LLVM_API_ROOT}/lib/cmake/llvm"
    "${APOLLO_LLVM_API_ROOT}/lib64/cmake/llvm")
    if(NOT APOLLO_LLVM_CONFIG_DIR AND EXISTS "${apollo_llvm_cmake_dir}/LLVMConfig.cmake")
        set(APOLLO_LLVM_CONFIG_DIR "${apollo_llvm_cmake_dir}")
    endif()
endforeach()

if(APOLLO_LLVM_API_ROOT
    AND EXISTS "${APOLLO_LLVM_API_ROOT}/include/llvm/IR/IRBuilder.h"
    AND APOLLO_LLVM_CONFIG_DIR)
    list(PREPEND CMAKE_PREFIX_PATH "${APOLLO_LLVM_API_ROOT}" "${APOLLO_LLVM_CONFIG_DIR}")
    find_package(LLVM CONFIG REQUIRED)
    if(APOLLO_LLVM_CONFIG_EXECUTABLE)
        execute_process(
            COMMAND "${APOLLO_LLVM_CONFIG_EXECUTABLE}" --libdir
            OUTPUT_VARIABLE APOLLO_LLVM_CONFIG_LIBDIR
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET
        )
        execute_process(
            COMMAND "${APOLLO_LLVM_CONFIG_EXECUTABLE}" --libs core linker irreader asmparser bitreader bitwriter passes analysis transformutils scalaropts instcombine ipo instrumentation coverage target mc mcparser
            OUTPUT_VARIABLE APOLLO_LLVM_CONFIG_LIBS_RAW
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET
        )
        execute_process(
            COMMAND "${APOLLO_LLVM_CONFIG_EXECUTABLE}" --system-libs
            OUTPUT_VARIABLE APOLLO_LLVM_CONFIG_SYSTEM_LIBS_RAW
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET
        )
        if(APOLLO_LLVM_CONFIG_LIBS_RAW)
            separate_arguments(APOLLO_LLVM_API_LIBS NATIVE_COMMAND "${APOLLO_LLVM_CONFIG_LIBS_RAW}")
        endif()
        if(APOLLO_LLVM_CONFIG_SYSTEM_LIBS_RAW)
            separate_arguments(APOLLO_LLVM_SYSTEM_LIBS NATIVE_COMMAND "${APOLLO_LLVM_CONFIG_SYSTEM_LIBS_RAW}")
            list(APPEND APOLLO_LLVM_API_LIBS ${APOLLO_LLVM_SYSTEM_LIBS})
        endif()
        if(APOLLO_LLVM_CONFIG_LIBDIR)
            list(APPEND APOLLO_LLVM_LIBRARY_DIRS "${APOLLO_LLVM_CONFIG_LIBDIR}")
        endif()
    endif()
    if(NOT APOLLO_LLVM_API_LIBS)
        llvm_map_components_to_libnames(APOLLO_LLVM_API_LIBS
            Core Support Linker IRReader AsmParser BitReader BitWriter
            Passes Analysis TransformUtils ScalarOpts InstCombine
            IPO Instrumentation Coverage Target MC MCParser)
        list(APPEND APOLLO_LLVM_LIBRARY_DIRS ${LLVM_LIBRARY_DIRS})
    endif()
elseif(EXISTS "${APOLLO_LLVM_MONOREPO_ROOT}/llvm/CMakeLists.txt")
    set(CMAKE_DISABLE_PRECOMPILE_HEADERS ON CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_TOOLS OFF CACHE BOOL "" FORCE)
    set(LLVM_BUILD_TOOLS OFF CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_UTILS OFF CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_EXAMPLES OFF CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_TESTS OFF CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_BENCHMARKS OFF CACHE BOOL "" FORCE)
    set(LLVM_INCLUDE_DOCS OFF CACHE BOOL "" FORCE)
    set(LLVM_ENABLE_PROJECTS "" CACHE STRING "" FORCE)
    set(LLVM_ENABLE_RUNTIMES "" CACHE STRING "" FORCE)
    set(LLVM_TARGETS_TO_BUILD "X86" CACHE STRING "" FORCE)
    add_subdirectory("${APOLLO_LLVM_MONOREPO_ROOT}/llvm" "${CMAKE_BINARY_DIR}/apollo-llvm" EXCLUDE_FROM_ALL)
    set(APOLLO_LLVM_API_LIBS
        LLVMCore LLVMSupport LLVMLinker LLVMIRReader LLVMAsmParser LLVMBitReader LLVMBitWriter
        LLVMPasses LLVMAnalysis LLVMTransformUtils LLVMScalarOpts LLVMInstCombine
        LLVMipo LLVMInstrumentation LLVMCoverage LLVMTarget LLVMMC LLVMMCParser)
    set(LLVM_INCLUDE_DIRS
        "${APOLLO_LLVM_MONOREPO_ROOT}/llvm/include"
        "${CMAKE_BINARY_DIR}/apollo-llvm/include")
    list(APPEND APOLLO_LLVM_LIBRARY_DIRS "${CMAKE_BINARY_DIR}/apollo-llvm/lib")
else()
    message(FATAL_ERROR "Apollo now requires the LLVM C++ API. Set APOLLO_LLVM_API_ROOT or keep dependencies/llvm-source available.")
endif()

set(APOLLO_ANTLR4_RUNTIME_TARGET "")
set(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR "")
set(APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR "")
find_package(antlr4-runtime CONFIG QUIET)

foreach(apollo_antlr_target IN ITEMS antlr4_shared antlr4_static antlr4-runtime antlr4_runtime)
    if(NOT APOLLO_ANTLR4_RUNTIME_TARGET AND TARGET ${apollo_antlr_target})
        set(APOLLO_ANTLR4_RUNTIME_TARGET ${apollo_antlr_target})
    endif()
endforeach()

if(APOLLO_ANTLR4_RUNTIME_TARGET)
    get_target_property(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR ${APOLLO_ANTLR4_RUNTIME_TARGET} INTERFACE_INCLUDE_DIRECTORIES)
    if(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR STREQUAL "APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR-NOTFOUND")
        set(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR "")
    endif()
endif()

if(NOT APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR AND DEFINED APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR AND EXISTS "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}/antlr4-runtime.h")
    set(APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}")
endif()

if(NOT APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR AND DEFINED ENV{APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR} AND EXISTS "$ENV{APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}/antlr4-runtime.h")
    set(APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR "$ENV{APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}")
endif()

find_path(APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR
    NAMES antlr4-runtime.h
    HINTS
        "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}"
        "$ENV{APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}"
        "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/include"
        "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/include/antlr4-runtime"
    PATH_SUFFIXES
        antlr4-runtime
        include
        include/antlr4-runtime)

if(NOT APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR)
    set(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR "${APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR}")
endif()

if(NOT APOLLO_ANTLR4_RUNTIME_TARGET)
    find_library(APOLLO_ANTLR4_RUNTIME_LIBRARY
        NAMES antlr4-runtime antlr4_runtime antlr4_shared
        HINTS
            "${APOLLO_ANTLR4_RUNTIME_LIB_DIR}"
            "$ENV{APOLLO_ANTLR4_RUNTIME_LIB_DIR}"
            "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/lib"
            "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/lib64")

    if(NOT APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR OR NOT APOLLO_ANTLR4_RUNTIME_LIBRARY)
        message(FATAL_ERROR
            "Could not locate the ANTLR4 C++ runtime. Install the runtime development package "
            "or set antlr4-runtime_DIR/APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR/APOLLO_ANTLR4_RUNTIME_LIB_DIR.")
    endif()

    add_library(apollo_antlr4_runtime UNKNOWN IMPORTED)
    set_target_properties(apollo_antlr4_runtime PROPERTIES
        IMPORTED_LOCATION "${APOLLO_ANTLR4_RUNTIME_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}")
    set(APOLLO_ANTLR4_RUNTIME_TARGET apollo_antlr4_runtime)
endif()

set(APOLLO_NATIVE_GENERATED_DIR "${APOLLO_CPP_SOURCE_DIR}/generated")

if (NOT EXISTS "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Parser.cpp")
    message(FATAL_ERROR "Checked-in native ANTLR sources are missing from ${APOLLO_NATIVE_GENERATED_DIR}")
endif()

set(APOLLO_NATIVE_GENERATED_SOURCES
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1BaseVisitor.cpp"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Lexer.cpp"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Parser.cpp"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Visitor.cpp"
)
set(APOLLO_NATIVE_GENERATED_HEADERS
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Lexer.h"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Parser.h"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1BaseVisitor.h"
    "${APOLLO_NATIVE_GENERATED_DIR}/compilerv1Visitor.h"
)

set(APOLLO_NATIVE_FRONTEND_SOURCES
    src/apollo_driver.cpp
    src/apollo_codegen_optimization_plan.cpp
    src/apollo_inline_foreign.cpp
    src/visitor.cpp
    src/codegen/optimizer.cpp
    src/apollo_ir_layout_plan.cpp
    src/apollo_runtime.cpp
    src/apollo_source_preprocessor.cpp
    src/borrowck/legacy/borrow_checker.cpp
    src/borrowck/mir_pipeline.cpp
    ${APOLLO_NATIVE_GENERATED_SOURCES}
)

add_executable(apollo_frontend_native
    src/main.cpp
    ${APOLLO_NATIVE_FRONTEND_SOURCES}
)

add_executable(apollo_build_driver_native
    src/apollo_build_driver.cpp
    src/apollo_build_driver_main.cpp
    ${APOLLO_NATIVE_FRONTEND_SOURCES}
)

add_executable(apollo_runtime_tests
    src/apollo_runtime_tests.cpp
    ${APOLLO_NATIVE_FRONTEND_SOURCES}
)

add_executable(apollo_driver_tests
    src/apollo_driver_tests.cpp
    ${APOLLO_NATIVE_FRONTEND_SOURCES}
)

foreach(apollo_target IN ITEMS apollo_frontend_native apollo_build_driver_native apollo_runtime_tests apollo_driver_tests)
    target_include_directories(${apollo_target}
        PRIVATE
            "${APOLLO_CPP_SOURCE_DIR}/../.."
            "${APOLLO_NATIVE_GENERATED_DIR}"
            ${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}
                ${APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR}
            ${LLVM_INCLUDE_DIRS}
    )

    if(APOLLO_LLVM_LIBRARY_DIRS)
        target_link_directories(${apollo_target}
            PRIVATE
                ${APOLLO_LLVM_LIBRARY_DIRS}
        )
    endif()

    if(MSVC)
        target_compile_options(${apollo_target} PRIVATE /FS)
    endif()

    target_link_libraries(${apollo_target}
        PRIVATE
            ${APOLLO_ANTLR4_RUNTIME_TARGET}
            ${APOLLO_LLVM_API_LIBS}
            apollo_gc_concurrent
            apollo_borrowck
            apollo_hir_lowering
            apollo_mir_build
            apollo_mir_opt
            apollo_diag
    )

    # Route the codegen-emitted GC seam (`apollo_gc.hpp`) to the Go-style
    # concurrent tri-color collector. The legacy single-threaded mark-and-sweep
    # path remains available when this define is not set; we always set it for
    # the production frontend/build-driver/tests so all four exes share one GC.
    target_compile_definitions(${apollo_target}
        PRIVATE
            APOLLO_GC_CONCURRENT
    )
endforeach()
# ---------------------------------------------------------------------------
# Apollo MIR / HIR / borrow-checker foundations.
#
# These targets are intentionally self-contained: they have no LLVM or ANTLR
# dependency, no link to apollo_frontend_native, and no generated sources.
# They build the new mid-level IR pipeline and the concurrent GC runtime.
# ---------------------------------------------------------------------------

add_library(apollo_mir STATIC
    src/mir/source_info.cpp
    src/mir/ty.cpp
    src/mir/mir.cpp
    src/mir/printer.cpp
    src/mir/validator.cpp
)
target_include_directories(apollo_mir PUBLIC "${APOLLO_CPP_SOURCE_DIR}/src")
target_compile_features(apollo_mir PUBLIC cxx_std_20)

add_library(apollo_mir_build STATIC
    src/mir/build/builder.cpp
    src/mir/build/build_expr.cpp
)
target_link_libraries(apollo_mir_build PUBLIC apollo_mir)

add_library(apollo_mir_opt STATIC
    src/mir/opt/pipeline.cpp
)
target_link_libraries(apollo_mir_opt PUBLIC apollo_mir)

add_executable(apollo_mir_tests
    src/mir/apollo_mir_tests.cpp
)
target_link_libraries(apollo_mir_tests PRIVATE apollo_mir apollo_mir_build apollo_mir_opt)

add_library(apollo_gc_concurrent STATIC
    ../../GC/apollo_gc_concurrent.cpp
    ../../GC/apollo_gc_cards.cpp
    ../../GC/apollo_gc_typedesc.cpp
    ../../GC/apollo_gc_large.cpp
    ../../GC/apollo_gc_nursery.cpp
)
target_include_directories(apollo_gc_concurrent PUBLIC "${APOLLO_CPP_SOURCE_DIR}/../../GC")
target_compile_features(apollo_gc_concurrent PUBLIC cxx_std_20)
if(NOT MSVC)
    target_link_libraries(apollo_gc_concurrent PUBLIC pthread)
endif()

add_executable(apollo_gc_concurrent_tests
    ../../GC/apollo_gc_concurrent_tests.cpp
)
target_link_libraries(apollo_gc_concurrent_tests PRIVATE apollo_gc_concurrent)

# Card-marking + type-descriptor + large-object unit tests.
add_executable(apollo_gc_extensions_tests
    ../../GC/apollo_gc_extensions_tests.cpp
)
target_link_libraries(apollo_gc_extensions_tests PRIVATE apollo_gc_concurrent)

# Workstream A \u2014 generational nursery (semi-space copying + promotion).
add_executable(apollo_gc_nursery_tests
    ../../GC/apollo_gc_nursery_tests.cpp
)
target_link_libraries(apollo_gc_nursery_tests PRIVATE apollo_gc_concurrent)

# ---------------------------------------------------------------------------
# Stage 2 — MIR-based borrow checker (Rust-parity NLL).
# ---------------------------------------------------------------------------
# `apollo_borrowck` is the standalone analyzer; `apollo_borrowck_tests`
# exercises every diagnostic class with hand-built MIR bodies.
add_library(apollo_borrowck STATIC
    src/borrowck/mir/dataflow.cpp
    src/borrowck/mir/move_paths.cpp
    src/borrowck/mir/error_codes.cpp
    src/borrowck/mir/borrowck.cpp
)
target_link_libraries(apollo_borrowck PUBLIC apollo_mir)

add_executable(apollo_borrowck_tests
    src/borrowck/mir/apollo_borrowck_tests.cpp
)
target_link_libraries(apollo_borrowck_tests PRIVATE apollo_borrowck)

# ---------------------------------------------------------------------------
# Stage 3 — codegen barrier intrinsics + AST→HIR lowering scaffold.
# ---------------------------------------------------------------------------
# `apollo_codegen_barriers` exposes `emit_write_barrier` /
# `emit_safepoint_poll` to the LLVM IR emitter. The library depends on
# LLVM and is therefore only added when LLVM is already configured by
# the parent build.
if(APOLLO_LLVM_API_LIBS)
    add_library(apollo_codegen_barriers STATIC
        src/codegen/barriers.cpp
    )
    target_link_libraries(apollo_codegen_barriers PUBLIC ${APOLLO_LLVM_API_LIBS})
    target_include_directories(apollo_codegen_barriers PUBLIC "${APOLLO_CPP_SOURCE_DIR}/src")
    target_include_directories(apollo_codegen_barriers PRIVATE ${LLVM_INCLUDE_DIRS})
    if(APOLLO_LLVM_LIBRARY_DIRS)
        target_link_directories(apollo_codegen_barriers PUBLIC ${APOLLO_LLVM_LIBRARY_DIRS})
    endif()
endif()

# Wire codegen barrier emission into every executable that walks the
# Apollo AST/IR. Done as a post-hoc loop because the targets above are
# created before `apollo_codegen_barriers` exists. The compile define
# `APOLLO_CODEGEN_BARRIERS=1` lets visitor.cpp guard the include +
# call sites without a hard dependency on the static lib.
if(TARGET apollo_codegen_barriers)
    foreach(apollo_target IN ITEMS apollo_frontend_native apollo_build_driver_native apollo_runtime_tests apollo_driver_tests)
        if(TARGET ${apollo_target})
            target_link_libraries(${apollo_target} PRIVATE apollo_codegen_barriers)
            target_compile_definitions(${apollo_target} PRIVATE APOLLO_CODEGEN_BARRIERS=1)
        endif()
    endforeach()
endif()

# `apollo_hir_lowering` is currently a scaffold (each visit method
# emits a TODO diagnostic). Built unconditionally so the dispatch
# infrastructure stays in lockstep with `hir.h`.
add_library(apollo_hir_lowering STATIC
    src/hir/lowering.cpp
)
target_include_directories(apollo_hir_lowering PUBLIC "${APOLLO_CPP_SOURCE_DIR}/src")
target_include_directories(apollo_hir_lowering PRIVATE "${APOLLO_NATIVE_GENERATED_DIR}")
if(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR)
    target_include_directories(apollo_hir_lowering PRIVATE "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}")
endif()
if(APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR)
    target_include_directories(apollo_hir_lowering PRIVATE "${APOLLO_ANTLR4_RUNTIME_FALLBACK_INCLUDE_DIR}")
endif()
target_link_libraries(apollo_hir_lowering PUBLIC apollo_mir)
if(APOLLO_ANTLR4_RUNTIME_TARGET)
    target_link_libraries(apollo_hir_lowering PUBLIC ${APOLLO_ANTLR4_RUNTIME_TARGET})
endif()

# apollo_diag: unified diagnostic format that bridges legacy / HIR / MIR.
add_library(apollo_diag STATIC
    src/diag/diagnostic.cpp
)
target_include_directories(apollo_diag PUBLIC "${APOLLO_CPP_SOURCE_DIR}/src")
target_link_libraries(apollo_diag PUBLIC apollo_mir apollo_borrowck apollo_hir_lowering)


# CMAKE ASM
set(ASM_OUTPUT_DIR "${APOLLO_CPP_SOURCE_DIR}/asbuild")
set(APOLLO_ASM_LAYOUT_ROOT "${APOLLO_CPP_SOURCE_DIR}/../..")
file(MAKE_DIRECTORY "${ASM_OUTPUT_DIR}")

set(APOLLO_ASM_TARGETS
    apollo_frontend_native
    apollo_build_driver_native
    apollo_runtime_tests
    apollo_driver_tests
    apollo_mir
    apollo_mir_build
    apollo_mir_opt
    apollo_mir_tests
    apollo_gc_concurrent
    apollo_gc_concurrent_tests
    apollo_gc_extensions_tests
    apollo_gc_nursery_tests
    apollo_borrowck
    apollo_borrowck_tests
    apollo_hir_lowering
    apollo_diag
)
if(TARGET apollo_codegen_barriers)
    list(APPEND APOLLO_ASM_TARGETS apollo_codegen_barriers)
endif()

set(APOLLO_CPP_FILES "")
foreach(apollo_target IN LISTS APOLLO_ASM_TARGETS)
    get_target_property(apollo_target_sources ${apollo_target} SOURCES)
    if(NOT apollo_target_sources)
        continue()
    endif()

    foreach(src IN LISTS apollo_target_sources)
        get_filename_component(src_abs "${src}" ABSOLUTE BASE_DIR "${APOLLO_CPP_SOURCE_DIR}")
        if(src_abs MATCHES "\\.cpp$")
            list(APPEND APOLLO_CPP_FILES "${src_abs}")
        endif()
    endforeach()
endforeach()
list(REMOVE_DUPLICATES APOLLO_CPP_FILES)

set(ASM_FILES "")

foreach(src IN LISTS APOLLO_CPP_FILES)
    file(RELATIVE_PATH rel_path "${APOLLO_ASM_LAYOUT_ROOT}" "${src}")
    string(REPLACE "\\" "/" rel_path "${rel_path}")
    string(REGEX REPLACE "\\.cpp$" ".s" rel_path "${rel_path}")
    set(out "${ASM_OUTPUT_DIR}/${rel_path}")
    get_filename_component(out_dir "${out}" DIRECTORY)

    add_custom_command(
        OUTPUT "${out}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${out_dir}"
        COMMAND ${CMAKE_CXX_COMPILER}
                "$<$<NOT:$<BOOL:${MSVC}>>:-std=c++${CMAKE_CXX_STANDARD}>"
                "$<$<BOOL:$<TARGET_PROPERTY:apollo_frontend_native,COMPILE_OPTIONS>>:$<TARGET_PROPERTY:apollo_frontend_native,COMPILE_OPTIONS>>"
                "$<$<BOOL:$<TARGET_PROPERTY:apollo_frontend_native,INCLUDE_DIRECTORIES>>:-I$<JOIN:$<TARGET_PROPERTY:apollo_frontend_native,INCLUDE_DIRECTORIES>,;-I>>"
                "$<$<BOOL:$<TARGET_PROPERTY:apollo_frontend_native,COMPILE_DEFINITIONS>>:-D$<JOIN:$<TARGET_PROPERTY:apollo_frontend_native,COMPILE_DEFINITIONS>,;-D>>"
                -S "${src}"
                -o "${out}"
        DEPENDS "${src}"
        COMMAND_EXPAND_LISTS
        VERBATIM
    )

    list(APPEND ASM_FILES "${out}")
endforeach()

add_custom_target(apollo_asm ALL DEPENDS ${ASM_FILES})
# End CMAKE ASM