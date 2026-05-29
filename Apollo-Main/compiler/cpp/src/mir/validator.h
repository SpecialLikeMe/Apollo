// Apollo MIR — well-formedness validator.
//
// Runs after MIR construction. The validator returns a list of
// `ValidationError` rather than aborting; the driver chooses how to
// surface them. Checks correspond to the invariants documented in
// /memories/repo/mir-core.md.

#ifndef APOLLO_MIR_VALIDATOR_H
#define APOLLO_MIR_VALIDATOR_H

#include "mir.h"

#include <string>
#include <vector>

namespace apollo::mir {

enum class ValidationPhase : std::uint8_t {
    PostBuild,    // immediately after MirBuilder finishes
    PreBorrowck,  // before borrow checker runs
    PreCodegen,   // after drop elaboration
};

struct ValidationError {
    Span span{};
    std::string message;
};

std::vector<ValidationError> validateBody(const Body& body,
                                          const TyCtxt& tcx,
                                          ValidationPhase phase = ValidationPhase::PostBuild);

} // namespace apollo::mir

#endif
