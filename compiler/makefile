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
	if not exist output mkdir output
	if not exist output\classes mkdir output\classes
	javac -d output\classes -cp ".;output\classes;antlr-4.13.2-complete.jar" CppCodeGenVisitor.java Main.java runtime.java
	java -cp "output\classes;antlr-4.13.2-complete.jar" Main

compile:
	if not exist output mkdir output
	if not exist output\classes mkdir output\classes
	cd compiler-master && javac -d ..\output\classes -cp ".;..\antlr-4.13.2-complete.jar" *.java

cmprun: compile
	javac -d output\classes -cp ".;output\classes;antlr-4.13.2-complete.jar" CppCodeGenVisitor.java Main.java runtime.java
	java -cp "output\classes;antlr-4.13.2-complete.jar" Main

regen:
	@echo "Regenerating parser/visitor from compilerv1.g4 into compiler-master"
	java -jar antlr-4.13.2-complete.jar -visitor -Dlanguage=Java -o compiler-master compilerv1.g4
runopt:
	if not exist output mkdir output
	g++ output.cpp -o output\output.exe && output\output.exe

clean:
	if exist -p rmdir /s /q -p
	if exist async rmdir /s /q async
	if exist output rmdir /s /q output
	if exist apo_async.cpp del /q apo_async.cpp
	if exist apo_async.c del /q apo_async.c
	if exist apo_async.rs del /q apo_async.rs
	if exist apo_async.exe del /q apo_async.exe
	if exist ApoAsyncTask.java del /q ApoAsyncTask.java
	if exist ApoAsyncTask.class del /q ApoAsyncTask.class
	if exist output.exe del /q output.exe
	if exist output_test.o del /q output_test.o
	if exist CppCodeGenVisitor.class del /q CppCodeGenVisitor.class
	if exist Main.class del /q Main.class
	if exist Main$$1.class del /q Main$$1.class
	if exist compiler-master\*.class del /q compiler-master\*.class
