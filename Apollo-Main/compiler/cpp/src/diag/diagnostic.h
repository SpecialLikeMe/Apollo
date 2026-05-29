// =============================================================================
// Unified Apollo diagnostic.
// =============================================================================
//
// Both the HIR lowerer and the MIR borrow checker historically emitted
// their own diagnostic types (`hir::LoweringDiagnostic`,
// `mir::borrowck::Diagnostic`). The legacy AST checker emits plain
// strings through `ApolloCompilerRuntimeCycle::recordRuleDiagnostic`.
// This header centralises a single struct + format so consumers can
// route every pipeline stage through one rendering path.
//
// The original per-stage structs continue to exist; this is an
// adapter layer that converts to one canonical shape at the boundary
// (typically `mir_pipeline.cpp`). Wave-2 goal: stop divergence in
// terminal output without forcing a top-down refactor of either
// stage's internals.

#ifndef APOLLO_DIAG_DIAGNOSTIC_H
#define APOLLO_DIAG_DIAGNOSTIC_H

#include "../mir/source_info.h"

#include <cstdint>
#include <string>
#include <utility>
#include <vector>

namespace apollo::hir { struct LoweringDiagnostic; }
namespace apollo::mir::borrowck { struct Diagnostic; }

namespace apollo::diag {

enum class Severity : std::uint8_t { Error, Warning, Note };

struct Note {
    mir::Span   span{};
    std::string message;
};

struct Suggestion {
    mir::Span   span{};
    std::string replacement;
    std::string label;
    bool        applicable = true;
};

// One unified diagnostic. `category` tags the producing stage
// ("parse", "name-res", "type", "borrowck", "memory-safety", ...).
// `code` is a stable short identifier (e.g. "BCK001", "LOW042"); empty
// when the producer has none.
struct Diagnostic {
    Severity    severity = Severity::Error;
    std::string category;
    std::string code;
    std::string message;
    mir::Span   primary_span{};
    std::vector<Note>       notes;
    std::vector<Suggestion> suggestions;
};

// Stable one-line format:
//   "<severity>[<category>:<code>] <line>:<col> <message>"
// `code` and `category` are omitted when empty.
std::string formatOneLine(const Diagnostic& d);

// Multi-line rendering. When `sm` is non-null and the span resolves,
// includes a snippet/caret block; otherwise only the header + notes.
std::string renderBanner(const Diagnostic& d, const mir::SourceMap* sm);

// ---- Adapters ----------------------------------------------------------
// These let callers feed legacy per-stage diagnostics through the
// unified renderer without rewriting the producers.

Diagnostic fromLowering(const hir::LoweringDiagnostic& d);
Diagnostic fromBorrowck(const mir::borrowck::Diagnostic& d);

// Convenience for the legacy AST borrow checker, which only has a
// rule-name + free-form string + ANTLR context line/col. Produces a
// Diagnostic shaped identically to the borrowck/HIR adapters so the
// terminal output is indistinguishable across producers.
Diagnostic fromLegacyRule(Severity sev,
                          std::string category,
                          std::string rule,
                          std::string message,
                          std::uint32_t line,
                          std::uint32_t column);

} // namespace apollo::diag

#endif
