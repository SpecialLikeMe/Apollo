// Smoke tests for the concurrent tri-color GC.
//
// These deliberately use only the runtime ABI — no codegen — to validate
// the collector in isolation. Each test creates a fresh `Runtime`, attaches
// the calling thread as a mutator, allocates some boxes, registers a subset
// as roots, runs a blocking collection, and asserts that the unreachable
// boxes were swept.
//
// Build:
//   clang++ -std=c++20 apollo_gc_concurrent.cpp apollo_gc_concurrent_tests.cpp \
//           -o apollo_gc_concurrent_tests -pthread
// Run:
//   ./apollo_gc_concurrent_tests

#include "apollo_gc_concurrent.hpp"

#include <atomic>
#include <cassert>
#include <cstdio>
#include <cstring>
#include <vector>

using namespace apollo::gc;

namespace {

// A linked-list node payload that traces its single child pointer.
struct Node {
    Box*    next  = nullptr;
    int     value = 0;
};

void trace_node(Box* self, void* visitor) {
    auto* tracer = static_cast<Tracer*>(visitor);
    auto* payload = reinterpret_cast<Node*>(reinterpret_cast<unsigned char*>(self) + sizeof(Box));
    tracer->mark(payload->next);
}

Box* alloc_node(Mutator& m, int v, Box* next) {
    Box* b = m.allocate(sizeof(Node), &trace_node, /*type_id=*/1);
    assert(b);
    auto* p = reinterpret_cast<Node*>(reinterpret_cast<unsigned char*>(b) + sizeof(Box));
    new (p) Node{next, v};
    return b;
}

int g_failures = 0;
#define CHECK(cond) do { \
    if (!(cond)) { \
        std::fprintf(stderr, "CHECK failed: %s @ %s:%d\n", #cond, __FILE__, __LINE__); \
        ++g_failures; \
    } \
} while (0)

void test_alloc_then_collect_reclaims_unrooted() {
    // Disable background threads so the test is fully deterministic.
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    cfg.marker_threads = 0;
    Runtime rt(cfg);
    auto& m = rt.attach();

    Box* a = alloc_node(m, 1, nullptr);
    Box* b = alloc_node(m, 2, a);
    Box* c = alloc_node(m, 3, nullptr); // unrooted, should be swept

    auto h = rt.register_root(b);

    auto before = rt.stats();
    rt.collect_blocking();
    auto after = rt.stats();

    CHECK(after.cycles == before.cycles + 1);
    CHECK(after.bytes_swept > before.bytes_swept); // we swept *something*
    // `a` is reachable through b, so it survives. `c` was unrooted -> swept.
    // We can't poke `c` after sweep (UAF) so we only check via stats.
    (void)a; (void)c;

    rt.unregister_root(h);
    rt.detach();
}

void test_cycle_of_two_unrooted_is_swept() {
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    Runtime rt(cfg);
    auto& m = rt.attach();

    Box* x = alloc_node(m, 10, nullptr);
    Box* y = alloc_node(m, 20, x);
    // close the cycle
    auto* xp = reinterpret_cast<Node*>(reinterpret_cast<unsigned char*>(x) + sizeof(Box));
    xp->next = y;

    auto before = rt.stats();
    rt.collect_blocking();
    auto after = rt.stats();
    CHECK(after.bytes_swept >= before.bytes_swept + 2 * (sizeof(Box) + sizeof(Node)));
    rt.detach();
}

void test_write_barrier_preserves_concurrently_attached_child() {
    // We simulate a mutator that, mid-mark, attaches a fresh allocation to
    // an already-black object. The Dijkstra insertion barrier should shade
    // the new child so it survives the cycle.
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    Runtime rt(cfg);
    auto& m = rt.attach();

    Box* root_box = alloc_node(m, 0, nullptr);
    auto h = rt.register_root(root_box);

    // Force the runtime into the Mark phase manually so we can invoke the
    // barrier under realistic conditions. We do this by calling start_mark
    // indirectly via collect_blocking but stopping after mark prepare. The
    // public API doesn't expose that splice, so instead we simulate by
    // running a collection, then doing a fresh allocation immediately and
    // a second collection: the survivor across two cycles confirms the
    // allocation-color / sweep-color flip is consistent.

    rt.collect_blocking();           // cycle 1
    Box* added = alloc_node(m, 7, nullptr);
    auto* rp = reinterpret_cast<Node*>(reinterpret_cast<unsigned char*>(root_box) + sizeof(Box));

    // Emit the write barrier *before* the store, matching codegen contract.
    write_barrier(m, reinterpret_cast<Box**>(&rp->next), added);
    rp->next = added;

    rt.collect_blocking();           // cycle 2

    // `added` must have survived: walking from the root still finds value 7.
    auto* survivor = reinterpret_cast<Node*>(reinterpret_cast<unsigned char*>(rp->next) + sizeof(Box));
    CHECK(survivor->value == 7);

    rt.unregister_root(h);
    rt.detach();
}

void test_concurrent_marker_threads_drain_queue() {
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = true;
    cfg.enable_concurrent_sweep = false;
    cfg.marker_threads = 2;
    Runtime rt(cfg);
    auto& m = rt.attach();

    // Build a long chain of 1024 nodes; root the head.
    Box* prev = nullptr;
    for (int i = 0; i < 1024; ++i) {
        prev = alloc_node(m, i, prev);
    }
    auto h = rt.register_root(prev);

    rt.collect_blocking();
    auto s = rt.stats();
    CHECK(s.cycles == 1);
    CHECK(s.bytes_live_after_last_cycle >= 1024 * (sizeof(Box) + sizeof(Node)));

    rt.unregister_root(h);
    rt.detach();
}

} // namespace

int main() {
    test_alloc_then_collect_reclaims_unrooted();
    test_cycle_of_two_unrooted_is_swept();
    test_write_barrier_preserves_concurrently_attached_child();
    test_concurrent_marker_threads_drain_queue();
    if (g_failures == 0) {
        std::printf("apollo_gc_concurrent_tests: all passed\n");
        return 0;
    }
    std::printf("apollo_gc_concurrent_tests: %d failure(s)\n", g_failures);
    return 1;
}
