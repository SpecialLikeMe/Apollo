// Apollo MIR — visitor / rewriter (CRTP).
//
// Subclasses override the `visit*` hooks they care about and the base class
// dispatches into the rest. To preserve default forwarding, an override
// MUST keep the base hooks visible:
//
//     class MyVisitor : public MirVisitor<MyVisitor> {
//         using MirVisitor<MyVisitor>::visitStatementKind;
//         void visitStatementKind(const Statement&) { /* custom */ }
//     };

#ifndef APOLLO_MIR_VISIT_H
#define APOLLO_MIR_VISIT_H

#include "mir.h"

namespace apollo::mir {

template <typename Derived>
class MirVisitor {
public:
    void visitBody(const Body& body) {
        auto* d = static_cast<Derived*>(this);
        for (BbId i = 0; i < body.blocks.size(); ++i) {
            d->visitBlock(body.blocks[i], i);
        }
    }
    void visitBlock(const BasicBlockData& bb, BbId /*id*/) {
        auto* d = static_cast<Derived*>(this);
        for (const auto& s : bb.statements) d->visitStatement(s);
        d->visitTerminator(bb.terminator);
    }
    void visitStatement(const Statement& s) {
        static_cast<Derived*>(this)->visitStatementKind(s);
    }
    void visitTerminator(const Terminator& t) {
        static_cast<Derived*>(this)->visitTerminatorKind(t);
    }
    // Hooks the user may override.
    void visitStatementKind(const Statement&) {}
    void visitTerminatorKind(const Terminator&) {}
};

} // namespace apollo::mir

#endif
