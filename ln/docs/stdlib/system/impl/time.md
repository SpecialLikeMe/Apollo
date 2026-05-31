# `std time` — implementation

## Module source

`Apollo-Main/include/time.apollo`.

## Exported functions

In `namespace sys`: `datetime_now_utc`, `datetime_now_local`, `datetime_year_local`, `datetime_month_local`, `datetime_day_local`, `datetime_hour_local`, `datetime_minute_local`, `datetime_second_local`, `monotonic_millis`.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. Implementations use `std::chrono::system_clock` for wall time and `std::chrono::steady_clock` for monotonic, plus `std::localtime`/`std::gmtime` for local-time decomposition.

## Lowering

Standard inline-foreign call lowering.

## Edges and gotchas

- `datetime_now_utc` / `datetime_now_local` return string-form timestamps owned by the runtime; copy for long-term retention.
- Component functions take a fresh snapshot per call; consecutive calls during midnight crossings may report different days. For a coherent snapshot, capture one full datetime string and parse.
- `monotonic_millis` returns `i32`, which limits the representable elapsed time to ~24 days from program start. For longer ranges, a wider type would be needed.
- Component values follow the platform conventions: `month_local` is 1..12, `day_local` is 1..31, hours are 0..23.

## Source of truth

- Source: `Apollo-Main/include/time.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
