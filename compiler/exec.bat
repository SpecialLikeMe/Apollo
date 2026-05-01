@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: This script handles the 'apollo' command
set "ANALYZE_MODE=0"
set "BIN_MODE=0"
set "BIN_OUTPUT_MODE=host"
set "CLI_TARGET_TRIPLE="
set "PRESET_RAW_INPUT="
set "PRESET_RAW_OUTPUT="
set "FIRST_ARG_EXT="
for %%I in ("%~1") do set "FIRST_ARG_EXT=%%~xI"
if /I "%~1"=="-analyze" goto :parse_analyze
if /I "%~1"=="-bin" (
    set "BIN_MODE=1"
    shift
)
if /I "!FIRST_ARG_EXT!"==".apollo" if /I "%~2"=="-L" goto :parse_linux_bin
if /I "!FIRST_ARG_EXT!"==".apollo" if /I "%~2"=="-W" goto :parse_windows_bin
if /I "!FIRST_ARG_EXT!"==".apollo" if /I "%~2"=="-M" goto :parse_macos_bin
set "COMMAND=%~1"
shift
goto :parse_done

:parse_linux_bin
set "BIN_MODE=1"
set "BIN_OUTPUT_MODE=none"
set "CLI_TARGET_TRIPLE=x86_64-unknown-linux-gnu"
set "COMMAND=ctall"
set "PRESET_RAW_INPUT=%~1"
set "PRESET_RAW_OUTPUT=%~3"
goto :parse_done

:parse_windows_bin
set "BIN_MODE=1"
set "BIN_OUTPUT_MODE=windows"
set "CLI_TARGET_TRIPLE=x86_64-w64-windows-gnu"
set "COMMAND=ctall"
set "PRESET_RAW_INPUT=%~1"
set "PRESET_RAW_OUTPUT=%~3"
goto :parse_done

:parse_macos_bin
set "BIN_MODE=1"
set "BIN_OUTPUT_MODE=none"
set "CLI_TARGET_TRIPLE=x86_64-apple-darwin"
set "COMMAND=ctall"
set "PRESET_RAW_INPUT=%~1"
set "PRESET_RAW_OUTPUT=%~3"
goto :parse_done

:parse_analyze
set "ANALYZE_MODE=1"
shift
set "COMMAND=analyze"

:parse_done
set "SCRIPT_DIR=%~dp0"
if defined APOLLO_COMPILER_DIR set "SCRIPT_DIR=%APOLLO_COMPILER_DIR%"
if not "%SCRIPT_DIR:~-1%"=="\" set "SCRIPT_DIR=%SCRIPT_DIR%\"
set "SCRIPT_DIR_NO_SLASH=%SCRIPT_DIR%"
if "%SCRIPT_DIR_NO_SLASH:~-1%"=="\" set "SCRIPT_DIR_NO_SLASH=%SCRIPT_DIR_NO_SLASH:~0,-1%"
if not defined APOLLO_DIR for %%I in ("%SCRIPT_DIR%..") do set "APOLLO_DIR=%%~fI"
set "ANTLR_JAR=%SCRIPT_DIR%antlr-4.13.2-complete.jar"
set "CONFIG_EXE=%APOLLO_DIR%\apollo-config.exe"
if not exist "%CONFIG_EXE%" set "CONFIG_EXE=%APOLLO_DIR%\config.exe"
set "APOLLO_JIT_EXE=%APOLLO_DIR%\apollo_jit.exe"
set "CLEANUP_SCRIPT=%SCRIPT_DIR%cleanup-output.ps1"
set "MANIFEST_PATH=%SCRIPT_DIR%output\cleanup-manifest.txt"
set "ASAN_REPORT_SCRIPT=%SCRIPT_DIR%asan-report.ps1"
set "CALLER_DIR=%CD%"
set "RAW_INPUT=%~1"
set "RAW_OUTPUT=%~2"
set "TOOLCHAIN_ENV=%SCRIPT_DIR%toolchain-env.bat"
set "APOLLO_SHOW_FILE_DETAILS=0"
set "PGO_COMPILE_FLAGS="
set "PGO_LINK_FLAGS="
set "APOLLO_CXX_STD="
set "APOLLO_OPT_LEVEL="
set "APOLLO_LLC_OPT_LEVEL="
set "APOLLO_USE_PCH="
set "APOLLO_PCH_HEADER="
set "APOLLO_PCH_OUTPUT="
set "APOLLO_PCH_EXTRA_FLAGS="
set "APOLLO_TARGET_TRIPLE="
set "APOLLO_SYSROOT="
set "APOLLO_TARGET_FLAGS="
set "APOLLO_FRONTEND_EXTRA_FLAGS="
set "APOLLO_LLC_EXTRA_FLAGS="
set "APOLLO_LINK_EXTRA_FLAGS="
set "APOLLO_ANALYZE_EXTRA_FLAGS="
set "APOLLO_FRONTEND_FLAGS="
set "APOLLO_LLC_FLAGS="
set "APOLLO_ANALYZE_FLAGS="
set "APOLLO_PCH_GENERATE_FLAGS="
set "APOLLO_PCH_USE_FLAGS="
set "APOLLO_LINK_FLAGS="

if exist "%TOOLCHAIN_ENV%" call "%TOOLCHAIN_ENV%"

if not defined APOLLO_CXX_STD set "APOLLO_CXX_STD=c++20"
if not defined APOLLO_OPT_LEVEL set "APOLLO_OPT_LEVEL=3"
if not defined APOLLO_LLC_OPT_LEVEL set "APOLLO_LLC_OPT_LEVEL=%APOLLO_OPT_LEVEL%"
if not defined APOLLO_USE_PCH set "APOLLO_USE_PCH=1"
if not defined APOLLO_PCH_HEADER set "APOLLO_PCH_HEADER=%SCRIPT_DIR%runtime_support\apollo_pch.hpp"
if not defined APOLLO_PCH_OUTPUT set "APOLLO_PCH_OUTPUT=output\apollo.pch"
if defined CLI_TARGET_TRIPLE set "APOLLO_TARGET_TRIPLE=%CLI_TARGET_TRIPLE%"
if defined APOLLO_TARGET_TRIPLE set "APOLLO_TARGET_FLAGS=%APOLLO_TARGET_FLAGS% --target=%APOLLO_TARGET_TRIPLE%"
if defined APOLLO_SYSROOT set "APOLLO_TARGET_FLAGS=%APOLLO_TARGET_FLAGS% --sysroot=%APOLLO_SYSROOT%"
if /I "%APOLLO_USE_PCH%"=="1" set "APOLLO_PCH_USE_FLAGS=-Winvalid-pch -include-pch %APOLLO_PCH_OUTPUT%"
set "APOLLO_FRONTEND_FLAGS=%APOLLO_TARGET_FLAGS% -x c++ -std=%APOLLO_CXX_STD% -O%APOLLO_OPT_LEVEL% -S -emit-llvm %APOLLO_FRONTEND_EXTRA_FLAGS% %APOLLO_PCH_USE_FLAGS%"
set "APOLLO_LLC_FLAGS=-O%APOLLO_LLC_OPT_LEVEL% -filetype=obj %APOLLO_LLC_EXTRA_FLAGS%"
set "APOLLO_ANALYZE_FLAGS=%APOLLO_TARGET_FLAGS% -x c++ -std=%APOLLO_CXX_STD% -O0 -g -fno-omit-frame-pointer -fsanitize=address %APOLLO_ANALYZE_EXTRA_FLAGS% %APOLLO_PCH_USE_FLAGS%"
set "APOLLO_PCH_GENERATE_FLAGS=%APOLLO_TARGET_FLAGS% -x c++-header -std=%APOLLO_CXX_STD% %APOLLO_PCH_EXTRA_FLAGS%"
set "APOLLO_LINK_FLAGS=%APOLLO_TARGET_FLAGS% %APOLLO_LINK_EXTRA_FLAGS%"

if defined APOLLO_JAVA_BIN if exist "%APOLLO_JAVA_BIN%\java.exe" set "JAVA_EXE=%APOLLO_JAVA_BIN%\java.exe"
if defined APOLLO_JAVA_BIN if exist "%APOLLO_JAVA_BIN%\javac.exe" set "JAVAC_EXE=%APOLLO_JAVA_BIN%\javac.exe"
if not defined JAVA_EXE set "JAVA_EXE=java"
if not defined JAVAC_EXE set "JAVAC_EXE=javac"

if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\clang.exe" set "CLANG_EXE=%APOLLO_MINGW_BIN%\clang.exe"
if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\clang++.exe" set "CLANGXX_EXE=%APOLLO_MINGW_BIN%\clang++.exe"
if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\llc.exe" set "LLC_EXE=%APOLLO_MINGW_BIN%\llc.exe"
if defined APOLLO_LLVM_BIN if not defined CLANG_EXE if exist "%APOLLO_LLVM_BIN%\clang.exe" set "CLANG_EXE=%APOLLO_LLVM_BIN%\clang.exe"
if defined APOLLO_LLVM_BIN if not defined CLANGXX_EXE if exist "%APOLLO_LLVM_BIN%\clang++.exe" set "CLANGXX_EXE=%APOLLO_LLVM_BIN%\clang++.exe"
if defined APOLLO_LLVM_BIN if not defined LLC_EXE if exist "%APOLLO_LLVM_BIN%\llc.exe" set "LLC_EXE=%APOLLO_LLVM_BIN%\llc.exe"
if not defined CLANG_EXE set "CLANG_EXE=clang"
if not defined CLANGXX_EXE set "CLANGXX_EXE=clang++"
if not defined LLC_EXE set "LLC_EXE=llc"

if defined APOLLO_MINGW_BIN set "PATH=%APOLLO_MINGW_BIN%;%PATH%"
if defined APOLLO_JAVA_BIN set "PATH=%APOLLO_JAVA_BIN%;%PATH%"

if defined PRESET_RAW_INPUT set "RAW_INPUT=%PRESET_RAW_INPUT%"

if "%RAW_INPUT%"=="" (
    set "INPUT_FILE=%CALLER_DIR%\main.apollo"
) else (
    set "NORMALIZED_INPUT=!RAW_INPUT!"
    if "!RAW_INPUT:~1,1!"==":" if not "!RAW_INPUT:~2,1!"=="\" if not "!RAW_INPUT:~2,1!"=="/" set "NORMALIZED_INPUT=!RAW_INPUT:~0,2!\!RAW_INPUT:~2!"
    for %%I in ("!NORMALIZED_INPUT!") do set "INPUT_FILE=%%~fI"
)

if defined PRESET_RAW_OUTPUT set "RAW_OUTPUT=%PRESET_RAW_OUTPUT%"

if "%ANALYZE_MODE%"=="1" set "APOLLO_SHOW_FILE_DETAILS=1"
if "%BIN_MODE%"=="1" set "APOLLO_SHOW_FILE_DETAILS=1"

if "%ANALYZE_MODE%"=="1" if "%BIN_MODE%"=="1" (
    echo The -bin and -analyze switches cannot be used together.
    exit /b 1
)

if "%ANALYZE_MODE%"=="0" (
    if /I "%APOLLO_PGO_MODE%"=="generate" (
        set "PGO_COMPILE_FLAGS=-fprofile-generate"
        set "PGO_LINK_FLAGS=-fprofile-generate"
    ) else if /I "%APOLLO_PGO_MODE%"=="use" (
        if not defined APOLLO_PGO_PROFILE (
            echo APOLLO_PGO_MODE=use requires APOLLO_PGO_PROFILE to point at the collected profile data.
            exit /b 1
        )
        set "PGO_COMPILE_FLAGS=-fprofile-use=%APOLLO_PGO_PROFILE% -fprofile-correction"
        set "PGO_LINK_FLAGS=-fprofile-use=%APOLLO_PGO_PROFILE% -fprofile-correction"
    )
)

if "%ANALYZE_MODE%"=="1" if not "%RAW_OUTPUT%"=="" (
    echo Unexpected extra argument. Usage: apollo -analyze [filename]
    exit /b 1
)

if "%BIN_MODE%"=="1" if "%RAW_OUTPUT%"=="" (
    echo Missing output path. Usage: apollo -bin ^<ctall^|run^> [filename] outputname
    echo                    apollo [filename.apollo] -[^L^|^W^|^M^] outputname
    exit /b 1
)

if "%ANALYZE_MODE%"=="0" if "%BIN_MODE%"=="0" if not "%RAW_OUTPUT%"=="" (
    echo Unexpected extra argument. Usage: apollo ^<ctall^|run^> [filename]
    exit /b 1
)

if /I "%COMMAND%"=="run" goto :ctall
if /I "%COMMAND%"=="ctall" goto :ctall
if /I "%COMMAND%"=="analyze" goto :analyze

echo Unknown command. Usage: apollo [-bin] ^<run^|ctall^> [filename] [outputname]
echo                       apollo -analyze [filename]
echo                       apollo [filename.apollo] -[^L^|^W^|^M^] outputname
exit /b 1

:ctall
if "%BIN_MODE%"=="1" (
    set "NORMALIZED_OUTPUT=!RAW_OUTPUT!"
    if "!RAW_OUTPUT:~1,1!"==":" if not "!RAW_OUTPUT:~2,1!"=="\" if not "!RAW_OUTPUT:~2,1!"=="/" set "NORMALIZED_OUTPUT=!RAW_OUTPUT:~0,2!\!RAW_OUTPUT:~2!"
    for %%I in ("!NORMALIZED_OUTPUT!") do set "BIN_OUTPUT=%%~fI"
    if /I "!BIN_OUTPUT_MODE!"=="host" for %%I in ("!BIN_OUTPUT!") do if "%%~xI"=="" set "BIN_OUTPUT=!BIN_OUTPUT!.exe"
    if /I "!BIN_OUTPUT_MODE!"=="windows" for %%I in ("!BIN_OUTPUT!") do if "%%~xI"=="" set "BIN_OUTPUT=!BIN_OUTPUT!.exe"
    for %%I in ("!BIN_OUTPUT!") do if not "%%~dpI"=="" if not exist "%%~dpI" mkdir "%%~dpI"
)

call :prepare_codegen
if errorlevel 1 exit /b %errorlevel%

set "EXECUTION_MODE=aot"
if "%BIN_MODE%"=="0" if exist "%CONFIG_EXE%" (
    for /f "usebackq delims=" %%I in (`"%CONFIG_EXE%" get-mode 2^>nul`) do set "EXECUTION_MODE=%%I"
)

if /I "%EXECUTION_MODE%"=="jit" goto :run_jit

set "LINK_OUTPUT=output\output.exe"
if "%BIN_MODE%"=="1" set "LINK_OUTPUT=%BIN_OUTPUT%"

"%JAVA_EXE%" -cp "output\classes;%ANTLR_JAR%" ApolloBuildDriver build-aot "%INPUT_FILE%" "%LINK_OUTPUT%"
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

if "%BIN_MODE%"=="1" (
    call :cleanup_generated "%BIN_OUTPUT%"
    echo Wrote binary to %BIN_OUTPUT%
    popd
    exit /b 0
)

"%LINK_OUTPUT%"
set "EXIT_CODE=%errorlevel%"
call :cleanup_generated
popd
exit /b %EXIT_CODE%

:analyze
call :prepare_codegen
if errorlevel 1 exit /b %errorlevel%

call :resolve_asan_runtime
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

set "ASAN_OUTPUT=%SCRIPT_DIR%output\output_asan.exe"
"%JAVA_EXE%" -cp "output\classes;%ANTLR_JAR%" ApolloBuildDriver analyze "%INPUT_FILE%" "%ASAN_OUTPUT%"
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

powershell -NoProfile -ExecutionPolicy Bypass -File "%ASAN_REPORT_SCRIPT%" -ExecutablePath "%ASAN_OUTPUT%" -WorkingDirectory "%SCRIPT_DIR_NO_SLASH%"
set "EXIT_CODE=%errorlevel%"
call :cleanup_generated
popd
exit /b %EXIT_CODE%

:resolve_asan_runtime
set "CLANG_RESOURCE_DIR="
for /f "usebackq delims=" %%I in (`"%CLANGXX_EXE%" --print-resource-dir 2^>nul`) do set "CLANG_RESOURCE_DIR=%%I"
if not defined CLANG_RESOURCE_DIR goto :asan_missing

set "ASAN_RUNTIME_FOUND="
for /f "delims=" %%I in ('dir /b /s "!CLANG_RESOURCE_DIR!\libclang_rt.asan*.a" 2^>nul') do (
    set "ASAN_RUNTIME_FOUND=1"
    goto :asan_ready
)

:asan_ready
if defined ASAN_RUNTIME_FOUND exit /b 0

:asan_missing
echo AddressSanitizer runtime libraries were not found for the configured Clang toolchain.
echo Expected Clang resource directory: %CLANG_RESOURCE_DIR%
echo Install or update the Apollo Windows toolchain so `mingw-w64-x86_64-compiler-rt` is present, then retry `apollo -analyze`.
exit /b 1

:prepare_codegen
pushd "%SCRIPT_DIR%"
if errorlevel 1 exit /b %errorlevel%

if not exist "%INPUT_FILE%" (
    echo Input file not found: %INPUT_FILE%
    popd
    exit /b 1
)

"%JAVA_EXE%" -jar "%ANTLR_JAR%" -visitor -Dlanguage=Java -o compiler-master compilerv1.g4
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

for %%I in ("%INPUT_FILE%") do set "SOURCE_ROOT=%%~dpI"
if defined SOURCE_ROOT if "%SOURCE_ROOT:~-1%"=="\" set "SOURCE_ROOT=%SOURCE_ROOT:~0,-1%"

if not exist output mkdir output
if not exist output\classes mkdir output\classes

pushd compiler-master
"%JAVAC_EXE%" -d ..\output\classes -cp ".;%ANTLR_JAR%" *.java
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)
popd

"%JAVAC_EXE%" -d output\classes -cp ".;output\classes;%ANTLR_JAR%" ApolloBuildDriver.java ApolloCodegenOptimizationPlan.java CppCodeGenVisitor.java Main.java runtime.java
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

"%JAVA_EXE%" -cp "output\classes;%ANTLR_JAR%" Main "%INPUT_FILE%"
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)
exit /b 0

:run_jit
"%JAVA_EXE%" -cp "output\classes;%ANTLR_JAR%" ApolloBuildDriver emit-ll "%INPUT_FILE%"
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

if exist "%CONFIG_EXE%" (
    "%CONFIG_EXE%" jit-status
)
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

if not exist "%APOLLO_JIT_EXE%" (
    echo LLVM JIT runner not found: %APOLLO_JIT_EXE%
    popd
    exit /b 1
)

"%APOLLO_JIT_EXE%" output\output.ll
set "EXIT_CODE=%errorlevel%"
call :cleanup_generated
popd
exit /b %EXIT_CODE%

:cleanup_generated
if exist "%CLEANUP_SCRIPT%" (
    if "%~1"=="" (
        powershell -NoProfile -ExecutionPolicy Bypass -File "%CLEANUP_SCRIPT%" -ManifestPath "%MANIFEST_PATH%" -OutputDir "%SCRIPT_DIR%output" >nul 2>nul
    ) else (
        powershell -NoProfile -ExecutionPolicy Bypass -File "%CLEANUP_SCRIPT%" -ManifestPath "%MANIFEST_PATH%" -OutputDir "%SCRIPT_DIR%output" -PreservePath "%~1" >nul 2>nul
    )
)
exit /b 0

:configure_gc_support
set "GC_COMPILE_FLAGS="
set "GC_LINK_FLAGS="
findstr /I /C:"#include <gc/" /C:"#include <gc_cpp.h>" /C:"#include <gc.h>" output.cpp >nul 2>nul
if errorlevel 1 exit /b 0

call :resolve_gc_paths
if errorlevel 1 exit /b %errorlevel%

set "GC_COMPILE_FLAGS=-I"%GC_INCLUDE_DIR%""
set "GC_LINK_FLAGS=-L"%GC_LIB_DIR%" -lgccpp -lgc"
exit /b 0

:resolve_gc_paths
if defined APOLLO_GC_INCLUDE_DIR if defined APOLLO_GC_LIB_DIR goto :validate_gc_paths

if not defined APOLLO_MSYS64_ROOT if exist "C:\msys64\mingw64\include" set "APOLLO_MSYS64_ROOT=C:\msys64"
if not defined APOLLO_MINGW_BIN if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\clang64\bin" set "APOLLO_MINGW_BIN=%APOLLO_MSYS64_ROOT%\clang64\bin"
if not defined APOLLO_GC_INCLUDE_DIR if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\clang64\include" set "APOLLO_GC_INCLUDE_DIR=%APOLLO_MSYS64_ROOT%\clang64\include"
if not defined APOLLO_GC_LIB_DIR if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\clang64\lib" set "APOLLO_GC_LIB_DIR=%APOLLO_MSYS64_ROOT%\clang64\lib"
if not defined APOLLO_MINGW_BIN if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\mingw64\bin" set "APOLLO_MINGW_BIN=%APOLLO_MSYS64_ROOT%\mingw64\bin"
if not defined APOLLO_GC_INCLUDE_DIR if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\mingw64\include" set "APOLLO_GC_INCLUDE_DIR=%APOLLO_MSYS64_ROOT%\mingw64\include"
if not defined APOLLO_GC_LIB_DIR if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\mingw64\lib" set "APOLLO_GC_LIB_DIR=%APOLLO_MSYS64_ROOT%\mingw64\lib"

:validate_gc_paths
if not defined APOLLO_GC_INCLUDE_DIR goto :gc_missing
if not defined APOLLO_GC_LIB_DIR goto :gc_missing
if exist "%APOLLO_GC_INCLUDE_DIR%\gc_cpp.h" goto :check_gc_libs
if exist "%APOLLO_GC_INCLUDE_DIR%\gc\gc_cpp.h" goto :check_gc_libs
if exist "%APOLLO_GC_INCLUDE_DIR%\gc.h" goto :check_gc_libs
if exist "%APOLLO_GC_INCLUDE_DIR%\gc\gc.h" goto :check_gc_libs
goto :gc_missing

:check_gc_libs
if not exist "%APOLLO_GC_LIB_DIR%\libgc.a" if not exist "%APOLLO_GC_LIB_DIR%\libgc.dll.a" goto :gc_missing
if not exist "%APOLLO_GC_LIB_DIR%\libgccpp.a" if not exist "%APOLLO_GC_LIB_DIR%\libgccpp.dll.a" goto :gc_missing
set "GC_INCLUDE_DIR=%APOLLO_GC_INCLUDE_DIR%"
set "GC_LIB_DIR=%APOLLO_GC_LIB_DIR%"
exit /b 0

:prepare_pch
if /I not "%APOLLO_USE_PCH%"=="1" exit /b 0
if not exist "%APOLLO_PCH_HEADER%" (
    echo Apollo PCH header not found: %APOLLO_PCH_HEADER%
    exit /b 1
)
"%CLANGXX_EXE%" %APOLLO_PCH_GENERATE_FLAGS% "%APOLLO_PCH_HEADER%" -o "%APOLLO_PCH_OUTPUT%"
if errorlevel 1 exit /b %errorlevel%
exit /b 0

:gc_missing
echo GC headers or libraries were requested by this Apollo program, but Boehm GC was not found.
echo Run install.exe from the Apollo install directory to bootstrap the required Windows toolchain.
exit /b 1