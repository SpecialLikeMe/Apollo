#ifndef __APO_STD_OBJECT_RUNTIME_HPP
#define __APO_STD_OBJECT_RUNTIME_HPP

#include "apo_stdlib_runtime.hpp"

#include <algorithm>
#include <array>
#include <chrono>
#include <condition_variable>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <list>
#include <map>
#include <random>
#include <regex>
#include <mutex>
#include <optional>
#include <queue>
#include <set>
#include <sstream>
#include <string>
#include <string_view>
#include <thread>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

#ifdef _WIN32
#include <Windows.h>
#include <io.h>
#include <processthreadsapi.h>
#else
#include <signal.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#endif

#ifdef __APPLE__
#include <mach-o/dyld.h>
#endif

namespace __apo_stdlib {

enum class handle_kind {
    Buffer,
    File,
    Process,
    Task,
    Vector,
    UnorderedMap,
    OrderedMap,
    UnorderedSet,
    OrderedSet,
    Deque,
    Heap,
    Regex,
    Random,
    Mutex,
    Condvar,
    Channel,
    Metadata,
    Url,
    Entry,
    EntryIterator,
    LinkedList,
    RingBuffer,
    BitVec,
    MultiMap,
    WeakMap,
    LruCache,
    EnumSet,
    Grid2d,
};

struct opaque_handle {
    explicit opaque_handle(handle_kind handleKind) : kind(handleKind) {
    }

    virtual ~opaque_handle() = default;

    handle_kind kind;
};

template <typename T>
T* checked_handle(void* rawHandle, handle_kind expectedKind) {
    auto* handle = static_cast<opaque_handle*>(rawHandle);
    if (handle == nullptr || handle->kind != expectedKind) {
        return nullptr;
    }
    return static_cast<T*>(handle);
}

template <typename Iter>
std::string join_string_range(Iter begin, Iter end, std::string_view delimiter) {
    std::string joined;
    bool first = true;
    for (Iter current = begin; current != end; ++current) {
        if (!first) {
            joined.append(delimiter);
        }
        first = false;
        joined.append(*current);
    }
    return joined;
}

inline std::string join_strings(const std::vector<std::string>& values, std::string_view delimiter) {
    return join_string_range(values.begin(), values.end(), delimiter);
}

inline std::size_t clamp_collection_index(std::int32_t index, std::size_t size) {
    if (index <= 0) {
        return 0;
    }
    const std::size_t asSize = static_cast<std::size_t>(index);
    return asSize > size ? size : asSize;
}

inline std::string safe_component(std::filesystem::path path) {
    return path.empty() ? std::string() : path.string();
}

inline std::tm portable_tm(std::time_t instant, bool utc) {
    std::tm result{};
#ifdef _WIN32
    if (utc) {
        gmtime_s(&result, &instant);
    } else {
        localtime_s(&result, &instant);
    }
#else
    if (utc) {
        gmtime_r(&instant, &result);
    } else {
        localtime_r(&instant, &result);
    }
#endif
    return result;
}

inline std::string format_tm_iso(const std::tm& value, bool utc) {
    std::ostringstream stream;
    stream << std::put_time(&value, "%Y-%m-%dT%H:%M:%S");
    if (utc) {
        stream << 'Z';
    }
    return stream.str();
}

struct buffer_handle final : opaque_handle {
    buffer_handle() : opaque_handle(handle_kind::Buffer) {
    }

    std::string text;
};

inline void* buffer_create() {
    return new buffer_handle();
}

inline void buffer_push_text(void* rawHandle, std::string_view text) {
    if (auto* handle = checked_handle<buffer_handle>(rawHandle, handle_kind::Buffer)) {
        handle->text.append(text);
    }
}

inline void buffer_push_i64(void* rawHandle, std::int64_t value) {
    if (auto* handle = checked_handle<buffer_handle>(rawHandle, handle_kind::Buffer)) {
        handle->text += std::to_string(value);
    }
}

inline const char* buffer_text(void* rawHandle) {
    if (auto* handle = checked_handle<buffer_handle>(rawHandle, handle_kind::Buffer)) {
        return store_string(handle->text);
    }
    return store_string("");
}

inline void buffer_clear(void* rawHandle) {
    if (auto* handle = checked_handle<buffer_handle>(rawHandle, handle_kind::Buffer)) {
        handle->text.clear();
    }
}

struct file_handle final : opaque_handle {
    file_handle(std::string filePath, std::string fileMode)
        : opaque_handle(handle_kind::File), path(std::move(filePath)), mode(std::move(fileMode)) {
    }

    std::string path;
    std::string mode;
    bool closed = false;
};

inline void* file_open(std::string path, std::string mode) {
    return new file_handle(std::move(path), std::move(mode));
}

inline int file_write(void* rawHandle, std::string_view text) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    if (handle == nullptr || handle->closed) {
        return 0;
    }

    std::ios::openmode openMode = std::ios::out;
    if (handle->mode.find('a') != std::string::npos) {
        openMode |= std::ios::app;
    } else {
        openMode |= std::ios::trunc;
    }
    if (std::filesystem::path path(handle->path); path.has_parent_path()) {
        std::filesystem::create_directories(path.parent_path());
    }

    std::ofstream output(handle->path, openMode);
    if (!output) {
        return 0;
    }
    output << text;
    return output.good() ? 1 : 0;
}

inline const char* file_read_all(void* rawHandle) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    if (handle == nullptr) {
        return store_string("");
    }

    std::ifstream input(handle->path, std::ios::binary);
    if (!input) {
        return store_string("");
    }
    std::string text((std::istreambuf_iterator<char>(input)), std::istreambuf_iterator<char>());
    return store_string(std::move(text));
}

inline int file_close(void* rawHandle) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    if (handle == nullptr) {
        return 0;
    }
    handle->closed = true;
    return 1;
}

inline const char* file_path(void* rawHandle) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    return store_string(handle != nullptr ? handle->path : std::string());
}

inline void* file_create(std::string path) {
    if (std::filesystem::path filePath(path); filePath.has_parent_path()) {
        std::filesystem::create_directories(filePath.parent_path());
    }
    std::ofstream output(path, std::ios::out | std::ios::trunc);
    output.close();
    return new file_handle(std::move(path), "w");
}

inline std::int32_t file_sync_all(void* rawHandle) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    return handle != nullptr && std::filesystem::exists(std::filesystem::path(handle->path)) ? 1 : 0;
}

inline std::int32_t file_sync_data(void* rawHandle) {
    return file_sync_all(rawHandle);
}

inline std::int32_t file_set_len(void* rawHandle, std::int64_t size) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    if (handle == nullptr || size < 0) {
        return 0;
    }
    try {
        std::filesystem::resize_file(std::filesystem::path(handle->path), static_cast<std::uintmax_t>(size));
        return 1;
    } catch (...) {
        return 0;
    }
}

struct metadata_handle final : opaque_handle {
    metadata_handle()
        : opaque_handle(handle_kind::Metadata) {
    }

    std::uintmax_t size = 0;
    std::string modified;
    std::string accessed;
    std::string created;
    bool is_dir = false;
    bool is_file = false;
    bool readonly = false;
};

inline std::string file_time_to_text(const std::filesystem::file_time_type& timePoint) {
    return std::to_string(static_cast<long long>(timePoint.time_since_epoch().count()));
}

inline void* file_metadata(void* rawHandle) {
    auto* handle = checked_handle<file_handle>(rawHandle, handle_kind::File);
    auto* metadata = new metadata_handle();
    if (handle == nullptr) {
        return metadata;
    }
    try {
        const std::filesystem::path path(handle->path);
        metadata->is_dir = std::filesystem::is_directory(path);
        metadata->is_file = std::filesystem::is_regular_file(path);
        metadata->readonly = (std::filesystem::status(path).permissions() & std::filesystem::perms::owner_write) == std::filesystem::perms::none;
        if (metadata->is_file) {
            metadata->size = std::filesystem::file_size(path);
        }
        const auto writeTime = std::filesystem::last_write_time(path);
        metadata->modified = file_time_to_text(writeTime);
        metadata->accessed = metadata->modified;
        metadata->created = metadata->modified;
    } catch (...) {
    }
    return metadata;
}

inline std::int64_t metadata_size(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return handle != nullptr ? static_cast<std::int64_t>(handle->size) : 0;
}

inline const char* metadata_modified(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return store_string(handle != nullptr ? handle->modified : std::string());
}

inline const char* metadata_accessed(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return store_string(handle != nullptr ? handle->accessed : std::string());
}

inline const char* metadata_created(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return store_string(handle != nullptr ? handle->created : std::string());
}

inline std::int32_t metadata_is_dir(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return handle != nullptr && handle->is_dir ? 1 : 0;
}

inline std::int32_t metadata_is_file(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return handle != nullptr && handle->is_file ? 1 : 0;
}

inline std::int32_t metadata_permissions_readonly(void* rawHandle) {
    auto* handle = checked_handle<metadata_handle>(rawHandle, handle_kind::Metadata);
    return handle != nullptr && handle->readonly ? 1 : 0;
}

struct process_handle final : opaque_handle {
    explicit process_handle(std::string processCommand)
        : opaque_handle(handle_kind::Process), command(std::move(processCommand)) {
    }

    std::string command;
    int exitCode = -1;
    bool completed = false;

#ifdef _WIN32
    HANDLE nativeProcess = nullptr;
    HANDLE nativeThread = nullptr;
    DWORD processId = 0;

    ~process_handle() override {
        if (nativeThread != nullptr) {
            CloseHandle(nativeThread);
            nativeThread = nullptr;
        }
        if (nativeProcess != nullptr) {
            CloseHandle(nativeProcess);
            nativeProcess = nullptr;
        }
    }
#else
    pid_t pid = -1;
#endif
};

inline void process_mark_completed(process_handle* handle, int exitCode) {
    if (handle == nullptr) {
        return;
    }
    handle->exitCode = exitCode;
    handle->completed = true;
}

inline void* process_spawn(std::string command) {
    auto* handle = new process_handle(std::move(command));

#ifdef _WIN32
    const char* shellPath = std::getenv("COMSPEC");
    std::string shell = shellPath != nullptr && *shellPath != '\0'
        ? std::string(shellPath)
        : std::string("C:\\Windows\\System32\\cmd.exe");
    std::string commandLine = std::string("cmd.exe /C ") + handle->command;
    std::vector<char> mutableCommand(commandLine.begin(), commandLine.end());
    mutableCommand.push_back('\0');

    STARTUPINFOA startupInfo{};
    startupInfo.cb = sizeof(startupInfo);
    PROCESS_INFORMATION processInfo{};
    if (CreateProcessA(shell.c_str(), mutableCommand.data(), nullptr, nullptr, FALSE, 0, nullptr, nullptr, &startupInfo, &processInfo) == 0) {
        process_mark_completed(handle, -1);
        return handle;
    }
    handle->nativeProcess = processInfo.hProcess;
    handle->nativeThread = processInfo.hThread;
    handle->processId = processInfo.dwProcessId;
#else
    const pid_t pid = fork();
    if (pid < 0) {
        process_mark_completed(handle, -1);
        return handle;
    }
    if (pid == 0) {
        execl("/bin/sh", "sh", "-c", handle->command.c_str(), static_cast<char*>(nullptr));
        _exit(127);
    }
    handle->pid = pid;
#endif

    return handle;
}

inline int process_refresh_status(process_handle* handle, bool wait) {
    if (handle == nullptr) {
        return -1;
    }
    if (handle->completed) {
        return handle->exitCode;
    }

#ifdef _WIN32
    if (handle->nativeProcess == nullptr) {
        process_mark_completed(handle, -1);
        return handle->exitCode;
    }
    const DWORD waitResult = WaitForSingleObject(handle->nativeProcess, wait ? INFINITE : 0);
    if (waitResult == WAIT_TIMEOUT) {
        return -1;
    }
    DWORD code = STILL_ACTIVE;
    if (GetExitCodeProcess(handle->nativeProcess, &code) == 0) {
        process_mark_completed(handle, -1);
        return handle->exitCode;
    }
    process_mark_completed(handle, code == STILL_ACTIVE ? -1 : static_cast<int>(code));
    return handle->exitCode;
#else
    if (handle->pid <= 0) {
        process_mark_completed(handle, -1);
        return handle->exitCode;
    }
    int status = 0;
    const pid_t result = waitpid(handle->pid, &status, wait ? 0 : WNOHANG);
    if (result == 0) {
        return -1;
    }
    if (result < 0) {
        process_mark_completed(handle, -1);
        return handle->exitCode;
    }
    if (WIFEXITED(status)) {
        process_mark_completed(handle, WEXITSTATUS(status));
    } else if (WIFSIGNALED(status)) {
        process_mark_completed(handle, 128 + WTERMSIG(status));
    } else {
        process_mark_completed(handle, -1);
    }
    return handle->exitCode;
#endif
}

inline int process_wait(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    return process_refresh_status(handle, true);
}

inline int process_exit_code(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    if (handle == nullptr) {
        return -1;
    }
    return process_refresh_status(handle, true);
}

inline const char* process_command(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    return store_string(handle != nullptr ? handle->command : std::string());
}

inline std::int32_t process_kill(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    if (handle == nullptr) {
        return 0;
    }
    if (handle->completed) {
        return 1;
    }

#ifdef _WIN32
    if (handle->nativeProcess == nullptr) {
        process_mark_completed(handle, -1);
        return 0;
    }
    if (TerminateProcess(handle->nativeProcess, 1) == 0) {
        return 0;
    }
    process_refresh_status(handle, true);
    return 1;
#else
    if (handle->pid <= 0) {
        process_mark_completed(handle, -1);
        return 0;
    }
    if (kill(handle->pid, SIGTERM) != 0) {
        return 0;
    }
    process_refresh_status(handle, true);
    return 1;
#endif
}

enum class task_value_kind {
    None,
    I32,
    Str,
    Bool,
    F64,
};

struct task_handle final : opaque_handle {
    task_handle() : opaque_handle(handle_kind::Task) {
    }

    task_value_kind kind = task_value_kind::None;
    std::int32_t i32Value = 0;
    std::string strValue;
    bool done = true;
};

inline void* task_ready_i32(std::int32_t value) {
    auto* handle = new task_handle();
    handle->kind = task_value_kind::I32;
    handle->i32Value = value;
    return handle;
}

inline void* task_ready_str(std::string value) {
    auto* handle = new task_handle();
    handle->kind = task_value_kind::Str;
    handle->strValue = std::move(value);
    return handle;
}

inline void* task_ready_bool(std::int32_t value) {
    auto* handle = new task_handle();
    handle->kind = task_value_kind::Bool;
    handle->i32Value = value != 0 ? 1 : 0;
    return handle;
}

inline void* task_ready_f64(double value) {
    auto* handle = new task_handle();
    handle->kind = task_value_kind::F64;
    handle->strValue = store_string(std::to_string(value));
    return handle;
}

inline int task_done(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->done ? 1 : 0;
}

inline std::int32_t task_await_i32(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::I32 ? handle->i32Value : 0;
}

inline const char* task_await_str(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return store_string(handle != nullptr && handle->kind == task_value_kind::Str ? handle->strValue : std::string());
}

inline std::int32_t task_await_bool(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::Bool ? handle->i32Value : 0;
}

inline double task_await_f64(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    if (handle == nullptr || handle->kind != task_value_kind::F64) {
        return 0.0;
    }
    return std::strtod(handle->strValue.c_str(), nullptr);
}

inline std::int32_t task_is_i32(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::I32 ? 1 : 0;
}

inline std::int32_t task_is_str(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::Str ? 1 : 0;
}

inline std::int32_t task_is_bool(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::Bool ? 1 : 0;
}

inline std::int32_t task_is_f64(void* rawHandle) {
    auto* handle = checked_handle<task_handle>(rawHandle, handle_kind::Task);
    return handle != nullptr && handle->kind == task_value_kind::F64 ? 1 : 0;
}

struct vector_handle final : opaque_handle {
    vector_handle() : opaque_handle(handle_kind::Vector) {
    }

    std::vector<std::string> items;
};

inline void* vec_from_items(std::vector<std::string> items) {
    auto* handle = new vector_handle();
    handle->items = std::move(items);
    return handle;
}

inline void* str_split_handle(std::string_view text, std::string_view delimiter, std::int32_t maxParts) {
    std::vector<std::string> items;
    if (delimiter.empty()) {
        items.reserve(text.size());
        for (char ch : text) {
            items.emplace_back(1, ch);
        }
        if (items.empty()) {
            items.emplace_back();
        }
        return vec_from_items(std::move(items));
    }

    std::size_t cursor = 0;
    while (cursor <= text.size()) {
        if (maxParts > 0 && static_cast<std::int32_t>(items.size()) + 1 >= maxParts) {
            items.emplace_back(text.substr(cursor));
            return vec_from_items(std::move(items));
        }

        const std::size_t match = text.find(delimiter, cursor);
        if (match == std::string_view::npos) {
            items.emplace_back(text.substr(cursor));
            break;
        }

        items.emplace_back(text.substr(cursor, match - cursor));
        cursor = match + delimiter.size();
    }

    if (items.empty()) {
        items.emplace_back();
    }
    return vec_from_items(std::move(items));
}

inline void* str_split_lines_handle(std::string_view text) {
    std::vector<std::string> items;
    std::size_t cursor = 0;
    while (cursor <= text.size()) {
        const std::size_t match = text.find_first_of("\r\n", cursor);
        if (match == std::string_view::npos) {
            items.emplace_back(text.substr(cursor));
            break;
        }

        items.emplace_back(text.substr(cursor, match - cursor));
        cursor = match + 1;
        if (match + 1 < text.size() && text[match] == '\r' && text[match + 1] == '\n') {
            ++cursor;
        }
        if (cursor == text.size()) {
            items.emplace_back();
            break;
        }
    }

    if (items.empty()) {
        items.emplace_back();
    }
    return vec_from_items(std::move(items));
}

inline void* vec_new() {
    return new vector_handle();
}

inline void* vec_with_capacity(std::int32_t capacity) {
    auto* handle = new vector_handle();
    if (capacity > 0) {
        handle->items.reserve(static_cast<std::size_t>(capacity));
    }
    return handle;
}

inline std::int32_t vec_len(void* rawHandle) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void vec_push(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        handle->items.push_back(std::move(value));
    }
}

inline const char* vec_pop(void* rawHandle) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.back());
    handle->items.pop_back();
    return store_string(std::move(value));
}

inline const char* vec_get(void* rawHandle, std::int32_t index) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return store_string("");
    }
    return store_string(handle->items[static_cast<std::size_t>(index)]);
}

inline void vec_set(void* rawHandle, std::int32_t index, std::string value) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return;
    }
    handle->items[static_cast<std::size_t>(index)] = std::move(value);
}

inline void vec_insert(void* rawHandle, std::int32_t index, std::string value) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr) {
        return;
    }
    handle->items.insert(handle->items.begin() + static_cast<std::ptrdiff_t>(clamp_collection_index(index, handle->items.size())), std::move(value));
}

inline const char* vec_remove(void* rawHandle, std::int32_t index) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return store_string("");
    }
    auto iterator = handle->items.begin() + static_cast<std::ptrdiff_t>(index);
    std::string value = std::move(*iterator);
    handle->items.erase(iterator);
    return store_string(std::move(value));
}

inline const char* vec_swap_remove(void* rawHandle, std::int32_t index) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->items.size()) {
        return store_string("");
    }
    const std::size_t target = static_cast<std::size_t>(index);
    std::string value = std::move(handle->items[target]);
    if (target + 1 != handle->items.size()) {
        handle->items[target] = std::move(handle->items.back());
    }
    handle->items.pop_back();
    return store_string(std::move(value));
}

inline void vec_clear(void* rawHandle) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        handle->items.clear();
    }
}

inline void vec_truncate(void* rawHandle, std::int32_t length) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        const std::size_t target = length <= 0 ? 0 : static_cast<std::size_t>(length);
        if (target < handle->items.size()) {
            handle->items.resize(target);
        }
    }
}

inline void vec_reserve(void* rawHandle, std::int32_t additional) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        if (additional > 0) {
            handle->items.reserve(handle->items.size() + static_cast<std::size_t>(additional));
        }
    }
}

inline void vec_shrink_to_fit(void* rawHandle) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        handle->items.shrink_to_fit();
    }
}

inline void vec_resize(void* rawHandle, std::int32_t newLength, std::string value) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        const std::size_t target = newLength <= 0 ? 0 : static_cast<std::size_t>(newLength);
        handle->items.resize(target, value);
    }
}

inline void vec_dedup(void* rawHandle) {
    if (auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector)) {
        auto newEnd = std::unique(handle->items.begin(), handle->items.end());
        handle->items.erase(newEnd, handle->items.end());
    }
}

inline const char* vec_join(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    return store_string(handle != nullptr ? join_strings(handle->items, delimiter) : std::string());
}

inline std::int32_t vec_contains(void* rawHandle, std::string_view value) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    if (handle == nullptr) {
        return 0;
    }
    return std::find(handle->items.begin(), handle->items.end(), value) != handle->items.end() ? 1 : 0;
}

struct unordered_map_handle final : opaque_handle {
    unordered_map_handle() : opaque_handle(handle_kind::UnorderedMap) {
    }

    std::unordered_map<std::string, std::string> items;
};

inline void* map_new() {
    return new unordered_map_handle();
}

inline void* map_with_capacity(std::int32_t capacity) {
    auto* handle = new unordered_map_handle();
    if (capacity > 0) {
        handle->items.reserve(static_cast<std::size_t>(capacity));
    }
    return handle;
}

inline std::int32_t map_len(void* rawHandle) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void map_insert(void* rawHandle, std::string key, std::string value) {
    if (auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap)) {
        handle->items[std::move(key)] = std::move(value);
    }
}

inline const char* map_get(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    return store_string(found != handle->items.end() ? found->second : std::string());
}

inline const char* map_get_mut(void* rawHandle, std::string_view key) {
    return map_get(rawHandle, key);
}

inline const char* map_remove(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    if (found == handle->items.end()) {
        return store_string("");
    }
    std::string value = std::move(found->second);
    handle->items.erase(found);
    return store_string(std::move(value));
}

inline std::int32_t map_contains_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    return handle != nullptr && handle->items.find(std::string(key)) != handle->items.end() ? 1 : 0;
}

inline void map_clear(void* rawHandle) {
    if (auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap)) {
        handle->items.clear();
    }
}

inline void map_reserve(void* rawHandle, std::int32_t capacity) {
    if (auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap)) {
        if (capacity > 0) {
            handle->items.reserve(static_cast<std::size_t>(capacity));
        }
    }
}

inline const char* map_entry_or_insert(void* rawHandle, std::string key, std::string defaultValue) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    if (handle == nullptr) {
        return store_string("");
    }
    auto [iterator, inserted] = handle->items.try_emplace(std::move(key), std::move(defaultValue));
    (void)inserted;
    return store_string(iterator->second);
}

inline void map_rehash(void* rawHandle) {
    if (auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap)) {
        handle->items.rehash(handle->items.size());
    }
}

inline const char* map_keys(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& [key, value] : handle->items) {
            (void)value;
            values.push_back(key);
        }
        std::sort(values.begin(), values.end());
    }
    return store_string(join_strings(values, delimiter));
}

inline const char* map_values(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& [key, value] : handle->items) {
            (void)key;
            values.push_back(value);
        }
        std::sort(values.begin(), values.end());
    }
    return store_string(join_strings(values, delimiter));
}

inline const char* map_entries(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& [key, value] : handle->items) {
            values.push_back(key + "=" + value);
        }
        std::sort(values.begin(), values.end());
    }
    return store_string(join_strings(values, delimiter));
}

inline void* json_parse_array_handle(std::string_view text) {
    return vec_from_items(json_parse_array_items(text));
}

inline void* json_parse_object_handle(std::string_view text) {
    auto* handle = new unordered_map_handle();
    for (auto& [key, value] : json_parse_object_items(text)) {
        handle->items[std::move(key)] = std::move(value);
    }
    return handle;
}

inline const char* json_write_array_from_vector(void* rawHandle) {
    auto* handle = checked_handle<vector_handle>(rawHandle, handle_kind::Vector);
    return store_string(handle != nullptr ? json_write_array_fragments(handle->items) : std::string("[]"));
}

inline const char* json_write_object_from_map(void* rawHandle) {
    auto* handle = checked_handle<unordered_map_handle>(rawHandle, handle_kind::UnorderedMap);
    std::vector<std::pair<std::string, std::string>> items;
    if (handle != nullptr) {
        items.reserve(handle->items.size());
        for (const auto& entry : handle->items) {
            items.push_back(entry);
        }
        std::sort(items.begin(), items.end(), [](const auto& left, const auto& right) {
            return left.first < right.first;
        });
    }
    return store_string(json_write_object_fragments(items));
}

struct ordered_map_handle final : opaque_handle {
    ordered_map_handle() : opaque_handle(handle_kind::OrderedMap) {
    }

    std::map<std::string, std::string> items;
};

struct entry_handle final : opaque_handle {
    entry_handle(std::string entryKey, std::string entryValue)
        : opaque_handle(handle_kind::Entry), key(std::move(entryKey)), value(std::move(entryValue)) {
    }

    std::string key;
    std::string value;
};

inline void* entry_create(std::string key, std::string value) {
    return new entry_handle(std::move(key), std::move(value));
}

inline const char* entry_key(void* rawHandle) {
    auto* handle = checked_handle<entry_handle>(rawHandle, handle_kind::Entry);
    return store_string(handle != nullptr ? handle->key : std::string());
}

inline const char* entry_value(void* rawHandle) {
    auto* handle = checked_handle<entry_handle>(rawHandle, handle_kind::Entry);
    return store_string(handle != nullptr ? handle->value : std::string());
}

struct entry_iter_handle final : opaque_handle {
    entry_iter_handle() : opaque_handle(handle_kind::EntryIterator) {
    }

    std::vector<std::pair<std::string, std::string>> entries;
    std::size_t index = 0;
};

inline void* entry_iter_create(std::vector<std::pair<std::string, std::string>> entries) {
    auto* handle = new entry_iter_handle();
    handle->entries = std::move(entries);
    return handle;
}

inline std::int32_t entry_iter_has_next(void* rawHandle) {
    auto* handle = checked_handle<entry_iter_handle>(rawHandle, handle_kind::EntryIterator);
    return handle != nullptr && handle->index < handle->entries.size() ? 1 : 0;
}

inline void* entry_iter_next(void* rawHandle) {
    auto* handle = checked_handle<entry_iter_handle>(rawHandle, handle_kind::EntryIterator);
    if (handle == nullptr || handle->index >= handle->entries.size()) {
        return entry_create("", "");
    }
    const auto& current = handle->entries[handle->index++];
    return entry_create(current.first, current.second);
}

inline void* tmap_new() {
    return new ordered_map_handle();
}

inline std::int32_t tmap_len(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void tmap_insert(void* rawHandle, std::string key, std::string value) {
    if (auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap)) {
        handle->items[std::move(key)] = std::move(value);
    }
}

inline const char* tmap_get(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    return store_string(found != handle->items.end() ? found->second : std::string());
}

inline std::int32_t tmap_contains_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    return handle != nullptr && handle->items.find(std::string(key)) != handle->items.end() ? 1 : 0;
}

inline const char* tmap_remove(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    if (found == handle->items.end()) {
        return store_string("");
    }
    std::string value = std::move(found->second);
    handle->items.erase(found);
    return store_string(std::move(value));
}

inline const char* tmap_first_key(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    return store_string(handle->items.begin()->first);
}

inline const char* tmap_last_key(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    return store_string(handle->items.rbegin()->first);
}

inline const char* tmap_floor_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    auto iterator = handle->items.upper_bound(std::string(key));
    if (iterator == handle->items.begin()) {
        return store_string(iterator != handle->items.end() && iterator->first == key ? iterator->first : std::string());
    }
    if (iterator == handle->items.end() || iterator->first != key) {
        --iterator;
    }
    return store_string(iterator->first);
}

inline const char* tmap_ceiling_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    const auto iterator = handle->items.lower_bound(std::string(key));
    return store_string(iterator != handle->items.end() ? iterator->first : std::string());
}

inline void* tmap_pop_first(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return entry_create("", "");
    }
    auto iterator = handle->items.begin();
    void* entry = entry_create(iterator->first, iterator->second);
    handle->items.erase(iterator);
    return entry;
}

inline void* tmap_pop_last(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    if (handle == nullptr || handle->items.empty()) {
        return entry_create("", "");
    }
    auto iterator = std::prev(handle->items.end());
    void* entry = entry_create(iterator->first, iterator->second);
    handle->items.erase(iterator);
    return entry;
}

inline void* tmap_iter(void* rawHandle) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    std::vector<std::pair<std::string, std::string>> entries;
    if (handle != nullptr) {
        entries.reserve(handle->items.size());
        for (const auto& item : handle->items) {
            entries.push_back(item);
        }
    }
    return entry_iter_create(std::move(entries));
}

inline void* tmap_range_iter(void* rawHandle, std::string_view startKey, std::string_view endKey) {
    auto* handle = checked_handle<ordered_map_handle>(rawHandle, handle_kind::OrderedMap);
    std::vector<std::pair<std::string, std::string>> entries;
    if (handle == nullptr) {
        return entry_iter_create(std::move(entries));
    }
    std::string start(startKey);
    std::string end(endKey);
    if (compare_strings(start, end) > 0) {
        std::swap(start, end);
    }
    for (auto iterator = handle->items.lower_bound(start); iterator != handle->items.end() && compare_strings(iterator->first, end) <= 0; ++iterator) {
        entries.push_back(*iterator);
    }
    return entry_iter_create(std::move(entries));
}

struct list_handle final : opaque_handle {
    list_handle() : opaque_handle(handle_kind::LinkedList) {
    }

    std::list<std::string> items;
};

inline void* list_new() {
    return new list_handle();
}

inline void list_push_front(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList)) {
        handle->items.push_front(std::move(value));
    }
}

inline void list_push_back(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList)) {
        handle->items.push_back(std::move(value));
    }
}

inline const char* list_pop_front(void* rawHandle) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.front());
    handle->items.pop_front();
    return store_string(std::move(value));
}

inline const char* list_pop_back(void* rawHandle) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.back());
    handle->items.pop_back();
    return store_string(std::move(value));
}

inline const char* list_front(void* rawHandle) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    return store_string(handle != nullptr && !handle->items.empty() ? handle->items.front() : std::string());
}

inline const char* list_back(void* rawHandle) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    return store_string(handle != nullptr && !handle->items.empty() ? handle->items.back() : std::string());
}

inline std::int32_t list_len(void* rawHandle) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void list_clear(void* rawHandle) {
    if (auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList)) {
        handle->items.clear();
    }
}

inline const char* list_values(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<list_handle>(rawHandle, handle_kind::LinkedList);
    return store_string(handle != nullptr ? join_string_range(handle->items.begin(), handle->items.end(), delimiter) : std::string());
}

struct ring_buffer_handle final : opaque_handle {
    explicit ring_buffer_handle(std::size_t bufferCapacity)
        : opaque_handle(handle_kind::RingBuffer), capacity(bufferCapacity == 0 ? 1 : bufferCapacity) {
    }

    std::deque<std::string> items;
    std::size_t capacity;
};

inline void* ring_buffer_new(std::int32_t capacity) {
    return new ring_buffer_handle(capacity <= 0 ? 1u : static_cast<std::size_t>(capacity));
}

inline void ring_buffer_push_back(void* rawHandle, std::string value) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    if (handle == nullptr) {
        return;
    }
    if (handle->items.size() >= handle->capacity) {
        handle->items.pop_front();
    }
    handle->items.push_back(std::move(value));
}

inline void ring_buffer_push_front(void* rawHandle, std::string value) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    if (handle == nullptr) {
        return;
    }
    if (handle->items.size() >= handle->capacity) {
        handle->items.pop_back();
    }
    handle->items.push_front(std::move(value));
}

inline const char* ring_buffer_pop_front(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.front());
    handle->items.pop_front();
    return store_string(std::move(value));
}

inline const char* ring_buffer_pop_back(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.back());
    handle->items.pop_back();
    return store_string(std::move(value));
}

inline const char* ring_buffer_front(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    return store_string(handle != nullptr && !handle->items.empty() ? handle->items.front() : std::string());
}

inline const char* ring_buffer_back(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    return store_string(handle != nullptr && !handle->items.empty() ? handle->items.back() : std::string());
}

inline std::int32_t ring_buffer_len(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline std::int32_t ring_buffer_capacity(void* rawHandle) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    return handle != nullptr ? static_cast<std::int32_t>(handle->capacity) : 0;
}

inline void ring_buffer_clear(void* rawHandle) {
    if (auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer)) {
        handle->items.clear();
    }
}

inline const char* ring_buffer_values(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<ring_buffer_handle>(rawHandle, handle_kind::RingBuffer);
    return store_string(handle != nullptr ? join_string_range(handle->items.begin(), handle->items.end(), delimiter) : std::string());
}

struct bitvec_handle final : opaque_handle {
    bitvec_handle() : opaque_handle(handle_kind::BitVec) {
    }

    std::vector<std::uint8_t> bits;
};

inline void* bitvec_new() {
    return new bitvec_handle();
}

inline void bitvec_push(void* rawHandle, std::int32_t bit) {
    if (auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec)) {
        handle->bits.push_back(bit != 0 ? 1u : 0u);
    }
}

inline std::int32_t bitvec_get(void* rawHandle, std::int32_t index) {
    auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->bits.size()) {
        return 0;
    }
    return handle->bits[static_cast<std::size_t>(index)] != 0 ? 1 : 0;
}

inline void bitvec_set(void* rawHandle, std::int32_t index, std::int32_t bit) {
    auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec);
    if (handle == nullptr || index < 0 || static_cast<std::size_t>(index) >= handle->bits.size()) {
        return;
    }
    handle->bits[static_cast<std::size_t>(index)] = bit != 0 ? 1u : 0u;
}

inline std::int32_t bitvec_len(void* rawHandle) {
    auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec);
    return handle != nullptr ? static_cast<std::int32_t>(handle->bits.size()) : 0;
}

inline std::int32_t bitvec_count_ones(void* rawHandle) {
    auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec);
    if (handle == nullptr) {
        return 0;
    }
    return static_cast<std::int32_t>(std::count(handle->bits.begin(), handle->bits.end(), static_cast<std::uint8_t>(1)));
}

inline void bitvec_clear(void* rawHandle) {
    if (auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec)) {
        handle->bits.clear();
    }
}

inline const char* bitvec_text(void* rawHandle) {
    auto* handle = checked_handle<bitvec_handle>(rawHandle, handle_kind::BitVec);
    std::string text;
    if (handle != nullptr) {
        text.reserve(handle->bits.size());
        for (const std::uint8_t bit : handle->bits) {
            text.push_back(bit != 0 ? '1' : '0');
        }
    }
    return store_string(std::move(text));
}

struct multimap_handle final : opaque_handle {
    multimap_handle() : opaque_handle(handle_kind::MultiMap) {
    }

    std::multimap<std::string, std::string> items;
};

inline void* multimap_new() {
    return new multimap_handle();
}

inline void multimap_insert(void* rawHandle, std::string key, std::string value) {
    if (auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap)) {
        handle->items.emplace(std::move(key), std::move(value));
    }
}

inline void* multimap_get_all(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap);
    std::vector<std::string> values;
    if (handle != nullptr) {
        const auto range = handle->items.equal_range(std::string(key));
        for (auto iterator = range.first; iterator != range.second; ++iterator) {
            values.push_back(iterator->second);
        }
    }
    return vec_from_items(std::move(values));
}

inline std::int32_t multimap_remove_all(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.erase(std::string(key))) : 0;
}

inline std::int32_t multimap_contains_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap);
    return handle != nullptr && handle->items.find(std::string(key)) != handle->items.end() ? 1 : 0;
}

inline std::int32_t multimap_len(void* rawHandle) {
    auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void multimap_clear(void* rawHandle) {
    if (auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap)) {
        handle->items.clear();
    }
}

inline const char* multimap_entries(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<multimap_handle>(rawHandle, handle_kind::MultiMap);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& [key, value] : handle->items) {
            values.push_back(key + "=" + value);
        }
    }
    return store_string(join_strings(values, delimiter));
}

struct weak_map_handle final : opaque_handle {
    weak_map_handle() : opaque_handle(handle_kind::WeakMap) {
    }

    std::unordered_map<std::string, std::string> items;
};

inline void* weak_map_new() {
    return new weak_map_handle();
}

inline void weak_map_insert(void* rawHandle, std::string key, std::string value) {
    if (auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap)) {
        handle->items[std::move(key)] = std::move(value);
    }
}

inline const char* weak_map_get(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    return store_string(found != handle->items.end() ? found->second : std::string());
}

inline const char* weak_map_remove(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap);
    if (handle == nullptr) {
        return store_string("");
    }
    const auto found = handle->items.find(std::string(key));
    if (found == handle->items.end()) {
        return store_string("");
    }
    std::string value = std::move(found->second);
    handle->items.erase(found);
    return store_string(std::move(value));
}

inline std::int32_t weak_map_contains_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap);
    return handle != nullptr && handle->items.find(std::string(key)) != handle->items.end() ? 1 : 0;
}

inline std::int32_t weak_map_len(void* rawHandle) {
    auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void weak_map_clear(void* rawHandle) {
    if (auto* handle = checked_handle<weak_map_handle>(rawHandle, handle_kind::WeakMap)) {
        handle->items.clear();
    }
}

struct lru_cache_handle final : opaque_handle {
    explicit lru_cache_handle(std::size_t cacheCapacity)
        : opaque_handle(handle_kind::LruCache), capacity(cacheCapacity == 0 ? 1 : cacheCapacity) {
    }

    std::size_t capacity;
    std::list<std::string> order;
    std::unordered_map<std::string, std::pair<std::string, std::list<std::string>::iterator>> items;
};

inline void lru_cache_touch(lru_cache_handle* handle, std::unordered_map<std::string, std::pair<std::string, std::list<std::string>::iterator>>::iterator found) {
    handle->order.erase(found->second.second);
    handle->order.push_front(found->first);
    found->second.second = handle->order.begin();
}

inline void lru_cache_trim(lru_cache_handle* handle) {
    while (handle->items.size() > handle->capacity && !handle->order.empty()) {
        const std::string victim = handle->order.back();
        handle->order.pop_back();
        handle->items.erase(victim);
    }
}

inline void* lru_cache_new(std::int32_t capacity) {
    return new lru_cache_handle(capacity <= 0 ? 1u : static_cast<std::size_t>(capacity));
}

inline void lru_cache_put(void* rawHandle, std::string key, std::string value) {
    auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache);
    if (handle == nullptr) {
        return;
    }
    auto found = handle->items.find(key);
    if (found != handle->items.end()) {
        found->second.first = std::move(value);
        lru_cache_touch(handle, found);
        return;
    }
    handle->order.push_front(key);
    handle->items.emplace(key, std::make_pair(std::move(value), handle->order.begin()));
    lru_cache_trim(handle);
}

inline const char* lru_cache_get(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache);
    if (handle == nullptr) {
        return store_string("");
    }
    auto found = handle->items.find(std::string(key));
    if (found == handle->items.end()) {
        return store_string("");
    }
    lru_cache_touch(handle, found);
    return store_string(found->second.first);
}

inline std::int32_t lru_cache_contains_key(void* rawHandle, std::string_view key) {
    auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache);
    return handle != nullptr && handle->items.find(std::string(key)) != handle->items.end() ? 1 : 0;
}

inline std::int32_t lru_cache_len(void* rawHandle) {
    auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void lru_cache_clear(void* rawHandle) {
    if (auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache)) {
        handle->order.clear();
        handle->items.clear();
    }
}

inline const char* lru_cache_keys(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<lru_cache_handle>(rawHandle, handle_kind::LruCache);
    return store_string(handle != nullptr ? join_string_range(handle->order.begin(), handle->order.end(), delimiter) : std::string());
}

struct enum_set_handle final : opaque_handle {
    enum_set_handle() : opaque_handle(handle_kind::EnumSet) {
    }

    std::unordered_set<std::string> items;
};

inline void* enum_set_new() {
    return new enum_set_handle();
}

inline std::int32_t enum_set_insert(void* rawHandle, std::string value) {
    auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet);
    return handle != nullptr && handle->items.insert(std::move(value)).second ? 1 : 0;
}

inline std::int32_t enum_set_remove(void* rawHandle, std::string_view value) {
    auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.erase(std::string(value))) : 0;
}

inline std::int32_t enum_set_contains(void* rawHandle, std::string_view value) {
    auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet);
    return handle != nullptr && handle->items.find(std::string(value)) != handle->items.end() ? 1 : 0;
}

inline std::int32_t enum_set_len(void* rawHandle) {
    auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void enum_set_clear(void* rawHandle) {
    if (auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet)) {
        handle->items.clear();
    }
}

inline const char* enum_set_values(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<enum_set_handle>(rawHandle, handle_kind::EnumSet);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& value : handle->items) {
            values.push_back(value);
        }
        std::sort(values.begin(), values.end());
    }
    return store_string(join_strings(values, delimiter));
}

struct grid2d_handle final : opaque_handle {
    grid2d_handle(std::size_t gridRows, std::size_t gridCols, std::string fillValue)
        : opaque_handle(handle_kind::Grid2d), rows(gridRows), cols(gridCols), cells(gridRows * gridCols, std::move(fillValue)) {
    }

    std::size_t rows;
    std::size_t cols;
    std::vector<std::string> cells;
};

inline std::size_t grid2d_index(const grid2d_handle* handle, std::int32_t row, std::int32_t column) {
    if (handle == nullptr || row < 0 || column < 0) {
        return std::numeric_limits<std::size_t>::max();
    }
    const std::size_t rowIndex = static_cast<std::size_t>(row);
    const std::size_t columnIndex = static_cast<std::size_t>(column);
    if (rowIndex >= handle->rows || columnIndex >= handle->cols) {
        return std::numeric_limits<std::size_t>::max();
    }
    return rowIndex * handle->cols + columnIndex;
}

inline void* grid2d_new(std::int32_t rows, std::int32_t cols, std::string fillValue) {
    const std::size_t rowCount = rows <= 0 ? 0u : static_cast<std::size_t>(rows);
    const std::size_t colCount = cols <= 0 ? 0u : static_cast<std::size_t>(cols);
    return new grid2d_handle(rowCount, colCount, std::move(fillValue));
}

inline std::int32_t grid2d_rows(void* rawHandle) {
    auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d);
    return handle != nullptr ? static_cast<std::int32_t>(handle->rows) : 0;
}

inline std::int32_t grid2d_cols(void* rawHandle) {
    auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d);
    return handle != nullptr ? static_cast<std::int32_t>(handle->cols) : 0;
}

inline const char* grid2d_get(void* rawHandle, std::int32_t row, std::int32_t column) {
    auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d);
    const std::size_t index = grid2d_index(handle, row, column);
    return store_string(index == std::numeric_limits<std::size_t>::max() ? std::string() : handle->cells[index]);
}

inline void grid2d_set(void* rawHandle, std::int32_t row, std::int32_t column, std::string value) {
    auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d);
    const std::size_t index = grid2d_index(handle, row, column);
    if (index == std::numeric_limits<std::size_t>::max()) {
        return;
    }
    handle->cells[index] = std::move(value);
}

inline void grid2d_fill(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d)) {
        std::fill(handle->cells.begin(), handle->cells.end(), value);
    }
}

inline const char* grid2d_row_text(void* rawHandle, std::int32_t row, std::string_view delimiter) {
    auto* handle = checked_handle<grid2d_handle>(rawHandle, handle_kind::Grid2d);
    if (handle == nullptr || row < 0 || static_cast<std::size_t>(row) >= handle->rows) {
        return store_string("");
    }
    std::vector<std::string> values;
    values.reserve(handle->cols);
    for (std::size_t column = 0; column < handle->cols; ++column) {
        values.push_back(handle->cells[static_cast<std::size_t>(row) * handle->cols + column]);
    }
    return store_string(join_strings(values, delimiter));
}

struct unordered_set_handle final : opaque_handle {
    unordered_set_handle() : opaque_handle(handle_kind::UnorderedSet) {
    }

    std::unordered_set<std::string> items;
};

inline void* set_new() {
    return new unordered_set_handle();
}

inline std::int32_t set_insert(void* rawHandle, std::string value) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    return handle != nullptr && handle->items.insert(std::move(value)).second ? 1 : 0;
}

inline std::int32_t set_remove(void* rawHandle, std::string_view value) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.erase(std::string(value))) : 0;
}

inline std::int32_t set_contains(void* rawHandle, std::string_view value) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    return handle != nullptr && handle->items.find(std::string(value)) != handle->items.end() ? 1 : 0;
}

inline std::int32_t set_len(void* rawHandle) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void set_clear(void* rawHandle) {
    if (auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet)) {
        handle->items.clear();
    }
}

inline const char* set_values(void* rawHandle, std::string_view delimiter) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& item : handle->items) {
            values.push_back(item);
        }
        std::sort(values.begin(), values.end());
    }
    return store_string(join_strings(values, delimiter));
}

inline void* set_items_handle(void* rawHandle) {
    auto* handle = checked_handle<unordered_set_handle>(rawHandle, handle_kind::UnorderedSet);
    std::vector<std::string> values;
    if (handle != nullptr) {
        values.reserve(handle->items.size());
        for (const auto& item : handle->items) {
            values.push_back(item);
        }
        std::sort(values.begin(), values.end());
    }
    return vec_from_items(std::move(values));
}

inline void* set_union(void* leftHandle, void* rightHandle) {
    auto* left = checked_handle<unordered_set_handle>(leftHandle, handle_kind::UnorderedSet);
    auto* right = checked_handle<unordered_set_handle>(rightHandle, handle_kind::UnorderedSet);
    auto* result = new unordered_set_handle();
    if (left != nullptr) {
        result->items.insert(left->items.begin(), left->items.end());
    }
    if (right != nullptr) {
        result->items.insert(right->items.begin(), right->items.end());
    }
    return result;
}

inline void* set_intersection(void* leftHandle, void* rightHandle) {
    auto* left = checked_handle<unordered_set_handle>(leftHandle, handle_kind::UnorderedSet);
    auto* right = checked_handle<unordered_set_handle>(rightHandle, handle_kind::UnorderedSet);
    auto* result = new unordered_set_handle();
    if (left != nullptr && right != nullptr) {
        for (const auto& item : left->items) {
            if (right->items.find(item) != right->items.end()) {
                result->items.insert(item);
            }
        }
    }
    return result;
}

inline void* set_difference(void* leftHandle, void* rightHandle) {
    auto* left = checked_handle<unordered_set_handle>(leftHandle, handle_kind::UnorderedSet);
    auto* right = checked_handle<unordered_set_handle>(rightHandle, handle_kind::UnorderedSet);
    auto* result = new unordered_set_handle();
    if (left != nullptr) {
        for (const auto& item : left->items) {
            if (right == nullptr || right->items.find(item) == right->items.end()) {
                result->items.insert(item);
            }
        }
    }
    return result;
}

inline void* set_symmetric_difference(void* leftHandle, void* rightHandle) {
    auto* result = static_cast<unordered_set_handle*>(set_difference(leftHandle, rightHandle));
    auto* left = checked_handle<unordered_set_handle>(leftHandle, handle_kind::UnorderedSet);
    auto* right = checked_handle<unordered_set_handle>(rightHandle, handle_kind::UnorderedSet);
    if (right != nullptr) {
        for (const auto& item : right->items) {
            if (left == nullptr || left->items.find(item) == left->items.end()) {
                result->items.insert(item);
            }
        }
    }
    return result;
}

inline std::int32_t set_is_subset(void* leftHandle, void* rightHandle) {
    auto* left = checked_handle<unordered_set_handle>(leftHandle, handle_kind::UnorderedSet);
    auto* right = checked_handle<unordered_set_handle>(rightHandle, handle_kind::UnorderedSet);
    if (left == nullptr) {
        return 1;
    }
    if (right == nullptr) {
        return left->items.empty() ? 1 : 0;
    }
    for (const auto& item : left->items) {
        if (right->items.find(item) == right->items.end()) {
            return 0;
        }
    }
    return 1;
}

inline std::int32_t set_is_superset(void* leftHandle, void* rightHandle) {
    return set_is_subset(rightHandle, leftHandle);
}

struct deque_handle final : opaque_handle {
    deque_handle() : opaque_handle(handle_kind::Deque) {
    }

    std::deque<std::string> items;
};

inline void* queue_new() {
    return new deque_handle();
}

inline void queue_enqueue(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<deque_handle>(rawHandle, handle_kind::Deque)) {
        handle->items.push_back(std::move(value));
    }
}

inline const char* queue_dequeue(void* rawHandle) {
    auto* handle = checked_handle<deque_handle>(rawHandle, handle_kind::Deque);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.front());
    handle->items.pop_front();
    return store_string(std::move(value));
}

inline std::int32_t queue_len(void* rawHandle) {
    auto* handle = checked_handle<deque_handle>(rawHandle, handle_kind::Deque);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

inline void* deque_new() {
    return new deque_handle();
}

inline void deque_push_front(void* rawHandle, std::string value) {
    if (auto* handle = checked_handle<deque_handle>(rawHandle, handle_kind::Deque)) {
        handle->items.push_front(std::move(value));
    }
}

inline void deque_push_back(void* rawHandle, std::string value) {
    queue_enqueue(rawHandle, std::move(value));
}

inline const char* deque_pop_front(void* rawHandle) {
    return queue_dequeue(rawHandle);
}

inline const char* deque_pop_back(void* rawHandle) {
    auto* handle = checked_handle<deque_handle>(rawHandle, handle_kind::Deque);
    if (handle == nullptr || handle->items.empty()) {
        return store_string("");
    }
    std::string value = std::move(handle->items.back());
    handle->items.pop_back();
    return store_string(std::move(value));
}

inline std::int32_t deque_len(void* rawHandle) {
    return queue_len(rawHandle);
}

struct heap_handle final : opaque_handle {
    explicit heap_handle(bool useMinHeap)
        : opaque_handle(handle_kind::Heap), min_heap(useMinHeap) {
    }

    bool min_heap;
    std::vector<std::int32_t> items;
};

inline void reorder_heap(heap_handle* handle) {
    if (handle == nullptr) {
        return;
    }
    if (handle->min_heap) {
        std::sort(handle->items.begin(), handle->items.end());
    } else {
        std::sort(handle->items.begin(), handle->items.end(), std::greater<>());
    }
}

inline void* heap_new_max() {
    return new heap_handle(false);
}

inline void* heap_new_min() {
    return new heap_handle(true);
}

inline void heap_push(void* rawHandle, std::int32_t value) {
    auto* handle = checked_handle<heap_handle>(rawHandle, handle_kind::Heap);
    if (handle == nullptr) {
        return;
    }
    handle->items.push_back(value);
    reorder_heap(handle);
}

inline std::int32_t heap_pop(void* rawHandle) {
    auto* handle = checked_handle<heap_handle>(rawHandle, handle_kind::Heap);
    if (handle == nullptr || handle->items.empty()) {
        return 0;
    }
    const std::int32_t value = handle->items.front();
    handle->items.erase(handle->items.begin());
    return value;
}

inline std::int32_t heap_peek(void* rawHandle) {
    auto* handle = checked_handle<heap_handle>(rawHandle, handle_kind::Heap);
    return handle != nullptr && !handle->items.empty() ? handle->items.front() : 0;
}

inline std::int32_t heap_len(void* rawHandle) {
    auto* handle = checked_handle<heap_handle>(rawHandle, handle_kind::Heap);
    return handle != nullptr ? static_cast<std::int32_t>(handle->items.size()) : 0;
}

struct regex_handle final : opaque_handle {
    regex_handle() : opaque_handle(handle_kind::Regex) {
    }

    std::regex compiled;
    std::string error;
    bool valid = false;
};

inline void* regex_compile(std::string pattern) {
    auto* handle = new regex_handle();
    try {
        handle->compiled = std::regex(pattern);
        handle->valid = true;
    } catch (const std::regex_error& ex) {
        handle->error = ex.what();
        handle->valid = false;
    }
    return handle;
}

inline std::int32_t regex_is_match(void* rawHandle, std::string_view text) {
    auto* handle = checked_handle<regex_handle>(rawHandle, handle_kind::Regex);
    return handle != nullptr && handle->valid && std::regex_search(text.begin(), text.end(), handle->compiled) ? 1 : 0;
}

inline const char* regex_find(void* rawHandle, std::string_view text) {
    auto* handle = checked_handle<regex_handle>(rawHandle, handle_kind::Regex);
    if (handle == nullptr || !handle->valid) {
        return store_string("");
    }
    std::match_results<std::string_view::const_iterator> match;
    if (std::regex_search(text.begin(), text.end(), match, handle->compiled) && !match.empty()) {
        return store_string(std::string(match[0].first, match[0].second));
    }
    return store_string("");
}

inline const char* regex_replace(void* rawHandle, std::string_view text, std::string_view replacement) {
    auto* handle = checked_handle<regex_handle>(rawHandle, handle_kind::Regex);
    if (handle == nullptr || !handle->valid) {
        return store_string(std::string(text));
    }
    return store_string(std::regex_replace(std::string(text), handle->compiled, std::string(replacement)));
}

inline const char* regex_error(void* rawHandle) {
    auto* handle = checked_handle<regex_handle>(rawHandle, handle_kind::Regex);
    return store_string(handle != nullptr ? handle->error : std::string());
}

struct random_handle final : opaque_handle {
    random_handle()
        : opaque_handle(handle_kind::Random), engine(std::random_device{}()) {
    }

    std::mt19937_64 engine;
};

inline void* rand_new() {
    return new random_handle();
}

inline void rand_seed(void* rawHandle, std::int32_t seed) {
    if (auto* handle = checked_handle<random_handle>(rawHandle, handle_kind::Random)) {
        handle->engine.seed(static_cast<std::uint64_t>(static_cast<std::uint32_t>(seed)));
    }
}

inline std::int32_t rand_i32(void* rawHandle) {
    auto* handle = checked_handle<random_handle>(rawHandle, handle_kind::Random);
    return handle != nullptr ? static_cast<std::int32_t>(handle->engine()) : 0;
}

inline std::int32_t rand_range_i32(void* rawHandle, std::int32_t low, std::int32_t high) {
    auto* handle = checked_handle<random_handle>(rawHandle, handle_kind::Random);
    if (handle == nullptr) {
        return 0;
    }
    if (low > high) {
        std::swap(low, high);
    }
    std::uniform_int_distribution<std::int32_t> distribution(low, high);
    return distribution(handle->engine);
}

inline double rand_f64(void* rawHandle) {
    auto* handle = checked_handle<random_handle>(rawHandle, handle_kind::Random);
    if (handle == nullptr) {
        return 0.0;
    }
    std::uniform_real_distribution<double> distribution(0.0, 1.0);
    return distribution(handle->engine);
}

inline std::int32_t rand_bool(void* rawHandle) {
    auto* handle = checked_handle<random_handle>(rawHandle, handle_kind::Random);
    if (handle == nullptr) {
        return 0;
    }
    std::bernoulli_distribution distribution(0.5);
    return distribution(handle->engine) ? 1 : 0;
}

struct mutex_handle final : opaque_handle {
    mutex_handle() : opaque_handle(handle_kind::Mutex) {
    }

    std::mutex mutex;
    bool locked = false;
};

inline void* mutex_new() {
    return new mutex_handle();
}

inline std::int32_t mutex_lock(void* rawHandle) {
    auto* handle = checked_handle<mutex_handle>(rawHandle, handle_kind::Mutex);
    if (handle == nullptr) {
        return 0;
    }
    handle->mutex.lock();
    handle->locked = true;
    return 1;
}

inline std::int32_t mutex_try_lock(void* rawHandle) {
    auto* handle = checked_handle<mutex_handle>(rawHandle, handle_kind::Mutex);
    if (handle == nullptr) {
        return 0;
    }
    handle->locked = handle->mutex.try_lock();
    return handle->locked ? 1 : 0;
}

inline std::int32_t mutex_unlock(void* rawHandle) {
    auto* handle = checked_handle<mutex_handle>(rawHandle, handle_kind::Mutex);
    if (handle == nullptr || !handle->locked) {
        return 0;
    }
    handle->locked = false;
    handle->mutex.unlock();
    return 1;
}

struct condvar_handle final : opaque_handle {
    condvar_handle() : opaque_handle(handle_kind::Condvar) {
    }

    std::mutex mutex;
    std::condition_variable condition;
    std::uint64_t signal_count = 0;
};

inline void* condvar_new() {
    return new condvar_handle();
}

inline std::int32_t condvar_wait_ms(void* rawHandle, std::int32_t timeoutMs) {
    auto* handle = checked_handle<condvar_handle>(rawHandle, handle_kind::Condvar);
    if (handle == nullptr) {
        return 0;
    }
    std::unique_lock<std::mutex> lock(handle->mutex);
    const std::uint64_t observed = handle->signal_count;
    if (timeoutMs < 0) {
        handle->condition.wait(lock, [&]() { return handle->signal_count != observed; });
        return 1;
    }
    return handle->condition.wait_for(lock, std::chrono::milliseconds(timeoutMs), [&]() { return handle->signal_count != observed; }) ? 1 : 0;
}

inline void condvar_notify_one(void* rawHandle) {
    if (auto* handle = checked_handle<condvar_handle>(rawHandle, handle_kind::Condvar)) {
        {
            std::lock_guard<std::mutex> lock(handle->mutex);
            ++handle->signal_count;
        }
        handle->condition.notify_one();
    }
}

inline void condvar_notify_all(void* rawHandle) {
    if (auto* handle = checked_handle<condvar_handle>(rawHandle, handle_kind::Condvar)) {
        {
            std::lock_guard<std::mutex> lock(handle->mutex);
            ++handle->signal_count;
        }
        handle->condition.notify_all();
    }
}

enum class channel_value_kind {
    I32,
    Str,
    Bool,
    F64,
};

struct channel_value {
    channel_value_kind kind = channel_value_kind::Str;
    std::int32_t i32_value = 0;
    double f64_value = 0.0;
    std::string str_value;
};

struct channel_handle final : opaque_handle {
    explicit channel_handle(std::size_t cap)
        : opaque_handle(handle_kind::Channel), capacity(cap) {
    }

    std::mutex mutex;
    std::condition_variable readable;
    std::condition_variable writable;
    std::deque<channel_value> queue;
    std::size_t capacity = 0;
    bool closed = false;
};

inline void* channel_bounded(std::int32_t capacity) {
    return new channel_handle(capacity > 0 ? static_cast<std::size_t>(capacity) : 1u);
}

inline void* channel_unbounded() {
    return new channel_handle(0);
}

inline std::int32_t channel_push(void* rawHandle, channel_value value, bool blocking) {
    auto* handle = checked_handle<channel_handle>(rawHandle, handle_kind::Channel);
    if (handle == nullptr) {
        return 0;
    }
    std::unique_lock<std::mutex> lock(handle->mutex);
    auto has_space = [&]() { return handle->capacity == 0 || handle->queue.size() < handle->capacity || handle->closed; };
    if (blocking) {
        handle->writable.wait(lock, has_space);
    } else if (!has_space()) {
        return 0;
    }
    if (handle->closed) {
        return 0;
    }
    handle->queue.push_back(std::move(value));
    lock.unlock();
    handle->readable.notify_one();
    return 1;
}

inline std::optional<channel_value> channel_pop(void* rawHandle, bool blocking) {
    auto* handle = checked_handle<channel_handle>(rawHandle, handle_kind::Channel);
    if (handle == nullptr) {
        return std::nullopt;
    }
    std::unique_lock<std::mutex> lock(handle->mutex);
    auto has_value = [&]() { return !handle->queue.empty() || handle->closed; };
    if (blocking) {
        handle->readable.wait(lock, has_value);
    } else if (!has_value()) {
        return std::nullopt;
    }
    if (handle->queue.empty()) {
        return std::nullopt;
    }
    channel_value value = std::move(handle->queue.front());
    handle->queue.pop_front();
    lock.unlock();
    handle->writable.notify_one();
    return value;
}

inline std::int32_t channel_send_i32(void* rawHandle, std::int32_t value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::I32, value, 0.0, {}}, true);
}

inline std::int32_t channel_send_str(void* rawHandle, std::string value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::Str, 0, 0.0, std::move(value)}, true);
}

inline std::int32_t channel_send_bool(void* rawHandle, std::int32_t value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::Bool, value != 0 ? 1 : 0, 0.0, {}}, true);
}

inline std::int32_t channel_send_f64(void* rawHandle, double value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::F64, 0, value, {}}, true);
}

inline std::int32_t channel_try_send_i32(void* rawHandle, std::int32_t value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::I32, value, 0.0, {}}, false);
}

inline std::int32_t channel_try_send_str(void* rawHandle, std::string value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::Str, 0, 0.0, std::move(value)}, false);
}

inline std::int32_t channel_try_send_bool(void* rawHandle, std::int32_t value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::Bool, value != 0 ? 1 : 0, 0.0, {}}, false);
}

inline std::int32_t channel_try_send_f64(void* rawHandle, double value) {
    return channel_push(rawHandle, channel_value{channel_value_kind::F64, 0, value, {}}, false);
}

inline std::int32_t channel_recv_i32(void* rawHandle) {
    const auto value = channel_pop(rawHandle, true);
    return value.has_value() && value->kind == channel_value_kind::I32 ? value->i32_value : 0;
}

inline const char* channel_recv_str(void* rawHandle) {
    const auto value = channel_pop(rawHandle, true);
    return store_string(value.has_value() && value->kind == channel_value_kind::Str ? value->str_value : std::string());
}

inline std::int32_t channel_recv_bool(void* rawHandle) {
    const auto value = channel_pop(rawHandle, true);
    return value.has_value() && value->kind == channel_value_kind::Bool ? value->i32_value : 0;
}

inline double channel_recv_f64(void* rawHandle) {
    const auto value = channel_pop(rawHandle, true);
    return value.has_value() && value->kind == channel_value_kind::F64 ? value->f64_value : 0.0;
}

inline std::int32_t channel_try_recv_i32(void* rawHandle, std::int32_t fallback) {
    const auto value = channel_pop(rawHandle, false);
    return value.has_value() && value->kind == channel_value_kind::I32 ? value->i32_value : fallback;
}

inline const char* channel_try_recv_str(void* rawHandle) {
    const auto value = channel_pop(rawHandle, false);
    return store_string(value.has_value() && value->kind == channel_value_kind::Str ? value->str_value : std::string());
}

inline std::int32_t channel_try_recv_bool(void* rawHandle, std::int32_t fallback) {
    const auto value = channel_pop(rawHandle, false);
    return value.has_value() && value->kind == channel_value_kind::Bool ? value->i32_value : fallback;
}

inline double channel_try_recv_f64(void* rawHandle, double fallback) {
    const auto value = channel_pop(rawHandle, false);
    return value.has_value() && value->kind == channel_value_kind::F64 ? value->f64_value : fallback;
}

inline std::int32_t channel_len(void* rawHandle) {
    auto* handle = checked_handle<channel_handle>(rawHandle, handle_kind::Channel);
    if (handle == nullptr) {
        return 0;
    }
    std::lock_guard<std::mutex> lock(handle->mutex);
    return static_cast<std::int32_t>(handle->queue.size());
}

inline std::int32_t channel_close(void* rawHandle) {
    auto* handle = checked_handle<channel_handle>(rawHandle, handle_kind::Channel);
    if (handle == nullptr) {
        return 0;
    }
    {
        std::lock_guard<std::mutex> lock(handle->mutex);
        handle->closed = true;
    }
    handle->readable.notify_all();
    handle->writable.notify_all();
    return 1;
}

inline std::int32_t channel_is_closed(void* rawHandle) {
    auto* handle = checked_handle<channel_handle>(rawHandle, handle_kind::Channel);
    if (handle == nullptr) {
        return 1;
    }
    std::lock_guard<std::mutex> lock(handle->mutex);
    return handle->closed ? 1 : 0;
}

struct url_handle final : opaque_handle {
    url_handle() : opaque_handle(handle_kind::Url) {
    }

    std::string scheme;
    std::string username;
    std::string password;
    std::string host;
    std::string port;
    std::string path;
    std::string query;
    std::string fragment;
};

inline void* url_parse(std::string text) {
    auto* handle = new url_handle();
    std::string_view value(text);

    const std::size_t schemePos = value.find("://");
    if (schemePos != std::string_view::npos) {
        handle->scheme = std::string(value.substr(0, schemePos));
        value.remove_prefix(schemePos + 3);
    }

    const std::size_t fragmentPos = value.find('#');
    if (fragmentPos != std::string_view::npos) {
        handle->fragment = std::string(value.substr(fragmentPos + 1));
        value = value.substr(0, fragmentPos);
    }

    const std::size_t queryPos = value.find('?');
    if (queryPos != std::string_view::npos) {
        handle->query = std::string(value.substr(queryPos + 1));
        value = value.substr(0, queryPos);
    }

    const std::size_t pathPos = value.find('/');
    std::string_view authority = value;
    if (pathPos != std::string_view::npos) {
        authority = value.substr(0, pathPos);
        handle->path = std::string(value.substr(pathPos));
    }

    const std::size_t atPos = authority.find('@');
    std::string_view hostPort = authority;
    if (atPos != std::string_view::npos) {
        const std::string_view credentials = authority.substr(0, atPos);
        hostPort = authority.substr(atPos + 1);
        const std::size_t colonPos = credentials.find(':');
        if (colonPos != std::string_view::npos) {
            handle->username = std::string(credentials.substr(0, colonPos));
            handle->password = std::string(credentials.substr(colonPos + 1));
        } else {
            handle->username = std::string(credentials);
        }
    }

    const std::size_t portPos = hostPort.rfind(':');
    if (portPos != std::string_view::npos && hostPort.find(']') == std::string_view::npos) {
        handle->host = std::string(hostPort.substr(0, portPos));
        handle->port = std::string(hostPort.substr(portPos + 1));
    } else {
        handle->host = std::string(hostPort);
    }

    return handle;
}

inline const char* url_scheme(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->scheme : std::string());
}

inline const char* url_username(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->username : std::string());
}

inline const char* url_password(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->password : std::string());
}

inline const char* url_host(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->host : std::string());
}

inline const char* url_port(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->port : std::string());
}

inline const char* url_path(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->path : std::string());
}

inline const char* url_query(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->query : std::string());
}

inline const char* url_fragment(void* rawHandle) {
    auto* handle = checked_handle<url_handle>(rawHandle, handle_kind::Url);
    return store_string(handle != nullptr ? handle->fragment : std::string());
}

inline const char* url_join(std::string_view base, std::string_view relative) {
    const std::string_view relativeText(relative);
    if (relativeText.find("://") != std::string_view::npos) {
        return store_string(std::string(relativeText));
    }
    auto* baseUrl = checked_handle<url_handle>(url_parse(std::string(base)), handle_kind::Url);
    if (baseUrl == nullptr) {
        return store_string(std::string(relativeText));
    }
    std::string joined = baseUrl->scheme.empty() ? std::string() : baseUrl->scheme + "://";
    if (!baseUrl->username.empty()) {
        joined += baseUrl->username;
        if (!baseUrl->password.empty()) {
            joined += ":" + baseUrl->password;
        }
        joined += "@";
    }
    joined += baseUrl->host;
    if (!baseUrl->port.empty()) {
        joined += ":" + baseUrl->port;
    }
    if (!relativeText.empty() && relativeText.front() == '/') {
        joined += std::string(relativeText);
    } else {
        const std::filesystem::path basePath = baseUrl->path.empty() ? std::filesystem::path("/") : std::filesystem::path(baseUrl->path).parent_path();
        std::filesystem::path combined = basePath;
        combined /= std::filesystem::path(relativeText);
        joined += combined.lexically_normal().string();
    }
    delete baseUrl;
    return store_string(std::move(joined));
}

inline std::int32_t process_completed(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    if (handle == nullptr) {
        return 0;
    }
    process_refresh_status(handle, false);
    return handle->completed ? 1 : 0;
}

inline std::int32_t process_try_wait(void* rawHandle) {
    auto* handle = checked_handle<process_handle>(rawHandle, handle_kind::Process);
    return process_refresh_status(handle, false);
}

inline std::int32_t fs_create_dir(std::string_view path) {
    try {
        return std::filesystem::create_directory(std::filesystem::path(path)) || std::filesystem::exists(std::filesystem::path(path)) ? 1 : 0;
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_create_dir_all(std::string_view path) {
    try {
        return std::filesystem::create_directories(std::filesystem::path(path)) || std::filesystem::exists(std::filesystem::path(path)) ? 1 : 0;
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_remove_file(std::string_view path) {
    try {
        return std::filesystem::remove(std::filesystem::path(path)) ? 1 : 0;
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_remove_dir(std::string_view path) {
    return fs_remove_file(path);
}

inline std::int32_t fs_remove_dir_all(std::string_view path) {
    try {
        return static_cast<std::int32_t>(std::filesystem::remove_all(std::filesystem::path(path)));
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_rename(std::string_view from, std::string_view to) {
    try {
        std::filesystem::rename(std::filesystem::path(from), std::filesystem::path(to));
        return 1;
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_copy(std::string_view from, std::string_view to) {
    try {
        std::filesystem::copy_file(std::filesystem::path(from), std::filesystem::path(to), std::filesystem::copy_options::overwrite_existing);
        return 1;
    } catch (...) {
        return 0;
    }
}

inline const char* fs_read_dir(std::string_view path, std::string_view delimiter) {
    std::vector<std::string> entries;
    try {
        for (const auto& entry : std::filesystem::directory_iterator(std::filesystem::path(path))) {
            entries.push_back(entry.path().filename().string());
        }
        std::sort(entries.begin(), entries.end());
    } catch (...) {
    }
    return store_string(join_strings(entries, delimiter));
}

inline std::int32_t fs_symlink(std::string_view source, std::string_view destination) {
    try {
        std::filesystem::create_symlink(std::filesystem::path(source), std::filesystem::path(destination));
        return 1;
    } catch (...) {
        return 0;
    }
}

inline const char* fs_read_link(std::string_view path) {
    try {
        return store_string(std::filesystem::read_symlink(std::filesystem::path(path)).string());
    } catch (...) {
        return store_string("");
    }
}

inline std::int32_t fs_hard_link(std::string_view source, std::string_view destination) {
    try {
        std::filesystem::create_hard_link(std::filesystem::path(source), std::filesystem::path(destination));
        return 1;
    } catch (...) {
        return 0;
    }
}

inline std::int32_t fs_exists(std::string_view path) {
    try {
        return std::filesystem::exists(std::filesystem::path(path)) ? 1 : 0;
    } catch (...) {
        return 0;
    }
}

inline const char* path_parent(std::string_view path) {
    return store_string(safe_component(std::filesystem::path(path).parent_path()));
}

inline const char* path_file_name(std::string_view path) {
    return store_string(safe_component(std::filesystem::path(path).filename()));
}

inline const char* path_extension(std::string_view path) {
    return store_string(safe_component(std::filesystem::path(path).extension()));
}

inline const char* path_file_stem(std::string_view path) {
    return store_string(safe_component(std::filesystem::path(path).stem()));
}

inline std::int32_t path_is_absolute(std::string_view path) {
    return std::filesystem::path(path).is_absolute() ? 1 : 0;
}

inline std::int32_t path_is_relative(std::string_view path) {
    return std::filesystem::path(path).is_relative() ? 1 : 0;
}

inline const char* path_to_absolute(std::string_view path) {
    try {
        return store_string(std::filesystem::absolute(std::filesystem::path(path)).string());
    } catch (...) {
        return store_string(std::string(path));
    }
}

inline const char* path_canonicalize(std::string_view path) {
    try {
        return store_string(std::filesystem::weakly_canonical(std::filesystem::path(path)).string());
    } catch (...) {
        return store_string(std::string(path));
    }
}

inline const char* path_components(std::string_view path, std::string_view delimiter) {
    std::vector<std::string> parts;
    for (const auto& part : std::filesystem::path(path)) {
        parts.push_back(part.string());
    }
    return store_string(join_strings(parts, delimiter));
}

inline std::int32_t env_set(std::string_view key, std::string_view value) {
#ifdef _WIN32
    return _putenv_s(std::string(key).c_str(), std::string(value).c_str()) == 0 ? 1 : 0;
#else
    return setenv(std::string(key).c_str(), std::string(value).c_str(), 1) == 0 ? 1 : 0;
#endif
}

inline std::int32_t env_remove(std::string_view key) {
#ifdef _WIN32
    return _putenv_s(std::string(key).c_str(), "") == 0 ? 1 : 0;
#else
    return unsetenv(std::string(key).c_str()) == 0 ? 1 : 0;
#endif
}

inline const char* current_dir() {
    try {
        return store_string(std::filesystem::current_path().string());
    } catch (...) {
        return store_string("");
    }
}

inline std::int32_t set_current_dir(std::string_view path) {
    try {
        std::filesystem::current_path(std::filesystem::path(path));
        return 1;
    } catch (...) {
        return 0;
    }
}

inline const char* executable_path() {
#ifdef _WIN32
    std::vector<char> buffer(static_cast<std::size_t>(MAX_PATH), '\0');
    const DWORD written = GetModuleFileNameA(nullptr, buffer.data(), static_cast<DWORD>(buffer.size()));
    return store_string(written > 0 ? std::string(buffer.data(), written) : std::string());
#elif defined(__APPLE__)
    std::uint32_t size = 0;
    _NSGetExecutablePath(nullptr, &size);
    std::vector<char> buffer(size + 1, '\0');
    return _NSGetExecutablePath(buffer.data(), &size) == 0 ? store_string(std::string(buffer.data())) : store_string("");
#else
    std::vector<char> buffer(4096, '\0');
    const ssize_t written = readlink("/proc/self/exe", buffer.data(), buffer.size() - 1);
    return store_string(written > 0 ? std::string(buffer.data(), static_cast<std::size_t>(written)) : std::string());
#endif
}

inline std::int32_t process_id() {
#ifdef _WIN32
    return static_cast<std::int32_t>(GetCurrentProcessId());
#else
    return static_cast<std::int32_t>(getpid());
#endif
}

inline std::int32_t cpu_count() {
    const unsigned int count = std::thread::hardware_concurrency();
    return count == 0 ? 1 : static_cast<std::int32_t>(count);
}

inline const char* host_name() {
#ifdef _WIN32
    char buffer[MAX_COMPUTERNAME_LENGTH + 1] = {0};
    DWORD size = MAX_COMPUTERNAME_LENGTH + 1;
    return GetComputerNameA(buffer, &size) != 0 ? store_string(std::string(buffer, size)) : store_string("");
#else
    std::array<char, 256> buffer{};
    return gethostname(buffer.data(), buffer.size()) == 0 ? store_string(std::string(buffer.data())) : store_string("");
#endif
}

inline std::int32_t thread_get_raw_id() {
    const auto hash = std::hash<std::thread::id>{}(std::this_thread::get_id());
    return static_cast<std::int32_t>(hash & 0x7fffffff);
}

inline void thread_yield() {
    std::this_thread::yield();
}

inline void term_print_raw(std::string_view text) {
    std::cout << text;
    std::cout.flush();
}

inline void term_println_raw(std::string_view text) {
    std::cout << text << '\n';
    std::cout.flush();
}

template <typename... Args>
inline std::int32_t term_printf(std::string_view format, Args&&... args) {
    std::string format_text(format);
    const int written = std::printf(format_text.c_str(), std::forward<Args>(args)...);
    std::fflush(stdout);
    return written;
}

inline const char* term_read_line() {
    std::string line;
    std::getline(std::cin, line);
    return store_string(std::move(line));
}

inline std::int32_t term_is_tty() {
#ifdef _WIN32
    return _isatty(_fileno(stdout)) ? 1 : 0;
#else
    return isatty(fileno(stdout)) ? 1 : 0;
#endif
}

inline std::int32_t term_columns() {
#ifdef _WIN32
    CONSOLE_SCREEN_BUFFER_INFO info{};
    const HANDLE output = GetStdHandle(STD_OUTPUT_HANDLE);
    if (output != INVALID_HANDLE_VALUE && GetConsoleScreenBufferInfo(output, &info) != 0) {
        return static_cast<std::int32_t>(info.srWindow.Right - info.srWindow.Left + 1);
    }
    return 80;
#else
    struct winsize size {};
    return ioctl(fileno(stdout), TIOCGWINSZ, &size) == 0 && size.ws_col > 0 ? static_cast<std::int32_t>(size.ws_col) : 80;
#endif
}

inline std::int32_t term_rows() {
#ifdef _WIN32
    CONSOLE_SCREEN_BUFFER_INFO info{};
    const HANDLE output = GetStdHandle(STD_OUTPUT_HANDLE);
    if (output != INVALID_HANDLE_VALUE && GetConsoleScreenBufferInfo(output, &info) != 0) {
        return static_cast<std::int32_t>(info.srWindow.Bottom - info.srWindow.Top + 1);
    }
    return 25;
#else
    struct winsize size {};
    return ioctl(fileno(stdout), TIOCGWINSZ, &size) == 0 && size.ws_row > 0 ? static_cast<std::int32_t>(size.ws_row) : 25;
#endif
}

inline void term_clear() {
    std::cout << "\x1b[2J\x1b[H";
    std::cout.flush();
}

inline void term_set_cursor(std::int32_t column, std::int32_t row) {
    std::cout << "\x1b[" << row << ';' << column << 'H';
    std::cout.flush();
}

inline void term_show_cursor() {
    std::cout << "\x1b[?25h";
    std::cout.flush();
}

inline void term_hide_cursor() {
    std::cout << "\x1b[?25l";
    std::cout.flush();
}

inline void term_set_color_fg(std::int32_t color) {
    std::cout << "\x1b[" << (30 + (color % 8 + 8) % 8) << 'm';
    std::cout.flush();
}

inline void term_set_color_bg(std::int32_t color) {
    std::cout << "\x1b[" << (40 + (color % 8 + 8) % 8) << 'm';
    std::cout.flush();
}

inline void term_set_style(std::string_view style) {
    if (style == "bold") {
        std::cout << "\x1b[1m";
    } else if (style == "underline") {
        std::cout << "\x1b[4m";
    } else if (style == "italic") {
        std::cout << "\x1b[3m";
    }
    std::cout.flush();
}

inline void term_reset() {
    std::cout << "\x1b[0m";
    std::cout.flush();
}

inline void log_prefixed(std::string_view level, std::string_view message) {
    term_println_raw("[" + std::string(level) + "] " + std::string(message));
}

inline void log_info(std::string_view message) {
    log_prefixed("info", message);
}

inline void log_warn(std::string_view message) {
    log_prefixed("warn", message);
}

inline void log_error(std::string_view message) {
    log_prefixed("error", message);
}

inline void log_debug(std::string_view message) {
    log_prefixed("debug", message);
}

inline void log_trace(std::string_view message) {
    log_prefixed("trace", message);
}

inline const char* datetime_now_utc() {
    return store_string(format_tm_iso(portable_tm(std::time(nullptr), true), true));
}

inline const char* datetime_now_local() {
    return store_string(format_tm_iso(portable_tm(std::time(nullptr), false), false));
}

inline std::int32_t datetime_year_local() {
    return portable_tm(std::time(nullptr), false).tm_year + 1900;
}

inline std::int32_t datetime_month_local() {
    return portable_tm(std::time(nullptr), false).tm_mon + 1;
}

inline std::int32_t datetime_day_local() {
    return portable_tm(std::time(nullptr), false).tm_mday;
}

inline std::int32_t datetime_hour_local() {
    return portable_tm(std::time(nullptr), false).tm_hour;
}

inline std::int32_t datetime_minute_local() {
    return portable_tm(std::time(nullptr), false).tm_min;
}

inline std::int32_t datetime_second_local() {
    return portable_tm(std::time(nullptr), false).tm_sec;
}

inline std::int32_t monotonic_millis() {
    const auto now = std::chrono::steady_clock::now().time_since_epoch();
    return static_cast<std::int32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(now).count() & 0x7fffffff);
}

inline int host_is_windows() {
#ifdef _WIN32
    return 1;
#else
    return 0;
#endif
}

inline const char* path_separator() {
#ifdef _WIN32
    return store_string("\\");
#else
    return store_string("/");
#endif
}

inline const char* exe_suffix() {
#ifdef _WIN32
    return store_string(".exe");
#else
    return store_string("");
#endif
}

inline const char* env_get(std::string_view key) {
    const std::string normalizedKey(key);
    const char* value = normalizedKey.empty() ? nullptr : std::getenv(normalizedKey.c_str());
    return store_string(value != nullptr ? std::string(value) : std::string());
}

inline const char* temp_dir() {
    try {
        return store_string(std::filesystem::temp_directory_path().string());
    } catch (...) {
        return store_string("");
    }
}

inline const char* path_join(std::string_view left, std::string_view right) {
    std::filesystem::path joined(left);
    joined /= std::filesystem::path(right);
    return store_string(joined.lexically_normal().string());
}

inline void sleep_ms(std::int32_t value) {
    if (value > 0) {
        std::this_thread::sleep_for(std::chrono::milliseconds(value));
    }
}

inline void handle_destroy(void* rawHandle) {
    delete static_cast<opaque_handle*>(rawHandle);
}

} // namespace __apo_stdlib

#endif