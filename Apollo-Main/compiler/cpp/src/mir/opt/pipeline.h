// Apollo MIR — optimization passes (header).
//
// A small, conservative set of MIR-level transforms. Each pass is
// declared as a free function operating on a mutable Body so they can
// be composed in any order. The pipeline runner in `pipeline.cpp` runs
// a fixed sequence chosen to be cheap and side-effect-free.
//
// Passes:
//   * constFold    — fold binary/unary ops on constant operands.
//   * copyProp     — propagate `tmp = use(x); ... use(tmp)` into the
//                    use site so DCE can drop the temporary.
//   * dce          — drop assigns whose destination is never observed.
//   * simplifyCfg  — collapse SwitchInt with constant discriminant to
//                    a Goto; merge linear chains of Goto-only blocks.
//
// All passes are stable: they never invalidate LocalIds or change a
// block's predecessor relationship in a way that would break borrow
// checker results.

#ifndef APOLLO_MIR_OPT_PIPELINE_H
#define APOLLO_MIR_OPT_PIPELINE_H

#include "../mir.h"

namespace apollo::mir::opt {

struct PassStats {
    std::uint32_t const_folds   = 0;
    std::uint32_t copy_props    = 0;
    std::uint32_t dead_stmts    = 0;
    std::uint32_t goto_collapses = 0;
    std::uint32_t switch_to_goto = 0;
    std::uint32_t blocks_removed = 0;
    std::uint32_t cse_replaced   = 0;
};

// Individual passes. Each returns true when it changed the body.
bool constFold   (Body& body, PassStats& stats);
bool copyProp    (Body& body, PassStats& stats);
bool dce         (Body& body, PassStats& stats);
bool simplifyCfg (Body& body, PassStats& stats);
bool cse         (Body& body, PassStats& stats);

// Run the default pipeline until fixed-point or `max_iters` is hit.
// Returns aggregate stats. The pipeline order is:
//   simplifyCfg → constFold → copyProp → dce → simplifyCfg
PassStats runDefault(Body& body, std::uint32_t max_iters = 4);

} // namespace apollo::mir::opt

#endif
