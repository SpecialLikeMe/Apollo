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

class apo_Box {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Box& value);
    friend struct __apo_soa_adapter<apo_Box>;
};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Box& value) {
}

template <>
struct __apo_soa_adapter<apo_Box> {
    struct storage {
        std::size_t size = 0;
    };

    static void push(storage& storage, const apo_Box& value) {
        ++storage.size;
    }

    static apo_Box load(const storage& storage, std::size_t index) {
        apo_Box value{};
        return value;
    }

    static void store(storage& storage, std::size_t index, const apo_Box& value) {
        (void)storage;
        (void)index;
        (void)value;
    }

    static std::size_t size(const storage& storage) {
        return storage.size;
    }
};

apo_Box keep(apo_Box value) {
    /* unsupported statement: @autofmtdeclare{@inductvalue;returnvalue;} */
}

std::int32_t main() {
    return 0;
}

