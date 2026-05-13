#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

struct __apo_gc_tracer {};
template <typename T> inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}
template <typename T> struct __apo_soa_adapter;
template <typename T> struct __apo_allocator_traits { static constexpr bool is_memstruct = false; };

struct apo_Counter {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Counter& value);
    friend struct __apo_soa_adapter<apo_Counter>;
    std::int32_t value;
    std::int32_t bump() {
        return value + 1;
    }

};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Counter& value) {
    __apo_gc_trace_value(tracer, value.value);
}

template <>
struct __apo_soa_adapter<apo_Counter> {
    struct storage {
        std::vector<std::int32_t> value;
    };

    static void push(storage& storage, const apo_Counter& value) {
        storage.value.push_back(value.value);
    }

    static apo_Counter load(const storage& storage, std::size_t index) {
        apo_Counter value{};
        value.value = storage.value[index];
        return value;
    }

    static void store(storage& storage, std::size_t index, const apo_Counter& value) {
        storage.value[index] = value.value;
    }

    static std::size_t size(const storage& storage) {
        return storage.value.size();
    }
};

int main() {
{
        
        int __apo_alias_probe() {
            return 7;
        }
        
    }
    const auto counter = apo_Counter{};
    counter.bump();
    auto total = 4;
    total = total + 1;
    std::any pack;
    pack = apo_Counter{};
    std::any_cast<apo_Counter&>(pack).value;
    apo_Counter direct = apo_Counter{};
    direct.value;
    return __apo_alias_probe() + total;
}

