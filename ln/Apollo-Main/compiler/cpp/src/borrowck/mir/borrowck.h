// =============================================================================
// Apollo borrow checker — public API.
// =============================================================================
//
// This file is the entry point for the MIR-based borrow checker. The
// checker mirrors Rust's non-lexical lifetimes (NLL) design at the
// algorithmic level, adapted to Apollo's surface:
//
//   * Apollo's `@unsafe { ... }` lexical region is a SourceScope with
//     `unsafety == Unsafe`. Inside unsafe scopes, raw pointer dereferences
//     and certain `&mut` operations are permitted; the rest of the
//     analysis still runs.
//   * `@bypass { ... }` is a SourceScope with
//     `borrow_mode == BypassRegion`. Loans inside a bypass scope are
//     recorded so escape from the scope is still seen, but conflicts
//     that fire while in-scope are downgraded to a note.
//   * `#[borrow_checker(off)]` on a function flips the body's outermost
//     scope to `borrow_mode == Off`, in which case the driver short-
//     circuits and returns no diagnostics.
//
// Pipeline (each phase is implemented in borrowck.cpp):
//
//      buildCfg()           → Predecessors          (RPO + preds)
//      buildMovePaths()     → MovePathTable         (Place forest)
//      buildLoanSets()      → BorrowSet             (one entry per &/&mut)
//      solveLoanLive()      → live-loans-at-point   (forward "may")
//      solveDefInit()       → definitely-init bits  (forward "must")
//      runChecks()          → vector<Diagnostic>
//
// Major changes from the previous version:
//   * MovePathIdx-granular tracking (per-field, per-variant). Loans
//     borrow a move path; access overlap is computed by ancestor walk.
//   * Reborrow rewriting: `&*p` redirects to the path `p` was last
//     bound to via a Ref/AddressOf (origin propagation).
//   * Per-statement dataflow precision exposed in the conflict pass
//     (the in-set is recomputed point-by-point, not block-by-block).
//   * 30+ stable error codes (see error_codes.h) and structured
//     diagnostics with secondary spans, machine-applicable suggestions,
//     and a render() helper that emits Rust-style banners.

#ifndef APOLLO_MIR_BORROWCK_BORROWCK_H
#define APOLLO_MIR_BORROWCK_BORROWCK_H

#include "../../mir/mir.h"
#include "../../mir/source_info.h"
#include "error_codes.h"

#include <cstdint>
#include <string>
#include <vector>

namespace apollo::mir::borrowck {

enum class Severity : std::uint8_t { Error, Warning, Note };

// Machine-applicable edit suggestion attached to a diagnostic.
struct Suggestion {
    Span        span{};
    std::string replacement;
    std::string label;
    bool        applicable = true;
};

struct Diagnostic {
    Severity   severity = Severity::Error;
    ErrorCode  code = ErrorCode::UseOfMovedValue;
    std::string message;
    Span       primary_span{};
    std::vector<std::pair<Span, std::string>> notes;
    std::vector<Suggestion> suggestions;
};

struct BorrowckResult {
    std::vector<Diagnostic> diagnostics;
    std::uint32_t loans_examined = 0;
    std::uint32_t places_examined = 0;
    std::uint32_t move_paths = 0;
    bool bypass_active = false;
    bool checker_off = false;
};

BorrowckResult checkBody(const Body& body, const TyCtxt& tcx);

// One-line diagnostic. Stable format: "<tag>:<line>:<col> <message>".
std::string formatDiagnostic(const Diagnostic& d);

// Rust-style multi-line banner. If `sm` is non-null, the snippet,
// gutter line numbers, and caret underline are rendered; otherwise
// only the header line is produced.
std::string renderDiagnostic(const Diagnostic& d, const SourceMap* sm);

} // namespace apollo::mir::borrowck

#endif
