This changelog has been started somewhat after the language passed it's most infant stages (the language works),
yet at this time there is still much to do and many new ideas I will try.

::LLVM IR CONVERION::
  At this point I am beginning the implementation to move away from a transpiler and just use the LLVM C++ API (compile times have gotten slow, and IR is more professional and will likely be easier to work with in the future)  
  I will have port some Java code to C++. This should not be too hard because ANTLR has a C++ target, and all the logic has already been done in the Java version. This is being done both for speed, but also do integrate with the LLVM C++ API.
::IR CONVERSION FINISHED::
  The changes took longer then expected, the execution of such went as planned. As far as I currently know, the transpiling version and LLVM IR version are functionally identical, but there is a version snapshot just in case. Overall, the conversion was tedious but easy in nature as all high level and OOP concept can be expressed as lower level ones with not too much difficulty (eg. a class method becomes a normal function with a pointer to the struct instance).
