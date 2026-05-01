#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
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