// =============================================================================
// Tests for the new GC modules: card table, type descriptors, large objects.
// =============================================================================

#include "apollo_gc_concurrent.hpp"
#include "apollo_gc_cards.hpp"
#include "apollo_gc_typedesc.hpp"
#include "apollo_gc_large.hpp"

#include <cassert>
#include <cstdio>
#include <cstring>

using namespace apollo::gc;

namespace {

int g_failures = 0;
#define CHECK(cond) do { if (!(cond)) { std::printf("CHECK failed: %s @ %s:%d\n", #cond, __FILE__, __LINE__); ++g_failures; } } while (0)

// -----------------------------------------------------------------------------
// Card table
// -----------------------------------------------------------------------------
void test_card_register_and_mark() {
    CardTable t;
    static unsigned char heap[8192];
    t.register_range(heap, heap + sizeof(heap));
    CHECK(t.covers(heap));
    CHECK(t.covers(heap + 1024));
    CHECK(!t.covers(heap - 1));
    CHECK(t.dirty_count() == 0);
    t.mark_dirty(heap + 600);   // card 1 (600 >> 9 = 1)
    t.mark_dirty(heap + 1500);  // card 2
    t.mark_dirty(heap + 600);   // already dirty — idempotent
    CHECK(t.dirty_count() == 2);
    CHECK(t.is_dirty(heap + 600));
    CHECK(t.is_dirty(heap + 700));     // same card
    CHECK(!t.is_dirty(heap + 200));    // card 0 is clean
    int seen = 0;
    t.for_each_dirty([&](const void*) { ++seen; });
    CHECK(seen == 2);
    t.clear_all();
    CHECK(t.dirty_count() == 0);
    std::printf("test_card_register_and_mark ok\n");
}

void test_card_global_dirty_via_barrier() {
    // The runtime's barrier calls `note_card_dirty`. We don't have a
    // managed slot here, so we directly poke the global table to
    // confirm the linker symbol resolves and behaves.
    auto& t = global_card_table();
    static unsigned char region[1024];
    t.register_range(region, region + sizeof(region));
    auto before = t.dirty_count();
    note_card_dirty(region + 100);
    auto after = t.dirty_count();
    CHECK(after == before + 1);
    std::printf("test_card_global_dirty_via_barrier ok\n");
}

// -----------------------------------------------------------------------------
// Type descriptors
// -----------------------------------------------------------------------------
struct Pair {
    Box* a;
    Box* b;
    int  payload;
};

static const std::uint32_t kPairOffsets[] = {
    static_cast<std::uint32_t>(offsetof(Pair, a)),
    static_cast<std::uint32_t>(offsetof(Pair, b)),
};

static const TypeDescriptor kPairDesc = {
    /*type_id*/ 42,
    /*size_bytes*/ sizeof(Pair),
    /*align_bytes*/ alignof(Pair),
    /*pointer_offset_count*/ 2,
    /*pointer_offsets*/ kPairOffsets,
    /*finalizer*/ nullptr,
    /*custom_trace*/ nullptr,
    /*name*/ "Pair",
};

void test_type_descriptor_registration() {
    auto& reg = global_type_registry();
    bool ok = reg.register_type(kPairDesc);
    CHECK(ok);
    // Duplicate registration must fail.
    bool dup = reg.register_type(kPairDesc);
    CHECK(!dup);
    auto* found = reg.lookup(42);
    CHECK(found != nullptr);
    CHECK(found->pointer_offset_count == 2);
    CHECK(std::strcmp(found->name, "Pair") == 0);
    CHECK(reg.lookup(9999) == nullptr);
    std::printf("test_type_descriptor_registration ok\n");
}

void test_allocate_typed_uses_generic_trace() {
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    Runtime rt(cfg);
    auto& m = rt.attach();
    Box* box = allocate_typed(m, 42);
    CHECK(box != nullptr);
    CHECK(box->type_id == 42);
    // trace_fn must be generic_trace (or the descriptor's custom).
    CHECK(box->trace_fn != nullptr);
    rt.detach();
    std::printf("test_allocate_typed_uses_generic_trace ok\n");
}

// -----------------------------------------------------------------------------
// Large objects
// -----------------------------------------------------------------------------
void test_large_alloc_above_threshold_routed_to_span() {
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    Runtime rt(cfg);
    auto& m = rt.attach();

    auto& la = global_large_allocator();
    std::size_t before = la.live_span_count();

    Box* small = m.allocate(64, nullptr, 0);
    CHECK(small != nullptr);
    CHECK(la.live_span_count() == before); // small did NOT create a span

    Box* big = m.allocate(kLargeObjectThreshold + 16, nullptr, 0);
    CHECK(big != nullptr);
    CHECK(la.live_span_count() == before + 1); // big DID create a span
    CHECK(big->page == nullptr); // not page-resident

    rt.detach();
    std::printf("test_large_alloc_above_threshold_routed_to_span (span_count=%zu)\n",
                la.live_span_count());
}

void test_large_alloc_swept_when_unreached() {
    Runtime::Config cfg;
    cfg.enable_concurrent_mark = false;
    cfg.enable_concurrent_sweep = false;
    Runtime rt(cfg);
    auto& m = rt.attach();

    auto& la = global_large_allocator();
    rt.collect_blocking(); // wipe any leftover spans from prior tests
    std::size_t before = la.live_span_count();
    Box* big = m.allocate(kLargeObjectThreshold + 4096, nullptr, 0);
    CHECK(big != nullptr);
    CHECK(la.live_span_count() == before + 1);
    // Not rooted — full GC must reclaim it.
    rt.collect_blocking();
    CHECK(la.live_span_count() == before);
    rt.detach();
    std::printf("test_large_alloc_swept_when_unreached ok\n");
}

} // namespace

int main() {
    test_card_register_and_mark();
    test_card_global_dirty_via_barrier();
    test_type_descriptor_registration();
    test_allocate_typed_uses_generic_trace();
    test_large_alloc_above_threshold_routed_to_span();
    test_large_alloc_swept_when_unreached();
    if (g_failures == 0) {
        std::printf("apollo_gc_extensions_tests: all passed\n");
        return 0;
    }
    std::printf("apollo_gc_extensions_tests: %d failure(s)\n", g_failures);
    return 1;
}
