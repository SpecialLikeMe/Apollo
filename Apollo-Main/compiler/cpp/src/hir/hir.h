// Apollo HIR — minimal typed surface (foundation).
//
// HIR sits between the ANTLR ParseTree and the MIR. It is intentionally
// small: every expression carries a resolved type and a source span, but
// no information that the MIR can derive from the CFG. Name resolution
// has already happened by the time something becomes HIR, so identifiers
// are pre-resolved into `LocalVarId` (function-local) indices.
//
// This first cut is feature-light. It supports literals, locals,
// assignment, binary/unary ops, blocks, if/else, while loops, return,
// break/continue, references, and direct calls. It is enough to drive
// the MIR builder and exercise the borrow checker end-to-end.

#ifndef APOLLO_HIR_HIR_H
#define APOLLO_HIR_HIR_H

#include "../mir/source_info.h"
#include "../mir/ty.h"

#include <memory>
#include <optional>
#include <string>
#include <vector>

namespace apollo::hir {

using LocalVarId = std::uint32_t;
using FnDefId    = std::uint32_t;

struct LocalDecl {
    std::string name;
    mir::Ty     ty = nullptr;
    bool        mutable_ = false;
    mir::SourceInfo source_info{};
};

enum class BinOp : std::uint8_t {
    Add, Sub, Mul, Div, Rem,
    BitAnd, BitOr, BitXor, Shl, Shr,
    And, Or, // logical: caller must desugar to if-else or accept BitAnd/Or
    Eq, Ne, Lt, Le, Gt, Ge,
};

enum class UnOp : std::uint8_t { Not, Neg };

enum class RefMut : std::uint8_t { Shared, Mut };

struct Expr;
using ExprPtr = std::unique_ptr<Expr>;

struct Stmt;
using StmtPtr = std::unique_ptr<Stmt>;

enum class ExprKind : std::uint8_t {
    LitInt, LitBool, LitChar, LitStr, LitUnit,
    Var, Assign,
    Binary, Unary,
    Deref,
    Block, If, While, Loop, Match,
    Return, Break, Continue,
    Call, Ref, AddrOf,
    Field,      // operand_place.field — struct member access
    Index,      // operand_place[a] — array/slice index
    Cast,       // (ty)a
    Aggregate,  // tuple / array / struct literal — args[] are elements
};

enum class CastKind : std::uint8_t {
    IntToInt, IntToFloat, FloatToInt, FloatToFloat,
    PtrToInt, IntToPtr, PtrToPtr,
};

enum class AggregateKind : std::uint8_t { Tuple, Array, Struct };

struct Arm {
    std::int64_t discriminant = 0;
    ExprPtr body;
};

struct Expr {
    ExprKind kind;
    mir::Ty  ty = nullptr;
    mir::SourceInfo source_info{};

    // LitInt / LitBool / LitChar
    std::uint64_t scalar = 0;
    // LitStr
    std::string str_value;
    // Var / Assign target
    LocalVarId local = 0;
    // Assign (rhs), Unary, Return value
    ExprPtr a;
    ExprPtr b;
    // Binary
    BinOp bin = BinOp::Add;
    UnOp  un  = UnOp::Not;
    // Block
    std::vector<StmtPtr> stmts;
    ExprPtr tail;
    // If / While / Loop
    ExprPtr cond;
    ExprPtr then_branch;
    ExprPtr else_branch;
    ExprPtr body;
    // Match
    ExprPtr scrutinee;
    std::vector<Arm> arms;
    ExprPtr default_arm;
    // Call
    FnDefId callee = 0;
    std::vector<ExprPtr> args;
    // Ref / AddrOf
    RefMut ref_mut = RefMut::Shared;
    ExprPtr operand_place; // place expression (Var, Deref, etc.)
    // Field: `field_name` is the unresolved name; `field_index` is
    // filled by type resolution (zero until then).
    std::string field_name;
    std::uint32_t field_index = 0;
    // Cast
    CastKind cast_kind = CastKind::IntToInt;
    // Aggregate
    AggregateKind agg_kind = AggregateKind::Tuple;
};

enum class StmtKind : std::uint8_t { Let, ExprStmt };

struct Stmt {
    StmtKind kind = StmtKind::ExprStmt;
    mir::SourceInfo source_info{};
    LocalVarId let_local = 0;
    ExprPtr init;     // for Let
    ExprPtr expr;     // for ExprStmt
};

struct Body {
    std::string name;
    mir::Ty     return_ty = nullptr;
    std::uint32_t param_count = 0;
    std::vector<LocalDecl> locals; // first param_count are params, then locals/temps
    ExprPtr root_block;            // expected to be an ExprKind::Block
    mir::Span span{};
};

} // namespace apollo::hir

#endif
