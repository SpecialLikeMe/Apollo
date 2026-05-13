# CMake generated file
# The compiler generated pdb file needs to be written to disk
# by mspdbsrv. The foreach retry loop is needed to make sure
# the pdb file is ready to be copied.

foreach(retry RANGE 1 30)
  if (EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/IR/LLVMCore.dir/RelWithDebInfo/LLVMCore.pdb" AND (NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Analysis/LLVMAnalysis.dir/RelWithDebInfo/LLVMCore.pdb" OR NOT "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Analysis/LLVMAnalysis.dir/RelWithDebInfo/LLVMCore.pdb" IS_NEWER_THAN "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/IR/LLVMCore.dir/RelWithDebInfo/LLVMCore.pdb"))
    file(MAKE_DIRECTORY "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Analysis/LLVMAnalysis.dir/RelWithDebInfo")
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/IR/LLVMCore.dir/RelWithDebInfo/LLVMCore.pdb" "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/Analysis/LLVMAnalysis.dir/RelWithDebInfo" RESULT_VARIABLE result  ERROR_QUIET)
    if (NOT result EQUAL 0)
      execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
    else()
      break()
    endif()
  elseif(NOT EXISTS "C:/Users/devon/Apollo/compiler/native/build/apollo-llvm/lib/IR/LLVMCore.dir/RelWithDebInfo/LLVMCore.pdb")
    execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)
  endif()
endforeach()
