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

/* unsupported top-level: typedefopstructcool{asg("cool ${name}")->{}src("please do ${DO}")->{DO}} */
struct apo_rtx_store {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_rtx_store& value);
    friend struct __apo_soa_adapter<apo_rtx_store>;
    int id;
    std::string a;
};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_rtx_store& value) {
    __apo_gc_trace_value(tracer, value.id);
    __apo_gc_trace_value(tracer, value.a);
}

template <>
struct __apo_soa_adapter<apo_rtx_store> {
    struct storage {
        std::vector<int> id;
        std::vector<std::string> a;
    };

    static void push(storage& storage, const apo_rtx_store& value) {
        storage.id.push_back(value.id);
        storage.a.push_back(value.a);
    }

    static apo_rtx_store load(const storage& storage, std::size_t index) {
        apo_rtx_store value{};
        value.id = storage.id[index];
        value.a = storage.a[index];
        return value;
    }

    static void store(storage& storage, std::size_t index, const apo_rtx_store& value) {
        storage.id[index] = value.id;
        storage.a[index] = value.a;
    }

    static std::size_t size(const storage& storage) {
        return storage.id.size();
    }
};

using apo_rtx = apo_rtx_store;

int main() {
    apo_rtx x = apo_rtx{1, "Hello, world!"};
    std::cout << (x.a) << std::endl;
    return 0;
}

