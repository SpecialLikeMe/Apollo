#ifndef __APO_SCHEDULER_EEVF_RUNTIME
#define __APO_SCHEDULER_EEVF_RUNTIME

#include <condition_variable>
#include <cstddef>
#include <cstdint>
#include <deque>
#include <functional>
#include <memory>
#include <mutex>
#include <stdexcept>
#include <string>
#include <thread>
#include <unordered_map>
#include <utility>
#include <vector>

struct __apo_schedule_instance;

class __apo_scheduler_eevf_runtime {
public:
    struct schedule_task_registration {
        std::string name;
        std::function<void()> callback;
        bool mandatory;
    };

    struct scheduled_task {
        std::string name;
        std::int32_t weight;
        std::function<void()> callback;
    };

    struct schedule_definition {
        std::vector<schedule_task_registration> tasks;
    };

    struct schedule_state {
        std::string scheduleName;
        std::string instanceName;
        std::deque<scheduled_task> queue;
        std::mutex mutex;
        std::condition_variable cv;
        std::thread worker;
        bool workerStarted = false;
        bool stopping = false;
        std::size_t pendingTasks = 0;
    };

private:

    std::unordered_map<std::string, bool> communalTypes;
    std::unordered_map<std::string, std::size_t> launchedTasks;
    std::unordered_map<std::string, std::size_t> activeTasks;
    std::unordered_map<std::string, std::size_t> launchedProcesses;
    std::unordered_map<std::string, std::size_t> activeProcesses;
    std::unordered_map<std::string, schedule_definition> schedules;
    mutable std::recursive_mutex runtimeMutex;

    void enter_task(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        activeTasks[name] += 1;
    }

    void exit_task(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        auto it = activeTasks.find(name);
        if (it == activeTasks.end()) {
            return;
        }
        if (it->second > 1) {
            it->second -= 1;
            return;
        }
        activeTasks.erase(it);
    }

    void enter_process(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        activeProcesses[name] += 1;
    }

    void exit_process(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        auto it = activeProcesses.find(name);
        if (it == activeProcesses.end()) {
            return;
        }
        if (it->second > 1) {
            it->second -= 1;
            return;
        }
        activeProcesses.erase(it);
    }

    static void insert_task_locked(const std::shared_ptr<schedule_state>& state, scheduled_task task) {
        auto insertIt = state->queue.begin();
        while (insertIt != state->queue.end() && insertIt->weight >= task.weight) {
            ++insertIt;
        }
        state->queue.insert(insertIt, std::move(task));
        state->pendingTasks += 1;
    }

    void run_schedule_worker(const std::shared_ptr<schedule_state>& state) {
        for (;;) {
            scheduled_task task;
            {
                std::unique_lock<std::mutex> lock(state->mutex);
                state->cv.wait(lock, [&]() { return state->stopping || !state->queue.empty(); });
                if (state->queue.empty()) {
                    if (state->stopping) {
                        state->workerStarted = false;
                        state->cv.notify_all();
                        return;
                    }
                    continue;
                }
                task = std::move(state->queue.front());
                state->queue.pop_front();
            }

            note_task_launch(task.name);
            task_scope scope(task.name);
            task.callback();

            {
                std::lock_guard<std::mutex> lock(state->mutex);
                if (state->pendingTasks > 0) {
                    state->pendingTasks -= 1;
                }
                if (state->pendingTasks == 0) {
                    state->cv.notify_all();
                }
            }
        }
    }

    void ensure_schedule_worker_started(const std::shared_ptr<schedule_state>& state) {
        std::lock_guard<std::mutex> lock(state->mutex);
        if (state->workerStarted) {
            return;
        }
        state->workerStarted = true;
        state->worker = std::thread([this, state]() { run_schedule_worker(state); });
    }

public:
    class task_scope {
    private:
        std::string taskName;

    public:
        explicit task_scope(const std::string& name) : taskName(name) {
            __apo_scheduler_eevf_runtime::instance().enter_task(taskName);
        }

        ~task_scope() {
            __apo_scheduler_eevf_runtime::instance().exit_task(taskName);
        }
    };

    class process_scope {
    private:
        std::string processName;

    public:
        explicit process_scope(const std::string& name) : processName(name) {
            __apo_scheduler_eevf_runtime::instance().enter_process(processName);
        }

        ~process_scope() {
            __apo_scheduler_eevf_runtime::instance().exit_process(processName);
        }
    };

    static __apo_scheduler_eevf_runtime& instance() {
        static __apo_scheduler_eevf_runtime runtime;
        return runtime;
    }

    void register_communal_type(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        communalTypes[name] = true;
    }

    void register_schedule(const std::string& name, std::initializer_list<schedule_task_registration> tasks) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        schedules[name] = schedule_definition{std::vector<schedule_task_registration>(tasks)};
    }

    void note_task_launch(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        launchedTasks[name] += 1;
    }

    void note_process_launch(const std::string& name) {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        launchedProcesses[name] += 1;
    }

    __apo_schedule_instance create_schedule_instance(const std::string& scheduleName, const std::string& instanceName);

    void start_schedule(__apo_schedule_instance& instance, bool joinMode);

    void enqueue_schedule_task(__apo_schedule_instance& instance, const std::string& taskName, std::int32_t weight,
            std::function<void()> callback);

    void schvoid(__apo_schedule_instance& instance);

    template <typename Fn>
    auto run_process(const std::string& name, Fn&& callback) -> decltype(callback()) {
        note_process_launch(name);
        process_scope scope(name);
        return callback();
    }
};

struct __apo_schedule_instance {
    std::string scheduleName;
    std::string instanceName;
    std::shared_ptr<__apo_scheduler_eevf_runtime::schedule_state> state;

    __apo_schedule_instance() = default;

    explicit operator bool() const {
        return state != nullptr;
    }
};

inline __apo_schedule_instance __apo_scheduler_eevf_runtime::create_schedule_instance(
        const std::string& scheduleName,
        const std::string& instanceName) {
    {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        if (schedules.find(scheduleName) == schedules.end()) {
            throw std::runtime_error("unknown schedule `" + scheduleName + "`");
        }
    }
    __apo_schedule_instance instance;
    instance.scheduleName = scheduleName;
    instance.instanceName = instanceName;
    instance.state = std::make_shared<schedule_state>();
    instance.state->scheduleName = scheduleName;
    instance.state->instanceName = instanceName;
    return instance;
}

inline void __apo_scheduler_eevf_runtime::start_schedule(__apo_schedule_instance& instance, bool joinMode) {
    if (!instance.state) {
        return;
    }
    schedule_definition definition;
    {
        std::lock_guard<std::recursive_mutex> guard(runtimeMutex);
        auto it = schedules.find(instance.scheduleName);
        if (it == schedules.end()) {
            throw std::runtime_error("unknown schedule `" + instance.scheduleName + "`");
        }
        definition = it->second;
    }
    {
        std::lock_guard<std::mutex> lock(instance.state->mutex);
        for (const schedule_task_registration& task : definition.tasks) {
            if (!task.mandatory) {
                continue;
            }
            insert_task_locked(instance.state, scheduled_task{task.name, 0, task.callback});
        }
        instance.state->cv.notify_all();
    }
    ensure_schedule_worker_started(instance.state);
    if (joinMode) {
        schvoid(instance);
    }
}

inline void __apo_scheduler_eevf_runtime::enqueue_schedule_task(
        __apo_schedule_instance& instance,
        const std::string& taskName,
        std::int32_t weight,
        std::function<void()> callback) {
    if (!instance.state) {
        return;
    }
    ensure_schedule_worker_started(instance.state);
    {
        std::lock_guard<std::mutex> lock(instance.state->mutex);
        insert_task_locked(instance.state, scheduled_task{taskName, weight, std::move(callback)});
        instance.state->cv.notify_all();
    }
}

inline void __apo_scheduler_eevf_runtime::schvoid(__apo_schedule_instance& instance) {
    if (!instance.state) {
        return;
    }
    {
        std::unique_lock<std::mutex> lock(instance.state->mutex);
        instance.state->stopping = true;
        instance.state->cv.notify_all();
        instance.state->cv.wait(lock, [&]() { return instance.state->pendingTasks == 0 && instance.state->queue.empty(); });
    }
    if (instance.state->worker.joinable()) {
        instance.state->worker.join();
    }
    instance.state.reset();
}

#endif