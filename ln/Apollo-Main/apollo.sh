#!/usr/bin/env bash
set -euo pipefail

resolve_script_path() {
	local target=$1
	while [ -L "$target" ]; do
		local target_dir
		target_dir=$(CDPATH= cd -- "$(dirname -- "$target")" && pwd -P)
		local link_target
		link_target=$(readlink "$target")
		case "$link_target" in
			/*) target=$link_target ;;
			*) target=$target_dir/$link_target ;;
		esac
	done

	local target_dir
	target_dir=$(CDPATH= cd -- "$(dirname -- "$target")" && pwd -P)
	printf '%s/%s\n' "$target_dir" "$(basename -- "$target")"
}

SCRIPT_PATH=$(resolve_script_path "$0")
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd -P)
APOLLO_ROOT=$SCRIPT_DIR
EXEC_SH="$APOLLO_ROOT/compiler/exec.sh"
MANAGE_SH="$APOLLO_ROOT/apollo-manage.sh"
APX_MAIN="$APOLLO_ROOT/apx/main.ts"
CALLER_DIR=$(pwd -P)
NODE_EXE=${APOLLO_NODE_EXE:-node}

export APOLLO_DIR=${APOLLO_DIR:-$APOLLO_ROOT}
export APOLLO_COMPILER_DIR=${APOLLO_COMPILER_DIR:-$APOLLO_ROOT/compiler}

print_usage() {
	printf 'Usage: apollo [-bin] <run|ctall> [filename] [outputname]\n'
	printf '                      apollo -analyze [filename]\n'
	printf '                      apollo [filename.apollo] -[L|W|M] outputname\n'
	printf '                      apollo help\n'
	printf '                      apollo clean [project-root]\n'
	printf '                      apollo build [entry.apollo] [-W|-L|-M] [--notree]\n'
	printf '                      apollo run [entry.apollo] [--notree]\n'
	printf '                      apollo repl\n'
	printf '                      apollo test [project-root] [--notree]\n'
	printf '                      apollo bench [project-root] [--notree]\n'
	printf '                      apollo apx <init|install|uninstall|deinit> ...\n'
	printf '                      apollo repair\n'
	printf '                      apollo --version\n'
	printf '                      apollo --update\n'
	printf '                      apollo -m uninstall\n'
}

run_command_quiet() {
	local log_file
	log_file=$(mktemp "${TMPDIR:-/tmp}/apollo-cli.XXXXXX.log")
	if "$@" >"$log_file" 2>&1; then
		rm -f "$log_file"
		return 0
	fi

	cat "$log_file" >&2
	rm -f "$log_file"
	return 1
}

set_ast_visibility() {
	local show_tree=$1
	if [ "$show_tree" -eq 1 ]; then
		export APOLLO_SHOW_AST=1
		export APOLLO_HIDE_AST=0
	else
		export APOLLO_SHOW_AST=0
		export APOLLO_HIDE_AST=1
	fi
}

run_exec_script() {
	local show_tree=$1
	shift
	set_ast_visibility "$show_tree"
	"$EXEC_SH" "$@"
}

run_exec_script_quiet() {
	local show_tree=$1
	shift
	run_command_quiet run_exec_script "$show_tree" "$@"
}

run_node_apx() {
	local working_directory=$1
	shift
	(
		cd "$working_directory"
		"$NODE_EXE" --experimental-strip-types "$APX_MAIN" "$@"
	)
}

run_node_apx_quiet() {
	local working_directory=$1
	shift
	run_command_quiet run_node_apx "$working_directory" "$@"
}

run_executable() {
	local executable=$1
	local working_directory=$2
	shift 2
	(
		cd "$working_directory"
		"$executable" "$@"
	)
}

is_build_flag() {
	[ "$1" = "-W" ] || [ "$1" = "-L" ] || [ "$1" = "-M" ]
}

abspath() {
	case "$1" in
		/*) printf '%s\n' "$1" ;;
		*) printf '%s/%s\n' "$CALLER_DIR" "$1" ;;
	esac
}

host_build_flag() {
	case "$(uname -s 2>/dev/null || printf '')" in
		Darwin) printf '%s\n' '-M' ;;
		*) printf '%s\n' '-L' ;;
	esac
}

build_flag_extension() {
	case "$1" in
		-W) printf '%s\n' '.exe' ;;
		-L) printf '%s\n' '.elf' ;;
		-M) printf '%s\n' '.mco' ;;
		*) return 1 ;;
	esac
}

sanitize_name() {
	local value=$1
	value=$(printf '%s' "$value" | sed 's#[^A-Za-z0-9_-]#_#g')
	if [ -z "$value" ]; then
		value=artifact
	fi
	printf '%s\n' "$value"
}

artifact_base_name() {
	local root=$1
	local source_path=$2
	local relative=$source_path
	case "$source_path" in
		"$root"/*) relative=${source_path#"$root"/} ;;
		*) relative=$(basename -- "$source_path") ;;
	esac
	relative=${relative%.apollo}
	sanitize_name "$relative"
}

collect_files_with_extension() {
	local root=$1
	local extension=$2
	find "$root" \
		\( -type d \( -name .git -o -name build -o -name apx_modules -o -name node_modules \) -prune \) -o \
		\( -type f -name "*${extension}" -print \) | LC_ALL=C sort
}

bundle_source() {
	local project_root=$1
	local source_path=$2
	local bundle_path=$3
	mkdir -p "$(dirname -- "$bundle_path")"
	run_node_apx "$project_root" bundle "$source_path" "$bundle_path"
}

bundle_source_quiet() {
	local project_root=$1
	local source_path=$2
	local bundle_path=$3
	mkdir -p "$(dirname -- "$bundle_path")"
	run_node_apx_quiet "$project_root" bundle "$source_path" "$bundle_path"
}

compile_binary() {
	local working_directory=$1
	local input_path=$2
	local output_path=$3
	local build_flag=$4
	local show_tree=$5
	mkdir -p "$(dirname -- "$output_path")"
	(
		cd "$working_directory"
		run_exec_script "$show_tree" "$input_path" "$build_flag" "$output_path"
	)
}

compile_binary_quiet() {
	local working_directory=$1
	local input_path=$2
	local output_path=$3
	local build_flag=$4
	local show_tree=$5
	mkdir -p "$(dirname -- "$output_path")"
	(
		cd "$working_directory"
		run_exec_script_quiet "$show_tree" "$input_path" "$build_flag" "$output_path"
	)
}

handle_build_command() {
	local build_flag=
	local entry_path=
	local arg

	for arg in "$@"; do
		if is_build_flag "$arg"; then
			if [ -n "$build_flag" ]; then
				printf 'Error: only one build target flag may be provided.\n' >&2
				return 1
			fi
			build_flag=$arg
			continue
		fi

		if [ -n "$entry_path" ]; then
			printf 'Error: unexpected extra argument for build.\n' >&2
			return 1
		fi

		entry_path=$(abspath "$arg")
	done

	local project_root=$CALLER_DIR
	local source_path=${entry_path:-$project_root/main.apollo}
	if [ ! -f "$source_path" ]; then
		printf 'Error: build entrypoint not found: %s\n' "$source_path" >&2
		return 1
	fi

	local selected_flag=${build_flag:-$(host_build_flag)}
	local selected_ext
	selected_ext=$(build_flag_extension "$selected_flag")
	local build_root="$project_root/build"
	local bundle_root="$build_root/.apollo-bundles"
	mkdir -p "$build_root" "$bundle_root"

	local base_name
	base_name=$(artifact_base_name "$project_root" "$source_path")
	local bundle_path="$bundle_root/$base_name.apollo"
	local output_path="$build_root/$base_name$selected_ext"

	bundle_source "$project_root" "$source_path" "$bundle_path"
	compile_binary "$project_root" "$bundle_path" "$output_path" "$selected_flag" "$SHOW_TREE"
	printf 'Built binary: %s\n' "$output_path"
}

handle_run_command() {
	if [ "$#" -gt 1 ]; then
		printf 'Error: run accepts at most one entry file argument.\n' >&2
		return 1
	fi

	local project_root=$CALLER_DIR
	local source_path
	if [ "$#" -eq 0 ]; then
		source_path="$project_root/main.apollo"
	else
		source_path=$(abspath "$1")
	fi

	if [ ! -f "$source_path" ]; then
		printf 'Error: run entrypoint not found: %s\n' "$source_path" >&2
		return 1
	fi

	local build_root="$project_root/build"
	local bundle_root="$build_root/.apollo-bundles"
	mkdir -p "$build_root" "$bundle_root"

	local base_name
	base_name=$(artifact_base_name "$project_root" "$source_path")
	local bundle_path="$bundle_root/$base_name.apollo"
	local target_flag
	target_flag=$(host_build_flag)
	local target_ext
	target_ext=$(build_flag_extension "$target_flag")
	local output_path="$build_root/$base_name$target_ext"

	bundle_source "$project_root" "$source_path" "$bundle_path"
	compile_binary "$project_root" "$bundle_path" "$output_path" "$target_flag" "$SHOW_TREE"
	printf 'Built binary: %s\n' "$output_path"
	run_executable "$output_path" "$project_root"
}

handle_project_root_command() {
	local command_name=$1
	shift

	if [ "$#" -gt 1 ]; then
		printf 'Error: %s accepts at most one project root argument.\n' "$command_name" >&2
		return 1
	fi

	if [ "$#" -eq 0 ]; then
		PROJECT_ROOT_RESULT=$CALLER_DIR
	else
		PROJECT_ROOT_RESULT=$(abspath "$1")
	fi
	return 0
}

handle_clean_command() {
	handle_project_root_command clean "$@" || return 1
	local root=$PROJECT_ROOT_RESULT
	local targets=(
		"$root/build/.apollo-bundles"
		"$root/build/cache"
		"$root/output/cache"
		"$APOLLO_ROOT/output/cache"
		"$APOLLO_ROOT/compiler/cache"
		"$APOLLO_ROOT/compiler/output/cache"
		"$APOLLO_ROOT/build/output/cache"
		"$APOLLO_ROOT/compiler/cpp/build/output/cache"
	)

	local removed_count=0
	local seen=()
	local target
	for target in "${targets[@]}"; do
		local skip=0
		local existing
		for existing in "${seen[@]}"; do
			if [ "$existing" = "$target" ]; then
				skip=1
				break
			fi
		done
		if [ "$skip" -eq 1 ]; then
			continue
		fi
		seen+=("$target")

		if [ ! -e "$target" ]; then
			continue
		fi

		rm -rf -- "$target"
		removed_count=$((removed_count + 1))
	done

	printf 'Removed %d Apollo cache path' "$removed_count"
	if [ "$removed_count" -ne 1 ]; then
		printf 's'
	fi
	printf '.\n'
}

run_collection_command() {
	local mode_name=$1
	local extension=$2
	local output_dir_name=$3
	shift 3

	handle_project_root_command "$mode_name" "$@" || return 1
	local root=$PROJECT_ROOT_RESULT
	local files=()

	while IFS= read -r file_path; do
		[ -z "$file_path" ] && continue
		files+=("$file_path")
	done < <(collect_files_with_extension "$root" "$extension")

	if [ "${#files[@]}" -eq 0 ]; then
		printf 'No %s files found under %s\n' "$extension" "$root" >&2
		return 1
	fi

	local build_root="$root/build"
	local bundle_root="$build_root/.apollo-bundles"
	local output_root="$build_root/$output_dir_name"
	mkdir -p "$bundle_root" "$output_root"

	local failures=0
	local target_flag
	target_flag=$(host_build_flag)
	local target_ext
	target_ext=$(build_flag_extension "$target_flag")
	local file_path
	for file_path in "${files[@]}"; do
		local base_name
		base_name=$(artifact_base_name "$root" "$file_path")
		local bundle_path="$bundle_root/$base_name.apollo"
		local output_path="$output_root/$base_name$target_ext"

		printf '[%s] %s\n' "$mode_name" "$file_path"
		if ! bundle_source "$root" "$file_path" "$bundle_path"; then
			failures=$((failures + 1))
			printf '[fail] bundle\n'
			continue
		fi
		if ! compile_binary "$root" "$bundle_path" "$output_path" "$target_flag" "$SHOW_TREE"; then
			failures=$((failures + 1))
			printf '[fail] compile\n'
			continue
		fi

		if [ "$mode_name" = bench ]; then
			local start_time end_time elapsed
			start_time=$(date +%s)
			if run_executable "$output_path" "$(dirname -- "$file_path")"; then
				end_time=$(date +%s)
				elapsed=$((end_time - start_time))
				printf '[time] %d s\n' "$elapsed"
			else
				failures=$((failures + 1))
				printf '[fail] run\n'
				continue
			fi
		else
			if run_executable "$output_path" "$(dirname -- "$file_path")"; then
				printf '[pass]\n'
			else
				failures=$((failures + 1))
				printf '[fail] run\n'
				continue
			fi
		fi
	done

	[ "$failures" -eq 0 ]
}

REPL_DECLARATIONS=()
REPL_STATEMENTS=()

write_repl_program() {
	local source_path=$1
	local snippet_kind=$2
	local snippet_text=$3

	: > "$source_path"
	local declaration
	for declaration in "${REPL_DECLARATIONS[@]}"; do
		printf '%s\n\n' "$declaration" >> "$source_path"
	done
	if [ "$snippet_kind" = declaration ]; then
		printf '%s\n\n' "$snippet_text" >> "$source_path"
	fi

	printf 'int main() {\n' >> "$source_path"
	local statement
	for statement in "${REPL_STATEMENTS[@]}"; do
		printf '    %s\n' "$statement" >> "$source_path"
	done
	if [ "$snippet_kind" = statement ] || [ "$snippet_kind" = ephemeral ]; then
		printf '    %s\n' "$snippet_text" >> "$source_path"
	fi
	printf '    return 0;\n' >> "$source_path"
	printf '}\n' >> "$source_path"
}

show_repl_program() {
	local temp_source
	temp_source=$(mktemp "${TMPDIR:-/tmp}/apollo-repl-show.XXXXXX")
	write_repl_program "$temp_source" none ''
	cat "$temp_source"
	rm -f "$temp_source"
}

classify_repl_snippet() {
	local trimmed=$1
	REPL_KIND=statement
	REPL_TEXT=$trimmed

	if [ -z "$trimmed" ]; then
		REPL_KIND=command
		REPL_TEXT=:empty
		return 0
	fi

	case "$trimmed" in
		:exit|:quit|:help|:show|:reset)
			REPL_KIND=command
			REPL_TEXT=$trimmed
			return 0
			;;
		:decl\ *)
			REPL_KIND=declaration
			REPL_TEXT=${trimmed#:decl }
			return 0
			;;
		:stmt\ *)
			REPL_KIND=statement
			REPL_TEXT=${trimmed#:stmt }
			return 0
			;;
		extern\ *|enum\ *|struct\ *|class\ *|template\ *|macro\ *|itr\ *)
			REPL_KIND=declaration
			REPL_TEXT=$trimmed
			return 0
			;;
	esac

	case "$trimmed" in
		*';'|*'}')
			REPL_KIND=statement
			REPL_TEXT=$trimmed
			;;
		*)
			REPL_KIND=ephemeral
			REPL_TEXT="sys.println($trimmed);"
			;;
	esac
}

run_repl_program() {
	local session_root=$1
	local snippet_kind=$2
	local snippet_text=$3
	local source_path="$session_root/main.apollo"
	local bundle_root="$session_root/build/.apollo-bundles"
	local output_root="$session_root/build"
	mkdir -p "$bundle_root" "$output_root"

	local bundle_path="$bundle_root/main.apollo"
	local target_flag
	target_flag=$(host_build_flag)
	local target_ext
	target_ext=$(build_flag_extension "$target_flag")
	local output_path="$output_root/main$target_ext"

	write_repl_program "$source_path" "$snippet_kind" "$snippet_text"
	bundle_source_quiet "$session_root" "$source_path" "$bundle_path" || return 1
	compile_binary_quiet "$session_root" "$bundle_path" "$output_path" "$target_flag" 0 || return 1
	run_executable "$output_path" "$session_root"
}

handle_repl_command() {
	if [ "$#" -ne 0 ]; then
		printf 'Error: repl does not accept extra arguments.\n' >&2
		return 1
	fi

	local session_root
	session_root=$(mktemp -d "${TMPDIR:-/tmp}/apollo-repl-session.XXXXXX")
	trap 'rm -rf -- "$session_root"' EXIT

	printf 'Apollo REPL. Commands: :decl <code>, :stmt <code>, :show, :reset, :exit\n'
	while true; do
		printf 'apollo> '
		local raw_snippet
		if ! IFS= read -r raw_snippet; then
			printf '\n'
			return 0
		fi

		classify_repl_snippet "$raw_snippet"
		case "$REPL_KIND:$REPL_TEXT" in
			command::empty)
				continue
				;;
			command::exit|command::quit)
				return 0
				;;
			command::help)
				printf ':decl <code> adds a persistent top-level declaration.\n'
				printf ':stmt <code> adds a persistent statement inside main.\n'
				printf ':show prints the current session source.\n'
				printf ':reset clears the session.\n'
				printf ':exit leaves the REPL.\n'
				printf 'Bare expressions are evaluated once via sys.println(...).\n'
				continue
				;;
			command::show)
				show_repl_program
				continue
				;;
			command::reset)
				REPL_DECLARATIONS=()
				REPL_STATEMENTS=()
				rm -rf -- "$session_root/build"
				printf 'Session reset.\n'
				continue
				;;
		esac

		if ! run_repl_program "$session_root" "$REPL_KIND" "$REPL_TEXT"; then
			continue
		fi

		if [ "$REPL_KIND" = declaration ]; then
			REPL_DECLARATIONS+=("$REPL_TEXT")
		elif [ "$REPL_KIND" = statement ]; then
			REPL_STATEMENTS+=("$REPL_TEXT")
		fi
	done
}

SHOW_TREE=1
PARSED_ARGS=()
for arg in "$@"; do
	if [ "$arg" = "--notree" ]; then
		SHOW_TREE=0
		continue
	fi
	PARSED_ARGS+=("$arg")
done

if [ "${#PARSED_ARGS[@]}" -eq 0 ]; then
	print_usage >&2
	exit 1
fi

COMMAND=${PARSED_ARGS[0]}
REMAINING_ARGS=("${PARSED_ARGS[@]:1}")

case "$COMMAND" in
	help|--help|-h)
		print_usage
		;;
	--version)
		exec "$MANAGE_SH" version "$APOLLO_ROOT"
		;;
	--update)
		exec "$MANAGE_SH" update "$APOLLO_ROOT"
		;;
	repair)
		if [ "${#REMAINING_ARGS[@]}" -ne 0 ]; then
			printf 'Error: repair does not accept extra arguments.\n' >&2
			exit 1
		fi
		exec "$MANAGE_SH" repair "$APOLLO_ROOT"
		;;
	-m)
		if [ "${#REMAINING_ARGS[@]}" -eq 1 ] && [ "${REMAINING_ARGS[0]}" = uninstall ]; then
			exec "$MANAGE_SH" uninstall "$APOLLO_ROOT"
		fi
		if [ "${#REMAINING_ARGS[@]}" -eq 1 ] && [ "${REMAINING_ARGS[0]}" = repair ]; then
			exec "$MANAGE_SH" repair "$APOLLO_ROOT"
		fi
		printf 'Unknown management command. Usage: apollo -m <repair|uninstall>\n' >&2
		exit 1
		;;
	apx)
		run_node_apx "$CALLER_DIR" "${REMAINING_ARGS[@]}"
		;;
	build)
		handle_build_command "${REMAINING_ARGS[@]}"
		;;
	run)
		handle_run_command "${REMAINING_ARGS[@]}"
		;;
	clean)
		handle_clean_command "${REMAINING_ARGS[@]}"
		;;
	repl)
		handle_repl_command "${REMAINING_ARGS[@]}"
		;;
	test)
		run_collection_command test .aptest tests "${REMAINING_ARGS[@]}"
		;;
	bench)
		run_collection_command bench .apbench bench "${REMAINING_ARGS[@]}"
		;;
	*)
		exec "$EXEC_SH" "${PARSED_ARGS[@]}"
		;;
esac