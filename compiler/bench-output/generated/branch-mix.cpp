#include <cstdint>
#include <iostream>

int main() {
    std::int64_t total = 1;
    for (std::int64_t index = 1; index < 200000; ++index) {
        if ((index % 2) == 0) {
            total += index / 2;
        } else {
            total -= index / 3;
        }
    }
    std::cout << total;
    return 0;
}
