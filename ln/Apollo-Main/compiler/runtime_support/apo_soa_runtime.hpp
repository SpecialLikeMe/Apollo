#pragma once

#include <cstddef>
#include <utility>

template <typename T>
struct __apo_soa_adapter;

template <typename T>
class __apo_soa_vector {
public:
    using value_type = T;

    class reference {
    public:
        reference(typename __apo_soa_adapter<T>::storage* storage, std::size_t index)
            : storage_(storage), index_(index) {
        }

        reference& operator=(const T& value) {
            __apo_soa_adapter<T>::store(*storage_, index_, value);
            return *this;
        }

        reference& operator=(T&& value) {
            __apo_soa_adapter<T>::store(*storage_, index_, value);
            return *this;
        }

        operator T() const {
            return __apo_soa_adapter<T>::load(*storage_, index_);
        }

    private:
        typename __apo_soa_adapter<T>::storage* storage_;
        std::size_t index_;
    };

    void push_back(const T& value) {
        __apo_soa_adapter<T>::push(storage_, value);
    }

    void push_back(T&& value) {
        __apo_soa_adapter<T>::push(storage_, value);
    }

    [[nodiscard]] reference operator[](std::size_t index) {
        return reference(&storage_, index);
    }

    [[nodiscard]] T operator[](std::size_t index) const {
        return __apo_soa_adapter<T>::load(storage_, index);
    }

    [[nodiscard]] std::size_t size() const {
        return __apo_soa_adapter<T>::size(storage_);
    }

    [[nodiscard]] bool empty() const {
        return size() == 0;
    }

private:
    typename __apo_soa_adapter<T>::storage storage_{};
};