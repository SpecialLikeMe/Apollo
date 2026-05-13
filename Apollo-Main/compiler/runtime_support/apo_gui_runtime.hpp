#ifndef __APO_GUI_RUNTIME
#define __APO_GUI_RUNTIME

#include "apo_go_async_runtime.hpp"

#ifndef SDL_MAIN_HANDLED
#define SDL_MAIN_HANDLED
#endif

#include <SDL.h>
#include <SDL_image.h>

#include <algorithm>
#include <atomic>
#include <cctype>
#include <cstdint>
#include <memory>
#include <mutex>
#include <stdexcept>
#include <string>
#include <thread>
#include <deque>
#include <unordered_map>
#include <utility>
#include <vector>

namespace __apo_gui_runtime {

struct event_context {
    std::int32_t mouseX = 0;
    std::int32_t mouseY = 0;
    std::string touchedObject;
};

struct pending_event_handler {
    std::function<void()> callback;
    event_context context;
};

inline thread_local event_context __apo_current_event_context{};

class event_scope {
private:
    event_context previousContext;

public:
    explicit event_scope(event_context context)
        : previousContext(__apo_current_event_context) {
        __apo_current_event_context = std::move(context);
    }

    ~event_scope() {
        __apo_current_event_context = previousContext;
    }
};

inline std::int32_t current_mouse_x() {
    return __apo_current_event_context.mouseX;
}

inline std::int32_t current_mouse_y() {
    return __apo_current_event_context.mouseY;
}

inline std::string current_touched_object() {
    return __apo_current_event_context.touchedObject;
}

inline std::string normalize_event_key(std::string raw) {
    if (raw.rfind("KEYPRESS_", 0) == 0) {
        raw = raw.substr(std::string("KEYPRESS_").size());
    }
    for (char& ch : raw) {
        if (ch == ' ' || ch == '-') {
            ch = '_';
        } else {
            ch = static_cast<char>(std::toupper(static_cast<unsigned char>(ch)));
        }
    }
    return raw;
}

inline std::string keypress_event_name(const std::string& key) {
    return "KEYPRESS_" + normalize_event_key(key);
}

inline std::string canonical_event_name(std::string raw) {
    std::string upper = raw;
    for (char& ch : upper) {
        ch = static_cast<char>(std::toupper(static_cast<unsigned char>(ch)));
    }
    if (upper.rfind("KEYPRESS_", 0) == 0) {
        return keypress_event_name(raw.substr(std::string("KEYPRESS_").size()));
    }
    return upper;
}

class runtime_state {
private:
    std::mutex initMutex;
    bool sdlReady = false;
    int imageInitMask = 0;

    runtime_state() = default;

public:
    runtime_state(const runtime_state&) = delete;
    runtime_state& operator=(const runtime_state&) = delete;

    ~runtime_state() {
        std::lock_guard<std::mutex> lock(initMutex);
        if (imageInitMask != 0) {
            IMG_Quit();
        }
        if (sdlReady) {
            SDL_Quit();
        }
    }

    static runtime_state& instance() {
        static runtime_state state;
        return state;
    }

    void ensure_initialized() {
        std::lock_guard<std::mutex> lock(initMutex);
        if (!sdlReady) {
            if (SDL_Init(SDL_INIT_VIDEO) != 0) {
                throw std::runtime_error(std::string("SDL_Init failed: ") + SDL_GetError());
            }
            sdlReady = true;
        }
        if (imageInitMask == 0) {
            imageInitMask = IMG_Init(IMG_INIT_PNG | IMG_INIT_JPG | IMG_INIT_TIF | IMG_INIT_WEBP);
            if (imageInitMask == 0) {
                throw std::runtime_error(std::string("IMG_Init failed: ") + IMG_GetError());
            }
        }
    }
};

struct rendered_object {
    std::string name;
    std::string imagePath;
    std::int32_t x = 0;
    std::int32_t y = 0;
    std::int32_t width = 0;
    std::int32_t height = 0;
    SDL_Texture* texture = nullptr;

    rendered_object() = default;
    rendered_object(const rendered_object&) = delete;
    rendered_object& operator=(const rendered_object&) = delete;

    rendered_object(rendered_object&& other) noexcept {
        *this = std::move(other);
    }

    rendered_object& operator=(rendered_object&& other) noexcept {
        if (this == &other) {
            return *this;
        }
        if (texture != nullptr) {
            SDL_DestroyTexture(texture);
        }
        name = std::move(other.name);
        imagePath = std::move(other.imagePath);
        x = other.x;
        y = other.y;
        width = other.width;
        height = other.height;
        texture = other.texture;
        other.texture = nullptr;
        return *this;
    }

    ~rendered_object() {
        if (texture != nullptr) {
            SDL_DestroyTexture(texture);
        }
    }
};

struct window_state {
    std::string name;
    SDL_Window* window = nullptr;
    SDL_Renderer* renderer = nullptr;
    std::unordered_map<std::string, rendered_object> objects;
    std::vector<std::string> renderOrder;
    std::unordered_map<std::string, std::vector<std::function<void()>>> handlers;
    std::deque<pending_event_handler> pendingHandlers;
    std::mutex mutex;
    std::atomic<bool> running{true};

    explicit window_state(std::string windowName) : name(std::move(windowName)) {
        runtime_state::instance().ensure_initialized();
        window = SDL_CreateWindow(name.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                800, 600, SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE);
        if (window == nullptr) {
            throw std::runtime_error(std::string("SDL_CreateWindow failed: ") + SDL_GetError());
        }
        renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
        if (renderer == nullptr) {
            throw std::runtime_error(std::string("SDL_CreateRenderer failed: ") + SDL_GetError());
        }
    }

    ~window_state() {
        running = false;
        objects.clear();
        renderOrder.clear();
        if (renderer != nullptr) {
            SDL_DestroyRenderer(renderer);
        }
        if (window != nullptr) {
            SDL_DestroyWindow(window);
        }
    }
};

class __apo_gui_object_ref {
private:
    std::shared_ptr<window_state> state;
    std::string objectName;

public:
    __apo_gui_object_ref() = default;

    __apo_gui_object_ref(std::shared_ptr<window_state> windowState, std::string name)
        : state(std::move(windowState)), objectName(std::move(name)) {}

    const std::string& name() const {
        return objectName;
    }

    bool touches(const __apo_gui_object_ref& other) const {
        if (!state || !other.state || state != other.state) {
            return false;
        }
        std::lock_guard<std::mutex> lock(state->mutex);
        auto leftIt = state->objects.find(objectName);
        auto rightIt = state->objects.find(other.objectName);
        if (leftIt == state->objects.end() || rightIt == state->objects.end()) {
            return false;
        }
        const rendered_object& left = leftIt->second;
        const rendered_object& right = rightIt->second;
        SDL_Rect leftRect{left.x, left.y, left.width, left.height};
        SDL_Rect rightRect{right.x, right.y, right.width, right.height};
        return SDL_HasIntersection(&leftRect, &rightRect) == SDL_TRUE;
    }
};

inline void redraw(const std::shared_ptr<window_state>& state) {
    std::lock_guard<std::mutex> lock(state->mutex);
    SDL_SetRenderDrawColor(state->renderer, 0, 0, 0, 255);
    SDL_RenderClear(state->renderer);
    for (const std::string& objectName : state->renderOrder) {
        auto objectIt = state->objects.find(objectName);
        if (objectIt == state->objects.end() || objectIt->second.texture == nullptr) {
            continue;
        }
        const rendered_object& object = objectIt->second;
        SDL_Rect destination{object.x, object.y, object.width, object.height};
        SDL_RenderCopy(state->renderer, object.texture, nullptr, &destination);
    }
    SDL_RenderPresent(state->renderer);
}

inline std::string object_at(const std::shared_ptr<window_state>& state, std::int32_t mouseX, std::int32_t mouseY) {
    std::lock_guard<std::mutex> lock(state->mutex);
    for (auto it = state->renderOrder.rbegin(); it != state->renderOrder.rend(); ++it) {
        auto objectIt = state->objects.find(*it);
        if (objectIt == state->objects.end()) {
            continue;
        }
        const rendered_object& object = objectIt->second;
        if (mouseX >= object.x && mouseX <= object.x + object.width
                && mouseY >= object.y && mouseY <= object.y + object.height) {
            return object.name;
        }
    }
    return "";
}

inline void dispatch_event(const std::shared_ptr<window_state>& state, const std::string& eventName, event_context context) {
    std::vector<std::function<void()>> handlers;
    {
        std::lock_guard<std::mutex> lock(state->mutex);
        auto it = state->handlers.find(eventName);
        if (it != state->handlers.end()) {
            handlers = it->second;
        }
        for (const auto& handler : handlers) {
            state->pendingHandlers.push_back(pending_event_handler{handler, context});
        }
    }
}

inline void drain_pending_handlers(const std::shared_ptr<window_state>& state) {
    std::deque<pending_event_handler> pending;
    {
        std::lock_guard<std::mutex> lock(state->mutex);
        pending.swap(state->pendingHandlers);
    }
    while (!pending.empty()) {
        pending_event_handler queued = std::move(pending.front());
        pending.pop_front();
        event_scope scope(std::move(queued.context));
        queued.callback();
    }
}

inline void pump_events(const std::shared_ptr<window_state>& state) {
    SDL_Event event;
    while (SDL_PollEvent(&event) == 1) {
        if (event.type == SDL_QUIT) {
            state->running = false;
            break;
        }
        if (event.type == SDL_MOUSEBUTTONDOWN) {
            event_context context;
            context.mouseX = event.button.x;
            context.mouseY = event.button.y;
            context.touchedObject = object_at(state, context.mouseX, context.mouseY);
            dispatch_event(state, "MOUSECLICK", context);
            continue;
        }
        if (event.type == SDL_KEYDOWN) {
            dispatch_event(state, keypress_event_name(SDL_GetKeyName(event.key.keysym.sym)), event_context{});
        }
    }
    drain_pending_handlers(state);
}

class __apo_gui_window {
private:
    std::shared_ptr<window_state> state;

public:
    explicit __apo_gui_window(const std::string& windowName)
        : state(std::make_shared<window_state>(windowName)) {}

    void show() {
        runtime_state::instance().ensure_initialized();
        pump_events(state);
        SDL_ShowWindow(state->window);
        redraw(state);
    }

    void hide() {
        pump_events(state);
        SDL_HideWindow(state->window);
    }

    void render(const std::string& objectName, const std::string& imagePath, std::int32_t x, std::int32_t y) {
        runtime_state::instance().ensure_initialized();
        pump_events(state);

        bool reusedExistingTexture = false;
        bool layoutChanged = false;

        {
            std::lock_guard<std::mutex> lock(state->mutex);
            auto existing = state->objects.find(objectName);
            if (existing != state->objects.end()
                    && existing->second.texture != nullptr
                    && existing->second.imagePath == imagePath) {
                layoutChanged = existing->second.x != x || existing->second.y != y;
                existing->second.x = x;
                existing->second.y = y;
                auto orderIt = std::find(state->renderOrder.begin(), state->renderOrder.end(), objectName);
                if (orderIt != state->renderOrder.end() && std::next(orderIt) != state->renderOrder.end()) {
                    state->renderOrder.erase(orderIt);
                    state->renderOrder.push_back(objectName);
                }
                reusedExistingTexture = true;
            }
        }

        if (reusedExistingTexture) {
            if (layoutChanged) {
                redraw(state);
            }
            SDL_Delay(8);
            return;
        }

        SDL_Texture* texture = IMG_LoadTexture(state->renderer, imagePath.c_str());
        if (texture == nullptr) {
            SDL_Surface* surface = SDL_LoadBMP(imagePath.c_str());
            if (surface == nullptr) {
                throw std::runtime_error(std::string("Failed to load image `") + imagePath + "`: " + IMG_GetError());
            }
            texture = SDL_CreateTextureFromSurface(state->renderer, surface);
            SDL_FreeSurface(surface);
        }
        if (texture == nullptr) {
            throw std::runtime_error(std::string("Failed to create texture for `") + imagePath + "`: " + SDL_GetError());
        }

        rendered_object replacement;
        replacement.name = objectName;
        replacement.imagePath = imagePath;
        replacement.x = x;
        replacement.y = y;
        replacement.texture = texture;
        if (SDL_QueryTexture(texture, nullptr, nullptr, &replacement.width, &replacement.height) != 0) {
            throw std::runtime_error(std::string("Failed to query texture for `") + imagePath + "`: " + SDL_GetError());
        }

        {
            std::lock_guard<std::mutex> lock(state->mutex);
            auto existing = std::find(state->renderOrder.begin(), state->renderOrder.end(), objectName);
            if (existing != state->renderOrder.end()) {
                state->renderOrder.erase(existing);
            }
            state->renderOrder.push_back(objectName);
            state->objects[objectName] = std::move(replacement);
        }
        redraw(state);
        SDL_Delay(8);
    }

    __apo_gui_object_ref object_ref(const std::string& objectName) {
        return __apo_gui_object_ref(state, objectName);
    }

    void on(const std::string& eventName, std::function<void()> callback) {
        runtime_state::instance().ensure_initialized();
        pump_events(state);
        std::lock_guard<std::mutex> lock(state->mutex);
        state->handlers[canonical_event_name(eventName)].push_back(std::move(callback));
    }
};

inline bool key_pressed(const std::string& keyName) {
    runtime_state::instance().ensure_initialized();
    SDL_PumpEvents();
    std::string lookupName = normalize_event_key(keyName);
    std::replace(lookupName.begin(), lookupName.end(), '_', ' ');
    SDL_Scancode scancode = SDL_GetScancodeFromName(lookupName.c_str());
    if (scancode == SDL_SCANCODE_UNKNOWN) {
        return false;
    }
    const Uint8* state = SDL_GetKeyboardState(nullptr);
    return state != nullptr && state[scancode] != 0;
}

} // namespace __apo_gui_runtime

#endif