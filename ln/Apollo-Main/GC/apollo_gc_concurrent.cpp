// Apollo concurrent tri-color mark-and-sweep collector — implementation.
//
// See `apollo_gc_concurrent.hpp` for the public design summary.
//
// Page layout
// -----------
// A `Page` is a fixed-size slab carved out by `::operator new`. The page
// header lives at offset 0; the rest is a bump region from which the owner
// mutator allocates by advancing a high-water pointer. Once the page is
// full it is closed: ownership transfers to the runtime, which records it
// in `all_pages_` and will revisit it during the next sweep. Sweeping a
// page rebuilds the page's free intrusive list and (if every object was
// reclaimed) places the page on `free_pages_` for reuse.
//
// This is deliberately a simple bump-then-sweep design. No size classes,
// no segregated freelists. The expectation is that Apollo's MIR-driven
// codegen will eventually emit type-specialized fast paths, but the
// public runtime ABI here does not bake in those optimisations.

#include "apollo_gc_concurrent.hpp"
#include "apollo_gc_cards.hpp"
#include "apollo_gc_large.hpp"

#include <algorithm>
#include <cassert>
#include <chrono>
#include <cstdlib>
#include <cstring>
#include <new>

namespace apollo {
namespace gc {

namespace {

constexpr std::size_t kBoxAlignment = alignof(Box);

inline std::size_t align_up(std::size_t v, std::size_t a) noexcept {
    return (v + (a - 1)) & ~(a - 1);
}

thread_local Mutator* tls_mutator = nullptr;
Runtime* g_runtime = nullptr;
std::mutex g_runtime_mutex;

} // namespace

// ---------------------------------------------------------------------------
// Page
// ---------------------------------------------------------------------------

struct Page {
    std::size_t        bytes = 0;            // total page size including header
    unsigned char*     base = nullptr;       // bump region start
    unsigned char*     end  = nullptr;       // bump region end
    std::atomic<unsigned char*> bump{nullptr}; // current high-water (atomic for sweeper coordination)
    std::vector<Box*>  live_boxes;           // populated as boxes are allocated; rebuilt by sweep
    std::mutex         live_mtx;             // guards live_boxes during concurrent allocation/sweep
    Mutator*           owner = nullptr;      // nullptr if currently shared / pending sweep
    bool               in_sweep_ready = false;
};

// ---------------------------------------------------------------------------
// Tracer
// ---------------------------------------------------------------------------

void Tracer::mark(Box* child) noexcept {
    if (child == nullptr) return;
    auto& rt = mutator_.runtime();
    auto white = rt.sweep_white_.load(std::memory_order_acquire);
    if (child->try_shade_to_grey(white)) {
        mutator_.push_grey(child);
    }
}

void Tracer::mark_value(void* ptr) noexcept {
    // The codegen-emitted trace bodies use this for generic managed
    // pointer fields. We make no assumption that `ptr` is a Box*; the
    // contract is that the trace_fn only passes valid managed pointers.
    mark(static_cast<Box*>(ptr));
}

// ---------------------------------------------------------------------------
// Mutator
// ---------------------------------------------------------------------------

Mutator::Mutator(Runtime& rt, std::size_t id) noexcept : rt_(rt), id_(id) {}
Mutator::~Mutator() = default;

Box* Mutator::allocate(std::size_t payload_bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept {
    // Large-object fast path: anything at or above the threshold gets
    // its own dedicated span instead of fragmenting a small-object
    // page.
    if (Box* lo_box = try_large_allocate(*this, payload_bytes, trace_fn, type_id)) {
        rt_.bytes_allocated_.fetch_add(lo_box->bytes, std::memory_order_relaxed);
        return lo_box;
    }
    const std::size_t total = align_up(sizeof(Box) + payload_bytes, kBoxAlignment);
    if (tlab_cur_ + total <= tlab_end_) {
        auto* raw = tlab_cur_;
        tlab_cur_ += total;
        auto* box = ::new (raw) Box();
        box->bytes = static_cast<std::uint32_t>(total);
        box->trace_fn = trace_fn;
        box->type_id = type_id;
        box->page = tlab_page_;
        // Newly allocated objects take the current allocation color.
        box->set_color(rt_.alloc_color_.load(std::memory_order_acquire));
        if (tlab_page_) {
            std::lock_guard<std::mutex> lk(tlab_page_->live_mtx);
            tlab_page_->live_boxes.push_back(box);
        }
        rt_.bytes_allocated_.fetch_add(total, std::memory_order_relaxed);
        return box;
    }
    return allocate_slow(payload_bytes, trace_fn, type_id);
}

Box* Mutator::allocate_slow(std::size_t payload_bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept {
    // Close current page (return to runtime), grab a fresh one, retry.
    if (tlab_page_) {
        rt_.return_page_for_sweep(tlab_page_);
        tlab_page_ = nullptr;
        tlab_cur_ = tlab_end_ = nullptr;
    }
    auto* page = rt_.acquire_page(*this);
    if (!page) {
        return nullptr; // OOM — caller decides what to do
    }
    tlab_page_ = page;
    tlab_cur_ = page->bump.load(std::memory_order_acquire);
    tlab_end_ = page->end;
    return allocate(payload_bytes, trace_fn, type_id);
}

void Mutator::push_grey(Box* box) noexcept {
    {
        std::lock_guard<std::mutex> lk(queue_mtx_);
        grey_queue_.push_back(box);
    }
    rt_.outstanding_grey_.fetch_add(1, std::memory_order_acq_rel);
}

Box* Mutator::pop_grey() noexcept {
    std::lock_guard<std::mutex> lk(queue_mtx_);
    if (grey_queue_.empty()) return nullptr;
    auto* b = grey_queue_.front();
    grey_queue_.pop_front();
    rt_.outstanding_grey_.fetch_sub(1, std::memory_order_acq_rel);
    return b;
}

std::size_t Mutator::local_greys() const noexcept {
    std::lock_guard<std::mutex> lk(queue_mtx_);
    return grey_queue_.size();
}

void Mutator::safepoint_slow() noexcept {
    // Mark ourselves as parked and wait until the coordinator releases.
    at_safepoint_.store(true, std::memory_order_release);
    rt_.coordinator_cv_.notify_all();
    {
        std::unique_lock<std::mutex> lk(rt_.coordinator_mtx_);
        rt_.coordinator_cv_.wait(lk, [this]{
            return !poll_requested_.load(std::memory_order_acquire);
        });
    }
    at_safepoint_.store(false, std::memory_order_release);
}

// ---------------------------------------------------------------------------
// Runtime
// ---------------------------------------------------------------------------

Runtime::Runtime() : Runtime(Config{}) {}

Runtime::Runtime(Config cfg) : cfg_(cfg) {
    if (cfg_.page_bytes < 4096) cfg_.page_bytes = 4096;
    trigger_bytes_.store(cfg_.initial_heap_bytes, std::memory_order_relaxed);

    std::size_t threads = cfg_.marker_threads;
    if (threads == 0) {
        threads = std::max<std::size_t>(1, std::thread::hardware_concurrency() / 2);
    }
    if (cfg_.enable_concurrent_mark) {
        for (std::size_t i = 0; i < threads; ++i) {
            marker_threads_.emplace_back(&Runtime::marker_loop, this, i);
        }
    }
    if (cfg_.enable_concurrent_sweep) {
        sweeper_thread_ = std::thread(&Runtime::sweeper_loop, this);
    }
}

Runtime::~Runtime() {
    shutdown_.store(true, std::memory_order_release);
    coordinator_cv_.notify_all();
    global_grey_cv_.notify_all();
    for (auto& t : marker_threads_) if (t.joinable()) t.join();
    if (sweeper_thread_.joinable()) sweeper_thread_.join();

    // Free all pages.
    std::lock_guard<std::mutex> lk(pages_mtx_);
    for (auto* page : all_pages_) {
        {
            std::lock_guard<std::mutex> lk2(page->live_mtx);
            for (auto* box : page->live_boxes) {
                box->~Box();
            }
        }
        page->~Page();
        std::free(page);
    }
    all_pages_.clear();
    free_pages_.clear();
    sweep_ready_pages_.clear();
}

Mutator& Runtime::attach() {
    if (tls_mutator) return *tls_mutator;
    auto id = next_mutator_id_.fetch_add(1, std::memory_order_relaxed);
    auto* m = new Mutator(*this, id);
    {
        std::lock_guard<std::mutex> lk(mutators_mtx_);
        mutators_.push_back(m);
    }
    tls_mutator = m;
    return *m;
}

void Runtime::detach() {
    auto* m = tls_mutator;
    if (!m) return;
    if (m->tlab_page_) {
        return_page_for_sweep(m->tlab_page_);
        m->tlab_page_ = nullptr;
        m->tlab_cur_ = m->tlab_end_ = nullptr;
    }
    {
        std::lock_guard<std::mutex> lk(mutators_mtx_);
        mutators_.erase(std::remove(mutators_.begin(), mutators_.end(), m), mutators_.end());
    }
    tls_mutator = nullptr;
    delete m;
}

Page* Runtime::acquire_page(Mutator& m) noexcept {
    std::lock_guard<std::mutex> lk(pages_mtx_);
    Page* page = nullptr;
    if (!free_pages_.empty()) {
        page = free_pages_.back();
        free_pages_.pop_back();
        // Reset bump cursor; live_boxes was cleared by the sweeper.
        page->bump.store(page->base, std::memory_order_release);
    } else {
        const std::size_t total = cfg_.page_bytes;
        void* raw = std::malloc(total);
        if (!raw) return nullptr;
        page = ::new (raw) Page();
        page->bytes = total;
        page->base = reinterpret_cast<unsigned char*>(raw) + align_up(sizeof(Page), kBoxAlignment);
        page->end  = reinterpret_cast<unsigned char*>(raw) + total;
        page->bump.store(page->base, std::memory_order_release);
        all_pages_.push_back(page);
    }
    page->owner = &m;
    page->in_sweep_ready = false;
    return page;
}

void Runtime::return_page_for_sweep(Page* page) noexcept {
    if (!page) return;
    // Persist the final bump pointer so the sweeper knows where the live
    // window ends. We *also* keep `live_boxes` as the authoritative list.
    page->bump.store(page->bump.load(std::memory_order_acquire), std::memory_order_release);
    page->owner = nullptr;
    std::lock_guard<std::mutex> lk(pages_mtx_);
    if (!page->in_sweep_ready) {
        sweep_ready_pages_.push_back(page);
        page->in_sweep_ready = true;
    }
}

void Runtime::request_collection() noexcept {
    collection_requested_.store(true, std::memory_order_release);
    coordinator_cv_.notify_all();
}

void Runtime::collect_blocking() {
    run_cycle();
}

Runtime::RootHandle Runtime::register_root(Box* box) noexcept {
    std::lock_guard<std::mutex> lk(roots_mtx_);
    roots_.push_back(box);
    return RootHandle{ reinterpret_cast<std::uintptr_t>(box) };
}

void Runtime::unregister_root(RootHandle h) noexcept {
    std::lock_guard<std::mutex> lk(roots_mtx_);
    auto* box = reinterpret_cast<Box*>(h.opaque);
    auto it = std::find(roots_.begin(), roots_.end(), box);
    if (it != roots_.end()) roots_.erase(it);
}

GcStats Runtime::stats() const noexcept {
    std::lock_guard<std::mutex> lk(stats_mtx_);
    GcStats out = stats_internal_;
    out.bytes_allocated = bytes_allocated_.load(std::memory_order_relaxed);
    return out;
}

std::string Runtime::stats_json() const {
    const auto s = stats();
    std::string out;
    out.reserve(384);
    out += '{';
    auto kv_u = [&](const char* k, std::uint64_t v, bool comma = true) {
        out += '"'; out += k; out += "\":";
        out += std::to_string(v);
        if (comma) out += ',';
    };
    kv_u("cycles", s.cycles);
    kv_u("bytes_allocated", s.bytes_allocated);
    kv_u("bytes_swept", s.bytes_swept);
    kv_u("bytes_live_after_last_cycle", s.bytes_live_after_last_cycle);
    kv_u("mark_nanos_last", s.mark_nanos_last);
    kv_u("sweep_nanos_last", s.sweep_nanos_last);
    kv_u("safepoint_handshakes", s.safepoint_handshakes);
    kv_u("page_bytes", cfg_.page_bytes);
    kv_u("tlab_bytes", cfg_.tlab_bytes ? cfg_.tlab_bytes : cfg_.page_bytes);
    kv_u("gogc_percent", cfg_.gogc_percent);
    kv_u("max_heap_bytes", cfg_.max_heap_bytes, /*comma=*/false);
    out += '}';
    return out;
}

// ---------- collector coordination ----------

void Runtime::request_safepoint_all() noexcept {
    std::vector<Mutator*> snapshot;
    {
        std::lock_guard<std::mutex> lk(mutators_mtx_);
        snapshot = mutators_;
    }
    for (auto* m : snapshot) {
        if (m->is_collector_) continue;
        m->poll_requested_.store(true, std::memory_order_release);
    }
    // Wait for each mutator to acknowledge. The current thread is itself a
    // mutator (the one calling collect_blocking) — skip it; collector
    // threads are likewise skipped.
    std::unique_lock<std::mutex> lk(coordinator_mtx_);
    coordinator_cv_.wait(lk, [&]{
        for (auto* m : snapshot) {
            if (m == tls_mutator || m->is_collector_) continue;
            if (!m->at_safepoint_.load(std::memory_order_acquire)) return false;
        }
        return true;
    });
    {
        std::lock_guard<std::mutex> sk(stats_mtx_);
        stats_internal_.safepoint_handshakes++;
    }
}

void Runtime::release_safepoint_all() noexcept {
    std::vector<Mutator*> snapshot;
    {
        std::lock_guard<std::mutex> lk(mutators_mtx_);
        snapshot = mutators_;
    }
    for (auto* m : snapshot) {
        m->poll_requested_.store(false, std::memory_order_release);
    }
    coordinator_cv_.notify_all();
}

void Runtime::start_mark() {
    // STW prepare: flip the allocation color to Black so any allocation that
    // races into the mark phase is conservatively considered marked.
    request_safepoint_all();
    auto cur_white = sweep_white_.load(std::memory_order_acquire);
    alloc_color_.store(Color::Black, std::memory_order_release);
    phase_.store(Phase::Mark, std::memory_order_release);

    // Seed the mark queue with all registered roots and stack-scanned roots.
    {
        Mutator& seed = (tls_mutator ? *tls_mutator : attach());
        Tracer tracer(seed);
        {
            std::lock_guard<std::mutex> lk(roots_mtx_);
            for (auto* r : roots_) tracer.mark(r);
        }
        if (stack_scan_) {
            std::lock_guard<std::mutex> lk(mutators_mtx_);
            for (auto* m : mutators_) {
                if (m->is_collector_) continue;
                stack_scan_(*m, tracer);
            }
        }
        (void)cur_white;
    }
    release_safepoint_all();
}

void Runtime::concurrent_mark() {
    // Wait for the marker threads (or do the work inline if concurrent
    // marking is disabled). When all queues are drained, transition.
    if (cfg_.enable_concurrent_mark) {
        // Wake markers and wait for outstanding work to reach zero.
        global_grey_cv_.notify_all();
        std::unique_lock<std::mutex> lk(coordinator_mtx_);
        coordinator_cv_.wait(lk, [&]{
            if (shutdown_.load(std::memory_order_acquire)) return true;
            if (outstanding_grey_.load(std::memory_order_acquire) != 0) return false;
            if (active_tracers_.load(std::memory_order_acquire) != 0) return false;
            // Also confirm every mutator's private queue is empty.
            std::lock_guard<std::mutex> mk(mutators_mtx_);
            for (auto* m : mutators_) {
                if (m->local_greys() != 0) return false;
            }
            return true;
        });
    } else {
        // Inline drain on the caller (the test/blocking path).
        Mutator& self = (tls_mutator ? *tls_mutator : attach());
        Tracer tracer(self);
        for (;;) {
            Box* box = self.pop_grey();
            if (!box) {
                std::lock_guard<std::mutex> lk(global_grey_mtx_);
                if (global_grey_.empty()) break;
                box = global_grey_.front();
                global_grey_.pop_front();
                outstanding_grey_.fetch_sub(1, std::memory_order_acq_rel);
            }
            active_tracers_.fetch_add(1, std::memory_order_acq_rel);
            if (box->trace_fn) box->trace_fn(box, &tracer);
            box->set_color(Color::Black);
            active_tracers_.fetch_sub(1, std::memory_order_acq_rel);
        }
    }
}

void Runtime::mark_terminate() {
    // STW: re-scan mutator stacks and flush any greys that landed during the
    // concurrent phase tail. Loop because re-scanning can create new greys.
    request_safepoint_all();
    phase_.store(Phase::MarkTerminate, std::memory_order_release);
    {
        Mutator& seed = (tls_mutator ? *tls_mutator : attach());
        Tracer tracer(seed);
        if (stack_scan_) {
            std::lock_guard<std::mutex> lk(mutators_mtx_);
            for (auto* m : mutators_) {
                if (m->is_collector_) continue;
                stack_scan_(*m, tracer);
            }
        }
        // Drain anything we just shaded.
        for (;;) {
            Box* box = seed.pop_grey();
            if (!box) {
                std::lock_guard<std::mutex> lk(global_grey_mtx_);
                if (global_grey_.empty()) break;
                box = global_grey_.front();
                global_grey_.pop_front();
                outstanding_grey_.fetch_sub(1, std::memory_order_acq_rel);
            }
            active_tracers_.fetch_add(1, std::memory_order_acq_rel);
            if (box->trace_fn) box->trace_fn(box, &tracer);
            box->set_color(Color::Black);
            active_tracers_.fetch_sub(1, std::memory_order_acq_rel);
        }
    }
    release_safepoint_all();
}

void Runtime::concurrent_sweep() {
    phase_.store(Phase::Sweep, std::memory_order_release);
    auto white = sweep_white_.load(std::memory_order_acquire);

    std::vector<Page*> pages_snapshot;
    {
        std::lock_guard<std::mutex> lk(pages_mtx_);
        pages_snapshot = all_pages_;
    }

    std::uint64_t bytes_swept = 0;
    std::uint64_t bytes_live  = 0;

    for (auto* page : pages_snapshot) {
        std::lock_guard<std::mutex> lk(page->live_mtx);
        std::vector<Box*> survivors;
        survivors.reserve(page->live_boxes.size());
        for (auto* box : page->live_boxes) {
            auto c = box->color(std::memory_order_acquire);
            if (c == white) {
                bytes_swept += box->bytes;
                box->~Box();
                // Memory is part of the bump region; we don't return it
                // individually. Whole-page recycling happens below.
            } else {
                bytes_live += box->bytes;
                // Repaint to the *new* allocation white so the next cycle
                // sees them as unmarked.
                survivors.push_back(box);
            }
        }
        page->live_boxes = std::move(survivors);
    }

    // Flip the sweep_white and reset the allocation color back to a white
    // (the *other* one) so the next cycle's allocation-black optimisation
    // works without rewriting every survivor.
    auto next_white = (white == Color::WhiteA) ? Color::WhiteB : Color::WhiteA;
    // Survivors are currently Black. Repaint them to next_white in bulk.
    for (auto* page : pages_snapshot) {
        std::lock_guard<std::mutex> lk(page->live_mtx);
        for (auto* box : page->live_boxes) {
            box->set_color(next_white);
        }
    }
    sweep_white_.store(next_white, std::memory_order_release);
    alloc_color_.store(next_white, std::memory_order_release);

    // Sweep large-object spans. They share mark color with the rest
    // of the heap, so the same `white` value works. Survivors get
    // repainted to `next_white` for the next cycle. We forward-declare
    // the helpers here to keep this TU free of the large/card headers
    // (one-way dependency: large/card -> concurrent, never the other
    // direction).
    {
        auto& la = global_large_allocator();
        bytes_swept += la.sweep(white);
        la.for_each([next_white, &bytes_live](LargeSpan* span) {
            if (span && span->box) {
                span->box->set_color(next_white);
                bytes_live += span->span_bytes;
            }
        });
        // Clear the card table now that we've consumed it. The next
        // mark cycle will populate it again.
        global_card_table().clear_all();
    }

    // Reclaim fully empty pages.
    {
        std::lock_guard<std::mutex> lk(pages_mtx_);
        for (auto*& page : sweep_ready_pages_) {
            std::lock_guard<std::mutex> lk2(page->live_mtx);
            if (page->live_boxes.empty()) {
                page->bump.store(page->base, std::memory_order_release);
                page->in_sweep_ready = false;
                free_pages_.push_back(page);
            }
        }
        sweep_ready_pages_.erase(
            std::remove_if(sweep_ready_pages_.begin(), sweep_ready_pages_.end(),
                           [](Page* p){ return !p->in_sweep_ready; }),
            sweep_ready_pages_.end());
    }

    {
        std::lock_guard<std::mutex> lk(stats_mtx_);
        stats_internal_.bytes_swept += bytes_swept;
        stats_internal_.bytes_live_after_last_cycle = bytes_live;
        stats_internal_.cycles++;
    }
    bytes_live_after_last_cycle_.store(bytes_live, std::memory_order_release);

    phase_.store(Phase::Idle, std::memory_order_release);
}

void Runtime::update_pacing(std::uint64_t cycle_nanos, std::uint64_t mark_nanos) {
    auto live = bytes_live_after_last_cycle_.load(std::memory_order_acquire);
    double u = 0.5;
    if (cycle_nanos > 0) {
        u = static_cast<double>(mark_nanos) / static_cast<double>(cycle_nanos);
        if (u > 1.0) u = 1.0;
        if (u < 0.0) u = 0.0;
    }
    double factor = 1.0 + (static_cast<double>(cfg_.gogc_percent) / 100.0) * (1.0 - u);
    auto trigger = static_cast<std::uint64_t>(static_cast<double>(live) * factor);
    if (trigger < cfg_.initial_heap_bytes) trigger = cfg_.initial_heap_bytes;
    trigger_bytes_.store(trigger, std::memory_order_release);
}

void Runtime::run_cycle() {
    auto t0 = std::chrono::steady_clock::now();
    start_mark();
    auto t1 = std::chrono::steady_clock::now();
    concurrent_mark();
    mark_terminate();
    auto t2 = std::chrono::steady_clock::now();
    concurrent_sweep();
    auto t3 = std::chrono::steady_clock::now();

    std::uint64_t mark_ns  = static_cast<std::uint64_t>(std::chrono::duration_cast<std::chrono::nanoseconds>(t2 - t1).count());
    std::uint64_t sweep_ns = static_cast<std::uint64_t>(std::chrono::duration_cast<std::chrono::nanoseconds>(t3 - t2).count());
    std::uint64_t total_ns = static_cast<std::uint64_t>(std::chrono::duration_cast<std::chrono::nanoseconds>(t3 - t0).count());
    {
        std::lock_guard<std::mutex> lk(stats_mtx_);
        stats_internal_.mark_nanos_last = mark_ns;
        stats_internal_.sweep_nanos_last = sweep_ns;
    }
    update_pacing(total_ns, mark_ns);
    collection_requested_.store(false, std::memory_order_release);
}

void Runtime::marker_loop(std::size_t /*marker_index*/) noexcept {
    Mutator& self = attach();
    self.is_collector_ = true;
    Tracer tracer(self);
    for (;;) {
        if (shutdown_.load(std::memory_order_acquire)) break;
        // Wait until a mark phase is active.
        {
            std::unique_lock<std::mutex> lk(coordinator_mtx_);
            coordinator_cv_.wait(lk, [&]{
                if (shutdown_.load(std::memory_order_acquire)) return true;
                auto p = phase_.load(std::memory_order_acquire);
                return p == Phase::Mark || p == Phase::MarkTerminate;
            });
        }
        if (shutdown_.load(std::memory_order_acquire)) break;

        // Drain greys: prefer our own, then the global queue, then steal
        // from other mutators. `active_tracers_` is incremented BEFORE we
        // attempt to claim a box and decremented only after the box has
        // been fully traced (or after we've confirmed no work remains).
        // This closes the race where the coordinator could otherwise
        // observe `outstanding_grey_ == 0` in the brief window between
        // popping a box and pushing its children.
        for (;;) {
            active_tracers_.fetch_add(1, std::memory_order_acq_rel);
            Box* box = self.pop_grey();
            if (!box) {
                std::unique_lock<std::mutex> lk(global_grey_mtx_);
                if (!global_grey_.empty()) {
                    box = global_grey_.front();
                    global_grey_.pop_front();
                    outstanding_grey_.fetch_sub(1, std::memory_order_acq_rel);
                }
            }
            if (!box) {
                // Steal.
                std::lock_guard<std::mutex> lk(mutators_mtx_);
                for (auto* m : mutators_) {
                    if (m == &self) continue;
                    box = m->pop_grey();
                    if (box) break;
                }
            }
            if (!box) {
                active_tracers_.fetch_sub(1, std::memory_order_acq_rel);
                break;
            }
            if (box->trace_fn) box->trace_fn(box, &tracer);
            box->set_color(Color::Black);
            active_tracers_.fetch_sub(1, std::memory_order_acq_rel);
        }

        // We've drained all visible greys; wake the coordinator so it can
        // decide whether to enter mark-terminate.
        coordinator_cv_.notify_all();

        // Wait until the coordinator moves the phase forward.
        {
            std::unique_lock<std::mutex> lk(coordinator_mtx_);
            coordinator_cv_.wait(lk, [&]{
                if (shutdown_.load(std::memory_order_acquire)) return true;
                auto p = phase_.load(std::memory_order_acquire);
                return p == Phase::Idle || p == Phase::Sweep;
            });
        }
    }
    detach();
}

void Runtime::sweeper_loop() noexcept {
    Mutator& self = attach();
    self.is_collector_ = true;
    (void)self;
    for (;;) {
        if (shutdown_.load(std::memory_order_acquire)) break;
        std::unique_lock<std::mutex> lk(coordinator_mtx_);
        coordinator_cv_.wait(lk, [&]{
            if (shutdown_.load(std::memory_order_acquire)) return true;
            return collection_requested_.load(std::memory_order_acquire) ||
                   bytes_allocated_.load(std::memory_order_acquire) >=
                       trigger_bytes_.load(std::memory_order_acquire);
        });
        if (shutdown_.load(std::memory_order_acquire)) break;
        lk.unlock();
        run_cycle();
    }
    detach();
}

// ---------------------------------------------------------------------------
// C ABI shims.
// ---------------------------------------------------------------------------

extern "C" {

void apollo_gc_concurrent_init() {
    std::lock_guard<std::mutex> lk(g_runtime_mutex);
    if (!g_runtime) g_runtime = new Runtime();
}

void apollo_gc_concurrent_shutdown() {
    std::lock_guard<std::mutex> lk(g_runtime_mutex);
    delete g_runtime;
    g_runtime = nullptr;
}

void* apollo_gc_concurrent_attach() {
    return &g_runtime->attach();
}

void apollo_gc_concurrent_detach() {
    if (g_runtime) g_runtime->detach();
}

void* apollo_gc_concurrent_alloc(void* mutator, std::size_t bytes,
                                 void (*trace_fn)(void*, void*),
                                 std::uint16_t type_id) {
    auto* m = static_cast<Mutator*>(mutator);
    return m->allocate(bytes, reinterpret_cast<TraceFn>(trace_fn), type_id);
}

void apollo_gc_concurrent_safepoint(void* mutator) {
    static_cast<Mutator*>(mutator)->safepoint();
}

void apollo_gc_concurrent_write_barrier(void* mutator, void** slot, void* value) {
    write_barrier(*static_cast<Mutator*>(mutator),
                  reinterpret_cast<Box**>(slot),
                  static_cast<Box*>(value));
}

std::uintptr_t apollo_gc_concurrent_register_root(void* box) {
    return g_runtime->register_root(static_cast<Box*>(box)).opaque;
}

void apollo_gc_concurrent_unregister_root(std::uintptr_t handle) {
    g_runtime->unregister_root(Runtime::RootHandle{handle});
}

void apollo_gc_concurrent_collect() {
    g_runtime->collect_blocking();
}

} // extern "C"

} // namespace gc
} // namespace apollo
