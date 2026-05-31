# Interface declaration

## What it is

An interface is a named contract describing a set of method signatures. A class satisfies an interface when it provides matching public methods. Code that takes an `Interface&` parameter can accept any class instance that satisfies the contract, with calls dispatched through a vtable at runtime.

Interfaces are Apollo's mechanism for polymorphism without inheritance. They let you write code that depends on capabilities rather than concrete types.

## When you use it

You declare an interface when:

- Multiple unrelated classes provide the same conceptual operation and you want code to use any of them interchangeably.
- You want to swap implementations at runtime (test doubles, plugins, configuration-driven backends).
- You want to enforce a method-shape contract across a hierarchy of cooperating types.

You do not need an interface when there is only one implementation. Just call the class's methods directly.

## Syntax

```
'interface' ID genericParams? '{'
    (returnType ID '(' params? ')' ';')*
'}' ';'?
```

An interface body is a sequence of method signatures terminated by semicolons. There are no method bodies, no fields, and no access modifiers — every interface method is implicitly public.

## Semantics

An interface declares a type. Values of that type are references — you cannot construct an interface value directly, only borrow an instance of a class that satisfies it.

A class satisfies an interface when, for every method signature in the interface, the class has a public method with the same name and signature. The matching method should be marked `virtual` so dispatch can go through the vtable; non-virtual methods can still satisfy an interface for compile-time-known cases but cannot be reached through an interface borrow.

When you call a method on an interface reference, the call dispatches through the vtable: the interface reference carries both the underlying instance pointer and the vtable for the concrete class, and the call uses the vtable slot for that method name.

## Examples

### A single-method interface

```apollo
interface Greeter {
    void greet(str name);
};

class English {
    public:
    virtual void greet(str name) {
        sys.printf("Hello, %s!\n", name);
    }
};

class Japanese {
    public:
    virtual void greet(str name) {
        sys.printf("Konnichiwa, %s!\n", name);
    }
};

void run(nconst Greeter& g) {
    g.greet("Apollo");
}

int main() {
    nconst English e = English();
    nconst Japanese j = Japanese();
    run(&nconst e);
    run(&nconst j);
    return 0;
}
```

Both classes satisfy `Greeter`. The `run` function accepts either through the same parameter type.

### Multi-method interface

```apollo
interface Storage {
    void put(str key, str value);
    str  get(str key);
    bool contains(str key);
};

class MemoryStore {
    private:
    nconst map<str, str> data;

    public:
    virtual void put(str key, str value) {
        collections.map.insert(self.data, key, value);
    }

    virtual str get(str key) {
        return collections.map.get(self.data, key);
    }

    virtual bool contains(str key) {
        return collections.map.has(self.data, key);
    }
};

extern std collections;

int main() {
    nconst MemoryStore m = MemoryStore();
    m.put("name", "Ada");
    nconst Storage& s = &nconst m;
    if (s.contains("name")) {
        sys.println(s.get("name"));
    }
    return 0;
}
```

A class satisfying a multi-method interface must provide all the methods. Missing one is a compile-time error at the point the class is used through the interface.

### Interface as a function parameter

```apollo
interface Logger {
    void log(str message);
};

class ConsoleLogger {
    public:
    virtual void log(str message) {
        sys.println(message);
    }
};

void process(nconst Logger& log, nconst vector<str>& items) {
    for (nconst str item : items) {
        log.log(item);
    }
}

extern std collections;

int main() {
    nconst ConsoleLogger cl = ConsoleLogger();
    nconst vector<str> data = <"alpha", "beta", "gamma">;
    process(&nconst cl, &nconst data);
    return 0;
}
```

`process` knows nothing about `ConsoleLogger` — it only requires a `Logger`. Another implementation (a file logger, a network logger, a test sink) could be supplied without changing `process`.

### Storing interface references

```apollo
interface Tickable {
    void tick();
};

class Engine {
    public:
    virtual void tick() { sys.println("engine tick"); }
};

class Brake {
    public:
    virtual void tick() { sys.println("brake tick"); }
};

extern std collections;

int main() {
    nconst Engine e = Engine();
    nconst Brake  b = Brake();
    nconst vector<Tickable&> subsystems = <&nconst e, &nconst b>;
    for (nconst Tickable& s : &nconst subsystems) {
        s.tick();
    }
    return 0;
}
```

A vector of interface references can hold values from any class that satisfies the interface. Iteration dispatches each call through the underlying vtable.

### Generic interface

```apollo
interface Comparator<T> {
    bool less(T a, T b);
};

class IntAsc {
    public:
    virtual bool less(int a, int b) {
        return a < b;
    }
};

extern std collections;

void sort(nconst vector<int>& items, nconst Comparator<int>& cmp) {
    collections.vector.sort_by(items, closure [&nconst cmp] (int a, int b) -> bool {
        return cmp.less(a, b);
    });
}

int main() {
    nconst IntAsc cmp = IntAsc();
    nconst vector<int> data = <3, 1, 4, 1, 5>;
    sort(&nconst data, &nconst cmp);
    for (nconst int v : data) {
        sys.println(v);
    }
    return 0;
}
```

Generic interfaces let the contract depend on a type parameter. The class then provides the implementation for that specific parameter.

## Common mistakes

- **Forgetting `virtual` on the implementing method.** Without `virtual`, the method cannot be reached through the interface reference.
- **Mismatched signature.** Parameter types, parameter order, and return type must match exactly. There is no covariance.
- **Trying to construct an interface directly.** Interfaces have no constructor. Always work through a reference to an implementing class.
- **Forgetting `public` on the implementing methods.** Interface satisfaction requires public methods; private methods do not count.
- **Adding fields to an interface.** Interfaces declare only method signatures. State belongs in the implementing class.

## See also

- `docs/language/declarations/docs/class.md` — how classes are structured.
- `docs/language/declarations/docs/method.md` — `virtual` modifier and dispatch.
- `docs/language/declarations/docs/template.md` — generic parameters on interfaces and classes.
- `docs/language/memory-and-storage/docs/borrow-expression.md` — borrow rules for interface references.
