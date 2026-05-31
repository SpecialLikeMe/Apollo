This changelog has been started somewhat after the language passed it's most infant stages (the language works), yet at this time there is still much to do and many new ideas I will try.

ARCHITECTURE::LLVM IR CONVERION
  At this point I am beginning the implementation to move away from a transpiler and just use the LLVM C++ API (compile times have gotten slow, and IR is more professional and will likely be easier to work with in the future)  
  I will have port some Java code to C++. This should not be too hard because ANTLR has a C++ target, and all the logic has already been done in the Java version. This is being done both for speed, but also do integrate with the LLVM C++ API.

ARCHITECTURE::IR CONVERSION FINISHED
  The changes took longer then expected, the execution of such went as planned. As far as I currently know, the transpiling version and LLVM IR version are functionally identical, but there is a version snapshot just in case. Overall, the conversion was tedious but easy in nature as all high level and OOP concept can be expressed as lower level ones with not too much difficulty (eg. a class method becomes a normal function with a pointer to the struct instance).

FEATURES::FFI LAYER ADDED
  I implemented a simple but effective linker type piece of software to link together LLVM output from my compiler and that of others to improve inline FFI.

FEATURES::MISC
  I have implemented a few random features, none as gravatational as the ones above. The only fairly major one was lambda closures, after I used it in another random project, and realised that recursing closure inits can produce functions which work very well for each context and scenario, saving you from passing 400 params. The new syntax for it is very abnormal, taking inspiration from ocaml, as that is my favourite functional language (I was almost tempted to do some Haskell type things but then I remembered currying every single function decl, and decided Int->Int->Int has no place in Apollo).
  An example of a lambda closure:
  auto x = clr-> [&]() in let main::() =
    return 12;
  This differs from the normal braced syntax, but I felt it was a trait of most functional languages, so I decided to have it like this.
ARCHITECTURE::IR
  I added some extra HIR and MIR stages for borrow checking.
