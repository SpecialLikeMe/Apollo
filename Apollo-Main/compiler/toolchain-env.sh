#!/usr/bin/env sh
set -eu

if [ "${APOLLO_TOOLCHAIN_ENV_LOADED:-0}" = "1" ]; then
    return 0 2>/dev/null || exit 0
fi
export APOLLO_TOOLCHAIN_ENV_LOADED=1

TOOLCHAIN_ENV_DIR=${APOLLO_COMPILER_DIR:-}
TOOLCHAIN_LOCAL_ENV_SH=
if [ -n "$TOOLCHAIN_ENV_DIR" ]; then
    TOOLCHAIN_LOCAL_ENV_SH="$TOOLCHAIN_ENV_DIR/toolchain-local-env.sh"
fi
if [ -n "$TOOLCHAIN_LOCAL_ENV_SH" ] && [ -f "$TOOLCHAIN_LOCAL_ENV_SH" ]; then
    . "$TOOLCHAIN_LOCAL_ENV_SH"
fi

first_existing_dir() {
    for candidate in "$@"; do
        if [ -n "$candidate" ] && [ -d "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_library_file() {
    lib_dir=$1
    shift
    for name in "$@"; do
        candidate="$lib_dir/$name"
        if [ -f "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_gc_header() {
    include_dir=$1
    for candidate in \
        "$include_dir/gc_cpp.h" \
        "$include_dir/gc/gc_cpp.h" \
        "$include_dir/gc.h" \
        "$include_dir/gc/gc.h"; do
        if [ -f "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_sdl_header() {
    include_dir=$1
    for candidate in \
        "$include_dir/SDL.h" \
        "$include_dir/SDL2/SDL.h"; do
        if [ -f "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

pkg_config_first_path() {
    package_name=$1
    flag_kind=$2
    if ! command -v pkg-config >/dev/null 2>&1; then
        return 1
    fi
    output=$(pkg-config "$flag_kind" "$package_name" 2>/dev/null || true)
    for token in $output; do
        case "$token" in
            -I*) printf '%s\n' "${token#-I}"; return 0 ;;
            -L*) printf '%s\n' "${token#-L}"; return 0 ;;
        esac
    done
    return 1
}

pkg_config_variable() {
    package_name=$1
    variable_name=$2
    if ! command -v pkg-config >/dev/null 2>&1; then
        return 1
    fi
    value=$(pkg-config --variable="$variable_name" "$package_name" 2>/dev/null || true)
    [ -n "$value" ] || return 1
    printf '%s\n' "$value"
}

normalize_search_dir() {
    candidate=$1
    if [ -f "$candidate" ]; then
        dirname -- "$candidate"
        return 0
    fi
    printf '%s\n' "$candidate"
}

resolve_llvm_bin() {
    if [ -n "${APOLLO_LLVM_BIN:-}" ] && [ -x "${APOLLO_LLVM_BIN}/clang" ] && [ -x "${APOLLO_LLVM_BIN}/llc" ]; then
        printf '%s\n' "$APOLLO_LLVM_BIN"
        return 0
    fi
    if command -v clang >/dev/null 2>&1 && command -v llc >/dev/null 2>&1; then
        dirname "$(command -v clang)"
        return 0
    fi
    if command -v brew >/dev/null 2>&1; then
        brew_llvm=$(brew --prefix llvm 2>/dev/null || true)
        if [ -n "$brew_llvm" ] && [ -d "$brew_llvm/bin" ]; then
            printf '%s/bin\n' "$brew_llvm"
            return 0
        fi
    fi
    first_existing_dir \
        /opt/homebrew/opt/llvm/bin \
        /usr/local/opt/llvm/bin \
        /usr/lib/llvm-18/bin \
        /usr/lib/llvm-17/bin \
        /usr/lib/llvm-16/bin \
        /usr/lib/llvm-15/bin \
        /usr/lib64/llvm/bin
}

resolve_make_bin() {
    if [ -n "${APOLLO_MAKE_EXE:-}" ] && [ -x "$APOLLO_MAKE_EXE" ]; then
        printf '%s\n' "$APOLLO_MAKE_EXE"
        return 0
    fi
    if command -v make >/dev/null 2>&1; then
        command -v make
        return 0
    fi
    if command -v gmake >/dev/null 2>&1; then
        command -v gmake
        return 0
    fi
    return 1
}

resolve_cmake_bin() {
    if [ -n "${APOLLO_CMAKE_EXE:-}" ] && [ -x "$APOLLO_CMAKE_EXE" ]; then
        printf '%s\n' "$APOLLO_CMAKE_EXE"
        return 0
    fi
    if command -v cmake >/dev/null 2>&1; then
        command -v cmake
        return 0
    fi
    if command -v brew >/dev/null 2>&1; then
        brew_cmake=$(brew --prefix cmake 2>/dev/null || true)
        if [ -n "$brew_cmake" ] && [ -x "$brew_cmake/bin/cmake" ]; then
            printf '%s/bin/cmake\n' "$brew_cmake"
            return 0
        fi
    fi
    for candidate in /usr/bin/cmake /usr/local/bin/cmake; do
        if [ -x "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_antlr4_runtime_cmake_dir() {
    if [ -n "${APOLLO_ANTLR4_RUNTIME_CMAKE_DIR:-}" ] && [ -d "$APOLLO_ANTLR4_RUNTIME_CMAKE_DIR" ]; then
        printf '%s\n' "$APOLLO_ANTLR4_RUNTIME_CMAKE_DIR"
        return 0
    fi
    for candidate in \
        /usr/lib/cmake/antlr4-runtime \
        /usr/local/lib/cmake/antlr4-runtime \
        /opt/homebrew/lib/cmake/antlr4-runtime \
        /opt/local/lib/cmake/antlr4-runtime; do
        if [ -f "$candidate/antlr4-runtime-config.cmake" ] || [ -f "$candidate/antlr4-runtimeConfig.cmake" ] || [ -f "$candidate/antlr4-runtime.cps" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_gc_include_dir() {
    if [ -n "${APOLLO_GC_INCLUDE_DIR:-}" ] && [ -d "$APOLLO_GC_INCLUDE_DIR" ]; then
        printf '%s\n' "$APOLLO_GC_INCLUDE_DIR"
        return 0
    fi
    for package_name in bdw-gc bdw_gc gc; do
        if include_dir=$(pkg_config_first_path "$package_name" --cflags-only-I); then
            include_dir=$(normalize_search_dir "$include_dir")
            if resolve_gc_header "$include_dir" >/dev/null 2>&1; then
                printf '%s\n' "$include_dir"
                return 0
            fi
        fi
        if include_dir=$(pkg_config_variable "$package_name" includedir); then
            include_dir=$(normalize_search_dir "$include_dir")
            if resolve_gc_header "$include_dir" >/dev/null 2>&1; then
                printf '%s\n' "$include_dir"
                return 0
            fi
        fi
    done
    for candidate in \
        /opt/homebrew/include \
        /usr/local/include \
        /usr/include \
        /opt/local/include \
        /usr/include/gc; do
        if [ -d "$candidate" ] && resolve_gc_header "$candidate" >/dev/null 2>&1; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_gc_lib_dir() {
    if [ -n "${APOLLO_GC_LIB_DIR:-}" ] && [ -d "$APOLLO_GC_LIB_DIR" ]; then
        printf '%s\n' "$APOLLO_GC_LIB_DIR"
        return 0
    fi
    for package_name in bdw-gc bdw_gc gc; do
        if lib_dir=$(pkg_config_first_path "$package_name" --libs-only-L); then
            if resolve_library_file "$lib_dir" libgc.a libgc.so libgc.dylib >/dev/null 2>&1 \
                && resolve_library_file "$lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null 2>&1; then
                printf '%s\n' "$lib_dir"
                return 0
            fi
        fi
        if lib_dir=$(pkg_config_variable "$package_name" libdir); then
            if resolve_library_file "$lib_dir" libgc.a libgc.so libgc.dylib >/dev/null 2>&1 \
                && resolve_library_file "$lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null 2>&1; then
                printf '%s\n' "$lib_dir"
                return 0
            fi
        fi
    done
    for candidate in \
        /opt/homebrew/lib \
        /usr/local/lib \
        /usr/lib64 \
        /usr/lib \
        /opt/local/lib; do
        if [ -d "$candidate" ] \
            && resolve_library_file "$candidate" libgc.a libgc.so libgc.dylib >/dev/null 2>&1 \
            && resolve_library_file "$candidate" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null 2>&1; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_sdl_include_dir() {
    if [ -n "${APOLLO_SDL_INCLUDE_DIR:-}" ] && [ -d "$APOLLO_SDL_INCLUDE_DIR" ]; then
        printf '%s\n' "$APOLLO_SDL_INCLUDE_DIR"
        return 0
    fi
    if include_dir=$(pkg_config_first_path sdl2 --cflags-only-I); then
        include_dir=$(normalize_search_dir "$include_dir")
        if resolve_sdl_header "$include_dir" >/dev/null 2>&1; then
            printf '%s\n' "$include_dir"
            return 0
        fi
    fi
    if include_dir=$(pkg_config_variable sdl2 includedir); then
        include_dir=$(normalize_search_dir "$include_dir")
        if resolve_sdl_header "$include_dir" >/dev/null 2>&1; then
            printf '%s\n' "$include_dir"
            return 0
        fi
    fi
    for candidate in \
        /opt/homebrew/include \
        /usr/local/include \
        /usr/include \
        /opt/local/include; do
        if [ -d "$candidate" ] && resolve_sdl_header "$candidate" >/dev/null 2>&1; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_sdl_lib_dir() {
    if [ -n "${APOLLO_SDL_LIB_DIR:-}" ] && [ -d "$APOLLO_SDL_LIB_DIR" ]; then
        printf '%s\n' "$APOLLO_SDL_LIB_DIR"
        return 0
    fi
    if lib_dir=$(pkg_config_first_path sdl2 --libs-only-L); then
        if resolve_library_file "$lib_dir" libSDL2.a libSDL2.so libSDL2.dylib >/dev/null 2>&1 \
            && resolve_library_file "$lib_dir" libSDL2_image.a libSDL2_image.so libSDL2_image.dylib >/dev/null 2>&1; then
            printf '%s\n' "$lib_dir"
            return 0
        fi
    fi
    if lib_dir=$(pkg_config_variable sdl2 libdir); then
        if resolve_library_file "$lib_dir" libSDL2.a libSDL2.so libSDL2.dylib >/dev/null 2>&1 \
            && resolve_library_file "$lib_dir" libSDL2_image.a libSDL2_image.so libSDL2_image.dylib >/dev/null 2>&1; then
            printf '%s\n' "$lib_dir"
            return 0
        fi
    fi
    for candidate in \
        /opt/homebrew/lib \
        /usr/local/lib \
        /usr/lib64 \
        /usr/lib \
        /opt/local/lib; do
        if [ -d "$candidate" ] \
            && resolve_library_file "$candidate" libSDL2.a libSDL2.so libSDL2.dylib >/dev/null 2>&1 \
            && resolve_library_file "$candidate" libSDL2_image.a libSDL2_image.so libSDL2_image.dylib >/dev/null 2>&1; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

if llvm_bin=$(resolve_llvm_bin 2>/dev/null); then
    export APOLLO_LLVM_BIN="$llvm_bin"
    export APOLLO_CLANG_EXE="${APOLLO_CLANG_EXE:-$llvm_bin/clang}"
    export APOLLO_CLANGXX_EXE="${APOLLO_CLANGXX_EXE:-$llvm_bin/clang++}"
    export APOLLO_LLC_EXE="${APOLLO_LLC_EXE:-$llvm_bin/llc}"
    case ":${PATH}:" in
        *":$llvm_bin:"*) ;;
        *) export PATH="$llvm_bin:$PATH" ;;
    esac
fi

if make_bin=$(resolve_make_bin 2>/dev/null); then
    export APOLLO_MAKE_EXE="$make_bin"
fi

if cmake_bin=$(resolve_cmake_bin 2>/dev/null); then
    export APOLLO_CMAKE_EXE="$cmake_bin"
    cmake_dir=$(dirname -- "$cmake_bin")
    case ":${PATH}:" in
        *":$cmake_dir:"*) ;;
        *) export PATH="$cmake_dir:$PATH" ;;
    esac
fi

if antlr4_runtime_cmake_dir=$(resolve_antlr4_runtime_cmake_dir 2>/dev/null); then
    export APOLLO_ANTLR4_RUNTIME_CMAKE_DIR="$antlr4_runtime_cmake_dir"
fi

if gc_include_dir=$(resolve_gc_include_dir 2>/dev/null); then
    export APOLLO_GC_INCLUDE_DIR="$gc_include_dir"
fi

if gc_lib_dir=$(resolve_gc_lib_dir 2>/dev/null); then
    export APOLLO_GC_LIB_DIR="$gc_lib_dir"
fi

if sdl_include_dir=$(resolve_sdl_include_dir 2>/dev/null); then
    export APOLLO_SDL_INCLUDE_DIR="$sdl_include_dir"
fi

if sdl_lib_dir=$(resolve_sdl_lib_dir 2>/dev/null); then
    export APOLLO_SDL_LIB_DIR="$sdl_lib_dir"
fi

export APOLLO_CXX_STD="${APOLLO_CXX_STD:-c++20}"
export APOLLO_OPT_LEVEL="${APOLLO_OPT_LEVEL:-3}"