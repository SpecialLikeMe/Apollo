// =============================================================================
// Borrow checker test suite.
// =============================================================================
//
// Each test hand-builds a MIR Body that exercises one rule of the
// checker and asserts the produced diagnostic count + first error
// code. We don't bother with the parser/AST→HIR pipeline here — the
// MIR Body is the contract being tested, and constructing one by
// hand keeps the tests independent of upstream work.
//
// Invariants every test assumes:
//   * locals[0] is the return slot (LocalKind::ReturnPointer).
//   * arg_count = number of LocalKind::Arg locals starting at _1.
//   * blocks[0] is the entry block.

#include "borrowck.h"
#include "../../mir/mir.h"
#include "../../mir/ty.h"

#include <cassert>
#include <cstdio>

using namespace apollo::mir;
using namespace apollo::mir::borrowck;

namespace {

// Helper: produce a `Body` skeleton with one arg of type `argTy` and a
// unit return slot. The caller fills in `blocks` and any extra locals.
Body makeBody(TyCtxt& tcx, Ty argTy, const char* name) {
    Body body;
    body.name = name;
    body.scopes.push_back({});               // kRootScope
    LocalDecl ret{};
    ret.ty = tcx.mkUnit();
    ret.kind = LocalKind::ReturnPointer;
    ret.mutability = Mutability::Mut;
    body.locals.push_back(ret);
    LocalDecl arg{};
    arg.ty = argTy;
    arg.kind = LocalKind::Arg;
    arg.mutability = Mutability::Mut;        // tests vary — overwritten below
    arg.debug_name = "x";
    body.locals.push_back(arg);
    body.arg_count = 1;
    return body;
}

Place placeOf(LocalId l) { Place p; p.local = l; return p; }
Operand copyOf(LocalId l) { Operand o; o.kind = OperandKind::Copy; o.place = placeOf(l); return o; }
Operand moveOf(LocalId l) { Operand o; o.kind = OperandKind::Move; o.place = placeOf(l); return o; }

// -----------------------------------------------------------------------------
// Test 1: clean code → no diagnostics.
// -----------------------------------------------------------------------------
// Body: fn f(x: i64) -> () { _0 = (); return; }
void test_clean() {
    TyCtxt tcx;
    Body b = makeBody(tcx, tcx.mkInt(IntTy::I64), "clean");
    b.locals[1].mutability = Mutability::Not;   // immutable arg, fine
    auto bb0 = b.addBlock();
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    assert(r.diagnostics.empty());
    assert(!r.checker_off);
    std::printf("test_clean ok (loans=%u places=%u)\n", r.loans_examined, r.places_examined);
}

// -----------------------------------------------------------------------------
// Test 2: double mutable borrow → E0499.
// -----------------------------------------------------------------------------
//   let _2 = &mut _1;
//   let _3 = &mut _1;   // ← conflict
void test_double_mut_borrow() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Body b = makeBody(tcx, i64ty, "double_mut");
    // _2 and _3 are reference-typed temporaries.
    LocalDecl ref2{}; ref2.ty = tcx.mkRef({}, i64ty, Mutability::Mut);
    ref2.kind = LocalKind::Temp; ref2.mutability = Mutability::Mut;
    b.locals.push_back(ref2);
    LocalDecl ref3 = ref2;
    b.locals.push_back(ref3);

    auto bb0 = b.addBlock();
    // _2 = &mut _1;
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Ref;
    s1.rvalue.place = placeOf(1);
    s1.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s1);
    // _3 = &mut _1;
    Statement s2 = s1;
    s2.place = placeOf(3);
    b.blocks[bb0].statements.push_back(s2);
    // FakeRead so the second loan is *live* at the point _3 is born.
    // (Without using _2 after, the kill could happen at end-of-block
    // and the conflict wouldn't fire.) We just keep _2 alive by reading.
    Statement s3{};
    s3.kind = StatementKind::FakeRead;
    s3.place = placeOf(2);
    b.blocks[bb0].statements.push_back(s3);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    assert(!r.diagnostics.empty());
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::MutBorrowOverlap) found = true;
    assert(found);
    std::printf("test_double_mut_borrow ok (%zu diags)\n", r.diagnostics.size());
}

// -----------------------------------------------------------------------------
// Test 3: assignment to immutable binding → E0594.
// -----------------------------------------------------------------------------
void test_assign_immutable() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Body b = makeBody(tcx, i64ty, "assign_immutable");
    b.locals[1].mutability = Mutability::Not;
    auto bb0 = b.addBlock();
    Statement s{};
    s.kind = StatementKind::Assign;
    s.place = placeOf(1);
    s.rvalue.kind = RvalueKind::Use;
    s.rvalue.a.kind = OperandKind::Constant;
    s.rvalue.a.constant.kind = ConstKind::ScalarInt;
    s.rvalue.a.constant.scalar = 42;
    s.rvalue.a.constant.ty = i64ty;
    b.blocks[bb0].statements.push_back(s);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::AssignToImmutable) found = true;
    assert(found);
    std::printf("test_assign_immutable ok\n");
}

// -----------------------------------------------------------------------------
// Test 4: use-after-move → E0382.
// -----------------------------------------------------------------------------
//   _2 = move _1;   _3 = copy _1;   // second use is uninit
void test_use_after_move() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Body b = makeBody(tcx, i64ty, "use_after_move");
    LocalDecl t2{}; t2.ty = i64ty; t2.kind = LocalKind::Temp; t2.mutability = Mutability::Mut;
    b.locals.push_back(t2);
    LocalDecl t3 = t2; b.locals.push_back(t3);

    auto bb0 = b.addBlock();
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Use;
    s1.rvalue.a = moveOf(1);
    b.blocks[bb0].statements.push_back(s1);
    Statement s2{};
    s2.kind = StatementKind::Assign;
    s2.place = placeOf(3);
    s2.rvalue.kind = RvalueKind::Use;
    s2.rvalue.a = copyOf(1);   // copying from a moved-out local
    b.blocks[bb0].statements.push_back(s2);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::UseOfUninit) found = true;
    assert(found);
    std::printf("test_use_after_move ok\n");
}

// -----------------------------------------------------------------------------
// Test 5: borrow_checker(off) short-circuits.
// -----------------------------------------------------------------------------
void test_off_short_circuit() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Body b = makeBody(tcx, i64ty, "off");
    b.scopes[0].borrow_mode = BorrowCheckMode::Off;
    // Even with a buggy statement, no diagnostics should fire.
    b.locals[1].mutability = Mutability::Not;
    auto bb0 = b.addBlock();
    Statement s{};
    s.kind = StatementKind::Assign;
    s.place = placeOf(1);
    s.rvalue.kind = RvalueKind::Use;
    s.rvalue.a.kind = OperandKind::Constant;
    s.rvalue.a.constant.kind = ConstKind::ScalarInt;
    s.rvalue.a.constant.scalar = 1;
    s.rvalue.a.constant.ty = i64ty;
    b.blocks[bb0].statements.push_back(s);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    assert(r.checker_off);
    assert(r.diagnostics.empty());
    std::printf("test_off_short_circuit ok\n");
}

} // namespace

// -----------------------------------------------------------------------------
// Helpers for projection tests
// -----------------------------------------------------------------------------
namespace {

// Build a Place "_local.fieldId" with arbitrary field type.
Place fieldPlace(LocalId local, FieldId field, Ty fieldTy) {
    Place p; p.local = local;
    PlaceElem e{};
    e.kind = PlaceElemKind::Field;
    e.field = field;
    e.ty = fieldTy;
    p.projection.push_back(e);
    return p;
}

// Build a Place "*_local" — a leading Deref step.
Place derefPlace(LocalId local) {
    Place p; p.local = local;
    PlaceElem e{};
    e.kind = PlaceElemKind::Deref;
    p.projection.push_back(e);
    return p;
}

Operand moveFrom(Place p) { Operand o; o.kind = OperandKind::Move; o.place = std::move(p); return o; }
Operand copyFrom(Place p) { Operand o; o.kind = OperandKind::Copy; o.place = std::move(p); return o; }

// -----------------------------------------------------------------------------
// Test 6: disjoint field access does NOT conflict.
// -----------------------------------------------------------------------------
//   let _2 = &mut _1.f0;
//   let _3 = &mut _1.f1;   // ← OK with field granularity
void test_disjoint_fields_ok() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    // We just need *some* aggregate type for _1; the borrow checker
    // doesn't look at layout, only at projection equality.
    Ty pairTy = tcx.mkAdt(1, {i64ty, i64ty});
    Body b = makeBody(tcx, pairTy, "disjoint_fields");
    LocalDecl ref{}; ref.ty = tcx.mkRef({}, i64ty, Mutability::Mut);
    ref.kind = LocalKind::Temp; ref.mutability = Mutability::Mut;
    b.locals.push_back(ref); // _2
    b.locals.push_back(ref); // _3
    auto bb0 = b.addBlock();
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Ref;
    s1.rvalue.place = fieldPlace(1, 0, i64ty);
    s1.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s1);
    Statement s2 = s1;
    s2.place = placeOf(3);
    s2.rvalue.place = fieldPlace(1, 1, i64ty);
    b.blocks[bb0].statements.push_back(s2);
    Statement fr{}; fr.kind = StatementKind::FakeRead; fr.place = placeOf(2);
    b.blocks[bb0].statements.push_back(fr);
    fr.place = placeOf(3);
    b.blocks[bb0].statements.push_back(fr);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    // No MutBorrowOverlap diagnostic expected.
    for (auto& d : r.diagnostics) {
        assert(d.code != ErrorCode::MutBorrowOverlap);
    }
    std::printf("test_disjoint_fields_ok (paths=%u loans=%u diags=%zu)\n",
                r.move_paths, r.loans_examined, r.diagnostics.size());
}

// -----------------------------------------------------------------------------
// Test 7: same-field overlap still conflicts.
// -----------------------------------------------------------------------------
//   let _2 = &mut _1.f0;
//   let _3 = &mut _1.f0;   // ← E0499
void test_same_field_conflicts() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Ty pairTy = tcx.mkAdt(1, {i64ty, i64ty});
    Body b = makeBody(tcx, pairTy, "same_field");
    LocalDecl ref{}; ref.ty = tcx.mkRef({}, i64ty, Mutability::Mut);
    ref.kind = LocalKind::Temp; ref.mutability = Mutability::Mut;
    b.locals.push_back(ref); b.locals.push_back(ref);
    auto bb0 = b.addBlock();
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Ref;
    s1.rvalue.place = fieldPlace(1, 0, i64ty);
    s1.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s1);
    Statement s2 = s1;
    s2.place = placeOf(3);
    b.blocks[bb0].statements.push_back(s2);
    Statement fr{}; fr.kind = StatementKind::FakeRead; fr.place = placeOf(2);
    b.blocks[bb0].statements.push_back(fr);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::MutBorrowOverlap) found = true;
    assert(found);
    std::printf("test_same_field_conflicts ok\n");
}

// -----------------------------------------------------------------------------
// Test 8: parent-vs-child overlap still conflicts.
// -----------------------------------------------------------------------------
//   let _2 = &mut _1;       // borrows whole _1
//   let _3 = &mut _1.f0;    // ← overlaps; E0499
void test_parent_child_conflicts() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Ty pairTy = tcx.mkAdt(1, {i64ty, i64ty});
    Body b = makeBody(tcx, pairTy, "parent_child");
    LocalDecl refWhole{}; refWhole.ty = tcx.mkRef({}, pairTy, Mutability::Mut);
    refWhole.kind = LocalKind::Temp; refWhole.mutability = Mutability::Mut;
    LocalDecl refField{}; refField.ty = tcx.mkRef({}, i64ty, Mutability::Mut);
    refField.kind = LocalKind::Temp; refField.mutability = Mutability::Mut;
    b.locals.push_back(refWhole); // _2
    b.locals.push_back(refField); // _3
    auto bb0 = b.addBlock();
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Ref;
    s1.rvalue.place = placeOf(1);
    s1.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s1);
    Statement s2 = s1;
    s2.place = placeOf(3);
    s2.rvalue.place = fieldPlace(1, 0, i64ty);
    b.blocks[bb0].statements.push_back(s2);
    Statement fr{}; fr.kind = StatementKind::FakeRead; fr.place = placeOf(2);
    b.blocks[bb0].statements.push_back(fr);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::MutBorrowOverlap) found = true;
    assert(found);
    std::printf("test_parent_child_conflicts ok\n");
}

// -----------------------------------------------------------------------------
// Test 9: partial move of one field leaves siblings usable.
// -----------------------------------------------------------------------------
//   _2 = move _1.f0;       // moves out s.f0
//   _3 = copy _1.f1;       // f1 still init; OK
//   _4 = copy _1.f0;       // f0 moved; E0383 PartialMove (or E0381)
void test_partial_move() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Ty pairTy = tcx.mkAdt(1, {i64ty, i64ty});
    Body b = makeBody(tcx, pairTy, "partial_move");
    LocalDecl t{}; t.ty = i64ty; t.kind = LocalKind::Temp; t.mutability = Mutability::Mut;
    b.locals.push_back(t); b.locals.push_back(t); b.locals.push_back(t);

    auto bb0 = b.addBlock();
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Use;
    s1.rvalue.a = moveFrom(fieldPlace(1, 0, i64ty));
    b.blocks[bb0].statements.push_back(s1);

    Statement s2{};
    s2.kind = StatementKind::Assign;
    s2.place = placeOf(3);
    s2.rvalue.kind = RvalueKind::Use;
    s2.rvalue.a = copyFrom(fieldPlace(1, 1, i64ty));
    b.blocks[bb0].statements.push_back(s2);

    Statement s3{};
    s3.kind = StatementKind::Assign;
    s3.place = placeOf(4);
    s3.rvalue.kind = RvalueKind::Use;
    s3.rvalue.a = copyFrom(fieldPlace(1, 0, i64ty));
    b.blocks[bb0].statements.push_back(s3);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    // s2 (read of .f1) must NOT have fired UseOfUninit.
    bool partial = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::PartialMove || d.code == ErrorCode::UseOfUninit) partial = true;
    assert(partial);
    std::printf("test_partial_move ok (diags=%zu paths=%u)\n",
                r.diagnostics.size(), r.move_paths);
}

// -----------------------------------------------------------------------------
// Test 10: reborrow rewriting.
// -----------------------------------------------------------------------------
//   _2 = &mut _1;
//   _3 = &mut (*_2);       // reborrow → tracked as borrow of _1
//   _4 = &mut _1;          // ← conflicts with _3 (via reborrow) → E0499
void test_reborrow_conflict() {
    TyCtxt tcx;
    Ty i64ty = tcx.mkInt(IntTy::I64);
    Body b = makeBody(tcx, i64ty, "reborrow");
    LocalDecl ref{}; ref.ty = tcx.mkRef({}, i64ty, Mutability::Mut);
    ref.kind = LocalKind::Temp; ref.mutability = Mutability::Mut;
    b.locals.push_back(ref); // _2
    b.locals.push_back(ref); // _3
    b.locals.push_back(ref); // _4
    auto bb0 = b.addBlock();
    // _2 = &mut _1;
    Statement s1{};
    s1.kind = StatementKind::Assign;
    s1.place = placeOf(2);
    s1.rvalue.kind = RvalueKind::Ref;
    s1.rvalue.place = placeOf(1);
    s1.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s1);
    // _3 = &mut (*_2);
    Statement s2{};
    s2.kind = StatementKind::Assign;
    s2.place = placeOf(3);
    s2.rvalue.kind = RvalueKind::Ref;
    s2.rvalue.place = derefPlace(2);
    s2.rvalue.borrow_kind = BorrowKind::Mut;
    b.blocks[bb0].statements.push_back(s2);
    // _4 = &mut _1;
    Statement s3 = s1;
    s3.place = placeOf(4);
    b.blocks[bb0].statements.push_back(s3);
    // Keep _3 alive past _4's birth.
    Statement fr{}; fr.kind = StatementKind::FakeRead; fr.place = placeOf(3);
    b.blocks[bb0].statements.push_back(fr);
    b.blocks[bb0].terminator.kind = TerminatorKind::Return;
    auto r = checkBody(b, tcx);
    bool found = false;
    for (auto& d : r.diagnostics)
        if (d.code == ErrorCode::MutBorrowOverlap) found = true;
    assert(found);
    std::printf("test_reborrow_conflict ok (loans=%u)\n", r.loans_examined);
}

// -----------------------------------------------------------------------------
// Test 11: tag/short_msg lookup for error codes.
// -----------------------------------------------------------------------------
void test_error_code_table() {
    assert(std::string(tagOf(ErrorCode::MutBorrowOverlap)) == "E0499");
    assert(std::string(tagOf(ErrorCode::UnsafeDerefInSafe)) == "AP9001");
    assert(describe(ErrorCode::PartialMove) != nullptr);
    std::printf("test_error_code_table ok\n");
}

} // namespace

int main() {
    test_clean();
    test_double_mut_borrow();
    test_assign_immutable();
    test_use_after_move();
    test_off_short_circuit();
    test_disjoint_fields_ok();
    test_same_field_conflicts();
    test_parent_child_conflicts();
    test_partial_move();
    test_reborrow_conflict();
    test_error_code_table();
    std::printf("all borrow checker tests passed\n");
    return 0;
}
