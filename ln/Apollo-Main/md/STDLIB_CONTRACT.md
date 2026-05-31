# Apollo Standard Library Contract

1. Every standard library entry point is published under the `sys` namespace; language-level result constructors are the only exception.
2. `nominal<T, E>` is the canonical result carrier. `nominal(...)` constructs the success branch. `cerr(...)` and `terminalcerr(...)` construct the error branch.
3. Runtime-backed objects such as `buffer`, `file`, `process`, and `task` are opaque handles. User code treats them as stable values and does not rely on their layout.
4. Pure Apollo helpers should exist when the surface can be expressed honestly in Apollo. Native bridge functions are reserved for portability gaps, host integration, and performance-sensitive primitives.
5. Text values are UTF-8 `str`. File, process, and path helpers consume and produce `str` rather than host-specific byte arrays.
6. Cross-platform differences are normalized behind `sys.host_is_windows()`, `sys.path_separator()`, `sys.exe_suffix()`, `sys.path_join(...)`, `sys.temp_dir()`, and `sys.env_get(...)`.
7. `null` is only a valid absence sentinel for pointer-like and handle-like values. Structured values, including `nominal<T, E>`, use explicit tags instead of null-as-state.
8. Standard-library handles have explicit lifecycle hooks available through `sys.handle_destroy(...)` and family-specific close/wait operations where that makes sense.