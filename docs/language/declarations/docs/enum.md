# Enum declaration

## What it is

An enum declares one named tagged type with a fixed set of variants. Apollo enums support three variant shapes:

- Unit variants with no payload.
- Tuple variants with one anonymous payload value.
- Struct-like variants with named fields and methods.

Every constructed enum value carries a tag plus the payload for its active variant.

## Syntax

```apollo
enum Result {
    ok,
    error(str),
    retry {
        str message;
        bool ready() {
            return true;
        }
    }
}
```

Construction uses the enum name plus `::variant`:

- `Result::ok`
- `Result::error("bad")`
- `Result::retry { .message = "later" }`

Payload extraction uses `unwrap_enum(...)` when the expected target type identifies the payload:

- `str message = unwrap_enum(err);`
- `Result::retry payload = unwrap_enum(value);`

## Semantics

Apollo lowers an enum as one tagged aggregate. The active variant tag selects which payload field is valid. Unit variants store only the tag. Tuple variants store one anonymous payload value. Struct-like variants synthesize a named payload type, so methods on the payload remain callable after `unwrap_enum`.

`unwrap_enum(...)` is type-directed. The compiler uses the destination type to choose the variant payload to extract. If an enum has only one payload-carrying variant, the call can also be inferred from the source enum alone.

## Examples

### Unit variant

```apollo
enum Status {
    ready,
    busy(str)
}

int main() {
    Status value = Status::ready;
    return 0;
}
```

### Tuple payload

```apollo
enum Status {
    ready,
    busy(str)
}

int main() {
    Status value = Status::busy("loading");
    str message = unwrap_enum(value);
    sys.println(message);
    return 0;
}
```

### Struct-like payload with methods

```apollo
enum Job {
    idle,
    retry {
        str reason;
        bool can_retry() {
            return true;
        }
    }
}

int main() {
    Job value = Job::retry { .reason = "network" };
    Job::retry payload = unwrap_enum(value);
    if (payload.can_retry()) {
        return 0;
    }
    return 1;
}
```

### Mixing variants

```apollo
enum Outcome {
    ok,
    fail(str),
    retry {
        str note;
    }
}

int main() {
    Outcome first = Outcome::ok;
    Outcome second = Outcome::fail("bad input");
    Outcome third = Outcome::retry { .note = "again" };
    return 0;
}
```

### Payload-specific unwrap target

```apollo
enum Reply {
    empty,
    text(str),
    meta {
        str name;
    }
}

int main() {
    Reply textReply = Reply::text("hi");
    Reply metaReply = Reply::meta { .name = "apollo" };

    str text = unwrap_enum(textReply);
    Reply::meta meta = unwrap_enum(metaReply);
    sys.println(text);
    sys.println(meta.name);
    return 0;
}
```

## Common mistakes

- Using `unwrap_enum(...)` without a destination type when the enum has multiple payload variants. The compiler needs the target type to disambiguate.
- Treating a struct-like variant payload as the enum itself. Methods live on the payload type produced by `EnumName::VariantName`.
- Expecting unit variants to unwrap. They do not carry payload data.

## See also

- `docs/language/declarations/docs/struct.md` for struct field and method syntax.
- `docs/language/types/docs/type-reference.md` for qualified type references like `EnumName::VariantName`.
