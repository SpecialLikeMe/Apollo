# Enum declaration — implementation

## Grammar surface

From `Apollo-Main/compiler/compilerv1.g4`:

```antlr
enumDecl     : 'enum' ID attributeBlock? LBRACE enumVariant (',' enumVariant)* ','? RBRACE ;
enumVariant  : enumVariantName
             | enumVariantName '(' typeRef ')'
             | enumVariantName structBody
             ;
enumVariantName : ID | SUCCESS ;
qualifiedType : ID INLINE_SEP enumVariantName ;
enumConstructor : qualifiedType ( '(' args? ')' | braceInitializer )? ;
```

## Parse tree shape

- `EnumDeclContext` owns the enum name and a list of `EnumVariantContext` children.
- A tuple variant exposes `typeRef()`.
- A struct-like variant exposes `structBody()`.
- Construction syntax lowers through `EnumConstructorContext` using `qualifiedType()` plus either `args()` or `braceInitializer()`.

## Lowering model

In `Apollo-Main/compiler/cpp/src/visitor.cpp`, enums are represented through the aggregate registry:

1. `buildAggregateRegistry(...)` records the enum as an aggregate with a `__tag` field.
2. Each payload-carrying variant gets a dedicated storage field in the enum aggregate.
3. Struct-like variants synthesize a separate aggregate record named `EnumName::VariantName` so payload fields and methods can lower like ordinary aggregates.
4. `lowerEnumConstructorValue(...)` writes the active tag and payload into the shared enum storage.
5. `lowerEnumUnwrapValue(...)` uses the expected destination type text to select the matching payload variant and extract it.

## Type resolution

`qualifiedType` allows source code to name a struct-like payload directly as `EnumName::VariantName`. That qualified payload type lowers through the same nominal aggregate path as other aggregate references.

`unwrap_enum(...)` relies on source-level type text rather than raw LLVM pointer identity because many nominal and aggregate payloads erase to pointer-like IR types. The implementation walks the enclosing declaration or assignment context to recover the destination type when needed.

## AST display

`Apollo-Main/compiler/cpp/src/apollo_driver.cpp` summarizes enums structurally:

- top-level `enum Name`
- `variant name`
- `payload Type`
- struct-like payload bodies with their fields and methods
- constructor expressions as `enum Name::Variant`

## Validation notes

A good regression sample exercises all three variant shapes plus both unwrap targets:

```apollo
enum MyEnum {
    success,
    failure(str),
    retry {
        str msg;
        bool ok() { return true; }
    }
}

int main() {
    MyEnum a = MyEnum::success;
    MyEnum b = MyEnum::failure("oops");
    MyEnum c = MyEnum::retry { .msg = "again" };
    str msg = unwrap_enum(b);
    MyEnum::retry payload = unwrap_enum(c);
    return payload.ok() ? 0 : 1;
}
```

## Source of truth

- Grammar: `Apollo-Main/compiler/compilerv1.g4`
- Lowering: `Apollo-Main/compiler/cpp/src/visitor.cpp`
- AST display: `Apollo-Main/compiler/cpp/src/apollo_driver.cpp`
