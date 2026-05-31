# `std hash`

## What it is

The `hash` module exports a small set of string-hashing functions: FNV-1a (32 and 64-bit), Adler-32, CRC-32, and Murmur3 (32-bit). All take a `str` and return an integer hash code. They are intended for non-cryptographic hashing — table keys, content fingerprinting, change detection.

For cryptographic hashing, do not use these.

## When you use it

- Implementing a custom hash table keyed by string.
- Computing a fingerprint of generated content for change detection.
- Bucketing or sharding by hash mod N.
- Quick integrity checks (CRC-32, Adler-32) where speed matters more than security.

## API surface

All in `namespace sys`:

- `sys.hash_fnv1a_32(value)` — FNV-1a 32-bit, returns `i32`.
- `sys.hash_fnv1a_64(value)` — FNV-1a 64-bit, returns `long`.
- `sys.hash_adler32(value)` — Adler-32, returns `i32`.
- `sys.hash_crc32(value)` — CRC-32, returns `i32`.
- `sys.hash_murmur3_32(value)` — Murmur3 32-bit, returns `i32`.

## Examples

### Pick a hash for a table

```apollo
extern std hash;

int main() {
    sys.printf("fnv1a:   %x\n", sys.hash_fnv1a_32("hello"));
    sys.printf("murmur3: %x\n", sys.hash_murmur3_32("hello"));
    sys.printf("crc32:   %x\n", sys.hash_crc32("hello"));
    return 0;
}
```

Quick comparison of the algorithms on the same input.

### Bucket by hash

```apollo
extern std hash;

i32 bucket_for(nconst str& key, i32 bucket_count) {
    nconst i32 h = sys.hash_fnv1a_32(key);
    nconst i32 abs_h = h < 0 ? 0 - h : h;
    return abs_h % bucket_count;
}

int main() {
    sys.println(bucket_for("alice", 16));
    sys.println(bucket_for("bob",   16));
    return 0;
}
```

A typical "place this key in one of N buckets" routine.

### Detect change with FNV-1a 64

```apollo
extern std hash;

long fingerprint(nconst str& content) {
    return sys.hash_fnv1a_64(content);
}

int main() {
    nconst long a = fingerprint("contents version 1");
    nconst long b = fingerprint("contents version 2");
    if (a != b) {
        sys.println("changed");
    }
    return 0;
}
```

### Integrity check with CRC-32

```apollo
extern std hash;

int main() {
    nconst i32 expected = sys.hash_crc32("payload");
    nconst i32 actual   = sys.hash_crc32("payload");
    if (expected == actual) {
        sys.println("ok");
    } else {
        sys.println("corrupt");
    }
    return 0;
}
```

Same input → same output. Used for catching accidental corruption.

### Adler-32 for streaming

```apollo
extern std hash;

int main() {
    sys.println(sys.hash_adler32(""));     // 1 (Adler-32 of empty)
    sys.println(sys.hash_adler32("a"));    // 1 + ('a'<<16) ...
    return 0;
}
```

Adler-32 is cheap to compute incrementally and used in zlib for integrity.

### Combining hashes

```apollo
extern std hash;

i32 mix(i32 a, i32 b) {
    return a ^ ((b << 5) + b + 0x9e3779b9);  // boost::hash_combine inspired
}

int main() {
    nconst i32 h1 = sys.hash_fnv1a_32("first");
    nconst i32 h2 = sys.hash_fnv1a_32("second");
    sys.printf("combined = %x\n", mix(h1, h2));
    return 0;
}
```

Combining hashes is a manual concern; the module provides primitives, not a combiner.

## Common mistakes

- **Using these for security.** None are cryptographic; CRC-32 is not even collision-resistant against an adversary.
- **Negative hash modulo.** `i32` results may be negative; take absolute value before `%` to get a non-negative bucket.
- **Hashing empty strings without checking.** Some algorithms return a fixed value (Adler-32 returns 1); that's correct but easy to misinterpret.
- **Reaching for FNV when Murmur3 is more uniform.** For hash-table key distribution, Murmur3 is the better default; FNV is good for fingerprinting.
- **Assuming `long` matches `i64`.** In Apollo, `long` is the platform long type; for portable 64-bit, prefer `i64` where the module exposes it.

## See also

- `docs/stdlib/data/docs/collections.md` — `map` already provides hashing internally.
- `docs/stdlib/text/docs/strings.md` — string manipulation around hash inputs.
- `docs/stdlib/data/docs/buffer.md` — building strings to hash.
- `Apollo-Main/include/hash.apollo` — source.
