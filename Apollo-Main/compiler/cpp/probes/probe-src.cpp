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

int main() {
    const auto greet = [&]() {
        std::cout << ("hello") << std::endl;
    }

    const auto echo = [&](const std::string value) -> std::string {
        return value;
    }

    auto count = [&](const int value) -> int {
        return value + 1;
    }

    greet();
    const auto echoed = echo("world");
    auto total = count(4);
    total = total + 1;
    std::cout << (echoed) << std::endl;
    return total;
}

