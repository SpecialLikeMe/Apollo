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

std::string& chooseEither(std::string& first, std::string& second, int pick) {
    if (pick) {
        return first;
    }
    return second;
}

int main() {
    std::string first = "alpha";
    std::string second = "beta";
    int pick = 0;
    std::string& alias = chooseEither(&nconstfirst, &nconstsecond, pick);
    std::cout << (alias) << std::endl;
    return 0;
}

