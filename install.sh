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

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

write_status() {
    printf '[apollo-install] %s\n' "$1"
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
    if command_exists clang && command_exists llc; then
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

ensure_dependencies

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
write_status "Use $INSTALL_DIR/apollo.sh to invoke Apollo on POSIX hosts"