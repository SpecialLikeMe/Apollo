#!/bin/sh
kind=${1:-}
name=${2:-}
output_dir="output"
ir_path="$output_dir/apo_ir.txt"
tab_char=$(printf '\t')

apo_unescape() {
    printf '%b' "$1"
}

apo_find_record() {
    [ -f "$ir_path" ] || return 1
    record=""
    while IFS= read -r line || [ -n "$line" ]; do
        [ -z "$line" ] && continue
        IFS="$tab_char" read -r field1 field2 field3 field4 field5 <<EOF
$line
EOF
        if [ -n "$kind" ] && [ "$field1" != "$kind" ]; then
            continue
        fi
        if [ "$field2" != "$name" ]; then
            continue
        fi
        record="$line"
    done < "$ir_path"
    [ -n "$record" ] || return 1
    IFS="$tab_char" read -r record_kind record_name record_type record_lang record_payload <<EOF
$record
EOF
    return 0
}

run_payload() {
    lang="$1"
    code="$2"
    mkdir -p "$output_dir"
    case "$lang" in
        cpp)
            printf '%s' "$code" > "$output_dir/apo_async_cpp.cpp"
            c++ "$output_dir/apo_async_cpp.cpp" -o "$output_dir/apo_async_cpp" && "$output_dir/apo_async_cpp"
            ;;
        c)
            printf '%s' "$code" > "$output_dir/apo_async_c.c"
            cc "$output_dir/apo_async_c.c" -o "$output_dir/apo_async_c" && "$output_dir/apo_async_c"
            ;;
        rs)
            printf '%s' "$code" > "$output_dir/apo_async_rs.rs"
            rustc "$output_dir/apo_async_rs.rs" -o "$output_dir/apo_async_rs" && "$output_dir/apo_async_rs"
            ;;
        java)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.java"
            javac "$output_dir/ApoAsyncTask.java" -d "$output_dir" && java -cp "$output_dir" ApoAsyncTask
            ;;
        cs)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.cs"
            csc /nologo /out:"$output_dir/ApoAsyncTask.exe" "$output_dir/ApoAsyncTask.cs" && (mono "$output_dir/ApoAsyncTask.exe" 2>/dev/null || "$output_dir/ApoAsyncTask.exe")
            ;;
        py)
            printf '%s' "$code" > "$output_dir/apo_async.py"
            python3 "$output_dir/apo_async.py" || python "$output_dir/apo_async.py"
            ;;
        js)
            printf '%s' "$code" > "$output_dir/apo_async.js"
            node "$output_dir/apo_async.js"
            ;;
        ts)
            printf '%s' "$code" > "$output_dir/apo_async.ts"
            tsc "$output_dir/apo_async.ts" --outDir "$output_dir" && node "$output_dir/apo_async.js"
            ;;
        go)
            printf '%s' "$code" > "$output_dir/apo_async_go.go"
            go build -o "$output_dir/apo_async_go" "$output_dir/apo_async_go.go" && "$output_dir/apo_async_go"
            ;;
        php)
            printf '%s' "$code" > "$output_dir/apo_async.php"
            php "$output_dir/apo_async.php"
            ;;
        rb)
            printf '%s' "$code" > "$output_dir/apo_async.rb"
            ruby "$output_dir/apo_async.rb"
            ;;
        kt)
            printf '%s' "$code" > "$output_dir/ApoAsyncTask.kt"
            kotlinc "$output_dir/ApoAsyncTask.kt" -include-runtime -d "$output_dir/ApoAsyncTask.jar" && java -jar "$output_dir/ApoAsyncTask.jar"
            ;;
        *)
            echo "unsupported stored language: $lang" >&2
            return 1
            ;;
    esac
}

if ! apo_find_record; then
    echo "IR entry not found: $kind $name" >&2
    exit 1
fi

run_payload "$record_lang" "$(apo_unescape "$record_payload")"
exit $?
