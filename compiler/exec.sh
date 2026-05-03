#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
RESOLVED_APOLLO_DIR=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)
APOLLO_DIR=${APOLLO_DIR:-$RESOLVED_APOLLO_DIR}
ANTLR_JAR="$SCRIPT_DIR/antlr-4.13.2-complete.jar"
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

if [ "${1-}" = "-m" ]; then
    if [ "${2-}" = "uninstall" ] && [ -z "${3-}" ]; then
        exec "$MANAGE_SH" uninstall "$RESOLVED_APOLLO_DIR"
    fi
    printf 'Unknown management command. Usage: apollo -m uninstall\n' >&2
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
CODEGEN_BOOTSTRAP_VERSION=${CODEGEN_BOOTSTRAP_VERSION:-apollo-codegen-bootstrap-v1}

if [ -n "${APOLLO_JAVA_BIN:-}" ] && [ -x "$APOLLO_JAVA_BIN/java" ]; then
    JAVA_EXE="$APOLLO_JAVA_BIN/java"
else
    JAVA_EXE=${JAVA_EXE:-java}
fi

if [ -n "${APOLLO_JAVA_BIN:-}" ] && [ -x "$APOLLO_JAVA_BIN/javac" ]; then
    JAVAC_EXE="$APOLLO_JAVA_BIN/javac"
else
    JAVAC_EXE=${JAVAC_EXE:-javac}
fi

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

run_and_capture_exit() {
    set +e
    "$@"
    status=$?
    set -e
    return "$status"
}

prepare_codegen() {
    cd "$SCRIPT_DIR"
    if [ ! -f "$INPUT_FILE" ]; then
        printf 'Input file not found: %s\n' "$INPUT_FILE" >&2
        exit 1
    fi

    mkdir -p output output/classes

    parser_source="compiler-master/compilerv1Parser.java"
    lexer_source="compiler-master/compilerv1Lexer.java"
    parser_class="output/classes/compilerv1Parser.class"
    lexer_class="output/classes/compilerv1Lexer.class"
    parser_stamp="output/classes/.apollo_parser.stamp"
    parser_classes_stamp="output/classes/.apollo_parser_classes.stamp"
    frontend_stamp="output/classes/.apollo_frontend.stamp"
    bootstrap_version_file="output/classes/.apollo_codegen_bootstrap.version"

    bootstrap_version=""
    if [ -f "$bootstrap_version_file" ]; then
        bootstrap_version=$(cat "$bootstrap_version_file")
    fi
    bootstrap_version_mismatch=0
    if [ "$bootstrap_version" != "$CODEGEN_BOOTSTRAP_VERSION" ]; then
        bootstrap_version_mismatch=1
    fi

    parser_regenerated=0
    if [ "$bootstrap_version_mismatch" -eq 1 ] \
        || [ ! -f "$parser_source" ] \
        || [ ! -f "$lexer_source" ] \
        || [ ! -f "$parser_class" ] \
        || [ ! -f "$lexer_class" ] \
        || [ ! -f "$parser_stamp" ] \
        || needs_rebuild "$parser_stamp" compilerv1.g4 "$ANTLR_JAR"; then
        rm -f compiler-master/compilerv1*.java compiler-master/compilerv1*.interp compiler-master/compilerv1*.tokens
        "$JAVA_EXE" -jar "$ANTLR_JAR" -visitor -Dlanguage=Java -o compiler-master compilerv1.g4
        parser_regenerated=1
        touch_stamp "$parser_stamp"
    fi

    if [ "$parser_regenerated" -eq 1 ] \
        || [ ! -f "$parser_class" ] \
        || [ ! -f "$lexer_class" ] \
        || needs_rebuild "$parser_classes_stamp" \
            compiler-master/compilerv1BaseListener.java \
            compiler-master/compilerv1BaseVisitor.java \
            compiler-master/compilerv1Lexer.java \
            compiler-master/compilerv1Listener.java \
            compiler-master/compilerv1Parser.java \
            compiler-master/compilerv1Visitor.java \
            "$ANTLR_JAR"; then
        (
            cd compiler-master
            "$JAVAC_EXE" -d ../output/classes -cp ".:../antlr-4.13.2-complete.jar" *.java
        )
        touch_stamp "$parser_classes_stamp"
    fi

    if [ "$bootstrap_version_mismatch" -eq 1 ] \
        || [ ! -f "output/classes/Main.class" ] \
        || [ ! -f "output/classes/runtime.class" ] \
        || [ ! -f "output/classes/CppCodeGenVisitor.class" ] \
        || [ ! -f "output/classes/ApolloBuildDriver.class" ] \
        || [ ! -f "output/classes/ApolloCodegenOptimizationPlan.class" ] \
        || needs_rebuild "$frontend_stamp" \
            Main.java \
            runtime.java \
            CppCodeGenVisitor.java \
            ApolloBuildDriver.java \
            ApolloCodegenOptimizationPlan.java \
            "$parser_classes_stamp" \
            "$ANTLR_JAR"; then
        "$JAVAC_EXE" -d output/classes -cp ".:output/classes:$ANTLR_JAR" ApolloBuildDriver.java ApolloCodegenOptimizationPlan.java CppCodeGenVisitor.java Main.java runtime.java
        touch_stamp "$frontend_stamp"
    fi
    printf '%s\n' "$CODEGEN_BOOTSTRAP_VERSION" > "$bootstrap_version_file"
    "$JAVA_EXE" -cp "output/classes:$ANTLR_JAR" Main "$INPUT_FILE"
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

case "$COMMAND" in
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
            LINK_OUTPUT="$SCRIPT_DIR/output/output.bin"
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
            "$JAVA_EXE" -cp "output/classes:$ANTLR_JAR" ApolloBuildDriver emit-ll "$INPUT_FILE"
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
        "$JAVA_EXE" -cp "output/classes:$ANTLR_JAR" ApolloBuildDriver build-aot "$INPUT_FILE" "$LINK_OUTPUT"

        if [ "$BIN_MODE" -eq 1 ]; then
            cleanup_generated "$LINK_OUTPUT"
            printf 'Wrote binary to %s\n' "$LINK_OUTPUT"
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
        "$JAVA_EXE" -cp "output/classes:$ANTLR_JAR" ApolloBuildDriver analyze "$INPUT_FILE" "$ASAN_OUTPUT"
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
        printf '                      apollo [filename.apollo] -[L|W|M] outputname\n' >&2
        printf '                      apollo -analyze [filename]\n' >&2
        printf '                      apollo --version\n' >&2
        printf '                      apollo --update\n' >&2
        printf '                      apollo -m uninstall\n' >&2
        exit 1
        ;;
esac