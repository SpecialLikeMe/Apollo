#pragma once

#include <initializer_list>
#include <mutex>
#include <stdexcept>
#include <string>
#include <type_traits>
#include <unordered_map>
#include <unordered_set>
#include <utility>
#include <vector>

struct __apo_opstruct_field_info {
    std::string name;
    std::string typeName;
};

class __apo_runtime_extensions {
public:
    static __apo_runtime_extensions& instance() {
        static __apo_runtime_extensions runtime;
        return runtime;
    }

    void register_opstruct(const std::string& name, std::initializer_list<__apo_opstruct_field_info> fields) {
        std::lock_guard<std::mutex> guard(mutex_);
        opstructs_[name] = std::vector<__apo_opstruct_field_info>(fields.begin(), fields.end());
    }

    void register_dynamic_macro(const std::string& name) {
        std::lock_guard<std::mutex> guard(mutex_);
        dynamicMacros_.insert(name);
    }

    void set_policy(const std::string& key, const std::string& value) {
        std::lock_guard<std::mutex> guard(mutex_);
        policies_[key] = value;
    }

    template <typename Fn>
    decltype(auto) invoke_dynamic_macro(const std::string& name, Fn&& fn) {
        {
            std::lock_guard<std::mutex> guard(mutex_);
            if (dynamicMacros_.find(name) == dynamicMacros_.end()) {
                throw std::runtime_error("unregistered dynamic macro: " + name);
            }
        }
        if constexpr (std::is_void_v<std::invoke_result_t<Fn>>) {
            std::forward<Fn>(fn)();
            return;
        } else {
            return std::forward<Fn>(fn)();
        }
    }

    template <typename Fn>
    decltype(auto) unsafe_fallback_call(const std::string& name, Fn&& fn) {
        (void)name;
        if constexpr (std::is_void_v<std::invoke_result_t<Fn>>) {
            std::forward<Fn>(fn)();
            return;
        } else {
            return std::forward<Fn>(fn)();
        }
    }

    bool has_opstruct(const std::string& name) const {
        std::lock_guard<std::mutex> guard(mutex_);
        return opstructs_.find(name) != opstructs_.end();
    }

private:
    __apo_runtime_extensions() = default;

    mutable std::mutex mutex_;
    std::unordered_map<std::string, std::vector<__apo_opstruct_field_info>> opstructs_;
    std::unordered_set<std::string> dynamicMacros_;
    std::unordered_map<std::string, std::string> policies_;
};