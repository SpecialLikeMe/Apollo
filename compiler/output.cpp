#include <cstdlib>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <exception>
#include <functional>
#include <iostream>
#include <new>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <deque>
#include <utility>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <vector>
#include <array>
#include <memory>
#include <any>
#ifndef __APO_HASH_SUPPORT
#define __APO_HASH_SUPPORT
template <typename T>
inline void __apo_hash_combine(std::size_t& seed, const T& value) {
    seed ^= value + 0x9e3779b97f4a7c15ULL + (seed << 6) + (seed >> 2);
}
template <typename T>
struct __apo_hash {
    std::size_t operator()(const T& value) const { return std::hash<T>{}(value); }
};
template <typename T>
struct __apo_hash<std::vector<T>> {
    std::size_t operator()(const std::vector<T>& values) const {
        std::size_t seed = 0;
        for (const auto& value : values) {
            __apo_hash_combine(seed, __apo_hash<T>{}(value));
        }
        return seed;
    }
};
template <typename K, typename V, typename H, typename E, typename A>
struct __apo_hash<std::unordered_map<K, V, H, E, A>> {
    std::size_t operator()(const std::unordered_map<K, V, H, E, A>& values) const {
        std::size_t seed = 0;
        for (const auto& entry : values) {
            std::size_t entrySeed = __apo_hash<K>{}(entry.first);
            __apo_hash_combine(entrySeed, __apo_hash<V>{}(entry.second));
            seed ^= entrySeed + 0x9e3779b97f4a7c15ULL;
        }
        return seed;
    }
};
#endif

#ifndef __APO_TEMPLATE_LITERAL_SUPPORT
#define __APO_TEMPLATE_LITERAL_SUPPORT
template <typename T>
static std::string __apo_to_string(const T& value) {
    std::ostringstream stream;
    stream << value;
    return stream.str();
}
static std::string __apo_to_string(const std::string& value) { return value; }
static std::string __apo_to_string(const char* value) { return value != nullptr ? std::string(value) : std::string(); }
static std::string __apo_to_string(bool value) { return value ? "true" : "false"; }
#endif

#include "runtime_support/apo_memstruct_runtime.hpp"

#include "runtime_support/apo_soa_runtime.hpp"
struct __apo_gc_tracer {};
template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}
struct apo_Plain;

using namespace std;

struct apo_Plain {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Plain& value);
    friend struct __apo_soa_adapter<apo_Plain>;
    std::int32_t size;
};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Plain& value) {
    __apo_gc_trace_value(tracer, value.size);
}

template <>
struct __apo_soa_adapter<apo_Plain> {
    struct storage {
        std::vector<std::int32_t> size;
    };

    static void push(storage& storage, const apo_Plain& value) {
        storage.size.push_back(value.size);
    }

    static apo_Plain load(const storage& storage, std::size_t index) {
        apo_Plain value{};
        value.size = storage.size[index];
        return value;
    }

    static void store(storage& storage, std::size_t index, const apo_Plain& value) {
        storage.size[index] = value.size;
    }

    static std::size_t size(const storage& storage) {
        return storage.size.size();
    }
};

int main() {
