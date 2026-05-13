#ifndef __APO_AUTOFMT_OWNER_RUNTIME
#define __APO_AUTOFMT_OWNER_RUNTIME

#include <array>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include <unordered_map>
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

    void maybe_collect() {
        if (managedBytes < collectThreshold) {
            return;
        }
        collect();
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
        auto guard = guard_runtime();
        auto state = std::make_shared<__apo_gc_handle_state<T>>();
        auto* box = new __apo_gc_box<T>(std::forward<U>(value));
        state->owner = this;
        state->box = box;
        box->handleState = state.get();
        attach(box);
        maybe_collect();
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

#endif