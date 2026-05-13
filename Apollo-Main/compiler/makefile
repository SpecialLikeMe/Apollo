.PHONY: run compile cmprun regen runopt analyze grammar-tests test clean

ctall:
	call exec.bat ctall main.apollo
analyze:
	call exec.bat -analyze main.apollo
grammar-tests:
	powershell -NoProfile -ExecutionPolicy Bypass -File run-grammar-tests.ps1
test:
	powershell -NoProfile -ExecutionPolicy Bypass -File run-test-suite.ps1
run:
	call exec.bat run main.apollo

compile:
	if not exist cpp\build\CMakeCache.txt cmake -S cpp -B cpp\build
	cmake --build cpp\build --config Debug --target apollo_frontend_native apollo_build_driver_native apollo_runtime_tests apollo_driver_tests

cmprun: compile
	call exec.bat run main.apollo

regen:
	@echo "Native parser sources are checked in under compiler/cpp/generated."
	@echo "Refresh them with the ANTLR C++ regeneration workflow when compilerv1.g4 changes."
runopt:
	call exec.bat ctall main.apollo

clean:
	if exist -p rmdir /s /q -p
	if exist async rmdir /s /q async
	if exist output rmdir /s /q output
	if exist apo_async.cpp del /q apo_async.cpp
	if exist apo_async.c del /q apo_async.c
	if exist apo_async.rs del /q apo_async.rs
	if exist apo_async.exe del /q apo_async.exe
	if exist output.exe del /q output.exe
	if exist output_test.o del /q output_test.o
	if exist output\classes rmdir /s /q output\classes
