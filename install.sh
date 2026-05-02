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
INSTALL_DIR=$(CDPATH= cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd -P)
COMPILER_DIR="$INSTALL_DIR/compiler"
TOOLCHAIN_ENV_SH="$COMPILER_DIR/toolchain-env.sh"
USER_BIN_DIR=${XDG_BIN_HOME:-$HOME/.local/bin}
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
    brew install openjdk llvm antlr boehm-gc make
}

install_with_apt() {
    write_status 'Installing dependencies with apt'
    sudo apt-get update
    sudo apt-get install -y openjdk-21-jdk clang llvm make antlr4 libgc-dev
}

install_with_dnf() {
    write_status 'Installing dependencies with dnf'
    sudo dnf install -y java-21-openjdk-devel clang llvm make antlr4 gc-devel
}

install_with_pacman() {
    write_status 'Installing dependencies with pacman'
    sudo pacman -Sy --noconfirm jdk21-openjdk clang llvm make antlr4 boehm-gc
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
    printf 'Unsupported platform package manager. Install Java, Clang/LLVM, ANTLR4, make, and Boehm GC manually.\n' >&2
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

resolve_gc_include_dir() {
    for package_name in bdw-gc bdw_gc gc; do
        if include_dir=$(pkg_config_first_path "$package_name" --cflags-only-I); then
            printf '%s\n' "$include_dir"
            return
        fi
    done

    first_existing_dir \
        /opt/homebrew/include \
        /usr/local/include \
        /usr/include \
        /opt/local/include \
        /usr/include/gc
}

resolve_gc_lib_dir() {
    for package_name in bdw-gc bdw_gc gc; do
        if lib_dir=$(pkg_config_first_path "$package_name" --libs-only-L); then
            printf '%s\n' "$lib_dir"
            return
        fi
    done

    first_existing_dir \
        /opt/homebrew/lib \
        /usr/local/lib \
        /usr/lib64 \
        /usr/lib \
        /opt/local/lib
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

resolve_gc_library() {
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

dependency_snapshot() {
    java_bin=$(resolve_java_bin)
    llvm_bin=$(resolve_llvm_bin)
    make_bin=$(resolve_make_bin)
    gc_include_dir=$(resolve_gc_include_dir)
    gc_lib_dir=$(resolve_gc_lib_dir)

    [ -n "$java_bin" ] || return 1
    [ -x "$java_bin/java" ] || return 1
    [ -x "$java_bin/javac" ] || return 1

    [ -n "$llvm_bin" ] || return 1
    [ -x "$llvm_bin/clang" ] || return 1
    [ -x "$llvm_bin/clang++" ] || return 1
    [ -x "$llvm_bin/llc" ] || return 1

    [ -n "$make_bin" ] || return 1
    [ -x "$make_bin" ] || return 1

    [ -f "$COMPILER_DIR/antlr-4.13.2-complete.jar" ] || return 1

    [ -n "$gc_include_dir" ] || return 1
    [ -n "$gc_lib_dir" ] || return 1
    resolve_gc_header "$gc_include_dir" >/dev/null || return 1
    resolve_gc_library "$gc_lib_dir" libgc.a libgc.so libgc.dylib >/dev/null || return 1
    resolve_gc_library "$gc_lib_dir" libgccpp.a libgccpp.so libgccpp.dylib >/dev/null || return 1

    printf 'JAVA_BIN=%s\n' "$java_bin"
    printf 'LLVM_BIN=%s\n' "$llvm_bin"
    printf 'MAKE_BIN=%s\n' "$make_bin"
    printf 'GC_INCLUDE_DIR=%s\n' "$gc_include_dir"
    printf 'GC_LIB_DIR=%s\n' "$gc_lib_dir"
}

verify_dependencies() {
    if ! snapshot=$(dependency_snapshot); then
        printf 'Apollo dependency verification failed. Required components: java, javac, clang, clang++, llc, make/gmake, bundled antlr-4.13.2-complete.jar, and Boehm GC headers/libs.\n' >&2
        return 1
    fi

    eval "$snapshot"
    write_status "Verified Java at $JAVA_BIN"
    write_status "Verified LLVM toolchain at $LLVM_BIN"
    write_status "Verified make at $MAKE_BIN"
    write_status "Verified Boehm GC include dir at $GC_INCLUDE_DIR"
    write_status "Verified Boehm GC lib dir at $GC_LIB_DIR"
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
    ln -snf "$INSTALL_DIR/apollo.sh" "$USER_BIN_DIR/apollo"
    ln -snf "$INSTALL_DIR/apollo-config.sh" "$USER_BIN_DIR/apollo-config"

    case ":$PATH:" in
        *":$USER_BIN_DIR:"*) ;;
        *) export PATH="$USER_BIN_DIR:$PATH" ;;
    esac

    write_path_profile_snippet "$HOME/.profile" "$USER_BIN_DIR"
    write_path_profile_snippet "$HOME/.bashrc" "$USER_BIN_DIR"
    write_path_profile_snippet "$HOME/.zprofile" "$USER_BIN_DIR"

    write_status "Installed Apollo shims to $USER_BIN_DIR"
}

validate_cli_shims() {
    if ! "$USER_BIN_DIR/apollo-config" status >/dev/null 2>&1; then
        printf 'Apollo CLI validation failed: apollo-config could not run from %s\n' "$USER_BIN_DIR" >&2
        return 1
    fi
}

mkdir -p "$COMPILER_DIR"
chmod +x "$INSTALL_DIR/apollo.sh" "$INSTALL_DIR/apollo-config.sh" "$COMPILER_DIR/exec.sh"
publish_cli_shims
validate_cli_shims

ensure_dependencies
verify_dependencies

JAVA_BIN=$(resolve_java_bin)
LLVM_BIN=$(resolve_llvm_bin)

mkdir -p "$COMPILER_DIR"
cat > "$TOOLCHAIN_ENV_SH" <<EOF
export APOLLO_JAVA_BIN="${JAVA_BIN}"
export APOLLO_LLVM_BIN="${LLVM_BIN}"
export APOLLO_CXX_STD="c++20"
EOF

chmod +x "$INSTALL_DIR/apollo.sh" "$INSTALL_DIR/apollo-config.sh" "$COMPILER_DIR/exec.sh" "$TOOLCHAIN_ENV_SH"
write_status "Wrote POSIX toolchain environment to $TOOLCHAIN_ENV_SH"
write_status "Apollo is available as 'apollo' and 'apollo-config' from $USER_BIN_DIR"