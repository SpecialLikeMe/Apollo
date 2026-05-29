# `std time`

## What it is

The `time` module gives you the current UTC and local date/time as strings, individual local-time components (year, month, day, hour, minute, second), and a monotonic millisecond counter for measuring elapsed time.

It is deliberately small. It does not provide a fully-featured datetime arithmetic layer — for those needs, parse the strings or wrap a richer datetime library via inline foreign code.

## When you use it

- Stamping log entries with the current time.
- Measuring how long an operation took.
- Inspecting individual time components for display or scheduling.

## API surface

All in `namespace sys`:

- `sys.datetime_now_utc()` → `str` (ISO-8601-style UTC timestamp).
- `sys.datetime_now_local()` → `str` (local timestamp).
- `sys.datetime_year_local()`, `_month_local()`, `_day_local()`, `_hour_local()`, `_minute_local()`, `_second_local()` → `i32` components.
- `sys.monotonic_millis()` → `i32` (a steadily-increasing tick count for elapsed timing).

## Examples

### Print current time

```apollo
extern std time;

int main() {
    sys.println("utc:   ${sys.datetime_now_utc()}");
    sys.println("local: ${sys.datetime_now_local()}");
    return 0;
}
```

### Time a block

```apollo
extern std time;
extern std portability;

int main() {
    nconst i32 start = sys.monotonic_millis();
    sys.sleep_ms(150);
    nconst i32 elapsed = sys.monotonic_millis() - start;
    sys.printf("elapsed: %d ms\n", elapsed);
    return 0;
}
```

The monotonic counter is the right choice for elapsed time; it doesn't jump if the system clock is adjusted.

### Component-based stamp

```apollo
extern std time;

int main() {
    sys.printf("%04d-%02d-%02d %02d:%02d:%02d\n",
        sys.datetime_year_local(),
        sys.datetime_month_local(),
        sys.datetime_day_local(),
        sys.datetime_hour_local(),
        sys.datetime_minute_local(),
        sys.datetime_second_local());
    return 0;
}
```

When you want a custom format, build it from components.

### Log with timestamp

```apollo
extern std time;

void log(nconst str& msg) {
    sys.println("[${sys.datetime_now_local()}] ${msg}");
}

int main() {
    log("starting");
    log("processing");
    log("done");
    return 0;
}
```

### Rate limiting

```apollo
extern std time;
extern std portability;

int main() {
    nconst i32 last = sys.monotonic_millis();
    for (nconst i := 0; i < 5; i = i + 1) {
        nconst i32 now = sys.monotonic_millis();
        if (now - last < 200) {
            sys.sleep_ms(200 - (now - last));
        }
        last = sys.monotonic_millis();
        sys.printf("tick %d at %d\n", i, last);
    }
    return 0;
}
```

### Detect midnight crossing

```apollo
extern std time;
extern std portability;

int main() {
    nconst i32 start_day = sys.datetime_day_local();
    sys.sleep_ms(100);
    if (sys.datetime_day_local() != start_day) {
        sys.println("midnight crossed");
    } else {
        sys.println("same day");
    }
    return 0;
}
```

A tiny illustrative check using component access.

## Common mistakes

- **Using wall-clock time for elapsed measurement.** Wall-clock jumps; use `monotonic_millis` for elapsed times.
- **Treating local time as universal.** Daylight saving, time zones, and locale all affect local time. Use UTC for serialization.
- **Assuming `monotonic_millis` starts at 0.** The base is unspecified; only differences are meaningful.
- **Parsing timestamps with ad-hoc string code.** Date parsing is hard; for non-trivial parsing wrap a library.
- **Calling component functions repeatedly when one timestamp suffices.** Each call queries the clock; cache if you want a consistent snapshot.

## See also

- `docs/stdlib/system/docs/portability.md` — `sleep_ms`, pid, etc.
- `docs/stdlib/foundations/docs/math.md` — formatting helpers.
- `docs/stdlib/text/docs/strings.md` — building formatted timestamps.
- `Apollo-Main/include/time.apollo` — source.
