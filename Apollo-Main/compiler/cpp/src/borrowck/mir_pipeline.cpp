// =============================================================================
// MIR borrow-checker phase — driver integration.
// =============================================================================
//
// See `mir_pipeline.h` for the wiring contract. The phase walks every
// top-level `function` in the cycle's ANTLR tree, lowers it through
// AST→HIR (`apollo::hir::AstLowerer`) and HIR→MIR
// (`apollo::mir::build::MirBuilder`), then runs
// `apollo::mir::borrowck::checkBody` on the resulting MIR. Diagnostics
// are routed through `cycle.recordRuleDiagnostic` (errors) and
// `cycle.recordWarningMessage` (warnings).
//
// The lowering uses trivial fallback resolvers: every type collapses
// to the unit Ty and every name lookup falls back to the lowerer's
// own scope chain. This is sufficient for the MIR borrow checker to
// observe the move/borrow shape of real bodies; the production type
// + name resolvers are still being built out elsewhere and can be
// injected later by widening `AstLowerer`'s constructor.

#include "mir_pipeline.h"

#include "../apollo_runtime.h"
#include "../generated/compilerv1Parser.h"
#include "../hir/lowering.h"
#include "../mir/build/builder.h"
#include "../mir/opt/pipeline.h"
#include "../mir/ty.h"
#include "mir/borrowck.h"
#include "mir/error_codes.h"
#include "../diag/diagnostic.h"

#include <antlr4-runtime.h>

#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include <vector>

namespace apollo::borrowck {

namespace {

bool envFlagEnabled(const char* name) {
    const char* v = std::getenv(name);
    if (v == nullptr) {
        return false;
    }
    const std::string s(v);
    return s == "1" || s == "true" || s == "TRUE" || s == "on" || s == "ON";
}

class MirBorrowCheckPhase final : public ApolloRuntimePhase {
public:
    [[nodiscard]] std::string phaseName() const override {
        return "mir-borrow-check";
    }

    void execute(ApolloCompilerRuntimeCycle& cycle) const override {
        const bool enabled = envFlagEnabled("APOLLO_ENABLE_MIR_BORROWCK");
        if (!enabled) {
            return;
        }

        auto* tree = cycle.tree();
        if (tree == nullptr) {
            std::cerr << "[apollo] MIR borrow checker enabled; no parse tree."
                      << std::endl;
            return;
        }

        // Build the program-level FnDef symbol table once so that
        // every body's call sites can resolve callees.
        const auto* program_node =
            reinterpret_cast<const apollo::hir::AstNode*>(tree);
        auto symbols = apollo::hir::buildProgramSymbolTable(program_node);

        apollo::mir::TyCtxt tcx;
        apollo::hir::TyResolver ty_stub =
            [&tcx](const apollo::hir::AstNode*) { return tcx.mkUnit(); };
        apollo::hir::NameResolver name_stub =
            [](const apollo::hir::AstNode*) { return apollo::hir::NameRef{}; };

        apollo::hir::AstLowerer lowerer(tcx, ty_stub, name_stub);
        for (const auto& [name, id] : symbols) {
            lowerer.registerFunction(name, id);
        }

        std::size_t checked = 0;
        for (auto* fn : tree->function()) {
            if (fn == nullptr) continue;
            auto* fn_node = reinterpret_cast<const apollo::hir::AstNode*>(fn);
            auto result = lowerer.lowerFunction(fn_node);
            if (!result.body || !result.body->root_block) {
                continue;
            }

            apollo::mir::build::MirBuilder builder(tcx, *result.body);
            apollo::mir::Body mir_body = builder.finish();
            (void)apollo::mir::opt::runDefault(mir_body);

            auto bc_result = apollo::mir::borrowck::checkBody(mir_body, tcx);
            for (const auto& diag : bc_result.diagnostics) {
                // Convert through the unified diagnostic so consumers
                // get one rendering format independent of the producer.
                auto unified = apollo::diag::fromBorrowck(diag);
                const std::string formatted =
                    apollo::diag::formatOneLine(unified);
                if (unified.severity == apollo::diag::Severity::Error) {
                    cycle.recordRuleDiagnostic(unified.category, fn, formatted);
                } else {
                    cycle.recordWarningMessage(formatted);
                }
            }

            // Also route any lowering diagnostics through the unified
            // path so Todo / parse-error notes look identical to the
            // borrow-check banner.
            for (const auto& ld : result.diagnostics) {
                auto unified = apollo::diag::fromLowering(ld);
                const std::string formatted =
                    apollo::diag::formatOneLine(unified);
                if (unified.severity == apollo::diag::Severity::Error) {
                    cycle.recordRuleDiagnostic(unified.category, fn, formatted);
                } else {
                    cycle.recordWarningMessage(formatted);
                }
            }
            ++checked;
        }

        if (enabled && checked == 0) {
            std::cerr << "[apollo] MIR borrow checker enabled; "
                         "no function bodies lowered." << std::endl;
        }
    }
};

} // namespace

std::vector<std::shared_ptr<const ApolloRuntimePhase>> mirBorrowCheckerPhases() {
    return { std::make_shared<MirBorrowCheckPhase>() };
}

} // namespace apollo::borrowck
