#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <exception>
#include <filesystem>
#include <fstream>
#include <functional>
#include <gc/gc.h>
#include <iostream>
#include <memory>
#include <new>
#include <sstream>
#include <stdexcept>
#include <string>
#include <thread>
#include <unordered_map>
#include <vector>

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

#include "runtime_support/apo_autofmt_owner_runtime.hpp"

static __apo_autofmt_owner __apo_total_gc_owner;

int main() {
    GC_INIT();
    int value = 1;
    const int& alias = value;
    value = 2;
    return alias;
}


