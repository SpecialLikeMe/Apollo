# Block statement

## What it is

A block is a brace-delimited sequence of statements with its own scope. Blocks are the building units of every Apollo body — function bodies, method bodies, branch bodies, loop bodies, and standalone scoping blocks all use the same `{ ... }` grammar.

A bare block as a statement is allowed and introduces a scope without any surrounding control flow. This is useful for limiting the lifetime of bindings, controlling borrow scopes, or simply organizing code.

## When you use it

You always use blocks — every function and control-flow body is a block. As a *standalone* statement, you reach for a block when:

- You want a short lifetime for a binding without creating a function.
- You want to release a borrow earlier than the surrounding function's scope would.
- You want to group statements visually for readability.

## Syntax

```
block : '{' statement* '}' ;
```

A block holds zero or more statements. An empty block `{ }` is valid.

## Semantics

A block introduces a fresh scope. Bindings declared inside the block are gone when the block ends. Borrows acquired inside the block and not stored into an outer binding are released at the block's exit.

Blocks do not produce values. The closing `}` is a sequence point — control simply continues with the statement after the block.

## Examples

### Standalone block to limit a lifetime

```apollo
int main() {
    nconst int outer = 100;
    {
        nconst int inner = 200;
        sys.println(inner);
    }
    // inner is gone here
    sys.println(outer);
    return 0;
}
```

`inner` is visible only inside the block. After `}`, it is out of scope.

### Releasing a borrow early

```apollo
int main() {
    nconst int counter = 0;
    {
        nconst int& writer = &nconst counter;
        *writer = *writer + 1;
    }
    sys.println(counter);  // ok, writer is gone
    return 0;
}
```

The borrow `writer` is released at the block's exit, allowing `counter` to be read directly afterward.

### Empty block as a placeholder

```apollo
int main() {
    nconst int code = 0;
    switch (code) {
        case 0: { sys.println("zero"); }
        default: { }      // intentional no-op
    }
    return 0;
}
```

An empty block is sometimes the right answer for a case that intentionally does nothing.

### Block inside another block

```apollo
int main() {
    nconst int x = 10;
    {
        nconst int x = 20;     // shadows outer x for this block
        sys.println(x);        // 20
    }
    sys.println(x);            // 10
    return 0;
}
```

Inner blocks may shadow outer names. The outer binding is restored when the inner block exits.

### Block as function or branch body

```apollo
int classify(int n) {
    if (n > 0) {
        return 1;
    } else if (n < 0) {
        return -1;
    } else {
        return 0;
    }
}

int main() {
    sys.println(classify(7));
    sys.println(classify(-3));
    return 0;
}
```

Each branch body is a block. Each function body is a block. The same grammar applies.

## Common mistakes

- **Expecting a block to produce a value.** It does not. Use a function or a conditional expression for value-producing constructs.
- **Forgetting that bindings disappear at block exit.** Move bindings to the enclosing scope if they must survive.
- **Confusing empty `{}` with a missing block.** An empty block is a valid statement; omitting the braces entirely after `if`/`while`/`for`/`switch` is a parse error.

## See also

- `docs/language/control-flow/docs/if-statement.md`, `docs/language/control-flow/docs/while.md`, etc. — constructs whose bodies are blocks.
- `docs/language/memory-and-storage/docs/initialization.md` — bindings whose scope is a block.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrows scoped to a block.
