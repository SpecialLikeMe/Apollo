#include <cassert>
#include <cstdint>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>

namespace apollo_generated {
    struct __apo_gc_tracer {};
    template <typename T> struct __apo_soa_adapter;
    template <typename T> struct __apo_allocator_traits { static constexpr bool is_memstruct = false; };

    template <typename T>
    class id {
    public:
        T alloc() {
            /* unsupported statement: Ti; */
            return i;
        }

    };

    class woeiru {
        friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const woeiru& value);
        friend struct __apo_soa_adapter<woeiru>;
    };

    inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const woeiru& value) {
    }

    template <>
    struct __apo_soa_adapter<woeiru> {
        struct storage {
            std::size_t size = 0;
        };

        static void push(storage& storage, const woeiru& value) {
            ++storage.size;
        }

        static woeiru load(const storage& storage, std::size_t index) {
            woeiru value{};
            return value;
        }

        static void store(storage& storage, std::size_t index, const woeiru& value) {
            (void)storage;
            (void)index;
            (void)value;
        }

        static std::size_t size(const storage& storage) {
            return storage.size;
        }
    };

    class mycls {
        friend void __apo_gc_trace_value(__apo_gc_tracer& tracer, const mycls& value);
        friend struct __apo_soa_adapter<mycls>;
    public:
        static void bark() {
            std::cout << "static" << std::endl;
            return;
        }

    };

    inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const mycls& value) {
    }

    template <>
    struct __apo_soa_adapter<mycls> {
        struct storage {
            std::size_t size = 0;
        };

        static void push(storage& storage, const mycls& value) {
            ++storage.size;
        }

        static mycls load(const storage& storage, std::size_t index) {
            mycls value{};
            return value;
        }

        static void store(storage& storage, std::size_t index, const mycls& value) {
            (void)storage;
            (void)index;
            (void)value;
        }

        static std::size_t size(const storage& storage) {
            return storage.size;
        }
    };

    static inline void mymacro() {
        std::cout << "Hello, world!" << std::endl;
    }

    int main() {
        id<int> i;
        i.alloc();
        /* unsupported statement: @unsafe{async-override
            int main() {
                async_write("function", "native_sum", "i32(i32,i32)", "int native_sum(int a, int b) { return a + b; }");
                async_write("variable", "shared_message", "str", "hello from inline cpp");
                return 0;
            }
        cpp;} */
        std::string nativeFn;
        nativeFn = async_read("function","native_sum");
        std::cout << nativeFn << std::endl;
        std::string sharedMessage;
        sharedMessage = async_read("variable","shared_message");
        std::cout << sharedMessage << std::endl;
        async_write("script", "shared_runner", "python", "print(42)", "py");
        std::int32_t execStatus;
        execStatus = async_exec("script","shared_runner");
        std::cout << execStatus << std::endl;
        /* unsupported statement: @unsafe{async
            public class ApoAsyncTask {
                public static void main(String[] args) {
                    String message = async_read("variable", "shared_message");
                    System.out.println(message);
                    int execStatus = async_exec("script", "shared_runner");
                    System.out.println(execStatus);
                    async_write("class", "BridgeClass", "java", "public class BridgeClass { public String name() { return \"bridge\"; } }");
                }
            }
        java;} */
        /* unsupported statement: syscall-recursive; */
        double pi;
        std::string bridgeClass;
        bridgeClass = async_read("class","BridgeClass");
        std::cout << bridgeClass << std::endl;
        std::int32_t counter;
        counter = 0;
        /* unsupported statement: @unsafe{i32*ptr_&counter;} */
        while (counter<4) {
            std::cout << "hello, world " << std::endl;
            counter = counter+1;
        }
        /* unsupported statement: @unsafe{async-override
            fn main() {
            let message = async_read("variable", "shared_message");
            println!("{}", message);
            let exec_status = async_exec("script", "shared_runner");
            println!("{}", exec_status);
            async_write("variable", "rust_message", "str", "hello from inline rust");
            }
        rs;} */
        std::unordered_map<std::string, int> ulmap;
        ulmap["hello"] = 239847;
        std::cout << ulmap["hello"] << std::endl;
        std::unordered_map<std::unordered_map<std::int32_t, std::string>, std::unordered_map<std::string, std::int32_t>> tester;
        tester[<23,"hello">] = <"hello",4>;
        std::cout << tester[<23,"hello">]["hello"] << std::endl;
        std::string rustMessage;
        rustMessage = async_read("variable","rust_message");
        std::cout << rustMessage << std::endl;
        std::cout << "qpwoeiruqpwoeiru" << std::endl;
        mymacro();
        std::string io;
        /* unsupported statement: staticxinstancemake=mycls{}; */
        make.bark();
        /* unsupported statement: @unsafe{void*heap.alc(1024)int;i32**placed=(i32**)new[heap]i32*;} */
        /* unsupported statement: @autoreleasepool{constinti=4;sys.stdout(i);} */
        /* unsupported statement: @unsafe{std -hres
            #include <memory>
        } */
        return 0;
    }

}
