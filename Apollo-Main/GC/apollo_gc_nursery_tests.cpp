// =============================================================================
// Apollo GC \u2014 Nursery tests (Workstream A).
// =============================================================================

#include "apollo_gc_nursery.hpp"

#include <cassert>
#include <cstdio>
#include <cstdint>
#include <vector>

using namespace apollo::gc;

namespace {

struct Payload {
    std::uint32_t tag;
    std::uint32_t value;
};

constexpr std::size_t kBoxSize = sizeof(Box) + sizeof(Payload);

Box* alloc_payload(Nursery& n, std::uint32_t tag, std::uint32_t value) {
    Box* b = n.try_allocate(kBoxSize, nullptr, 1);
    assert(b && "nursery alloc failed");
    auto* payload = reinterpret_cast<Payload*>(reinterpret_cast<unsigned char*>(b) + sizeof(Box));
    payload->tag   = tag;
    payload->value = value;
    return b;
}

Payload* payload_of(Box* b) {
    return reinterpret_cast<Payload*>(reinterpret_cast<unsigned char*>(b) + sizeof(Box));
}

// -----------------------------------------------------------------------------
// Test 1: allocate, minor cycle, survivors copied to to-space.
// -----------------------------------------------------------------------------
void test_basic_copy() {
    Nursery n({/*bytes_per_space=*/4096, /*promote_after_collections=*/100});

    Box* a = alloc_payload(n, 0xAA, 1);
    Box* b = alloc_payload(n, 0xBB, 2);
    Box* c = alloc_payload(n, 0xCC, 3); // becomes garbage

    std::vector<Box*> roots = {a, b};
    std::vector<Box**> slots; // no slots to rewrite

    const std::size_t alloc_before = n.bytes_in_use();
    n.minor_collect(roots, slots, /*promote=*/nullptr);

    auto stats = n.stats();
    assert(stats.minor_cycles == 1);
    assert(stats.boxes_collected >= 1 && "c should have been collected");
    assert(stats.bytes_copied > 0);
    assert(n.bytes_in_use() <= alloc_before);
    (void)c;
    std::puts("test_basic_copy ok");
}

// -----------------------------------------------------------------------------
// Test 2: slots rewritten in place after compaction.
// -----------------------------------------------------------------------------
void test_slot_rewrite() {
    Nursery n({4096, 100});

    Box* a = alloc_payload(n, 0xA1, 42);
    Box* slot = a;

    std::vector<Box*> roots = {a};
    std::vector<Box**> slots = {&slot};
    n.minor_collect(roots, slots, nullptr);

    assert(slot != nullptr);
    auto* p = payload_of(slot);
    assert(p->tag == 0xA1 && p->value == 42);
    std::puts("test_slot_rewrite ok");
}

// -----------------------------------------------------------------------------
// Test 3: promotion after N survival cycles.
// -----------------------------------------------------------------------------
void test_promotion() {
    Nursery n({4096, /*promote_after=*/2});

    Box* a = alloc_payload(n, 0xDE, 99);
    Box* slot = a;

    std::vector<Box*> tenured_boxes;
    PromoteFn promote = [&tenured_boxes](const Box* from) -> Box* {
        auto* mem = static_cast<unsigned char*>(std::malloc(from->bytes));
        std::memcpy(mem, from, from->bytes);
        Box* dst = std::launder(reinterpret_cast<Box*>(mem));
        new (&dst->header) std::atomic<std::uintptr_t>(
            from->header.load(std::memory_order_acquire) & kColorMask);
        dst->generation = 1;
        tenured_boxes.push_back(dst);
        return dst;
    };

    std::vector<Box*> roots = {slot};
    std::vector<Box**> slots = {&slot};
    n.minor_collect(roots, slots, promote);
    assert(slot != a); // forwarded to to-space copy (survival=1)
    assert(slot->generation == 0);
    assert(n.stats().boxes_promoted == 0);

    roots = {slot};
    n.minor_collect(roots, slots, promote);
    // Now survival_count reaches the threshold; should promote.
    assert(slot->generation == 1);
    assert(n.stats().boxes_promoted == 1);
    assert(!tenured_boxes.empty());

    // Verify payload preserved through copy + promote.
    auto* p = payload_of(slot);
    assert(p->tag == 0xDE && p->value == 99);

    // Cleanup tenured (no real old-gen in this test).
    for (Box* tb : tenured_boxes) std::free(tb);

    std::puts("test_promotion ok");
}

// -----------------------------------------------------------------------------
// Test 4: nursery overflow returns nullptr, triggers GC + retry succeeds.
// -----------------------------------------------------------------------------
void test_overflow_then_collect() {
    Nursery n({/*bytes_per_space=*/512, /*promote_after=*/100});
    std::vector<Box*> roots;
    Box* allocated = nullptr;
    int total = 0;
    for (;;) {
        Box* b = n.try_allocate(kBoxSize, nullptr, 7);
        if (!b) break;
        allocated = b;
        total++;
    }
    assert(total > 0);
    // Now overflow. Drop all but one root and collect.
    roots = {allocated};
    std::vector<Box**> slots;
    n.minor_collect(roots, slots, nullptr);
    // Should be able to allocate again now that most was freed.
    Box* fresh = n.try_allocate(kBoxSize, nullptr, 8);
    assert(fresh != nullptr);
    assert(n.stats().boxes_collected >= static_cast<std::uint64_t>(total - 1));
    std::puts("test_overflow_then_collect ok");
}

// -----------------------------------------------------------------------------
// Test 5: non-nursery pointers in root slots are left alone.
// -----------------------------------------------------------------------------
void test_external_pointers_untouched() {
    Nursery n({4096, 100});

    Box fake{}; // lives on the stack; not a nursery box
    fake.bytes = sizeof(Box);
    Box* slot = &fake;
    Box* nursery_box = alloc_payload(n, 0x11, 1);
    Box* nursery_slot = nursery_box;

    std::vector<Box*> roots = {nursery_box};
    std::vector<Box**> slots = {&slot, &nursery_slot};
    n.minor_collect(roots, slots, nullptr);

    assert(slot == &fake && "external pointer should be untouched");
    assert(nursery_slot != nullptr);
    std::puts("test_external_pointers_untouched ok");
}

} // namespace

int main() {
    test_basic_copy();
    test_slot_rewrite();
    test_promotion();
    test_overflow_then_collect();
    test_external_pointers_untouched();
    std::puts("apollo_gc_nursery_tests: all passed");
    return 0;
}
