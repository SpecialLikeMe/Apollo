# CMake generated file
# The compiler generated pdb file needs to be written to disk
# by mspdbsrv. The foreach retry loop is needed to make sure
# the pdb file is ready to be copied.

foreach(retry RANGE 1 30)
  if (EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Support/LLVMSupport.dir/Debug/LLVMSupport.pdb" AND (NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/MC/MCParser/LLVMMCParser.dir/Debug/LLVMSupport.pdb" OR NOT "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/MC/MCParser/LLVMMCParser.dir/Debug/LLVMSupport.pdb" IS_NEWER_THAN "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Support/LLVMSupport.dir/Debug/LLVMSupport.pdb"))
    file(MAKE_DIRECTORY "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/MC/MCParser/LLVMMCParser.dir/Debug")
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Support/LLVMSupport.dir/Debug/LLVMSupport.pdb" "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/MC/MCParser/LLVMMCParser.dir/Debug" RESULT_VARIABLE result  ERROR_QUIET)
    if (NOT result EQUAL 0)
      execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
    else()
      break()
    endif()
  elseif(NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Support/LLVMSupport.dir/Debug/LLVMSupport.pdb")
    execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
  endif()
endforeach()
