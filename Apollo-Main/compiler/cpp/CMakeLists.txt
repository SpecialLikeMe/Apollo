cmake_minimum_required(VERSION 3.21)

project(ApolloNativeFrontend LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

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
            COMMAND "${APOLLO_LLVM_CONFIG_EXECUTABLE}" --libs core linker irreader asmparser bitreader
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
        llvm_map_components_to_libnames(APOLLO_LLVM_API_LIBS Core Support Linker IRReader AsmParser BitReader)
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
    set(APOLLO_LLVM_API_LIBS LLVMCore LLVMSupport LLVMLinker LLVMIRReader LLVMAsmParser LLVMBitReader)
    set(LLVM_INCLUDE_DIRS
        "${APOLLO_LLVM_MONOREPO_ROOT}/llvm/include"
        "${CMAKE_BINARY_DIR}/apollo-llvm/include")
    list(APPEND APOLLO_LLVM_LIBRARY_DIRS "${CMAKE_BINARY_DIR}/apollo-llvm/lib")
else()
    message(FATAL_ERROR "Apollo now requires the LLVM C++ API. Set APOLLO_LLVM_API_ROOT or keep dependencies/llvm-source available.")
endif()

set(APOLLO_ANTLR4_RUNTIME_TARGET "")
find_package(antlr4-runtime CONFIG QUIET)

foreach(apollo_antlr_target IN ITEMS antlr4_shared antlr4_static antlr4-runtime antlr4_runtime)
    if(NOT APOLLO_ANTLR4_RUNTIME_TARGET AND TARGET ${apollo_antlr_target})
        set(APOLLO_ANTLR4_RUNTIME_TARGET ${apollo_antlr_target})
    endif()
endforeach()

if(NOT APOLLO_ANTLR4_RUNTIME_TARGET)
    find_path(APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR
        NAMES antlr4-runtime.h
        HINTS
            "$ENV{APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR}"
            "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/include"
            "$ENV{APOLLO_NATIVE_CMAKE_PREFIX}/include/antlr4-runtime"
        PATH_SUFFIXES
            antlr4-runtime
            include
            include/antlr4-runtime)
    find_library(APOLLO_ANTLR4_RUNTIME_LIBRARY
        NAMES antlr4-runtime antlr4_runtime antlr4_shared
        HINTS
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
    src/apollo_ir_layout_plan.cpp
    src/apollo_runtime.cpp
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
            "${APOLLO_NATIVE_GENERATED_DIR}"
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
    )
endforeach()