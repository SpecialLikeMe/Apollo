# `std io`

## What it is

The `io` module is Apollo's user-facing input/output surface. It bundles two layers:

- **High-level `sys.*` print helpers** — `puts`, `echo_str`, `echo_i32`, `echo_pair`, `banner`, `divider`, `debug_bool`, `blank` — convenience routines that produce one line of output with a consistent format.
- **Terminal control** — `term_print_raw`, `term_println_raw`, `term_read_line`, `term_is_tty`, `term_columns`, `term_rows`, `term_clear`, `term_set_cursor`, `term_show_cursor`/`term_hide_cursor`, `term_set_color_fg`/`_bg` — direct terminal manipulation backed by native helpers.

The module imports `std core` and `std strings` for its formatting helpers.

## When you use it

- Quick logging and debug output.
- Building command-line tools that want consistent output framing.
- Interactive prompts that need to read a line from stdin.
- TTY-aware programs (color, cursor positioning, clear screen).

For structured logging, build a wrapper on top of the high-level helpers. For binary I/O, use `std fs`.

## API surface (selected)

High-level print:

- `sys.puts(text)` — print a line. Alias for `sys.println`.
- `sys.echo_str(text)`, `sys.echo_i32(n)` — typed convenience wrappers.
- `sys.echo_pair(label, value)` — formatted `"label: value"`.
- `sys.banner(label)` — `[label]`-style banner.
- `sys.divider(label)` — `==== label ====` divider.
- `sys.debug_bool(label, value)` — `label: 0` / `label: 1` debug line.
- `sys.blank()` — blank line.

Terminal control:

- `sys.term_print_raw(text)`, `sys.term_println_raw(text)` — write without higher-level formatting.
- `sys.term_read_line()` — read a single line from stdin.
- `sys.term_is_tty()` — 1 if stdout is a terminal, else 0.
- `sys.term_columns()`, `sys.term_rows()` — terminal dimensions.
- `sys.term_clear()` — clear the screen.
- `sys.term_set_cursor(col, row)` — position the cursor.
- `sys.term_show_cursor()`, `sys.term_hide_cursor()`.
- `sys.term_set_color_fg(color)`, `sys.term_set_color_bg(color)` — color setters.

## Examples

### Hello world

```apollo
extern std io;

int main() {
    sys.puts("hello, world");
    return 0;
}
```

### Echo helpers

```apollo
extern std io;

int main() {
    sys.echo_str("starting");
    sys.echo_i32(42);
    sys.echo_pair("score", 87);
    return 0;
}
```

`echo_pair` produces output like `"score: 87"`.

### Banners and dividers

```apollo
extern std io;

int main() {
    sys.divider("setup");
    sys.echo_str("loaded config");
    sys.divider("run");
    sys.banner("phase one");
    sys.echo_str("...");
    return 0;
}
```

Useful framing for CLI tools' output.

### Reading a line

```apollo
extern std io;

int main() {
    sys.term_print_raw("name? ");
    nconst str name = sys.term_read_line();
    sys.puts("hello, ${name}");
    return 0;
}
```

Prompt without a trailing newline, then read one line of input.

### TTY-aware coloring

```apollo
extern std io;

const i32 COLOR_RED   = 1;
const i32 COLOR_RESET = 9;

void warn(nconst str& text) {
    if (sys.term_is_tty() == 1) {
        sys.term_set_color_fg(COLOR_RED);
        sys.term_println_raw(text);
        sys.term_set_color_fg(COLOR_RESET);
    } else {
        sys.puts(text);
    }
}

int main() {
    warn("this is a warning");
    return 0;
}
```

When connected to a terminal, render in color; when piped to a file, plain text.

### Simple progress display

```apollo
extern std io;

int main() {
    sys.term_hide_cursor();
    for (nconst i := 0; i < 5; i = i + 1) {
        sys.term_set_cursor(0, 0);
        sys.term_print_raw("progress: ${i}/5");
    }
    sys.term_show_cursor();
    sys.blank();
    return 0;
}
```

Cursor positioning replaces the previous line in place.

## Common mistakes

- **Calling `term_*` from a non-TTY context.** Color and cursor calls become escape codes; check `sys.term_is_tty()` first if the output may be piped.
- **Reading a line that doesn't exist.** `sys.term_read_line()` blocks waiting for input; from a non-interactive stdin you may get EOF or empty.
- **Mixing buffered and unbuffered output.** Native helpers and the language-level `sys.println` may flush at different points; rely on `sys.println` for line-oriented output.
- **Forgetting `extern std io`.** Most of the helpers exist only after the import.
- **Calling `term_clear` in a logging context.** It erases prior output that a user reading logs probably wanted.

## See also

- `docs/stdlib/system/docs/fs.md` — file I/O.
- `docs/stdlib/text/docs/strings.md` — string formatting helpers (`label_i32`, `brackets`).
- `docs/stdlib/foundations/docs/core.md` — boolify and other helpers used here.
- `Apollo-Main/include/io.apollo` — source.
