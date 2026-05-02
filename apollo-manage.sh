#!/usr/bin/env sh
set -eu

ACTION=${1-}
INSTALL_DIR=${2-}
OFFICIAL_REPO=https://github.com/SpecialLikeMe/Apollo

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

if [ -z "$INSTALL_DIR" ]; then
    SCRIPT_PATH=$(resolve_script_path "$0")
    INSTALL_DIR=$(CDPATH= cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd -P)
else
    INSTALL_DIR=$(CDPATH= cd -- "$INSTALL_DIR" && pwd -P)
fi

print_version() {
    if command -v git >/dev/null 2>&1 && [ -d "$INSTALL_DIR/.git" ]; then
        branch=$(git -C "$INSTALL_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || printf '')
        commit=$(git -C "$INSTALL_DIR" rev-parse --short HEAD 2>/dev/null || printf '')
        if [ -n "$branch" ] && [ -n "$commit" ]; then
            printf 'Apollo dev (%s@%s)\n' "$branch" "$commit"
            printf 'repo %s\n' "$OFFICIAL_REPO"
            return 0
        fi
    fi

    printf 'Apollo dev\n'
    printf 'repo %s\n' "$OFFICIAL_REPO"
}

resolve_official_branch() {
    if command -v git >/dev/null 2>&1; then
        branch=$(git ls-remote --symref "$OFFICIAL_REPO" HEAD 2>/dev/null | awk '/^ref:/ {sub("refs/heads/", "", $2); print $2; exit}')
        if [ -n "$branch" ]; then
            printf '%s\n' "$branch"
            return 0
        fi
    fi

    printf 'main\n'
}

attach_official_checkout() {
    branch=$1

    if [ -d "$INSTALL_DIR/.git" ]; then
        return 0
    fi

    temp_dir=$(mktemp -d "${TMPDIR:-/tmp}/apollo-update.XXXXXX")
    git clone --branch "$branch" --single-branch "$OFFICIAL_REPO" "$temp_dir"
    cp -R "$temp_dir/.git" "$INSTALL_DIR/.git"
    git -C "$INSTALL_DIR" reset --hard HEAD
    rm -rf "$temp_dir"
}

update_apollo() {
    if ! command -v git >/dev/null 2>&1; then
        printf 'Apollo update requires git on PATH.\n' >&2
        exit 1
    fi

    branch=$(resolve_official_branch)
    attach_official_checkout "$branch"

    if [ -n "$(git -C "$INSTALL_DIR" status --porcelain --untracked-files=no)" ]; then
        printf 'Apollo update aborted because the worktree has tracked changes. Commit or stash them first.\n' >&2
        exit 1
    fi

    git -C "$INSTALL_DIR" fetch --prune "$OFFICIAL_REPO" "refs/heads/$branch"
    git -C "$INSTALL_DIR" merge --ff-only FETCH_HEAD
    print_version | sed '1s/^Apollo dev /Apollo updated to /'
}

remove_profile_snippet() {
    profile_path=$1
    [ -f "$profile_path" ] || return 0

    temp_file=$(mktemp)
    awk '
        BEGIN { skip = 0 }
        /^# Added by Apollo installer$/ { skip = 1; next }
        skip == 1 {
            if ($0 == "esac") {
                skip = 0
            }
            next
        }
        { print }
    ' "$profile_path" > "$temp_file"
    mv "$temp_file" "$profile_path"
}

remove_link_if_owned() {
    link_path=$1
    [ -L "$link_path" ] || return 0

    resolved_target=$(resolve_script_path "$link_path")
    case "$resolved_target" in
        "$INSTALL_DIR"/*|"$INSTALL_DIR")
            rm -f "$link_path"
            ;;
    esac
}

uninstall_apollo() {
    user_bin_dir=${APOLLO_USER_BIN_DIR:-$HOME/.local/bin}
    system_bin_dir=${APOLLO_SYSTEM_BIN_DIR:-/usr/local/bin}

    remove_link_if_owned "$user_bin_dir/apollo"
    remove_link_if_owned "$user_bin_dir/apollo-config"
    remove_link_if_owned "$system_bin_dir/apollo"
    remove_link_if_owned "$system_bin_dir/apollo-config"

    remove_profile_snippet "$HOME/.profile"
    remove_profile_snippet "$HOME/.bashrc"
    remove_profile_snippet "$HOME/.zprofile"

    (
        sleep 1
        cd /
        rm -rf "$INSTALL_DIR"
    ) >/dev/null 2>&1 &

    printf 'Apollo uninstall started. CLI shims were removed and %s will be deleted in the background.\n' "$INSTALL_DIR"
}

case "$ACTION" in
    version)
        print_version
        ;;
    update)
        update_apollo
        ;;
    uninstall)
        uninstall_apollo
        ;;
    *)
        printf 'Usage: apollo-manage.sh [version|update|uninstall] [install-dir]\n' >&2
        exit 1
        ;;
esac
