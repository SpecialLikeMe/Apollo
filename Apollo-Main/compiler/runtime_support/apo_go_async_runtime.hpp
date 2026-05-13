#ifndef __APO_GO_ASYNC_RUNTIME
#define __APO_GO_ASYNC_RUNTIME

class __apo_go_scheduler {
private:
    std::deque<std::function<void()>> queue;
    std::vector<std::thread> workers;
    std::mutex queueMutex;
    std::condition_variable queueCv;
    bool stopping = false;

    void workerLoop() {
        while (true) {
            std::function<void()> task;
            {
                std::unique_lock<std::mutex> lock(queueMutex);
                queueCv.wait(lock, [this]() { return stopping || !queue.empty(); });
                if (stopping && queue.empty()) {
                    return;
                }
                task = std::move(queue.front());
                queue.pop_front();
            }
            task();
        }
    }

public:
    __apo_go_scheduler() {
        unsigned int workerCount = std::thread::hardware_concurrency();
        if (workerCount == 0) {
            workerCount = 2;
        }
        workers.reserve(workerCount);
        for (unsigned int index = 0; index < workerCount; ++index) {
            workers.emplace_back([this]() { workerLoop(); });
        }
    }

    ~__apo_go_scheduler() {
        {
            std::lock_guard<std::mutex> lock(queueMutex);
            stopping = true;
        }
        queueCv.notify_all();
        for (auto& worker : workers) {
            if (worker.joinable()) {
                worker.join();
            }
        }
    }

    void spawn(std::function<void()> task) {
        {
            std::lock_guard<std::mutex> lock(queueMutex);
            queue.push_back(std::move(task));
        }
        queueCv.notify_one();
    }

    static __apo_go_scheduler& instance() {
        static __apo_go_scheduler scheduler;
        return scheduler;
    }
};

#endif