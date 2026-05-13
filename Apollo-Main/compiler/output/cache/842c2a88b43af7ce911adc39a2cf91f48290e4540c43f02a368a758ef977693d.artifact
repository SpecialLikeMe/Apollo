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

#include "runtime_support/apo_ir_runtime.hpp"

#include "runtime_support/apo_go_async_runtime.hpp"

struct __apo_gc_tracer {};
template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}
using namespace std;

void worker() {
    return;
}

int main() {
    const std::int32_t base = 7;
    std::thread joined([=]() mutable { worker(); });
    joined.join();
    std::thread detached([=]() mutable { worker(); });
    detached.detach();
    __apo_go_scheduler::instance().spawn([=]() mutable { worker(); });
    __apo_executeQueuedPayload(false);
    const std::int32_t bridged = 3;
{
        std::cout<<bridged<<std::endl;
    }
{
        void* heap = malloc((2) * sizeof(int));
        std::int32_t* alias = &base;
        std::int32_t slot = std::int32_t{};
        const std::int32_t** placed = (std::int32_t**)new (heap) std::int32_t*;
        __apo_queuePayload("py\nprint(42)\n");
        __apo_executePayload("cpp\nint main() {\r\n                async_write(\"variable\", \"unsafe_value\", \"str\", \"hi\");\r\n                return 0;\r\n            }\n");
        __apo_executeQueuedPayload(true);

            #include <memory>
                free(heap);
    }
    return 0;
}

