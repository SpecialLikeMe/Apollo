#include <cassert>
#include <cstdint>
#include <exception>
#include <functional>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

struct __apo_gc_tracer {};
template <typename T> inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}
template <typename T> struct __apo_soa_adapter;
template <typename T> struct __apo_allocator_traits { static constexpr bool is_memstruct = false; };

struct apo_rtx {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_rtx& value);
    friend struct __apo_soa_adapter<apo_rtx>;
    int id;
    std::string a;
};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_rtx& value) {
    __apo_gc_trace_value(tracer, value.id);
    __apo_gc_trace_value(tracer, value.a);
}

template <>
struct __apo_soa_adapter<apo_rtx> {
    struct storage {
        std::vector<int> id;
        std::vector<std::string> a;
    };

    static void push(storage& storage, const apo_rtx& value) {
        storage.id.push_back(value.id);
        storage.a.push_back(value.a);
    }

    static apo_rtx load(const storage& storage, std::size_t index) {
        apo_rtx value{};
        value.id = storage.id[index];
        value.a = storage.a[index];
        return value;
    }

    static void store(storage& storage, std::size_t index, const apo_rtx& value) {
        storage.id[index] = value.id;
        storage.a[index] = value.a;
    }

    static std::size_t size(const storage& storage) {
        return storage.id.size();
    }
};

int main() {
    apo_rtx full = {.id = 1, .a = "Hello, world!"};
    apo_rtx partial = {.id = 2};
    apo_rtx empty;
    std::cout << (full.a) << std::endl;
    return partial.id;
}

