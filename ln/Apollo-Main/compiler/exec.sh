#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
RESOLVED_APOLLO_DIR=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)
APOLLO_DIR=${APOLLO_DIR:-$RESOLVED_APOLLO_DIR}

running_under_wsl() {
    if [ -n "${WSL_DISTRO_NAME:-}" ]; then
        return 0
    fi

    kernel_release=$(uname -r 2>/dev/null || printf '')
    case "$kernel_release" in
        *[Mm]icrosoft*|*WSL*) return 0 ;;
    esac

    return 1
}

default_native_build_dir() {
    if [ -n "${APOLLO_NATIVE_BUILD_DIR:-}" ]; then
        printf '%s\n' "$APOLLO_NATIVE_BUILD_DIR"
        return 0
    fi

    printf '%s/build\n' "$APOLLO_DIR"
}

NATIVE_SOURCE_DIR="$SCRIPT_DIR/cpp"
NATIVE_BUILD_DIR=$(default_native_build_dir)
NATIVE_BUILD_CONFIG=${APOLLO_NATIVE_BUILD_CONFIG:-Release}
APOLLO_FRONTEND_EXE=
APOLLO_BUILD_DRIVER_EXE=
export APOLLO_COMPILER_DIR="$SCRIPT_DIR"
CALLER_DIR=$(pwd)
TOOLCHAIN_ENV_SH="$SCRIPT_DIR/toolchain-env.sh"
CONFIG_SH="$APOLLO_DIR/apollo-config.sh"
MANAGE_SH="$RESOLVED_APOLLO_DIR/apollo-manage.sh"

if [ "${1-}" = "--version" ]; then
    exec "$MANAGE_SH" version "$RESOLVED_APOLLO_DIR"
fi

if [ "${1-}" = "--update" ]; then
    exec "$MANAGE_SH" update "$RESOLVED_APOLLO_DIR"
fi

if [ "${1-}" = "repair" ] && [ -z "${2-}" ]; then
    exec "$MANAGE_SH" repair "$RESOLVED_APOLLO_DIR"
fi

if [ "${1-}" = "help" ] || [ "${1-}" = "--help" ] || [ "${1-}" = "-h" ]; then
    printf 'Usage: apollo [-bin] <run|ctall> [filename] [outputname]\n'
    printf '                      apollo -analyze [filename]\n'
    printf '                      apollo [filename.apollo] -[L|W|M] outputname\n'
    printf '                      apollo repair\n'
    printf '                      apollo --version\n'
    printf '                      apollo --update\n'
    printf '                      apollo -m uninstall\n'
    exit 0
fi

if [ "${1-}" = "-m" ]; then
    if [ "${2-}" = "repair" ] && [ -z "${3-}" ]; then
        exec "$MANAGE_SH" repair "$RESOLVED_APOLLO_DIR"
    fi
    if [ "${2-}" = "uninstall" ] && [ -z "${3-}" ]; then
        exec "$MANAGE_SH" uninstall "$RESOLVED_APOLLO_DIR"
    fi
    printf 'Unknown management command. Usage: apollo -m <repair|uninstall>\n' >&2
    exit 1
fi

if [ -f "$TOOLCHAIN_ENV_SH" ]; then
    # shellcheck disable=SC1090
    . "$TOOLCHAIN_ENV_SH"
fi

APOLLO_CXX_STD=${APOLLO_CXX_STD:-c++20}
APOLLO_OPT_LEVEL=${APOLLO_OPT_LEVEL:-3}
APOLLO_LLC_OPT_LEVEL=${APOLLO_LLC_OPT_LEVEL:-$APOLLO_OPT_LEVEL}
APOLLO_USE_PCH=${APOLLO_USE_PCH:-1}
APOLLO_PCH_HEADER=${APOLLO_PCH_HEADER:-$SCRIPT_DIR/runtime_support/apollo_pch.hpp}
APOLLO_PCH_OUTPUT=${APOLLO_PCH_OUTPUT:-output/apollo.pch}
CODEGEN_BOOTSTRAP_VERSION=${CODEGEN_BOOTSTRAP_VERSION:-apollo-codegen-bootstrap-v2}

show_file_details() {
    case "${APOLLO_SHOW_FILE_DETAILS:-0}" in
        1|true|TRUE|yes|YES|on|ON) return 0 ;;
        *) return 1 ;;
    esac
}

abspath() {
    case "$1" in
        /*) printf '%s\n' "$1" ;;
        *) printf '%s/%s\n' "$CALLER_DIR" "$1" ;;
    esac
}

cleanup_generated() {
    preserve_path=${1-}
    manifest_path="$SCRIPT_DIR/output/cleanup-manifest.txt"
    if [ ! -f "$manifest_path" ]; then
        return 0
    fi
    while IFS= read -r generated_path; do
        [ -z "$generated_path" ] && continue
        if [ -n "$preserve_path" ] && [ "$generated_path" = "$preserve_path" ]; then
            continue
        fi
        rm -f "$generated_path" 2>/dev/null || true
    done < "$manifest_path"
}

remove_cache_path() {
    target=$1
    if [ ! -e "$target" ]; then
        return 0
    fi
    rm -rf -- "$target"
}

touch_stamp() {
    stamp_path=$1
    mkdir -p "$(dirname -- "$stamp_path")"
    if [ -f "$stamp_path" ]; then
        touch "$stamp_path"
    else
        : > "$stamp_path"
    fi
}

needs_rebuild() {
    target=$1
    shift

    if [ ! -f "$target" ]; then
        return 0
    fi

    for dependency in "$@"; do
        if [ ! -f "$dependency" ] || [ "$dependency" -nt "$target" ]; then
            return 0
        fi
    done

    return 1
}

native_target_stale() {
    target=$1

    if [ ! -f "$target" ]; then
        return 0
    fi

    for dependency in \
        "$NATIVE_SOURCE_DIR/CMakeLists.txt" \
        "$SCRIPT_DIR/compilerv1.g4"
    do
        if [ ! -f "$dependency" ] || [ "$dependency" -nt "$target" ]; then
            return 0
        fi
    done

    for dependency in $(find "$NATIVE_SOURCE_DIR/src" "$NATIVE_SOURCE_DIR/generated" -type f \( -name '*.cpp' -o -name '*.h' \) 2>/dev/null); do
        if [ ! -f "$dependency" ] || [ "$dependency" -nt "$target" ]; then
            return 0
        fi
    done

    return 1
}

run_and_capture_exit() {
    set +e
    "$@"
    status=$?
    set -e
    return "$status"
}

run_quiet_command() {
    if show_file_details; then
        "$@"
        return $?
    fi

    log_file=$(mktemp "${TMPDIR:-/tmp}/apollo-native.XXXXXX.log")
    run_and_capture_exit "$@" >"$log_file" 2>&1
    status=$?
    if [ "$status" -eq 0 ]; then
        rm -f "$log_file"
        return 0
    fi

    cat "$log_file" >&2
    rm -f "$log_file"
    return "$status"
}

normalize_posix_text_file() {
    target_file=$1

    if [ ! -f "$target_file" ]; then
        return 0
    fi

    if ! LC_ALL=C grep -q "$(printf '\r')$" "$target_file" 2>/dev/null; then
        return 0
    fi

    temp_file=$(mktemp "${TMPDIR:-/tmp}/apollo-crlf.XXXXXX")
    tr -d '\r' < "$target_file" > "$temp_file"
    cat "$temp_file" > "$target_file"
    rm -f "$temp_file"
}

normalize_llvm_shell_scripts() {
    llvm_tree="$RESOLVED_APOLLO_DIR/dependencies/llvm-source"

    if [ ! -d "$llvm_tree" ]; then
        return 0
    fi

    find "$llvm_tree" -type f \( -name '*.sh' -o -name 'config.guess' -o -name 'config.sub' \) 2>/dev/null | while IFS= read -r script_path; do
        normalize_posix_text_file "$script_path"
    done
}

configure_native_build() {
    set -- "$CMAKE_EXE"

    if [ -n "${APOLLO_NATIVE_GENERATOR:-}" ]; then
        set -- "$@" -G "$APOLLO_NATIVE_GENERATOR"
    fi

    set -- "$@" -S "$NATIVE_SOURCE_DIR" -B "$NATIVE_BUILD_DIR"

    if [ -n "${CMAKE_TOOLCHAIN_FILE:-}" ]; then
        set -- "$@" "-DCMAKE_TOOLCHAIN_FILE=$CMAKE_TOOLCHAIN_FILE"
    elif [ -n "${VCPKG_ROOT:-}" ] && [ -f "$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake" ]; then
        set -- "$@" "-DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"
    fi

    if [ -n "${APOLLO_ANTLR4_RUNTIME_CMAKE_DIR:-}" ]; then
        set -- "$@" "-Dantlr4-runtime_DIR=$APOLLO_ANTLR4_RUNTIME_CMAKE_DIR"
    fi

    if [ -n "${APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR:-}" ]; then
        set -- "$@" "-DAPOLLO_ANTLR4_RUNTIME_INCLUDE_DIR=$APOLLO_ANTLR4_RUNTIME_INCLUDE_DIR"
    fi

    if [ -n "${APOLLO_ANTLR4_RUNTIME_LIB_DIR:-}" ]; then
        set -- "$@" "-DAPOLLO_ANTLR4_RUNTIME_LIB_DIR=$APOLLO_ANTLR4_RUNTIME_LIB_DIR"
    fi

    run_quiet_command "$@"
}

resolve_cmake() {
    if [ -n "${CMAKE_EXE:-}" ] && [ -x "$CMAKE_EXE" ]; then
        return 0
    fi
    if [ -n "${APOLLO_CMAKE_EXE:-}" ] && [ -x "$APOLLO_CMAKE_EXE" ]; then
        CMAKE_EXE="$APOLLO_CMAKE_EXE"
        return 0
    fi
    if command -v cmake >/dev/null 2>&1; then
        CMAKE_EXE=$(command -v cmake)
        return 0
    fi
    for candidate in \
        /usr/bin/cmake \
        /usr/local/bin/cmake
    do
        if [ -x "$candidate" ]; then
            CMAKE_EXE="$candidate"
            return 0
        fi
    done
    printf 'CMake executable not found. Set APOLLO_CMAKE_EXE or add cmake to PATH.\n' >&2
    return 1
}

find_native_executable() {
    name=$1
    for candidate in \
        "$NATIVE_BUILD_DIR/$name" \
        "$NATIVE_BUILD_DIR/$name.exe" \
        "$NATIVE_BUILD_DIR/$NATIVE_BUILD_CONFIG/$name" \
        "$NATIVE_BUILD_DIR/$NATIVE_BUILD_CONFIG/$name.exe" \
        "$NATIVE_BUILD_DIR/Debug/$name" \
        "$NATIVE_BUILD_DIR/Debug/$name.exe" \
        "$NATIVE_BUILD_DIR/Release/$name" \
        "$NATIVE_BUILD_DIR/Release/$name.exe" \
        "$NATIVE_BUILD_DIR/RelWithDebInfo/$name" \
        "$NATIVE_BUILD_DIR/RelWithDebInfo/$name.exe" \
        "$NATIVE_BUILD_DIR/MinSizeRel/$name" \
        "$NATIVE_BUILD_DIR/MinSizeRel/$name.exe"
    do
        if [ -x "$candidate" ] && [ -s "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

resolve_native_executable() {
    name=$1
    if resolved_target=$(find_native_executable "$name"); then
        printf '%s\n' "$resolved_target"
        return 0
    fi
    printf 'Native Apollo executable not found: %s\n' "$name" >&2
    return 1
}

reuse_native_targets() {
    APOLLO_FRONTEND_EXE=
    APOLLO_BUILD_DRIVER_EXE=

    for target_name in "$@"; do
        resolved_target=$(find_native_executable "$target_name") || return 1
        if native_target_stale "$resolved_target"; then
            return 1
        fi

        case "$target_name" in
            apollo_frontend_native) APOLLO_FRONTEND_EXE=$resolved_target ;;
            apollo_build_driver_native) APOLLO_BUILD_DRIVER_EXE=$resolved_target ;;
        esac
    done

    if [ -n "$APOLLO_FRONTEND_EXE" ] && [ -n "$APOLLO_BUILD_DRIVER_EXE" ]; then
        return 0
    fi

    APOLLO_FRONTEND_EXE=$(find_native_executable apollo_frontend_native) || return 1
    APOLLO_BUILD_DRIVER_EXE=$(find_native_executable apollo_build_driver_native) || return 1
    return 0
}

ensure_native_targets() {
    resolve_cmake || return 1
    mkdir -p "$NATIVE_BUILD_DIR"

    if reuse_native_targets "$@"; then
        return 0
    fi

    if [ -f "$NATIVE_BUILD_DIR/CMakeCache.txt" ] && ! native_build_cache_valid; then
        rm -rf "$NATIVE_BUILD_DIR"
    fi

    if [ ! -f "$NATIVE_BUILD_DIR/CMakeCache.txt" ]; then
        normalize_llvm_shell_scripts
        configure_native_build
    fi

    need_native_build=0
    case "${APOLLO_FORCE_NATIVE_REBUILD:-}" in
        1|true|TRUE|yes|YES|on|ON) need_native_build=1 ;;
    esac

    if [ "$need_native_build" -eq 0 ]; then
        for target_name in "$@"; do
            case "$target_name" in
                apollo_frontend_native)
                    if APOLLO_FRONTEND_EXE=$(find_native_executable apollo_frontend_native); then
                        if native_target_stale "$APOLLO_FRONTEND_EXE"; then
                            need_native_build=1
                        fi
                    else
                        need_native_build=1
                    fi
                    ;;
                apollo_build_driver_native)
                    if APOLLO_BUILD_DRIVER_EXE=$(find_native_executable apollo_build_driver_native); then
                        if native_target_stale "$APOLLO_BUILD_DRIVER_EXE"; then
                            need_native_build=1
                        fi
                    else
                        need_native_build=1
                    fi
                    ;;
                *)
                    if resolved_target=$(find_native_executable "$target_name"); then
                        if native_target_stale "$resolved_target"; then
                            need_native_build=1
                        fi
                    else
                        need_native_build=1
                    fi
                    ;;
            esac
        done
    fi

    if [ "$need_native_build" -eq 1 ]; then
        run_quiet_command "$CMAKE_EXE" --build "$NATIVE_BUILD_DIR" --config "$NATIVE_BUILD_CONFIG" --target "$@"
    fi

    APOLLO_FRONTEND_EXE=$(resolve_native_executable apollo_frontend_native) || return 1
    APOLLO_BUILD_DRIVER_EXE=$(resolve_native_executable apollo_build_driver_native) || return 1
}

native_build_cache_valid() {
    cache_file="$NATIVE_BUILD_DIR/CMakeCache.txt"
    [ -f "$cache_file" ] || return 1
    [ -d "$NATIVE_BUILD_DIR/CMakeFiles" ] || return 1
    [ -f "$NATIVE_BUILD_DIR/cmake_install.cmake" ] || return 1
    [ "$NATIVE_SOURCE_DIR/CMakeLists.txt" -nt "$cache_file" ] && return 1
    grep -Fqx "ApolloNativeFrontend_SOURCE_DIR:STATIC=$NATIVE_SOURCE_DIR" "$cache_file" || return 1
    grep -Fqx "ApolloNativeFrontend_BINARY_DIR:STATIC=$NATIVE_BUILD_DIR" "$cache_file" || return 1
    grep -Fqx "CMAKE_HOME_DIRECTORY:INTERNAL=$NATIVE_SOURCE_DIR" "$cache_file" || return 1
}

prepare_codegen() {
    cd "$SCRIPT_DIR"
    if [ ! -f "$INPUT_FILE" ]; then
        printf 'Input file not found: %s\n' "$INPUT_FILE" >&2
        exit 1
    fi

    mkdir -p output
    ensure_native_targets apollo_frontend_native apollo_build_driver_native
    "$APOLLO_FRONTEND_EXE" "$INPUT_FILE" output/output.cpp
}

ANALYZE_MODE=0
BIN_MODE=0
BIN_OUTPUT_MODE=host
CLI_TARGET_TRIPLE=
PRESET_RAW_INPUT=
PRESET_RAW_OUTPUT=

case "${1-}" in
    -analyze)
        ANALYZE_MODE=1
        shift
        COMMAND=analyze
        ;;
    -bin)
        BIN_MODE=1
        shift
        COMMAND=${1-}
        [ -n "$COMMAND" ] && shift || true
        ;;
    *.apollo)
        case "${2-}" in
            -L)
                BIN_MODE=1
                BIN_OUTPUT_MODE=none
                CLI_TARGET_TRIPLE=x86_64-unknown-linux-gnu
                COMMAND=ctall
                PRESET_RAW_INPUT=${1-}
                PRESET_RAW_OUTPUT=${3-}
                shift 3 || true
                ;;
            -W)
                BIN_MODE=1
                BIN_OUTPUT_MODE=windows
                CLI_TARGET_TRIPLE=x86_64-w64-windows-gnu
                COMMAND=ctall
                PRESET_RAW_INPUT=${1-}
                PRESET_RAW_OUTPUT=${3-}
                shift 3 || true
                ;;
            -M)
                BIN_MODE=1
                BIN_OUTPUT_MODE=none
                CLI_TARGET_TRIPLE=x86_64-apple-darwin
                COMMAND=ctall
                PRESET_RAW_INPUT=${1-}
                PRESET_RAW_OUTPUT=${3-}
                shift 3 || true
                ;;
            *)
                COMMAND=${1-}
                [ -n "$COMMAND" ] && shift || true
                ;;
        esac
        ;;
    *)
        COMMAND=${1-}
        [ -n "$COMMAND" ] && shift || true
        ;;
esac

RAW_INPUT=${1-}
RAW_OUTPUT=${2-}
TEMP_AOT_OUTPUT=

if [ -n "$PRESET_RAW_INPUT" ]; then
    RAW_INPUT=$PRESET_RAW_INPUT
fi

if [ -n "$PRESET_RAW_OUTPUT" ]; then
    RAW_OUTPUT=$PRESET_RAW_OUTPUT
fi

if [ -z "$RAW_INPUT" ]; then
    INPUT_FILE=$(abspath "main.apollo")
else
    INPUT_FILE=$(abspath "$RAW_INPUT")
fi

if [ "$ANALYZE_MODE" -eq 1 ] && [ -n "$RAW_OUTPUT" ]; then
    printf 'Unexpected extra argument. Usage: apollo -analyze [filename]\n' >&2
    exit 1
fi

if [ "$BIN_MODE" -eq 1 ] && [ -z "$RAW_OUTPUT" ]; then
    printf 'Missing output path. Usage: apollo -bin <ctall|run> [filename] outputname\n' >&2
    printf '                    apollo [filename.apollo] -[L|W|M] outputname\n' >&2
    exit 1
fi

if [ "$COMMAND" = "clean" ] && [ -n "$RAW_OUTPUT" ]; then
    printf 'Unexpected extra argument. Usage: apollo clean [project-root]\n' >&2
    exit 1
fi

case "$COMMAND" in
    clean)
        CLEAN_ROOT=${RAW_INPUT:-$CALLER_DIR}
        CLEAN_ROOT=$(abspath "$CLEAN_ROOT")
        removed_count=0
        for target in \
            "$CLEAN_ROOT/build/.apollo-bundles" \
            "$CLEAN_ROOT/build/cache" \
            "$CLEAN_ROOT/output/cache" \
            "$APOLLO_DIR/output/cache" \
            "$SCRIPT_DIR/cache" \
            "$SCRIPT_DIR/output/cache" \
            "$APOLLO_DIR/build/output/cache" \
            "$SCRIPT_DIR/cpp/build/output/cache"
        do
            if [ -e "$target" ]; then
                remove_cache_path "$target"
                removed_count=$((removed_count + 1))
            fi
        done
        printf 'Removed %s Apollo cache path' "$removed_count"
        if [ "$removed_count" -ne 1 ]; then
            printf 's'
        fi
        printf '.\n'
        exit 0
        ;;
    run|ctall)
        if [ "$BIN_MODE" -eq 1 ]; then
            LINK_OUTPUT=$(abspath "$RAW_OUTPUT")
            case "$BIN_OUTPUT_MODE" in
                windows|host)
                    case "$LINK_OUTPUT" in
                        *.exe) ;;
                        *) LINK_OUTPUT="$LINK_OUTPUT.exe" ;;
                    esac
                    ;;
            esac
        else
            LINK_OUTPUT="$SCRIPT_DIR/output/run-$$.bin"
        fi

        if [ -n "$CLI_TARGET_TRIPLE" ]; then
            APOLLO_TARGET_TRIPLE=$CLI_TARGET_TRIPLE
            export APOLLO_TARGET_TRIPLE
        fi

        prepare_codegen

        EXECUTION_MODE=${APOLLO_EXECUTION_MODE:-}
        if [ -z "$EXECUTION_MODE" ] && [ "$BIN_MODE" -eq 0 ] && [ -x "$CONFIG_SH" ]; then
            EXECUTION_MODE=$($CONFIG_SH get-mode)
        fi
        EXECUTION_MODE=${EXECUTION_MODE:-aot}
        if [ "$EXECUTION_MODE" = "jit" ]; then
            APOLLO_JIT_EXE=${APOLLO_JIT_EXE:-$APOLLO_DIR/apollo_jit}
            "$APOLLO_BUILD_DRIVER_EXE" emit-ll "$INPUT_FILE"
            if [ ! -x "$APOLLO_JIT_EXE" ]; then
                printf 'LLVM JIT runner not found: %s\n' "$APOLLO_JIT_EXE" >&2
                exit 1
            fi
            if run_and_capture_exit "$APOLLO_JIT_EXE" output/output.ll; then
                exit_code=0
            else
                exit_code=$?
            fi
            cleanup_generated
            exit "$exit_code"
        fi

        mkdir -p "$(dirname -- "$LINK_OUTPUT")"
        "$APOLLO_BUILD_DRIVER_EXE" build-aot "$INPUT_FILE" "$LINK_OUTPUT"

        if [ "$BIN_MODE" -eq 1 ]; then
            cleanup_generated "$LINK_OUTPUT"
            if show_file_details; then
                printf 'Wrote binary to %s\n' "$LINK_OUTPUT"
            fi
            exit 0
        fi

        if run_and_capture_exit "$LINK_OUTPUT"; then
            exit_code=0
        else
            exit_code=$?
        fi
        cleanup_generated
        exit "$exit_code"
        ;;
    analyze)
        prepare_codegen
        ASAN_OUTPUT="$SCRIPT_DIR/output/output_asan"
        "$APOLLO_BUILD_DRIVER_EXE" analyze "$INPUT_FILE" "$ASAN_OUTPUT"
        if run_and_capture_exit "$ASAN_OUTPUT"; then
            exit_code=0
        else
            exit_code=$?
        fi
        cleanup_generated
        exit "$exit_code"
        ;;
    *)
        printf 'Unknown command. Usage: apollo [-bin] <run|ctall> [filename] [outputname]\n' >&2
        printf '                      apollo -analyze [filename]\n' >&2
        printf '                      apollo [filename.apollo] -[L|W|M] outputname\n' >&2
        printf '                      apollo repair\n' >&2
        printf '                      apollo --version\n' >&2
        printf '                      apollo --update\n' >&2
        printf '                      apollo -m uninstall\n' >&2
        exit 1
        ;;
esac