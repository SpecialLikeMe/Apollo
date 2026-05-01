#ifndef __APO_MEMSTRUCT_RUNTIME
#define __APO_MEMSTRUCT_RUNTIME

template <typename T>
struct __apo_allocator_traits {
    static constexpr bool is_memstruct = false;

    static const char* type_name() {
        return "";
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
        (void) allocator;
        note_allocator_use(typeName, allocatorLabel);
        return value;
    }

    void note_allocator_use(const std::string& typeName, const std::string& allocatorLabel) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        memstructs[typeName].lastAllocatorLabel = allocatorLabel;
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