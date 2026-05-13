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
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd -P)
MODE_FILE="$SCRIPT_DIR/.apollo-execution-mode"

read_mode() {
    if [ -f "$MODE_FILE" ]; then
        mode=$(tr -d '\r\n' < "$MODE_FILE")
        if [ "$mode" = "jit" ] || [ "$mode" = "aot" ]; then
            printf '%s\n' "$mode"
            return
        fi
    fi
    printf 'aot\n'
}

case "${1-}" in
    aot)
        printf 'aot\n' > "$MODE_FILE"
        printf 'Apollo execution mode set to aot\n'
        ;;
    jit)
        printf 'jit\n' > "$MODE_FILE"
        printf 'Apollo execution mode set to jit\n'
        ;;
    get-mode)
        read_mode
        ;;
    status)
        printf 'mode=%s\n' "$(read_mode)"
        ;;
    jit-status)
        mode=$(read_mode)
        if [ "$mode" != "jit" ]; then
            printf 'jit disabled\n'
            exit 0
        fi
        jit_path=${APOLLO_JIT_EXE:-$SCRIPT_DIR/apollo_jit}
        if [ -x "$jit_path" ]; then
            printf 'jit enabled: %s\n' "$jit_path"
        else
            printf 'jit requested but runner missing: %s\n' "$jit_path" >&2
            exit 1
        fi
        ;;
    *)
        printf 'Usage: apollo-config.sh [aot|jit|get-mode|status|jit-status]\n' >&2
        exit 1
        ;;
esac