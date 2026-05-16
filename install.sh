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
exec "$SCRIPT_DIR/Apollo-Main/install-posix.sh" "$@"