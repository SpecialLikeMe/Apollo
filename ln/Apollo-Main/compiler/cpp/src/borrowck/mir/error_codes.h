// =============================================================================
// Apollo MIR borrow checker — Error code catalog.
// =============================================================================
//
// One central enum + descriptor table keeps the diagnostics consistent
// and makes it possible to render `--explain Exxxx` style help. Numbers
// match rustc where there's a direct correspondence; Apollo-specific
// codes start at 9000.
//
// Each entry has:
//   * code      — the stable numeric id
//   * tag       — short identifier used in tests ("E0382", "AP9001")
//   * short_msg — one-line description used as the default `.message`
//   * help      — multi-line explanation, machine-readable for IDEs
//
// Adding a new code:
//   1. Append to the X-macro list APOLLO_ERROR_CODES below.
//   2. Add tests in apollo_borrowck_tests.cpp.

#ifndef APOLLO_MIR_BORROWCK_ERROR_CODES_H
#define APOLLO_MIR_BORROWCK_ERROR_CODES_H

#include <cstdint>
#include <string>

namespace apollo::mir::borrowck {

// X-macro: X(Enum, Number, Tag, ShortMsg)
// Rustc-numbered codes preserve their numbers. Apollo additions live
// in the 9000-9999 range.
#define APOLLO_ERROR_CODES(X) \
    /* ----- Initialization & moves ----- */ \
    X(UseOfUninit,                381, "E0381", "use of possibly-uninitialized binding") \
    X(UseOfMovedValue,            382, "E0382", "use of moved value") \
    X(PartialMove,                383, "E0383", "partial reinitialization of moved value") \
    X(AssignTwiceToImmut,         384, "E0384", "cannot assign twice to immutable binding") \
    /* ----- Borrow conflicts ----- */ \
    X(ClosureRequiresUnique,      500, "E0500", "closure requires unique access") \
    X(BorrowConflictsClosure,     501, "E0501", "borrow conflicts with closure capture") \
    X(MutImmutBorrowOverlap,      502, "E0502", "cannot borrow as immutable while mutably borrowed") \
    X(UseOfMutBorrowed,           503, "E0503", "value used while mutably borrowed") \
    X(MoveIntoClosure,            504, "E0504", "cannot move into closure that holds an outstanding borrow") \
    X(MoveOutOfBorrowedWhileLive, 505, "E0505", "cannot move out due to outstanding borrow") \
    X(AssignToBorrowed,           506, "E0506", "cannot assign while borrowed") \
    X(MoveOutOfBorrowed,          507, "E0507", "cannot move out of borrowed content") \
    X(MoveOutOfArray,             508, "E0508", "cannot move out of array element") \
    X(MoveOutOfDtor,              509, "E0509", "cannot move out of a type with destructor") \
    X(AssignInMatchGuard,         510, "E0510", "cannot assign to variable in match guard") \
    X(TwoClosuresUnique,          524, "E0524", "two closures require unique access to the same value") \
    X(AssignToImmutable,          594, "E0594", "cannot assign to immutable variable") \
    X(CannotBorrowAsMut,          596, "E0596", "cannot borrow as mutable") \
    X(DoesNotLiveLongEnough,      597, "E0597", "borrow does not live long enough") \
    X(MutBorrowOverlap,           499, "E0499", "cannot borrow as mutable more than once") \
    /* ----- Lifetimes & temporaries ----- */ \
    X(TempDroppedWhileBorrowed,   716, "E0716", "temporary value dropped while still borrowed") \
    X(BorrowAcrossYield,          712, "E0712", "thread-local value borrowed across yield/await") \
    X(BorrowPackedField,          713, "E0713", "cannot borrow packed field") \
    X(NestedBorrowOfClosureRef,   714, "E0714", "indirect-mutable-write through shared closure capture") \
    /* ----- Apollo-specific ----- */ \
    X(UnsafeDerefInSafe,         9001, "AP9001", "raw pointer dereference outside `@unsafe`") \
    X(BypassNoOpInPureFn,        9002, "AP9002", "`@bypass` has no effect inside a pure function") \
    X(GcRootEscape,              9003, "AP9003", "GC-managed reference escapes its scope without barrier") \
    X(IndirectMoveOutOfRef,      9004, "AP9004", "cannot move out through a `&` reference") \
    X(DropOrderInversion,        9005, "AP9005", "drop order inversion may cause use-after-free") \
    X(ConcurrentBorrowAcrossSP,  9006, "AP9006", "borrow held across a safepoint may be invalidated by GC") \
    X(BorrowOfDeinitField,       9007, "AP9007", "cannot borrow field of de-initialized parent") \
    X(MutableAliasInUnsafe,      9008, "AP9008", "two `&mut` to overlapping memory inside `@unsafe`")

// Enum auto-generated from the X-macro.
enum class ErrorCode : std::uint16_t {
#define APOLLO_X(Enum, Num, Tag, Msg) Enum = Num,
    APOLLO_ERROR_CODES(APOLLO_X)
#undef APOLLO_X
};

// Lookup descriptor for a given code.
struct ErrorDescriptor {
    ErrorCode   code;
    const char* tag;       // "E0499", "AP9001"
    const char* short_msg; // human-readable summary
};

const ErrorDescriptor* describe(ErrorCode code);
const char* tagOf(ErrorCode code);
const char* shortMsgOf(ErrorCode code);

} // namespace apollo::mir::borrowck

#endif
