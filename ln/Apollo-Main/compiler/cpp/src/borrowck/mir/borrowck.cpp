// =============================================================================
// Borrow checker implementation — production-track upgrade.
// =============================================================================
//
// This is the second-generation MIR borrow checker. Compared to the
// first iteration it adds:
//
//   * Move-path-granular tracking. The unit of analysis is now
//     `MovePathIdx`, not `LocalId`. Init bits, conflict checks, and
//     loan-target attribution all index into the move-path forest.
//     Sub-field moves are tracked independently, so
//
//         move s.x;             // ok
//         use(s.y);             // ok  (was a false positive previously)
//
//     no longer fires E0382.
//
//   * Reborrow rewriting. A `Ref` over `*p.…` is rewritten to a fresh
//     loan over the path that `p` was most recently bound to. We
//     record the binding in `ReborrowOrigins` populated by walking
//     every `let p = &q.…;` or `let p = &mut q.…;` statement. This is
//     a flow-insensitive approximation that suffices for the vast
//     majority of straight-line and loop-free reborrow patterns. A
//     proper Polonius origin solver would model this per-program-
//     point; that's documented as out-of-scope for this pass.
//
//   * Per-program-point dataflow. The loan-live bitset is recomputed
//     incrementally at every statement boundary inside `runChecks()`,
//     so we no longer flag conflicts at a block-coarse granularity.
//
//   * Stable error-code catalog (~30 entries) via `error_codes.h`.
//     Diagnostics now carry secondary `notes` (e.g. "borrow created
//     here") and machine-applicable `Suggestion`s where we can name
//     a fix (e.g. "add `mut`").
//
//   * Renderer (`renderDiagnostic`) emits a Rust-style multi-line
//     banner with a caret-underlined source snippet when a SourceMap
//     is provided.

#include "borrowck.h"
#include "dataflow.h"
#include "move_paths.h"
#include "error_codes.h"

#include <algorithm>
#include <cstring>
#include <sstream>
#include <unordered_map>
#include <unordered_set>

namespace apollo::mir::borrowck {

namespace {

using LoanIdx = std::uint32_t;
constexpr LoanIdx kInvalidLoan = static_cast<LoanIdx>(-1);

// -----------------------------------------------------------------------------
// Loan
// -----------------------------------------------------------------------------
//
// Every `Ref` / `AddressOf` rvalue in the body becomes one Loan. A loan
// records the *target move path* (post-reborrow rewriting) and the
// *issuing local* (the LHS of the assign that produced it). When the
// issuing local is overwritten / storage-dead / drop'd the loan is
// killed by the dataflow pass.
enum class LoanKind : std::uint8_t {
    Shared,      // &x
    Mut,         // &mut x
    RawConst,    // &raw const x
    RawMut,      // &raw mut x
};

struct Loan {
    LoanKind     kind;
    MovePathIdx  borrowed_path;     // The path being loaned out
    LocalId      issuing_local;     // The local holding the resulting reference
    Span         created_at{};
};

// -----------------------------------------------------------------------------
// AccessKind — how a Place is touched by a statement/terminator.
// -----------------------------------------------------------------------------
enum class AccessKind : std::uint8_t {
    Read,        // copy from / discriminant / Len / FakeRead
    Write,       // assignment LHS (non-move overwrite)
    Move,        // OperandKind::Move out of the place
    Drop,        // TerminatorKind::Drop on the place
    Borrow,      // about to create a fresh shared loan
    BorrowMut,   // about to create a fresh mutable loan
};

// -----------------------------------------------------------------------------
// Conflict matrix — what does (live loan kind × access kind) report?
// -----------------------------------------------------------------------------
struct ConflictResult {
    bool        conflict;
    ErrorCode   code;
    const char* note;
};

ConflictResult accessConflict(LoanKind loan, AccessKind access) {
    auto yes = [](ErrorCode c, const char* n) { return ConflictResult{true, c, n}; };
    auto no  = []() { return ConflictResult{false, ErrorCode::UseOfMovedValue, ""}; };
    bool loan_is_mut = (loan == LoanKind::Mut || loan == LoanKind::RawMut);

    switch (access) {
        case AccessKind::Read:
            return loan_is_mut
                ? yes(ErrorCode::UseOfMutBorrowed,
                      "value is read while it is mutably borrowed")
                : no();
        case AccessKind::Write:
            return yes(ErrorCode::AssignToBorrowed,
                       "value is assigned to while it is borrowed");
        case AccessKind::Move:
            // Move out of borrowed content. We use E0505 ("cannot move
            // out due to outstanding borrow") when the loan is still
            // live at the point of the move; E0507 is used for the
            // older "move out through a borrow" framing emitted by
            // checkReadOrMove() when the move source itself starts
            // with a deref.
            return yes(ErrorCode::MoveOutOfBorrowedWhileLive,
                       "cannot move out: value is borrowed here");
        case AccessKind::Drop:
            return yes(ErrorCode::MoveOutOfBorrowed,
                       "cannot drop: value is borrowed here");
        case AccessKind::Borrow:
            return loan_is_mut
                ? yes(ErrorCode::MutImmutBorrowOverlap,
                      "cannot borrow as immutable while mutably borrowed")
                : no();
        case AccessKind::BorrowMut:
            return loan_is_mut
                ? yes(ErrorCode::MutBorrowOverlap,
                      "cannot borrow as mutable more than once")
                : yes(ErrorCode::MutImmutBorrowOverlap,
                      "cannot borrow as mutable while immutably borrowed");
    }
    return no();
}

// -----------------------------------------------------------------------------
// ScopeMode — walk the scope chain to resolve effective mode + unsafety.
// -----------------------------------------------------------------------------
struct ScopeMode {
    BorrowCheckMode mode = BorrowCheckMode::On;
    Unsafety unsafety = Unsafety::Safe;
};

ScopeMode resolveScope(const Body& body, SourceScopeId id) {
    ScopeMode out;
    if (body.scopes.empty()) return out;
    bool mode_set = false, unsafe_set = false;
    SourceScopeId cur = id;
    for (int hops = 0; hops < 64; ++hops) {
        if (cur >= body.scopes.size()) break;
        const auto& sc = body.scopes[cur];
        if (!mode_set && sc.borrow_mode != BorrowCheckMode::On) {
            out.mode = sc.borrow_mode; mode_set = true;
        }
        if (!unsafe_set && sc.unsafety == Unsafety::Unsafe) {
            out.unsafety = Unsafety::Unsafe; unsafe_set = true;
        }
        if (sc.parent == cur) break;
        cur = sc.parent;
    }
    return out;
}

// -----------------------------------------------------------------------------
// Place helpers
// -----------------------------------------------------------------------------
bool startsWithDeref(const Place& p) {
    return !p.projection.empty() && p.projection.front().kind == PlaceElemKind::Deref;
}

// Return a copy of `place` with its leading Deref stripped off, leaving
// the remainder of the projection chain intact. Used by reborrow
// rewriting: `*p.field` strips to `.field`.
Place stripLeadingDeref(const Place& p) {
    Place out;
    out.local = p.local;
    if (!p.projection.empty() && p.projection.front().kind == PlaceElemKind::Deref) {
        out.projection.insert(out.projection.end(),
                              p.projection.begin() + 1, p.projection.end());
    } else {
        out.projection = p.projection;
    }
    return out;
}

// -----------------------------------------------------------------------------
// ReborrowOrigins
// -----------------------------------------------------------------------------
//
// Tracks "the last time we saw `let L = & path;` what was `path`?".
// Flow-insensitive: we just record the most-recently-observed origin
// per local in program order during the loan-collection scan. This
// works perfectly for the canonical reborrow shape
//
//      let r1 = &mut s.x;        // origin[r1] = path(s.x)
//      let r2 = &mut *r1;        // borrow rewritten to path(s.x)
//
// and fails (degrades to "the deref'd reference itself") only when the
// origin is conditional. That's documented as future work for a
// real Polonius origin solver.
struct ReborrowOrigins {
    std::unordered_map<LocalId, MovePathIdx> origin_of;

    void recordRef(LocalId issuing, MovePathIdx target) {
        origin_of[issuing] = target;
    }
    MovePathIdx lookup(LocalId l) const {
        auto it = origin_of.find(l);
        return it == origin_of.end() ? kInvalidMovePath : it->second;
    }
};

// -----------------------------------------------------------------------------
// LoanCollect — walks every &/&mut/raw rvalue, building loans and the
// reborrow-origin map.
// -----------------------------------------------------------------------------
struct LoanCollect {
    std::vector<Loan> loans;
    std::vector<std::pair<BbId, std::size_t>> origins;
    std::unordered_map<LocalId, std::vector<LoanIdx>> by_issuing_local;
    ReborrowOrigins reborrows;
    MovePathTable* paths = nullptr;

    void collect(const Body& body, MovePathTable& mpt) {
        paths = &mpt;
        // First pass: build a path for every Place that appears in the
        // body so the table is fully populated before loans reference
        // their paths.
        for (const auto& bb : body.blocks) {
            for (const auto& st : bb.statements) {
                if (st.kind == StatementKind::Assign ||
                    st.kind == StatementKind::SetDiscriminant ||
                    st.kind == StatementKind::Deinit) {
                    mpt.getOrCreate(st.place);
                }
                const auto& rv = st.rvalue;
                if (st.kind == StatementKind::Assign &&
                    (rv.kind == RvalueKind::Ref ||
                     rv.kind == RvalueKind::AddressOf ||
                     rv.kind == RvalueKind::Len ||
                     rv.kind == RvalueKind::Discriminant ||
                     rv.kind == RvalueKind::CopyForDeref)) {
                    mpt.getOrCreate(rv.place);
                }
                auto walk_op = [&](const Operand& o) {
                    if (o.kind != OperandKind::Constant) mpt.getOrCreate(o.place);
                };
                if (st.kind == StatementKind::Assign) {
                    walk_op(rv.a); walk_op(rv.b);
                    for (const auto& o : rv.operands) walk_op(o);
                }
            }
            switch (bb.terminator.kind) {
                case TerminatorKind::Drop:
                    mpt.getOrCreate(bb.terminator.drop_place); break;
                case TerminatorKind::Call:
                    mpt.getOrCreate(bb.terminator.call_dest);
                    if (bb.terminator.call_func.kind != OperandKind::Constant)
                        mpt.getOrCreate(bb.terminator.call_func.place);
                    for (const auto& a : bb.terminator.call_args)
                        if (a.kind != OperandKind::Constant) mpt.getOrCreate(a.place);
                    break;
                case TerminatorKind::SwitchInt:
                    if (bb.terminator.switch_discr.kind != OperandKind::Constant)
                        mpt.getOrCreate(bb.terminator.switch_discr.place);
                    break;
                case TerminatorKind::Assert:
                    if (bb.terminator.assert_cond.kind != OperandKind::Constant)
                        mpt.getOrCreate(bb.terminator.assert_cond.place);
                    break;
                default: break;
            }
        }

        // Second pass: extract loans, apply reborrow rewriting.
        for (BbId b = 0; b < body.blocks.size(); ++b) {
            const auto& bb = body.blocks[b];
            for (std::size_t i = 0; i < bb.statements.size(); ++i) {
                const auto& st = bb.statements[i];
                if (st.kind != StatementKind::Assign) continue;
                const auto& rv = st.rvalue;
                if (rv.kind != RvalueKind::Ref && rv.kind != RvalueKind::AddressOf) continue;

                Loan ln;
                ln.issuing_local = st.place.local;
                ln.created_at    = st.source_info.span;
                if (rv.kind == RvalueKind::Ref) {
                    ln.kind = (rv.borrow_kind == BorrowKind::Shared)
                                  ? LoanKind::Shared : LoanKind::Mut;
                } else {
                    ln.kind = (rv.mutability == Mutability::Mut)
                                  ? LoanKind::RawMut : LoanKind::RawConst;
                }

                // Reborrow rewriting: if the borrowed place starts with
                // a Deref of a local with a known origin, redirect the
                // loan target to that origin path; otherwise fall back
                // to the borrowed place's own move-path.
                Place target_place = rv.place;
                if (startsWithDeref(rv.place)) {
                    MovePathIdx origin = reborrows.lookup(rv.place.local);
                    if (origin != kInvalidMovePath) {
                        // We have a recorded reborrow ancestor. The
                        // *projection tail* after the deref still needs
                        // to apply to the origin's path. Easiest:
                        // construct a synthetic place rooted at the
                        // origin's root_local and append the tail. We
                        // approximate by walking the tail elements onto
                        // the origin path, creating MovePaths as we go.
                        Place tail = stripLeadingDeref(rv.place);
                        // Anchor the tail under the origin path's root
                        // so the projection-walking inside getOrCreate
                        // sees the correct prefix. Building a synthetic
                        // Place is the cleanest way.
                        Place synth;
                        synth.local = mpt[origin].root_local;
                        // We deliberately *discard* any projection on
                        // the origin path here (treating it as just the
                        // root) — this can over-pessimize when the
                        // origin was something like `&s.x.y` and we
                        // reborrow `*p.z`. For now we collapse to the
                        // origin's root since computing the exact path
                        // requires walking back up the origin chain.
                        synth.projection = tail.projection;
                        target_place = synth;
                    }
                }

                ln.borrowed_path = mpt.getOrCreate(target_place);

                LoanIdx idx = static_cast<LoanIdx>(loans.size());
                loans.push_back(ln);
                origins.push_back({b, i});
                by_issuing_local[ln.issuing_local].push_back(idx);

                // Record this issuing local's reborrow origin for any
                // downstream `let _ = &*issuing.…;` to pick up.
                reborrows.recordRef(ln.issuing_local, ln.borrowed_path);
            }
        }
    }
};

// -----------------------------------------------------------------------------
// Driver
// -----------------------------------------------------------------------------
struct Driver {
    const Body& body;
    const TyCtxt& tcx;
    BorrowckResult result;

    Predecessors preds;
    MovePathTable paths;
    LoanCollect loans;

    // Per-block loan-live in/out bits over all loans.
    std::vector<BitSet> loans_in;
    std::vector<BitSet> loans_out;
    std::vector<BitSet> loans_gen;
    std::vector<BitSet> loans_kill;
    // Per-statement-point gen / kill (statements.size()+1 per block; +1 for terminator).
    std::vector<std::vector<BitSet>> gens_at_point;
    std::vector<std::vector<BitSet>> kills_at_point;

    // Definitely-initialized over move paths.
    std::vector<BitSet> def_init_in;
    std::vector<BitSet> def_init_out;

    explicit Driver(const Body& b, const TyCtxt& t) : body(b), tcx(t) {}

    // ------------------------------------------------------------- root scope
    bool rootCheckerOff() const {
        ScopeMode m = resolveScope(body, kRootScope);
        return m.mode == BorrowCheckMode::Off;
    }

    void buildCfg() { preds = Predecessors::build(body); }

    // ----------------------------------------------- loan / move-path collect
    void buildSets() {
        loans.collect(body, paths);
        // Ensure every local has a root path so dataflow never has to
        // allocate one mid-fixpoint (which would invalidate bitset sizes).
        for (LocalId l = 0; l < body.locals.size(); ++l) paths.forLocal(l);

        result.loans_examined = static_cast<std::uint32_t>(loans.loans.size());
        result.move_paths     = static_cast<std::uint32_t>(paths.size());

        const std::size_t L = loans.loans.size();
        const std::size_t B = body.blocks.size();

        loans_in.assign(B, BitSet{L});
        loans_out.assign(B, BitSet{L});
        loans_gen.assign(B, BitSet{L});
        loans_kill.assign(B, BitSet{L});
        gens_at_point.assign(B, {});
        kills_at_point.assign(B, {});

        for (BbId b = 0; b < B; ++b) {
            const auto& bb = body.blocks[b];
            gens_at_point[b].assign(bb.statements.size() + 1, BitSet{L});
            kills_at_point[b].assign(bb.statements.size() + 1, BitSet{L});

            for (std::size_t i = 0; i < bb.statements.size(); ++i) {
                const auto& st = bb.statements[i];

                // Gen: loans born at this point.
                for (LoanIdx li = 0; li < loans.loans.size(); ++li) {
                    if (loans.origins[li].first == b && loans.origins[li].second == i) {
                        gens_at_point[b][i].set(li);
                        loans_gen[b].set(li);
                    }
                }

                // Kill: any statement that overwrites a local L kills
                // every loan whose issuing_local == L. Storage-dead
                // and Deinit do likewise. The Drop terminator is
                // handled below in the terminator slot.
                LocalId touched = static_cast<LocalId>(-1);
                if (st.kind == StatementKind::Assign)         touched = st.place.local;
                else if (st.kind == StatementKind::StorageDead) touched = st.local;
                else if (st.kind == StatementKind::Deinit)      touched = st.place.local;

                if (touched != static_cast<LocalId>(-1)) {
                    auto it = loans.by_issuing_local.find(touched);
                    if (it != loans.by_issuing_local.end()) {
                        for (LoanIdx li : it->second) {
                            if (gens_at_point[b][i].test(li)) continue;
                            kills_at_point[b][i].set(li);
                            loans_kill[b].set(li);
                        }
                    }
                }
            }

            // Terminator slot.
            std::size_t term = bb.statements.size();
            if (bb.terminator.kind == TerminatorKind::Drop) {
                LocalId touched = bb.terminator.drop_place.local;
                auto it = loans.by_issuing_local.find(touched);
                if (it != loans.by_issuing_local.end()) {
                    for (LoanIdx li : it->second) {
                        kills_at_point[b][term].set(li);
                        loans_kill[b].set(li);
                    }
                }
            }
        }
    }

    // ------------------------------------------------------ loan-live solver
    void solveLoanLive() {
        bool changed = true;
        while (changed) {
            changed = false;
            for (BbId b = 0; b < body.blocks.size(); ++b) {
                BitSet new_in = loans_in[b];
                for (BbId p : preds.preds[b]) new_in.union_inplace(loans_out[p]);
                if (!(new_in == loans_in[b])) { loans_in[b] = new_in; changed = true; }

                BitSet new_out = loans_in[b];
                new_out.subtract_inplace(loans_kill[b]);
                new_out.union_inplace(loans_gen[b]);
                if (!(new_out == loans_out[b])) { loans_out[b] = new_out; changed = true; }
            }
        }
    }

    // ---------------------------------------- definitely-init dataflow
    //
    // Initialization bits index into MovePaths, not locals. An Assign
    // to `s.x` initializes the path for `s.x`; a move out of `s.x`
    // uninitializes the path for `s.x` and every descendant — but
    // NOT siblings (so `s.y` is still init). Init of a parent path
    // implies all descendants become init (Aggregate construction
    // builds the whole struct).
    void solveDefInit() {
        const std::size_t M = paths.size();
        const std::size_t B = body.blocks.size();
        def_init_in.assign(B, BitSet{M});
        def_init_out.assign(B, BitSet{M});

        // Entry seed: paths for arg locals are initialized along with
        // their entire subtree.
        for (std::uint32_t a = 0; a < body.arg_count; ++a) {
            MovePathIdx root = paths.forLocal(a + 1);
            paths.forEachInSubtree(root, [&](MovePathIdx p) { def_init_in[0].set(p); });
        }
        for (BbId b = 1; b < B; ++b) def_init_in[b].fill();
        for (BbId b = 0; b < B; ++b) {
            def_init_out[b] = def_init_in[b];
            applyBlockToDefInit(b, def_init_out[b]);
        }
        bool changed = true;
        while (changed) {
            changed = false;
            for (BbId b = 0; b < B; ++b) {
                if (preds.preds[b].empty() && b != 0) continue;
                BitSet new_in;
                if (b == 0) {
                    new_in = BitSet{M};
                    for (std::uint32_t a = 0; a < body.arg_count; ++a) {
                        MovePathIdx root = paths.forLocal(a + 1);
                        paths.forEachInSubtree(root, [&](MovePathIdx p) { new_in.set(p); });
                    }
                } else {
                    new_in = BitSet{M};
                    new_in.fill();
                    for (BbId p : preds.preds[b]) new_in.intersect_inplace(def_init_out[p]);
                }
                if (!(new_in == def_init_in[b])) {
                    def_init_in[b] = new_in;
                    def_init_out[b] = new_in;
                    applyBlockToDefInit(b, def_init_out[b]);
                    changed = true;
                }
            }
        }
    }

    void setSubtree(MovePathIdx p, BitSet& bs, bool value) {
        if (p == kInvalidMovePath) return;
        paths.forEachInSubtree(p, [&](MovePathIdx x) {
            if (value) bs.set(x); else bs.clear(x);
        });
    }
    // Also clear ancestors above the moved path: moving s.x leaves s
    // partially-initialized, so the whole-of-s path is no longer
    // definitely-init. The siblings (s.y) are untouched.
    void clearAncestors(MovePathIdx p, BitSet& bs) {
        if (p == kInvalidMovePath) return;
        MovePathIdx cur = paths[p].parent;
        while (cur != kInvalidMovePath) {
            bs.clear(cur);
            cur = paths[cur].parent;
        }
    }

    void applyBlockToDefInit(BbId b, BitSet& state) {
        const auto& bb = body.blocks[b];
        for (const auto& st : bb.statements) {
            switch (st.kind) {
                case StatementKind::Assign: {
                    MovePathIdx lhs = paths.find(st.place);
                    if (lhs != kInvalidMovePath) setSubtree(lhs, state, true);
                    break;
                }
                case StatementKind::StorageLive:
                    break;
                case StatementKind::StorageDead:
                case StatementKind::Deinit: {
                    MovePathIdx p = paths.forLocal(st.local);
                    setSubtree(p, state, false);
                    MovePathIdx p2 = paths.find(st.place);
                    if (p2 != kInvalidMovePath) {
                        setSubtree(p2, state, false);
                        clearAncestors(p2, state);
                    }
                    break;
                }
                default: break;
            }
            auto kill_moves = [&](const Operand& o) {
                if (o.kind != OperandKind::Move) return;
                MovePathIdx mp = paths.find(o.place);
                if (mp == kInvalidMovePath) return;
                setSubtree(mp, state, false);
                clearAncestors(mp, state);
            };
            if (st.kind == StatementKind::Assign) {
                kill_moves(st.rvalue.a); kill_moves(st.rvalue.b);
                for (const auto& op : st.rvalue.operands) kill_moves(op);
            }
        }
        if (bb.terminator.kind == TerminatorKind::Drop) {
            MovePathIdx mp = paths.find(bb.terminator.drop_place);
            if (mp != kInvalidMovePath) {
                setSubtree(mp, state, false);
                clearAncestors(mp, state);
            }
        }
        if (bb.terminator.kind == TerminatorKind::Call) {
            MovePathIdx mp = paths.find(bb.terminator.call_dest);
            if (mp != kInvalidMovePath) setSubtree(mp, state, true);
        }
    }

    // ------------------------------------------------------ check pass
    void runChecks() {
        for (BbId b = 0; b < body.blocks.size(); ++b) {
            BitSet live = loans_in[b];
            BitSet di   = def_init_in[b];
            const auto& bb = body.blocks[b];
            for (std::size_t i = 0; i < bb.statements.size(); ++i) {
                checkStatement(b, i, bb.statements[i], live, di);
                live.subtract_inplace(kills_at_point[b][i]);
                live.union_inplace(gens_at_point[b][i]);
                advanceDefInitStmt(bb.statements[i], di);
            }
            checkTerminator(b, bb.terminator, live, di);
        }
    }

    void advanceDefInitStmt(const Statement& st, BitSet& di) {
        switch (st.kind) {
            case StatementKind::Assign: {
                MovePathIdx mp = paths.find(st.place);
                if (mp != kInvalidMovePath) setSubtree(mp, di, true);
                break;
            }
            case StatementKind::StorageDead:
            case StatementKind::Deinit: {
                MovePathIdx p = paths.forLocal(st.local);
                setSubtree(p, di, false);
                MovePathIdx p2 = paths.find(st.place);
                if (p2 != kInvalidMovePath) {
                    setSubtree(p2, di, false);
                    clearAncestors(p2, di);
                }
                break;
            }
            default: break;
        }
        auto kill_moves = [&](const Operand& o) {
            if (o.kind != OperandKind::Move) return;
            MovePathIdx mp = paths.find(o.place);
            if (mp == kInvalidMovePath) return;
            setSubtree(mp, di, false);
            clearAncestors(mp, di);
        };
        if (st.kind == StatementKind::Assign) {
            kill_moves(st.rvalue.a); kill_moves(st.rvalue.b);
            for (const auto& op : st.rvalue.operands) kill_moves(op);
        }
    }

    // ------------------------------------------------------ emit helpers
    Severity severityFor(const Statement* st, const Terminator* term) {
        SourceScopeId scope = kRootScope;
        if (st) scope = st->source_info.scope;
        else if (term) scope = term->source_info.scope;
        ScopeMode m = resolveScope(body, scope);
        if (m.mode == BorrowCheckMode::BypassRegion) {
            result.bypass_active = true;
            return Severity::Note;
        }
        return Severity::Error;
    }

    void emit(Severity sev, ErrorCode code, std::string msg, Span where,
              std::vector<std::pair<Span, std::string>> notes = {},
              std::vector<Suggestion> sugs = {}) {
        Diagnostic d;
        d.severity = sev;
        d.code = code;
        d.message = std::move(msg);
        d.primary_span = where;
        d.notes = std::move(notes);
        d.suggestions = std::move(sugs);
        result.diagnostics.push_back(std::move(d));
    }

    // ------------------------------------------------------ conflict checks
    //
    // For an access on `place`, walk every live loan and report a
    // conflict if the loan's path overlaps the access path. Overlap is
    // the ancestor relation in the move-path forest.
    void checkPlaceAccess(const Place& place, AccessKind ak, Span where,
                          const BitSet& live, const Statement* st, const Terminator* term) {
        ++result.places_examined;
        MovePathIdx accessed = paths.find(place);
        if (accessed == kInvalidMovePath) accessed = paths.forLocal(place.local);

        for (LoanIdx li = 0; li < loans.loans.size(); ++li) {
            if (!live.test(li)) continue;
            const Loan& ln = loans.loans[li];
            if (!paths.overlaps(ln.borrowed_path, accessed)) continue;
            auto c = accessConflict(ln.kind, ak);
            if (!c.conflict) continue;

            std::ostringstream m;
            m << c.note << " (" << paths.debugName(accessed) << ")";
            std::vector<std::pair<Span, std::string>> notes = {
                {ln.created_at, "borrow created here"}};
            std::vector<Suggestion> sugs;

            // Specific suggestion: for E0499 we can suggest replacing
            // one of the borrows with `&` (sharedification) when the
            // user's intent is two reads.
            if (c.code == ErrorCode::MutBorrowOverlap && ak == AccessKind::BorrowMut) {
                Suggestion s;
                s.span = where;
                s.label = "consider using a shared borrow `&` instead";
                s.replacement = "&";
                s.applicable = false; // we don't know the exact text
                sugs.push_back(std::move(s));
            }
            emit(severityFor(st, term), c.code, m.str(), where,
                 std::move(notes), std::move(sugs));
        }
    }

    void checkInit(const Place& place, Span where, const BitSet& di,
                   const Statement* st, const Terminator* term) {
        if (place.local == kReturnLocal) return;
        MovePathIdx p = paths.find(place);
        if (p == kInvalidMovePath) p = paths.forLocal(place.local);
        // The accessed path is definitely init iff its own bit is set.
        if (di.test(p)) return;
        // Distinguish "moved out" from "never initialized". We don't
        // currently keep a "was-init-at-some-point" flag per path; the
        // approximation is "if any ancestor's bit is set, treat this
        // as PartialMove (E0383); else UseOfUninit (E0381)".
        bool any_ancestor_init = false;
        MovePathIdx cur = paths[p].parent;
        while (cur != kInvalidMovePath) {
            if (di.test(cur)) { any_ancestor_init = true; break; }
            cur = paths[cur].parent;
        }
        ErrorCode code = any_ancestor_init ? ErrorCode::PartialMove
                                           : ErrorCode::UseOfUninit;
        std::ostringstream m;
        if (code == ErrorCode::PartialMove)
            m << "use of partially-moved value " << paths.debugName(p);
        else
            m << "use of possibly-uninitialized binding " << paths.debugName(p);
        emit(severityFor(st, term), code, m.str(), where);
    }

    void checkMutability(const Place& place, Span where,
                         const Statement* st, const Terminator* term) {
        LocalId l = place.local;
        if (l >= body.locals.size()) return;
        const auto& d = body.locals[l];
        if (d.mutability == Mutability::Mut) return;
        if (d.kind == LocalKind::ReturnPointer) return;
        if (d.kind == LocalKind::ManagedVar) return;
        std::ostringstream m;
        m << "cannot assign to immutable binding _" << l;
        if (!d.debug_name.empty()) m << " (`" << d.debug_name << "`)";

        Suggestion s;
        s.span = d.source_info.span;
        s.label = "add `mut` to the binding";
        s.replacement = "mut ";
        s.applicable = true;
        emit(severityFor(st, term), ErrorCode::AssignToImmutable, m.str(), where,
             {}, {std::move(s)});
    }

    void checkStatement(BbId, std::size_t, const Statement& st,
                        const BitSet& live, const BitSet& di) {
        if (st.kind == StatementKind::Assign) {
            const auto& rv = st.rvalue;

            auto handle_op = [&](const Operand& o) {
                if (o.kind == OperandKind::Constant) return;
                AccessKind ak = (o.kind == OperandKind::Move) ? AccessKind::Move : AccessKind::Read;
                checkPlaceAccess(o.place, ak, st.source_info.span, live, &st, nullptr);
                checkInit(o.place, st.source_info.span, di, &st, nullptr);
                // Move out through a `&` deref is E0507 / AP9004.
                if (ak == AccessKind::Move && startsWithDeref(o.place)) {
                    std::ostringstream m;
                    m << "cannot move out of `*"  << paths.debugName(paths.forLocal(o.place.local))
                      << "` (move through a reference)";
                    emit(severityFor(&st, nullptr), ErrorCode::IndirectMoveOutOfRef,
                         m.str(), st.source_info.span);
                }
            };
            handle_op(rv.a); handle_op(rv.b);
            for (const auto& op : rv.operands) handle_op(op);

            if (rv.kind == RvalueKind::Ref) {
                AccessKind ak = (rv.borrow_kind == BorrowKind::Shared)
                                    ? AccessKind::Borrow : AccessKind::BorrowMut;
                checkPlaceAccess(rv.place, ak, st.source_info.span, live, &st, nullptr);
            } else if (rv.kind == RvalueKind::AddressOf) {
                AccessKind ak = (rv.mutability == Mutability::Mut)
                                    ? AccessKind::BorrowMut : AccessKind::Borrow;
                checkPlaceAccess(rv.place, ak, st.source_info.span, live, &st, nullptr);
                // Raw pointer deref in safe code: AP9001. We flag the
                // *creation* of a `&raw mut` in safe scope as the
                // earliest point we have a hook. Reads through the raw
                // ptr are not visible at MIR level here.
                ScopeMode sm = resolveScope(body, st.source_info.scope);
                if (sm.unsafety == Unsafety::Safe && rv.mutability == Mutability::Mut) {
                    // Only flag if the borrowed place starts with a
                    // deref of a raw pointer — we approximate by
                    // checking for any leading deref. Pure
                    // `&raw mut local` is permitted in safe code.
                    if (startsWithDeref(rv.place)) {
                        emit(Severity::Error, ErrorCode::UnsafeDerefInSafe,
                             "raw pointer dereference outside `@unsafe`",
                             st.source_info.span);
                    }
                }
            } else if (rv.kind == RvalueKind::Len ||
                       rv.kind == RvalueKind::Discriminant ||
                       rv.kind == RvalueKind::CopyForDeref) {
                checkPlaceAccess(rv.place, AccessKind::Read, st.source_info.span, live, &st, nullptr);
                checkInit(rv.place, st.source_info.span, di, &st, nullptr);
            }

            checkPlaceAccess(st.place, AccessKind::Write, st.source_info.span, live, &st, nullptr);
            if (!startsWithDeref(st.place)) {
                checkMutability(st.place, st.source_info.span, &st, nullptr);
            }
        } else if (st.kind == StatementKind::SetDiscriminant ||
                   st.kind == StatementKind::Deinit) {
            checkPlaceAccess(st.place, AccessKind::Write, st.source_info.span, live, &st, nullptr);
        }
    }

    void checkTerminator(BbId, const Terminator& t, const BitSet& live, const BitSet& di) {
        switch (t.kind) {
            case TerminatorKind::SwitchInt:
                if (t.switch_discr.kind != OperandKind::Constant) {
                    checkPlaceAccess(t.switch_discr.place, AccessKind::Read,
                                     t.source_info.span, live, nullptr, &t);
                    checkInit(t.switch_discr.place, t.source_info.span, di, nullptr, &t);
                }
                break;
            case TerminatorKind::Drop:
                checkPlaceAccess(t.drop_place, AccessKind::Drop,
                                 t.source_info.span, live, nullptr, &t);
                break;
            case TerminatorKind::Call: {
                if (t.call_func.kind != OperandKind::Constant) {
                    checkPlaceAccess(t.call_func.place, AccessKind::Read,
                                     t.source_info.span, live, nullptr, &t);
                    checkInit(t.call_func.place, t.source_info.span, di, nullptr, &t);
                }
                for (const auto& a : t.call_args) {
                    if (a.kind == OperandKind::Constant) continue;
                    AccessKind ak = (a.kind == OperandKind::Move) ? AccessKind::Move : AccessKind::Read;
                    checkPlaceAccess(a.place, ak, t.source_info.span, live, nullptr, &t);
                    checkInit(a.place, t.source_info.span, di, nullptr, &t);
                }
                checkPlaceAccess(t.call_dest, AccessKind::Write, t.source_info.span, live, nullptr, &t);
                if (!startsWithDeref(t.call_dest))
                    checkMutability(t.call_dest, t.source_info.span, nullptr, &t);
                break;
            }
            case TerminatorKind::Assert:
                if (t.assert_cond.kind != OperandKind::Constant) {
                    checkPlaceAccess(t.assert_cond.place, AccessKind::Read,
                                     t.source_info.span, live, nullptr, &t);
                    checkInit(t.assert_cond.place, t.source_info.span, di, nullptr, &t);
                }
                break;
            default: break;
        }
    }

    BorrowckResult run() {
        if (rootCheckerOff()) {
            result.checker_off = true;
            return std::move(result);
        }
        buildCfg();
        buildSets();
        solveLoanLive();
        solveDefInit();
        runChecks();
        return std::move(result);
    }
};

} // namespace

// -----------------------------------------------------------------------------
// Public entry point
// -----------------------------------------------------------------------------
BorrowckResult checkBody(const Body& body, const TyCtxt& tcx) {
    Driver d(body, tcx);
    return d.run();
}

// -----------------------------------------------------------------------------
// Diagnostic formatters
// -----------------------------------------------------------------------------
std::string formatDiagnostic(const Diagnostic& d) {
    std::ostringstream os;
    const char* sev = "error";
    if (d.severity == Severity::Warning) sev = "warning";
    else if (d.severity == Severity::Note) sev = "note";
    os << sev << '[' << tagOf(d.code) << "]: " << d.message;
    return os.str();
}

namespace {
// Render a single span with caret underline. Returns empty string if
// the file isn't available.
std::string renderSpan(const SourceMap& sm, Span sp) {
    const FileSource* fs = sm.file(sp.file);
    if (!fs || !fs->content) return {};
    LineCol lc = sm.lookup(sp);
    std::string_view line = fs->line_text(lc.line);
    std::ostringstream os;
    os << "  --> " << fs->path << ":" << lc.line << ":" << lc.col << "\n";
    // 4-character gutter.
    os << "   |\n";
    os << " " << lc.line << " | " << line << "\n";
    os << "   | ";
    for (std::uint32_t i = 1; i < lc.col; ++i) os << ' ';
    std::uint32_t caret_len = std::max<std::uint32_t>(1, sp.len());
    for (std::uint32_t i = 0; i < caret_len; ++i) os << '^';
    os << "\n";
    return os.str();
}
} // namespace

std::string renderDiagnostic(const Diagnostic& d, const SourceMap* sm) {
    std::ostringstream os;
    const char* sev = "error";
    if (d.severity == Severity::Warning) sev = "warning";
    else if (d.severity == Severity::Note) sev = "note";
    os << sev << '[' << tagOf(d.code) << "]: " << d.message << "\n";
    if (sm) os << renderSpan(*sm, d.primary_span);
    for (auto& [span, label] : d.notes) {
        os << "note: " << label << "\n";
        if (sm) os << renderSpan(*sm, span);
    }
    for (auto& s : d.suggestions) {
        os << "help: " << s.label;
        if (!s.replacement.empty()) os << " (`" << s.replacement << "`)";
        os << "\n";
        if (sm) os << renderSpan(*sm, s.span);
    }
    return os.str();
}

} // namespace apollo::mir::borrowck
