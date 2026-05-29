// Apollo MIR — core IR.
//
// See `/memories/repo/mir-core.md` for the full design discussion. This
// header is the canonical declaration of every IR node.

#ifndef APOLLO_MIR_MIR_H
#define APOLLO_MIR_MIR_H

#include "source_info.h"
#include "ty.h"

#include <cstdint>
#include <optional>
#include <string>
#include <variant>
#include <vector>

namespace apollo::mir {

using LocalId = std::uint32_t;
using BbId    = std::uint32_t;
using FieldId = std::uint32_t;
using VariantId = std::uint32_t;

constexpr LocalId kReturnLocal = 0;
constexpr BbId    kInvalidBb   = static_cast<BbId>(-1);

enum class LocalKind : std::uint8_t { ReturnPointer, Arg, Var, Temp, ManagedVar /* GC root slot */ };

struct LocalDecl {
    Ty         ty = nullptr;
    Mutability mutability = Mutability::Not;
    LocalKind  kind = LocalKind::Temp;
    bool       internal = false;
    SourceInfo source_info{};
    std::string debug_name; // optional
};

enum class PlaceElemKind : std::uint8_t {
    Deref,
    Field,         // FieldId + Ty
    Index,         // LocalId (dynamic index)
    ConstantIndex, // offset + min_length + from_end
    Subslice,      // from..to (from_end flips end-relative)
    Downcast,      // VariantId
    OpaqueCast,    // Ty
    Subtype,       // Ty
};

struct PlaceElem {
    PlaceElemKind kind;
    FieldId       field = 0;
    Ty            ty = nullptr;
    LocalId       index_local = 0;
    std::uint64_t offset = 0;
    std::uint64_t min_length = 0;
    std::uint64_t from = 0;
    std::uint64_t to = 0;
    bool          from_end = false;
    VariantId     variant = 0;
};

struct Place {
    LocalId local = 0;
    std::vector<PlaceElem> projection;

    bool operator==(const Place&) const = default;
};

// ---------- Operand / Constant ----------

enum class ConstKind : std::uint8_t { ScalarInt, ScalarBool, ScalarChar, Unit, Str };

struct Constant {
    ConstKind kind = ConstKind::Unit;
    std::uint64_t scalar = 0;     // bit pattern for ints/bool/char
    Ty            ty = nullptr;
    std::string   str_value;       // for ConstKind::Str
};

enum class OperandKind : std::uint8_t { Copy, Move, Constant };

struct Operand {
    OperandKind kind = OperandKind::Copy;
    Place       place;
    struct Constant constant;
};

// ---------- Rvalue ----------

enum class BorrowKind : std::uint8_t { Shared, Mut, MutTwoPhase };

enum class BinOp : std::uint8_t {
    Add, Sub, Mul, Div, Rem,
    BitXor, BitAnd, BitOr,
    Shl, Shr,
    Eq, Lt, Le, Ne, Ge, Gt,
    Offset,
};

enum class UnOp : std::uint8_t { Not, Neg };

enum class CastKind : std::uint8_t {
    IntToInt, IntToFloat, FloatToInt, FloatToFloat,
    PtrToInt, IntToPtr, PtrToPtr, Unsize, FnPtrToPtr,
};

enum class AggregateKind : std::uint8_t { Tuple, Array, Adt, Closure };

enum class RvalueKind : std::uint8_t {
    Use, Repeat, Ref, AddressOf, Len,
    Cast, BinaryOp, CheckedBinaryOp, UnaryOp,
    Discriminant, Aggregate, ShallowInitBox, CopyForDeref,
};

struct Rvalue {
    RvalueKind kind;
    // Use, Repeat, Cast, UnaryOp: single operand
    Operand a{};
    // Repeat: count constant; BinaryOp: rhs
    Operand b{};
    std::uint64_t repeat_count = 0;
    // Ref/AddressOf/Len/Discriminant/CopyForDeref: place
    Place place;
    BorrowKind borrow_kind = BorrowKind::Shared;
    Region     region{};
    Mutability mutability = Mutability::Not;
    // Cast
    CastKind   cast_kind = CastKind::IntToInt;
    Ty         cast_ty = nullptr;
    // BinaryOp / CheckedBinaryOp / UnaryOp
    BinOp      bin_op = BinOp::Add;
    UnOp       un_op  = UnOp::Not;
    // Aggregate
    AggregateKind agg_kind = AggregateKind::Tuple;
    std::vector<Operand> operands;
    Ty agg_ty = nullptr;
    VariantId agg_variant = 0;
};

// ---------- Statement ----------

enum class StatementKind : std::uint8_t {
    Assign,
    StorageLive,
    StorageDead,
    SetDiscriminant,
    Deinit,
    Retag,
    FakeRead,
    PlaceMention,
    Nop,
};

struct Statement {
    StatementKind kind = StatementKind::Nop;
    SourceInfo source_info{};
    Place  place;
    LocalId local = 0;
    VariantId variant = 0;
    Rvalue rvalue{};
};

// ---------- Terminator ----------

enum class UnwindActionKind : std::uint8_t { Continue, UnreachableU, Terminate, Cleanup };
struct UnwindAction {
    UnwindActionKind kind = UnwindActionKind::Continue;
    BbId cleanup_target = kInvalidBb;
};

struct SwitchTargets {
    std::vector<std::uint64_t> values;  // discriminant values
    std::vector<BbId>          targets; // values.size() targets + 1 otherwise-target at the back
};

enum class TerminatorKind : std::uint8_t {
    Goto, SwitchInt, Return, Unreachable,
    Drop, Call, Assert, FalseEdge, FalseUnwind,
};

struct Terminator {
    TerminatorKind kind = TerminatorKind::Unreachable;
    SourceInfo source_info{};
    BbId goto_target = kInvalidBb;
    Operand switch_discr{};
    SwitchTargets switch_targets{};
    Place drop_place;
    BbId  drop_target = kInvalidBb;
    UnwindAction unwind{};
    Operand call_func{};
    std::vector<Operand> call_args;
    Place   call_dest;
    BbId    call_target = kInvalidBb;
    Operand assert_cond{};
    bool    assert_expected = true;
    std::string assert_msg;
    BbId    assert_target = kInvalidBb;
    BbId    false_real_target = kInvalidBb;
    BbId    false_imaginary_target = kInvalidBb;
};

// ---------- Body ----------

struct BasicBlockData {
    std::vector<Statement> statements;
    Terminator terminator{};
    bool is_cleanup = false;
};

struct Body {
    std::vector<BasicBlockData> blocks;
    std::vector<LocalDecl>      locals;
    std::vector<SourceScope>    scopes;
    std::uint32_t               arg_count = 0;
    Span                        span{};
    std::string                 name;

    BbId addBlock() {
        blocks.push_back({});
        return static_cast<BbId>(blocks.size() - 1);
    }
    [[nodiscard]] LocalId addLocal(LocalDecl d) {
        locals.push_back(std::move(d));
        return static_cast<LocalId>(locals.size() - 1);
    }
    SourceScopeId addScope(SourceScope s) {
        scopes.push_back(std::move(s));
        return static_cast<SourceScopeId>(scopes.size() - 1);
    }
};

// Compute the type of a Place after walking its projection list. Returns
// nullptr if a projection is inconsistent with the local type.
Ty placeTy(const Place& p, const Body& body, const TyCtxt& tcx);

} // namespace apollo::mir

#endif
