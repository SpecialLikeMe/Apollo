#!/usr/bin/env sh
set -eu

resolve_script_path() {
    target=$1
    while [ -L "$target" ]; do
        target_dir=$(CDPATH= cd -- "$(dirname -- "$target")" && pwd -P)
        link_target=$(readlink "$target")
        case "$link_target" in
            /*) target=$link_target ;;
            *) target=$target_dir/$link_target ;;
        esac
    done

    target_dir=$(CDPATH= cd -- "$(dirname -- "$target")" && pwd -P)
    printf '%s/%s\n' "$target_dir" "$(basename -- "$target")"
}

SCRIPT_PATH=$(resolve_script_path "$0")
PAYLOAD_DIR=$(CDPATH= cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd -P)
COMPILER_DIR="$PAYLOAD_DIR/compiler"
TOOLCHAIN_ENV_SH="$COMPILER_DIR/toolchain-env.sh"
TOOLCHAIN_LOCAL_ENV_SH="$COMPILER_DIR/toolchain-local-env.sh"
USER_BIN_DIR=${XDG_BIN_HOME:-$HOME/.local/bin}
SYSTEM_BIN_DIR=${APOLLO_SYSTEM_BIN_DIR:-/usr/local/bin}
APOLLO_PATH_SENTINEL="# Added by Apollo installer"

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

write_status() {
    printf '[apollo-install] %s\n' "$1"
}

first_existing_dir() {
    for candidate in "$@"; do
        if [ -n "$candidate" ] && [ -d "$candidate" ]; then
            printf '%s\n' "$candidate"
            return 0
        fi
    done
    return 1
}

install_with_brew() {
    write_status 'Installing dependencies with Homebrew'
    brew install git openjdk llvm antlr boehm-gc make cmake sdl2 sdl2_image
}

install_with_apt() {
    write_status 'Installing dependencies with apt'
    sudo apt-get update
    sudo apt-get install -y git openjdk-21-jdk clang llvm make cmake antlr4 libgc-dev libsdl2-dev libsdl2-image-dev
}

install_with_dnf() {
    write_status 'Installing dependencies with dnf'
    sudo dnf install -y git java-21-openjdk-devel clang llvm make cmake antlr4 gc-devel SDL2-devel SDL2_image-devel
}

install_with_pacman() {
    write_status 'Installing dependencies with pacman'
    sudo pacman -Sy --needed --noconfirm git jdk21-openjdk clang llvm make cmake antlr4 antlr4-runtime gc sdl2 sdl2_image
}

ensure_dependencies() {
    if dependency_snapshot >/dev/null 2>&1; then
        write_status 'All Apollo dependencies are already present'
        return
    fi

    if command_exists brew; then
        install_with_brew
        return
    fi
    if command_exists apt-get; then
        install_with_apt
        return
    fi
    if command_exists dnf; then
        install_with_dnf
        return
    fi
    if command_exists pacman; then
        install_with_pacman
        return
    fi
    printf 'Unsupported platform package manager. Install Java, Clang/LLVM, ANTLR4, make, cmake, and Boehm GC manually.\n' >&2
    exit 1
}

resolve_java_bin() {
    if command_exists javac; then
        dirname "$(command -v javac)"
        return
    fi
    if [ -x /usr/libexec/java_home ]; then
        printf '%s/bin\n' "$(/usr/libexec/java_home)"
        return
    fi
    printf '\n'
}

resolve_llvm_bin() {
    if command_exists clang && command_exists clang++ && command_exists llc; then
        dirname "$(command -v clang)"
        return
    fi
    if command_exists brew; then
        llvm_prefix=$(brew --prefix llvm 2>/dev/null || true)
        if [ -n "$llvm_prefix" ] && [ -d "$llvm_prefix/bin" ]; then
            printf '%s/bin\n' "$llvm_prefix"
            return
        fi
    fi
    printf '\n'
}

resolve_make_bin() {
    if command_exists make; then
        command -v make
        return
    fi
    if command_exists gmake; then
        command -v gmake
        return
    fi
    printf '\n'
}

resolve_cmake_bin() {
    if command_exists cmake; then
        command -v cmake
        return
    fi
    if command_exists brew; then
        cmake_prefix=$(brew --prefix cmake 2>/dev/null || true)
        if [ -n "$cmake_prefix" ] && [ -x "$cmake_prefix/bin/cmake" ]; then
            printf '%s/bin/cmake\n' "$cmake_prefix"
            return
        fi
    fi
    for candidate in /usr/bin/cmake /usr/local/bin/cmake; do
        if [ -x "$candidate" ]; then
            printf '%s\n' "$candidate"
            return
        fi
    done
    printf '\n'
}

resolve_antlr4_runtime_cmake_dir() {
    if [ -n "${APOLLO_ANTLR4_RUNTIME_CMAKE_DIR:-}" ] && [ -d "$APOLLO_ANTLR4_RUNTIME_CMAKE_DIR" ]; then
        printf '%s\n' "$APOLLO_ANTLR4_RUNTIME_CMAKE_DIR"
        return
    fi

    for candidate in \
        /usr/lib/cmake/antlr4-runtime \
        /usr/local/lib/cmake/antlr4-runtime \
        /opt/homebrew/lib/cmake/antlr4-runtime \
        /opt/local/lib/cmake/antlr4-runtime; do
        if [ -f "$candidate/antlr4-runtime-config.cmake" ] || [ -f "$candidate/antlr4-runtimeConfig.cmake" ] || [ -f "$candidate/antlr4-runtime.cps" ]; then
            printf '%s\n' "$candidate"
            return
        fi
    done

    printf '\n'
}

pkg_config_first_path() {
    package_name=$1
    flag_kind=$2
    if ! command_exists pkg-config; then
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
    if ! command_exists pkg-config; then
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

resolve_gc_include_dir() {
    for package_name in bdw-gc bdw_gc gc; do
        if include_dir=$(pkg_config_first_path "$package_name" --cflags-only-I); then
            include_dir=$(normalize_search_dir "$include_dir")
            if resolve_gc_header "$include_dir" >/dev/null 2>&1; then
                printf '%s\n' "$include_dir"
                return
            fi
        fi
        if include_dir=$(pkg_config_variable "$package_name" includedir); then
            include_dir=$(normalize_search_dir "$include_dir")
            if resolve_gc_header "$include_dir" >/dev/null 2>&1; then
                printf '%s\n' "$include_dir"
                return
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
            return
        fi
    done

    return 1
}

resolve_gc_lib_dir() {
    for package_name in bdw-gc bdw_gc gc; do
        if lib_dir=$(pkg_config_first_path "$package_name" --libs-only-L); then
            if resolve_library_file "$lib_dir" libgc.a libgc.so libgc.dylib >/dev/null 2>&1 \
                && resolve_library_file "$lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null 2>&1; then
                printf '%s\n' "$lib_dir"
                return
            fi
        fi
        if lib_dir=$(pkg_config_variable "$package_name" libdir); then
            if resolve_library_file "$lib_dir" libgc.a libgc.so libgc.dylib >/dev/null 2>&1 \
                && resolve_library_file "$lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null 2>&1; then
                printf '%s\n' "$lib_dir"
                return
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
            return
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

dependency_snapshot() {
    java_bin=$(resolve_java_bin)
    llvm_bin=$(resolve_llvm_bin)
    make_bin=$(resolve_make_bin)
    cmake_bin=$(resolve_cmake_bin)
    git_bin=$(command -v git 2>/dev/null || printf '')
    gc_include_dir=$(resolve_gc_include_dir)
    gc_lib_dir=$(resolve_gc_lib_dir)
    sdl_include_dir=$(resolve_sdl_include_dir)
    sdl_lib_dir=$(resolve_sdl_lib_dir)

    [ -n "$git_bin" ] || return 1
    [ -n "$java_bin" ] || return 1
    [ -x "$java_bin/java" ] || return 1
    [ -x "$java_bin/javac" ] || return 1

    [ -n "$llvm_bin" ] || return 1
    [ -x "$llvm_bin/clang" ] || return 1
    [ -x "$llvm_bin/clang++" ] || return 1
    [ -x "$llvm_bin/llc" ] || return 1

    [ -n "$make_bin" ] || return 1
    [ -x "$make_bin" ] || return 1

    [ -n "$cmake_bin" ] || return 1
    [ -x "$cmake_bin" ] || return 1

    [ -f "$COMPILER_DIR/antlr-4.13.2-complete.jar" ] || return 1

    [ -n "$gc_include_dir" ] || return 1
    [ -n "$gc_lib_dir" ] || return 1
    resolve_gc_header "$gc_include_dir" >/dev/null || return 1
    resolve_library_file "$gc_lib_dir" libgc.a libgc.so libgc.dylib >/dev/null || return 1
    resolve_library_file "$gc_lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null || return 1

    [ -n "$sdl_include_dir" ] || return 1
    [ -n "$sdl_lib_dir" ] || return 1
    resolve_sdl_header "$sdl_include_dir" >/dev/null || return 1
    resolve_library_file "$sdl_lib_dir" libSDL2.a libSDL2.so libSDL2.dylib >/dev/null || return 1
    resolve_library_file "$sdl_lib_dir" libSDL2_image.a libSDL2_image.so libSDL2_image.dylib >/dev/null || return 1

    printf 'GIT_BIN=%s\n' "$git_bin"
    printf 'JAVA_BIN=%s\n' "$java_bin"
    printf 'LLVM_BIN=%s\n' "$llvm_bin"
    printf 'MAKE_BIN=%s\n' "$make_bin"
    printf 'CMAKE_BIN=%s\n' "$cmake_bin"
    printf 'GC_INCLUDE_DIR=%s\n' "$gc_include_dir"
    printf 'GC_LIB_DIR=%s\n' "$gc_lib_dir"
    printf 'SDL_INCLUDE_DIR=%s\n' "$sdl_include_dir"
    printf 'SDL_LIB_DIR=%s\n' "$sdl_lib_dir"
}

verify_dependencies() {
    if ! snapshot=$(dependency_snapshot); then
        printf 'Apollo dependency verification failed. Required components: java, javac, clang, clang++, llc, make/gmake, cmake, bundled antlr-4.13.2-complete.jar, Boehm GC headers/libs, and SDL2/SDL2_image headers/libs.\n' >&2
        return 1
    fi

    eval "$snapshot"
    write_status "Verified git at $GIT_BIN"
    write_status "Verified Java at $JAVA_BIN"
    write_status "Verified LLVM toolchain at $LLVM_BIN"
    write_status "Verified make at $MAKE_BIN"
    write_status "Verified CMake at $CMAKE_BIN"
    write_status "Verified Boehm GC include dir at $GC_INCLUDE_DIR"
    write_status "Verified Boehm GC lib dir at $GC_LIB_DIR"
    write_status "Verified SDL include dir at $SDL_INCLUDE_DIR"
    write_status "Verified SDL lib dir at $SDL_LIB_DIR"
}

write_path_profile_snippet() {
    profile_path=$1
    bin_dir=$2

    if [ ! -f "$profile_path" ]; then
        : > "$profile_path"
    fi

    if grep -F "$APOLLO_PATH_SENTINEL" "$profile_path" >/dev/null 2>&1; then
        return
    fi

    {
        printf '\n%s\n' "$APOLLO_PATH_SENTINEL"
        printf 'case ":$PATH:" in\n'
        printf '    *":%s:"*) ;;\n' "$bin_dir"
        printf '    *) export PATH="%s:$PATH" ;;\n' "$bin_dir"
        printf 'esac\n'
    } >> "$profile_path"
}

publish_cli_shims() {
    mkdir -p "$USER_BIN_DIR"
    ln -snf "$PAYLOAD_DIR/apollo.sh" "$USER_BIN_DIR/apollo"
    ln -snf "$PAYLOAD_DIR/apollo-config.sh" "$USER_BIN_DIR/apollo-config"

    system_shims_published=0
    if [ -d "$SYSTEM_BIN_DIR" ] || mkdir -p "$SYSTEM_BIN_DIR" 2>/dev/null; then
        if ln -snf "$PAYLOAD_DIR/apollo.sh" "$SYSTEM_BIN_DIR/apollo" 2>/dev/null \
            && ln -snf "$PAYLOAD_DIR/apollo-config.sh" "$SYSTEM_BIN_DIR/apollo-config" 2>/dev/null; then
            system_shims_published=1
        elif command_exists sudo; then
            if sudo ln -snf "$PAYLOAD_DIR/apollo.sh" "$SYSTEM_BIN_DIR/apollo" \
                && sudo ln -snf "$PAYLOAD_DIR/apollo-config.sh" "$SYSTEM_BIN_DIR/apollo-config"; then
                system_shims_published=1
            fi
        fi
    elif command_exists sudo; then
        if sudo mkdir -p "$SYSTEM_BIN_DIR" \
            && sudo ln -snf "$PAYLOAD_DIR/apollo.sh" "$SYSTEM_BIN_DIR/apollo" \
            && sudo ln -snf "$PAYLOAD_DIR/apollo-config.sh" "$SYSTEM_BIN_DIR/apollo-config"; then
            system_shims_published=1
        fi
    fi

    case ":$PATH:" in
        *":$USER_BIN_DIR:"*) ;;
        *) export PATH="$USER_BIN_DIR:$PATH" ;;
    esac

    write_path_profile_snippet "$HOME/.profile" "$USER_BIN_DIR"
    write_path_profile_snippet "$HOME/.bashrc" "$USER_BIN_DIR"
    write_path_profile_snippet "$HOME/.zprofile" "$USER_BIN_DIR"
    write_path_profile_snippet "$HOME/.zshrc" "$USER_BIN_DIR"

    write_status "Installed Apollo shims to $USER_BIN_DIR"
    if [ "$system_shims_published" -eq 1 ]; then
        write_status "Installed Apollo system shims to $SYSTEM_BIN_DIR"
    else
        write_status "Could not install system shims to $SYSTEM_BIN_DIR; user shims in $USER_BIN_DIR will be used instead"
    fi
}

validate_cli_shims() {
    if command -v apollo-config >/dev/null 2>&1; then
        if apollo-config status >/dev/null 2>&1; then
            return 0
        fi
    fi

    if [ -x "$SYSTEM_BIN_DIR/apollo-config" ] && "$SYSTEM_BIN_DIR/apollo-config" status >/dev/null 2>&1; then
        return 0
    fi

    if [ -x "$USER_BIN_DIR/apollo-config" ] && "$USER_BIN_DIR/apollo-config" status >/dev/null 2>&1; then
        return 0
    fi

    printf 'Apollo CLI validation failed: apollo-config could not run from PATH, %s, or %s\n' "$SYSTEM_BIN_DIR" "$USER_BIN_DIR" >&2
    return 1
}

validate_toolchain_env() {
    if ! APOLLO_COMPILER_DIR="$COMPILER_DIR" sh -c '
        set -eu
        . "$1"
        if [ -n "${APOLLO_CMAKE_EXE:-}" ] && [ -x "$APOLLO_CMAKE_EXE" ]; then
            exit 0
        fi
        command -v cmake >/dev/null 2>&1
    ' sh "$TOOLCHAIN_ENV_SH"; then
        printf 'Apollo toolchain environment validation failed: cmake was not available after sourcing %s\n' "$TOOLCHAIN_ENV_SH" >&2
        return 1
    fi
}

mkdir -p "$COMPILER_DIR"
chmod +x "$SCRIPT_PATH" "$PAYLOAD_DIR/apollo.sh" "$PAYLOAD_DIR/apollo-config.sh" "$COMPILER_DIR/exec.sh" "$PAYLOAD_DIR/apollo-manage.sh"
publish_cli_shims
validate_cli_shims

ensure_dependencies
verify_dependencies

JAVA_BIN=$(resolve_java_bin)
LLVM_BIN=$(resolve_llvm_bin)
MAKE_BIN=$(resolve_make_bin)
CMAKE_BIN=$(resolve_cmake_bin)
ANTLR4_RUNTIME_CMAKE_DIR=$(resolve_antlr4_runtime_cmake_dir)
GC_INCLUDE_DIR=$(resolve_gc_include_dir)
GC_LIB_DIR=$(resolve_gc_lib_dir)
SDL_INCLUDE_DIR=$(resolve_sdl_include_dir)
SDL_LIB_DIR=$(resolve_sdl_lib_dir)

cat > "$TOOLCHAIN_LOCAL_ENV_SH" <<EOF
export APOLLO_JAVA_BIN="${JAVA_BIN}"
export APOLLO_LLVM_BIN="${LLVM_BIN}"
export APOLLO_MAKE_EXE="${MAKE_BIN}"
export APOLLO_CMAKE_EXE="${CMAKE_BIN}"
export APOLLO_ANTLR4_RUNTIME_CMAKE_DIR="${ANTLR4_RUNTIME_CMAKE_DIR}"
export APOLLO_GC_INCLUDE_DIR="${GC_INCLUDE_DIR}"
export APOLLO_GC_LIB_DIR="${GC_LIB_DIR}"
export APOLLO_SDL_INCLUDE_DIR="${SDL_INCLUDE_DIR}"
export APOLLO_SDL_LIB_DIR="${SDL_LIB_DIR}"
export APOLLO_CXX_STD="c++20"
EOF

chmod +x "$SCRIPT_PATH" "$PAYLOAD_DIR/apollo.sh" "$PAYLOAD_DIR/apollo-config.sh" "$COMPILER_DIR/exec.sh" "$TOOLCHAIN_ENV_SH" "$TOOLCHAIN_LOCAL_ENV_SH"
validate_toolchain_env
write_status "Wrote POSIX toolchain environment to $TOOLCHAIN_LOCAL_ENV_SH"
write_status "Apollo is available as 'apollo' and 'apollo-config' from $USER_BIN_DIR"