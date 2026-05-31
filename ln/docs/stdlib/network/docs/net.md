# `std net`

## What it is

The `net` module currently exposes URL parsing and composition: `sys.url_parse(text)` builds a `url` handle from which you can read components (scheme, username, password, host, port, path, query, fragment), and `sys.url_join(base, relative)` resolves a relative URL against a base.

The module is the entry point for network-related stdlib work. Higher-level HTTP/socket APIs build on this surface in extension modules.

## When you use it

- Validating URLs in user input.
- Extracting components for routing.
- Building absolute URLs from a base plus relative paths.

## API surface

All in `namespace sys`:

- `sys.url_parse(value)` → `url` handle.
- Component accessors (all return `str`):
  - `sys.url_scheme(u)`, `sys.url_username(u)`, `sys.url_password(u)`, `sys.url_host(u)`, `sys.url_port(u)`, `sys.url_path(u)`, `sys.url_query(u)`, `sys.url_fragment(u)`.
- `sys.url_join(base, relative)` → `str` (resolved absolute URL).

## Examples

### Parse and inspect

```apollo
extern std net;

int main() {
    nconst url u = sys.url_parse("https://alice:secret@example.com:8443/api/users?id=7#section");
    sys.println("scheme:   ${sys.url_scheme(u)}");
    sys.println("username: ${sys.url_username(u)}");
    sys.println("host:     ${sys.url_host(u)}");
    sys.println("port:     ${sys.url_port(u)}");
    sys.println("path:     ${sys.url_path(u)}");
    sys.println("query:    ${sys.url_query(u)}");
    sys.println("fragment: ${sys.url_fragment(u)}");
    return 0;
}
```

### Build a URL by joining

```apollo
extern std net;

int main() {
    sys.println(sys.url_join("https://example.com/api/", "users"));
    // -> https://example.com/api/users
    sys.println(sys.url_join("https://example.com/api/users", "../tags"));
    // -> https://example.com/api/tags
    return 0;
}
```

`url_join` resolves the relative path against the base, just like a browser.

### Detect HTTPS

```apollo
extern std net;

int main() {
    nconst url u = sys.url_parse("https://example.com");
    if (sys.url_scheme(u) == "https") {
        sys.println("secure");
    } else {
        sys.println("plain");
    }
    return 0;
}
```

### Routing by host

```apollo
extern std net;

void route(nconst str& raw) {
    nconst url u = sys.url_parse(raw);
    nconst str host = sys.url_host(u);
    if (host == "api.example.com") {
        sys.println("API request");
    } else if (host == "web.example.com") {
        sys.println("Web request");
    } else {
        sys.println("unknown host: ${host}");
    }
}

int main() {
    route("https://api.example.com/v1/things");
    route("https://web.example.com/about");
    return 0;
}
```

### Combining with URL encoding

```apollo
extern std net;
extern std encoding;

str search_url(nconst str& query) {
    nconst str base = "https://example.com/search";
    return "${base}?q=${sys.url_encode(query)}";
}

int main() {
    sys.println(search_url("hello world"));
    return 0;
}
```

`std net` parses; `std encoding` percent-encodes the value before splicing.

### Validating a URL

```apollo
extern std net;

i32 looks_valid(nconst str& raw) {
    nconst url u = sys.url_parse(raw);
    nconst str scheme = sys.url_scheme(u);
    nconst str host = sys.url_host(u);
    if (sys.str_len(scheme) == 0) { return 0; }
    if (sys.str_len(host) == 0)   { return 0; }
    return 1;
}

int main() {
    sys.println(looks_valid("https://example.com/"));     // 1
    sys.println(looks_valid("not a url"));                // 0
    return 0;
}
```

## Common mistakes

- **Assuming `url_port` returns `i32`.** It returns a `str`; convert if you need an integer.
- **Embedding userinfo in URLs in logs.** `url_password` may be sensitive; sanitize before logging.
- **Calling `url_join` with a base that doesn't end in `/` and expecting directory behavior.** RFC 3986 resolution drops the last path segment if the base doesn't end with `/`.
- **Comparing raw URL strings.** Equivalent URLs may differ in trailing slashes, case, encoding. Parse before comparing.
- **Treating this module as an HTTP client.** It parses and composes URLs; making requests requires additional surface.

## See also

- `docs/stdlib/text/docs/encoding.md` — `url_encode` / `url_decode`.
- `docs/stdlib/data/docs/json.md` — JSON I/O for HTTP payloads.
- `docs/stdlib/text/docs/strings.md` — string manipulation around URLs.
- `Apollo-Main/include/net.apollo` — source.
