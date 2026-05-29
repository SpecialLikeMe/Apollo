#ifndef APOLLO_MAIN_GC_APOLLO_GC_HPP
#define APOLLO_MAIN_GC_APOLLO_GC_HPP

#include <algorithm>
#include <array>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <memory>
#include <mutex>
#include <new>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

class __apo_gc_tracer;
class __apo_autofmt_owner;
struct __apo_gc_handle_state_base;
template <typename T> class __apo_gc_handle;
template <typename T> class __apo_gc_weak_handle;
template <typename T> struct __apo_gc_handle_state;

[[noreturn]] inline void __apo_gc_runtime_panic(const char* message) {
    std::cerr << message << std::endl;
    std::abort();
}

struct __apo_gc_box_base {
    __apo_gc_box_base* next = nullptr;
    __apo_gc_box_base* prev = nullptr;
    __apo_gc_handle_state_base* handleState = nullptr;
    std::size_t bytes = 0;
    std::uint64_t markEpoch = 0;
    std::uint8_t generation = 0;
    std::uint8_t survivalCount = 0;
    bool remembered = false;

    virtual void trace(__apo_gc_tracer& tracer) = 0;
    virtual ~__apo_gc_box_base() = default;
};

template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer&, const T&) {}

inline void __apo_gc_trace_value(__apo_gc_tracer&, const std::string&) {}

template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const std::vector<T>& values) {
    for (const auto& value : values) {
        __apo_gc_trace_value(tracer, value);
    }
}

template <typename K, typename V, typename H, typename E, typename A>
inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const std::unordered_map<K, V, H, E, A>& values) {
    for (const auto& entry : values) {
        __apo_gc_trace_value(tracer, entry.first);
        __apo_gc_trace_value(tracer, entry.second);
    }
}

template <typename T, std::size_t N>
inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const std::array<T, N>& values) {
    for (const auto& value : values) {
        __apo_gc_trace_value(tracer, value);
    }
}

struct __apo_gc_handle_state_base {
    __apo_gc_box_base* box = nullptr;
    __apo_autofmt_owner* owner = nullptr;
    std::uint64_t invalidationEpoch = 0;

    virtual ~__apo_gc_handle_state_base() = default;
};

template <typename T>
struct __apo_gc_handle_state : __apo_gc_handle_state_base {};

struct __apo_gc_metrics {
    std::size_t managedBytes = 0;
    std::size_t peakManagedBytes = 0;
    std::size_t rootCount = 0;
    std::size_t collectThreshold = 0;
    std::uint64_t allocationsCreated = 0;
    std::uint64_t releasesPerformed = 0;
    std::uint64_t collectionsRun = 0;
    std::uint64_t collectedBoxes = 0;
    std::uint64_t promotedBoxes = 0;
};

class __apo_gc_tracer {
private:
    __apo_autofmt_owner& owner;

public:
    explicit __apo_gc_tracer(__apo_autofmt_owner& ownerRef) : owner(ownerRef) {}

    void mark(__apo_gc_box_base* box);
};

template <typename T>
struct __apo_gc_box : __apo_gc_box_base {
    T value;

    template <typename U>
    explicit __apo_gc_box(U&& initialValue) : value(std::forward<U>(initialValue)) {
        bytes = sizeof(__apo_gc_box<T>);
    }

    void trace(__apo_gc_tracer& tracer) override {
        __apo_gc_trace_value(tracer, value);
    }
};

struct __apo_gc_root_base {
    virtual __apo_gc_box_base* current_box() const = 0;
    virtual ~__apo_gc_root_base() = default;
};

class __apo_autofmt_owner {
private:
    __apo_gc_box_base* head = nullptr;
    std::vector<__apo_gc_root_base*> roots;
    std::unordered_map<__apo_gc_root_base*, std::size_t> rootIndices;
    std::vector<__apo_gc_box_base*> markStack;
    std::size_t managedBytes = 0;
    std::size_t peakManagedBytes = 0;
    std::size_t collectThreshold = 64 * 1024;
    std::uint64_t markEpoch = 1;
    std::uint64_t allocationsCreated = 0;
    std::uint64_t releasesPerformed = 0;
    std::uint64_t collectionsRun = 0;
    std::uint64_t collectedBoxes = 0;
    std::uint64_t promotedBoxes = 0;
    std::atomic<bool> collectionRequested{false};
    mutable std::recursive_mutex gcMutex;

    std::unique_lock<std::recursive_mutex> guard_runtime() const {
        return std::unique_lock<std::recursive_mutex>(gcMutex);
    }

    void invalidate(__apo_gc_box_base* box) {
        if (box == nullptr || box->handleState == nullptr) {
            return;
        }
        box->handleState->invalidationEpoch = markEpoch;
        box->handleState->box = nullptr;
        box->handleState->owner = nullptr;
        box->handleState = nullptr;
    }

    void attach(__apo_gc_box_base* box) {
        box->next = head;
        if (head != nullptr) {
            head->prev = box;
        }
        head = box;
        managedBytes += box->bytes;
        allocationsCreated += 1;
        if (managedBytes > peakManagedBytes) {
            peakManagedBytes = managedBytes;
        }
        if (managedBytes >= collectThreshold) {
            collectionRequested.store(true, std::memory_order_release);
        }
    }

    void detach(__apo_gc_box_base* box) {
        if (box->prev != nullptr) {
            box->prev->next = box->next;
        }
        if (box->next != nullptr) {
            box->next->prev = box->prev;
        }
        if (head == box) {
            head = box->next;
        }
        managedBytes = managedBytes > box->bytes ? managedBytes - box->bytes : 0;
        box->next = nullptr;
        box->prev = nullptr;
        box->remembered = false;
    }

    void note_survivor(__apo_gc_box_base* box) {
        if (box == nullptr) {
            return;
        }
        box->remembered = false;
        if (box->survivalCount < 0xff) {
            box->survivalCount += 1;
        }
        if (box->generation == 0 && box->survivalCount >= 2) {
            box->generation = 1;
            promotedBoxes += 1;
        }
    }

    void update_collect_threshold() {
        std::size_t liveBytes = managedBytes;
        std::size_t slack = liveBytes / 2;
        if (slack < 64 * 1024) {
            slack = 64 * 1024;
        }
        collectThreshold = liveBytes + slack;
    }

    void collect_locked() {
        collectionsRun += 1;
        markEpoch += 1;
        if (markEpoch == 0) {
            markEpoch = 1;
            for (__apo_gc_box_base* cursor = head; cursor != nullptr; cursor = cursor->next) {
                cursor->markEpoch = 0;
            }
        }
        markStack.clear();
        if (markStack.capacity() < roots.size()) {
            markStack.reserve(roots.size());
        }
        for (__apo_gc_root_base* root : roots) {
            mark(root != nullptr ? root->current_box() : nullptr);
        }
        __apo_gc_tracer tracer(*this);
        while (!markStack.empty()) {
            __apo_gc_box_base* current = markStack.back();
            markStack.pop_back();
            current->trace(tracer);
        }
        for (__apo_gc_box_base* cursor = head; cursor != nullptr;) {
            __apo_gc_box_base* next = cursor->next;
            if (cursor->markEpoch != markEpoch) {
                collectedBoxes += 1;
                detach(cursor);
                invalidate(cursor);
                delete cursor;
            } else {
                note_survivor(cursor);
            }
            cursor = next;
        }
        update_collect_threshold();
        collectionRequested.store(false, std::memory_order_release);
    }

    void service_collection_request() {
        if (!collectionRequested.load(std::memory_order_acquire)) {
            return;
        }
        std::unique_lock<std::recursive_mutex> guard(gcMutex, std::try_to_lock);
        if (!guard.owns_lock()) {
            return;
        }
        if (!collectionRequested.exchange(false, std::memory_order_acq_rel)) {
            return;
        }
        collect_locked();
    }

public:
    void register_root(__apo_gc_root_base* root) {
        auto guard = guard_runtime();
        if (root == nullptr || rootIndices.find(root) != rootIndices.end()) {
            return;
        }
        rootIndices.emplace(root, roots.size());
        roots.push_back(root);
    }

    void unregister_root(__apo_gc_root_base* root) {
        auto guard = guard_runtime();
        if (root == nullptr) {
            return;
        }
        auto it = rootIndices.find(root);
        if (it == rootIndices.end()) {
            return;
        }
        std::size_t index = it->second;
        __apo_gc_root_base* last = roots.back();
        roots[index] = last;
        rootIndices[last] = index;
        roots.pop_back();
        rootIndices.erase(it);
    }

    void mark(__apo_gc_box_base* box) {
        auto guard = guard_runtime();
        if (box == nullptr || box->markEpoch == markEpoch) {
            return;
        }
        box->markEpoch = markEpoch;
        if (box->generation > 0) {
            box->remembered = true;
        }
        markStack.push_back(box);
    }

    template <typename T, typename U>
    __apo_gc_handle<T> make(U&& value) {
        auto state = std::make_shared<__apo_gc_handle_state<T>>();
        {
            auto guard = guard_runtime();
            auto* box = new __apo_gc_box<T>(std::forward<U>(value));
            state->owner = this;
            state->box = box;
            box->handleState = state.get();
            attach(box);
        }
        service_collection_request();
        return __apo_gc_handle<T>(std::move(state));
    }

    template <typename T>
    __apo_gc_handle<T> induct(T&& value) {
        return make<T>(std::forward<T>(value));
    }

    template <typename T>
    T release(__apo_gc_handle<T>& handle) {
        auto guard = guard_runtime();
        if (handle.__apo_owner() != nullptr && handle.__apo_owner() != this) {
            __apo_gc_runtime_panic("cannot release a handle from a different autofmt owner");
        }
        auto* box = handle.__apo_release_box();
        if (box == nullptr) {
            return T{};
        }
        T value = std::move(box->value);
        releasesPerformed += 1;
        detach(box);
        invalidate(box);
        delete box;
        update_collect_threshold();
        return value;
    }

    __apo_gc_metrics metrics() const {
        auto guard = guard_runtime();
        __apo_gc_metrics snapshot;
        snapshot.managedBytes = managedBytes;
        snapshot.peakManagedBytes = peakManagedBytes;
        snapshot.rootCount = roots.size();
        snapshot.collectThreshold = collectThreshold;
        snapshot.allocationsCreated = allocationsCreated;
        snapshot.releasesPerformed = releasesPerformed;
        snapshot.collectionsRun = collectionsRun;
        snapshot.collectedBoxes = collectedBoxes;
        snapshot.promotedBoxes = promotedBoxes;
        return snapshot;
    }

    void collect() {
        auto guard = guard_runtime();
        collect_locked();
    }

    ~__apo_autofmt_owner() {
        auto guard = guard_runtime();
        for (__apo_gc_box_base* cursor = head; cursor != nullptr;) {
            __apo_gc_box_base* next = cursor->next;
            invalidate(cursor);
            delete cursor;
            cursor = next;
        }
    }
};

inline void __apo_gc_tracer::mark(__apo_gc_box_base* box) {
    owner.mark(box);
}

template <typename T>
class __apo_gc_handle {
private:
    std::shared_ptr<__apo_gc_handle_state<T>> state;

    T* require_value() {
        if (state == nullptr || state->box == nullptr) {
            __apo_gc_runtime_panic("attempted to use an autofmt-managed value after it was released or collected");
        }
        return std::addressof(static_cast<__apo_gc_box<T>*>(state->box)->value);
    }

    const T* require_value() const {
        if (state == nullptr || state->box == nullptr) {
            __apo_gc_runtime_panic("attempted to use an autofmt-managed value after it was released or collected");
        }
        return std::addressof(static_cast<__apo_gc_box<T>*>(state->box)->value);
    }

public:
    __apo_gc_handle() = default;
    __apo_gc_handle(const __apo_gc_handle&) = default;
    __apo_gc_handle(__apo_gc_handle&&) noexcept = default;
    explicit __apo_gc_handle(std::shared_ptr<__apo_gc_handle_state<T>> handleState) : state(std::move(handleState)) {}

    T* operator->() {
        return require_value();
    }

    const T* operator->() const {
        return require_value();
    }

    T& operator*() {
        return *require_value();
    }

    const T& operator*() const {
        return *require_value();
    }

    operator T&() {
        return *require_value();
    }

    operator const T&() const {
        return *require_value();
    }

    template <typename Index>
    decltype(auto) operator[](Index&& index) {
        return (*require_value())[std::forward<Index>(index)];
    }

    template <typename Index>
    decltype(auto) operator[](Index&& index) const {
        return (*require_value())[std::forward<Index>(index)];
    }

    __apo_gc_handle& operator=(const T& incoming) {
        *require_value() = incoming;
        return *this;
    }

    __apo_gc_handle& operator=(T&& incoming) {
        *require_value() = std::move(incoming);
        return *this;
    }

    __apo_gc_handle& operator=(const __apo_gc_handle&) = default;
    __apo_gc_handle& operator=(__apo_gc_handle&&) noexcept = default;

    __apo_gc_weak_handle<T> weak() const {
        return __apo_gc_weak_handle<T>(state);
    }

    __apo_gc_box_base* __apo_current_box() const {
        return state != nullptr ? state->box : nullptr;
    }

    __apo_autofmt_owner* __apo_owner() const {
        return state != nullptr ? state->owner : nullptr;
    }

    __apo_gc_box<T>* __apo_release_box() {
        if (state == nullptr) {
            return nullptr;
        }
        auto* released = state->box;
        state->box = nullptr;
        state->owner = nullptr;
        return static_cast<__apo_gc_box<T>*>(released);
    }
};

template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const __apo_gc_handle<T>& handle) {
    tracer.mark(handle.__apo_current_box());
}

template <typename T>
class __apo_gc_weak_handle {
private:
    std::weak_ptr<__apo_gc_handle_state<T>> state;

public:
    __apo_gc_weak_handle() = default;
    explicit __apo_gc_weak_handle(const std::shared_ptr<__apo_gc_handle_state<T>>& handleState) : state(handleState) {}

    bool expired() const {
        auto locked = state.lock();
        return locked == nullptr || locked->box == nullptr;
    }

    __apo_gc_handle<T> lock() const {
        auto locked = state.lock();
        if (locked == nullptr || locked->box == nullptr) {
            return __apo_gc_handle<T>();
        }
        return __apo_gc_handle<T>(std::move(locked));
    }
};

template <typename T>
inline void __apo_gc_trace_value(__apo_gc_tracer&, const __apo_gc_weak_handle<T>&) {}

template <typename T>
class __apo_gc_root_slot : public __apo_gc_root_base {
private:
    __apo_autofmt_owner* owner = nullptr;
    __apo_gc_handle<T>* slot = nullptr;

public:
    __apo_gc_root_slot(__apo_autofmt_owner& ownerRef, __apo_gc_handle<T>* slotRef) : owner(&ownerRef), slot(slotRef) {
        if (slot != nullptr && slot->__apo_owner() != nullptr && slot->__apo_owner() != owner) {
            __apo_gc_runtime_panic("cannot register a GC root for a handle owned by a different autofmt owner");
        }
        owner->register_root(this);
    }

    ~__apo_gc_root_slot() override {
        if (owner != nullptr) {
            owner->unregister_root(this);
        }
    }

    __apo_gc_box_base* current_box() const override {
        if (slot == nullptr) {
            return nullptr;
        }
        if (slot->__apo_owner() != nullptr && slot->__apo_owner() != owner) {
            __apo_gc_runtime_panic("cannot trace a handle owned by a different autofmt owner");
        }
        return slot->__apo_current_box();
    }
};

struct __apo_raw_gc_block final : __apo_gc_box_base {
    std::unique_ptr<std::byte[]> payload;
    std::size_t payloadBytes = 0;

    explicit __apo_raw_gc_block(std::size_t size)
        : payload(size == 0 ? nullptr : std::make_unique<std::byte[]>(size)), payloadBytes(size) {
        bytes = sizeof(__apo_raw_gc_block) + size;
        if (payload != nullptr) {
            std::memset(payload.get(), 0, size);
        }
    }

    void* data() const {
        return payload.get();
    }

    void trace(__apo_gc_tracer&) override {}
};

class __apo_total_gc_runtime {
private:
    __apo_raw_gc_block* head = nullptr;
    std::unordered_map<void*, __apo_raw_gc_block*> pointerIndex;
    std::size_t managedBytes = 0;
    std::size_t peakManagedBytes = 0;
    std::size_t collectThreshold = 64 * 1024;
    std::uint64_t markEpoch = 1;
    std::uint64_t collectionsRun = 0;
    std::uint64_t collectedBlocks = 0;
    std::atomic<bool> collectionRequested{false};
    std::uintptr_t stackBase = 0;
    mutable std::mutex gcMutex;

    void record_stack_position(std::uintptr_t marker) {
        if (stackBase == 0) {
            stackBase = marker;
            return;
        }
        const std::uintptr_t lower = std::min(stackBase, marker);
        const std::uintptr_t upper = std::max(stackBase, marker);
        stackBase = upper;
        if (lower == upper) {
            stackBase = marker;
        }
    }

    void attach(__apo_raw_gc_block* block) {
        block->next = head;
        if (head != nullptr) {
            head->prev = block;
        }
        head = block;
        pointerIndex.emplace(block->data(), block);
        managedBytes += block->bytes;
        if (managedBytes > peakManagedBytes) {
            peakManagedBytes = managedBytes;
        }
        if (managedBytes >= collectThreshold) {
            collectionRequested.store(true, std::memory_order_release);
        }
    }

    void detach(__apo_raw_gc_block* block) {
        if (block->prev != nullptr) {
            block->prev->next = block->next;
        }
        if (block->next != nullptr) {
            block->next->prev = block->prev;
        }
        if (head == block) {
            head = static_cast<__apo_raw_gc_block*>(block->next);
        }
        pointerIndex.erase(block->data());
        managedBytes = managedBytes > block->bytes ? managedBytes - block->bytes : 0;
        block->next = nullptr;
        block->prev = nullptr;
    }

    void update_collect_threshold() {
        std::size_t slack = managedBytes / 2;
        if (slack < 64 * 1024) {
            slack = 64 * 1024;
        }
        collectThreshold = managedBytes + slack;
    }

    __apo_raw_gc_block* find_block_for_candidate(const void* candidate) const {
        if (candidate == nullptr) {
            return nullptr;
        }
        auto it = pointerIndex.find(const_cast<void*>(candidate));
        if (it != pointerIndex.end()) {
            return it->second;
        }
        const auto candidateAddress = reinterpret_cast<std::uintptr_t>(candidate);
        for (__apo_raw_gc_block* cursor = head; cursor != nullptr; cursor = static_cast<__apo_raw_gc_block*>(cursor->next)) {
            if (cursor->payloadBytes == 0 || cursor->data() == nullptr) {
                continue;
            }
            const auto blockAddress = reinterpret_cast<std::uintptr_t>(cursor->data());
            if (candidateAddress >= blockAddress && candidateAddress - blockAddress < cursor->payloadBytes) {
                return cursor;
            }
        }
        return nullptr;
    }

    void mark(__apo_raw_gc_block* block) {
        if (block == nullptr || block->markEpoch == markEpoch) {
            return;
        }
        block->markEpoch = markEpoch;
    }

    void mark_from_stack_locked() {
        std::uintptr_t stackMarker = 0;
        const std::uintptr_t marker = reinterpret_cast<std::uintptr_t>(&stackMarker);
        record_stack_position(marker);
        const std::uintptr_t lower = std::min(marker, stackBase);
        const std::uintptr_t upper = std::max(marker, stackBase);
        for (std::uintptr_t cursor = lower; cursor + sizeof(std::uintptr_t) <= upper; cursor += sizeof(std::uintptr_t)) {
            const void* candidate = *reinterpret_cast<void* const*>(cursor);
            mark(find_block_for_candidate(candidate));
        }
    }

    void collect_locked() {
        collectionsRun += 1;
        markEpoch += 1;
        if (markEpoch == 0) {
            markEpoch = 1;
            for (__apo_raw_gc_block* cursor = head; cursor != nullptr; cursor = static_cast<__apo_raw_gc_block*>(cursor->next)) {
                cursor->markEpoch = 0;
            }
        }
        mark_from_stack_locked();
        for (__apo_raw_gc_block* cursor = head; cursor != nullptr;) {
            __apo_raw_gc_block* next = static_cast<__apo_raw_gc_block*>(cursor->next);
            if (cursor->markEpoch != markEpoch) {
                collectedBlocks += 1;
                detach(cursor);
                delete cursor;
            }
            cursor = next;
        }
        update_collect_threshold();
        collectionRequested.store(false, std::memory_order_release);
    }

    void service_collection_request() {
        if (!collectionRequested.load(std::memory_order_acquire)) {
            return;
        }
        std::unique_lock<std::mutex> guard(gcMutex, std::try_to_lock);
        if (!guard.owns_lock()) {
            return;
        }
        if (!collectionRequested.exchange(false, std::memory_order_acq_rel)) {
            return;
        }
        collect_locked();
    }

public:
    void init() {
        std::uintptr_t stackMarker = 0;
        const std::uintptr_t marker = reinterpret_cast<std::uintptr_t>(&stackMarker);
        std::lock_guard<std::mutex> guard(gcMutex);
        record_stack_position(marker);
    }

    void* alloc(std::size_t size) {
        auto* block = new __apo_raw_gc_block(size);
        {
            std::lock_guard<std::mutex> guard(gcMutex);
            std::uintptr_t stackMarker = 0;
            const std::uintptr_t marker = reinterpret_cast<std::uintptr_t>(&stackMarker);
            record_stack_position(marker);
            attach(block);
        }
        service_collection_request();
        return block->data();
    }

    void collect() {
        std::lock_guard<std::mutex> guard(gcMutex);
        collect_locked();
    }

    bool owns_address(const void* address) const {
        std::lock_guard<std::mutex> guard(gcMutex);
        return find_block_for_candidate(address) != nullptr;
    }
};

inline __apo_total_gc_runtime& __apo_global_total_gc_runtime() {
    static __apo_total_gc_runtime runtime;
    return runtime;
}

// GC implementation seam.
// -----------------------------------------------------------------------------
//
// `__apollo_gc_*_impl` are the canonical hooks every part of the
// runtime (and the codegen) calls. Define `APOLLO_GC_CONCURRENT` to
// route them to the production concurrent tri-color collector defined
// in `apollo_gc_concurrent.hpp`. Without the macro, calls go to the
// original synchronous stop-the-world collector implemented in this
// header — the legacy fallback used by single-threaded probes and a
// few bring-up tests. New runtime builds (driven by CMake) should
// always define `APOLLO_GC_CONCURRENT`.
//
// The concurrent collector's `alloc` ABI takes
// `(mutator, bytes, trace_fn, type_id)`. Legacy callers pass just
// `bytes`, so the adapter lazily attaches a thread-local mutator and
// supplies a no-op trace function. Once codegen learns to thread
// trace functions per type, this adapter retires.

#ifdef APOLLO_GC_CONCURRENT
extern "C" void  apollo_gc_concurrent_init();
extern "C" void* apollo_gc_concurrent_attach();
extern "C" void* apollo_gc_concurrent_alloc(void* mutator, std::size_t bytes,
                                            void (*trace_fn)(void*, void*),
                                            std::uint16_t type_id);
extern "C" void  apollo_gc_concurrent_collect();

inline void __apollo_gc_init_impl() {
    apollo_gc_concurrent_init();
}

inline void* __apollo_gc_alloc_impl(std::size_t size) {
    // Each call attaches lazily; the runtime is idempotent so this is
    // fine on the slow path. Hot-path allocators inside generated code
    // should cache the mutator via `apollo_gc_concurrent_attach()`.
    void* m = apollo_gc_concurrent_attach();
    return apollo_gc_concurrent_alloc(m, size, /*trace_fn=*/nullptr, /*type_id=*/0);
}

inline void __apollo_gc_collect_impl() {
    apollo_gc_concurrent_collect();
}
#else  // legacy synchronous mark-and-sweep
inline void __apollo_gc_init_impl() {
    __apo_global_total_gc_runtime().init();
}

inline void* __apollo_gc_alloc_impl(std::size_t size) {
    return __apo_global_total_gc_runtime().alloc(size);
}

inline void __apollo_gc_collect_impl() {
    __apo_global_total_gc_runtime().collect();
}
#endif

inline void GC_INIT() {
    __apollo_gc_init_impl();
}

inline void* GC_malloc(std::size_t size) {
    return __apollo_gc_alloc_impl(size);
}

#ifndef GC_MALLOC
#define GC_MALLOC(bytes) ::__apollo_gc_alloc_impl(bytes)
#endif

#endif