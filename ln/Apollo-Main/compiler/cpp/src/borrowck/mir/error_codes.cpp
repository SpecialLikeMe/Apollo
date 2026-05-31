// =============================================================================
// Error code descriptor table.
// =============================================================================

#include "error_codes.h"

#include <cstddef>

namespace apollo::mir::borrowck {

namespace {
constexpr ErrorDescriptor kTable[] = {
#define APOLLO_X(Enum, Num, Tag, Msg) {ErrorCode::Enum, Tag, Msg},
    APOLLO_ERROR_CODES(APOLLO_X)
#undef APOLLO_X
};
constexpr std::size_t kTableSize = sizeof(kTable) / sizeof(kTable[0]);
} // namespace

const ErrorDescriptor* describe(ErrorCode code) {
    for (std::size_t i = 0; i < kTableSize; ++i) {
        if (kTable[i].code == code) return &kTable[i];
    }
    return nullptr;
}

const char* tagOf(ErrorCode code) {
    if (auto* d = describe(code)) return d->tag;
    return "E????";
}

const char* shortMsgOf(ErrorCode code) {
    if (auto* d = describe(code)) return d->short_msg;
    return "borrow checker diagnostic";
}

} // namespace apollo::mir::borrowck
