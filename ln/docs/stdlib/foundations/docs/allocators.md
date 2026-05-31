# `std allocators`

## What it is

The `allocators` module provides Apollo's bookkeeping allocator types. Each allocator is a memstruct that tracks `allocation_count`, `release_count`, `reserved_bytes`, and `peak_bytes` for the lifetime of its owner. They are the recommended way to wire memory-tracked allocation into Apollo programs without giving up the deterministic `malloc`/`free`/`plcnew` core.

This module does not replace the language-level `malloc`/`plcnew` keywords. Instead, allocator instances act as logical owners: code passes a `&` to the allocator into helpers that record how much memory was requested or released, and the underlying heap is still serviced by the runtime.

Three allocator types are exported:

- `DefaultAllocator` — the everyday choice. Counts allocations, tracks peak usage, is safe to use in single-threaded code.
- `GeneralPurposeAllocator` — alias-shape allocator with the same accounting fields; suited to mixed workloads.
- `ArenaAllocator` — same accounting surface, intended for arena-style scopes where many small allocations are freed together.

## When you use it

- You want to know how much memory a feature uses without writing your own counter.
- You want a single accounting object passed through a subsystem so any code in that subsystem reports against the same allocator.
- You're profiling memory use during tests and want a deterministic record of allocation count and peak bytes.

For unaccounted allocation, plain `malloc<T>()` / `plcnew T(args)` is still fine; you don't *need* an allocator wrapper.

## API surface

Each allocator exposes the same methods:

- `i32 alloc(str type_name, i32 requested_bytes)` — record an allocation; returns the recorded byte count.
- `i32 resize(str type_name, i32 previous_bytes, i32 requested_bytes)` — record a resize from `previous_bytes` to `requested_bytes`.
- `i32 remap(str type_name, i32 previous_bytes, i32 requested_bytes)` — alias for `resize`.
- `i32 free(str type_name, i32 released_bytes)` — record a release; returns remaining reserved bytes.

Fields available for inspection:

- `label`, `strategy` — caller-supplied labels.
- `default_block_bytes` — caller hint.
- `thread_safe`, `relocatable` — caller-set flags.
- `last_type` — the most recent `type_name` reported.
- `allocation_count`, `release_count` — running totals.
- `reserved_bytes`, `peak_bytes` — current and high-water marks.

## Examples

### Track a single subsystem's allocations

```apollo
extern std allocators;

int main() {
    nconst DefaultAllocator alloc = DefaultAllocator(
        "renderer", "default", 4096, false, false,
        "", 0, 0, 0, 0
    );

    alloc.alloc("Vertex", 64);
    alloc.alloc("Vertex", 64);
    alloc.alloc("Texture", 1024);

    sys.printf("count=%d peak=%d\n",
        alloc.allocation_count, alloc.peak_bytes);
    return 0;
}
```

The allocator records three allocations and reports the peak.

### Resize tracking

```apollo
extern std allocators;

int main() {
    nconst GeneralPurposeAllocator gpa = GeneralPurposeAllocator(
        "buffer", "gpa", 0, false, false, "", 0, 0, 0, 0);
    gpa.alloc("Buffer", 256);
    gpa.resize("Buffer", 256, 1024);   // grow
    sys.printf("now=%d peak=%d\n", gpa.reserved_bytes, gpa.peak_bytes);
    return 0;
}
```

`resize` adjusts reserved and may bump the peak.

### Arena pattern

```apollo
extern std allocators;

int main() {
    nconst ArenaAllocator arena = ArenaAllocator(
        "frame", "arena", 65536, false, false, "", 0, 0, 0, 0);

    // simulate per-frame allocations
    for (nconst i := 0; i < 4; i = i + 1) {
        arena.alloc("FrameJob", 256);
    }
    sys.printf("frame allocs=%d, bytes=%d\n",
        arena.allocation_count, arena.reserved_bytes);

    // single bulk release at frame end
    arena.free("FrameJob", arena.reserved_bytes);
    sys.printf("after release: %d bytes\n", arena.reserved_bytes);
    return 0;
}
```

The arena pattern: many small allocations, one bulk release.

### Passing the allocator through a subsystem

```apollo
extern std allocators;

void load_assets(nconst DefaultAllocator& acct) {
    acct.alloc("Mesh", 4096);
    acct.alloc("Texture", 16384);
    acct.alloc("Shader", 512);
}

int main() {
    nconst DefaultAllocator alloc = DefaultAllocator(
        "assets", "default", 0, false, false, "", 0, 0, 0, 0);
    load_assets(&nconst alloc);
    sys.printf("loaded; reserved=%d peak=%d\n",
        alloc.reserved_bytes, alloc.peak_bytes);
    return 0;
}
```

A subsystem reports against the caller's accounting object.

### Multiple allocators per program

```apollo
extern std allocators;

int main() {
    nconst DefaultAllocator gameplay = DefaultAllocator(
        "gameplay", "default", 0, false, false, "", 0, 0, 0, 0);
    nconst DefaultAllocator audio = DefaultAllocator(
        "audio", "default", 0, false, false, "", 0, 0, 0, 0);

    gameplay.alloc("Entity", 128);
    audio.alloc("Voice", 2048);

    sys.printf("gameplay=%d, audio=%d\n",
        gameplay.reserved_bytes, audio.reserved_bytes);
    return 0;
}
```

Each subsystem gets its own counter; totals stay separate.

### Diagnosing a leak

```apollo
extern std allocators;

int main() {
    nconst DefaultAllocator a = DefaultAllocator(
        "leaky", "default", 0, false, false, "", 0, 0, 0, 0);

    a.alloc("Foo", 128);
    a.alloc("Foo", 128);
    a.free("Foo", 128);

    if (a.allocation_count != a.release_count) {
        sys.printf("leak: %d allocations, %d releases\n",
            a.allocation_count, a.release_count);
    }
    return 0;
}
```

Allocator counters make leaks visible at a glance.

## Common mistakes

- **Forgetting to call `free` after `alloc`.** The counters drift; the bookkeeping is only as accurate as the calls into it.
- **Calling `free` with the wrong byte count.** Reserved bytes will be wrong. Match the original `alloc` size.
- **Using `ArenaAllocator` as a bulk-free actual allocator.** It only *accounts* for arena-style usage; it doesn't free memory itself.
- **Sharing an allocator across threads without setting `thread_safe`.** The struct doesn't enforce locking; the field is informational.
- **Treating the allocator as a heap.** It's a counter; actual storage still comes from `malloc`/`plcnew`/the runtime.

## See also

- `docs/language/memory-and-storage/docs/allocators.md` — the language-level allocator concept.
- `docs/language/memory-and-storage/docs/malloc.md` — the underlying heap surface.
- `docs/stdlib/foundations/docs/assertions.md` — `sys.require` for invariant checking.
- `Apollo-Main/include/allocators.apollo` — source.
