// =============================================================================
// AST → HIR lowering — scaffold.
// =============================================================================
//
// This is the entry surface for converting the ANTLR-generated parse
// tree into the typed HIR defined in `hir.h`. The full lowering is
// large: Apollo's grammar has ~200 productions and each needs an
// `accept`/`visit*` method. For now we provide:
//
//   * `AstLowerer` — the visitor base class with the dispatch
//                    infrastructure in place.
//   * `lowerFunction` — entry point: ANTLR tree → `hir::Body` + errors.
//   * Per-rule stubs (`lowerLiteral`, `lowerBinaryExpr`, etc.) which
//     return `nullptr` and append a "TODO" diagnostic until filled in.
//
// The existing AST-based borrow checker at
// `Apollo-Main/brc/borrow_checker.cpp` continues to be the production
// checker; this lowering is what we'll switch the driver to once the
// remaining rule stubs are filled in. The Stage 2 MIR borrow checker
// already passes its own unit-tests (see `apollo_borrowck_tests.cpp`),
// so the two stages can land independently.
//
// Design contract:
//   * Lowerers must never throw — diagnostics are appended to a
//     LoweringResult and lowering continues with a best-effort
//     placeholder so multiple errors surface per pass.
//   * Types are resolved out-of-band: the lowerer asks a `TyResolver`
//     callback (injected by the driver) "what type does this node
//     have?" rather than re-implementing inference. This keeps the
//     lowerer linear in tree size.

#ifndef APOLLO_HIR_LOWERING_H
#define APOLLO_HIR_LOWERING_H

#include "hir.h"
#include "../mir/source_info.h"
#include "../mir/ty.h"

#include <functional>
#include <memory>
#include <string>
#include <unordered_map>
#include <vector>

namespace apollo::hir {

// Forward declarations for ANTLR types — kept as opaque pointers so
// this header doesn't drag in the full ANTLR runtime. The .cpp casts
// to the appropriate `antlr4::tree::ParseTree*` subclasses.
struct AstNode;            // opaque

// Lowering diagnostic. Kept separate from the borrow-checker
// `Diagnostic` because lowering predates borrow-checking and uses a
// different severity hierarchy (`ParseError`, `NameResolutionError`,
// `TypeError`).
struct LoweringDiagnostic {
    enum class Kind { ParseError, NameResolutionError, TypeError, Todo };
    Kind kind = Kind::Todo;
    std::string message;
    mir::Span span{};
};

// Output of one function-level lowering operation.
struct LoweringResult {
    std::unique_ptr<hir::Body> body;                  // null on hard failure
    std::vector<LoweringDiagnostic> diagnostics;
};

// Pluggable callback that asks the type checker "what is the type of
// this AST node?". Returns nullptr if the node has no representable
// type (e.g. statement positions). Implemented by the driver in terms
// of its inference state.
using TyResolver = std::function<mir::Ty(const AstNode*)>;

// Pluggable callback that maps an AST identifier reference to its
// declaration (`LocalVarId` for locals, future enum for globals/fn-defs).
struct NameRef {
    enum class Scope : std::uint8_t { Local, Global, FnDef, Unresolved };
    Scope scope = Scope::Unresolved;
    LocalVarId local = 0;
    FnDefId    fn = 0;
    std::string name;
};
using NameResolver = std::function<NameRef(const AstNode*)>;

// The lowerer itself. Stateful — keeps a stack of enclosing loop
// labels for `break`/`continue` desugaring, plus the current local
// declarations as we walk.
class AstLowerer {
public:
    AstLowerer(mir::TyCtxt& tcx, TyResolver tyr, NameResolver nr);

    // Lower a single function body. The caller passes the function's
    // top-level AST node (a `FunctionDefinitionContext` in ANTLR
    // terms). The returned LoweringResult owns the produced `Body`.
    LoweringResult lowerFunction(const AstNode* fn_def);

    // Register a global function name so that `lowerCallExpr` can
    // populate the `Call.callee : FnDefId` field. Callers (the
    // driver) build the table once per program by walking
    // `ProgramContext::function()` before lowering any body.
    void registerFunction(std::string name, FnDefId id);

private:
    // ---- Per-construct entry points ------------------------------------
    // All of these may produce nullptr on error and push a diagnostic.
    // The TODO entries are explicit so that finishing the lowerer
    // amounts to "search for `pushTodo` and replace with real code".
    ExprPtr lowerExpr(const AstNode* node);
    ExprPtr lowerLiteralExpr(const AstNode* node);
    ExprPtr lowerIdentifierExpr(const AstNode* node);
    ExprPtr lowerAssignExpr(const AstNode* node);
    ExprPtr lowerBinaryExpr(const AstNode* node);
    ExprPtr lowerUnaryExpr(const AstNode* node);
    ExprPtr lowerCallExpr(const AstNode* node);
    ExprPtr lowerRefExpr(const AstNode* node);
    ExprPtr lowerBlockExpr(const AstNode* node);
    ExprPtr lowerIfExpr(const AstNode* node);
    ExprPtr lowerWhileExpr(const AstNode* node);
    ExprPtr lowerLoopExpr(const AstNode* node);
    ExprPtr lowerMatchExpr(const AstNode* node);
    ExprPtr lowerSwitchExpr(const AstNode* node);
    ExprPtr lowerForExpr(const AstNode* node);
    ExprPtr lowerForInExpr(const AstNode* node);
    ExprPtr lowerReturnExpr(const AstNode* node);
    ExprPtr lowerMemberAccessExpr(const AstNode* node);
    ExprPtr lowerIndexedAccessExpr(const AstNode* node);
    ExprPtr lowerCastExpr(const AstNode* node);
    ExprPtr lowerCompositeLiteralExpr(const AstNode* node);
    ExprPtr lowerBraceInitializerExpr(const AstNode* node);
    ExprPtr lowerMemberAssignmentExpr(const AstNode* node);
    ExprPtr lowerTryCatchStmt(const AstNode* node);
    ExprPtr lowerAutocatchStmt(const AstNode* node);

    // Build a Var expression for an `accessBase` (memberaccess /
    // memberAssignment LHS). Returns nullptr and pushes a Todo when the
    // base is INDEF / 'sys' / an unknown identifier.
    ExprPtr varExprForAccessBase(void* access_base, const AstNode* origin);

    StmtPtr lowerStmt(const AstNode* node);
    StmtPtr lowerLetStmt(const AstNode* node);
    StmtPtr lowerExprStmt(const AstNode* node);

    // ---- Diagnostic helpers --------------------------------------------
    void pushTodo(const AstNode* where, std::string what);
    void pushParseError(const AstNode* where, std::string what);
    mir::Span spanOf(const AstNode* node);

    // ---- Scope-aware identifier table ----------------------------------
    // Apollo lowering owns its own scope chain so that real ANTLR input
    // can be lowered even when the driver does not inject a
    // `NameResolver`. Each `{` pushes a new map and each `}` pops it.
    // `init`/`initCore`/`easyInit` allocate a fresh `LocalVarId` and
    // bind it in the current scope; later references walk the chain
    // outermost-first.
    LocalVarId declareLocal(const std::string& name, mir::Ty ty, bool is_mut,
                            const mir::SourceInfo& si);
    std::optional<LocalVarId> resolveLocal(const std::string& name) const;
    void pushScope();
    void popScope();
    mir::Ty resolveTy(const AstNode* node);

    // ---- State ---------------------------------------------------------
    mir::TyCtxt& tcx_;
    TyResolver   ty_resolver_;
    NameResolver name_resolver_;
    LoweringResult current_;
    std::vector<std::unordered_map<std::string, LocalVarId>> scopes_;
    std::unordered_map<std::string, FnDefId> fn_symbols_;
};

// Walk a `ProgramContext` (passed as the opaque `AstNode*`) and assign
// sequential `FnDefId`s (starting at 1) to every top-level `function`
// declaration. ID 0 is reserved for "unresolved". The result is
// intended to be fed to `AstLowerer::registerFunction` before lowering
// any function body so that call sites can resolve their callees.
std::unordered_map<std::string, FnDefId>
buildProgramSymbolTable(const AstNode* program_ctx);

} // namespace apollo::hir

#endif
