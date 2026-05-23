#include <cstdint>
#include <iostream>
#include <string>

struct GcState {
    std::string rolling;
    std::int32_t checksum = 0;
};

int main() {
    std::string rolling = "apollo";
    std::int32_t checksum = 0;
    std::int32_t phase = 0;

    for (std::int32_t index = 0; index < 80; ++index) {
        std::string_view chunk = "beta";
        if (phase == 0) {
            chunk = "alpha";
        } else if (phase == 1) {
            chunk = "gamma";
        }

        rolling += chunk;
        if (rolling.size() > 48) {
            rolling = rolling.substr(rolling.size() - 48);
        }
        checksum += static_cast<std::int32_t>(rolling.size());
        checksum += rolling.find("ta") == std::string::npos ? 0 : 1;

        GcState snapshot{rolling, checksum};
        rolling = snapshot.rolling;
        checksum = snapshot.checksum;

        phase += 1;
        if (phase == 3) {
            phase = 0;
        }
    }

    std::cout << checksum;
    return 0;
}
