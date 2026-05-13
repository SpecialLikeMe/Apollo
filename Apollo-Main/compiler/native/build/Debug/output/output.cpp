#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

struct __apo_gc_tracer {};
template <typename T> struct __apo_soa_adapter;
template <typename T> struct __apo_allocator_traits { static constexpr bool is_memstruct = false; };

struct CounterStore {
    friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const CounterStore& value);
    friend struct __apo_soa_adapter<CounterStore>;
    std::int32_t value;
    std::int32_t fetch() {
        return value;
    }

};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const CounterStore& value) {
    __apo_gc_trace_value(tracer, value.value);
}

template <>
struct __apo_soa_adapter<CounterStore> {
    struct storage {
        std::vector<std::int32_t> value;
    };

    static void push(storage& storage, const CounterStore& value) {
        storage.value.push_back(value.value);
    }

    static CounterStore load(const storage& storage, std::size_t index) {
        CounterStore value{};
        value.value = storage.value[index];
        return value;
    }

    static void store(storage& storage, std::size_t index, const CounterStore& value) {
        storage.value[index] = value.value;
    }

    static std::size_t size(const storage& storage) {
        return storage.value.size();
    }
};

using Counter = CounterStore;

void record(std::int32_t value) {
    std::int32_t mirror = value;
    return;
}

int main() {
    std::vector<std::int32_t> values;
    values.push_back(1);
    values.push_back(2);
    std::int32_t total = 0;
    for (std::int32_t index = 0; index<2; index = index+1) {
        total = total+values[index];
    }
    for (const std::int32_t entry : values) {
        total = total+entry;
    }
    {
        auto __apo_switch_value_0 = total;
        if (__apo_switch_value_0 == 6) {
            total = total+1;
        }
        else {
            total = total+2;
        }
    }
    try {
        record(total);
    }
    catch (const std::exception& ex) {
        total = total+4;
    }
    Counter counter = Counter{};
    counter.fetch();
    return total;
}

