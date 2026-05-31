// Unified Apollo diagnostic — implementation.
//
// See diagnostic.h for the policy. Both adapters convert their
// source-stage struct into the canonical apollo::diag::Diagnostic. The
// renderers produce stable output independent of which stage emitted
// the diagnostic.

#include "diagnostic.h"

#include "../hir/lowering.h"
#include "../borrowck/mir/borrowck.h"
#include "../borrowck/mir/error_codes.h"

#include <sstream>
#include <string_view>

namespace apollo::diag {

namespace {

std::string_view severityWord(Severity s) {
    switch (s) {
        case Severity::Error:   return "error";
        case Severity::Warning: return "warning";
        case Severity::Note:    return "note";
    }
    return "error";
}

// Produces "L:C" or "?:?" when the span cannot be resolved.
std::string formatLineCol(mir::Span sp, const mir::SourceMap* sm) {
    if (!sp.valid() || sm == nullptr) return "?:?";
    auto lc = sm->lookup(sp);
    std::ostringstream os;
    os << lc.line << ':' << lc.col;
    return os.str();
}

} // namespace

std::string formatOneLine(const Diagnostic& d) {
    std::ostringstream os;
    os << severityWord(d.severity) << '[';
    if (!d.category.empty()) os << d.category;
    if (!d.code.empty()) {
        if (!d.category.empty()) os << ':';
        os << d.code;
    }
    os << "] ";
    // Without a SourceMap we cannot resolve byte offsets to line:col.
    // Fall back to the raw lo offset to remain greppable.
    if (d.primary_span.valid()) {
        os << d.primary_span.lo;
    } else {
        os << '?';
    }
    os << ' ' << d.message;
    return os.str();
}

std::string renderBanner(const Diagnostic& d, const mir::SourceMap* sm) {
    std::ostringstream os;
    os << severityWord(d.severity) << '[';
    if (!d.category.empty()) os << d.category;
    if (!d.code.empty()) {
        if (!d.category.empty()) os << ':';
        os << d.code;
    }
    os << "]: " << d.message << '\n';
    os << "  --> " << formatLineCol(d.primary_span, sm) << '\n';
    for (const auto& n : d.notes) {
        os << "  note: " << n.message
           << " (" << formatLineCol(n.span, sm) << ")\n";
    }
    for (const auto& s : d.suggestions) {
        os << "  help: " << s.label
           << " (" << formatLineCol(s.span, sm) << ")";
        if (!s.replacement.empty()) {
            os << " -> `" << s.replacement << "`";
        }
        os << '\n';
    }
    return os.str();
}

Diagnostic fromLowering(const hir::LoweringDiagnostic& d) {
    Diagnostic out;
    out.primary_span = d.span;
    out.message = d.message;
    switch (d.kind) {
        case hir::LoweringDiagnostic::Kind::ParseError:
            out.category = "parse";  out.code = "PRS";
            out.severity = Severity::Error; break;
        case hir::LoweringDiagnostic::Kind::NameResolutionError:
            out.category = "name-res"; out.code = "NMR";
            out.severity = Severity::Error; break;
        case hir::LoweringDiagnostic::Kind::TypeError:
            out.category = "type";   out.code = "TYP";
            out.severity = Severity::Error; break;
        case hir::LoweringDiagnostic::Kind::Todo:
            out.category = "lowering"; out.code = "TODO";
            out.severity = Severity::Warning; break;
    }
    return out;
}

Diagnostic fromBorrowck(const mir::borrowck::Diagnostic& d) {
    Diagnostic out;
    out.message = d.message;
    out.primary_span = d.primary_span;
    out.category = "borrowck";
    out.code = mir::borrowck::tagOf(d.code);
    switch (d.severity) {
        case mir::borrowck::Severity::Error:   out.severity = Severity::Error;   break;
        case mir::borrowck::Severity::Warning: out.severity = Severity::Warning; break;
        case mir::borrowck::Severity::Note:    out.severity = Severity::Note;    break;
    }
    out.notes.reserve(d.notes.size());
    for (const auto& [span, msg] : d.notes) {
        out.notes.push_back({span, msg});
    }
    out.suggestions.reserve(d.suggestions.size());
    for (const auto& s : d.suggestions) {
        out.suggestions.push_back({s.span, s.replacement, s.label, s.applicable});
    }
    return out;
}

Diagnostic fromLegacyRule(Severity sev,
                          std::string category,
                          std::string rule,
                          std::string message,
                          std::uint32_t line,
                          std::uint32_t column) {
    Diagnostic out;
    out.severity = sev;
    out.category = std::move(category);
    out.code = std::move(rule);
    out.message = std::move(message);
    // The legacy checker walks ANTLR contexts and only has line/col,
    // not byte offsets. Encode line:col into the Span by packing line
    // into `lo` so formatOneLine has something stable to emit.
    out.primary_span.file = 0;
    out.primary_span.lo = line;
    out.primary_span.hi = column;
    return out;
}

} // namespace apollo::diag
