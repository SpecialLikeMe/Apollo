#include "optimizer.h"

#include <system_error>

#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/OptimizationLevel.h"
#include "llvm/Analysis/CGSCCPassManager.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Transforms/Instrumentation/PGOInstrumentation.h"

namespace apollo::codegen {

namespace {

llvm::OptimizationLevel mapLevel(const OptConfig& cfg) {
    if (cfg.size_opt) {
        return llvm::OptimizationLevel::Os;
    }
    switch (cfg.level) {
        case 0: return llvm::OptimizationLevel::O0;
        case 1: return llvm::OptimizationLevel::O1;
        case 2: return llvm::OptimizationLevel::O2;
        case 3: return llvm::OptimizationLevel::O3;
        default: return llvm::OptimizationLevel::O2;
    }
}

} // namespace

bool runOptPipeline(llvm::Module& module, const OptConfig& cfg, std::string& err) {
    if (cfg.level <= 0 && !cfg.size_opt && !cfg.pgo_instrument && cfg.pgo_use_path.empty()) {
        // No-op at O0 with no PGO requested.
        return true;
    }

    if (!cfg.target_triple.empty()) {
        module.setTargetTriple(llvm::Triple(cfg.target_triple));
    }

    llvm::PipelineTuningOptions pto;
    pto.LoopUnrolling = (cfg.level >= 2);
    pto.LoopVectorization = (cfg.level >= 2);
    pto.SLPVectorization = (cfg.level >= 2);

    llvm::PassInstrumentationCallbacks pic;
    llvm::PassBuilder pb(/*TM=*/nullptr, pto, std::nullopt, &pic);

    llvm::LoopAnalysisManager lam;
    llvm::FunctionAnalysisManager fam;
    llvm::CGSCCAnalysisManager cgam;
    llvm::ModuleAnalysisManager mam;

    pb.registerModuleAnalyses(mam);
    pb.registerCGSCCAnalyses(cgam);
    pb.registerFunctionAnalyses(fam);
    pb.registerLoopAnalyses(lam);
    pb.crossRegisterProxies(lam, fam, cgam, mam);

    llvm::OptimizationLevel level = mapLevel(cfg);

    llvm::ModulePassManager mpm;
    auto buildBasePipeline = [&]() {
        if (cfg.lto) {
            return pb.buildThinLTOPreLinkDefaultPipeline(level);
        }
        return pb.buildPerModuleDefaultPipeline(level);
    };
    if (cfg.pgo_instrument) {
        // Preserve the requested optimization shape so PGO and ThinLTO can
        // compose instead of silently downgrading to the non-LTO pipeline.
        mpm = buildBasePipeline();
        llvm::ModulePassManager instPM;
        instPM.addPass(llvm::PGOInstrumentationGen());
        instPM.addPass(std::move(mpm));
        mpm = std::move(instPM);
    } else if (!cfg.pgo_use_path.empty()) {
        // Keep the LTO pre-link shape when requested so sampled profiles feed
        // the same pipeline the final linker expects.
        mpm = buildBasePipeline();
        llvm::ModulePassManager usePM;
        usePM.addPass(llvm::PGOInstrumentationUse(cfg.pgo_use_path));
        usePM.addPass(std::move(mpm));
        mpm = std::move(usePM);
    } else {
        mpm = buildBasePipeline();
    }

    mpm.run(module, mam);

    std::string verifyErr;
    llvm::raw_string_ostream vs(verifyErr);
    if (llvm::verifyModule(module, &vs)) {
        vs.flush();
        err = "post-opt verification failed: " + verifyErr;
        return false;
    }
    return true;
}

bool writeBitcode(llvm::Module& module, const std::string& path, const OptConfig& cfg, std::string& err) {
    std::error_code ec;
    llvm::raw_fd_ostream os(path, ec, llvm::sys::fs::OF_None);
    if (ec) {
        err = "failed to open bitcode output `" + path + "`: " + ec.message();
        return false;
    }
    llvm::WriteBitcodeToFile(module, os, /*ShouldPreserveUseListOrder=*/false,
        /*Index=*/nullptr, /*EmitSummaryIndex=*/cfg.lto);
    return true;
}

} // namespace apollo::codegen
