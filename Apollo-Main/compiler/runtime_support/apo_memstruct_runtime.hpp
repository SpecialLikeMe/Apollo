#ifndef __APO_MEMSTRUCT_RUNTIME
#define __APO_MEMSTRUCT_RUNTIME

#include <cstdint>
#include <mutex>
#include <string>
#include <type_traits>
#include <unordered_map>
#include <utility>
#include <vector>

template <typename T>
struct __apo_allocator_traits {
    static constexpr bool is_memstruct = false;

    static const char* type_name() {
        return "";
    }
};

template <typename Allocator>
using __apo_allocator_decay_t = std::remove_cv_t<std::remove_reference_t<Allocator>>;

template <typename Allocator, typename = void>
struct __apo_allocator_alloc_hook {
    static void apply(Allocator&&, const char*, std::int32_t) {
    }
};

template <typename Allocator>
struct __apo_allocator_alloc_hook<Allocator,
    std::void_t<decltype(std::declval<__apo_allocator_decay_t<Allocator>&>().alloc(
        std::declval<std::string>(),
        std::declval<std::int32_t>()))>> {
    static void apply(Allocator&& allocator, const char* typeName, std::int32_t requestedBytes) {
        allocator.alloc(std::string(typeName), requestedBytes);
    }
};

class __apo_memstruct_runtime {
public:
    struct memstruct_field {
        std::string name;
        std::string type;
    };

    struct memstruct_info {
        std::vector<memstruct_field> fields;
        std::string lastAllocatorLabel;
        std::int32_t lastRequestedBytes = 0;
        std::int32_t allocationEvents = 0;
    };

private:
    std::unordered_map<std::string, memstruct_info> memstructs;
    std::recursive_mutex runtimeMutex;

public:
    static __apo_memstruct_runtime& instance() {
        static __apo_memstruct_runtime runtime;
        return runtime;
    }

    void register_memstruct(const std::string& typeName, std::vector<memstruct_field> fields) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        memstruct_info& info = memstructs[typeName];
        info.fields = std::move(fields);
    }

    template <typename T, typename Allocator>
    T materialize(T value, Allocator&& allocator, const char* typeName, const char* allocatorLabel) {
        static_assert(__apo_allocator_traits<T>::is_memstruct,
                ".uses(...) requires a memstruct-specialized allocator trait");
        const auto requestedBytes = static_cast<std::int32_t>(sizeof(T));
        __apo_allocator_alloc_hook<Allocator&&>::apply(std::forward<Allocator>(allocator), typeName, requestedBytes);
        note_allocator_use(typeName, allocatorLabel, requestedBytes);
        return value;
    }

    void note_allocator_use(const std::string& typeName, const std::string& allocatorLabel, std::int32_t requestedBytes = 0) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        memstruct_info& info = memstructs[typeName];
        info.lastAllocatorLabel = allocatorLabel;
        info.lastRequestedBytes = requestedBytes;
        info.allocationEvents += 1;
    }

    const memstruct_info* describe(const std::string& typeName) const {
        auto it = memstructs.find(typeName);
        if (it == memstructs.end()) {
            return nullptr;
        }
        return &it->second;
    }
};

#endif