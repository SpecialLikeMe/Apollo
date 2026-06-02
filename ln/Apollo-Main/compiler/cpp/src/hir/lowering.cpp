// =============================================================================
// AST -> HIR lowering.
// =============================================================================
//
// This file lowers Apollo ANTLR parse trees into the HIR representation
// defined in `hir.h`. The resulting `hir::Body` is then consumed by the
// MIR builder in `../mir/build/builder.cpp` to produce the MIR that the
// borrow checker (`../borrowck/mir/borrowck.cpp`) operates on.
//
// Coverage:
//   * Function bodies, parameter lists, blocks, statements.
//   * `init` / `initCore` / `easyInit` -> Let.
//   * `assignment` / `assignmentCore` -> Assign.
//   * `functionCall` -> Call.
//   * `borrowExpr` (&x / &mut x) -> Ref.
//   * Expression precedence chain (`||`, `&&`, `|`, `^`, `&`, `==`/`!=`,
//     `<<`/`>>`, `<`/`<=`/`>`/`>=`, `+`/`-`, `*`/`/`/`%`).
//   * `primary` -> LitInt / LitBool / LitChar / LitStr / Var / nested.
//   * `ifStatement` / `whileStatement` / `returnStmt`.
//
// Constructs explicitly recorded as `Todo`: switch/match, for / for-in,
// try/catch, lambdas, member access, casts, placement-new, composite
// literals, ternary, and the various Apollo runtime / DSL statements.
// Each unsupported construct emits a `LoweringDiagnostic::Todo` and
// either returns nullptr or a `LitUnit` placeholder so the rest of the
// body can continue lowering.

#include "lowering.h"

#include "../../generated/compilerv1Parser.h"

#include <antlr4-runtime.h>

#include <charconv>
#include <cstdlib>
#include <string>

namespace apollo::hir {

namespace {

using PT  = antlr4::tree::ParseTree;
using PRC = antlr4::ParserRuleContext;
using TN  = antlr4::tree::TerminalNode;

using compilerv1Parser = ::compilerv1Parser;

inline const PT* asTree(const AstNode* n) {
    return reinterpret_cast<const PT*>(n);
}
inline const AstNode* asNode(const PT* t) {
    return reinterpret_cast<const AstNode*>(t);
}

// Returns true iff this parse-tree child is the literal text `op`. Used
// when walking the children of a precedence-chain rule to recover which
// operator token sits between two operands.
inline bool isOpToken(PT* child, const char* op) {
    auto* t = dynamic_cast<TN*>(child);
    if (!t) return false;
    return t->getText() == op;
}

// Strip the surrounding quotes from a STRING literal and unescape
// minimally (\n, \t, \\, \"). Apollo string literals are double-quoted.
std::string decodeStringLiteral(const std::string& raw) {
    if (raw.size() < 2) return raw;
    std::string out;
    out.reserve(raw.size());
    for (std::size_t i = 1; i + 1 < raw.size(); ++i) {
        char c = raw[i];
        if (c == '\\' && i + 2 < raw.size()) {
            char n = raw[i + 1];
            switch (n) {
                case 'n':  out.push_back('\n'); ++i; continue;
                case 't':  out.push_back('\t'); ++i; continue;
                case 'r':  out.push_back('\r'); ++i; continue;
                case '\\': out.push_back('\\'); ++i; continue;
                case '"':  out.push_back('"');  ++i; continue;
                case '0':  out.push_back('\0'); ++i; continue;
                default: break;
            }
        }
        out.push_back(c);
    }
    return out;
}

std::uint64_t decodeIntLiteral(const std::string& raw) {
    if (raw.empty()) return 0;
    std::uint64_t v = 0;
    int base = 10;
    std::size_t pos = 0;
    if (raw.size() > 2 && raw[0] == '0' && (raw[1] == 'x' || raw[1] == 'X')) {
        base = 16;
        pos  = 2;
    } else if (raw.size() > 2 && raw[0] == '0' && (raw[1] == 'b' || raw[1] == 'B')) {
        base = 2;
        pos  = 2;
    }
    auto first = raw.data() + pos;
    auto last  = raw.data() + raw.size();
    std::from_chars(first, last, v, base);
    return v;
}

} // namespace

// =============================================================================
// AstLowerer
// =============================================================================

AstLowerer::AstLowerer(mir::TyCtxt& tcx, TyResolver tyr, NameResolver nr)
    : tcx_(tcx), ty_resolver_(std::move(tyr)), name_resolver_(std::move(nr)) {}

void AstLowerer::registerFunction(std::string name, FnDefId id) {
    if (name.empty() || id == 0) return;
    fn_symbols_.emplace(std::move(name), id);
}

std::unordered_map<std::string, FnDefId>
buildProgramSymbolTable(const AstNode* program_ctx) {
    std::unordered_map<std::string, FnDefId> out;
    if (!program_ctx) return out;
    auto* tree = reinterpret_cast<const antlr4::tree::ParseTree*>(program_ctx);
    auto* prog = dynamic_cast<const compilerv1Parser::ProgramContext*>(tree);
    if (!prog) return out;
    auto* pm = const_cast<compilerv1Parser::ProgramContext*>(prog);
    FnDefId next_id = 1;
    for (auto* fn : pm->function()) {
        if (!fn) continue;
        auto* id = fn->ID();
        if (!id) continue;
        const std::string name = id->getText();
        if (name.empty()) continue;
        // First declaration wins; later duplicates keep the original id
        // so call-site resolution remains stable.
        out.try_emplace(name, next_id++);
    }
    return out;
}

// -----------------------------------------------------------------------------
// Scope/name machinery.
// -----------------------------------------------------------------------------

void AstLowerer::pushScope() {
    scopes_.emplace_back();
}

void AstLowerer::popScope() {
    if (!scopes_.empty()) scopes_.pop_back();
}

LocalVarId AstLowerer::declareLocal(const std::string& name,
                                    mir::Ty ty,
                                    bool is_mut,
                                    const mir::SourceInfo& si) {
    LocalDecl d;
    d.name        = name;
    d.ty          = ty;
    d.mutable_    = is_mut;
    d.source_info = si;
    const auto id = static_cast<LocalVarId>(current_.body->locals.size());
    current_.body->locals.push_back(std::move(d));
    if (scopes_.empty()) pushScope();
    scopes_.back()[name] = id;
    return id;
}

std::optional<LocalVarId> AstLowerer::resolveLocal(const std::string& name) const {
    for (auto it = scopes_.rbegin(); it != scopes_.rend(); ++it) {
        auto found = it->find(name);
        if (found != it->end()) return found->second;
    }
    return std::nullopt;
}

mir::Ty AstLowerer::resolveTy(const AstNode* node) {
    if (ty_resolver_) {
        if (auto t = ty_resolver_(node)) return t;
    }
    // Fallback: an unknown-typed expression. Borrow checker can still
    // observe move/borrow shape without a precise type.
    return tcx_.mkUnit();
}

// -----------------------------------------------------------------------------
// Span/diagnostic plumbing.
// -----------------------------------------------------------------------------

mir::Span AstLowerer::spanOf(const AstNode* node) {
    mir::Span out{};
    if (!node) return out;
    auto* prc = dynamic_cast<const PRC*>(asTree(node));
    if (!prc) return out;
    auto* start = prc->getStart();
    auto* stop  = prc->getStop() ? prc->getStop() : prc->getStart();
    if (start) out.lo = static_cast<std::uint32_t>(start->getStartIndex());
    if (stop)  out.hi = static_cast<std::uint32_t>(stop->getStopIndex() + 1);
    // File id is left as kInvalidFileId — the driver wraps the lowerer
    // with a SourceMap and rewrites the file id at integration time.
    return out;
}

void AstLowerer::pushTodo(const AstNode* where, std::string what) {
    LoweringDiagnostic d;
    d.kind    = LoweringDiagnostic::Kind::Todo;
    d.message = std::move(what);
    d.span    = spanOf(where);
    current_.diagnostics.push_back(std::move(d));
}

void AstLowerer::pushParseError(const AstNode* where, std::string what) {
    LoweringDiagnostic d;
    d.kind    = LoweringDiagnostic::Kind::ParseError;
    d.message = std::move(what);
    d.span    = spanOf(where);
    current_.diagnostics.push_back(std::move(d));
}

// -----------------------------------------------------------------------------
// Function-level lowering.
// -----------------------------------------------------------------------------

LoweringResult AstLowerer::lowerFunction(const AstNode* fn_def) {
    current_ = LoweringResult{};
    current_.body = std::make_unique<Body>();
    scopes_.clear();
    pushScope();

    if (!fn_def) {
        pushParseError(nullptr, "null function AST node");
        return std::move(current_);
    }

    auto* fn = dynamic_cast<const compilerv1Parser::FunctionContext*>(asTree(fn_def));
    if (!fn) {
        pushParseError(fn_def, "lowerFunction: expected FunctionContext");
        return std::move(current_);
    }

    auto* fn_mut = const_cast<compilerv1Parser::FunctionContext*>(fn);
    if (auto* id = fn_mut->ID()) {
        current_.body->name = id->getText();
    }
    current_.body->return_ty = resolveTy(asNode(fn_mut->returnType()));
    current_.body->span      = spanOf(fn_def);

    // Parameters: each declared as a Local in the body slot table. Their
    // index becomes their LocalVarId. The MIR builder turns the first
    // `param_count` locals into MIR `_1.._N` argument slots.
    if (auto* params = fn_mut->params()) {
        for (auto* p : params->param()) {
            std::string name = p->ID() ? p->ID()->getText() : std::string{};
            mir::SourceInfo si{};
            si.span = spanOf(asNode(p));
            mir::Ty ty = resolveTy(asNode(p->typeRef()));
            const bool is_mut = (p->NCONST() != nullptr) || (p->CONST() == nullptr);
            declareLocal(name, ty, is_mut, si);
        }
    }
    current_.body->param_count = static_cast<std::uint32_t>(current_.body->locals.size());

    // Body block.
    auto* block = fn_mut->block();
    if (block) {
        current_.body->root_block = lowerBlockExpr(asNode(block));
    } else {
        pushParseError(fn_def, "function has no body block");
    }

    popScope();
    return std::move(current_);
}

// -----------------------------------------------------------------------------
// Expression dispatch.
// -----------------------------------------------------------------------------

ExprPtr AstLowerer::lowerExpr(const AstNode* node) {
    if (!node) return nullptr;
    auto* t = asTree(node);

    if (auto* e = dynamic_cast<const compilerv1Parser::ExpressionContext*>(t)) {
        auto* em = const_cast<compilerv1Parser::ExpressionContext*>(e);
        // Ternary `cond ? a : b`: lowered to If(cond, a, b).
        if (!em->expression().empty()) {
            auto out      = std::make_unique<Expr>();
            out->kind     = ExprKind::If;
            out->ty       = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->cond     = lowerExpr(asNode(em->orExpr()));
            out->then_branch = lowerExpr(asNode(em->expression(0)));
            if (em->expression().size() > 1) {
                out->else_branch = lowerExpr(asNode(em->expression(1)));
            }
            return out;
        }
        return lowerExpr(asNode(em->orExpr()));
    }

    // Precedence chain: each level either has 1 operand (passthrough) or
    // multiple operands joined by a fixed operator. The fixed-op levels
    // all share the same shape; we expand them inline rather than use a
    // generic lambda (member-function pointers on derived types can't
    // be invoked through a `ParserRuleContext*` base).
    auto buildLeftFold = [&](auto& operands, BinOp op) -> ExprPtr {
        if (operands.empty()) return nullptr;
        ExprPtr lhs = lowerExpr(asNode(operands[0]));
        for (std::size_t i = 1; i < operands.size(); ++i) {
            ExprPtr rhs = lowerExpr(asNode(operands[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary;
            out->bin  = op;
            out->ty   = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs);
            out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    };

    if (auto* xm = dynamic_cast<compilerv1Parser::OrExprContext*>(const_cast<PT*>(t))) {
        auto ops = xm->andExpr();
        return buildLeftFold(ops, BinOp::Or);
    }
    if (auto* xm = dynamic_cast<compilerv1Parser::AndExprContext*>(const_cast<PT*>(t))) {
        auto ops = xm->bitwiseOrExpr();
        return buildLeftFold(ops, BinOp::And);
    }
    if (auto* xm = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(const_cast<PT*>(t))) {
        auto ops = xm->bitwiseXorExpr();
        return buildLeftFold(ops, BinOp::BitOr);
    }
    if (auto* xm = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(const_cast<PT*>(t))) {
        auto ops = xm->bitwiseAndExpr();
        return buildLeftFold(ops, BinOp::BitXor);
    }
    if (auto* xm = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(const_cast<PT*>(t))) {
        auto ops = xm->equalityExpr();
        return buildLeftFold(ops, BinOp::BitAnd);
    }

    // Mixed-op precedence levels need to inspect the operator tokens.
    if (auto* x = dynamic_cast<const compilerv1Parser::EqualityExprContext*>(t)) {
        auto* xm = const_cast<compilerv1Parser::EqualityExprContext*>(x);
        auto ops = xm->shiftExpr();
        if (ops.size() == 1) return lowerExpr(asNode(ops[0]));
        ExprPtr lhs = lowerExpr(asNode(ops[0]));
        std::size_t ci = 1; // child cursor walks `(operator operand)*`
        for (std::size_t i = 1; i < ops.size(); ++i) {
            BinOp op = BinOp::Eq;
            // Walk forward to the next operator token.
            while (ci < xm->children.size() && dynamic_cast<TN*>(xm->children[ci]) == nullptr) ++ci;
            if (ci < xm->children.size() && isOpToken(xm->children[ci], "!=")) op = BinOp::Ne;
            ci += 2;
            ExprPtr rhs = lowerExpr(asNode(ops[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary; out->bin = op; out->ty = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs); out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    }
    if (auto* x = dynamic_cast<const compilerv1Parser::RelationalExprContext*>(t)) {
        auto* xm = const_cast<compilerv1Parser::RelationalExprContext*>(x);
        auto ops = xm->addExpr();
        if (ops.size() == 1) return lowerExpr(asNode(ops[0]));
        ExprPtr lhs = lowerExpr(asNode(ops[0]));
        std::size_t ci = 1;
        for (std::size_t i = 1; i < ops.size(); ++i) {
            BinOp op = BinOp::Lt;
            while (ci < xm->children.size() && dynamic_cast<TN*>(xm->children[ci]) == nullptr) ++ci;
            if (ci < xm->children.size()) {
                auto txt = xm->children[ci]->getText();
                if      (txt == "<")  op = BinOp::Lt;
                else if (txt == "<=") op = BinOp::Le;
                else if (txt == ">")  op = BinOp::Gt;
                else if (txt == ">=") op = BinOp::Ge;
            }
            ci += 2;
            ExprPtr rhs = lowerExpr(asNode(ops[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary; out->bin = op; out->ty = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs); out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    }
    if (auto* x = dynamic_cast<const compilerv1Parser::ShiftExprContext*>(t)) {
        auto* xm = const_cast<compilerv1Parser::ShiftExprContext*>(x);
        auto ops = xm->relationalExpr();
        if (ops.size() == 1) return lowerExpr(asNode(ops[0]));
        ExprPtr lhs = lowerExpr(asNode(ops[0]));
        // Operator can be `<<` (one TN) or `rightShiftOperator` (a non-TN sub-rule).
        std::size_t ci = 1;
        for (std::size_t i = 1; i < ops.size(); ++i) {
            BinOp op = BinOp::Shl;
            while (ci < xm->children.size()) {
                if (dynamic_cast<TN*>(xm->children[ci]) != nullptr) {
                    if (xm->children[ci]->getText() == "<<") op = BinOp::Shl;
                    break;
                }
                if (dynamic_cast<compilerv1Parser::RightShiftOperatorContext*>(xm->children[ci])) {
                    op = BinOp::Shr; break;
                }
                ++ci;
            }
            ci += 2;
            ExprPtr rhs = lowerExpr(asNode(ops[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary; out->bin = op; out->ty = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs); out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    }
    if (auto* x = dynamic_cast<const compilerv1Parser::AddExprContext*>(t)) {
        auto* xm = const_cast<compilerv1Parser::AddExprContext*>(x);
        auto ops = xm->multExpr();
        if (ops.size() == 1) return lowerExpr(asNode(ops[0]));
        ExprPtr lhs = lowerExpr(asNode(ops[0]));
        std::size_t ci = 1;
        for (std::size_t i = 1; i < ops.size(); ++i) {
            BinOp op = BinOp::Add;
            while (ci < xm->children.size() && dynamic_cast<TN*>(xm->children[ci]) == nullptr) ++ci;
            if (ci < xm->children.size() && isOpToken(xm->children[ci], "-")) op = BinOp::Sub;
            ci += 2;
            ExprPtr rhs = lowerExpr(asNode(ops[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary; out->bin = op; out->ty = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs); out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    }
    if (auto* x = dynamic_cast<const compilerv1Parser::MultExprContext*>(t)) {
        auto* xm = const_cast<compilerv1Parser::MultExprContext*>(x);
        auto ops = xm->primary();
        if (ops.size() == 1) return lowerExpr(asNode(ops[0]));
        ExprPtr lhs = lowerExpr(asNode(ops[0]));
        std::size_t ci = 1;
        for (std::size_t i = 1; i < ops.size(); ++i) {
            BinOp op = BinOp::Mul;
            while (ci < xm->children.size() && dynamic_cast<TN*>(xm->children[ci]) == nullptr) ++ci;
            if (ci < xm->children.size()) {
                auto txt = xm->children[ci]->getText();
                if      (txt == "*") op = BinOp::Mul;
                else if (txt == "/") op = BinOp::Div;
                else if (txt == "%") op = BinOp::Rem;
            }
            ci += 2;
            ExprPtr rhs = lowerExpr(asNode(ops[i]));
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Binary; out->bin = op; out->ty = resolveTy(node);
            out->source_info.span = spanOf(node);
            out->a = std::move(lhs); out->b = std::move(rhs);
            lhs = std::move(out);
        }
        return lhs;
    }

    if (dynamic_cast<const compilerv1Parser::UnaryExprContext*>(t)) {
        return lowerUnaryExpr(node);
    }

    if (auto* p = dynamic_cast<const compilerv1Parser::PrimaryContext*>(t)) {
        auto* pm = const_cast<compilerv1Parser::PrimaryContext*>(p);
        if (pm->INT() || pm->FLOAT() || pm->TRUE() || pm->FALSE()
                || pm->CHAR() || pm->BYTE() || pm->STRING()
                || pm->NULL_LITERAL() || pm->SUCCESS()) {
            return lowerLiteralExpr(node);
        }
        if (auto* un = pm->unaryExpr()) {
            // Lower the inner primary then wrap (or skip, for unary `+`).
            ExprPtr inner = lowerExpr(asNode(un->primary()));
            if (!inner) return nullptr;
            // Operator token is the first child of UnaryExprContext.
            std::string op_text;
            if (!un->children.empty()) {
                op_text = un->children[0]->getText();
            }
            if (op_text == "+") {
                // Unary plus is a no-op identity wrapper.
                return inner;
            }
            if (op_text == "*") {
                auto out = std::make_unique<Expr>();
                out->kind = ExprKind::Deref;
                out->source_info.span = spanOf(node);
                out->ty = resolveTy(node);
                out->operand_place = std::move(inner);
                return out;
            }
            auto out = std::make_unique<Expr>();
            out->kind = ExprKind::Unary;
            out->source_info.span = spanOf(node);
            out->ty = resolveTy(node);
            out->un = (op_text == "!") ? UnOp::Not : UnOp::Neg;
            out->a = std::move(inner);
            return out;
        }
        if (auto* call = pm->functionCall()) {
            return lowerCallExpr(asNode(call));
        }
        if (auto* be = pm->borrowExpr()) {
            return lowerRefExpr(asNode(be));
        }
        if (auto* ma = pm->memberaccess()) {
            return lowerMemberAccessExpr(asNode(ma));
        }
        if (auto* ia = pm->indexedAccess()) {
            return lowerIndexedAccessExpr(asNode(ia));
        }
        if (auto* cx = pm->castExpr()) {
            return lowerCastExpr(asNode(cx));
        }
        if (auto* cl = pm->compositeLiteral()) {
            return lowerCompositeLiteralExpr(asNode(cl));
        }
        if (auto* bi = pm->braceInitializer()) {
            return lowerBraceInitializerExpr(asNode(bi));
        }
        if (auto* sub = pm->expression()) {
            return lowerExpr(asNode(sub));
        }
        if (pm->ID()) {
            return lowerIdentifierExpr(node);
        }
        // Surface-level primaries that don't yet have dedicated lowering
        // are mapped to conservative shapes so MIR sees *something*
        // typed rather than a dropped Todo:
        //   * instanceValue (`Foo{a,b}`)   → Aggregate(Adt) over args
        //   * templateString (`"..${e}.."`)→ literal string of raw text
        //   * stdinValue / INDEF / sys.*   → unit constant
        if (auto* iv = pm->instanceValue()) {
            auto a = std::make_unique<Expr>();
            a->kind = ExprKind::Aggregate;
            a->agg_kind = AggregateKind::Struct;
            a->ty = tcx_.mkUnit();
            if (auto* bi = iv->braceInitializer()) {
                for (auto* item : bi->braceInitializerElement()) {
                    if (auto* ex = item->expression()) {
                        if (auto e = lowerExpr(asNode(ex))) a->args.push_back(std::move(e));
                    }
                }
                return a;
            }
            if (auto* args = iv->args()) {
                for (auto* ex : args->expression()) {
                    if (auto e = lowerExpr(asNode(ex))) a->args.push_back(std::move(e));
                }
            }
            return a;
        }
        if (auto* pn = pm->placementNewExpr()) {
            auto a = std::make_unique<Expr>();
            a->kind = ExprKind::Aggregate;
            a->agg_kind = AggregateKind::Array;
            a->source_info.span = spanOf(node);
            a->ty = resolveTy(node);
            if (auto* count = pn->expression()) {
                if (auto e = lowerExpr(asNode(count))) {
                    a->args.push_back(std::move(e));
                }
            }
            return a;
        }
        if (pm->templateString() != nullptr) {
            auto s = std::make_unique<Expr>();
            s->kind = ExprKind::LitStr;
            s->ty = tcx_.mkUnit();
            s->str_value = pm->templateString()->getText();
            return s;
        }
        if (pm->stdinValue() != nullptr || pm->INDEF() != nullptr) {
            auto u = std::make_unique<Expr>();
            u->kind = ExprKind::LitInt;
            u->scalar = 0;
            u->ty = tcx_.mkUnit();
            return u;
        }
        pushParseError(node, "primary kind not recognised");
        return nullptr;
    }

    if (dynamic_cast<const compilerv1Parser::BorrowExprContext*>(t)) {
        return lowerRefExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::FunctionCallContext*>(t)) {
        return lowerCallExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::BlockContext*>(t)) {
        return lowerBlockExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::IfStatementContext*>(t)) {
        return lowerIfExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::WhileStatementContext*>(t)) {
        return lowerWhileExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::LoopStatementContext*>(t)) {
        return lowerLoopExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::ForStatementContext*>(t)) {
        return lowerForExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::ForInStatementContext*>(t)) {
        return lowerForInExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::SwitchStatementContext*>(t)) {
        return lowerSwitchExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::ReturnStmtContext*>(t)) {
        return lowerReturnExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::MemberaccessContext*>(t)) {
        return lowerMemberAccessExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::IndexedAccessContext*>(t)) {
        return lowerIndexedAccessExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::CastExprContext*>(t)) {
        return lowerCastExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::CompositeLiteralContext*>(t)) {
        return lowerCompositeLiteralExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::BraceInitializerContext*>(t)) {
        return lowerBraceInitializerExpr(node);
    }
    if (dynamic_cast<const compilerv1Parser::TryCatchStatementContext*>(t)) {
        return lowerTryCatchStmt(node);
    }
    if (dynamic_cast<const compilerv1Parser::AutocatchStatementContext*>(t)) {
        return lowerAutocatchStmt(node);
    }
    if (dynamic_cast<const compilerv1Parser::MemberAssignmentContext*>(t)) {
        return lowerMemberAssignmentExpr(node);
    }

    pushParseError(node, "lowerExpr: unsupported AST node");
    return nullptr;
}

// -----------------------------------------------------------------------------
// Per-construct lowerers.
// -----------------------------------------------------------------------------

ExprPtr AstLowerer::lowerLiteralExpr(const AstNode* node) {
    auto* p = dynamic_cast<const compilerv1Parser::PrimaryContext*>(asTree(node));
    if (!p) { pushParseError(node, "lowerLiteralExpr: not a PrimaryContext"); return nullptr; }
    auto* pm = const_cast<compilerv1Parser::PrimaryContext*>(p);
    auto out = std::make_unique<Expr>();
    out->source_info.span = spanOf(node);
    out->ty = resolveTy(node);
    if (auto* n = pm->INT()) {
        out->kind   = ExprKind::LitInt;
        out->scalar = decodeIntLiteral(n->getText());
        return out;
    }
    if (pm->TRUE() || pm->SUCCESS()) {
        out->kind   = ExprKind::LitBool;
        out->scalar = 1;
        return out;
    }
    if (pm->FALSE()) {
        out->kind   = ExprKind::LitBool;
        out->scalar = 0;
        return out;
    }
    if (auto* n = pm->CHAR()) {
        const std::string raw = n->getText();
        std::uint64_t v = 0;
        if (raw.size() >= 3) v = static_cast<std::uint8_t>(raw[1]);
        out->kind   = ExprKind::LitChar;
        out->scalar = v;
        return out;
    }
    if (auto* n = pm->BYTE()) {
        out->kind   = ExprKind::LitInt;
        out->scalar = decodeIntLiteral(n->getText());
        return out;
    }
    if (auto* n = pm->STRING()) {
        out->kind      = ExprKind::LitStr;
        out->str_value = decodeStringLiteral(n->getText());
        return out;
    }
    if (pm->NULL_LITERAL()) {
        out->kind   = ExprKind::LitInt;
        out->scalar = 0;
        return out;
    }
    if (auto* n = pm->FLOAT()) {
        // HIR doesn't carry float scalars distinctly yet; encode the
        // bit pattern in `scalar` and tag with LitInt — the MIR builder
        // currently treats floats as opaque temporaries anyway.
        double d = std::strtod(n->getText().c_str(), nullptr);
        std::uint64_t bits = 0;
        static_assert(sizeof(double) == sizeof(std::uint64_t));
        std::memcpy(&bits, &d, sizeof(bits));
        out->kind   = ExprKind::LitInt;
        out->scalar = bits;
        return out;
    }
    pushParseError(node, "literal kind not recognised");
    return nullptr;
}

ExprPtr AstLowerer::lowerIdentifierExpr(const AstNode* node) {
    auto* p = dynamic_cast<compilerv1Parser::PrimaryContext*>(const_cast<PT*>(asTree(node)));
    if (!p || !p->ID()) {
        pushParseError(node, "lowerIdentifierExpr: not an ID primary");
        return nullptr;
    }
    const std::string name = p->ID()->getText();
    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Var;
    out->source_info.span = spanOf(node);
    out->ty   = resolveTy(node);

    // Driver-supplied NameResolver takes precedence; otherwise consult
    // the internal scope chain.
    if (name_resolver_) {
        NameRef ref = name_resolver_(node);
        if (ref.scope == NameRef::Scope::Local) {
            out->local = ref.local;
            return out;
        }
    }
    if (auto local = resolveLocal(name)) {
        out->local = *local;
        return out;
    }
    pushParseError(node, "unresolved identifier '" + name + "'");
    out->local = 0;
    return out;
}

ExprPtr AstLowerer::lowerAssignExpr(const AstNode* node) {
    auto* a = dynamic_cast<const compilerv1Parser::AssignmentCoreContext*>(asTree(node));
    if (!a) { pushParseError(node, "lowerAssignExpr: not AssignmentCoreContext"); return nullptr; }
    auto* am = const_cast<compilerv1Parser::AssignmentCoreContext*>(a);
    auto* tgt = am->assignTarget();
    if (!tgt || !tgt->ID()) {
        pushParseError(node, "assignment target without ID");
        return nullptr;
    }

    // Build a synthetic Var expression for the LHS so the MIR builder's
    // `lowerExprAsPlace` can convert it into a Place. For indexed
    // targets (`x[i][j] = ...`), wrap the Var with Index layers so the
    // MIR builder produces the correct projection.
    auto lhs = std::make_unique<Expr>();
    lhs->kind = ExprKind::Var;
    lhs->source_info.span = spanOf(asNode(tgt));
    lhs->ty   = resolveTy(asNode(tgt));
    if (auto local = resolveLocal(tgt->ID()->getText())) {
        lhs->local = *local;
    } else {
        pushParseError(asNode(tgt), "assignment to undeclared '" + tgt->ID()->getText() + "'");
        lhs->local = 0;
    }

    if (!tgt->getText().empty() && tgt->getText().front() == '*') {
        auto deref = std::make_unique<Expr>();
        deref->kind = ExprKind::Deref;
        deref->source_info.span = spanOf(asNode(tgt));
        deref->ty = resolveTy(asNode(tgt));
        deref->operand_place = std::move(lhs);
        lhs = std::move(deref);
    }

    for (auto* k : tgt->accessKey()) {
        ExprPtr idx;
        if (auto* expr = k->expression()) {
            idx = lowerExpr(asNode(expr));
        }
        if (!idx) {
            pushParseError(asNode(k), "assignment access key did not lower to an expression");
            break;
        }
        auto next = std::make_unique<Expr>();
        next->kind = ExprKind::Index;
        next->source_info.span = spanOf(asNode(tgt));
        next->ty = resolveTy(asNode(tgt));
        next->operand_place = std::move(lhs);
        next->a = std::move(idx);
        lhs = std::move(next);
    }

    auto rhs = lowerExpr(asNode(am->expression()));
    if (!rhs) return nullptr;

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Assign;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();
    out->a    = std::move(lhs);
    out->b    = std::move(rhs);
    return out;
}

ExprPtr AstLowerer::lowerBinaryExpr(const AstNode* node) {
    // The dispatcher in `lowerExpr` handles the precedence-chain rules
    // directly. This entry point exists for constructed-by-hand callers
    // (test harnesses) that want a generic binary builder. Without an
    // operator hint we cannot determine the BinOp, so route through the
    // generic dispatcher.
    return lowerExpr(node);
}

ExprPtr AstLowerer::lowerUnaryExpr(const AstNode* node) {
    auto* un = dynamic_cast<compilerv1Parser::UnaryExprContext*>(const_cast<PT*>(asTree(node)));
    if (!un) {
        pushParseError(node, "lowerUnaryExpr: not UnaryExprContext");
        return nullptr;
    }

    ExprPtr inner = lowerExpr(asNode(un->primary()));
    if (!inner) return nullptr;

    std::string op_text;
    if (!un->children.empty()) {
        op_text = un->children[0]->getText();
    }
    if (op_text == "+") {
        return std::move(inner);
    }
    if (op_text == "*") {
        auto out = std::make_unique<Expr>();
        out->kind = ExprKind::Deref;
        out->source_info.span = spanOf(node);
        out->ty = resolveTy(node);
        out->operand_place = std::move(inner);
        return out;
    }

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Unary;
    out->source_info.span = spanOf(node);
    out->ty = resolveTy(node);
    out->un = (op_text == "!") ? UnOp::Not : UnOp::Neg;
    out->a = std::move(inner);
    return out;
}

ExprPtr AstLowerer::lowerCallExpr(const AstNode* node) {
    auto* c = dynamic_cast<const compilerv1Parser::FunctionCallContext*>(asTree(node));
    if (!c) { pushParseError(node, "lowerCallExpr: not FunctionCallContext"); return nullptr; }
    auto* cm = const_cast<compilerv1Parser::FunctionCallContext*>(c);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Call;
    out->source_info.span = spanOf(node);
    out->ty   = resolveTy(node);
    // HIR's Call carries an opaque `FnDefId`. Without a global function
    // table we leave it as 0 and stash the textual name in `str_value`
    // so downstream MIR-build / borrowck can match by name.
    out->callee = 0;
    if (auto* id = cm->ID()) {
        const std::string name = id->getText();
        out->str_value = name;
        auto it = fn_symbols_.find(name);
        if (it != fn_symbols_.end()) {
            out->callee = it->second;
        }
    }

    if (auto* args = cm->args()) {
        for (auto* e : args->expression()) {
            if (auto a = lowerExpr(asNode(e))) out->args.push_back(std::move(a));
        }
    }
    return out;
}

ExprPtr AstLowerer::lowerRefExpr(const AstNode* node) {
    auto* b = dynamic_cast<const compilerv1Parser::BorrowExprContext*>(asTree(node));
    if (!b) { pushParseError(node, "lowerRefExpr: not BorrowExprContext"); return nullptr; }
    auto* bm = const_cast<compilerv1Parser::BorrowExprContext*>(b);

    auto operand = std::make_unique<Expr>();
    operand->kind = ExprKind::Var;
    operand->source_info.span = spanOf(node);
    operand->ty   = resolveTy(node);
    if (auto* id = bm->ID()) {
        if (auto local = resolveLocal(id->getText())) {
            operand->local = *local;
        } else {
            pushParseError(node, "borrow of undeclared '" + id->getText() + "'");
        }
    }

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Ref;
    out->source_info.span = spanOf(node);
    out->ty   = resolveTy(node);
    out->ref_mut = (bm->NCONST() != nullptr) ? RefMut::Mut : RefMut::Shared;
    out->operand_place = std::move(operand);
    return out;
}

ExprPtr AstLowerer::lowerBlockExpr(const AstNode* node) {
    auto* blk = dynamic_cast<const compilerv1Parser::BlockContext*>(asTree(node));
    if (!blk) { pushParseError(node, "lowerBlockExpr: not BlockContext"); return nullptr; }
    auto* bm = const_cast<compilerv1Parser::BlockContext*>(blk);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Block;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();

    pushScope();
    // Apollo's `block` rule alternates `statement` and `returnStmt`. To
    // preserve source order we walk all children and dispatch per type.
    for (PT* child : bm->children) {
        if (auto* stmt = dynamic_cast<compilerv1Parser::StatementContext*>(child)) {
            if (auto s = lowerStmt(asNode(stmt))) out->stmts.push_back(std::move(s));
        } else if (auto* ret = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
            // `return e;` becomes a trailing ExprStmt holding a Return expr.
            auto ret_expr = lowerReturnExpr(asNode(ret));
            if (!ret_expr) continue;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(ret));
            s->expr = std::move(ret_expr);
            out->stmts.push_back(std::move(s));
        }
        // Other terminals (`{`, `}`) and unhandled rules are ignored.
    }
    popScope();
    return out;
}

ExprPtr AstLowerer::lowerIfExpr(const AstNode* node) {
    auto* i = dynamic_cast<const compilerv1Parser::IfStatementContext*>(asTree(node));
    if (!i) { pushParseError(node, "lowerIfExpr: not IfStatementContext"); return nullptr; }
    auto* im = const_cast<compilerv1Parser::IfStatementContext*>(i);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::If;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();
    out->cond = lowerExpr(asNode(im->expression()));
    auto blocks = im->block();
    if (!blocks.empty()) out->then_branch = lowerBlockExpr(asNode(blocks[0]));
    if (blocks.size() > 1) out->else_branch = lowerBlockExpr(asNode(blocks[1]));
    return out;
}

ExprPtr AstLowerer::lowerWhileExpr(const AstNode* node) {
    auto* w = dynamic_cast<const compilerv1Parser::WhileStatementContext*>(asTree(node));
    if (!w) { pushParseError(node, "lowerWhileExpr: not WhileStatementContext"); return nullptr; }
    auto* wm = const_cast<compilerv1Parser::WhileStatementContext*>(w);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::While;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();
    out->cond = lowerExpr(asNode(wm->expression()));
    out->body = lowerBlockExpr(asNode(wm->block()));
    return out;
}

ExprPtr AstLowerer::lowerLoopExpr(const AstNode* node) {
    // Apollo grammar: `loop block`. Lower as `while(true) body`, which
    // is the simplest representation that gives MIR-build a real
    // back-edge without introducing a new HIR construct.
    auto* lp = dynamic_cast<const compilerv1Parser::LoopStatementContext*>(asTree(node));
    if (!lp) { pushParseError(node, "lowerLoopExpr: not LoopStatementContext"); return nullptr; }
    auto* lpm = const_cast<compilerv1Parser::LoopStatementContext*>(lp);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::While;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();

    auto t = std::make_unique<Expr>();
    t->kind = ExprKind::LitBool;
    t->scalar = 1;
    t->ty = tcx_.mkUnit();
    t->source_info.span = spanOf(node);
    out->cond = std::move(t);

    out->body = lowerBlockExpr(asNode(lpm->block()));
    return out;
}

ExprPtr AstLowerer::lowerMatchExpr(const AstNode* node) {
    pushParseError(node, "lowerMatchExpr: hand-built match has no AST surface");
    return nullptr;
}

ExprPtr AstLowerer::lowerSwitchExpr(const AstNode* node) {
    auto* sw = dynamic_cast<const compilerv1Parser::SwitchStatementContext*>(asTree(node));
    if (!sw) {
        pushParseError(node, "lowerSwitchExpr: not SwitchStatementContext");
        return nullptr;
    }
    auto* swm = const_cast<compilerv1Parser::SwitchStatementContext*>(sw);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Block;
    out->source_info.span = spanOf(node);
    out->ty = tcx_.mkUnit();

    auto makeVarExpr = [&](LocalVarId local, mir::Ty ty, const AstNode* origin) -> ExprPtr {
        auto expr = std::make_unique<Expr>();
        expr->kind = ExprKind::Var;
        expr->local = local;
        expr->ty = ty;
        expr->source_info.span = spanOf(origin);
        return expr;
    };
    auto makeBoolExpr = [&](bool value, const AstNode* origin) -> ExprPtr {
        auto expr = std::make_unique<Expr>();
        expr->kind = ExprKind::LitBool;
        expr->scalar = value ? 1 : 0;
        expr->ty = tcx_.mkBool();
        expr->source_info.span = spanOf(origin);
        return expr;
    };
    auto wrapExprStmt = [&](ExprPtr expr, const AstNode* origin) -> StmtPtr {
        auto stmt = std::make_unique<Stmt>();
        stmt->kind = StmtKind::ExprStmt;
        stmt->source_info.span = spanOf(origin);
        stmt->expr = std::move(expr);
        return stmt;
    };

    pushScope();
    mir::SourceInfo si{};
    si.span = spanOf(node);

    mir::Ty discrTy = resolveTy(asNode(swm->expression()));
    const std::string discrName = "__switch_discr_" + std::to_string(current_.body->locals.size());
    LocalVarId discrLocal = declareLocal(discrName, discrTy, /*is_mut=*/false, si);
    auto discrLet = std::make_unique<Stmt>();
    discrLet->kind = StmtKind::Let;
    discrLet->source_info = si;
    discrLet->let_local = discrLocal;
    discrLet->init = lowerExpr(asNode(swm->expression()));
    out->stmts.push_back(std::move(discrLet));

    const std::string matchedName = "__switch_matched_" + std::to_string(current_.body->locals.size());
    LocalVarId matchedLocal = declareLocal(matchedName, tcx_.mkBool(), /*is_mut=*/true, si);
    auto matchedLet = std::make_unique<Stmt>();
    matchedLet->kind = StmtKind::Let;
    matchedLet->source_info = si;
    matchedLet->let_local = matchedLocal;
    matchedLet->init = makeBoolExpr(false, node);
    out->stmts.push_back(std::move(matchedLet));

    for (auto* arm_ctx : swm->switchCase()) {
        if (!arm_ctx) continue;

        auto cond = std::make_unique<Expr>();
        cond->kind = ExprKind::Binary;
        cond->bin = BinOp::Or;
        cond->ty = tcx_.mkBool();
        cond->source_info.span = spanOf(asNode(arm_ctx));
        cond->a = makeVarExpr(matchedLocal, tcx_.mkBool(), asNode(arm_ctx));

        auto eq = std::make_unique<Expr>();
        eq->kind = ExprKind::Binary;
        eq->bin = BinOp::Eq;
        eq->ty = tcx_.mkBool();
        eq->source_info.span = spanOf(asNode(arm_ctx));
        eq->a = makeVarExpr(discrLocal, discrTy, asNode(arm_ctx));
        eq->b = lowerExpr(asNode(arm_ctx->expression()));
        cond->b = std::move(eq);

        auto body = lowerBlockExpr(asNode(arm_ctx->block()));
        if (!body) continue;

        auto markMatched = std::make_unique<Expr>();
        markMatched->kind = ExprKind::Assign;
        markMatched->ty = tcx_.mkUnit();
        markMatched->source_info.span = spanOf(asNode(arm_ctx));
        markMatched->a = makeVarExpr(matchedLocal, tcx_.mkBool(), asNode(arm_ctx));
        markMatched->b = makeBoolExpr(true, asNode(arm_ctx));
        body->stmts.insert(body->stmts.begin(), wrapExprStmt(std::move(markMatched), asNode(arm_ctx)));

        auto iff = std::make_unique<Expr>();
        iff->kind = ExprKind::If;
        iff->ty = tcx_.mkUnit();
        iff->source_info.span = spanOf(asNode(arm_ctx));
        iff->cond = std::move(cond);
        iff->then_branch = std::move(body);
        out->stmts.push_back(wrapExprStmt(std::move(iff), asNode(arm_ctx)));
    }

    if (auto* def = swm->switchDefault()) {
        auto notMatched = std::make_unique<Expr>();
        notMatched->kind = ExprKind::Unary;
        notMatched->un = UnOp::Not;
        notMatched->ty = tcx_.mkBool();
        notMatched->source_info.span = spanOf(asNode(def));
        notMatched->a = makeVarExpr(matchedLocal, tcx_.mkBool(), asNode(def));

        auto iff = std::make_unique<Expr>();
        iff->kind = ExprKind::If;
        iff->ty = tcx_.mkUnit();
        iff->source_info.span = spanOf(asNode(def));
        iff->cond = std::move(notMatched);
        iff->then_branch = lowerBlockExpr(asNode(def->block()));
        out->stmts.push_back(wrapExprStmt(std::move(iff), asNode(def)));
    }

    popScope();
    return out;
}

// Desugar `for (init; cond; update) body` into
//   { init; while (cond) { body; update; } }
// This keeps the borrow checker honest about the update happening every
// iteration without introducing a new HIR construct.
ExprPtr AstLowerer::lowerForExpr(const AstNode* node) {
    auto* f = dynamic_cast<const compilerv1Parser::ForStatementContext*>(asTree(node));
    if (!f) { pushParseError(node, "lowerForExpr: not ForStatementContext"); return nullptr; }
    auto* fm = const_cast<compilerv1Parser::ForStatementContext*>(f);

    auto outer = std::make_unique<Expr>();
    outer->kind = ExprKind::Block;
    outer->source_info.span = spanOf(node);
    outer->ty = tcx_.mkUnit();

    pushScope();

    // ---- init ------------------------------------------------------
    if (auto* init = fm->forInit()) {
        if (auto* core = init->initCore()) {
            if (auto s = lowerLetStmt(asNode(core))) outer->stmts.push_back(std::move(s));
        } else if (auto* asg = init->assignmentCore()) {
            if (auto e = lowerAssignExpr(asNode(asg))) {
                auto s = std::make_unique<Stmt>();
                s->kind = StmtKind::ExprStmt;
                s->source_info.span = spanOf(asNode(asg));
                s->expr = std::move(e);
                outer->stmts.push_back(std::move(s));
            }
        } else if (auto* e = init->expression()) {
            if (auto le = lowerExpr(asNode(e))) {
                auto s = std::make_unique<Stmt>();
                s->kind = StmtKind::ExprStmt;
                s->source_info.span = spanOf(asNode(e));
                s->expr = std::move(le);
                outer->stmts.push_back(std::move(s));
            }
        }
    }

    // ---- while(cond) { body; update; } ----------------------------
    auto wh = std::make_unique<Expr>();
    wh->kind = ExprKind::While;
    wh->source_info.span = spanOf(node);
    wh->ty = tcx_.mkUnit();
    if (auto* cond = fm->expression()) {
        wh->cond = lowerExpr(asNode(cond));
    } else {
        // Empty test clause -> infinite loop. Synthesise `true`.
        auto t = std::make_unique<Expr>();
        t->kind = ExprKind::LitBool;
        t->scalar = 1;
        t->ty = tcx_.mkUnit();
        wh->cond = std::move(t);
    }

    auto body = lowerBlockExpr(asNode(fm->block()));
    if (!body) {
        body = std::make_unique<Expr>();
        body->kind = ExprKind::Block;
        body->ty   = tcx_.mkUnit();
    }
    if (auto* upd = fm->forUpdate()) {
        ExprPtr ue;
        if (auto* asg = upd->assignmentCore()) ue = lowerAssignExpr(asNode(asg));
        else if (auto* ex = upd->expression()) ue = lowerExpr(asNode(ex));
        if (ue) {
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(upd));
            s->expr = std::move(ue);
            body->stmts.push_back(std::move(s));
        }
    }
    wh->body = std::move(body);

    auto wh_stmt = std::make_unique<Stmt>();
    wh_stmt->kind = StmtKind::ExprStmt;
    wh_stmt->source_info.span = spanOf(node);
    wh_stmt->expr = std::move(wh);
    outer->stmts.push_back(std::move(wh_stmt));

    popScope();
    return outer;
}

// For-in is lowered in two flavors:
//   (a) `for T i in lo .. hi { body }` desugars to
//         { let i = lo; let __end = hi; while (i < __end) { body; i = i + 1; } }
//   (b) `for T i in iter { body }` (single expression, no `..`) keeps the
//       existing best-effort scaffold: evaluate the iterable once, bind
//       the loop variable as unit, push a Todo for the iteration shape.
ExprPtr AstLowerer::lowerForInExpr(const AstNode* node) {
    auto* f = dynamic_cast<const compilerv1Parser::ForInStatementContext*>(asTree(node));
    if (!f) { pushParseError(node, "lowerForInExpr: not ForInStatementContext"); return nullptr; }
    auto* fm = const_cast<compilerv1Parser::ForInStatementContext*>(f);

    auto outer = std::make_unique<Expr>();
    outer->kind = ExprKind::Block;
    outer->source_info.span = spanOf(node);
    outer->ty = tcx_.mkUnit();

    pushScope();

    auto* iterable = fm->forInIterable();
    auto exprs = iterable ? iterable->expression() : std::vector<compilerv1Parser::ExpressionContext*>{};
    const bool is_range = (exprs.size() == 2);

    auto* idTok = fm->ID();
    if (!idTok) {
        popScope();
        pushParseError(node, "for-in without loop variable identifier");
        return outer;
    }

    if (is_range) {
        mir::SourceInfo si{};
        si.span = spanOf(node);
        mir::Ty loopTy = fm->typeRef() ? resolveTy(asNode(fm->typeRef())) : tcx_.mkUnit();

        // let i = lo;
        LocalVarId iLocal = declareLocal(idTok->getText(), loopTy, /*is_mut=*/true, si);
        {
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::Let;
            s->source_info = si;
            s->let_local = iLocal;
            s->init = lowerExpr(asNode(exprs[0]));
            outer->stmts.push_back(std::move(s));
        }

        // let __end = hi;
        LocalVarId endLocal = declareLocal("__forin_end", loopTy, /*is_mut=*/false, si);
        {
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::Let;
            s->source_info = si;
            s->let_local = endLocal;
            s->init = lowerExpr(asNode(exprs[1]));
            outer->stmts.push_back(std::move(s));
        }

        // while (i < __end) { body; i = i + 1; }
        auto wh = std::make_unique<Expr>();
        wh->kind = ExprKind::While;
        wh->source_info.span = si.span;
        wh->ty   = tcx_.mkUnit();

        auto cond = std::make_unique<Expr>();
        cond->kind = ExprKind::Binary;
        cond->bin  = BinOp::Lt;
        cond->ty   = tcx_.mkUnit();
        cond->source_info.span = si.span;
        {
            auto lhs = std::make_unique<Expr>(); lhs->kind = ExprKind::Var; lhs->local = iLocal; lhs->ty = loopTy;
            auto rhs = std::make_unique<Expr>(); rhs->kind = ExprKind::Var; rhs->local = endLocal; rhs->ty = loopTy;
            cond->a = std::move(lhs);
            cond->b = std::move(rhs);
        }
        wh->cond = std::move(cond);

        auto body = lowerBlockExpr(asNode(fm->block()));
        if (!body) {
            body = std::make_unique<Expr>();
            body->kind = ExprKind::Block;
            body->ty   = tcx_.mkUnit();
        }

        // i = i + 1;
        auto step = std::make_unique<Expr>();
        step->kind = ExprKind::Assign;
        step->local = iLocal;
        step->ty = tcx_.mkUnit();
        step->source_info.span = si.span;
        {
            auto add = std::make_unique<Expr>();
            add->kind = ExprKind::Binary;
            add->bin  = BinOp::Add;
            add->ty   = loopTy;
            auto lhs = std::make_unique<Expr>(); lhs->kind = ExprKind::Var; lhs->local = iLocal; lhs->ty = loopTy;
            auto one = std::make_unique<Expr>(); one->kind = ExprKind::LitInt; one->scalar = 1; one->ty = loopTy;
            add->a = std::move(lhs);
            add->b = std::move(one);
            step->a = std::move(add);
        }
        auto stepStmt = std::make_unique<Stmt>();
        stepStmt->kind = StmtKind::ExprStmt;
        stepStmt->source_info = si;
        stepStmt->expr = std::move(step);
        body->stmts.push_back(std::move(stepStmt));

        wh->body = std::move(body);

        auto whStmt = std::make_unique<Stmt>();
        whStmt->kind = StmtKind::ExprStmt;
        whStmt->source_info = si;
        whStmt->expr = std::move(wh);
        outer->stmts.push_back(std::move(whStmt));

        popScope();
        return outer;
    }

    // Non-range for-in is modeled as a synthetic iterator protocol so MIR sees
    // the loop shape and borrow uses even before full iterator lowering lands.
    mir::SourceInfo si{};
    si.span = spanOf(node);
    mir::Ty iterableTy = !exprs.empty() ? resolveTy(asNode(exprs[0])) : tcx_.mkUnit();
    const std::string iterName = "__forin_iter_" + std::to_string(current_.body->locals.size());
    LocalVarId iterLocal = declareLocal(iterName, iterableTy, /*is_mut=*/false, si);
    {
        auto s = std::make_unique<Stmt>();
        s->kind = StmtKind::Let;
        s->source_info = si;
        s->let_local = iterLocal;
        s->init = exprs.empty() ? nullptr : lowerExpr(asNode(exprs[0]));
        outer->stmts.push_back(std::move(s));
    }

    mir::Ty loopTy = fm->typeRef() ? resolveTy(asNode(fm->typeRef())) : tcx_.mkUnit();
    const bool is_mut = (fm->NCONST() != nullptr) || (fm->CONST() == nullptr);
    LocalVarId loopLocal = declareLocal(idTok->getText(), loopTy, is_mut, si);
    {
        auto init = std::make_unique<Expr>();
        init->kind = ExprKind::LitUnit;
        init->ty   = loopTy;
        init->source_info.span = si.span;
        auto s = std::make_unique<Stmt>();
        s->kind = StmtKind::Let;
        s->source_info = si;
        s->let_local = loopLocal;
        s->init = std::move(init);
        outer->stmts.push_back(std::move(s));
    }

    LocalVarId indexLocal = declareLocal("__forin_index_" + std::to_string(current_.body->locals.size()),
        tcx_.mkInt(mir::IntTy::I32), /*is_mut=*/true, si);
    {
        auto init = std::make_unique<Expr>();
        init->kind = ExprKind::LitInt;
        init->scalar = 0;
        init->ty = tcx_.mkInt(mir::IntTy::I32);
        init->source_info.span = si.span;
        auto s = std::make_unique<Stmt>();
        s->kind = StmtKind::Let;
        s->source_info = si;
        s->let_local = indexLocal;
        s->init = std::move(init);
        outer->stmts.push_back(std::move(s));
    }

    auto makeVarExpr = [&](LocalVarId local, mir::Ty ty) -> ExprPtr {
        auto expr = std::make_unique<Expr>();
        expr->kind = ExprKind::Var;
        expr->local = local;
        expr->ty = ty;
        expr->source_info.span = si.span;
        return expr;
    };
    auto makeCallExpr = [&](std::string name, mir::Ty ty) -> ExprPtr {
        auto call = std::make_unique<Expr>();
        call->kind = ExprKind::Call;
        call->str_value = std::move(name);
        call->ty = ty;
        call->source_info.span = si.span;
        return call;
    };

    auto wh = std::make_unique<Expr>();
    wh->kind = ExprKind::While;
    wh->source_info.span = si.span;
    wh->ty = tcx_.mkUnit();
    {
        auto lenCall = makeCallExpr("__apollo_iter_len", tcx_.mkInt(mir::IntTy::I32));
        lenCall->args.push_back(makeVarExpr(iterLocal, iterableTy));
        auto cond = std::make_unique<Expr>();
        cond->kind = ExprKind::Binary;
        cond->bin = BinOp::Lt;
        cond->ty = tcx_.mkBool();
        cond->source_info.span = si.span;
        cond->a = makeVarExpr(indexLocal, tcx_.mkInt(mir::IntTy::I32));
        cond->b = std::move(lenCall);
        wh->cond = std::move(cond);
    }

    auto body = lowerBlockExpr(asNode(fm->block()));
    if (!body) {
        body = std::make_unique<Expr>();
        body->kind = ExprKind::Block;
        body->ty   = tcx_.mkUnit();
        body->source_info.span = si.span;
    }

    {
        auto getCall = makeCallExpr("__apollo_iter_get", loopTy);
        getCall->args.push_back(makeVarExpr(iterLocal, iterableTy));
        getCall->args.push_back(makeVarExpr(indexLocal, tcx_.mkInt(mir::IntTy::I32)));
        auto assign = std::make_unique<Expr>();
        assign->kind = ExprKind::Assign;
        assign->ty = tcx_.mkUnit();
        assign->source_info.span = si.span;
        assign->a = makeVarExpr(loopLocal, loopTy);
        assign->b = std::move(getCall);
        auto stmt = std::make_unique<Stmt>();
        stmt->kind = StmtKind::ExprStmt;
        stmt->source_info = si;
        stmt->expr = std::move(assign);
        body->stmts.insert(body->stmts.begin(), std::move(stmt));
    }

    {
        auto add = std::make_unique<Expr>();
        add->kind = ExprKind::Binary;
        add->bin = BinOp::Add;
        add->ty = tcx_.mkInt(mir::IntTy::I32);
        add->source_info.span = si.span;
        add->a = makeVarExpr(indexLocal, tcx_.mkInt(mir::IntTy::I32));
        auto one = std::make_unique<Expr>();
        one->kind = ExprKind::LitInt;
        one->scalar = 1;
        one->ty = tcx_.mkInt(mir::IntTy::I32);
        one->source_info.span = si.span;
        add->b = std::move(one);

        auto assign = std::make_unique<Expr>();
        assign->kind = ExprKind::Assign;
        assign->ty = tcx_.mkUnit();
        assign->source_info.span = si.span;
        assign->a = makeVarExpr(indexLocal, tcx_.mkInt(mir::IntTy::I32));
        assign->b = std::move(add);
        auto stmt = std::make_unique<Stmt>();
        stmt->kind = StmtKind::ExprStmt;
        stmt->source_info = si;
        stmt->expr = std::move(assign);
        body->stmts.push_back(std::move(stmt));
    }

    wh->body = std::move(body);
    auto whStmt = std::make_unique<Stmt>();
    whStmt->kind = StmtKind::ExprStmt;
    whStmt->source_info = si;
    whStmt->expr = std::move(wh);
    outer->stmts.push_back(std::move(whStmt));

    popScope();
    return outer;
}

ExprPtr AstLowerer::lowerReturnExpr(const AstNode* node) {
    auto* r = dynamic_cast<const compilerv1Parser::ReturnStmtContext*>(asTree(node));
    if (!r) { pushParseError(node, "lowerReturnExpr: not ReturnStmtContext"); return nullptr; }
    auto* rm = const_cast<compilerv1Parser::ReturnStmtContext*>(r);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Return;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkNever();
    if (auto* e = rm->expression()) {
        out->a = lowerExpr(asNode(e));
    }
    return out;
}

// -----------------------------------------------------------------------------
// Place projections: memberaccess, indexedAccess, casts, aggregates.
// -----------------------------------------------------------------------------

// Build a Var expression for an accessBase that resolves to a local.
// Returns nullptr (and pushes Todo) when the base is `INDEF`, `'sys'`,
// or an unknown identifier. `access_base` is a void* to avoid leaking
// the ANTLR-generated context type into the header.
ExprPtr AstLowerer::varExprForAccessBase(void* access_base, const AstNode* origin) {
    auto* base = static_cast<compilerv1Parser::AccessBaseContext*>(access_base);
    if (!base || !base->ID()) {
        pushParseError(origin, "memberaccess base is not a local identifier");
        return nullptr;
    }
    auto v = std::make_unique<Expr>();
    v->kind = ExprKind::Var;
    v->source_info.span = spanOf(origin);
    v->ty = resolveTy(origin);
    if (auto local = resolveLocal(base->ID()->getText())) {
        v->local = *local;
    } else {
        pushParseError(origin, "memberaccess base '" + base->ID()->getText() + "' is not a local");
        v->local = 0;
    }
    return v;
}

ExprPtr AstLowerer::lowerMemberAccessExpr(const AstNode* node) {
    auto* m = dynamic_cast<const compilerv1Parser::MemberaccessContext*>(asTree(node));
    if (!m) { pushParseError(node, "lowerMemberAccessExpr: not MemberaccessContext"); return nullptr; }
    auto* mm = const_cast<compilerv1Parser::MemberaccessContext*>(m);

    if (auto* call = mm->functionCall()) {
        auto* base_ctx = mm->accessBase();
        const bool namespace_like_base = base_ctx != nullptr &&
            (!base_ctx->ID() || !resolveLocal(base_ctx->ID()->getText()));
        if (namespace_like_base) {
            auto plain = lowerCallExpr(asNode(call));
            if (plain && plain->kind == ExprKind::Call && !plain->str_value.empty()) {
                const std::string prefix = base_ctx->getText();
                plain->str_value = prefix + "." + plain->str_value;
            }
            return plain;
        }
    }

    auto base = varExprForAccessBase(mm->accessBase(), node);
    if (!base) return nullptr;

    // RHS may be a method call or a field read.
    if (auto* call = mm->functionCall()) {
        // No vtable / trait infrastructure exists yet, so we model
        // `obj.method(args)` as `method(obj, args...)` — the receiver
        // is preserved as the first argument so the borrow checker
        // sees the use/move/borrow effects of both the receiver and
        // the arguments. The Field-lookup-style dispatch can be added
        // later once we have method resolution.
        auto plain = lowerCallExpr(asNode(call));
        if (!plain || plain->kind != ExprKind::Call) {
            return plain;
        }
        plain->args.insert(plain->args.begin(), std::move(base));
        return plain;
    }
    if (auto* id = mm->ID()) {
        auto out = std::make_unique<Expr>();
        out->kind = ExprKind::Field;
        out->source_info.span = spanOf(node);
        out->ty = resolveTy(node);
        out->operand_place = std::move(base);
        out->field_name = id->getText();
        out->field_index = 0; // type resolution would fill this in
        return out;
    }
    pushParseError(node, "memberaccess RHS is neither functionCall nor ID");
    return nullptr;
}

ExprPtr AstLowerer::lowerIndexedAccessExpr(const AstNode* node) {
    auto* ia = dynamic_cast<const compilerv1Parser::IndexedAccessContext*>(asTree(node));
    if (!ia) { pushParseError(node, "lowerIndexedAccessExpr: not IndexedAccessContext"); return nullptr; }
    auto* iam = const_cast<compilerv1Parser::IndexedAccessContext*>(ia);

    if (!iam->ID()) {
        pushParseError(node, "indexedAccess without ID");
        return nullptr;
    }

    // Start with the base Var.
    ExprPtr cur = std::make_unique<Expr>();
    cur->kind = ExprKind::Var;
    cur->source_info.span = spanOf(node);
    cur->ty = resolveTy(node);
    if (auto local = resolveLocal(iam->ID()->getText())) {
        cur->local = *local;
    } else {
        pushParseError(node, "indexed access on undeclared '" + iam->ID()->getText() + "'");
        cur->local = 0;
    }

    // Each accessKey produces another Index layer.
    for (auto* k : iam->accessKey()) {
        ExprPtr idx;
        if (auto* expr = k->expression()) {
            idx = lowerExpr(asNode(expr));
        }
        if (!idx) {
            pushParseError(asNode(k), "indexed access key did not lower to an expression");
            return nullptr;
        }
        auto next = std::make_unique<Expr>();
        next->kind = ExprKind::Index;
        next->source_info.span = spanOf(node);
        next->ty = resolveTy(node);
        next->operand_place = std::move(cur);
        next->a = std::move(idx);
        cur = std::move(next);
    }
    return cur;
}

ExprPtr AstLowerer::lowerCastExpr(const AstNode* node) {
    auto* c = dynamic_cast<const compilerv1Parser::CastExprContext*>(asTree(node));
    if (!c) { pushParseError(node, "lowerCastExpr: not CastExprContext"); return nullptr; }
    auto* cm = const_cast<compilerv1Parser::CastExprContext*>(c);

    auto src = lowerExpr(asNode(cm->primary()));
    if (!src) return nullptr;

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Cast;
    out->source_info.span = spanOf(node);
    out->ty = cm->castType() ? resolveTy(asNode(cm->castType())) : resolveTy(node);
    out->cast_kind = CastKind::IntToInt; // sharpened when type resolver lands
    out->a = std::move(src);
    return out;
}

ExprPtr AstLowerer::lowerCompositeLiteralExpr(const AstNode* node) {
    auto* cl = dynamic_cast<const compilerv1Parser::CompositeLiteralContext*>(asTree(node));
    if (!cl) { pushParseError(node, "lowerCompositeLiteralExpr: not CompositeLiteralContext"); return nullptr; }
    auto* clm = const_cast<compilerv1Parser::CompositeLiteralContext*>(cl);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Aggregate;
    out->agg_kind = AggregateKind::Tuple;
    out->source_info.span = spanOf(node);
    out->ty = resolveTy(node);
    for (auto* e : clm->expression()) {
        auto v = lowerExpr(asNode(e));
        if (!v) return nullptr;
        out->args.push_back(std::move(v));
    }
    return out;
}

ExprPtr AstLowerer::lowerBraceInitializerExpr(const AstNode* node) {
    auto* bi = dynamic_cast<const compilerv1Parser::BraceInitializerContext*>(asTree(node));
    if (!bi) { pushParseError(node, "lowerBraceInitializerExpr: not BraceInitializerContext"); return nullptr; }
    auto* bim = const_cast<compilerv1Parser::BraceInitializerContext*>(bi);

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Aggregate;
    out->source_info.span = spanOf(node);
    out->ty = resolveTy(node);

    bool any_named = false;
    for (auto* el : bim->braceInitializerElement()) {
        if (el->ID()) any_named = true;
    }
    out->agg_kind = any_named ? AggregateKind::Struct : AggregateKind::Array;

    for (auto* el : bim->braceInitializerElement()) {
        if (auto* e = el->expression()) {
            auto v = lowerExpr(asNode(e));
            if (!v) return nullptr;
            out->args.push_back(std::move(v));
        }
    }
    return out;
}

ExprPtr AstLowerer::lowerMemberAssignmentExpr(const AstNode* node) {
    auto* ma = dynamic_cast<const compilerv1Parser::MemberAssignmentContext*>(asTree(node));
    if (!ma) { pushParseError(node, "lowerMemberAssignmentExpr: not MemberAssignmentContext"); return nullptr; }
    auto* mam = const_cast<compilerv1Parser::MemberAssignmentContext*>(ma);

    auto base = varExprForAccessBase(mam->accessBase(), node);
    if (!base) return nullptr;

    auto field = std::make_unique<Expr>();
    field->kind = ExprKind::Field;
    field->source_info.span = spanOf(node);
    field->ty = resolveTy(node);
    field->operand_place = std::move(base);
    if (mam->ID()) field->field_name = mam->ID()->getText();
    field->field_index = 0;

    auto rhs = lowerExpr(asNode(mam->expression()));
    if (!rhs) return nullptr;

    auto out = std::make_unique<Expr>();
    out->kind = ExprKind::Assign;
    out->source_info.span = spanOf(node);
    out->ty   = tcx_.mkUnit();
    out->a    = std::move(field);
    out->b    = std::move(rhs);
    return out;
}

ExprPtr AstLowerer::lowerTryCatchStmt(const AstNode* node) {
    auto* tc = dynamic_cast<const compilerv1Parser::TryCatchStatementContext*>(asTree(node));
    if (!tc) { pushParseError(node, "lowerTryCatchStmt: not TryCatchStatementContext"); return nullptr; }
    auto* tcm = const_cast<compilerv1Parser::TryCatchStatementContext*>(tc);

    auto blocks = tcm->block();
    if (blocks.size() < 2) {
        pushParseError(node, "tryCatch missing try or catch block");
        return nullptr;
    }

    // Desugar as `{ try-body ; { let exc; catch-body } }`. We do not
    // model exceptional control flow yet — the borrow checker sees both
    // bodies sequentially, which is conservative but safe.
    auto outer = std::make_unique<Expr>();
    outer->kind = ExprKind::Block;
    outer->source_info.span = spanOf(node);
    outer->ty = tcx_.mkUnit();

    auto try_expr = lowerBlockExpr(asNode(blocks[0]));
    if (try_expr) {
        auto s = std::make_unique<Stmt>();
        s->kind = StmtKind::ExprStmt;
        s->source_info = try_expr->source_info;
        s->expr = std::move(try_expr);
        outer->stmts.push_back(std::move(s));
    }

    // Declare the exception binding in a nested scope so it is visible
    // only inside the catch body.
    pushScope();
    LocalVarId exc_id = 0;
    if (auto* id = tcm->ID()) {
        mir::SourceInfo si{}; si.span = spanOf(node);
        exc_id = declareLocal(id->getText(), tcx_.mkUnit(), false, si);
    }
    auto let = std::make_unique<Stmt>();
    let->kind = StmtKind::Let;
    let->source_info.span = spanOf(node);
    let->let_local = exc_id;

    auto catch_expr = lowerBlockExpr(asNode(blocks[1]));
    popScope();

    auto inner_block = std::make_unique<Expr>();
    inner_block->kind = ExprKind::Block;
    inner_block->source_info.span = spanOf(asNode(blocks[1]));
    inner_block->ty = tcx_.mkUnit();
    inner_block->stmts.push_back(std::move(let));
    if (catch_expr) {
        auto s = std::make_unique<Stmt>();
        s->kind = StmtKind::ExprStmt;
        s->source_info = catch_expr->source_info;
        s->expr = std::move(catch_expr);
        inner_block->stmts.push_back(std::move(s));
    }

    auto s2 = std::make_unique<Stmt>();
    s2->kind = StmtKind::ExprStmt;
    s2->source_info = inner_block->source_info;
    s2->expr = std::move(inner_block);
    outer->stmts.push_back(std::move(s2));
    return outer;
}

ExprPtr AstLowerer::lowerAutocatchStmt(const AstNode* node) {
    auto* ac = dynamic_cast<const compilerv1Parser::AutocatchStatementContext*>(asTree(node));
    if (!ac) { pushParseError(node, "lowerAutocatchStmt: not AutocatchStatementContext"); return nullptr; }
    auto* acm = const_cast<compilerv1Parser::AutocatchStatementContext*>(ac);

    auto outer = std::make_unique<Expr>();
    outer->kind = ExprKind::Block;
    outer->source_info.span = spanOf(node);
    outer->ty = tcx_.mkUnit();

    pushScope();
    LocalVarId id_local = 0;
    if (auto* id = acm->ID()) {
        mir::SourceInfo si{}; si.span = spanOf(node);
        id_local = declareLocal(id->getText(), tcx_.mkUnit(), false, si);
    }
    auto let = std::make_unique<Stmt>();
    let->kind = StmtKind::Let;
    let->source_info.span = spanOf(node);
    let->let_local = id_local;
    outer->stmts.push_back(std::move(let));

    if (auto* blk = acm->block()) {
        auto body = lowerBlockExpr(asNode(blk));
        if (body) {
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info = body->source_info;
            s->expr = std::move(body);
            outer->stmts.push_back(std::move(s));
        }
    }
    popScope();
    return outer;
}

// -----------------------------------------------------------------------------
// Statement lowering.
// -----------------------------------------------------------------------------

StmtPtr AstLowerer::lowerStmt(const AstNode* node) {
    auto* sc = dynamic_cast<const compilerv1Parser::StatementContext*>(asTree(node));
    if (!sc) {
        pushParseError(node, "lowerStmt: not StatementContext");
        return nullptr;
    }
    auto* sm = const_cast<compilerv1Parser::StatementContext*>(sc);

    auto wrapExprStmt = [&](ExprPtr expr, const AstNode* origin) -> StmtPtr {
        if (!expr) return nullptr;
        auto stmt = std::make_unique<Stmt>();
        stmt->kind = StmtKind::ExprStmt;
        stmt->source_info.span = spanOf(origin);
        stmt->expr = std::move(expr);
        return stmt;
    };
    auto makeUnitBlock = [&](const AstNode* origin) -> ExprPtr {
        auto expr = std::make_unique<Expr>();
        expr->kind = ExprKind::Block;
        expr->ty = tcx_.mkUnit();
        expr->source_info.span = spanOf(origin);
        return expr;
    };
    auto declareUnitBinding = [&](const std::string& name, mir::Ty ty, bool is_mut, const AstNode* origin) -> StmtPtr {
        mir::SourceInfo si{};
        si.span = spanOf(origin);
        LocalVarId local = declareLocal(name, ty, is_mut, si);
        auto init = std::make_unique<Expr>();
        init->kind = ExprKind::LitUnit;
        init->ty = ty;
        init->source_info.span = si.span;
        auto stmt = std::make_unique<Stmt>();
        stmt->kind = StmtKind::Let;
        stmt->source_info = si;
        stmt->let_local = local;
        stmt->init = std::move(init);
        return stmt;
    };
    auto makeCallExpr = [&](std::string name, const AstNode* origin, mir::Ty ty = nullptr) -> ExprPtr {
        auto call = std::make_unique<Expr>();
        call->kind = ExprKind::Call;
        call->str_value = std::move(name);
        call->ty = ty ? ty : tcx_.mkUnit();
        call->source_info.span = spanOf(origin);
        return call;
    };

    // The `statement` rule is a large alternation. We pick the
    // first child that the rule actually parsed; ANTLR keeps exactly
    // one non-terminal child for an alternation.
    for (PT* child : sm->children) {
        if (auto* ptr = dynamic_cast<compilerv1Parser::PointerContext*>(child)) {
            if (ptr->ID().size() >= 1) {
                return declareUnitBinding(ptr->ID(0)->getText(), ptr->typeRef() ? resolveTy(asNode(ptr->typeRef())) : tcx_.mkUnit(), true, asNode(ptr));
            }
            return wrapExprStmt(makeUnitBlock(asNode(ptr)), asNode(ptr));
        }
        if (auto* init = dynamic_cast<compilerv1Parser::InitContext*>(child)) {
            return lowerLetStmt(asNode(init));
        }
        if (auto* global = dynamic_cast<compilerv1Parser::GlobalInitContext*>(child)) {
            return global->init() ? lowerLetStmt(asNode(global->init())) : nullptr;
        }
        if (auto* bridge = dynamic_cast<compilerv1Parser::BridgeInitContext*>(child)) {
            return bridge->init() ? lowerLetStmt(asNode(bridge->init())) : nullptr;
        }
        if (auto* easy = dynamic_cast<compilerv1Parser::EasyInitContext*>(child)) {
            return lowerLetStmt(asNode(easy));
        }
        if (auto* print = dynamic_cast<compilerv1Parser::PrintContext*>(child)) {
            auto call = makeCallExpr(print->getText().find("println") != std::string::npos ? "sys.println" : "sys.stdout", asNode(print));
            if (auto* e = print->expression()) {
                call->args.push_back(lowerExpr(asNode(e)));
            }
            return wrapExprStmt(std::move(call), asNode(print));
        }
        if (auto* assertStmt = dynamic_cast<compilerv1Parser::AssertStmtContext*>(child)) {
            auto call = makeCallExpr("assert", asNode(assertStmt));
            if (auto* e = assertStmt->expression()) {
                call->args.push_back(lowerExpr(asNode(e)));
            }
            return wrapExprStmt(std::move(call), asNode(assertStmt));
        }
        if (auto* asgn = dynamic_cast<compilerv1Parser::AssignmentContext*>(child)) {
            auto* core = asgn->assignmentCore();
            auto e = lowerAssignExpr(asNode(core));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(asgn));
            s->expr = std::move(e);
            return s;
        }
        if (auto* iff = dynamic_cast<compilerv1Parser::IfStatementContext*>(child)) {
            auto e = lowerIfExpr(asNode(iff));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(iff));
            s->expr = std::move(e);
            return s;
        }
        if (auto* wh = dynamic_cast<compilerv1Parser::WhileStatementContext*>(child)) {
            auto e = lowerWhileExpr(asNode(wh));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(wh));
            s->expr = std::move(e);
            return s;
        }
        if (auto* lp = dynamic_cast<compilerv1Parser::LoopStatementContext*>(child)) {
            auto e = lowerLoopExpr(asNode(lp));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(lp));
            s->expr = std::move(e);
            return s;
        }
        if (auto* fr = dynamic_cast<compilerv1Parser::ForStatementContext*>(child)) {
            auto e = lowerForExpr(asNode(fr));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(fr));
            s->expr = std::move(e);
            return s;
        }
        if (auto* fi = dynamic_cast<compilerv1Parser::ForInStatementContext*>(child)) {
            auto e = lowerForInExpr(asNode(fi));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(fi));
            s->expr = std::move(e);
            return s;
        }
        if (auto* sw = dynamic_cast<compilerv1Parser::SwitchStatementContext*>(child)) {
            auto e = lowerSwitchExpr(asNode(sw));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(sw));
            s->expr = std::move(e);
            return s;
        }
        if (auto* fc = dynamic_cast<compilerv1Parser::FunctionCallContext*>(child)) {
            auto e = lowerCallExpr(asNode(fc));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(fc));
            s->expr = std::move(e);
            return s;
        }
        if (auto* ac = dynamic_cast<compilerv1Parser::AsyncCallContext*>(child)) {
            return ac->functionCall() ? wrapExprStmt(lowerCallExpr(asNode(ac->functionCall())), asNode(ac)) : nullptr;
        }
        if (auto* thread = dynamic_cast<compilerv1Parser::ThreadContext*>(child)) {
            return thread->functionCall() ? wrapExprStmt(lowerCallExpr(asNode(thread->functionCall())), asNode(thread)) : nullptr;
        }
        if (auto* ma = dynamic_cast<compilerv1Parser::MemberaccessContext*>(child)) {
            auto e = lowerMemberAccessExpr(asNode(ma));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(ma));
            s->expr = std::move(e);
            return s;
        }
        if (auto* stdinStmt = dynamic_cast<compilerv1Parser::StdinStmtContext*>(child)) {
            if (!stdinStmt->ID()) {
                pushParseError(asNode(stdinStmt), "stdin statement missing binding identifier");
                return nullptr;
            }
            auto local = resolveLocal(stdinStmt->ID()->getText());
            if (!local) {
                pushParseError(asNode(stdinStmt), "stdin statement target '" + stdinStmt->ID()->getText() + "' is not declared");
                return nullptr;
            }
            auto lhs = std::make_unique<Expr>();
            lhs->kind = ExprKind::Var;
            lhs->local = *local;
            lhs->ty = resolveTy(asNode(stdinStmt));
            lhs->source_info.span = spanOf(asNode(stdinStmt));
            auto rhs = makeCallExpr("sys.stdin", asNode(stdinStmt), lhs->ty);
            auto assign = std::make_unique<Expr>();
            assign->kind = ExprKind::Assign;
            assign->ty = tcx_.mkUnit();
            assign->source_info.span = spanOf(asNode(stdinStmt));
            assign->a = std::move(lhs);
            assign->b = std::move(rhs);
            return wrapExprStmt(std::move(assign), asNode(stdinStmt));
        }
        if (auto* blk = dynamic_cast<compilerv1Parser::BlockContext*>(child)) {
            auto e = lowerBlockExpr(asNode(blk));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(blk));
            s->expr = std::move(e);
            return s;
        }
        if (auto* cscope = dynamic_cast<compilerv1Parser::CscopeContext*>(child)) {
            return cscope->block() ? wrapExprStmt(lowerBlockExpr(asNode(cscope->block())), asNode(cscope)) : nullptr;
        }
        if (auto* unsafeBlock = dynamic_cast<compilerv1Parser::UnsafeBlockContext*>(child)) {
            return unsafeBlock->block() ? wrapExprStmt(lowerBlockExpr(asNode(unsafeBlock->block())), asNode(unsafeBlock)) : nullptr;
        }
        if (auto* bypass = dynamic_cast<compilerv1Parser::BypassBlockContext*>(child)) {
            return bypass->block() ? wrapExprStmt(lowerBlockExpr(asNode(bypass->block())), asNode(bypass)) : nullptr;
        }
        if (auto* autofmt = dynamic_cast<compilerv1Parser::AutofmtdeclareScopeContext*>(child)) {
            return autofmt->block() ? wrapExprStmt(lowerBlockExpr(asNode(autofmt->block())), asNode(autofmt)) : nullptr;
        }
        if (auto* eventHandler = dynamic_cast<compilerv1Parser::EventHandlerStmtContext*>(child)) {
            auto block = makeUnitBlock(asNode(eventHandler));
            if (auto* e = eventHandler->expression()) {
                if (auto lowered = lowerExpr(asNode(e))) {
                    block->stmts.push_back(wrapExprStmt(std::move(lowered), asNode(eventHandler)));
                }
            }
            if (auto* blk = eventHandler->block()) {
                if (auto lowered = lowerBlockExpr(asNode(blk))) {
                    block->stmts.push_back(wrapExprStmt(std::move(lowered), asNode(eventHandler)));
                }
            }
            return wrapExprStmt(std::move(block), asNode(eventHandler));
        }
        if (auto* schedulerInsert = dynamic_cast<compilerv1Parser::SchedulerInsertStmtContext*>(child)) {
            auto block = makeUnitBlock(asNode(schedulerInsert));
            if (auto* e = schedulerInsert->expression()) {
                if (auto lowered = lowerExpr(asNode(e))) {
                    block->stmts.push_back(wrapExprStmt(std::move(lowered), asNode(schedulerInsert)));
                }
            }
            if (auto* blk = schedulerInsert->block()) {
                if (auto lowered = lowerBlockExpr(asNode(blk))) {
                    block->stmts.push_back(wrapExprStmt(std::move(lowered), asNode(schedulerInsert)));
                }
            }
            return wrapExprStmt(std::move(block), asNode(schedulerInsert));
        }
        if (auto* schedulerStart = dynamic_cast<compilerv1Parser::SchedulerStartStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(schedulerStart)), asNode(schedulerStart));
        }
        if (auto* schedulerVoid = dynamic_cast<compilerv1Parser::SchedulerVoidStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(schedulerVoid)), asNode(schedulerVoid));
        }
        if (auto* rdwindow = dynamic_cast<compilerv1Parser::RdwindowStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(rdwindow)), asNode(rdwindow));
        }
        if (auto* syscallStmt = dynamic_cast<compilerv1Parser::SyscallStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(syscallStmt)), asNode(syscallStmt));
        }
        if (auto* nativeMode = dynamic_cast<compilerv1Parser::NativemodeContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(nativeMode)), asNode(nativeMode));
        }
        if (auto* inlineForeign = dynamic_cast<compilerv1Parser::InlineForeignBlockContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(inlineForeign)), asNode(inlineForeign));
        }
        if (auto* induct = dynamic_cast<compilerv1Parser::InductStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(induct)), asNode(induct));
        }
        if (auto* release = dynamic_cast<compilerv1Parser::ReleaseStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(release)), asNode(release));
        }
        if (auto* instance = dynamic_cast<compilerv1Parser::InstanceContext*>(child)) {
            if (instance->ID()) {
                return declareUnitBinding(instance->ID()->getText(), resolveTy(asNode(instance)), true, asNode(instance));
            }
            return wrapExprStmt(makeUnitBlock(asNode(instance)), asNode(instance));
        }
        if (auto* lambda = dynamic_cast<compilerv1Parser::LambdaContext*>(child)) {
            if (lambda->ID()) {
                return declareUnitBinding(lambda->ID()->getText(), lambda->typeRef() ? resolveTy(asNode(lambda->typeRef())) : tcx_.mkUnit(), false, asNode(lambda));
            }
            return wrapExprStmt(makeUnitBlock(asNode(lambda)), asNode(lambda));
        }
        if (auto* closure = dynamic_cast<compilerv1Parser::ClosureContext*>(child)) {
            if (closure->ID()) {
                return declareUnitBinding(closure->ID()->getText(), closure->typeRef() ? resolveTy(asNode(closure->typeRef())) : tcx_.mkUnit(), false, asNode(closure));
            }
            return wrapExprStmt(makeUnitBlock(asNode(closure)), asNode(closure));
        }
        if (auto* srcDecl = dynamic_cast<compilerv1Parser::SrcDeclContext*>(child)) {
            if (srcDecl->ID()) {
                return declareUnitBinding(srcDecl->ID()->getText(), tcx_.mkUnit(), false, asNode(srcDecl));
            }
            return wrapExprStmt(makeUnitBlock(asNode(srcDecl)), asNode(srcDecl));
        }
        if (auto* ltoInit = dynamic_cast<compilerv1Parser::LtoInitContext*>(child)) {
            return ltoInit->expression() ? wrapExprStmt(lowerExpr(asNode(ltoInit->expression())), asNode(ltoInit)) : wrapExprStmt(makeUnitBlock(asNode(ltoInit)), asNode(ltoInit));
        }
        if (auto* ltoTypeset = dynamic_cast<compilerv1Parser::LtoTypesetStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(ltoTypeset)), asNode(ltoTypeset));
        }
        if (auto* instancePush = dynamic_cast<compilerv1Parser::InstancepushContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(instancePush)), asNode(instancePush));
        }
        if (auto* mnt = dynamic_cast<compilerv1Parser::MntDeclContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(mnt)), asNode(mnt));
        }
        if (auto* mallocStmt = dynamic_cast<compilerv1Parser::MallocContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(mallocStmt)), asNode(mallocStmt));
        }
        if (auto* delalc = dynamic_cast<compilerv1Parser::DelalcContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(delalc)), asNode(delalc));
        }
        if (auto* freeStmt = dynamic_cast<compilerv1Parser::FreeContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(freeStmt)), asNode(freeStmt));
        }
        if (auto* plcnew = dynamic_cast<compilerv1Parser::PlcnewContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(plcnew)), asNode(plcnew));
        }
        if (auto* typedefSession = dynamic_cast<compilerv1Parser::TypedefOpstructSessionContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(typedefSession)), asNode(typedefSession));
        }
        if (auto* typedefCreate = dynamic_cast<compilerv1Parser::TypedefOpstructCreateStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(typedefCreate)), asNode(typedefCreate));
        }
        if (auto* typedefPhrase = dynamic_cast<compilerv1Parser::TypedefOpstructPhraseStmtContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(typedefPhrase)), asNode(typedefPhrase));
        }
        if (auto* cls = dynamic_cast<compilerv1Parser::ClassContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(cls)), asNode(cls));
        }
        if (auto* st = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(st)), asNode(st));
        }
        if (auto* iface = dynamic_cast<compilerv1Parser::InterfaceDeclContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(iface)), asNode(iface));
        }
        if (auto* tmpl = dynamic_cast<compilerv1Parser::TemplateDeclContext*>(child)) {
            return wrapExprStmt(makeUnitBlock(asNode(tmpl)), asNode(tmpl));
        }
        if (auto* tc = dynamic_cast<compilerv1Parser::TryCatchStatementContext*>(child)) {
            auto e = lowerTryCatchStmt(asNode(tc));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(tc));
            s->expr = std::move(e);
            return s;
        }
        if (auto* au = dynamic_cast<compilerv1Parser::AutocatchStatementContext*>(child)) {
            auto e = lowerAutocatchStmt(asNode(au));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(au));
            s->expr = std::move(e);
            return s;
        }
        if (auto* ma = dynamic_cast<compilerv1Parser::MemberAssignmentContext*>(child)) {
            auto e = lowerMemberAssignmentExpr(asNode(ma));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(ma));
            s->expr = std::move(e);
            return s;
        }
        if (auto* rs = dynamic_cast<compilerv1Parser::ReturnStmtContext*>(child)) {
            auto e = lowerReturnExpr(asNode(rs));
            if (!e) return nullptr;
            auto s = std::make_unique<Stmt>();
            s->kind = StmtKind::ExprStmt;
            s->source_info.span = spanOf(asNode(rs));
            s->expr = std::move(e);
            return s;
        }
    }

    pushParseError(node, "statement variant not yet lowered");
    return nullptr;
}

StmtPtr AstLowerer::lowerLetStmt(const AstNode* node) {
    auto* tree = asTree(node);

    // Resolve to the actual init-core context regardless of whether
    // the caller passed an `init`, `initCore`, or `easyInit`.
    compilerv1Parser::InitCoreContext* core = nullptr;
    compilerv1Parser::EasyInitContext* easy = nullptr;
    if (auto* ic = dynamic_cast<compilerv1Parser::InitContext*>(const_cast<PT*>(tree))) {
        core = ic->initCore();
    } else if (auto* c = dynamic_cast<compilerv1Parser::InitCoreContext*>(const_cast<PT*>(tree))) {
        core = c;
    } else if (auto* e = dynamic_cast<compilerv1Parser::EasyInitContext*>(const_cast<PT*>(tree))) {
        easy = e;
    } else {
        pushParseError(node, "lowerLetStmt: not an init/easyInit/initCore");
        return nullptr;
    }

    std::string name;
    bool is_mut = true;
    mir::Ty ty = nullptr;
    ExprPtr init_expr;
    mir::SourceInfo si{};
    si.span = spanOf(node);

    if (core) {
        if (core->CONST()) is_mut = false;
        if (auto* id = core->ID()) name = id->getText();
        ty = core->typeRef() ? resolveTy(asNode(core->typeRef())) : resolveTy(node);
        if (auto* e = core->expression()) init_expr = lowerExpr(asNode(e));
    } else if (easy) {
        if (easy->CONST()) is_mut = false;
        if (auto* id = easy->ID()) name = id->getText();
        ty = resolveTy(node);
        if (auto* e = easy->expression()) init_expr = lowerExpr(asNode(e));
    }

    if (name.empty()) {
        pushParseError(node, "let statement has no binding name");
        return nullptr;
    }

    LocalVarId id = declareLocal(name, ty, is_mut, si);

    auto s = std::make_unique<Stmt>();
    s->kind        = StmtKind::Let;
    s->source_info = si;
    s->let_local   = id;
    s->init        = std::move(init_expr);
    return s;
}

StmtPtr AstLowerer::lowerExprStmt(const AstNode* node) {
    auto e = lowerExpr(node);
    if (!e) return nullptr;
    auto s = std::make_unique<Stmt>();
    s->kind = StmtKind::ExprStmt;
    s->source_info.span = spanOf(node);
    s->expr = std::move(e);
    return s;
}

} // namespace apollo::hir
