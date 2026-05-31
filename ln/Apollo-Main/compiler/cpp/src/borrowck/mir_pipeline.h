// =============================================================================
// MIR borrow-checker integration into the runtime phase pipeline.
// =============================================================================
//
// This translation unit is the *wiring point* between the production
// compiler driver (`apollo_runtime.cpp` -> `defaultPhases()`) and the
// MIR-based borrow checker library `apollo_borrowck`. It exposes a
// single helper that returns a vector of `ApolloRuntimePhase` shared
// pointers — matching the legacy `borrowCheckerPhases()` shape — so
// the driver can plug it in without knowing anything about the MIR
// types.
//
// **Current state**: AST→HIR→MIR lowering does not yet produce real
// bodies (see `src/hir/lowering.cpp` — every visit method emits a
// TODO diagnostic and returns nullptr). The phase therefore has
// nothing to check on real input today. It is wired anyway so that:
//
//   1. The `apollo_borrowck` static library is exercised by the link
//      step of every main executable (catching ABI breakage early).
//   2. The phase slot exists in `defaultPhases()`; when lowering lands,
//      the only change needed is to populate the MIR-body registry on
//      `ApolloCompilerRuntimeCycle` and the phase begins doing real
//      work without any further wiring change.
//
// Activation: set the environment variable `APOLLO_ENABLE_MIR_BORROWCK=1`
// to opt in. The phase logs a single line on stderr in that mode so
// users can confirm wiring without affecting CI default output.

#pragma once

#include <memory>
#include <vector>

class ApolloRuntimePhase;

namespace apollo::borrowck {

std::vector<std::shared_ptr<const ApolloRuntimePhase>> mirBorrowCheckerPhases();

} // namespace apollo::borrowck
