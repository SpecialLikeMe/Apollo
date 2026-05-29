# Proc macros:

Attribute macros:

declared through a function labled with attr, which must return a vector<token>, and takes input as a vector<token> named __tokenstream. The token data type struct should have a val and identifier (named VALUE and TYPE, there should be documentation on the nameds of the types when the docs are added for proc macros) (the vector<token> isnt for the whole program just the thing being attributed, eg. if you use the attribute on a struct, you only get the structs tokens). There should also be a quote {} to turn an expr into ast. To apply the attribute is #idio MYATTRIBUTE, and the compiler should replace the original tokenstream with the return.

eg.

attr vector<token> addprint(vector<token> __tokenstream, nrc what) {
    nconst vector<token> returnval = __tokenstream;
    returnval.insert(0, quote {
        sys.println(what);
    });
    return returnval;
}

#idio addprint("Hello world")
struct mystruct {

}

Derive macros:

declared through a function labled with derive, which must return a vector<token>. To apply the derive is #derive MYATTRIBUTE. Derive macros append code with no write access to the thing it is appending code to, but may view it through the same __tokenstream as attribute macros (a vector<token>). The compiler should append the result of the function to the code it is deriving. It should also be able to use the same quote {} as attribute macros.

eg. 
derive vector<token> addprint(vector<token> __tokenstream, nrc what) {
    return quote {
        sys.println(what)
    };
}

#idio addprint("Hello world")
struct mystruct {

}