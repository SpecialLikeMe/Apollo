#include "..\..\runtime_support\apo_autofmt_owner_runtime.hpp"

#include <exception>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>

struct Probe {
    inline static int destroyed = 0;
    int value = 0;
    std::unique_ptr<int> marker;

    explicit Probe(int initialValue = 0) : value(initialValue), marker(std::make_unique<int>(initialValue)) {}
    Probe(Probe&&) noexcept = default;
    Probe& operator=(Probe&&) noexcept = default;
    Probe(const Probe&) = delete;
    Probe& operator=(const Probe&) = delete;

    ~Probe() {
        if (marker) {
            destroyed += 1;
        }
    }
};

struct Node {
    __apo_gc_handle<Probe> child;
};

inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const Node& value) {
    __apo_gc_trace_value(tracer, value.child);
}

static void require(bool condition, const std::string& message) {
    if (!condition) {
        throw std::runtime_error(message);
    }
}

static void test_collects_unrooted_values() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto orphan = owner.make<Probe>(Probe{1});
    owner.collect();
    require(Probe::destroyed == 1, "collect() should reclaim unrooted values");
    require(orphan.__apo_current_box() == nullptr, "collect() should invalidate reclaimed handles");
}

static void test_preserves_rooted_values_until_root_removed() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto rooted = owner.make<Probe>(Probe{2});
    {
        __apo_gc_root_slot<Probe> root(owner, &rooted);
        owner.collect();
        require(Probe::destroyed == 0, "rooted values should survive collection");
        require(rooted.__apo_current_box() != nullptr, "rooted handles should remain valid");
    }
    owner.collect();
    require(Probe::destroyed == 1, "values should collect after their root is removed");
}

static void test_traces_nested_handles_from_rooted_parent() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto child = owner.make<Probe>(Probe{3});
    __apo_gc_box_base* childBox = child.__apo_current_box();
    auto parent = owner.make<Node>(Node{std::move(child)});
    {
        __apo_gc_root_slot<Node> root(owner, &parent);
        owner.collect();
        require(Probe::destroyed == 0, "reachable child values should survive collection");
        require(parent.__apo_current_box() != nullptr, "rooted parent should remain valid");
        require(parent->child.__apo_current_box() == childBox, "tracing should retain nested managed handles");
    }
    owner.collect();
    require(Probe::destroyed == 1, "nested child values should collect once the parent becomes unreachable");
}

static void test_release_moves_value_out_and_invalidates_handle() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto handle = owner.make<Probe>(Probe{4});
    Probe released = owner.release(handle);
    require(released.value == 4, "release() should return the stored value");
    require(handle.__apo_current_box() == nullptr, "release() should invalidate the original handle");
    require(Probe::destroyed == 0, "release() should move the value out before deleting the box");
}

static void test_weak_handles_do_not_keep_values_alive() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto handle = owner.make<Probe>(Probe{5});
    auto weak = handle.weak();
    handle = __apo_gc_handle<Probe>();
    owner.collect();
    require(Probe::destroyed == 1, "weak handles should not keep unreachable values alive");
    require(weak.expired(), "weak handles should expire after collection");
    require(weak.lock().__apo_current_box() == nullptr, "locking an expired weak handle should return an empty handle");
}

static void test_metrics_report_runtime_activity() {
    Probe::destroyed = 0;
    __apo_autofmt_owner owner;
    auto first = owner.make<Probe>(Probe{6});
    auto second = owner.make<Probe>(Probe{7});
    first = __apo_gc_handle<Probe>();
    second = __apo_gc_handle<Probe>();
    owner.collect();
    __apo_gc_metrics metrics = owner.metrics();
    require(metrics.allocationsCreated >= 2, "metrics should track allocations");
    require(metrics.collectionsRun >= 1, "metrics should track collections");
    require(metrics.collectedBoxes >= 2, "metrics should track reclaimed boxes");
    require(metrics.peakManagedBytes >= metrics.managedBytes, "metrics should track peak managed bytes");
    require(metrics.collectThreshold >= metrics.managedBytes, "metrics should keep threshold at or above live bytes");
}

int main() {
    try {
        test_collects_unrooted_values();
        test_preserves_rooted_values_until_root_removed();
        test_traces_nested_handles_from_rooted_parent();
        test_release_moves_value_out_and_invalidates_handle();
        test_weak_handles_do_not_keep_values_alive();
        test_metrics_report_runtime_activity();
        std::cout << "gc runtime probe passed" << std::endl;
        return 0;
    } catch (const std::exception& ex) {
        std::cerr << ex.what() << std::endl;
        return 1;
    }
}
