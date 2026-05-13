# CMake generated file
# The compiler generated pdb file needs to be written to disk
# by mspdbsrv. The foreach retry loop is needed to make sure
# the pdb file is ready to be copied.

foreach(retry RANGE 1 30)
  if (EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/CodeGen/LLVMCodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb" AND (NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Target/X86/LLVMX86CodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb" OR NOT "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Target/X86/LLVMX86CodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb" IS_NEWER_THAN "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/CodeGen/LLVMCodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb"))
    file(MAKE_DIRECTORY "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Target/X86/LLVMX86CodeGen.dir/RelWithDebInfo")
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/CodeGen/LLVMCodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb" "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Target/X86/LLVMX86CodeGen.dir/RelWithDebInfo" RESULT_VARIABLE result  ERROR_QUIET)
    if (NOT result EQUAL 0)
      execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
    else()
      break()
    endif()
  elseif(NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/CodeGen/LLVMCodeGen.dir/RelWithDebInfo/LLVMCodeGen.pdb")
    execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
  endif()
endforeach()
