$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$compilerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $compilerDir

$nativeSourceDir = Join-Path $compilerDir 'cpp'
$nativeBuildDir = Join-Path $nativeSourceDir 'build'
$nativeBuildConfig = if ($env:APOLLO_NATIVE_BUILD_CONFIG) { $env:APOLLO_NATIVE_BUILD_CONFIG } else { 'Release' }
$expectLegacyCppOutput = $env:APOLLO_EXPECT_CPP_OUTPUT -in @('1', 'true', 'TRUE', 'yes', 'YES', 'on', 'ON')

function Resolve-CommandPath {
    param(
        [string]$Name
    )

    if (Test-Path $Name) {
        return $Name
    }

    $command = Get-Command $Name -ErrorAction SilentlyContinue
    if ($command) {
        return $command.Source
    }

    if ($Name -in @('cmake', 'cmake.exe')) {
        $candidates = @()
        if ($env:APOLLO_CMAKE_EXE) {
            $candidates += $env:APOLLO_CMAKE_EXE
        }
        $candidates += @(
            'C:\Program Files\CMake\bin\cmake.exe',
            'C:\Program Files (x86)\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe',
            'C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe'
        )
        foreach ($candidate in $candidates | Select-Object -Unique) {
            if ($candidate -and (Test-Path $candidate)) {
                return $candidate
            }
        }
    }

    throw "Command could not be resolved: $Name"
}

function Invoke-CapturedProcess {
    param(
        [string]$FilePath,
        [string[]]$Arguments = @()
    )

    $resolvedFilePath = Resolve-CommandPath -Name $FilePath

    $stdoutPath = [System.IO.Path]::GetTempFileName()
    $stderrPath = [System.IO.Path]::GetTempFileName()
    try {
        $startProcessArgs = @{
            FilePath = $resolvedFilePath
            NoNewWindow = $true
            Wait = $true
            PassThru = $true
            RedirectStandardOutput = $stdoutPath
            RedirectStandardError = $stderrPath
        }
        if ($Arguments.Count -gt 0) {
            $startProcessArgs.ArgumentList = $Arguments
        }

        $process = Start-Process @startProcessArgs

        $stdout = if (Test-Path $stdoutPath) { [string](Get-Content -Path $stdoutPath -Raw) } else { '' }
        $stderr = if (Test-Path $stderrPath) { [string](Get-Content -Path $stderrPath -Raw) } else { '' }
        $output = ([string]$stdout) + ([string]$stderr)
    }
    finally {
        Remove-Item $stdoutPath -ErrorAction SilentlyContinue
        Remove-Item $stderrPath -ErrorAction SilentlyContinue
    }

    return [pscustomobject]@{
        ExitCode = $process.ExitCode
        Output = $output
    }
}

function Ensure-NativeBuild {
    param(
        [string[]]$Targets
    )

    if (-not (Test-Path (Join-Path $nativeBuildDir 'CMakeCache.txt'))) {
        $configureArgs = @()
        if ($env:APOLLO_NATIVE_GENERATOR) {
            $configureArgs += @('-G', $env:APOLLO_NATIVE_GENERATOR)
        }
        $configureArgs += @('-S', $nativeSourceDir, '-B', $nativeBuildDir)
        $usingMingwGenerator = $env:APOLLO_NATIVE_GENERATOR -eq 'MinGW Makefiles'
        if ($usingMingwGenerator) {
            if ($env:APOLLO_NATIVE_C_COMPILER) {
                $configureArgs += "-DCMAKE_C_COMPILER=$($env:APOLLO_NATIVE_C_COMPILER)"
            }
            if ($env:APOLLO_NATIVE_CXX_COMPILER) {
                $configureArgs += "-DCMAKE_CXX_COMPILER=$($env:APOLLO_NATIVE_CXX_COMPILER)"
            }
            if ($env:APOLLO_NATIVE_MAKE_PROGRAM) {
                $configureArgs += "-DCMAKE_MAKE_PROGRAM=$($env:APOLLO_NATIVE_MAKE_PROGRAM)"
            }
            if ($env:APOLLO_NATIVE_CMAKE_PREFIX) {
                $configureArgs += "-DCMAKE_PREFIX_PATH=$($env:APOLLO_NATIVE_CMAKE_PREFIX)"
            }
        }
        elseif ($env:CMAKE_TOOLCHAIN_FILE) {
            $configureArgs += "-DCMAKE_TOOLCHAIN_FILE=$($env:CMAKE_TOOLCHAIN_FILE)"
        }
        elseif ($env:VCPKG_ROOT) {
            $vcpkgToolchain = Join-Path $env:VCPKG_ROOT 'scripts\buildsystems\vcpkg.cmake'
            if (Test-Path $vcpkgToolchain) {
                $configureArgs += "-DCMAKE_TOOLCHAIN_FILE=$vcpkgToolchain"
            }
        }

        $configureResult = Invoke-CapturedProcess -FilePath 'cmake' -Arguments $configureArgs
        if ($configureResult.ExitCode -ne 0) {
            throw "Failed to configure Apollo C++ build.`n$($configureResult.Output)"
        }
    }

    $buildArgs = @('--build', $nativeBuildDir, '--config', $nativeBuildConfig, '--target') + $Targets
    $buildResult = Invoke-CapturedProcess -FilePath 'cmake' -Arguments $buildArgs
    if ($buildResult.ExitCode -ne 0) {
        throw "Failed to build Apollo C++ targets.`n$($buildResult.Output)"
    }
}

function Resolve-NativeExecutable {
    param(
        [string]$Name
    )

    $configs = @($nativeBuildConfig, 'Release', 'RelWithDebInfo', 'Debug', 'MinSizeRel') | Select-Object -Unique
    $candidates = New-Object System.Collections.Generic.List[string]
    foreach ($config in $configs) {
        $candidates.Add((Join-Path (Join-Path $nativeBuildDir $config) ("{0}.exe" -f $Name))) | Out-Null
        $candidates.Add((Join-Path (Join-Path $nativeBuildDir $config) $Name)) | Out-Null
    }
    $candidates.Add((Join-Path $nativeBuildDir ("{0}.exe" -f $Name))) | Out-Null
    $candidates.Add((Join-Path $nativeBuildDir $Name)) | Out-Null

    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    throw "Native Apollo executable not found: $Name"
}

function Build-NativeTooling {
    Ensure-NativeBuild -Targets @('apollo_frontend_native', 'apollo_runtime_tests', 'apollo_driver_tests')
    $script:apolloFrontendExe = Resolve-NativeExecutable -Name 'apollo_frontend_native'
    $script:apolloRuntimeTestsExe = Resolve-NativeExecutable -Name 'apollo_runtime_tests'
    $script:apolloDriverTestsExe = Resolve-NativeExecutable -Name 'apollo_driver_tests'
}

function Invoke-ApolloCompile {
    param(
        [string]$Path
    )

    $resolvedPath = (Resolve-Path $Path).Path
    $generatedOutputPath = Join-Path $compilerDir 'output.ll'
    Remove-Item $generatedOutputPath -ErrorAction SilentlyContinue
    return Invoke-CapturedProcess -FilePath $script:apolloFrontendExe -Arguments @($resolvedPath, $generatedOutputPath)
}

$tests = @(
    [pscustomobject]@{
        Name = 'language-surface'
        Path = 'tests\grammar\pass\language_surface.apollo'
        ShouldPass = $true
        Covers = 'globals, templates, interfaces, structs, classes, lambdas, fn types, instances, member access, stdin, blocks, if, while, indexed access, composite literals'
    },
    [pscustomobject]@{
        Name = 'syntax-surface'
        Path = 'tests\grammar\pass\syntax_surface.apollo'
        ShouldPass = $true
        Covers = 'preprocess macro alias, assert statements, ternary expressions, signed i16, and unsigned integer surface types'
        OutputMustContainAll = @(
            'static inline void check(const unsigned int value)',
            'assert(value > 0);',
            'std::uint16_t small = 7;',
            'std::uint64_t widened = (selected == 1 ? 9 : 11);'
        )
    },
    [pscustomobject]@{
        Name = 'unsafe-alias-surface'
        Path = 'tests\grammar\pass\unsafe_alias_surface.apollo'
        ShouldPass = $true
        Covers = 'async native alias and percent-prefixed unsafe-line sugar lower through existing native and unsafe machinery'
        OutputMustContainAll = @(
            'void* heap = malloc((2) * sizeof(int));',
            'std::int32_t* alias = &base;',
            '__apo_queuePayload("cpp\n',
            '__apo_executePayload("cpp\n'
        )
    },
    [pscustomobject]@{
        Name = 'nconst-surface'
        Path = 'tests\grammar\pass\nconst_surface.apollo'
        ShouldPass = $true
        Covers = 'nconst bindings and &nconst borrows parse and lower through the current mutability model'
        OutputMustContainAll = @(
            'std::int32_t value = 1;',
            'std::int32_t& borrow = source;',
            'value = value + 1;'
        )
    },
    [pscustomobject]@{
        Name = 'control-flow-surface'
        Path = 'tests\grammar\pass\control_flow_surface.apollo'
        ShouldPass = $true
        Covers = 'typed for and for-in loops, switch lowering, try/catch terminalexception surface, and typedef struct aliases'
        OutputMustContainAll = @(
            'for (std::int32_t index = 0; index < 2; index = index + 1)',
            'for (const std::int32_t entry : values)',
            'auto __apo_switch_value_',
            'catch (const std::exception& ex)',
            'using apo_Counter = apo_CounterStore;'
        )
    },
    [pscustomobject]@{
        Name = 'typedef-struct-designated-surface'
        Path = 'tests\grammar\pass\typedef_struct_designated_surface.apollo'
        ShouldPass = $true
        Covers = 'typedef struct declarations can omit a trailing alias, allow nconst field qualifiers, and lower bare-brace designated and partial initialization'
        OutputMustContainAll = @(
            'struct apo_rtx {',
            'int id;',
            'std::string a;',
            'const apo_rtx full = {.id = 1, .a = "Hello, world!"};',
            'const apo_rtx partial = {.id = 2};',
            'const apo_rtx empty{};'
        )
    },
    [pscustomobject]@{
        Name = 'alias-sugar-surface'
        Path = 'tests\grammar\pass\alias_sugar_surface.apollo'
        ShouldPass = $true
        Covers = 'ato and := auto declaration sugar, ins/stat instance aliases, and inl::cxx raw C++ aliasing'
        OutputMustContainAll = @(
            'const auto counter = apo_Counter{};',
            'auto total = 4;',
            'std::any pack;',
            'apo_Counter direct = apo_Counter{};',
            'int __apo_alias_probe() {'
        )
    },
    [pscustomobject]@{
        Name = 'src-callable-surface'
        Path = 'tests\grammar\pass\src_callable_surface.apollo'
        ShouldPass = $true
        Covers = 'src first-class function declarations lower to callable lambda values with optional params and return types'
        OutputMustContainAll = @(
            'const auto greet = [&]()',
            'const auto echo = [&](const std::string value) -> std::string',
            'auto count = [&](const int value) -> int',
            'const auto echoed = echo("world");'
        )
    },
    [pscustomobject]@{
        Name = 'manual-new-surface'
        Path = 'tests\grammar\pass\manual_new_surface.apollo'
        ShouldPass = $true
        Covers = 'manual new-allocation sugar lowers through existing void-name release syntax'
        OutputMustContainAll = @(
            'std::int32_t* heap = new std::int32_t(4);',
            'delete heap;'
        )
    },
    [pscustomobject]@{
        Name = 'implicit-this-surface'
        Path = 'tests\grammar\pass\implicit_this_surface.apollo'
        ShouldPass = $true
        Covers = 'indef lowers self-reference field and method access onto this within class methods'
        OutputMustContainAll = @(
            'return this->value;',
            'return this->fetch();'
        )
    },
    [pscustomobject]@{
        Name = 'any-binding-surface'
        Path = 'tests\grammar\pass\any_binding_surface.apollo'
        ShouldPass = $true
        Covers = 'lto lowers declaration bindings to std::any and inserts std::any_cast in typed and arithmetic contexts'
        OutputMustContainAll = @(
            'const std::any dynamic = 1;',
            'const std::int32_t total = std::any_cast<std::int32_t>(dynamic) + 1;',
            'std::any changing = total;',
            'return std::any_cast<int>(changing);'
        )
    },
    [pscustomobject]@{
        Name = 'any-typeset-surface'
        Path = 'tests\grammar\pass\any_typeset_surface.apollo'
        ShouldPass = $true
        Covers = 'lto.typeset(type) retargets std::any payload expectations and optional .cast() rebinds through runtime-safe conversions'
        OutputMustContainAll = @(
            'std::any value = 7;',
            'value = __apo_to_string(std::any_cast<std::int32_t>(value));',
            'std::any cleared = 1;',
            'cleared = std::any{};'
        )
    },
    [pscustomobject]@{
        Name = 'gc-borrow-directives-surface'
        Path = 'tests\grammar\pass\gc_borrow_directives_surface.apollo'
        ShouldPass = $true
        Covers = '#[gc(total)] forces whole-program GC bootstrap and #[borrow_checker(off)] disables ownership and borrow diagnostics'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_autofmt_owner_runtime.hpp"',
            'GC_INIT();',
            'const int& alias = value;',
            'value = 2;'
        )
    },
    [pscustomobject]@{
        Name = 'gc-borrow-directive-alias-surface'
        Path = 'tests\grammar\pass\gc_borrow_directive_alias_surface.apollo'
        ShouldPass = $true
        Covers = '#[gcmode(total)] and #[borrow_check(none)] map onto the existing whole-program GC and borrow checker controls'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_autofmt_owner_runtime.hpp"',
            'GC_INIT();',
            'const int& alias = value;',
            'value = 2;'
        )
    },
    [pscustomobject]@{
        Name = 'gui-surface'
        Path = 'tests\grammar\pass\gui_surface.apollo'
        ShouldPass = $true
        Covers = 'rdwindow declarations, render-bound object handles, KEYPRESS lowering, and async GUI event handlers with implicit mouse payload locals'
        OutputMustContainAll = @(
            '__apo_gui_window stage("stage");',
            '__apo_gui_object_ref hero = stage.object_ref("hero");',
            'if (__apo_gui_runtime::key_pressed("A")) {',
            'stage.on("MOUSECLICK", [=]() mutable {',
            'const std::string touchedObject = __apo_gui_runtime::current_touched_object();'
        )
    },
    [pscustomobject]@{
        Name = 'gui-global-surface'
        Path = 'tests\grammar\pass\gui_global_surface.apollo'
        ShouldPass = $true
        Covers = 'file-scope rdwindow declarations stay global, and top-level event handlers register against the global window instance'
        OutputMustContainAll = @(
            '__apo_gui_window render("render");',
            'std::string current = "sc1.png";',
            'render.on("KEYPRESS_w", [=]() mutable {',
            'current = "sc2.png";',
            'render.render("crr", current, 100, 100);'
        )
    },
    [pscustomobject]@{
        Name = 'whole-program-gc-heap-surface'
        Path = 'tests\grammar\pass\whole_program_gc_heap_surface.apollo'
        ShouldPass = $true
        Covers = '#[gcmode(total)] reroutes the existing percent-prefixed unsafe malloc/new/free sugar through GC-managed allocation and suppresses manual free/delete lowering'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_autofmt_owner_runtime.hpp"',
            'GC_INIT();',
            'void* raw = GC_MALLOC(sizeof(std::int32_t));',
            'std::int32_t* value = new (GC_MALLOC(sizeof(std::int32_t))) std::int32_t(4);',
            '(void)value;',
            '(void)raw;'
        )
    },
    [pscustomobject]@{
        Name = 'whole-program-gc-value-surface'
        Path = 'tests\grammar\pass\whole_program_gc_value_surface.apollo'
        ShouldPass = $true
        Covers = '#[gcmode(total)] lifts ordinary non-primitive Apollo values onto the whole-program managed-handle runtime with automatic root tracking'
        OutputMustContainAll = @(
            'static __apo_autofmt_owner __apo_total_gc_owner;',
            '__apo_gc_handle<apo_Box> shared = __apo_total_gc_owner.make<apo_Box>(apo_Box{});',
            '__apo_gc_root_slot<apo_Box> __apo_autofmt_root_shared_',
            '__apo_gc_handle<apo_Box> local = __apo_total_gc_owner.make<apo_Box>(apo_Box{});',
            '__apo_gc_handle<apo_Box> inferred = __apo_total_gc_owner.make<apo_Box>(apo_Box{});',
            '__apo_gc_handle<apo_Box> direct = __apo_total_gc_owner.make<apo_Box>(apo_Box{});',
            'local->bump();',
            'inferred->bump();',
            'direct->bump();',
            'shared->bump();'
        )
    },
    [pscustomobject]@{
        Name = 'status-file-surface'
        Path = 'tests\grammar\pass\status_file_surface.apollo'
        ShouldPass = $true
        Covers = 'isc lowers success and cerr helpers, autocatch lowers runtime error handling, and file uses runtime-backed open/read/write/close helpers'
        OutputMustContainAll = @(
            'struct __apo_isc {',
            'struct __apo_file {',
            '__apo_file handle = __apo_file::open("output/status_file.txt", "w");',
            'return __apo_isc::error("disk full", true);',
            'const std::string& err = status.message;',
            'if (status.terminal) return status;',
            'return __apo_isc::success();'
        )
    },
    [pscustomobject]@{
        Name = 'fopen-alias-surface'
        Path = 'tests\grammar\pass\fopen_alias_surface.apollo'
        ShouldPass = $true
        Covers = 'fopen lowers to the file runtime with write-mode defaulting and fclose lowers to close on file values'
        OutputMustContainAll = @(
            'struct __apo_file {',
            'const __apo_file out = __apo_file::open("test.txt", "w");',
            'out.write("Hello, world");',
            'out.close();'
        )
    },
    [pscustomobject]@{
        Name = 'opstruct-runtime-surface'
        Path = 'tests\grammar\pass\opstruct_runtime_surface.apollo'
        ShouldPass = $true
        Covers = 'opstructs, typedef opstruct aliases, typedef opstruct DSL sessions, dynamic macro qualifiers, stdin expression captures, and runtime directives lower into runtime registration and typed value construction'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_runtime_extensions.hpp"',
            'struct apo_Packet {',
            'using apo_PacketAlias = apo_Packet;',
            'struct apo_cool {',
            'struct __inf {',
            '__apo_runtime_extensions::instance().set_policy("fallback", "allow");',
            '__apo_runtime_extensions::instance().set_policy("macro_mode", "runtime");',
            '__apo_runtime_extensions::instance().register_opstruct("Packet", {{"name", "std::string"}, {"size", "std::int32_t"}});',
            '__apo_runtime_extensions::instance().register_dynamic_macro("log_packet");',
            '__apo_runtime_extensions::instance().invoke_dynamic_macro("log_packet", [&]() { return log_packet(packet); })',
            'apo_PacketAlias packet = apo_PacketAlias{};',
            'apo_cool mycool{};',
            'std::getline(std::cin >> std::ws, __apo_stdin_0);'
        )
    },
    [pscustomobject]@{
        Name = 'cpp-fallback-allowed'
        Path = 'tests\grammar\pass\cpp_fallback_allowed.apollo'
        ShouldPass = $true
        Covers = 'fallback lowers unresolved non-blocked C++ calls through the runtime fallback wrapper when #[fallback(allow)] is active'
        OutputMustContainAll = @(
            '#include <cstdio>',
            '__apo_runtime_extensions::instance().set_policy("fallback", "allow");',
            '__apo_runtime_extensions::instance().unsafe_fallback_call("puts", [&]() { return puts("hello from fallback"); })'
        )
    },
    [pscustomobject]@{
        Name = 'cpp-fallback-unlisted'
        Path = 'tests\grammar\pass\cpp_fallback_unlisted.apollo'
        ShouldPass = $true
        Covers = 'fallback allows unresolved non-blocked C++ calls even when they are not predeclared in a fallback allowlist'
        OutputMustContainAll = @(
            '#include <cstdlib>',
            '__apo_runtime_extensions::instance().set_policy("fallback", "allow");',
            '__apo_runtime_extensions::instance().unsafe_fallback_call("atoi", [&]() { return atoi("7"); })'
        )
    },
    [pscustomobject]@{
        Name = 'typedef-opstruct-dsl'
        Path = 'tests\grammar\pass\typedef_opstruct_dsl.apollo'
        ShouldPass = $true
        Covers = 'typedef opstruct DSL bodies generate private state, phrase sessions, Apollo src payload execution, bracket captures, and expression-form stdin lowering'
        OutputMustContainAll = @(
            'struct apo_cool {',
            'struct __inf {',
            'apo_cool mycool{};',
            'std::getline(std::cin >> std::ws, __apo_stdin_0);',
            '__apo_executePayload(std::string("apollo\n") +'
        )
    },
    [pscustomobject]@{
        Name = 'typedef-opstruct-scope-surface'
        Path = 'tests\grammar\pass\typedef_opstruct_scope_surface.apollo'
        ShouldPass = $true
        Covers = 'typedef opstruct DSL instances can be initialized as ordinary declarations and used by later phrase statements within scope'
        OutputMustContainAll = @(
            'apo_cool mycool{};',
            'const std::string i = std::string("") + "sys.println(\"Hello, world\");";',
            '__apo_executePayload(std::string("apollo\n") +'
        )
    },
    [pscustomobject]@{
        Name = 'quoted-string-member-interpolation-surface'
        Path = 'tests\grammar\pass\quoted_string_member_interpolation_surface.apollo'
        ShouldPass = $true
        Covers = 'ordinary quoted strings with ${...} placeholders lower through string interpolation, including member access'
        OutputMustContainAll = @(
            'const apo_jjl rtx = apo_jjl{',
            'sys.println(std::string("") + __apo_to_string(rtx.q));'
        )
    },
    [pscustomobject]@{
        Name = 'memstruct-allocator-surface'
        Path = 'tests\grammar\pass\memstruct_allocator_surface.apollo'
        ShouldPass = $true
        Covers = 'allocator foundation lowers memstruct declarations, allocator traits, runtime registration, and .uses(...) construction metadata'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_memstruct_runtime.hpp"',
            'struct apo_Buffer {',
            'struct __apo_allocator_traits<apo_Buffer> {',
            '__apo_memstruct_runtime::instance().register_memstruct("Buffer", {{"size", "std::int32_t"}});',
            '__apo_memstruct_runtime::instance().materialize<apo_Buffer>(apo_Buffer{}, arena, "Buffer", "arena")'
        )
    },
    [pscustomobject]@{
        Name = 'scheduler-communal-surface'
        Path = 'tests\grammar\pass\scheduler_communal_surface.apollo'
        ShouldPass = $true
        Covers = 'scheduler/process runtime lowers communal type registration plus EEVF task and process lifecycle hooks on async and syscall surfaces'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_scheduler_eevf_runtime.hpp"',
            '__apo_scheduler_eevf_runtime::instance().register_communal_type("SharedState");',
            '__apo_scheduler_eevf_runtime::instance().note_task_launch("tick"); __apo_go_scheduler::instance().spawn([=]() mutable { __apo_scheduler_eevf_runtime::task_scope __apo_task_scope("tick"); tick(state); });',
            '__apo_scheduler_eevf_runtime::instance().run_process("syscall", [&]() { return __apo_executeQueuedPayload(false); });'
        )
    },
    [pscustomobject]@{
        Name = 'schedule-surface'
        Path = 'tests\grammar\pass\schedule_surface.apollo'
        ShouldPass = $true
        Covers = 'schedule declarations lower mandatory task helpers, schedule registration, instance start, inline insertion, and drain calls'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_scheduler_eevf_runtime.hpp"',
            'static void __apo_schedule_',
            '__apo_scheduler_eevf_runtime::instance().register_schedule("Pipeline", {{"heartbeat",',
            '__apo_schedule_instance runner = __apo_scheduler_eevf_runtime::instance().create_schedule_instance("Pipeline", "runner");',
            '__apo_scheduler_eevf_runtime::instance().start_schedule(runner, false);',
            '__apo_scheduler_eevf_runtime::instance().enqueue_schedule_task(runner, "heartbeat", static_cast<std::int32_t>(5), [&]() {',
            '__apo_scheduler_eevf_runtime::instance().schvoid(runner);'
        )
    },
    [pscustomobject]@{
        Name = 'runtime-surface'
        Path = 'tests\grammar\pass\runtime_surface.apollo'
        ShouldPass = $true
        Covers = 'threads, async calls, syscall, autoreleasepool, bridge init, unsafe blocks, malloc/free, plcnew, pointer aliasing, placement new, inline foreign C++, native override'
    },
    [pscustomobject]@{
        Name = 'bypass-surface'
        Path = 'tests\grammar\pass\bypass_surface.apollo'
        ShouldPass = $true
        Covers = 'bypass blocks allow raw memory operations and native escape hatches without borrow checking'
    },
    [pscustomobject]@{
        Name = 'autofmt-surface'
        Path = 'tests\grammar\pass\autofmt_surface.apollo'
        ShouldPass = $true
        Covers = 'autofmtdeclare owner scopes, automatic local tracking, explicit induct and release'
        OutputMustContainAll = @(
            '#include "runtime_support/apo_autofmt_owner_runtime.hpp"'
            '__apo_autofmt_owner __apo_autofmt_owner_0;'
            '__apo_gc_handle<apo_Box> __apo_autofmt_alias_value_0 = __apo_autofmt_owner_0.induct(std::move(value));'
            '__apo_gc_root_slot<apo_Box> __apo_autofmt_root_value_0(__apo_autofmt_owner_0, &__apo_autofmt_alias_value_0);'
            '__apo_gc_handle<apo_Box> inner = __apo_autofmt_owner_0.make<apo_Box>(apo_Box{});'
            'value = __apo_autofmt_owner_0.release(__apo_autofmt_alias_value_0);'
        )
    },
    [pscustomobject]@{
        Name = 'autofmt-reported-sample'
        Path = 'tests\grammar\pass\autofmt_reported_sample.apollo'
        ShouldPass = $true
        Covers = 'raw C++ declared type rewriting, primitive induction, unsafe interop, and inheritance remain compatible with autofmtdeclare'
    },
    [pscustomobject]@{
        Name = 'autofmt-template-trace'
        Path = 'tests\grammar\pass\autofmt_template_trace.apollo'
        ShouldPass = $true
        Covers = 'template owner-managed values emit trace helpers for autofmtdeclare GC lowering'
        OutputMustContain = 'inline void __apo_gc_trace_value(__apo_gc_tracer& tracer, const apo_Holder<T>& value)'
    },
    [pscustomobject]@{
        Name = 'raw-cpp-declared-types'
        Path = 'tests\grammar\pass\raw_cpp_declared_types.apollo'
        ShouldPass = $true
        Covers = 'raw C++ blocks can reference Apollo declared class names and pointer member access'
    },
    [pscustomobject]@{
        Name = 'inline-foreign-inl-runtime-surface'
        Path = 'tests\grammar\pass\inline_foreign_inl_runtime_surface.apollo'
        ShouldPass = $true
        Covers = 'inl alias parses and statement-position inline foreign blocks lower to callable runners with imported foreign bindings'
        OutputMustContainAll = @(
            '__apollo_inline_run_inline_10_9_1',
            '__apollo_inline_get_inline_2_5_0_foreign_value',
            'define void @main()',
            'call void @__apollo_inline_run_inline_10_9_1()'
        )
    },
    [pscustomobject]@{
        Name = 'import-include'
        Path = 'tests\grammar\pass\import_include.apollo'
        ShouldPass = $true
        Covers = 'extern {package.name}, header-path imports, dependency compilation'
    },
    [pscustomobject]@{
        Name = 'namespace-surface'
        Path = 'tests\grammar\pass\namespace_surface.apollo'
        ShouldPass = $true
        Covers = 'namespace blocks and dotted or scoped access are normalized before parse in the native frontend'
    },
    [pscustomobject]@{
        Name = 'extern-std-prelude-surface'
        Path = 'tests\grammar\pass\extern_std_prelude_surface.apollo'
        ShouldPass = $true
        Covers = 'extern std prelude expands Apollo stdlib modules from include and exposes sys namespace helpers'
    },
    [pscustomobject]@{
        Name = 'extern-std-scalar-surface'
        Path = 'tests\grammar\pass\extern_std_scalar_surface.apollo'
        ShouldPass = $true
        Covers = 'extern std prelude exposes native-backed scalar math, bit, parse, and string helpers through sys namespace'
    },
    [pscustomobject]@{
        Name = 'literal-shape-surface'
        Path = 'tests\grammar\pass\literal_shape_surface.apollo'
        ShouldPass = $true
        Covers = 'float, char, byte, bool, null, usize, and brace-shaped multi-value return types lower through the native frontend'
    },
    [pscustomobject]@{
        Name = 'tuple-option-surface'
        Path = 'tests\grammar\pass\tuple_option_surface.apollo'
        ShouldPass = $true
        Covers = 'tuple<T, ...> lowers as an explicit structural multi-value type and option<T>/option<T, cerr> lower through the tagged result path'
    },
    [pscustomobject]@{
        Name = 'host-portability-surface'
        Path = 'tests\grammar\pass\host_portability_surface.apollo'
        ShouldPass = $true
        Covers = 'portability helpers report the active host runtime correctly on both Windows and POSIX targets'
    },
    [pscustomobject]@{
        Name = 'process-runtime-surface'
        Path = 'tests\grammar\pass\process_runtime_surface.apollo'
        ShouldPass = $true
        Covers = 'process spawn, wait, try-wait, completion, exit code, and kill helpers run through the native runtime on Windows and POSIX'
    },
    [pscustomobject]@{
        Name = 'process-task-branch-surface'
        Path = 'tests\grammar\pass\process_task_branch_surface.apollo'
        ShouldPass = $true
        Covers = 'host-conditional process and task result paths lower and execute consistently across Windows and POSIX runtimes'
    },
    [pscustomobject]@{
        Name = 'all-pillars-surface'
        Path = 'tests\grammar\pass\all_pillars_surface.apollo'
        ShouldPass = $true
        Covers = 'nominal and cerr result values, opaque-handle stdlib objects, portability helpers, and the expanded sys prelude lower through the native frontend'
    },
    [pscustomobject]@{
        Name = 'stdlib-growth-surface'
        Path = 'tests\grammar\pass\stdlib_growth_surface.apollo'
        ShouldPass = $true
        Covers = 'expanded collections, filesystem, encoding, regex, random, time, and terminal-backed sys helpers lower through the std prelude'
    },
    [pscustomobject]@{
        Name = 'sync-surface'
        Path = 'tests\grammar\pass\sync_surface.apollo'
        ShouldPass = $true
        Covers = 'expanded task values plus mutex, channel, condvar, and thread utility helpers lower through the std prelude'
    },
    [pscustomobject]@{
        Name = 'fs-metadata-surface'
        Path = 'tests\grammar\pass\fs_metadata_surface.apollo'
        ShouldPass = $true
        Covers = 'expanded file creation, metadata, symlink, and path helper surfaces lower through the std prelude'
    },
    [pscustomobject]@{
        Name = 'data-surface'
        Path = 'tests\grammar\pass\data_surface.apollo'
        ShouldPass = $true
        Covers = 'hashing and lightweight JSON helpers lower through the std prelude'
    },
    [pscustomobject]@{
        Name = 'url-surface'
        Path = 'tests\grammar\pass\url_surface.apollo'
        ShouldPass = $true
        Covers = 'URL parsing and URL component helpers lower through the std prelude'
    },
    [pscustomobject]@{
        Name = 'unsafe-required'
        Path = 'tests\safety\fail\unsafe_required.apollo'
        ShouldPass = $false
        Expected = 'manual allocation is only allowed inside `@unsafe {}` blocks'
        Covers = 'unsafe-required malloc rule'
    },
    [pscustomobject]@{
        Name = 'inline-foreign-requires-unsafe'
        Path = 'tests\safety\fail\inline_foreign_requires_unsafe.apollo'
        ShouldPass = $false
        Expected = 'inline foreign code is only allowed inside `@unsafe {}` blocks'
        Covers = 'inline foreign blocks reuse the existing unsafe boundary enforcement'
    },
    [pscustomobject]@{
        Name = 'raw-pointer-signature'
        Path = 'tests\safety\fail\raw_pointer_signature.apollo'
        ShouldPass = $false
        Expected = 'raw pointer return types are not allowed in safe Apollo function signatures'
        Covers = 'raw pointer parameter and return rejection'
    },
    [pscustomobject]@{
        Name = 'move-after-move'
        Path = 'tests\safety\fail\move_after_move.apollo'
        ShouldPass = $false
        Expected = 'cannot use `first` after it has been moved'
        Covers = 'initial move checker'
    },
    [pscustomobject]@{
        Name = 'call-move-consumes-argument'
        Path = 'tests\safety\fail\call_move_consumes_argument.apollo'
        ShouldPass = $false
        Expected = 'cannot use `message` after it has been moved'
        Covers = 'by-value function calls move non-copy bindings at call sites'
    },
    [pscustomobject]@{
        Name = 'immutable-reassignment'
        Path = 'tests\safety\fail\immutable_reassignment.apollo'
        ShouldPass = $false
        Expected = 'cannot assign to immutable binding `value`'
        Covers = 'const bindings stay immutable'
    },
    [pscustomobject]@{
        Name = 'nconst-immutable-borrow-conflict'
        Path = 'tests\safety\fail\nconst_immutable_borrow_conflict.apollo'
        ShouldPass = $false
        Expected = 'cannot mutably borrow immutable binding `value`'
        Covers = 'nconst borrow syntax still rejects mutable borrows from immutable bindings'
    },
    [pscustomobject]@{
        Name = 'assign-while-shared-borrowed'
        Path = 'tests\safety\fail\assign_while_shared_borrowed.apollo'
        ShouldPass = $false
        Expected = 'cannot assign to `value` while it is still borrowed'
        Covers = 'shared borrows block mutation with standard const reference syntax'
    },
    [pscustomobject]@{
        Name = 'call-mutable-reference-conflict'
        Path = 'tests\safety\fail\call_mutable_reference_conflict.apollo'
        ShouldPass = $false
        Expected = 'cannot mutably borrow `value` while shared borrows are active'
        Covers = 'function calls honor mutable reference parameter borrowing rules'
    },
    [pscustomobject]@{
        Name = 'use-while-mutably-borrowed'
        Path = 'tests\safety\fail\use_while_mutably_borrowed.apollo'
        ShouldPass = $false
        Expected = 'cannot use `value` while it is mutably borrowed'
        Covers = 'exclusive mutable borrow enforcement'
    },
    [pscustomobject]@{
        Name = 'escaping-reference'
        Path = 'tests\safety\fail\escaping_reference.apollo'
        ShouldPass = $false
        Expected = 'cannot return a reference to local binding `local` because it does not live long enough'
        Covers = 'escaping reference rejection'
    },
    [pscustomobject]@{
        Name = 'reference-return-by-value-parameter'
        Path = 'tests\safety\fail\reference_return_by_value_parameter.apollo'
        ShouldPass = $false
        Expected = 'cannot return a reference to by-value parameter `value` because it does not live long enough'
        Covers = 'reference returns cannot point at by-value parameter storage'
    },
    [pscustomobject]@{
        Name = 'unsafe-move-after-move'
        Path = 'tests\safety\fail\unsafe_move_after_move.apollo'
        ShouldPass = $false
        Expected = 'cannot use `value` after it has been moved'
        Covers = 'unsafe blocks still enforce safe move semantics'
    },
    [pscustomobject]@{
        Name = 'autofmt-release-outside-scope'
        Path = 'tests\safety\fail\autofmt_release_outside_scope.apollo'
        ShouldPass = $false
        Expected = '`@release` is only valid inside `@autofmtdeclare {}` blocks'
        Covers = 'release directive must stay inside autofmtdeclare scopes'
    },
    [pscustomobject]@{
        Name = 'autofmt-return-without-release'
        Path = 'tests\safety\fail\autofmt_return_without_release.apollo'
        ShouldPass = $false
        Expected = 'cannot return owner-managed binding `value` from `@autofmtdeclare` scope without `@release value;`'
        Covers = 'owner-managed bindings cannot return without explicit release'
    },
    [pscustomobject]@{
        Name = 'autofmt-use-after-scope'
        Path = 'tests\safety\fail\autofmt_use_after_scope.apollo'
        ShouldPass = $false
        Expected = 'cannot use `value` after it has been moved'
        Covers = 'inducted bindings become moved if they leave autofmtdeclare scope unreleased'
    },
    [pscustomobject]@{
        Name = 'autofmt-indexed-store-escape'
        Path = 'tests\safety\fail\autofmt_indexed_store_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot store owner-managed binding `value` through indexed assignment without `@release value;`'
        Covers = 'owner-managed bindings cannot escape through indexed container writes'
    },
    [pscustomobject]@{
        Name = 'autofmt-async-escape'
        Path = 'tests\safety\fail\autofmt_async_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot pass owner-managed binding `value` across async call boundary without `@release value;`'
        Covers = 'owner-managed bindings cannot cross async boundaries without release'
    },
    [pscustomobject]@{
        Name = 'autofmt-thread-escape'
        Path = 'tests\safety\fail\autofmt_thread_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot pass owner-managed binding `value` across thread boundary without `@release value;`'
        Covers = 'owner-managed bindings cannot cross thread boundaries without release'
    },
    [pscustomobject]@{
        Name = 'autofmt-global-escape'
        Path = 'tests\safety\fail\autofmt_global_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot assign owner-managed binding `value` to global `saved` without `@release value;`'
        Covers = 'owner-managed bindings cannot be assigned to globals without release'
    },
    [pscustomobject]@{
        Name = 'autofmt-call-global-escape'
        Path = 'tests\safety\fail\autofmt_call_global_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot pass owner-managed binding `value` to `save` because it may assign the value to a global without `@release value;`'
        Covers = 'callee summaries reject owner-managed global escape through function calls'
    },
    [pscustomobject]@{
        Name = 'autofmt-lambda-capture'
        Path = 'tests\safety\fail\autofmt_lambda_capture.apollo'
        ShouldPass = $false
        Expected = 'lambda `useValue` cannot capture owner-managed binding `value` without `@release value;`'
        Covers = 'owner-managed bindings cannot be captured by lambdas while still owned by an autofmtdeclare scope'
    },
    [pscustomobject]@{
        Name = 'autofmt-cross-owner-assign'
        Path = 'tests\safety\fail\autofmt_cross_owner_assign.apollo'
        ShouldPass = $false
        Expected = 'cannot move owner-managed binding `outer` into binding `inner` owned by a different `@autofmtdeclare` scope'
        Covers = 'owner-managed bindings cannot move directly across nested autofmtdeclare owner scopes'
    },
    [pscustomobject]@{
        Name = 'reference-identity'
        Path = 'tests\safety\pass\reference_identity.apollo'
        ShouldPass = $true
        Covers = 'safe reference parameter and return path'
    },
    [pscustomobject]@{
        Name = 'reference-identity-call'
        Path = 'tests\safety\pass\reference_identity_call.apollo'
        ShouldPass = $true
        Covers = 'reference-return summaries support call-site reference bindings'
    },
    [pscustomobject]@{
        Name = 'reference-branch-same-origin-call'
        Path = 'tests\safety\pass\reference_branch_same_origin_call.apollo'
        ShouldPass = $true
        Covers = 'branchy reference-return helpers still work when every path resolves to the same parameter origin'
    },
    [pscustomobject]@{
        Name = 'shared-reference'
        Path = 'tests\safety\pass\shared_reference.apollo'
        ShouldPass = $true
        Covers = 'shared borrow inference from const reference declarations and parameters'
    },
    [pscustomobject]@{
        Name = 'shared-borrow-last-use'
        Path = 'tests\safety\pass\shared_borrow_last_use.apollo'
        ShouldPass = $true
        Covers = 'shared borrows on local aliases end after their last use in the current block'
    },
    [pscustomobject]@{
        Name = 'mutable-borrow-last-use'
        Path = 'tests\safety\pass\mutable_borrow_last_use.apollo'
        ShouldPass = $true
        Covers = 'mutable borrows on local aliases end after their last use in the current block'
    },
    [pscustomobject]@{
        Name = 'branch-shared-borrow-split'
        Path = 'tests\safety\pass\branch_shared_borrow_split.apollo'
        ShouldPass = $true
        Covers = 'shared borrows on outer aliases can end on paths that do not use them before nested mutation'
    },
    [pscustomobject]@{
        Name = 'branch-mutable-borrow-split'
        Path = 'tests\safety\pass\branch_mutable_borrow_split.apollo'
        ShouldPass = $true
        Covers = 'mutable borrows on outer aliases can end on paths that do not use them before nested reads'
    },
    [pscustomobject]@{
        Name = 'branch-reference-rebind-dead-after-if'
        Path = 'tests\safety\pass\branch_reference_rebind_dead_after_if.apollo'
        ShouldPass = $true
        Covers = 'control-flow rebinds can diverge if the merged reference alias is dead after the branch'
    },
    [pscustomobject]@{
        Name = 'branch-reference-rebind-conflict'
        Path = 'tests\safety\fail\branch_reference_rebind_conflict.apollo'
        ShouldPass = $false
        Expected = 'cannot use reference binding `alias` after control-flow merge with incompatible borrow origins'
        Covers = 'outer reference aliases cannot be used after branch merges that rebind them to incompatible origins'
    },
    [pscustomobject]@{
        Name = 'reference-branch-ambiguous-call'
        Path = 'tests\safety\fail\reference_branch_ambiguous_call.apollo'
        ShouldPass = $false
        Expected = 'reference call `chooseEither` can return multiple parameter-backed origins in the current analysis'
        Covers = 'interprocedural reference summaries reject helpers whose return origin differs across paths'
    },
    [pscustomobject]@{
        Name = 'loop-reference-rebind-conflict'
        Path = 'tests\safety\fail\loop_reference_rebind_conflict.apollo'
        ShouldPass = $false
        Expected = 'cannot use reference binding `alias` after control-flow merge with incompatible borrow origins'
        Covers = 'outer reference aliases cannot be used after loop merges that may leave different borrow origins'
    },
    [pscustomobject]@{
        Name = 'bypass-move-after-move'
        Path = 'tests\safety\pass\bypass_move_after_move.apollo'
        ShouldPass = $true
        Covers = 'bypass blocks suppress borrow and move checking for enclosed statements'
    },
    [pscustomobject]@{
        Name = 'bridge-outside-pool'
        Path = 'tests\grammar\fail\bridge_outside_pool.apollo'
        ShouldPass = $false
        Expected = '@bridge is only valid inside @autoreleasepool blocks'
        Covers = 'bridgeInit placement rule'
    },
    [pscustomobject]@{
        Name = 'raw-pointer-global'
        Path = 'tests\grammar\fail\raw_pointer_global.apollo'
        ShouldPass = $false
        Expected = 'raw pointer globals are not allowed in safe Apollo code'
        Covers = 'global raw pointer rejection'
    },
    [pscustomobject]@{
        Name = 'raw-pointer-field'
        Path = 'tests\grammar\fail\raw_pointer_field.apollo'
        ShouldPass = $false
        Expected = 'raw pointer fields are not allowed in safe Apollo type definitions'
        Covers = 'field raw pointer rejection'
    },
    [pscustomobject]@{
        Name = 'cpp-fallback-blocked'
        Path = 'tests\grammar\fail\cpp_fallback_blocked.apollo'
        ShouldPass = $false
        Expected = 'fallback call to blocked symbol `system` is not allowed'
        Covers = 'denylist blocks unsafe fallback symbols even when fallback policy is enabled'
    },
    [pscustomobject]@{
        Name = 'typedef-opstruct-missing'
        Path = 'tests\grammar\fail\typedef_opstruct_missing.apollo'
        ShouldPass = $false
        Expected = 'typedef opstruct target `Missing` is not declared'
        Covers = 'typedef opstruct aliases require a declared opstruct target'
    },
    [pscustomobject]@{
        Name = 'unknown-runtime-directive'
        Path = 'tests\grammar\fail\unknown_runtime_directive.apollo'
        ShouldPass = $false
        Expected = 'unknown runtime directive `unknown`'
        Covers = 'rejects unsupported generic runtime directives'
    },
    [pscustomobject]@{
        Name = 'uses-requires-memstruct'
        Path = 'tests\grammar\fail\uses_requires_memstruct.apollo'
        ShouldPass = $false
        Expected = '.uses(...) is only valid on memstruct values'
        Covers = 'allocator binding stays restricted to memstruct values during foundation lowering'
    },
    [pscustomobject]@{
        Name = 'allocator-return-escape'
        Path = 'tests\grammar\fail\allocator_return_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot return allocator-backed value from this function because allocator `arena` does not live long enough'
        Covers = 'rejects returning allocator-backed memstruct values whose allocator dies in the current scope'
    },
    [pscustomobject]@{
        Name = 'allocator-async-escape'
        Path = 'tests\grammar\fail\allocator_async_escape.apollo'
        ShouldPass = $false
        Expected = 'cannot pass allocator-backed value across async call boundary because allocator `arena` does not live long enough'
        Covers = 'rejects sending allocator-backed memstruct values across async boundaries when the allocator is not stable'
    },
    [pscustomobject]@{
        Name = 'communal-outside-task'
        Path = 'tests\grammar\fail\communal_outside_task.apollo'
        ShouldPass = $false
        Expected = 'cannot access communal binding `state` outside scheduled task context'
        Covers = 'rejects communal field access outside async and thread scheduled task reachability'
    },
    [pscustomobject]@{
        Name = 'communal-requires-scheduler'
        Path = 'tests\grammar\fail\communal_requires_scheduler.apollo'
        ShouldPass = $false
        Expected = 'communal types require `#[scheduler(eevf)]`'
        Covers = 'requires explicit scheduler policy before communal type declarations are allowed'
    }
)

Build-NativeTooling

$phaseOrderResult = Invoke-CapturedProcess -FilePath $apolloRuntimeTestsExe
if ($phaseOrderResult.ExitCode -ne 0) {
    throw "Runtime phase order validation failed.`n$($phaseOrderResult.Output)"
}
Write-Host 'PASS runtime-phase-order :: runtime cycle registration order is stable'

$incrementalCacheResult = Invoke-CapturedProcess -FilePath $apolloDriverTestsExe
if ($incrementalCacheResult.ExitCode -ne 0) {
    throw "Incremental compile cache validation failed.`n$($incrementalCacheResult.Output)"
}
Write-Host 'PASS runtime-phase-failure-wrap :: unexpected runtime phase errors become Apollo diagnostics'
Write-Host 'PASS incremental-compile-cache :: unchanged sources reuse cached output and edits invalidate the cache'

$failures = New-Object System.Collections.Generic.List[string]
$passed = 0

foreach ($test in $tests) {
    $result = Invoke-ApolloCompile -Path $test.Path
    $ok = $false
    if ($test.ShouldPass) {
        $ok = $result.ExitCode -eq 0
    } else {
        $ok = $result.ExitCode -ne 0 -and $result.Output.Contains($test.Expected)
    }

    if ($expectLegacyCppOutput -and $ok -and $test.PSObject.Properties.Name -contains 'OutputMustContain') {
        $generatedOutput = if (Test-Path 'output.ll') { [string](Get-Content -Path 'output.ll' -Raw) } else { '' }
        $ok = $generatedOutput.Contains($test.OutputMustContain)
        if (-not $ok) {
            $result = [pscustomobject]@{
                ExitCode = $result.ExitCode
                Output = "Generated output did not contain expected text:`n$($test.OutputMustContain)"
            }
        }
    }

    if ($expectLegacyCppOutput -and $ok -and $test.PSObject.Properties.Name -contains 'OutputMustContainAll') {
        $generatedOutput = if (Test-Path 'output.ll') { [string](Get-Content -Path 'output.ll' -Raw) } else { '' }
        $missingOutputs = @($test.OutputMustContainAll | Where-Object { -not $generatedOutput.Contains($_) })
        $ok = $missingOutputs.Count -eq 0
        if (-not $ok) {
            $result = [pscustomobject]@{
                ExitCode = $result.ExitCode
                Output = "Generated output did not contain expected text:`n$($missingOutputs -join "`n")"
            }
        }
    }

    if ($ok) {
        $passed += 1
        Write-Host ("PASS {0} :: {1}" -f $test.Name, $test.Covers)
        continue
    }

    $message = @(
        "FAIL $($test.Name)",
        "Path: $($test.Path)",
        "Expected pass: $($test.ShouldPass)",
        "Observed exit: $($result.ExitCode)",
        "Coverage: $($test.Covers)",
        "Output:",
        $result.Output
    ) -join [Environment]::NewLine
    $failures.Add($message) | Out-Null
    Write-Host ("FAIL {0}" -f $test.Name)
}

Write-Host ("Summary: {0}/{1} tests passed" -f $passed, $tests.Count)

if ($failures.Count -gt 0) {
    Write-Host ''
    foreach ($failure in $failures) {
        Write-Host $failure
        Write-Host ''
    }
    exit 1
}

exit 0