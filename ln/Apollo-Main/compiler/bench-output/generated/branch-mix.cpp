#include <cstdint>
#include <iostream>

int main() {
    std::int32_t total = 1;
    std::int32_t phase = 0;
    for (std::int32_t index = 1; index < 20000; ++index) {
        if (phase < 2) {
            total += phase + 3;
        } else {
            total -= phase;
        }
        phase += 1;
        if (phase == 4) {
            phase = 0;
        }
    }
    std::cout << total;
    return 0;
}
