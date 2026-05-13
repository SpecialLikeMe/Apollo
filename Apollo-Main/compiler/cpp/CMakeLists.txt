cmake_minimum_required(VERSION 3.21)

project(ApolloNativeFrontend LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(APOLLO_CPP_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}")

set(APOLLO_LLVM_API_ROOT "" CACHE PATH "Root directory of a host-compatible LLVM SDK with the C++ API")
set(APOLLO_LLVM_MONOREPO_ROOT "${APOLLO_CPP_SOURCE_DIR}/../../dependencies/llvm-source" CACHE PATH "Root directory of the checked-in LLVM monorepo source tree")

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

if(APOLLO_LLVM_API_ROOT
    AND EXISTS "${APOLLO_LLVM_API_ROOT}/include/llvm/IR/IRBuilder.h"
    AND EXISTS "${APOLLO_LLVM_API_ROOT}/lib/LLVMCore.lib"
    AND EXISTS "${APOLLO_LLVM_API_ROOT}/lib/cmake/llvm/LLVMConfig.cmake")
    list(PREPEND CMAKE_PREFIX_PATH "${APOLLO_LLVM_API_ROOT}")
    find_package(LLVM CONFIG REQUIRED)
    llvm_map_components_to_libnames(APOLLO_LLVM_API_LIBS Core Support Linker IRReader AsmParser BitReader)
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
else()
    message(FATAL_ERROR "Apollo now requires the LLVM C++ API. Set APOLLO_LLVM_API_ROOT or keep dependencies/llvm-source available.")
endif()

find_package(antlr4-runtime CONFIG REQUIRED)

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

    if(MSVC)
        target_compile_options(${apollo_target} PRIVATE /FS)
    endif()

    target_link_libraries(${apollo_target}
        PRIVATE
            antlr4_shared
            ${APOLLO_LLVM_API_LIBS}
    )
endforeach()