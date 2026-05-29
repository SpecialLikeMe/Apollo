# `std fs`

## What it is

The `fs` module is Apollo's filesystem surface: open and read/write files, inspect metadata, create and remove directories, and walk paths. The main types are `file` (an open file handle) and `metadata` (a snapshot of a file's stat info). All operations are blocking; for async I/O, build on top using `std task`.

## When you use it

- Reading configuration or data files.
- Writing logs, exports, generated content.
- Inspecting file metadata (size, modification time, type).
- Creating and removing directories.

## API surface (selected)

In `namespace sys`.

File I/O:

- `sys.file_open(path, mode)` — open with mode flags (`"r"`, `"w"`, `"a"`, `"r+"`).
- `sys.file_create(path)` — create or truncate.
- `sys.file_write(f, text)` — write text, return bytes written.
- `sys.file_read_all(f)` — read all remaining content as `str`.
- `sys.file_close(f)`, `sys.file_path(f)`.
- `sys.file_sync_all(f)`, `sys.file_sync_data(f)` — flush to disk.
- `sys.file_set_len(f, size)` — truncate or extend to size.

Metadata:

- `sys.file_metadata(f)` — capture metadata.
- `sys.meta_size(m)`, `sys.meta_modified(m)`, `sys.meta_accessed(m)`, `sys.meta_created(m)`.
- `sys.meta_is_dir(m)`, `sys.meta_is_file(m)`.
- `sys.perm_readonly(m)`.

Directory operations:

- `sys.fs_create_dir(path)`, `sys.fs_create_dir_all(path)`.
- `sys.fs_remove_file(path)`, plus rename, remove-dir, exists (further in source).

## Examples

### Read a file

```apollo
extern std fs;

int main() {
    nconst file f = sys.file_open("hello.txt", "r");
    nconst str content = sys.file_read_all(f);
    sys.println(content);
    sys.file_close(f);
    return 0;
}
```

### Write a file

```apollo
extern std fs;

int main() {
    nconst file f = sys.file_create("output.log");
    sys.file_write(f, "started\n");
    sys.file_write(f, "doing work\n");
    sys.file_sync_all(f);
    sys.file_close(f);
    return 0;
}
```

### Inspect metadata

```apollo
extern std fs;

int main() {
    nconst file f = sys.file_open("output.log", "r");
    nconst metadata m = sys.file_metadata(f);
    sys.printf("size: %d\n", sys.meta_size(m));
    sys.println("modified: ${sys.meta_modified(m)}");
    sys.file_close(f);
    return 0;
}
```

### Create a directory tree

```apollo
extern std fs;

int main() {
    sys.fs_create_dir_all("build/cache/intermediate");
    sys.println("directory tree ready");
    return 0;
}
```

`create_dir_all` creates intermediate components; `create_dir` only creates the leaf.

### Truncate to length

```apollo
extern std fs;

int main() {
    nconst file f = sys.file_open("log.txt", "r+");
    sys.file_set_len(f, 0);          // truncate
    sys.file_write(f, "fresh\n");
    sys.file_close(f);
    return 0;
}
```

### Remove a file

```apollo
extern std fs;

int main() {
    nconst i32 ok = sys.fs_remove_file("temp.txt");
    if (ok == 1) {
        sys.println("removed");
    } else {
        sys.println("could not remove");
    }
    return 0;
}
```

## Common mistakes

- **Forgetting to close.** Even if the runtime closes on handle destruction, explicit `file_close` is clearer and frees resources sooner.
- **Reading a write-only file or vice versa.** Match the mode to the intended operation.
- **Path separators.** Use `sys.path_join` from `std portability` for cross-platform path construction.
- **Assuming `file_read_all` is fast for huge files.** It reads the whole file into memory; for large files, stream.
- **Confusing `fs_create_dir` and `fs_create_dir_all`.** The first fails if intermediates are missing; the second creates them.

## See also

- `docs/stdlib/system/docs/portability.md` — path helpers and environment.
- `docs/stdlib/data/docs/buffer.md` — accumulate before writing.
- `docs/stdlib/io/docs/io.md` — console I/O.
- `Apollo-Main/include/fs.apollo` — source.
