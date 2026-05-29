# `std net` — implementation

## Module source

`Apollo-Main/include/net.apollo`.

## Exported type

- `url` — opaque handle wrapping a parsed URL.

## Exported functions

In `namespace sys`: `url_parse`, `url_scheme`, `url_username`, `url_password`, `url_host`, `url_port`, `url_path`, `url_query`, `url_fragment`, `url_join`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. The runtime's URL parser (`__apo_stdlib::url_*`) handles RFC 3986 syntax and resolution.

## Lowering

Standard inline-foreign call lowering.

## Edges and gotchas

- `url_parse` is permissive — malformed URLs return a handle whose component accessors yield empty strings or partial parses. There is no error-reporting API in this surface.
- All component accessors return runtime-owned strings; copy if you need to keep them after another `url_*` call.
- `url_port` returns a string to avoid lossy conversion; for schemes without a port, the result is empty.
- `url_join` follows RFC 3986 reference resolution semantics, including dot-segment handling.
- HTTP/WebSocket/TCP surfaces are not in this module; they belong to extension modules built on top of this parser.

## Source of truth

- Source: `Apollo-Main/include/net.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
