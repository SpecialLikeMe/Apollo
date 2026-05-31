// Apollo concurrent tri-color mark-and-sweep garbage collector.
//
// Design summary
// --------------
// Mutator-collector concurrency model:
//   * Tri-color invariant maintained via a Dijkstra-style insertion write
//     barrier. When a black object becomes a parent of a white object during
//     a concurrent mark phase, the white child is shaded grey by pushing it
//     onto the marker's work queue.
//   * Marking runs on one or more dedicated collector threads. Mutator
//     threads continue to allocate and execute Apollo code; they cooperate
//     via:
//       - the insertion barrier emitted at every managed-pointer store, and
//       - safepoint polls inserted by the compiler into back-edges and
//         non-leaf calls. The runtime promotes a poll to a hard handshake
//         when a GC phase transition (mark-start, mark-term, sweep-term)
//         must observe a globally consistent mutator state.
//   * Sweep is lazy and per-page. Pages move to the SwepReady list when the
//     mark phase finishes; mutators that hit an empty allocation buffer pull
//     the next ready page and sweep-on-demand. A background sweeper drains
//     anything mutators haven't touched.
//   * Heap pacing follows Go's GOGC model:
//
//         h_trigger = h_live * (1 + GOGC/100 * (1 - u))
//
//     where u is the running utilisation estimate (fraction of CPU time
//     the marker took relative to mutator time during the previous cycle).
//
// Public surface
// --------------
//   * __apo_gc_concurrent::Runtime         — process-global collector state.
//   * __apo_gc_concurrent::Mutator         — per-thread mutator handle.
//   * __apo_gc_concurrent::Box             — managed allocation header (base).
//   * __apo_gc_concurrent::TypedBox<T>     — typed allocation header used by
//                                            the runtime/codegen.
//   * write_barrier(slot, value)           — Dijkstra insertion barrier; the
//                                            compiler must call this for
//                                            every store of a managed
//                                            pointer into a managed slot.
//   * safepoint_poll(mutator)              — cooperative safepoint; the
//                                            compiler emits one of these at
//                                            every back-edge and every
//                                            non-leaf call return.
//   * register_root / unregister_root      — explicit root slots (used by
//                                            global / TLS / FFI bindings).
//
// The collector is intentionally header-driven so the Apollo runtime and
// the test harness can link the same translation unit. The body lives in
// `apollo_gc_concurrent.cpp`; only declarations, the templated `TypedBox`
// helper, and the always-inline barrier sit in this header so the codegen
// can emit direct calls without a TU boundary.

#ifndef APOLLO_GC_CONCURRENT_HPP
#define APOLLO_GC_CONCURRENT_HPP

#include <atomic>
#include <condition_variable>
#include <cstddef>
#include <cstdint>
#include <deque>
#include <functional>
#include <mutex>
#include <string>
#include <thread>
#include <vector>

namespace apollo {
namespace gc {

// ---------------------------------------------------------------------------
// Forward declarations
// ---------------------------------------------------------------------------

class Runtime;
class Mutator;
struct Box;
struct Page;

using TraceFn = void (*)(Box* self, void* visitor);

// ---------------------------------------------------------------------------
// Tri-color marking
// ---------------------------------------------------------------------------
//
// Colors are stored in the low two bits of `Box::header`. Allocation paints
// new objects either "white_current" (allocated black for the current cycle,
// because they cannot yet be reached by the marker — this is the standard
// "allocate-black" optimisation) or "white_next" depending on the mark
// phase. After the sweep, the meaning of the two whites flips so that the
// surviving cycle's objects become white again without any per-object
// rewrite.
enum class Color : std::uint8_t {
    WhiteA = 0,
    WhiteB = 1,
    Grey   = 2,
    Black  = 3,
};

inline constexpr std::uintptr_t kColorMask     = 0x3u;
inline constexpr std::uintptr_t kRememberedBit = 0x4u; // SATB / remset hint
inline constexpr std::uintptr_t kPinnedBit     = 0x8u; // never moved / freed
inline constexpr std::uintptr_t kFinalizerBit  = 0x10u;

// ---------------------------------------------------------------------------
// Box — managed allocation header
// ---------------------------------------------------------------------------

struct alignas(alignof(std::max_align_t)) Box {
    // Low bits encode color + flags. Upper bits hold the generation-tagged
    // forwarding pointer used by future moving-collector experiments
    // (currently always zero).
    std::atomic<std::uintptr_t> header{0};
    std::uint32_t bytes  = 0;   // total allocation size, including this header
    std::uint16_t type_id = 0;  // optional layout id (0 = opaque, traced by trace_fn)
    std::uint8_t  generation = 0;
    std::uint8_t  reserved = 0;
    TraceFn trace_fn = nullptr; // null = leaf (no managed children)
    Page* page = nullptr;       // owning page (set at allocation)

    Color color(std::memory_order order = std::memory_order_acquire) const noexcept {
        return static_cast<Color>(header.load(order) & kColorMask);
    }
    void set_color(Color c, std::memory_order order = std::memory_order_release) noexcept {
        auto h = header.load(std::memory_order_relaxed);
        for (;;) {
            auto next = (h & ~kColorMask) | static_cast<std::uintptr_t>(c);
            if (header.compare_exchange_weak(h, next, order, std::memory_order_relaxed)) {
                return;
            }
        }
    }
    // Tries to transition white->grey atomically. Returns true if this thread
    // performed the transition (and therefore owns enqueuing the box).
    bool try_shade_to_grey(Color white) noexcept {
        auto h = header.load(std::memory_order_acquire);
        for (;;) {
            auto cur = static_cast<Color>(h & kColorMask);
            if (cur != white) {
                return false; // already grey, black, or the other white
            }
            auto next = (h & ~kColorMask) | static_cast<std::uintptr_t>(Color::Grey);
            if (header.compare_exchange_weak(h, next,
                                             std::memory_order_acq_rel,
                                             std::memory_order_acquire)) {
                return true;
            }
        }
    }
};

// Used by the marker as the trace visitor argument. Hidden behind a void* in
// `TraceFn` so user trace bodies don't have to include this header in their
// own translation units.
class Tracer {
public:
    explicit Tracer(Mutator& m) : mutator_(m) {}
    void mark(Box* child) noexcept;            // shade-and-enqueue if white
    void mark_value(void* ptr) noexcept;       // ptr may be null / unmanaged
    Mutator& mutator() noexcept { return mutator_; }
private:
    Mutator& mutator_;
};

// ---------------------------------------------------------------------------
// TypedBox<T> — payload-carrying box used by codegen.
// ---------------------------------------------------------------------------

template <typename T>
struct TypedBox : Box {
    alignas(alignof(T)) unsigned char storage[sizeof(T)];

    T* payload() noexcept { return std::launder(reinterpret_cast<T*>(storage)); }
    const T* payload() const noexcept { return std::launder(reinterpret_cast<const T*>(storage)); }

    template <typename... Args>
    void construct(Args&&... args) {
        ::new (storage) T(std::forward<Args>(args)...);
    }
    void destroy() noexcept(std::is_nothrow_destructible_v<T>) {
        payload()->~T();
    }
};

// ---------------------------------------------------------------------------
// Mutator — per-thread state.
// ---------------------------------------------------------------------------
//
// Each mutator carries:
//   * a thread-local allocation buffer (TLAB) carved off the current page,
//   * a private work queue used by the marker (so the mutator can drain its
//     own shaded children during a barrier without contending the global
//     queue),
//   * a "safepoint requested" flag the collector flips to force the next
//     poll into the slow path.
//
// Mutators are obtained via `Runtime::attach()` and released via `detach()`.
// Codegen will keep a TLS Mutator* and pass it through to every barrier and
// safepoint call.
class Mutator {
public:
    Mutator(Runtime& rt, std::size_t id) noexcept;
    ~Mutator();

    Mutator(const Mutator&) = delete;
    Mutator& operator=(const Mutator&) = delete;

    Runtime& runtime() noexcept { return rt_; }
    std::size_t id() const noexcept { return id_; }

    // Allocate `bytes` (including the Box header). Returns a Box* whose
    // payload is uninitialised. Caller is responsible for invoking the
    // payload constructor and the trace_fn assignment before any subsequent
    // safepoint.
    Box* allocate(std::size_t bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept;

    // Cooperative safepoint. Cheap: a single relaxed load + branch.
    void safepoint() noexcept {
        // The codegen calls this at back-edges and after non-leaf calls.
        // The hot path tests a single TLS byte. The slow path runs the full
        // handshake protocol (drain remaining marker work, transition phase,
        // refresh TLAB if a new mark cycle began).
        if (poll_requested_.load(std::memory_order_acquire)) {
            safepoint_slow();
        }
    }

    // Marker work-queue API. push_grey is called by the insertion barrier
    // when an object transitions white->grey. pop_grey is called by the
    // collector loop on the marker thread that owns this mutator.
    void push_grey(Box* box) noexcept;
    Box* pop_grey() noexcept;

    // Number of greys currently buffered in this mutator's private queue.
    std::size_t local_greys() const noexcept;

private:
    friend class Runtime;
    friend class Tracer;

    Runtime&    rt_;
    std::size_t id_;

    // TLAB
    unsigned char* tlab_cur_ = nullptr;
    unsigned char* tlab_end_ = nullptr;
    Page*          tlab_page_ = nullptr;

    // Safepoint coordination — the Runtime flips this flag.
    std::atomic<bool> poll_requested_{false};
    std::atomic<bool> at_safepoint_{false};
    // Collector-internal mutators (marker/sweeper threads) are flagged so
    // the safepoint handshake skips them and the stack scanner does not
    // attempt to walk their (nonexistent) Apollo stack frames.
    bool is_collector_ = false;

    // Per-mutator grey queue. Uses a chunked deque so push/pop don't touch
    // the global work-stealing scheduler unless this mutator overflows.
    mutable std::mutex queue_mtx_;
    std::deque<Box*> grey_queue_;

    Box* allocate_slow(std::size_t bytes, TraceFn trace_fn, std::uint16_t type_id) noexcept;
    void safepoint_slow() noexcept;
};

// ---------------------------------------------------------------------------
// Runtime — process-global collector state.
// ---------------------------------------------------------------------------

struct GcStats {
    std::uint64_t cycles = 0;
    std::uint64_t bytes_allocated = 0;
    std::uint64_t bytes_swept = 0;
    std::uint64_t bytes_live_after_last_cycle = 0;
    std::uint64_t mark_nanos_last = 0;
    std::uint64_t sweep_nanos_last = 0;
    std::uint64_t safepoint_handshakes = 0;
};

class Runtime {
public:
    struct Config {
        std::size_t initial_heap_bytes = 4 * 1024 * 1024;
        std::size_t page_bytes         = 64 * 1024;
        std::size_t marker_threads     = 0;   // 0 = auto (= hardware_concurrency()/2)
        std::uint32_t gogc_percent     = 100; // Go's GOGC default
        bool enable_concurrent_mark    = true;
        bool enable_concurrent_sweep   = true;
        // TLAB-sized bump region handed to each mutator on slow-path
        // refill. Larger values reduce slow-path frequency at the cost
        // of more wasted bytes per mutator on exit. 0 = use page_bytes.
        std::size_t tlab_bytes         = 0;
        // Soft cap on live heap before triggering an emergency GC even
        // when GOGC pacing would not have. 0 = no cap.
        std::size_t max_heap_bytes     = 0;
    };

    Runtime();
    explicit Runtime(Config cfg);
    ~Runtime();

    Runtime(const Runtime&) = delete;
    Runtime& operator=(const Runtime&) = delete;

    // Attach the calling thread as a mutator.
    Mutator& attach();
    // Detach the calling thread. Idempotent.
    void detach();

    // Force a full GC cycle. Blocks until sweep terminates. Used by tests and
    // by the "out-of-memory" slow path.
    void collect_blocking();

    // Asynchronous trigger; the marker thread will pick it up at the next
    // pacing checkpoint.
    void request_collection() noexcept;

    // Explicit roots — used for globals, TLS, FFI bridges. The runtime
    // calls trace_fn(box, tracer) for every registered root box.
    struct RootHandle { std::uintptr_t opaque; };
    RootHandle register_root(Box* box) noexcept;
    void unregister_root(RootHandle h) noexcept;

    // Stack-scanned root callback — the runtime invokes this at root scan
    // time for every attached mutator. Apollo's codegen emits one of these
    // per function with managed locals; safepoint stackmaps drive it.
    using StackScanFn = void (*)(Mutator& m, Tracer& tracer);
    void set_stack_scan(StackScanFn fn) noexcept { stack_scan_ = fn; }

    // Phase introspection (for tests and debugging).
    enum class Phase : std::uint8_t {
        Idle,
        MarkPrepare,
        Mark,
        MarkTerminate,
        Sweep,
    };
    Phase phase() const noexcept { return phase_.load(std::memory_order_acquire); }
    Color allocation_color() const noexcept { return alloc_color_.load(std::memory_order_acquire); }
    Color sweep_white() const noexcept { return sweep_white_.load(std::memory_order_acquire); }
    GcStats stats() const noexcept;

    // Render the current stats and key config knobs as a one-line JSON
    // object. Stable shape; safe to dump from any thread. Suitable for
    // streaming to a log aggregator or a `perf` sidecar.
    std::string stats_json() const;

    const Config& config() const noexcept { return cfg_; }

private:
    friend class Mutator;
    friend class Tracer;

    Config cfg_;
    std::atomic<Phase> phase_{Phase::Idle};
    // The color that newly allocated objects receive. Outside of a mark
    // cycle this equals the "current white"; inside a mark cycle the
    // collector flips it to Black so allocations during marking are not
    // mistakenly swept.
    std::atomic<Color> alloc_color_{Color::WhiteA};
    // The color that the next sweep treats as garbage. Flipped between
    // WhiteA / WhiteB at every cycle.
    std::atomic<Color> sweep_white_{Color::WhiteA};

    std::atomic<std::uint64_t> bytes_allocated_{0};
    std::atomic<std::uint64_t> bytes_live_after_last_cycle_{0};
    std::atomic<std::uint64_t> trigger_bytes_{0};

    // Mutator registry.
    mutable std::mutex   mutators_mtx_;
    std::vector<Mutator*> mutators_;
    std::atomic<std::size_t> next_mutator_id_{0};

    // Page allocator.
    mutable std::mutex   pages_mtx_;
    std::vector<Page*>   all_pages_;
    std::vector<Page*>   free_pages_;
    std::vector<Page*>   sweep_ready_pages_;

    // Roots.
    mutable std::mutex   roots_mtx_;
    std::vector<Box*>    roots_;
    StackScanFn          stack_scan_ = nullptr;

    // Collector threads.
    std::vector<std::thread> marker_threads_;
    std::thread              sweeper_thread_;
    std::atomic<bool>        shutdown_{false};
    std::mutex               coordinator_mtx_;
    std::condition_variable  coordinator_cv_;
    std::atomic<bool>        collection_requested_{false};

    // Global grey queue — used when a mutator's private queue overflows.
    std::mutex               global_grey_mtx_;
    std::deque<Box*>         global_grey_;
    std::condition_variable  global_grey_cv_;
    std::atomic<std::size_t> outstanding_grey_{0};
    // Number of marker threads currently inside `trace_fn`. The
    // coordinator must wait for this to reach zero in addition to
    // `outstanding_grey_ == 0`, because a marker that has popped a
    // grey but not yet pushed its children has temporarily reduced
    // the grey count to zero while still owing work.
    std::atomic<std::size_t> active_tracers_{0};

    // Stats.
    GcStats stats_internal_{};
    mutable std::mutex stats_mtx_;

    // --- internal helpers ---
    Page* acquire_page(Mutator& m) noexcept;
    void  return_page_for_sweep(Page* page) noexcept;
    void  marker_loop(std::size_t marker_index) noexcept;
    void  sweeper_loop() noexcept;

    void  run_cycle();           // full cycle (called by collect_blocking and the coordinator)
    void  start_mark();          // STW prepare (very short)
    void  concurrent_mark();     // marker threads drain global+local greys
    void  mark_terminate();      // STW: re-scan all mutator queues, flush remset
    void  concurrent_sweep();    // background sweep; mutators may also lazy-sweep
    void  update_pacing(std::uint64_t cycle_nanos, std::uint64_t mark_nanos);
    void  request_safepoint_all() noexcept;
    void  release_safepoint_all() noexcept;
};

// ---------------------------------------------------------------------------
// Insertion (Dijkstra) write barrier.
// ---------------------------------------------------------------------------
//
// Contract: `slot` lives inside a managed object (or inside a root struct
// already registered with `register_root`). `value` is the new managed
// pointer being stored. The barrier is called *before* the store completes,
// and must be safe even if `value == nullptr`.
//
// When the parent is black and the child is white during a concurrent mark
// phase, the child is shaded grey to preserve the strong tri-color
// invariant (no black->white edge). The "parent" color is implicit: during
// `Phase::Mark` and `Phase::MarkTerminate` we *unconditionally* shade the
// new child, which is the textbook Dijkstra insertion barrier — correct
// but slightly over-conservative. The optimization that checks the parent
// color (Steele) is intentionally not used because it doubles barrier cost
// on the hot path.
//
// Outside of a mark phase the barrier is a relaxed compare-and-branch.
inline void write_barrier(Mutator& m, Box** slot, Box* value) noexcept;

// Card-marking hook used by the write barrier. Defined in
// apollo_gc_cards.cpp; declared here so the inline barrier below can
// call it without dragging the full CardTable header into every
// translation unit. A noinline out-of-line stub keeps the hot path
// at exactly one extra `call` instruction.
void note_card_dirty(const void* slot) noexcept;

// ---------------------------------------------------------------------------
// Codegen-friendly C ABI (mirrors the existing apollo_gc_init / apollo_gc_alloc).
// ---------------------------------------------------------------------------

extern "C" {
    // Process-wide.
    void  apollo_gc_concurrent_init();
    void  apollo_gc_concurrent_shutdown();

    // Per-thread.
    void* apollo_gc_concurrent_attach();   // returns Mutator*
    void  apollo_gc_concurrent_detach();

    // Hot path.
    void* apollo_gc_concurrent_alloc(void* mutator, std::size_t bytes,
                                     void (*trace_fn)(void*, void*),
                                     std::uint16_t type_id);
    void  apollo_gc_concurrent_safepoint(void* mutator);
    void  apollo_gc_concurrent_write_barrier(void* mutator, void** slot, void* value);

    // Roots.
    std::uintptr_t apollo_gc_concurrent_register_root(void* box);
    void           apollo_gc_concurrent_unregister_root(std::uintptr_t handle);

    // Test / debug.
    void apollo_gc_concurrent_collect();
}

// ---------------------------------------------------------------------------
// Inline implementations.
// ---------------------------------------------------------------------------

inline void write_barrier(Mutator& m, Box** slot, Box* value) noexcept {
    // The store itself is performed by the caller. We only do the shading.
    // We *do not* need a fence here: the store-release on the slot performed
    // by the caller, combined with the acquire load of the runtime phase,
    // is enough to ensure that any marker which observes the new edge will
    // also observe the corresponding shading. See README's "barrier
    // correctness" section.
    auto& rt = m.runtime();
    auto phase = rt.phase();
    // Card mark unconditionally — cheap, and the only way a future
    // generational minor collector will discover cross-generation
    // pointers. Outside of GC this is wasted work, but the table is
    // sized to fit in L2 and the store is relaxed.
    note_card_dirty(slot);
    if (phase == Runtime::Phase::Idle) {
        return; // outside of mark phase, no shading work to do
    }
    if (value == nullptr) {
        return;
    }
    auto white = rt.sweep_white();
    if (value->try_shade_to_grey(white)) {
        m.push_grey(value);
    }
}

} // namespace gc
} // namespace apollo

#endif // APOLLO_GC_CONCURRENT_HPP
