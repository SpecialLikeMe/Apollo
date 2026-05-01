#ifndef __APO_NATIVE_INTEROP_RUNTIME
#define __APO_NATIVE_INTEROP_RUNTIME

#include <cctype>
#include <string>

static std::string __apo_cpp_ir_prelude() {
    return R"APO(#include <filesystem>
#include <fstream>
#include <string>
#include <vector>

static std::string __apo_ir_escape(const std::string& value) {
    std::string escaped;
    for (char ch : value) {
        if (ch == '\\') escaped += "\\\\";
        else if (ch == '\t') escaped += "\\t";
        else if (ch == '\n') escaped += "\\n";
        else if (ch == '\r') escaped += "\\r";
        else escaped.push_back(ch);
    }
    return escaped;
}

static std::vector<std::string> __apo_ir_parse_line(const std::string& line) {
    std::vector<std::string> fields;
    std::string current;
    bool escaping = false;
    for (char ch : line) {
        if (escaping) {
            if (ch == 'n') current.push_back('\n');
            else if (ch == 'r') current.push_back('\r');
            else if (ch == 't') current.push_back('\t');
            else current.push_back(ch);
            escaping = false;
            continue;
        }
        if (ch == '\\') {
            escaping = true;
            continue;
        }
        if (ch == '\t') {
            fields.push_back(current);
            current.clear();
            continue;
        }
        current.push_back(ch);
    }
    if (escaping) current.push_back('\\');
    fields.push_back(current);
    return fields;
}

static void async_write(const std::string& kind, const std::string& name, const std::string& typeName, const std::string& payload, const std::string& sourceLang = "cpp") {
    std::filesystem::create_directories("output");
    std::ofstream out("output/apo_ir.txt", std::ios::app);
    out << __apo_ir_escape(kind) << '\t' << __apo_ir_escape(name) << '\t' << __apo_ir_escape(typeName) << '\t' << __apo_ir_escape(sourceLang) << '\t' << __apo_ir_escape(payload) << '\n';
}

static std::string async_read(const std::string& kind, const std::string& name) {
    std::ifstream in("output/apo_ir.txt");
    if (!in) return "";
    std::vector<std::string> lines;
    std::string line;
    while (std::getline(in, line)) {
        if (!line.empty()) lines.push_back(line);
    }
    for (auto it = lines.rbegin(); it != lines.rend(); ++it) {
        std::vector<std::string> fields = __apo_ir_parse_line(*it);
        if (fields.size() < 5) continue;
        if (!kind.empty() && fields[0] != kind) continue;
        if (fields[1] != name) continue;
        return fields[4];
    }
    return "";
}

static std::string async_read(const std::string& name) {
    return async_read("", name);
}

static int async_exec(const std::string& kind, const std::string& name) {
    std::string command;
#ifdef _WIN32
    command = "powershell -NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \"" + kind + "\" \"" + name + "\"";
#else
    command = "sh output/apo_ir_exec.sh \"" + kind + "\" \"" + name + "\"";
#endif
    return system(command.c_str());
}

static int async_exec(const std::string& name) {
    return async_exec("", name);
}
)APO";
}

static std::string __apo_python_ir_prelude() {
    return R"APO(from pathlib import Path
import os
import subprocess

def _apo_ir_escape(value):
    text = "" if value is None else str(value)
    return text.replace('\\', '\\\\').replace('\t', '\\t').replace('\n', '\\n').replace('\r', '\\r')

def _apo_ir_parse_line(line):
    fields = []
    current = []
    escaping = False
    for ch in line:
        if escaping:
            if ch == 'n':
                current.append('\n')
            elif ch == 'r':
                current.append('\r')
            elif ch == 't':
                current.append('\t')
            else:
                current.append(ch)
            escaping = False
            continue
        if ch == '\\':
            escaping = True
            continue
        if ch == '\t':
            fields.append(''.join(current))
            current = []
            continue
        current.append(ch)
    if escaping:
        current.append('\\')
    fields.append(''.join(current))
    return fields

def async_write(kind, name, type_name, payload, source_lang='py'):
    ir_path = Path('output') / 'apo_ir.txt'
    ir_path.parent.mkdir(parents=True, exist_ok=True)
    record = '\t'.join([
        _apo_ir_escape(kind),
        _apo_ir_escape(name),
        _apo_ir_escape(type_name),
        _apo_ir_escape(source_lang),
        _apo_ir_escape(payload),
    ]) + '\n'
    with ir_path.open('a', encoding='utf-8') as handle:
        handle.write(record)

def async_read(kind_or_name, name=None):
    kind = '' if name is None else str(kind_or_name)
    symbol_name = str(kind_or_name) if name is None else str(name)
    ir_path = Path('output') / 'apo_ir.txt'
    if not ir_path.exists():
        return ''
    lines = ir_path.read_text(encoding='utf-8').splitlines()
    for line in reversed(lines):
        if not line:
            continue
        fields = _apo_ir_parse_line(line)
        if len(fields) < 5:
            continue
        if kind and fields[0] != kind:
            continue
        if fields[1] != symbol_name:
            continue
        return fields[4]
    return ''

def async_exec(kind_or_name, name=None):
    kind = '' if name is None else str(kind_or_name)
    symbol_name = str(kind_or_name) if name is None else str(name)
    command = ['powershell', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'output/apo_ir_exec.ps1', kind, symbol_name] if os.name == 'nt' else ['sh', 'output/apo_ir_exec.sh', kind, symbol_name]
    result = subprocess.run(command)
    return result.returncode
)APO";
}

static std::string __apo_java_ir_prelude() {
    return R"APO(import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;
import java.lang.ProcessBuilder;

class ApoAsyncIR {
    private static String escape(String value) {
        String text = value == null ? "" : value;
        return text.replace("\\", "\\\\")
                .replace("\t", "\\t")
                .replace("\n", "\\n")
                .replace("\r", "\\r");
    }

    private static List<String> parseLine(String line) {
        List<String> fields = new ArrayList<>();
        StringBuilder current = new StringBuilder();
        boolean escaping = false;
        for (int i = 0; i < line.length(); i++) {
            char ch = line.charAt(i);
            if (escaping) {
                if (ch == 'n') current.append('\n');
                else if (ch == 'r') current.append('\r');
                else if (ch == 't') current.append('\t');
                else current.append(ch);
                escaping = false;
                continue;
            }
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            if (ch == '\t') {
                fields.add(current.toString());
                current.setLength(0);
                continue;
            }
            current.append(ch);
        }
        if (escaping) current.append('\\');
        fields.add(current.toString());
        return fields;
    }

    static void async_write(String kind, String name, String typeName, String payload) {
        async_write(kind, name, typeName, payload, "java");
    }

    static void async_write(String kind, String name, String typeName, String payload, String sourceLang) {
        Path irPath = Paths.get("output", "apo_ir.txt");
        try {
            Files.createDirectories(irPath.getParent());
            String record = String.join("\t",
                    escape(kind),
                    escape(name),
                    escape(typeName),
                    escape(sourceLang),
                    escape(payload)) + System.lineSeparator();
            Files.writeString(irPath, record, StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }

    static String async_read(String name) {
        return async_read("", name);
    }

    static String async_read(String kind, String name) {
        Path irPath = Paths.get("output", "apo_ir.txt");
        if (!Files.exists(irPath)) {
            return "";
        }
        try {
            List<String> lines = Files.readAllLines(irPath, StandardCharsets.UTF_8);
            for (int i = lines.size() - 1; i >= 0; i--) {
                String line = lines.get(i);
                if (line.isEmpty()) continue;
                List<String> fields = parseLine(line);
                if (fields.size() < 5) continue;
                if (!kind.isEmpty() && !fields.get(0).equals(kind)) continue;
                if (!fields.get(1).equals(name)) continue;
                return fields.get(4);
            }
            return "";
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }

    static int async_exec(String name) {
        return async_exec("", name);
    }

    static int async_exec(String kind, String name) {
        try {
            List<String> command = new ArrayList<>();
            String osName = System.getProperty("os.name", "").toLowerCase();
            if (osName.contains("win")) {
                command.add("powershell");
                command.add("-NoProfile");
                command.add("-ExecutionPolicy");
                command.add("Bypass");
                command.add("-File");
                command.add("output/apo_ir_exec.ps1");
            } else {
                command.add("sh");
                command.add("output/apo_ir_exec.sh");
            }
            command.add(kind);
            command.add(name);
            Process process = new ProcessBuilder(command)
                    .inheritIO()
                    .start();
            return process.waitFor();
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        } catch (InterruptedException ex) {
            Thread.currentThread().interrupt();
            throw new RuntimeException(ex);
        }
    }
}
)APO";
}

static std::string __apo_js_ir_prelude(const std::string& sourceLang, bool typescript) {
    std::string prelude;
    if (typescript) {
        prelude += "declare function require(name: string): any;\n";
    }
    prelude +=
        "const fs = require(\"fs\");\n"
        "const path = require(\"path\");\n\n"
        "function __apoIrEscape(value) {\n"
        "    const text = value == null ? \"\" : String(value);\n"
        "    return text.replace(/\\\\/g, \"\\\\\\\\\").replace(/\\t/g, \"\\\\t\").replace(/\\n/g, \"\\\\n\").replace(/\\r/g, \"\\\\r\");\n"
        "}\n\n"
        "function __apoIrParseLine(line) {\n"
        "    const fields = [];\n"
        "    let current = \"\";\n"
        "    let escaping = false;\n"
        "    for (const ch of line) {\n"
        "        if (escaping) {\n"
        "            if (ch === \"n\") current += \"\\n\";\n"
        "            else if (ch === \"r\") current += \"\\r\";\n"
        "            else if (ch === \"t\") current += \"\\t\";\n"
        "            else current += ch;\n"
        "            escaping = false;\n"
        "            continue;\n"
        "        }\n"
        "        if (ch === \"\\\\\") {\n"
        "            escaping = true;\n"
        "            continue;\n"
        "        }\n"
        "        if (ch === \"\\t\") {\n"
        "            fields.push(current);\n"
        "            current = \"\";\n"
        "            continue;\n"
        "        }\n"
        "        current += ch;\n"
        "    }\n"
        "    if (escaping) current += \"\\\\\";\n"
        "    fields.push(current);\n"
        "    return fields;\n"
        "}\n\n"
        "function async_write(kind, name, typeName, payload, sourceLang = \"" + sourceLang + "\") {\n"
        "    const irPath = path.join(\"output\", \"apo_ir.txt\");\n"
        "    fs.mkdirSync(path.dirname(irPath), { recursive: true });\n"
        "    const record = [kind, name, typeName, sourceLang, payload].map(__apoIrEscape).join(\"\\t\") + \"\\n\";\n"
        "    fs.appendFileSync(irPath, record, \"utf8\");\n"
        "}\n\n"
        "function async_read(kindOrName, maybeName) {\n"
        "    const kind = maybeName === undefined ? \"\" : String(kindOrName ?? \"\");\n"
        "    const name = maybeName === undefined ? String(kindOrName ?? \"\") : String(maybeName ?? \"\");\n"
        "    const irPath = path.join(\"output\", \"apo_ir.txt\");\n"
        "    if (!fs.existsSync(irPath)) return \"\";\n"
        "    const lines = fs.readFileSync(irPath, \"utf8\").split(/\\r?\\n/);\n"
        "    for (let index = lines.length - 1; index >= 0; index -= 1) {\n"
        "        const line = lines[index];\n"
        "        if (!line) continue;\n"
        "        const fields = __apoIrParseLine(line);\n"
        "        if (fields.length < 5) continue;\n"
        "        if (kind && fields[0] !== kind) continue;\n"
        "        if (fields[1] !== name) continue;\n"
        "        return fields[4];\n"
        "    }\n"
        "    return \"\";\n"
        "}\n\n"
        "function async_exec(kindOrName, maybeName) {\n"
        "    const kind = maybeName === undefined ? \"\" : String(kindOrName ?? \"\");\n"
        "    const name = maybeName === undefined ? String(kindOrName ?? \"\") : String(maybeName ?? \"\");\n"
        "    try {\n"
        "        const command = process.platform === \"win32\" ? [\"powershell\", \"-NoProfile\", \"-ExecutionPolicy\", \"Bypass\", \"-File\", \"output/apo_ir_exec.ps1\", kind, name] : [\"sh\", \"output/apo_ir_exec.sh\", kind, name];\n"
        "        require(\"child_process\").execFileSync(command[0], command.slice(1), { stdio: \"inherit\" });\n"
        "        return 0;\n"
        "    } catch (error) {\n"
        "        return error && typeof error.status === \"number\" ? error.status : -1;\n"
        "    }\n"
        "}\n\n";
    return prelude;
}

static std::string __apo_rust_ir_prelude() {
    return R"APO(#[allow(unused_macros)]
use std::fs::{self, OpenOptions};
use std::io::Write;
use std::process::Command;

fn __apo_ir_escape(value: &str) -> String {
    value.replace('\\', "\\\\").replace('\t', "\\t").replace('\n', "\\n").replace('\r', "\\r")
}

fn __apo_ir_parse_line(line: &str) -> Vec<String> {
    let mut fields: Vec<String> = Vec::new();
    let mut current = String::new();
    let mut escaping = false;
    for ch in line.chars() {
        if escaping {
            match ch {
                'n' => current.push('\n'),
                'r' => current.push('\r'),
                't' => current.push('\t'),
                _ => current.push(ch),
            }
            escaping = false;
            continue;
        }
        if ch == '\\' { escaping = true; continue; }
        if ch == '\t' { fields.push(current); current = String::new(); continue; }
        current.push(ch);
    }
    if escaping { current.push('\\'); }
    fields.push(current);
    fields
}

fn __apo_async_write(kind: &str, name: &str, type_name: &str, payload: &str, source_lang: &str) {
    let _ = fs::create_dir_all("output");
    let mut file = OpenOptions::new().create(true).append(true).open("output/apo_ir.txt").unwrap();
    writeln!(file, "{}\t{}\t{}\t{}\t{}", __apo_ir_escape(kind), __apo_ir_escape(name), __apo_ir_escape(type_name), __apo_ir_escape(source_lang), __apo_ir_escape(payload)).unwrap();
}

fn __apo_async_read(kind: &str, name: &str) -> String {
    let content = fs::read_to_string("output/apo_ir.txt").unwrap_or_default();
    for line in content.lines().rev() {
        if line.is_empty() { continue; }
        let fields = __apo_ir_parse_line(line);
        if fields.len() < 5 { continue; }
        if !kind.is_empty() && fields[0] != kind { continue; }
        if fields[1] != name { continue; }
        return fields[4].clone();
    }
    String::new()
}

fn __apo_async_exec(kind: &str, name: &str) -> i32 {
    let mut command = if cfg!(windows) {
        let mut cmd = Command::new("powershell");
        cmd.args(["-NoProfile", "-ExecutionPolicy", "Bypass", "-File", "output/apo_ir_exec.ps1", kind, name]);
        cmd
    } else {
        let mut cmd = Command::new("sh");
        cmd.args(["output/apo_ir_exec.sh", kind, name]);
        cmd
    };
    let status = command.status().unwrap();
    status.code().unwrap_or(-1)
}

macro_rules! async_write {
    ($kind:expr, $name:expr, $type_name:expr, $payload:expr) => { __apo_async_write($kind, $name, $type_name, $payload, "rs") };
    ($kind:expr, $name:expr, $type_name:expr, $payload:expr, $source_lang:expr) => { __apo_async_write($kind, $name, $type_name, $payload, $source_lang) };
}

macro_rules! async_read {
    ($name:expr) => { __apo_async_read("", $name) };
    ($kind:expr, $name:expr) => { __apo_async_read($kind, $name) };
}

macro_rules! async_exec {
    ($name:expr) => { __apo_async_exec("", $name) };
    ($kind:expr, $name:expr) => { __apo_async_exec($kind, $name) };
}
)APO";
}

static std::string __apo_csharp_ir_prelude() {
    return R"APO(using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;

static class ApoAsyncIR {
    private static string Escape(string value) {
        string text = value ?? string.Empty;
        return text.Replace("\\", "\\\\").Replace("\t", "\\t").Replace("\n", "\\n").Replace("\r", "\\r");
    }

    private static List<string> ParseLine(string line) {
        List<string> fields = new List<string>();
        StringBuilder current = new StringBuilder();
        bool escaping = false;
        foreach (char ch in line) {
            if (escaping) {
                if (ch == 'n') current.Append('\n');
                else if (ch == 'r') current.Append('\r');
                else if (ch == 't') current.Append('\t');
                else current.Append(ch);
                escaping = false;
                continue;
            }
            if (ch == '\\') { escaping = true; continue; }
            if (ch == '\t') { fields.Add(current.ToString()); current.Clear(); continue; }
            current.Append(ch);
        }
        if (escaping) current.Append('\\');
        fields.Add(current.ToString());
        return fields;
    }

    public static void async_write(string kind, string name, string typeName, string payload) {
        async_write(kind, name, typeName, payload, "cs");
    }

    public static void async_write(string kind, string name, string typeName, string payload, string sourceLang) {
        Directory.CreateDirectory("output");
        string record = string.Join("\t", Escape(kind), Escape(name), Escape(typeName), Escape(sourceLang), Escape(payload)) + Environment.NewLine;
        File.AppendAllText(Path.Combine("output", "apo_ir.txt"), record, Encoding.UTF8);
    }

    public static string async_read(string name) {
        return async_read("", name);
    }

    public static string async_read(string kind, string name) {
        string path = Path.Combine("output", "apo_ir.txt");
        if (!File.Exists(path)) return string.Empty;
        string[] lines = File.ReadAllLines(path, Encoding.UTF8);
        for (int index = lines.Length - 1; index >= 0; index -= 1) {
            string line = lines[index];
            if (string.IsNullOrEmpty(line)) continue;
            List<string> fields = ParseLine(line);
            if (fields.Count < 5) continue;
            if (!string.IsNullOrEmpty(kind) && fields[0] != kind) continue;
            if (fields[1] != name) continue;
            return fields[4];
        }
        return string.Empty;
    }

    public static int async_exec(string name) {
        return async_exec("", name);
    }

    public static int async_exec(string kind, string name) {
        Process process = new Process();
        bool isWindows = Environment.OSVersion.Platform == PlatformID.Win32NT || Environment.OSVersion.Platform == PlatformID.Win32Windows;
        process.StartInfo = new ProcessStartInfo {
            FileName = isWindows ? "powershell" : "sh",
            Arguments = isWindows
                ? "-NoProfile -ExecutionPolicy Bypass -File output/apo_ir_exec.ps1 \"" + kind + "\" \"" + name + "\""
                : "output/apo_ir_exec.sh \"" + kind + "\" \"" + name + "\"",
            UseShellExecute = false
        };
        process.Start();
        process.WaitForExit();
        return process.ExitCode;
    }
}
)APO";
}

static std::string __apo_go_ir_prelude() {
    return R"APO(package main

import (
    "os"
    "os/exec"
    "path/filepath"
    "runtime"
    "strings"
)

func apoIrEscape(value string) string {
    replacer := strings.NewReplacer("\\", "\\\\", "\t", "\\t", "\n", "\\n", "\r", "\\r")
    return replacer.Replace(value)
}

func apoIrParseLine(line string) []string {
    fields := []string{}
    var current strings.Builder
    escaping := false
    for _, ch := range line {
        if escaping {
            switch ch {
            case 'n': current.WriteRune('\n')
            case 'r': current.WriteRune('\r')
            case 't': current.WriteRune('\t')
            default: current.WriteRune(ch)
            }
            escaping = false
            continue
        }
        if ch == '\\' { escaping = true; continue }
        if ch == '\t' { fields = append(fields, current.String()); current.Reset(); continue }
        current.WriteRune(ch)
    }
    if escaping { current.WriteRune('\\') }
    fields = append(fields, current.String())
    return fields
}

func async_write(args ...string) {
    if len(args) < 4 { return }
    kind, name, typeName, payload := args[0], args[1], args[2], args[3]
    sourceLang := "go"
    if len(args) > 4 { sourceLang = args[4] }
    _ = os.MkdirAll("output", 0o755)
    record := strings.Join([]string{apoIrEscape(kind), apoIrEscape(name), apoIrEscape(typeName), apoIrEscape(sourceLang), apoIrEscape(payload)}, "\t") + "\n"
    file, _ := os.OpenFile(filepath.Join("output", "apo_ir.txt"), os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0o644)
    defer file.Close()
    _, _ = file.WriteString(record)
}

func async_read(args ...string) string {
    kind := ""
    name := ""
    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }
    content, err := os.ReadFile(filepath.Join("output", "apo_ir.txt"))
    if err != nil { return "" }
    lines := strings.Split(strings.ReplaceAll(string(content), "\r\n", "\n"), "\n")
    for index := len(lines) - 1; index >= 0; index -= 1 {
        line := lines[index]
        if line == "" { continue }
        fields := apoIrParseLine(line)
        if len(fields) < 5 { continue }
        if kind != "" && fields[0] != kind { continue }
        if fields[1] != name { continue }
        return fields[4]
    }
    return ""
}

func async_exec(args ...string) int {
    kind := ""
    name := ""
    if len(args) == 1 { name = args[0] } else if len(args) > 1 { kind = args[0]; name = args[1] }
    var command *exec.Cmd
    if runtime.GOOS == "windows" {
        command = exec.Command("powershell", "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", "output/apo_ir_exec.ps1", kind, name)
    } else {
        command = exec.Command("sh", "output/apo_ir_exec.sh", kind, name)
    }
    command.Stdout = os.Stdout
    command.Stderr = os.Stderr
    err := command.Run()
    if err == nil { return 0 }
    if exitError, ok := err.(*exec.ExitError); ok { return exitError.ExitCode() }
    return -1
}
)APO";
}

static std::string __apo_php_ir_prelude() {
    return R"APO(function _apo_ir_escape($value) {
    $text = $value === null ? '' : (string)$value;
    return str_replace(["\\", "\t", "\n", "\r"], ["\\\\", "\\t", "\\n", "\\r"], $text);
}

function _apo_ir_parse_line($line) {
    $fields = [];
    $current = '';
    $escaping = false;
    $length = strlen($line);
    for ($index = 0; $index < $length; $index += 1) {
        $ch = $line[$index];
        if ($escaping) {
            if ($ch === 'n') $current .= "\n";
            else if ($ch === 'r') $current .= "\r";
            else if ($ch === 't') $current .= "\t";
            else $current .= $ch;
            $escaping = false;
            continue;
        }
        if ($ch === '\\') { $escaping = true; continue; }
        if ($ch === "\t") { $fields[] = $current; $current = ''; continue; }
        $current .= $ch;
    }
    if ($escaping) $current .= '\\';
    $fields[] = $current;
    return $fields;
}

function async_write($kind, $name, $typeName, $payload, $sourceLang = 'php') {
    if (!is_dir('output')) mkdir('output', 0777, true);
    $record = implode("\t", [_apo_ir_escape($kind), _apo_ir_escape($name), _apo_ir_escape($typeName), _apo_ir_escape($sourceLang), _apo_ir_escape($payload)]) . PHP_EOL;
    file_put_contents('output/apo_ir.txt', $record, FILE_APPEND);
}

function async_read($kindOrName, $maybeName = null) {
    $kind = $maybeName === null ? '' : (string)$kindOrName;
    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;
    if (!file_exists('output/apo_ir.txt')) return '';
    $lines = file('output/apo_ir.txt', FILE_IGNORE_NEW_LINES);
    for ($index = count($lines) - 1; $index >= 0; $index -= 1) {
        $line = $lines[$index];
        if ($line === '') continue;
        $fields = _apo_ir_parse_line($line);
        if (count($fields) < 5) continue;
        if ($kind !== '' && $fields[0] !== $kind) continue;
        if ($fields[1] !== $name) continue;
        return $fields[4];
    }
    return '';
}

function async_exec($kindOrName, $maybeName = null) {
    $kind = $maybeName === null ? '' : (string)$kindOrName;
    $name = $maybeName === null ? (string)$kindOrName : (string)$maybeName;
    $command = PHP_OS_FAMILY === 'Windows'
        ? 'powershell -NoProfile -ExecutionPolicy Bypass -File ' . escapeshellarg('output/apo_ir_exec.ps1') . ' ' . escapeshellarg($kind) . ' ' . escapeshellarg($name)
        : 'sh ' . escapeshellarg('output/apo_ir_exec.sh') . ' ' . escapeshellarg($kind) . ' ' . escapeshellarg($name);
    passthru($command, $exitCode);
    return $exitCode;
}
)APO";
}

static std::string __apo_ruby_ir_prelude() {
    return R"APO(require 'fileutils'
require 'rbconfig'

def __apo_ir_escape(value)
  text = value.nil? ? '' : value.to_s
  text.gsub('\\', '\\\\').gsub("\t", '\\t').gsub("\n", '\\n').gsub("\r", '\\r')
end

def __apo_ir_parse_line(line)
  fields = []
  current = ''
  escaping = false
  line.each_char do |ch|
    if escaping
      current << case ch when 'n' then "\n" when 'r' then "\r" when 't' then "\t" else ch end
      escaping = false
      next
    end
    if ch == '\\'
      escaping = true
      next
    end
    if ch == "\t"
      fields << current
      current = ''
      next
    end
    current << ch
  end
  current << '\\' if escaping
  fields << current
  fields
end

def async_write(kind, name, type_name, payload, source_lang = 'rb')
  FileUtils.mkdir_p('output')
  record = [kind, name, type_name, source_lang, payload].map { |value| __apo_ir_escape(value) }.join("\t") + "\n"
  File.open('output/apo_ir.txt', 'a:utf-8') { |file| file.write(record) }
end

def async_read(kind_or_name, name = nil)
  kind = name.nil? ? '' : kind_or_name.to_s
  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s
  return '' unless File.exist?('output/apo_ir.txt')
  File.readlines('output/apo_ir.txt', chomp: true).reverse_each do |line|
    next if line.empty?
    fields = __apo_ir_parse_line(line)
    next if fields.length < 5
    next unless kind.empty? || fields[0] == kind
    next unless fields[1] == symbol_name
    return fields[4]
  end
  ''
end

def async_exec(kind_or_name, name = nil)
  kind = name.nil? ? '' : kind_or_name.to_s
  symbol_name = name.nil? ? kind_or_name.to_s : name.to_s
    if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/i
        system('powershell', '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', 'output/apo_ir_exec.ps1', kind, symbol_name)
    else
        system('sh', 'output/apo_ir_exec.sh', kind, symbol_name)
    end
  $?.exitstatus || -1
end
)APO";
}

static std::string __apo_kotlin_ir_prelude() {
    return R"APO(import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Paths
import java.nio.file.StandardOpenOption

fun apoIrEscape(value: String?): String {
    val text = value ?: ""
    return text.replace("\\", "\\\\").replace("\t", "\\t").replace("\n", "\\n").replace("\r", "\\r")
}

fun apoIrParseLine(line: String): List<String> {
    val fields = mutableListOf<String>()
    val current = StringBuilder()
    var escaping = false
    for (ch in line) {
        if (escaping) {
            when (ch) {
                'n' -> current.append('\n')
                'r' -> current.append('\r')
                't' -> current.append('\t')
                else -> current.append(ch)
            }
            escaping = false
            continue
        }
        if (ch == '\\') { escaping = true; continue }
        if (ch == '\t') { fields += current.toString(); current.setLength(0); continue }
        current.append(ch)
    }
    if (escaping) current.append('\\')
    fields += current.toString()
    return fields
}

fun async_write(kind: String, name: String, typeName: String, payload: String, sourceLang: String = "kt") {
    val irPath = Paths.get("output", "apo_ir.txt")
    Files.createDirectories(irPath.parent)
    val record = listOf(kind, name, typeName, sourceLang, payload).joinToString("\t") { apoIrEscape(it) } + System.lineSeparator()
    Files.write(irPath, record.toByteArray(StandardCharsets.UTF_8), StandardOpenOption.CREATE, StandardOpenOption.APPEND)
}

fun async_read(name: String): String = async_read("", name)

fun async_read(kind: String, name: String): String {
    val irPath = Paths.get("output", "apo_ir.txt")
    if (!Files.exists(irPath)) return ""
    val lines = Files.readAllLines(irPath, StandardCharsets.UTF_8)
    for (index in lines.indices.reversed()) {
        val line = lines[index]
        if (line.isEmpty()) continue
        val fields = apoIrParseLine(line)
        if (fields.size < 5) continue
        if (kind.isNotEmpty() && fields[0] != kind) continue
        if (fields[1] != name) continue
        return fields[4]
    }
    return ""
}

fun async_exec(name: String): Int = async_exec("", name)

fun async_exec(kind: String, name: String): Int {
    val isWindows = System.getProperty("os.name", "").lowercase().contains("win")
    val command = if (isWindows) {
        listOf("powershell", "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", "output/apo_ir_exec.ps1", kind, name)
    } else {
        listOf("sh", "output/apo_ir_exec.sh", kind, name)
    }
    val process = ProcessBuilder(command)
        .inheritIO()
        .start()
    return process.waitFor()
}
)APO";
}

static std::string __apo_lstrip(std::string text) {
    std::size_t index = 0;
    while (index < text.size() && std::isspace(static_cast<unsigned char>(text[index])) != 0) {
        index += 1;
    }
    return text.substr(index);
}

static std::string __apo_wrap_native_source(const std::string& lang, const std::string& code) {
    std::string normalized = code;
    if (lang == "cpp") {
        if (normalized.find("#include") == std::string::npos) {
            normalized = "#include <iostream>\n\n" + normalized;
        }
        return __apo_cpp_ir_prelude() + normalized + "\n";
    }
    if (lang == "py") {
        return __apo_python_ir_prelude() + normalized + "\n";
    }
    if (lang == "java") {
        return __apo_java_ir_prelude() + normalized + "\n";
    }
    if (lang == "rs") {
        return __apo_rust_ir_prelude() + normalized + "\n";
    }
    if (lang == "cs") {
        return __apo_csharp_ir_prelude() + normalized + "\n";
    }
    if (lang == "js") {
        return __apo_js_ir_prelude("js", false) + normalized + "\n";
    }
    if (lang == "ts") {
        return __apo_js_ir_prelude("ts", true) + normalized + "\n";
    }
    if (lang == "go") {
        return __apo_go_ir_prelude() + normalized + "\n";
    }
    if (lang == "php") {
        std::string phpBody = normalized;
        if (phpBody.rfind("<?php", 0) == 0) {
            phpBody = __apo_lstrip(phpBody.substr(5));
        }
        return std::string("<?php\n") + __apo_php_ir_prelude() + phpBody + "\n";
    }
    if (lang == "rb") {
        return __apo_ruby_ir_prelude() + normalized + "\n";
    }
    if (lang == "kt") {
        return __apo_kotlin_ir_prelude() + normalized + "\n";
    }
    return normalized + "\n";
}

#endif