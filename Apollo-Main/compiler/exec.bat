@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: This script handles the 'apollo' command
set "MANAGE_SCRIPT=%~dp0..\apollo-manage.ps1"
set "MANAGE_INSTALL_DIR=%~dp0.."
set "ANALYZE_MODE=0"
set "BIN_MODE=0"
set "BIN_OUTPUT_MODE=host"
set "CLI_TARGET_TRIPLE="
set "PRESET_RAW_INPUT="
set "PRESET_RAW_OUTPUT="
set "FIRST_ARG_EXT="
if "%~1"=="" goto :usage
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
set "SCRIPT_DIR="
if defined APOLLO_COMPILER_DIR call :use_compiler_dir_if_valid "%APOLLO_COMPILER_DIR%"
if not defined SCRIPT_DIR if defined APOLLO_DIR call :use_compiler_dir_if_valid "%APOLLO_DIR%\compiler"
if not defined SCRIPT_DIR call :use_compiler_dir_if_valid "%~dp0"
if not defined SCRIPT_DIR call :use_compiler_dir_if_valid "%CD%\compiler"
if not exist "%SCRIPT_DIR%cleanup-output.ps1" (
    echo Apollo compiler directory could not be resolved.
    exit /b 1
)
set "SCRIPT_DIR_NO_SLASH=%SCRIPT_DIR%"
if "%SCRIPT_DIR_NO_SLASH:~-1%"=="\" set "SCRIPT_DIR_NO_SLASH=%SCRIPT_DIR_NO_SLASH:~0,-1%"
set "APOLLO_COMPILER_DIR=%SCRIPT_DIR_NO_SLASH%"
for %%I in ("%SCRIPT_DIR%..") do set "APOLLO_DIR=%%~fI"
set "CONFIG_EXE=%APOLLO_DIR%\apollo-config.exe"
if not exist "%CONFIG_EXE%" set "CONFIG_EXE=%APOLLO_DIR%\config.exe"
set "APOLLO_JIT_EXE=%APOLLO_DIR%\apollo_jit.exe"
set "CLEANUP_SCRIPT=%SCRIPT_DIR%cleanup-output.ps1"
set "MANIFEST_PATH=%SCRIPT_DIR%output\cleanup-manifest.txt"
set "ASAN_REPORT_SCRIPT=%SCRIPT_DIR%asan-report.ps1"
set "NATIVE_SOURCE_DIR=%SCRIPT_DIR%cpp"
set "NATIVE_BUILD_DIR=%NATIVE_SOURCE_DIR%\build"
set "NATIVE_SOURCE_DIR_SLASH=%NATIVE_SOURCE_DIR:\=/%"
set "NATIVE_BUILD_DIR_SLASH=%NATIVE_BUILD_DIR:\=/%"
set "NATIVE_BUILD_CONFIG=Release"
if defined APOLLO_NATIVE_BUILD_CONFIG set "NATIVE_BUILD_CONFIG=%APOLLO_NATIVE_BUILD_CONFIG%"
set "APOLLO_BUILD_DRIVER_EXE="
set "CMAKE_EXE="
set "CALLER_DIR=%CD%"
set "RAW_INPUT=%~1"
set "RAW_OUTPUT=%~2"
set "TOOLCHAIN_ENV=%SCRIPT_DIR%toolchain-env.bat"
if not defined APOLLO_SHOW_FILE_DETAILS set "APOLLO_SHOW_FILE_DETAILS=0"
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

if /I "%COMMAND%"=="--version" goto :manage_version
if /I "%COMMAND%"=="--update" goto :manage_update
if /I "%COMMAND%"=="-m" (
    if /I "%RAW_INPUT%"=="uninstall" goto :manage_uninstall
    echo Unknown management command. Usage: apollo -m uninstall
    exit /b 1
)

if exist "%TOOLCHAIN_ENV%" call "%TOOLCHAIN_ENV%"

if not defined VCPKG_ROOT if defined USERPROFILE if exist "%USERPROFILE%\vcpkg\scripts\buildsystems\vcpkg.cmake" set "VCPKG_ROOT=%USERPROFILE%\vcpkg"
if not defined APOLLO_NATIVE_GENERATOR if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\mingw32-make.exe" set "APOLLO_NATIVE_GENERATOR=MinGW Makefiles"
if not defined APOLLO_NATIVE_C_COMPILER if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\clang.exe" set "APOLLO_NATIVE_C_COMPILER=%APOLLO_MINGW_BIN%\clang.exe"
if not defined APOLLO_NATIVE_CXX_COMPILER if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\clang++.exe" set "APOLLO_NATIVE_CXX_COMPILER=%APOLLO_MINGW_BIN%\clang++.exe"
if not defined APOLLO_NATIVE_MAKE_PROGRAM if defined APOLLO_MINGW_BIN if exist "%APOLLO_MINGW_BIN%\mingw32-make.exe" set "APOLLO_NATIVE_MAKE_PROGRAM=%APOLLO_MINGW_BIN%\mingw32-make.exe"
if not defined APOLLO_NATIVE_CMAKE_PREFIX if defined APOLLO_MSYS64_ROOT if exist "%APOLLO_MSYS64_ROOT%\clang64\lib\cmake\antlr4-runtime" set "APOLLO_NATIVE_CMAKE_PREFIX=%APOLLO_MSYS64_ROOT%\clang64"
if defined APOLLO_NATIVE_C_COMPILER set "APOLLO_NATIVE_C_COMPILER_SLASH=%APOLLO_NATIVE_C_COMPILER:\=/%"
if defined APOLLO_NATIVE_CXX_COMPILER set "APOLLO_NATIVE_CXX_COMPILER_SLASH=%APOLLO_NATIVE_CXX_COMPILER:\=/%"

if /I "%COMMAND%"=="ctall" if "%BIN_MODE%"=="1" if /I "%BIN_OUTPUT_MODE%"=="windows" (
    call :try_fast_windows_bin "%PRESET_RAW_INPUT%" "%PRESET_RAW_OUTPUT%"
    set "FAST_PATH_STATUS=!errorlevel!"
    if not "!FAST_PATH_STATUS!"=="2" exit /b !FAST_PATH_STATUS!
)

if not defined APOLLO_CXX_STD set "APOLLO_CXX_STD=c++20"
if not defined APOLLO_OPT_LEVEL set "APOLLO_OPT_LEVEL=3"
if not defined APOLLO_LLC_OPT_LEVEL set "APOLLO_LLC_OPT_LEVEL=%APOLLO_OPT_LEVEL%"
if not defined APOLLO_USE_PCH set "APOLLO_USE_PCH=1"
if not defined APOLLO_PCH_HEADER set "APOLLO_PCH_HEADER=%SCRIPT_DIR%runtime_support\apollo_pch.hpp"
if not defined APOLLO_PCH_OUTPUT set "APOLLO_PCH_OUTPUT=output\apollo.pch"
if not defined CODEGEN_BOOTSTRAP_VERSION set "CODEGEN_BOOTSTRAP_VERSION=apollo-codegen-bootstrap-v2"
if defined CLI_TARGET_TRIPLE set "APOLLO_TARGET_TRIPLE=%CLI_TARGET_TRIPLE%"
if defined APOLLO_TARGET_TRIPLE set "APOLLO_TARGET_FLAGS=%APOLLO_TARGET_FLAGS% --target=%APOLLO_TARGET_TRIPLE%"
if defined APOLLO_SYSROOT set "APOLLO_TARGET_FLAGS=%APOLLO_TARGET_FLAGS% --sysroot=%APOLLO_SYSROOT%"
if /I "%APOLLO_USE_PCH%"=="1" set "APOLLO_PCH_USE_FLAGS=-Winvalid-pch -include-pch %APOLLO_PCH_OUTPUT%"
set "APOLLO_FRONTEND_FLAGS=%APOLLO_TARGET_FLAGS% -x c++ -std=%APOLLO_CXX_STD% -O%APOLLO_OPT_LEVEL% -S -emit-llvm %APOLLO_FRONTEND_EXTRA_FLAGS% %APOLLO_PCH_USE_FLAGS%"
set "APOLLO_LLC_FLAGS=-O%APOLLO_LLC_OPT_LEVEL% -filetype=obj %APOLLO_LLC_EXTRA_FLAGS%"
set "APOLLO_ANALYZE_FLAGS=%APOLLO_TARGET_FLAGS% -x c++ -std=%APOLLO_CXX_STD% -O0 -g -fno-omit-frame-pointer -fsanitize=address %APOLLO_ANALYZE_EXTRA_FLAGS% %APOLLO_PCH_USE_FLAGS%"
set "APOLLO_PCH_GENERATE_FLAGS=%APOLLO_TARGET_FLAGS% -x c++-header -std=%APOLLO_CXX_STD% %APOLLO_PCH_EXTRA_FLAGS%"
set "APOLLO_LINK_FLAGS=%APOLLO_TARGET_FLAGS% %APOLLO_LINK_EXTRA_FLAGS%"

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
if defined PRESET_RAW_INPUT set "RAW_INPUT=%PRESET_RAW_INPUT%"

if "%RAW_INPUT%"=="" (
    set "INPUT_FILE=%CALLER_DIR%\main.apollo"
) else (
    set "NORMALIZED_INPUT=!RAW_INPUT!"
    if "!RAW_INPUT:~1,1!"==":" if not "!RAW_INPUT:~2,1!"=="\" if not "!RAW_INPUT:~2,1!"=="/" set "NORMALIZED_INPUT=!RAW_INPUT:~0,2!\!RAW_INPUT:~2!"
    for %%I in ("!NORMALIZED_INPUT!") do set "INPUT_FILE=%%~fI"
)

if defined PRESET_RAW_OUTPUT set "RAW_OUTPUT=%PRESET_RAW_OUTPUT%"

set "TEMP_AOT_OUTPUT="

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
echo                       apollo --version
echo                       apollo --update
echo                       apollo -m uninstall
exit /b 1

:usage
echo Usage: apollo [-bin] ^<run^|ctall^> [filename] [outputname]
echo        apollo -analyze [filename]
echo        apollo [filename.apollo] -[^L^|^W^|^M^] outputname
echo        apollo --version
echo        apollo --update
echo        apollo -m uninstall
exit /b 1

:ctall
if "%BIN_MODE%"=="1" (
    for %%I in ("%RAW_OUTPUT%") do set "BIN_OUTPUT=%%~fI"
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

set "LINK_OUTPUT=output\run-%RANDOM%%RANDOM%%RANDOM%.exe"
if "%BIN_MODE%"=="1" set "LINK_OUTPUT=%BIN_OUTPUT%"

set "NATIVE_DRIVER_CMD=%APOLLO_BUILD_DRIVER_EXE%"
if exist "%NATIVE_BUILD_DIR%\Release\apollo_build_driver_native.exe" set "NATIVE_DRIVER_CMD=%NATIVE_BUILD_DIR%\Release\apollo_build_driver_native.exe"
if /I "%APOLLO_SHOW_FILE_DETAILS%"=="1" echo Using native build driver: %NATIVE_DRIVER_CMD%
set "NATIVE_DRIVER_SCRIPT=%TEMP%\apollo-build-driver-%RANDOM%%RANDOM%%RANDOM%.cmd"
(
    echo @echo off
    echo set "CLANG_EXE="
    echo set "CLANGXX_EXE="
    echo set "LLC_EXE="
    echo set "APOLLO_CXX_STD="
    echo set "APOLLO_OPT_LEVEL="
    echo set "APOLLO_LLC_OPT_LEVEL="
    echo set "APOLLO_USE_PCH="
    echo set "APOLLO_PCH_HEADER="
    echo set "APOLLO_PCH_OUTPUT="
    echo set "APOLLO_PCH_EXTRA_FLAGS="
    echo set "APOLLO_FRONTEND_EXTRA_FLAGS="
    echo set "APOLLO_LLC_EXTRA_FLAGS="
    echo set "APOLLO_LINK_EXTRA_FLAGS="
    echo set "APOLLO_ANALYZE_EXTRA_FLAGS="
    echo set "APOLLO_TARGET_FLAGS="
    echo set "APOLLO_FRONTEND_FLAGS="
    echo set "APOLLO_LLC_FLAGS="
    echo set "APOLLO_ANALYZE_FLAGS="
    echo set "APOLLO_PCH_GENERATE_FLAGS="
    echo set "APOLLO_PCH_USE_FLAGS="
    echo set "APOLLO_LINK_FLAGS="
    if exist "%TOOLCHAIN_ENV%" echo call "%TOOLCHAIN_ENV%" ^>nul
    echo "%NATIVE_DRIVER_CMD%" build-aot "%INPUT_FILE%" "%LINK_OUTPUT%"
) > "%NATIVE_DRIVER_SCRIPT%"
call "%NATIVE_DRIVER_SCRIPT%"
set "NATIVE_DRIVER_STATUS=%errorlevel%"
del /f /q "%NATIVE_DRIVER_SCRIPT%" >nul 2>nul
if not "%NATIVE_DRIVER_STATUS%"=="0" exit /b %NATIVE_DRIVER_STATUS%
if errorlevel 1 (
    popd
    exit /b %errorlevel%
)

if "%BIN_MODE%"=="1" (
    call :cleanup_generated "%BIN_OUTPUT%"
    if /I "%APOLLO_SHOW_FILE_DETAILS%"=="1" echo Wrote binary to %BIN_OUTPUT%
    popd
    exit /b 0
)

for %%I in ("%LINK_OUTPUT%") do set "RUN_OUTPUT=%%~fI"
set "RUN_WORKDIR=%SOURCE_ROOT%"
if not defined RUN_WORKDIR set "RUN_WORKDIR=%SCRIPT_DIR_NO_SLASH%"
pushd "%RUN_WORKDIR%"
"%RUN_OUTPUT%"
set "EXIT_CODE=%errorlevel%"
popd
call :cleanup_generated
popd
exit /b %EXIT_CODE%

:try_fast_windows_bin
if "%~1"=="" (
    if defined APOLLO_FASTPATH_TRACE echo missing-input>"%APOLLO_FASTPATH_TRACE%"
    exit /b 2
)
if "%~2"=="" (
    if defined APOLLO_FASTPATH_TRACE echo missing-output>"%APOLLO_FASTPATH_TRACE%"
    exit /b 2
)
if not exist "%NATIVE_BUILD_DIR%\CMakeCache.txt" (
    if defined APOLLO_FASTPATH_TRACE echo missing-build-cache>"%APOLLO_FASTPATH_TRACE%"
    exit /b 2
)
if defined APOLLO_FASTPATH_TRACE echo entered>"%APOLLO_FASTPATH_TRACE%"
if /I "%APOLLO_SHOW_FILE_DETAILS%"=="1" echo Using fast Windows binary path

call :resolve_cmake
if errorlevel 1 (
    if defined APOLLO_FASTPATH_TRACE echo missing-cmake>>"%APOLLO_FASTPATH_TRACE%"
    exit /b 2
)

setlocal EnableDelayedExpansion
set "FAST_DRIVER="
for %%I in ("%NATIVE_BUILD_DIR%\%NATIVE_BUILD_CONFIG%\apollo_build_driver_native.exe" "%NATIVE_BUILD_DIR%\apollo_build_driver_native.exe" "%NATIVE_BUILD_DIR%\Debug\apollo_build_driver_native.exe" "%NATIVE_BUILD_DIR%\Release\apollo_build_driver_native.exe" "%NATIVE_BUILD_DIR%\RelWithDebInfo\apollo_build_driver_native.exe" "%NATIVE_BUILD_DIR%\MinSizeRel\apollo_build_driver_native.exe") do (
    if not defined FAST_DRIVER if exist "%%~fI" set "FAST_DRIVER=%%~fI"
)
if not defined FAST_DRIVER endlocal & exit /b 2

for %%I in ("%~1") do set "FAST_INPUT=%%~fI"
for %%I in ("%~2") do set "FAST_OUTPUT=%%~fI"
set "APOLLO_TARGET_TRIPLE=%CLI_TARGET_TRIPLE%"

pushd "%SCRIPT_DIR%"
call :run_quiet_command "%CMAKE_EXE%" --build "%NATIVE_BUILD_DIR%" --config "%NATIVE_BUILD_CONFIG%" --target apollo_build_driver_native
set "FAST_BUILD_STATUS=!errorlevel!"
if not "!FAST_BUILD_STATUS!"=="0" (
    popd
    endlocal & exit /b !FAST_BUILD_STATUS!
)

"!FAST_DRIVER!" build-aot "!FAST_INPUT!" "!FAST_OUTPUT!"
set "FAST_DRIVER_STATUS=!errorlevel!"
if not "!FAST_DRIVER_STATUS!"=="0" (
    popd
    endlocal & exit /b !FAST_DRIVER_STATUS!
)

call :cleanup_generated "!FAST_OUTPUT!"
if /I "%APOLLO_SHOW_FILE_DETAILS%"=="1" echo Wrote binary to !FAST_OUTPUT!
popd
endlocal & exit /b 0

:manage_version
if exist "%CLEANUP_SCRIPT%" (
    if "%~1"=="" (
        powershell -NoProfile -ExecutionPolicy Bypass -File "%CLEANUP_SCRIPT%" -ManifestPath "%MANIFEST_PATH%" -OutputDir "%SCRIPT_DIR%output" >nul 2>nul
    ) else (
        powershell -NoProfile -ExecutionPolicy Bypass -File "%CLEANUP_SCRIPT%" -ManifestPath "%MANIFEST_PATH%" -OutputDir "%SCRIPT_DIR%output" -PreservePath "%~1" >nul 2>nul
    )
)
call :invoke_manage_script version
exit /b %errorlevel%

:manage_update
call :invoke_manage_script update
exit /b %errorlevel%

:manage_uninstall
call :invoke_manage_script uninstall
exit /b %errorlevel%

:invoke_manage_script
if not exist "%MANAGE_SCRIPT%" (
    echo Apollo management script not found: %MANAGE_SCRIPT%
    exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%MANAGE_SCRIPT%" -Action "%~1" -InstallDir "%MANAGE_INSTALL_DIR%"
exit /b %errorlevel%

:analyze
call :prepare_codegen
if errorlevel 1 exit /b !errorlevel!

call :resolve_asan_runtime
if errorlevel 1 (
    popd
    exit /b !errorlevel!
)

set "ASAN_OUTPUT=%SCRIPT_DIR%output\output_asan.exe"
"%APOLLO_BUILD_DRIVER_EXE%" analyze "%INPUT_FILE%" "%ASAN_OUTPUT%"
if errorlevel 1 (
    popd
    exit /b !errorlevel!
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
if errorlevel 1 exit /b !errorlevel!

if not exist "%INPUT_FILE%" (
    echo Input file not found: %INPUT_FILE%
    popd
    exit /b 1
)

for %%I in ("%INPUT_FILE%") do set "SOURCE_ROOT=%%~dpI"
if defined SOURCE_ROOT if "%SOURCE_ROOT:~-1%"=="\" set "SOURCE_ROOT=%SOURCE_ROOT:~0,-1%"

if not exist output mkdir output
call :ensure_native_targets apollo_build_driver_native
if errorlevel 1 (
    popd
    exit /b !errorlevel!
)
if exist "%NATIVE_BUILD_DIR%\Release\apollo_build_driver_native.exe" set "APOLLO_BUILD_DRIVER_EXE=%NATIVE_BUILD_DIR%\Release\apollo_build_driver_native.exe"
exit /b 0

:ensure_native_targets
call :resolve_cmake
if errorlevel 1 exit /b %errorlevel%

if exist "%NATIVE_BUILD_DIR%\CMakeCache.txt" (
    call :native_build_cache_valid
    if errorlevel 1 (
        rmdir /s /q "%NATIVE_BUILD_DIR%" >nul 2>nul
    )
)

if not exist "%NATIVE_BUILD_DIR%\CMakeCache.txt" (
    call :configure_native_build
    if errorlevel 1 if not exist "%NATIVE_BUILD_DIR%\CMakeCache.txt" exit /b !errorlevel!
)

set "NEED_NATIVE_BUILD=0"
if /I "%APOLLO_FORCE_NATIVE_REBUILD%"=="1" set "NEED_NATIVE_BUILD=1"
if /I "%APOLLO_FORCE_NATIVE_REBUILD%"=="true" set "NEED_NATIVE_BUILD=1"
if /I "%APOLLO_FORCE_NATIVE_REBUILD%"=="yes" set "NEED_NATIVE_BUILD=1"
for %%T in (%*) do (
    call :resolve_native_executable %%T RESOLVED_NATIVE_TARGET
    if errorlevel 1 (
        set "NEED_NATIVE_BUILD=1"
    ) else (
        call :native_target_stale "!RESOLVED_NATIVE_TARGET!"
        if not errorlevel 1 set "NEED_NATIVE_BUILD=1"
        if /I "%%T"=="apollo_build_driver_native" set "APOLLO_BUILD_DRIVER_EXE=!RESOLVED_NATIVE_TARGET!"
    )
)

if "%NEED_NATIVE_BUILD%"=="1" (
    call :run_quiet_command "%CMAKE_EXE%" --build "%NATIVE_BUILD_DIR%" --config "%NATIVE_BUILD_CONFIG%" --target %*
    if errorlevel 1 exit /b !errorlevel!
)

call :resolve_native_executable apollo_build_driver_native APOLLO_BUILD_DRIVER_EXE
if errorlevel 1 exit /b !errorlevel!
exit /b 0

:native_target_stale
setlocal
set "TARGET_PATH=%~1"
if not exist "%TARGET_PATH%" endlocal & exit /b 0
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "$target = Get-Item -LiteralPath '%TARGET_PATH%';" ^
    "$dependencies = @('%NATIVE_SOURCE_DIR%\CMakeLists.txt', '%SCRIPT_DIR%compilerv1.g4');" ^
    "foreach ($dependency in $dependencies) { if (-not (Test-Path -LiteralPath $dependency)) { exit 0 }; if ((Get-Item -LiteralPath $dependency).LastWriteTimeUtc -gt $target.LastWriteTimeUtc) { exit 0 } }" ^
    "$sourceDirs = @('%NATIVE_SOURCE_DIR%\src', '%NATIVE_SOURCE_DIR%\generated');" ^
    "foreach ($sourceDir in $sourceDirs) { if (-not (Test-Path -LiteralPath $sourceDir)) { continue }; $stale = Get-ChildItem -LiteralPath $sourceDir -Recurse -File | Where-Object { $_.Extension -in '.cpp', '.h' -and $_.LastWriteTimeUtc -gt $target.LastWriteTimeUtc } | Select-Object -First 1; if ($null -ne $stale) { exit 0 } }" ^
    "exit 1"
set "STATUS=%errorlevel%"
endlocal & exit /b %STATUS%

:native_build_cache_valid
if not exist "%NATIVE_BUILD_DIR%\CMakeFiles" exit /b 1
if not exist "%NATIVE_BUILD_DIR%\cmake_install.cmake" exit /b 1
findstr /B /C:"ApolloNativeFrontend_SOURCE_DIR:STATIC=%NATIVE_SOURCE_DIR_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
findstr /B /C:"ApolloNativeFrontend_BINARY_DIR:STATIC=%NATIVE_BUILD_DIR_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
findstr /B /C:"CMAKE_HOME_DIRECTORY:INTERNAL=%NATIVE_SOURCE_DIR_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
if defined APOLLO_NATIVE_GENERATOR (
findstr /B /C:"CMAKE_GENERATOR:INTERNAL=%APOLLO_NATIVE_GENERATOR%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
)
if defined APOLLO_NATIVE_C_COMPILER_SLASH (
findstr /B /C:"CMAKE_C_COMPILER:FILEPATH=%APOLLO_NATIVE_C_COMPILER_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 (
findstr /B /C:"CMAKE_C_COMPILER:STRING=%APOLLO_NATIVE_C_COMPILER_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
)
)
if defined APOLLO_NATIVE_CXX_COMPILER_SLASH (
findstr /B /C:"CMAKE_CXX_COMPILER:FILEPATH=%APOLLO_NATIVE_CXX_COMPILER_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 (
findstr /B /C:"CMAKE_CXX_COMPILER:STRING=%APOLLO_NATIVE_CXX_COMPILER_SLASH%" "%NATIVE_BUILD_DIR%\CMakeCache.txt" >nul
if errorlevel 1 exit /b 1
)
)
exit /b 0

:configure_native_build
if defined APOLLO_NATIVE_GENERATOR if /I "%APOLLO_NATIVE_GENERATOR%"=="MinGW Makefiles" (
    if not defined APOLLO_NATIVE_C_COMPILER (
        echo Native Apollo C compiler was not found for the configured MinGW toolchain.
        exit /b 1
    )
    if not defined APOLLO_NATIVE_CXX_COMPILER (
        echo Native Apollo C++ compiler was not found for the configured MinGW toolchain.
        exit /b 1
    )
    if not defined APOLLO_NATIVE_MAKE_PROGRAM (
        echo Native Apollo make program was not found for the configured MinGW toolchain.
        exit /b 1
    )
    if defined APOLLO_NATIVE_CMAKE_PREFIX (
        call :run_quiet_command "%CMAKE_EXE%" -G "%APOLLO_NATIVE_GENERATOR%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_C_COMPILER="%APOLLO_NATIVE_C_COMPILER%" -DCMAKE_CXX_COMPILER="%APOLLO_NATIVE_CXX_COMPILER%" -DCMAKE_MAKE_PROGRAM="%APOLLO_NATIVE_MAKE_PROGRAM%" -DCMAKE_PREFIX_PATH="%APOLLO_NATIVE_CMAKE_PREFIX%"
    ) else (
        call :run_quiet_command "%CMAKE_EXE%" -G "%APOLLO_NATIVE_GENERATOR%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_C_COMPILER="%APOLLO_NATIVE_C_COMPILER%" -DCMAKE_CXX_COMPILER="%APOLLO_NATIVE_CXX_COMPILER%" -DCMAKE_MAKE_PROGRAM="%APOLLO_NATIVE_MAKE_PROGRAM%"
    )
    exit /b !errorlevel!
)

if defined APOLLO_NATIVE_GENERATOR (
    if defined CMAKE_TOOLCHAIN_FILE (
        call :run_quiet_command "%CMAKE_EXE%" -G "%APOLLO_NATIVE_GENERATOR%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_TOOLCHAIN_FILE="%CMAKE_TOOLCHAIN_FILE%"
    ) else if defined VCPKG_ROOT if exist "%VCPKG_ROOT%\scripts\buildsystems\vcpkg.cmake" (
        call :run_quiet_command "%CMAKE_EXE%" -G "%APOLLO_NATIVE_GENERATOR%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_TOOLCHAIN_FILE="%VCPKG_ROOT%\scripts\buildsystems\vcpkg.cmake"
    ) else (
        call :run_quiet_command "%CMAKE_EXE%" -G "%APOLLO_NATIVE_GENERATOR%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%"
    )
) else (
    if defined CMAKE_TOOLCHAIN_FILE (
        call :run_quiet_command "%CMAKE_EXE%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_TOOLCHAIN_FILE="%CMAKE_TOOLCHAIN_FILE%"
    ) else if defined VCPKG_ROOT if exist "%VCPKG_ROOT%\scripts\buildsystems\vcpkg.cmake" (
        call :run_quiet_command "%CMAKE_EXE%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%" -DCMAKE_TOOLCHAIN_FILE="%VCPKG_ROOT%\scripts\buildsystems\vcpkg.cmake"
    ) else (
        call :run_quiet_command "%CMAKE_EXE%" -S "%NATIVE_SOURCE_DIR%" -B "%NATIVE_BUILD_DIR%"
    )
)
exit /b !errorlevel!

:resolve_cmake
if defined CMAKE_EXE if exist "%CMAKE_EXE%" exit /b 0
if defined APOLLO_CMAKE_EXE if exist "%APOLLO_CMAKE_EXE%" (
    set "CMAKE_EXE=%APOLLO_CMAKE_EXE%"
    exit /b 0
)
for /f "delims=" %%I in ('where cmake.exe 2^>nul') do if not defined CMAKE_EXE set "CMAKE_EXE=%%I"
if defined CMAKE_EXE exit /b 0
if exist "C:\Program Files\CMake\bin\cmake.exe" set "CMAKE_EXE=C:\Program Files\CMake\bin\cmake.exe"
if not defined CMAKE_EXE if exist "C:\Program Files (x86)\CMake\bin\cmake.exe" set "CMAKE_EXE=C:\Program Files (x86)\CMake\bin\cmake.exe"
if not defined CMAKE_EXE if exist "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" set "CMAKE_EXE=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"
if not defined CMAKE_EXE if exist "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" set "CMAKE_EXE=C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"
if defined CMAKE_EXE exit /b 0
echo CMake executable not found. Set APOLLO_CMAKE_EXE or add cmake.exe to PATH.
exit /b 1

:run_quiet_command
if /I "%APOLLO_SHOW_FILE_DETAILS%"=="1" (
    %*
    set "STATUS=!errorlevel!"
    exit /b !STATUS!
)

setlocal DisableDelayedExpansion
set "LOG_FILE=%TEMP%\apollo-native-%RANDOM%%RANDOM%%RANDOM%.log"
%* >"%LOG_FILE%" 2>&1
set "STATUS=%errorlevel%"
if not "%STATUS%"=="0" if exist "%LOG_FILE%" type "%LOG_FILE%"
if exist "%LOG_FILE%" del /f /q "%LOG_FILE%" >nul 2>nul
endlocal & exit /b %STATUS%

:resolve_native_executable
setlocal
set "FOUND="
for %%I in ("%NATIVE_BUILD_DIR%\%NATIVE_BUILD_CONFIG%\%~1.exe" "%NATIVE_BUILD_DIR%\%~1.exe" "%NATIVE_BUILD_DIR%\Debug\%~1.exe" "%NATIVE_BUILD_DIR%\Release\%~1.exe" "%NATIVE_BUILD_DIR%\RelWithDebInfo\%~1.exe" "%NATIVE_BUILD_DIR%\MinSizeRel\%~1.exe") do (
    if not defined FOUND if exist "%%~fI" set "FOUND=%%~fI"
)
if not defined FOUND (
    echo Native Apollo executable not found: %~1
    endlocal & exit /b 1
)
endlocal & set "%~2=%FOUND%"
exit /b 0

:run_jit
"%APOLLO_BUILD_DRIVER_EXE%" emit-ll "%INPUT_FILE%"
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

for %%I in ("output\output.ll") do set "RUN_LL=%%~fI"
set "RUN_WORKDIR=%SOURCE_ROOT%"
if not defined RUN_WORKDIR set "RUN_WORKDIR=%SCRIPT_DIR_NO_SLASH%"
pushd "%RUN_WORKDIR%"
"%APOLLO_JIT_EXE%" "%RUN_LL%"
set "EXIT_CODE=%errorlevel%"
popd
call :cleanup_generated
popd
exit /b %EXIT_CODE%

:cleanup_generated
setlocal EnableDelayedExpansion
set "PRESERVE_PATH="
if not "%~1"=="" for %%I in ("%~1") do set "PRESERVE_PATH=%%~fI"
if exist "%MANIFEST_PATH%" (
    for /f "usebackq delims=" %%I in ("%MANIFEST_PATH%") do (
        if not "%%~I"=="" call :cleanup_target "%%~I" "!PRESERVE_PATH!"
    )
)
if exist "%SCRIPT_DIR%output" (
    for /f "delims=" %%I in ('dir /b /a "%SCRIPT_DIR%output" 2^>nul') do (
        call :cleanup_target "%SCRIPT_DIR%output\%%I" "!PRESERVE_PATH!"
    )
)
endlocal
exit /b 0

:cleanup_target
setlocal EnableDelayedExpansion
for %%I in ("%~1") do set "TARGET_PATH=%%~fI"
set "PRESERVE_PATH=%~2"
set "SKIP_DELETE=0"
if defined PRESERVE_PATH if /I "!TARGET_PATH!"=="!PRESERVE_PATH!" set "SKIP_DELETE=1"
if /I "!TARGET_PATH!"=="%SCRIPT_DIR_NO_SLASH%\output\classes" set "SKIP_DELETE=1"
if /I "!TARGET_PATH!"=="%SCRIPT_DIR_NO_SLASH%\output\cache" set "SKIP_DELETE=1"
for %%I in ("!TARGET_PATH!") do if /I "%%~xI"==".pch" set "SKIP_DELETE=1"
if "!SKIP_DELETE!"=="1" endlocal & exit /b 0
if exist "!TARGET_PATH!\*" (
    rmdir /s /q "!TARGET_PATH!" >nul 2>nul
) else if exist "!TARGET_PATH!" (
    del /f /q "!TARGET_PATH!" >nul 2>nul
)
endlocal & exit /b 0

:configure_gc_support
set "GC_COMPILE_FLAGS="
set "GC_LINK_FLAGS="
findstr /I /C:"#include <gc/" /C:"#include <gc_cpp.h>" /C:"#include <gc.h>" output.cpp >nul 2>nul
if errorlevel 1 exit /b 0

call :resolve_gc_paths
if errorlevel 1 exit /b !errorlevel!

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

:use_compiler_dir_if_valid
set "CANDIDATE_DIR=%~1"
if "%CANDIDATE_DIR%"=="" exit /b 0
if not "%CANDIDATE_DIR:~-1%"=="\" set "CANDIDATE_DIR=%CANDIDATE_DIR%\"
if exist "%CANDIDATE_DIR%cleanup-output.ps1" set "SCRIPT_DIR=%CANDIDATE_DIR%"
exit /b 0

:prepare_pch
if /I not "%APOLLO_USE_PCH%"=="1" exit /b 0
if not exist "%APOLLO_PCH_HEADER%" (
    echo Apollo PCH header not found: %APOLLO_PCH_HEADER%
    exit /b 1
)
"%CLANGXX_EXE%" %APOLLO_PCH_GENERATE_FLAGS% "%APOLLO_PCH_HEADER%" -o "%APOLLO_PCH_OUTPUT%"
if errorlevel 1 exit /b !errorlevel!
exit /b 0

:gc_missing
echo GC headers or libraries were requested by this Apollo program, but Boehm GC was not found.
echo Run install.exe from the Apollo install directory to bootstrap the required Windows toolchain.
exit /b 1