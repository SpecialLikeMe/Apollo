# `std fs` — implementation

## Module source

`Apollo-Main/include/fs.apollo`.

## Exported types

- `file` — opaque handle wrapping a runtime file object.
- `metadata` — opaque snapshot of stat info.

## Exported functions

In `namespace sys`. File: `file_open`, `file_create`, `file_write`, `file_read_all`, `file_close`, `file_path`, `file_sync_all`, `file_sync_data`, `file_set_len`. Metadata: `file_metadata`, `meta_size`, `meta_modified`, `meta_accessed`, `meta_created`, `meta_is_dir`, `meta_is_file`, `perm_readonly`. Directory: `fs_create_dir`, `fs_create_dir_all`, `fs_remove_file`, plus more further in source.

## Native bridge

`@unsafe { inline::cpp { ... } }` includes `apo_std_object_runtime.hpp`. The runtime helpers (`__apo_stdlib::file_*`, `meta_*`, `fs_*`) wrap C++ `<filesystem>` and C stdio for file I/O.

## Runtime support

The C++ runtime maintains the open-file table; the Apollo `file` handle is a `void*` to a refcounted file object. Metadata is captured once via `file_metadata` and cached on the snapshot.

## Lowering

Standard inline-foreign call lowering for each function.

## Edges and gotchas

- The Apollo `file_write` is byte-oriented for `str` content (UTF-8). For binary, layer your own helpers using `std encoding`.
- Times in metadata are returned as ISO-8601-style strings; parse if you need numeric times.
- The filesystem operations return integer status codes (1 on success, 0 on failure) without rich error info — for diagnostics, capture `errno`-equivalent via inline foreign code.
- `file_read_all` allocates a string containing the entire file; not suitable for very large files.

## Source of truth

- Source: `Apollo-Main/include/fs.apollo`
- C++ helpers: `Apollo-Main/compiler/runtime_support/apo_std_object_runtime.hpp`
