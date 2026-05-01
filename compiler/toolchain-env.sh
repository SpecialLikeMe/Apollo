#!/usr/bin/env sh
set -eu

if [ "${APOLLO_TOOLCHAIN_ENV_LOADED:-0}" = "1" ]; then
    return 0 2>/dev/null || exit 0
fi
export APOLLO_TOOLCHAIN_ENV_LOADED=1

first_existing_dir() {
    for candidate in "$@"; do
        if [ -n "$candidate" ] && [ -d "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_java_bin() {
    if [ -n "${APOLLO_JAVA_BIN:-}" ] && [ -x "${APOLLO_JAVA_BIN}/javac" ]; then
        printf '%s\n' "$APOLLO_JAVA_BIN"
        return 0
    fi
    if command -v javac >/dev/null 2>&1; then
        dirname "$(command -v javac)"
        return 0
    fi
    if [ -x /usr/libexec/java_home ]; then
        java_home=$(/usr/libexec/java_home 2>/dev/null || true)
        if [ -n "$java_home" ] && [ -d "$java_home/bin" ]; then
            printf '%s/bin\n' "$java_home"
            return 0
        fi
    fi
    return 1
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

resolve_gc_include_dir() {
    if [ -n "${APOLLO_GC_INCLUDE_DIR:-}" ] && [ -d "$APOLLO_GC_INCLUDE_DIR" ]; then
        printf '%s\n' "$APOLLO_GC_INCLUDE_DIR"
        return 0
    fi
    for package_name in bdw-gc bdw_gc gc; do
        if include_dir=$(pkg_config_first_path "$package_name" --cflags-only-I); then
            printf '%s\n' "$include_dir"
            return 0
        fi
    done
    first_existing_dir \
        /opt/homebrew/include \
        /usr/local/include \
        /usr/include \
        /opt/local/include
}

resolve_gc_lib_dir() {
    if [ -n "${APOLLO_GC_LIB_DIR:-}" ] && [ -d "$APOLLO_GC_LIB_DIR" ]; then
        printf '%s\n' "$APOLLO_GC_LIB_DIR"
        return 0
    fi
    for package_name in bdw-gc bdw_gc gc; do
        if lib_dir=$(pkg_config_first_path "$package_name" --libs-only-L); then
            printf '%s\n' "$lib_dir"
            return 0
        fi
    done
    first_existing_dir \
        /opt/homebrew/lib \
        /usr/local/lib \
        /usr/lib64 \
        /usr/lib \
        /opt/local/lib
}

if java_bin=$(resolve_java_bin 2>/dev/null); then
    export APOLLO_JAVA_BIN="$java_bin"
fi

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

if gc_include_dir=$(resolve_gc_include_dir 2>/dev/null); then
    export APOLLO_GC_INCLUDE_DIR="$gc_include_dir"
fi

if gc_lib_dir=$(resolve_gc_lib_dir 2>/dev/null); then
    export APOLLO_GC_LIB_DIR="$gc_lib_dir"
fi

export APOLLO_CXX_STD="${APOLLO_CXX_STD:-c++20}"
export APOLLO_OPT_LEVEL="${APOLLO_OPT_LEVEL:-3}"