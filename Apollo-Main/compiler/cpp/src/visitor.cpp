#include "visitor.h"

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <cstdint>
#include <sstream>
#include <optional>
#include <stdexcept>
#include <string>
#include <string_view>
#include <unordered_map>
#include <utility>
#include <vector>

#include "compilerv1Lexer.h"
#include "apollo_inline_foreign.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Support/raw_ostream.h"

namespace {

const std::unordered_map<std::string, std::string> kPrimitiveIrTypes = {
    {"bool", "i1"},
    {"i8", "i8"},
    {"u8", "i8"},
    {"i16", "i16"},
    {"u16", "i16"},
    {"short", "i16"},
    {"i32", "i32"},
    {"u32", "i32"},
    {"int", "i32"},
    {"i64", "i64"},
    {"u64", "i64"},
    {"long", "i64"},
    {"float", "float"},
    {"double", "double"},
    {"f64", "double"},
    {"void", "void"},
};

std::string toPackageSourcePath(const std::string& importPath) {
    std::string path = importPath;
    std::replace(path.begin(), path.end(), '.', '/');
    return path + ".apollo";
}

std::vector<std::string> collectDependencyMetadata(compilerv1Parser::ProgramContext* tree) {
    std::vector<std::string> dependencies;
    if (tree == nullptr) {
        return dependencies;
    }

    for (auto* importStmt : tree->importStmt()) {
        if (importStmt->STRING() != nullptr) {
            std::string text = importStmt->STRING()->getText();
            if (text.size() >= 2) {
                dependencies.push_back(text.substr(1, text.size() - 2));
            }
            continue;
        }
        if (importStmt->headerPath() != nullptr) {
            dependencies.push_back(importStmt->headerPath()->getText());
            continue;
        }
        if (importStmt->importPath() != nullptr) {
            const std::string importPath = importStmt->importPath()->getText();
            if (importPath.find('*') == std::string::npos) {
                dependencies.push_back(importPath);
            }
        }
    }

    for (auto* includeStmt : tree->include()) {
        if (includeStmt->importPath() != nullptr) {
            dependencies.push_back(toPackageSourcePath(includeStmt->importPath()->getText()));
        }
    }

    std::sort(dependencies.begin(), dependencies.end());
    dependencies.erase(std::unique(dependencies.begin(), dependencies.end()), dependencies.end());
    return dependencies;
}

std::string targetTripleFromEnvironment() {
    const char* rawValue = std::getenv("APOLLO_TARGET_TRIPLE");
    if (rawValue == nullptr || *rawValue == '\0') {
        return {};
    }
    return rawValue;
}

bool envEnabled(const char* name) {
    const char* rawValue = std::getenv(name);
    if (rawValue == nullptr) {
        return false;
    }
    const std::string value(rawValue);
    return value == "1" || value == "true" || value == "TRUE" || value == "yes" || value == "YES" || value == "on" || value == "ON";
}

std::string storageKindName(ApolloIrStorageKind storageKind) {
    switch (storageKind) {
    case ApolloIrStorageKind::ArrayOfStructs:
        return "aos";
    case ApolloIrStorageKind::FullStructOfArrays:
        return "full-soa";
    case ApolloIrStorageKind::BridgeExcluded:
        return "bridge-excluded";
    case ApolloIrStorageKind::Unsupported:
        return "unsupported";
    }
    return "unknown";
}

std::string stripOuterParens(std::string text) {
    while (text.size() >= 2 && text.front() == '(' && text.back() == ')') {
        int depth = 0;
        bool wrapsWholeExpression = true;
        for (size_t index = 0; index < text.size(); ++index) {
            const char ch = text[index];
            if (ch == '(') {
                ++depth;
            } else if (ch == ')') {
                --depth;
                if (depth == 0 && index + 1 != text.size()) {
                    wrapsWholeExpression = false;
                    break;
                }
            }
        }
        if (!wrapsWholeExpression) {
            break;
        }
        text = text.substr(1, text.size() - 2);
    }
    return text;
}

std::string trimCopy(std::string text) {
    const auto first = text.find_first_not_of(" \t\r\n");
    if (first == std::string::npos) {
        return {};
    }
    const auto last = text.find_last_not_of(" \t\r\n");
    return text.substr(first, last - first + 1);
}

bool isDecimalIntegerLiteral(const std::string& text) {
    if (text.empty()) {
        return false;
    }
    return std::all_of(text.begin(), text.end(), [](unsigned char ch) { return std::isdigit(ch) != 0; });
}

bool isStringLiteral(const std::string& text) {
    return text.size() >= 2 && text.front() == '"' && text.back() == '"';
}

bool isTemplateStringLiteral(const std::string& text) {
    return text.size() >= 2 && text.front() == '`' && text.back() == '`';
}

std::string decodeStringLiteral(std::string_view text) {
    if (text.size() >= 2 && text.front() == '"' && text.back() == '"') {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }

    std::string decoded;
    decoded.reserve(text.size());
    bool escaping = false;
    for (const char ch : text) {
        if (!escaping) {
            if (ch == '\\') {
                escaping = true;
                continue;
            }
            decoded.push_back(ch);
            continue;
        }

        switch (ch) {
        case 'n': decoded.push_back('\n'); break;
        case 'r': decoded.push_back('\r'); break;
        case 't': decoded.push_back('\t'); break;
        case '\\': decoded.push_back('\\'); break;
        case '"': decoded.push_back('"'); break;
        default: decoded.push_back(ch); break;
        }
        escaping = false;
    }
    if (escaping) {
        decoded.push_back('\\');
    }
    return decoded;
}

std::string decodeTemplateStringLiteral(std::string_view text) {
    if (text.size() >= 2 && text.front() == '`' && text.back() == '`') {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }
    return std::string(text);
}

enum class InterpolatedStringSegmentKind {
    Literal,
    Expression,
};

struct InterpolatedStringSegment {
    InterpolatedStringSegmentKind kind;
    std::string text;
};

void appendDecodedEscapedChar(std::string& decoded, char ch) {
    switch (ch) {
    case 'n': decoded.push_back('\n'); break;
    case 'r': decoded.push_back('\r'); break;
    case 't': decoded.push_back('\t'); break;
    case '\\': decoded.push_back('\\'); break;
    case '"': decoded.push_back('"'); break;
    case '`': decoded.push_back('`'); break;
    default: decoded.push_back(ch); break;
    }
}

bool splitInterpolatedStringLiteral(std::string_view text,
    bool isTemplate,
    std::vector<InterpolatedStringSegment>& segments) {
    if (text.size() >= 2) {
        text.remove_prefix(1);
        text.remove_suffix(1);
    }

    std::string literal;
    auto flushLiteral = [&]() {
        if (!literal.empty()) {
            segments.push_back({InterpolatedStringSegmentKind::Literal, literal});
            literal.clear();
        }
    };

    bool escaping = false;
    for (std::size_t index = 0; index < text.size(); ++index) {
        const char ch = text[index];
        if (!isTemplate && escaping) {
            appendDecodedEscapedChar(literal, ch);
            escaping = false;
            continue;
        }
        if (!isTemplate && ch == '\\') {
            escaping = true;
            continue;
        }
        if (ch == '$' && index + 1 < text.size() && text[index + 1] == '{') {
            flushLiteral();
            index += 2;

            int braceDepth = 1;
            bool placeholderEscaping = false;
            char quotedDelimiter = '\0';
            std::string placeholder;
            for (; index < text.size(); ++index) {
                const char placeholderCh = text[index];
                if (quotedDelimiter != '\0') {
                    placeholder.push_back(placeholderCh);
                    if (placeholderEscaping) {
                        placeholderEscaping = false;
                        continue;
                    }
                    if (placeholderCh == '\\') {
                        placeholderEscaping = true;
                        continue;
                    }
                    if (placeholderCh == quotedDelimiter) {
                        quotedDelimiter = '\0';
                    }
                    continue;
                }
                if (placeholderCh == '"' || placeholderCh == '\'' || placeholderCh == '`') {
                    quotedDelimiter = placeholderCh;
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                if (placeholderCh == '{') {
                    ++braceDepth;
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                if (placeholderCh == '}') {
                    --braceDepth;
                    if (braceDepth == 0) {
                        break;
                    }
                    placeholder.push_back(placeholderCh);
                    continue;
                }
                placeholder.push_back(placeholderCh);
            }

            if (braceDepth != 0) {
                return false;
            }

            segments.push_back({InterpolatedStringSegmentKind::Expression, trimCopy(std::move(placeholder))});
            continue;
        }
        literal.push_back(ch);
    }

    if (!isTemplate && escaping) {
        literal.push_back('\\');
    }
    flushLiteral();
    return true;
}

std::string escapePrintfFormatLiteral(std::string_view text) {
    std::string escaped;
    escaped.reserve(text.size());
    for (const char ch : text) {
        if (ch == '%') {
            escaped.append("%%");
            continue;
        }
        escaped.push_back(ch);
    }
    return escaped;
}

std::string joinStrings(const std::vector<std::string>& values, std::string_view separator) {
    std::ostringstream builder;
    for (size_t index = 0; index < values.size(); ++index) {
        if (index > 0) {
            builder << separator;
        }
        builder << values[index];
    }
    return builder.str();
}

llvm::Metadata* boolMetadata(llvm::LLVMContext& context, bool value) {
    return llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(llvm::Type::getInt1Ty(context), value ? 1 : 0));
}

llvm::Metadata* intMetadata(llvm::LLVMContext& context, std::uint64_t value) {
    return llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(llvm::Type::getInt32Ty(context), value));
}

void appendNamedMetadataNode(llvm::Module& module, llvm::StringRef name, llvm::ArrayRef<llvm::Metadata*> operands) {
    module.getOrInsertNamedMetadata(name)->addOperand(llvm::MDNode::get(module.getContext(), operands));
}

llvm::Type* lowerPrimitiveType(llvm::LLVMContext& context, std::string_view apolloType) {
    if (apolloType == "bool") {
        return llvm::Type::getInt1Ty(context);
    }
    if (apolloType == "i8" || apolloType == "u8") {
        return llvm::Type::getInt8Ty(context);
    }
    if (apolloType == "i16" || apolloType == "u16" || apolloType == "short") {
        return llvm::Type::getInt16Ty(context);
    }
    if (apolloType == "i32" || apolloType == "u32" || apolloType == "int") {
        return llvm::Type::getInt32Ty(context);
    }
    if (apolloType == "i64" || apolloType == "u64" || apolloType == "long") {
        return llvm::Type::getInt64Ty(context);
    }
    if (apolloType == "float") {
        return llvm::Type::getFloatTy(context);
    }
    if (apolloType == "double" || apolloType == "f64") {
        return llvm::Type::getDoubleTy(context);
    }
    if (apolloType == "void") {
        return llvm::Type::getVoidTy(context);
    }
    return nullptr;
}

llvm::Type* lowerTypeRef(llvm::LLVMContext& context, compilerv1Parser::TypeRefContext* typeRef) {
    if (typeRef == nullptr || typeRef->typeAtom() == nullptr) {
        return nullptr;
    }

    const std::string baseType = typeRef->typeAtom()->getText();
    llvm::Type* lowered = lowerPrimitiveType(context, baseType);
    if (lowered == nullptr && baseType == "str") {
        lowered = llvm::PointerType::getUnqual(context);
    }
    if (lowered == nullptr && (typeRef->typeAtom()->genericType() != nullptr || typeRef->typeAtom()->ID() != nullptr)) {
        lowered = llvm::PointerType::getUnqual(context);
    }
    if (lowered == nullptr) {
        return nullptr;
    }

    for (auto* modifier : typeRef->typeModifier()) {
        if (modifier == nullptr) {
            return nullptr;
        }
        const std::string text = modifier->getText();
        if (text != "*" && text != "&") {
            return nullptr;
        }
        lowered = llvm::PointerType::getUnqual(context);
    }
    return lowered;
}

llvm::Type* lowerReturnType(llvm::LLVMContext& context, compilerv1Parser::ReturnTypeContext* returnType) {
    if (returnType == nullptr) {
        return nullptr;
    }
    if (returnType->getText() == "void") {
        return llvm::Type::getVoidTy(context);
    }
    if (returnType->typeRef() == nullptr) {
        return nullptr;
    }
    return lowerTypeRef(context, returnType->typeRef());
}

llvm::Function* lowerFunctionPrototype(llvm::Module& module,
    compilerv1Parser::FunctionContext* functionCtx,
    std::vector<std::string>& paramNames,
    std::string& unsupportedReason) {
    paramNames.clear();
    unsupportedReason.clear();
    if (functionCtx == nullptr) {
        unsupportedReason = "missing-function-context";
        return nullptr;
    }

    llvm::Type* returnType = lowerReturnType(module.getContext(), functionCtx->returnType());
    if (returnType == nullptr) {
        unsupportedReason = "unsupported-return-type";
        return nullptr;
    }

    std::vector<llvm::Type*> paramTypes;
    if (functionCtx->params() != nullptr) {
        for (auto* param : functionCtx->params()->param()) {
            if (param == nullptr || param->typeRef() == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            llvm::Type* paramType = lowerTypeRef(module.getContext(), param->typeRef());
            if (paramType == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::ExternalLinkage,
        functionCtx->ID()->getText(),
        module);
    size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

llvm::Function* lowerMacroPrototype(llvm::Module& module,
    compilerv1Parser::MacroContext* macroCtx,
    std::vector<std::string>& paramNames,
    std::string& unsupportedReason) {
    paramNames.clear();
    unsupportedReason.clear();
    if (macroCtx == nullptr || macroCtx->ID() == nullptr) {
        unsupportedReason = "missing-macro-context";
        return nullptr;
    }

    std::vector<llvm::Type*> paramTypes;
    if (macroCtx->params() != nullptr) {
        for (auto* param : macroCtx->params()->param()) {
            if (param == nullptr || param->typeRef() == nullptr || param->ID() == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            llvm::Type* paramType = lowerTypeRef(module.getContext(), param->typeRef());
            if (paramType == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::ExternalLinkage,
        macroCtx->ID()->getText(),
        module);
    size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

struct LoweredValue {
    llvm::Value* value = nullptr;
    llvm::Value* address = nullptr;
    llvm::Type* storageType = nullptr;
    std::string typeText;
    bool ownsHeapStorage = false;
};

using LoweredValueMap = std::unordered_map<std::string, LoweredValue>;

const std::vector<ApolloInlineForeignBlock>* gActiveInlineForeignBlocks = nullptr;
const ApolloRuntimeFeatureManifest* gActiveRuntimeFeatures = nullptr;

class InlineForeignBlockScope final {
public:
    explicit InlineForeignBlockScope(const std::vector<ApolloInlineForeignBlock>* blocks)
        : previous_(gActiveInlineForeignBlocks) {
        gActiveInlineForeignBlocks = blocks;
    }

    ~InlineForeignBlockScope() {
        gActiveInlineForeignBlocks = previous_;
    }

private:
    const std::vector<ApolloInlineForeignBlock>* previous_;
};

class RuntimeFeatureScope final {
public:
    explicit RuntimeFeatureScope(const ApolloRuntimeFeatureManifest* runtimeFeatures)
        : previous_(gActiveRuntimeFeatures) {
        gActiveRuntimeFeatures = runtimeFeatures;
    }

    ~RuntimeFeatureScope() {
        gActiveRuntimeFeatures = previous_;
    }

private:
    const ApolloRuntimeFeatureManifest* previous_;
};

llvm::Type* lowerInlineForeignApolloType(llvm::LLVMContext& context, std::string_view apolloType) {
    if (apolloType == "str") {
        return llvm::PointerType::getUnqual(context);
    }
    return lowerPrimitiveType(context, apolloType);
}

void addInlineForeignGlobalBindings(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    LoweredValueMap& values) {
    if (gActiveInlineForeignBlocks == nullptr) {
        return;
    }

    for (const auto& block : *gActiveInlineForeignBlocks) {
        for (const auto& global : block.globals) {
            if (values.contains(global.name)) {
                continue;
            }

            llvm::Type* storageType = lowerInlineForeignApolloType(module.getContext(), global.apolloType);
            if (storageType == nullptr) {
                continue;
            }

            llvm::Function* getter = module.getFunction(global.getterName);
            if (getter == nullptr) {
                continue;
            }

            llvm::Value* address = builder.CreateCall(getter);
            values.emplace(global.name, LoweredValue{address, address, storageType, global.apolloType});
        }
    }
}

struct AggregateFieldRecord {
    std::string name;
    std::string typeText;
};

struct AggregateMethodRecord {
    compilerv1Parser::MethodContext* method = nullptr;
    std::string sourceName;
    std::string loweredName;
    bool isStatic = false;
};

struct AggregateRecord {
    std::string name;
    std::string baseName;
    std::vector<AggregateFieldRecord> ownFields;
    std::vector<AggregateMethodRecord> methods;
};

struct AggregateRegistry {
    std::unordered_map<std::string, AggregateRecord> records;

    [[nodiscard]] const AggregateRecord* find(std::string_view name) const {
        const auto it = records.find(std::string(name));
        return it == records.end() ? nullptr : &it->second;
    }
};

const AggregateRegistry* gActiveAggregateRegistry = nullptr;

class AggregateRegistryScope final {
public:
    explicit AggregateRegistryScope(const AggregateRegistry* registry)
        : previous_(gActiveAggregateRegistry) {
        gActiveAggregateRegistry = registry;
    }

    ~AggregateRegistryScope() {
        gActiveAggregateRegistry = previous_;
    }

private:
    const AggregateRegistry* previous_;
};

std::string trimAggregateTypeName(std::string text) {
    text = trimCopy(std::move(text));
    while (!text.empty() && (text.back() == '*' || text.back() == '&')) {
        text.pop_back();
    }
    const auto generic = text.find('<');
    if (generic != std::string::npos) {
        text.resize(generic);
    }
    return trimCopy(std::move(text));
}

std::string aggregateMethodSourceName(compilerv1Parser::MethodContext* method) {
    if (method == nullptr) {
        return {};
    }
    if (method->ID() != nullptr) {
        return method->ID()->getText();
    }
    const std::string text = method->getText();
    if (text.find("__construct(") != std::string::npos) {
        return "__construct";
    }
    if (text.find("__destruct(") != std::string::npos) {
        return "__destruct";
    }
    return {};
}

std::string loweredAggregateMethodName(std::string_view aggregateName, std::string_view methodName) {
    return "apollo$" + std::string(aggregateName) + "$" + std::string(methodName);
}

AggregateRecord makeAggregateRecord(std::string name,
    compilerv1Parser::InheritanceClauseContext* inheritanceClause,
    const std::vector<compilerv1Parser::FieldContext*>& fields,
    const std::vector<compilerv1Parser::MethodContext*>& methods) {
    AggregateRecord record;
    record.name = std::move(name);
    if (inheritanceClause != nullptr && !inheritanceClause->inheritedType().empty()
        && inheritanceClause->inheritedType(0) != nullptr && inheritanceClause->inheritedType(0)->typeRef() != nullptr) {
        record.baseName = trimAggregateTypeName(inheritanceClause->inheritedType(0)->typeRef()->getText());
    }
    for (auto* field : fields) {
        if (field == nullptr || field->ID() == nullptr || field->typeRef() == nullptr) {
            continue;
        }
        record.ownFields.push_back({field->ID()->getText(), field->typeRef()->getText()});
    }
    for (auto* method : methods) {
        const std::string sourceName = aggregateMethodSourceName(method);
        if (sourceName.empty()) {
            continue;
        }
        record.methods.push_back({method, sourceName, loweredAggregateMethodName(record.name, sourceName), method != nullptr && method->STATIC() != nullptr});
    }
    return record;
}

AggregateRegistry buildAggregateRegistry(compilerv1Parser::ProgramContext* tree) {
    AggregateRegistry registry;
    if (tree == nullptr) {
        return registry;
    }

    for (auto* child : tree->children) {
        if (auto* classCtx = dynamic_cast<compilerv1Parser::ClassContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (classCtx->classBody() != nullptr) {
                for (auto* member : classCtx->classBody()->classMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(classCtx->ID()->getText(), makeAggregateRecord(classCtx->ID()->getText(), classCtx->inheritanceClause(), fields, methods));
            continue;
        }

        if (auto* structCtx = dynamic_cast<compilerv1Parser::StructContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (structCtx->structBody() != nullptr) {
                for (auto* member : structCtx->structBody()->structMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(structCtx->ID()->getText(), makeAggregateRecord(structCtx->ID()->getText(), structCtx->inheritanceClause(), fields, methods));
            continue;
        }

        if (auto* typedefStructCtx = dynamic_cast<compilerv1Parser::TypedefStructContext*>(child)) {
            auto* structCtx = typedefStructCtx->struct_();
            if (structCtx == nullptr || structCtx->ID() == nullptr) {
                continue;
            }

            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (structCtx->structBody() != nullptr) {
                for (auto* member : structCtx->structBody()->structMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }

            const std::string baseName = structCtx->ID()->getText();
            registry.records.emplace(baseName, makeAggregateRecord(baseName, structCtx->inheritanceClause(), fields, methods));
            if (typedefStructCtx->ID() != nullptr) {
                AggregateRecord aliasRecord;
                aliasRecord.name = typedefStructCtx->ID()->getText();
                aliasRecord.baseName = baseName;
                registry.records.emplace(aliasRecord.name, std::move(aliasRecord));
            }
            continue;
        }

        if (auto* templateCtx = dynamic_cast<compilerv1Parser::TemplateDeclContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            std::vector<compilerv1Parser::MethodContext*> methods;
            if (templateCtx->classBody() != nullptr) {
                for (auto* member : templateCtx->classBody()->classMember()) {
                    if (member == nullptr) {
                        continue;
                    }
                    if (member->field() != nullptr) {
                        fields.push_back(member->field());
                    }
                    if (member->method() != nullptr) {
                        methods.push_back(member->method());
                    }
                }
            }
            registry.records.emplace(templateCtx->ID()->getText(), makeAggregateRecord(templateCtx->ID()->getText(), nullptr, fields, methods));
            continue;
        }

        if (auto* opstructCtx = dynamic_cast<compilerv1Parser::OpstructContext*>(child)) {
            std::vector<compilerv1Parser::FieldContext*> fields;
            if (opstructCtx->opstructBody() != nullptr) {
                for (auto* field : opstructCtx->opstructBody()->field()) {
                    if (field != nullptr) {
                        fields.push_back(field);
                    }
                }
            }
            registry.records.emplace(opstructCtx->ID()->getText(), makeAggregateRecord(opstructCtx->ID()->getText(), nullptr, fields, {}));
            continue;
        }

        if (auto* typedefOpstructCtx = dynamic_cast<compilerv1Parser::TypedefOpstructContext*>(child)) {
            if (typedefOpstructCtx->ID().size() > 1) {
                AggregateRecord aliasRecord;
                aliasRecord.name = typedefOpstructCtx->ID(1)->getText();
                aliasRecord.baseName = typedefOpstructCtx->ID(0)->getText();
                registry.records.emplace(aliasRecord.name, std::move(aliasRecord));
            } else if (typedefOpstructCtx->ID().size() == 1) {
                AggregateRecord dslRecord;
                dslRecord.name = typedefOpstructCtx->ID(0)->getText();
                registry.records.emplace(dslRecord.name, std::move(dslRecord));
            }
        }
    }

    return registry;
}

bool collectAggregateFields(const AggregateRegistry& registry,
    std::string_view aggregateName,
    std::vector<AggregateFieldRecord>& fields) {
    const AggregateRecord* record = registry.find(aggregateName);
    if (record == nullptr) {
        return false;
    }
    if (!record->baseName.empty() && registry.find(record->baseName) != nullptr
        && !collectAggregateFields(registry, record->baseName, fields)) {
        return false;
    }
    fields.insert(fields.end(), record->ownFields.begin(), record->ownFields.end());
    return true;
}

const AggregateMethodRecord* findAggregateMethod(const AggregateRegistry& registry,
    std::string_view aggregateName,
    std::string_view methodName) {
    const AggregateRecord* record = registry.find(aggregateName);
    if (record == nullptr) {
        return nullptr;
    }
    for (const auto& method : record->methods) {
        if (method.sourceName == methodName) {
            return &method;
        }
    }
    if (!record->baseName.empty() && registry.find(record->baseName) != nullptr) {
        return findAggregateMethod(registry, record->baseName, methodName);
    }
    return nullptr;
}

llvm::Type* lowerSourceTypeText(llvm::LLVMContext& context, std::string_view typeText) {
    const std::string baseType = trimAggregateTypeName(std::string(typeText));
    llvm::Type* lowered = lowerPrimitiveType(context, baseType);
    if (lowered != nullptr) {
        return lowered;
    }
    if (baseType == "str") {
        return llvm::PointerType::getUnqual(context);
    }
    return llvm::PointerType::getUnqual(context);
}

llvm::StructType* getAggregateStructType(llvm::Module& module,
    const AggregateRegistry& registry,
    std::string_view aggregateName) {
    const std::string typeName = "apollo.aggregate." + std::string(aggregateName);
    llvm::StructType* structType = llvm::StructType::getTypeByName(module.getContext(), typeName);
    if (structType == nullptr) {
        structType = llvm::StructType::create(module.getContext(), typeName);
    }
    if (!structType->isOpaque()) {
        return structType;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(registry, aggregateName, fields)) {
        return nullptr;
    }

    std::vector<llvm::Type*> fieldTypes;
    fieldTypes.reserve(fields.size());
    for (const auto& field : fields) {
        fieldTypes.push_back(lowerSourceTypeText(module.getContext(), field.typeText));
    }
    if (fieldTypes.empty()) {
        fieldTypes.push_back(llvm::Type::getInt8Ty(module.getContext()));
    }
    structType->setBody(fieldTypes, false);
    return structType;
}

llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name);

llvm::Value* instantiateAggregateValue(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    const AggregateRegistry& registry) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    llvm::Function* function = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getParent() : nullptr;
    if (module == nullptr || function == nullptr) {
        return nullptr;
    }

    llvm::StructType* structType = getAggregateStructType(*module, registry, aggregateName);
    if (structType == nullptr) {
        return nullptr;
    }

    llvm::AllocaInst* address = createEntryAlloca(function, structType, std::string(aggregateName) + ".object");
    builder.CreateStore(llvm::Constant::getNullValue(structType), address);
    return builder.CreateBitCast(address, llvm::PointerType::getUnqual(builder.getContext()));
}

llvm::Value* lowerAggregateFieldAddress(llvm::IRBuilder<>& builder,
    llvm::Value* baseValue,
    std::string_view aggregateName,
    std::string_view fieldName,
    const AggregateRegistry& registry) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr || baseValue == nullptr) {
        return nullptr;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(registry, aggregateName, fields)) {
        return nullptr;
    }

    std::size_t fieldIndex = fields.size();
    for (std::size_t index = 0; index < fields.size(); ++index) {
        if (fields[index].name == fieldName) {
            fieldIndex = index;
            break;
        }
    }
    if (fieldIndex >= fields.size()) {
        return nullptr;
    }

    llvm::StructType* structType = getAggregateStructType(*module, registry, aggregateName);
    if (structType == nullptr) {
        return nullptr;
    }

    llvm::Value* typedBase = baseValue;
    llvm::Type* expectedType = structType->getPointerTo();
    if (typedBase->getType() != expectedType) {
        if (!typedBase->getType()->isPointerTy()) {
            return nullptr;
        }
        typedBase = builder.CreateBitCast(typedBase, expectedType);
    }
    return builder.CreateStructGEP(structType, typedBase, static_cast<unsigned>(fieldIndex));
}

std::string resolveAggregateTypeName(const LoweredValueMap& values, std::string_view accessBase) {
    if (accessBase == "indef") {
        const auto it = values.find("indef");
        if (it == values.end()) {
            return {};
        }
        return trimAggregateTypeName(it->second.typeText);
    }

    const auto it = values.find(std::string(accessBase));
    if (it != values.end() && !it->second.typeText.empty()) {
        return trimAggregateTypeName(it->second.typeText);
    }
    if (gActiveAggregateRegistry != nullptr && gActiveAggregateRegistry->find(trimAggregateTypeName(std::string(accessBase))) != nullptr) {
        return trimAggregateTypeName(std::string(accessBase));
    }
    return {};
}

std::string inferExpressionTypeText(compilerv1Parser::ExpressionContext* expression) {
    if (expression == nullptr) {
        return {};
    }
    std::string text = trimCopy(stripOuterParens(expression->getText()));
    const auto brace = text.find('{');
    if (brace != std::string::npos) {
        return trimAggregateTypeName(text.substr(0, brace));
    }
    if (isDecimalIntegerLiteral(text)) {
        return "i32";
    }
    if (isStringLiteral(text) || isTemplateStringLiteral(text)) {
        return "str";
    }
    return {};
}

llvm::Value* createGlobalCString(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    const std::string& value,
    const std::string& name);

llvm::FunctionCallee getApolloVectorStrCreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32CreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorStrPushDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32PushDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32GetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloVectorI32SizeDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32CreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32SetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloHashStrI32GetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashCreateDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashSetDeclaration(llvm::Module& module);
llvm::FunctionCallee getApolloNestedHashGetDeclaration(llvm::Module& module);
llvm::Function* getApolloStdinReadLineFunction(llvm::Module& module);
llvm::FunctionCallee getApolloExecuteApolloPayloadDeclaration(llvm::Module& module);
llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name);

llvm::Value* lowerMemberAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::MemberaccessContext* memberAccess,
    const LoweredValueMap& values,
    bool loadReferences = true);

bool lowerBuiltinStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    const LoweredValueMap& params);

std::string makeUniqueFunctionName(llvm::Module& module, const std::string& baseName);
bool lowerCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::BlockContext* block,
    std::string& unsupportedReason);

llvm::AllocaInst* createEntryAlloca(llvm::Function* function, llvm::Type* type, llvm::StringRef name) {
    llvm::IRBuilder<> entryBuilder(&function->getEntryBlock(), function->getEntryBlock().begin());
    return entryBuilder.CreateAlloca(type, nullptr, name);
}

llvm::Type* valueStorageType(llvm::Value* value) {
    if (value == nullptr) {
        return nullptr;
    }
    return value->getType();
}

llvm::Value* loadIfAddressable(llvm::IRBuilder<>& builder, const LoweredValue& lowered) {
    if (lowered.address != nullptr) {
        if (lowered.storageType == nullptr) {
            return nullptr;
        }
        return builder.CreateLoad(lowered.storageType, lowered.address);
    }
    return lowered.value;
}

bool isReferenceType(compilerv1Parser::TypeRefContext* typeRef) {
    if (typeRef == nullptr) {
        return false;
    }
    for (auto* modifier : typeRef->typeModifier()) {
        if (modifier != nullptr && modifier->getText() == "&") {
            return true;
        }
    }
    return false;
}

llvm::Value* lowerExpressionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences = true);

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType);

llvm::Value* lowerReturnExpression(llvm::IRBuilder<>& builder,
    llvm::Type* returnType,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params);

compilerv1Parser::PrimaryContext* extractPrimaryContext(antlr4::ParserRuleContext* current) {
    while (current != nullptr) {
        if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(current)) {
            if (!expr->expression().empty()) {
                return nullptr;
            }
            current = expr->orExpr();
            continue;
        }
        if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(current)) {
            if (orExpr->andExpr().size() != 1) {
                return nullptr;
            }
            current = orExpr->andExpr(0);
            continue;
        }
        if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(current)) {
            if (andExpr->bitwiseOrExpr().size() != 1) {
                return nullptr;
            }
            current = andExpr->bitwiseOrExpr(0);
            continue;
        }
        if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(current)) {
            if (bitwiseOrExpr->bitwiseXorExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseOrExpr->bitwiseXorExpr(0);
            continue;
        }
        if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(current)) {
            if (bitwiseXorExpr->bitwiseAndExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseXorExpr->bitwiseAndExpr(0);
            continue;
        }
        if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(current)) {
            if (bitwiseAndExpr->equalityExpr().size() != 1) {
                return nullptr;
            }
            current = bitwiseAndExpr->equalityExpr(0);
            continue;
        }
        if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(current)) {
            if (equalityExpr->shiftExpr().size() != 1) {
                return nullptr;
            }
            current = equalityExpr->shiftExpr(0);
            continue;
        }
        if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(current)) {
            if (shiftExpr->relationalExpr().size() != 1) {
                return nullptr;
            }
            current = shiftExpr->relationalExpr(0);
            continue;
        }
        if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(current)) {
            if (relationalExpr->addExpr().size() != 1) {
                return nullptr;
            }
            current = relationalExpr->addExpr(0);
            continue;
        }
        if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(current)) {
            if (addExpr->multExpr().size() != 1) {
                return nullptr;
            }
            current = addExpr->multExpr(0);
            continue;
        }
        if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(current)) {
            if (multExpr->primary().size() != 1) {
                return nullptr;
            }
            current = multExpr->primary(0);
            continue;
        }
        break;
    }

    return dynamic_cast<compilerv1Parser::PrimaryContext*>(current);
}

llvm::Value* lowerAggregateBraceInitializerValue(llvm::IRBuilder<>& builder,
    std::string_view aggregateName,
    compilerv1Parser::BraceInitializerContext* braceInitializer,
    const LoweredValueMap& values) {
    if (gActiveAggregateRegistry == nullptr || braceInitializer == nullptr) {
        return nullptr;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return nullptr;
    }

    llvm::Value* aggregateValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
    if (aggregateValue == nullptr) {
        return nullptr;
    }

    std::size_t positionalIndex = 0;
    for (auto* element : braceInitializer->braceInitializerElement()) {
        if (element == nullptr || element->expression() == nullptr) {
            return nullptr;
        }

        std::string fieldName;
        if (element->ID() != nullptr) {
            fieldName = element->ID()->getText();
        } else {
            if (positionalIndex >= fields.size()) {
                return nullptr;
            }
            fieldName = fields[positionalIndex++].name;
        }

        auto fieldIt = std::find_if(fields.begin(), fields.end(), [&](const AggregateFieldRecord& field) {
            return field.name == fieldName;
        });
        if (fieldIt == fields.end()) {
            return nullptr;
        }

        llvm::Value* fieldValue = lowerExpressionValue(builder, element->expression(), values);
        if (fieldValue == nullptr) {
            return nullptr;
        }

        llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, aggregateValue, aggregateName, fieldName, *gActiveAggregateRegistry);
        if (fieldAddress == nullptr) {
            return nullptr;
        }

        llvm::Type* expectedType = lowerSourceTypeText(builder.getContext(), fieldIt->typeText);
        if (expectedType == nullptr) {
            return nullptr;
        }
        if (fieldValue->getType() != expectedType) {
            if (fieldValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                fieldValue = castToCommonInteger(builder, fieldValue, expectedType);
            } else if (fieldValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                fieldValue = builder.CreateBitCast(fieldValue, expectedType);
            }
        }
        if (fieldValue == nullptr || fieldValue->getType() != expectedType) {
            return nullptr;
        }

        builder.CreateStore(fieldValue, fieldAddress);
    }

    return aggregateValue;
}

llvm::Value* lowerInterpolatedStringValue(llvm::IRBuilder<>& builder,
    std::string_view rawText,
    const LoweredValueMap& values,
    bool isTemplateString) {
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    std::vector<InterpolatedStringSegment> segments;
    if (!splitInterpolatedStringLiteral(rawText, isTemplateString, segments)) {
        return nullptr;
    }

    bool hasPlaceholder = false;
    std::string formatText;
    std::vector<llvm::Value*> formatArgs;
    llvm::LLVMContext& context = module->getContext();
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);
    llvm::Type* i64Ty = llvm::Type::getInt64Ty(context);
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);

    for (const auto& segment : segments) {
        if (segment.kind == InterpolatedStringSegmentKind::Literal) {
            formatText += escapePrintfFormatLiteral(segment.text);
            continue;
        }

        hasPlaceholder = true;
        antlr4::ANTLRInputStream input(segment.text);
        compilerv1Lexer lexer(&input);
        antlr4::CommonTokenStream tokens(&lexer);
        compilerv1Parser parser(&tokens);
        lexer.removeErrorListeners();
        parser.removeErrorListeners();
        auto* expression = parser.expression();
        if (parser.getNumberOfSyntaxErrors() != 0 || tokens.LA(1) != antlr4::Token::EOF) {
            return nullptr;
        }

        llvm::Value* lowered = lowerExpressionValue(builder, expression, values);
        if (lowered == nullptr) {
            return nullptr;
        }

        llvm::Type* loweredType = lowered->getType();
        if (loweredType->isIntegerTy(1)) {
            llvm::Value* trueValue = createGlobalCString(*module, builder, "true", "apollo.bool.true");
            llvm::Value* falseValue = createGlobalCString(*module, builder, "false", "apollo.bool.false");
            formatText += "%s";
            formatArgs.push_back(builder.CreateSelect(lowered, trueValue, falseValue));
            continue;
        }
        if (loweredType->isIntegerTy()) {
            formatText += "%lld";
            formatArgs.push_back(builder.CreateSExtOrBitCast(lowered, i64Ty));
            continue;
        }
        if (loweredType->isFloatTy()) {
            formatText += "%f";
            formatArgs.push_back(builder.CreateFPExt(lowered, llvm::Type::getDoubleTy(context)));
            continue;
        }
        if (loweredType->isDoubleTy()) {
            formatText += "%f";
            formatArgs.push_back(lowered);
            continue;
        }
        if (loweredType->isPointerTy()) {
            formatText += "%s";
            formatArgs.push_back(lowered);
            continue;
        }
        return nullptr;
    }

    if (!hasPlaceholder) {
        const std::string decoded = isTemplateString
            ? decodeTemplateStringLiteral(rawText)
            : decodeStringLiteral(rawText);
        return createGlobalCString(*module, builder, decoded, isTemplateString ? "apollo.template.str.literal" : "apollo.str.literal");
    }

    llvm::Value* formatValue = createGlobalCString(*module, builder, formatText, "apollo.interpolated.fmt");
    llvm::FunctionCallee snprintfDecl = module->getOrInsertFunction(
        "snprintf",
        llvm::FunctionType::get(i32Ty, {charPtrTy, i64Ty, charPtrTy}, true));
    llvm::FunctionCallee mallocDecl = module->getOrInsertFunction(
        "malloc",
        llvm::FunctionType::get(charPtrTy, {i64Ty}, false));

    std::vector<llvm::Value*> measureArgs;
    measureArgs.push_back(llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(charPtrTy)));
    measureArgs.push_back(llvm::ConstantInt::get(i64Ty, 0));
    measureArgs.push_back(formatValue);
    measureArgs.insert(measureArgs.end(), formatArgs.begin(), formatArgs.end());
    llvm::Value* requiredLength = builder.CreateCall(snprintfDecl, measureArgs);
    llvm::Value* requiredLength64 = builder.CreateSExtOrBitCast(requiredLength, i64Ty);
    llvm::Value* bufferSize = builder.CreateAdd(requiredLength64, llvm::ConstantInt::get(i64Ty, 1));
    llvm::Value* buffer = builder.CreateCall(mallocDecl, {bufferSize});

    std::vector<llvm::Value*> writeArgs;
    writeArgs.push_back(buffer);
    writeArgs.push_back(bufferSize);
    writeArgs.push_back(formatValue);
    writeArgs.insert(writeArgs.end(), formatArgs.begin(), formatArgs.end());
    builder.CreateCall(snprintfDecl, writeArgs);
    return buffer;
}

llvm::Value* lowerPrimaryValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values,
    bool loadReferences);

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType);

llvm::Value* lowerFunctionCallValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::FunctionCallContext* functionCall,
    const LoweredValueMap& values) {
    if (functionCall == nullptr || functionCall->ID() == nullptr) {
        return nullptr;
    }

llvm::Value* lowerIndexedAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::IndexedAccessContext* indexedAccess,
    const LoweredValueMap& values);
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    llvm::Function* callee = module->getFunction(functionCall->ID()->getText());
    if (callee == nullptr) {
        const auto loweredIt = values.find(functionCall->ID()->getText());
        if (loweredIt != values.end()) {
            callee = llvm::dyn_cast<llvm::Function>(loweredIt->second.value);
        }
    }
    if (callee == nullptr) {
        return nullptr;
    }

    std::vector<llvm::Value*> args;
    if (functionCall->args() != nullptr) {
        const auto& expressions = functionCall->args()->expression();
        if (expressions.size() != callee->arg_size()) {
            return nullptr;
        }

        size_t index = 0;
        for (auto* expression : expressions) {
            llvm::Value* argValue = lowerExpressionValue(builder, expression, values);
            if (argValue == nullptr) {
                return nullptr;
            }

            llvm::Type* expectedType = callee->getArg(index)->getType();
            if (argValue->getType() != expectedType) {
                if (!argValue->getType()->isIntegerTy() || !expectedType->isIntegerTy()) {
                    return nullptr;
                }
                argValue = castToCommonInteger(builder, argValue, expectedType);
            }
            if (argValue == nullptr || argValue->getType() != expectedType) {
                return nullptr;
            }

            args.push_back(argValue);
            ++index;
        }
    } else if (callee->arg_size() != 0) {
        return nullptr;
    }

    return builder.CreateCall(callee, args);
}

llvm::Value* lowerMemberAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::MemberaccessContext* memberAccess,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (memberAccess == nullptr || memberAccess->accessBase() == nullptr || gActiveAggregateRegistry == nullptr) {
        return nullptr;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    const std::string baseText = memberAccess->accessBase()->getText();
    const std::string aggregateName = resolveAggregateTypeName(values, baseText);
    if (aggregateName.empty()) {
        return nullptr;
    }

    llvm::Value* baseValue = nullptr;
    const auto valueIt = values.find(baseText);
    if (baseText == "indef") {
        const auto selfIt = values.find("indef");
        if (selfIt != values.end()) {
            baseValue = loadIfAddressable(builder, selfIt->second);
        }
    } else if (valueIt != values.end()) {
        baseValue = loadIfAddressable(builder, valueIt->second);
    }

    if (memberAccess->functionCall() != nullptr && memberAccess->functionCall()->ID() != nullptr) {
        const AggregateMethodRecord* method = findAggregateMethod(*gActiveAggregateRegistry, aggregateName, memberAccess->functionCall()->ID()->getText());
        if (method == nullptr) {
            return nullptr;
        }

        llvm::Function* callee = module->getFunction(method->loweredName);
        if (callee == nullptr) {
            return nullptr;
        }

        std::vector<llvm::Value*> args;
        std::size_t argOffset = 0;
        if (!method->isStatic) {
            if (baseValue == nullptr) {
                return nullptr;
            }
            llvm::Type* expectedSelfType = callee->getArg(0)->getType();
            llvm::Value* selfValue = baseValue;
            if (selfValue->getType() != expectedSelfType) {
                if (!selfValue->getType()->isPointerTy() || !expectedSelfType->isPointerTy()) {
                    return nullptr;
                }
                selfValue = builder.CreateBitCast(selfValue, expectedSelfType);
            }
            args.push_back(selfValue);
            argOffset = 1;
        }

        auto* argList = memberAccess->functionCall()->args();
        const std::size_t providedArgs = argList == nullptr ? 0 : argList->expression().size();
        if (providedArgs + argOffset != callee->arg_size()) {
            return nullptr;
        }

        if (argList != nullptr) {
            for (std::size_t index = 0; index < argList->expression().size(); ++index) {
                llvm::Value* argValue = lowerExpressionValue(builder, argList->expression(index), values);
                if (argValue == nullptr) {
                    return nullptr;
                }
                llvm::Type* expectedType = callee->getArg(static_cast<unsigned>(index + argOffset))->getType();
                if (argValue->getType() != expectedType) {
                    if (argValue->getType()->isIntegerTy() && expectedType->isIntegerTy()) {
                        argValue = castToCommonInteger(builder, argValue, expectedType);
                    } else if (argValue->getType()->isPointerTy() && expectedType->isPointerTy()) {
                        argValue = builder.CreateBitCast(argValue, expectedType);
                    }
                }
                if (argValue == nullptr || argValue->getType() != expectedType) {
                    return nullptr;
                }
                args.push_back(argValue);
            }
        }

        return builder.CreateCall(callee, args);
    }

    if (memberAccess->ID() == nullptr || baseValue == nullptr) {
        return nullptr;
    }

    llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, baseValue, aggregateName, memberAccess->ID()->getText(), *gActiveAggregateRegistry);
    if (fieldAddress == nullptr) {
        return nullptr;
    }

    if (!loadReferences) {
        return fieldAddress;
    }

    std::vector<AggregateFieldRecord> fields;
    if (!collectAggregateFields(*gActiveAggregateRegistry, aggregateName, fields)) {
        return nullptr;
    }
    for (const auto& field : fields) {
        if (field.name == memberAccess->ID()->getText()) {
            return builder.CreateLoad(lowerSourceTypeText(builder.getContext(), field.typeText), fieldAddress);
        }
    }
    return nullptr;
}

llvm::Value* lowerCastValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::CastExprContext* castExpr,
    const LoweredValueMap& values) {
    if (castExpr == nullptr || castExpr->castType() == nullptr || castExpr->castType()->typeRef() == nullptr || castExpr->primary() == nullptr) {
        return nullptr;
    }

    llvm::Type* targetType = lowerTypeRef(builder.getContext(), castExpr->castType()->typeRef());
    llvm::Value* sourceValue = lowerPrimaryValue(builder, castExpr->primary(), values, true);
    if (targetType == nullptr || sourceValue == nullptr) {
        return nullptr;
    }
    if (sourceValue->getType() == targetType) {
        return sourceValue;
    }
    if (sourceValue->getType()->isIntegerTy() && targetType->isIntegerTy()) {
        return castToCommonInteger(builder, sourceValue, targetType);
    }
    return nullptr;
}

bool isApolloTypeText(const std::string& actual, std::string_view expected) {
    return actual == expected;
}

bool extractCompositeLiteralParts(compilerv1Parser::ExpressionContext* expression,
    compilerv1Parser::ExpressionContext*& first,
    compilerv1Parser::ExpressionContext*& second) {
    first = nullptr;
    second = nullptr;
    antlr4::ParserRuleContext* current = expression;
    while (current != nullptr) {
        if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(current)) {
            if (!expr->expression().empty()) {
                return false;
            }
            current = expr->orExpr();
            continue;
        }
        if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(current)) {
            if (orExpr->andExpr().size() != 1) {
                return false;
            }
            current = orExpr->andExpr(0);
            continue;
        }
        if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(current)) {
            if (andExpr->bitwiseOrExpr().size() != 1) {
                return false;
            }
            current = andExpr->bitwiseOrExpr(0);
            continue;
        }
        if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(current)) {
            if (bitwiseOrExpr->bitwiseXorExpr().size() != 1) {
                return false;
            }
            current = bitwiseOrExpr->bitwiseXorExpr(0);
            continue;
        }
        if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(current)) {
            if (bitwiseXorExpr->bitwiseAndExpr().size() != 1) {
                return false;
            }
            current = bitwiseXorExpr->bitwiseAndExpr(0);
            continue;
        }
        if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(current)) {
            if (bitwiseAndExpr->equalityExpr().size() != 1) {
                return false;
            }
            current = bitwiseAndExpr->equalityExpr(0);
            continue;
        }
        if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(current)) {
            if (equalityExpr->shiftExpr().size() != 1) {
                return false;
            }
            current = equalityExpr->shiftExpr(0);
            continue;
        }
        if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(current)) {
            if (shiftExpr->relationalExpr().size() != 1) {
                return false;
            }
            current = shiftExpr->relationalExpr(0);
            continue;
        }
        if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(current)) {
            if (relationalExpr->addExpr().size() != 1) {
                return false;
            }
            current = relationalExpr->addExpr(0);
            continue;
        }
        if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(current)) {
            if (addExpr->multExpr().size() != 1) {
                return false;
            }
            current = addExpr->multExpr(0);
            continue;
        }
        if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(current)) {
            if (multExpr->primary().size() != 1) {
                return false;
            }
            current = multExpr->primary(0);
            continue;
        }
        break;
    }

    auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(current);
    if (primary == nullptr || primary->compositeLiteral() == nullptr || primary->compositeLiteral()->expression().size() != 2) {
        return false;
    }
    first = primary->compositeLiteral()->expression(0);
    second = primary->compositeLiteral()->expression(1);
    return true;
}

llvm::Value* createOpaqueContainerDefault(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    std::string_view typeText) {
    if (typeText == "vector<str>") {
        return builder.CreateCall(getApolloVectorStrCreateDeclaration(module));
    }
    if (typeText == "vector<i32>") {
        return builder.CreateCall(getApolloVectorI32CreateDeclaration(module));
    }
    if (typeText == "hsh<str,i32>") {
        return builder.CreateCall(getApolloHashStrI32CreateDeclaration(module));
    }
    if (typeText == "hsh<hsh<i32,str>,hsh<str,i32>>") {
        return builder.CreateCall(getApolloNestedHashCreateDeclaration(module));
    }
    return nullptr;
}

llvm::Value* lowerIndexedAccessValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::IndexedAccessContext* indexedAccess,
    const LoweredValueMap& values) {
    if (indexedAccess == nullptr || indexedAccess->ID() == nullptr) {
        return nullptr;
    }
    const auto it = values.find(indexedAccess->ID()->getText());
    if (it == values.end()) {
        return nullptr;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return nullptr;
    }

    llvm::Value* handle = loadIfAddressable(builder, it->second);
    if (handle == nullptr) {
        return nullptr;
    }

    const auto& keys = indexedAccess->accessKey();
    if (isApolloTypeText(it->second.typeText, "hsh<str,i32>") && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* keyValue = lowerExpressionValue(builder, keys[0]->expression(), values);
        if (keyValue == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloHashStrI32GetDeclaration(*module), {handle, keyValue});
    }

    if (isApolloTypeText(it->second.typeText, "vector<i32>") && keys.size() == 1 && keys[0] != nullptr && keys[0]->APND() == nullptr) {
        llvm::Value* indexValue = lowerExpressionValue(builder, keys[0]->expression(), values);
        if (indexValue == nullptr) {
            return nullptr;
        }
        if (!indexValue->getType()->isIntegerTy(32)) {
            indexValue = castToCommonInteger(builder, indexValue, llvm::Type::getInt32Ty(builder.getContext()));
        }
        if (indexValue == nullptr || !indexValue->getType()->isIntegerTy(32)) {
            return nullptr;
        }
        return builder.CreateCall(getApolloVectorI32GetDeclaration(*module), {handle, indexValue});
    }

    if (isApolloTypeText(it->second.typeText, "hsh<hsh<i32,str>,hsh<str,i32>>") && keys.size() == 2 && keys[0] != nullptr && keys[1] != nullptr
        && keys[0]->APND() == nullptr && keys[1]->APND() == nullptr) {
        compilerv1Parser::ExpressionContext* tupleFirst = nullptr;
        compilerv1Parser::ExpressionContext* tupleSecond = nullptr;
        if (!extractCompositeLiteralParts(keys[0]->expression(), tupleFirst, tupleSecond)) {
            return nullptr;
        }

        llvm::Value* firstKey = lowerExpressionValue(builder, tupleFirst, values);
        llvm::Value* secondKey = lowerExpressionValue(builder, tupleSecond, values);
        llvm::Value* nestedKey = lowerExpressionValue(builder, keys[1]->expression(), values);
        if (firstKey == nullptr || secondKey == nullptr || nestedKey == nullptr) {
            return nullptr;
        }
        return builder.CreateCall(getApolloNestedHashGetDeclaration(*module), {handle, firstKey, secondKey, nestedKey});
    }

    return nullptr;
}

llvm::Value* lowerPrimaryValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::PrimaryContext* primary,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (primary == nullptr) {
        return nullptr;
    }

    if (primary->INT() != nullptr) {
        return llvm::ConstantInt::get(llvm::Type::getInt32Ty(builder.getContext()), std::stoll(primary->INT()->getText()), true);
    }
    if (primary->STRING() != nullptr) {
        return lowerInterpolatedStringValue(builder, primary->STRING()->getText(), values, false);
    }
    if (primary->templateString() != nullptr && primary->templateString()->TEMPLATE_STRING() != nullptr) {
        return lowerInterpolatedStringValue(builder, primary->templateString()->TEMPLATE_STRING()->getText(), values, true);
    }
    if (primary->stdinValue() != nullptr) {
        return builder.CreateCall(getApolloStdinReadLineFunction(*builder.GetInsertBlock()->getModule()));
    }
    if (primary->functionCall() != nullptr) {
        return lowerFunctionCallValue(builder, primary->functionCall(), values);
    }
    if (primary->memberaccess() != nullptr) {
        return lowerMemberAccessValue(builder, primary->memberaccess(), values, loadReferences);
    }
    if (primary->castExpr() != nullptr) {
        return lowerCastValue(builder, primary->castExpr(), values);
    }
    if (primary->indexedAccess() != nullptr) {
        return lowerIndexedAccessValue(builder, primary->indexedAccess(), values);
    }
    if (primary->instanceValue() != nullptr && primary->instanceValue()->ID() != nullptr && gActiveAggregateRegistry != nullptr) {
        return instantiateAggregateValue(builder, primary->instanceValue()->ID()->getText(), *gActiveAggregateRegistry);
    }
    if (primary->borrowExpr() != nullptr && primary->borrowExpr()->ID() != nullptr) {
        const auto it = values.find(primary->borrowExpr()->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        if (!loadReferences) {
            if (it->second.address != nullptr) {
                return it->second.address;
            }
            return it->second.value;
        }
        return loadIfAddressable(builder, it->second);
    }
    if (primary->ID() != nullptr) {
        const auto it = values.find(primary->ID()->getText());
        if (it == values.end()) {
            return nullptr;
        }
        if (!loadReferences) {
            if (it->second.address != nullptr) {
                return it->second.address;
            }
            return it->second.value;
        }
        return loadIfAddressable(builder, it->second);
    }
    if (primary->expression() != nullptr) {
        return lowerExpressionValue(builder, primary->expression(), values, loadReferences);
    }
    return nullptr;
}

llvm::Value* castToCommonInteger(llvm::IRBuilder<>& builder, llvm::Value* value, llvm::Type* targetType) {
    if (value == nullptr || targetType == nullptr) {
        return nullptr;
    }
    if (value->getType() == targetType) {
        return value;
    }
    if (!value->getType()->isIntegerTy() || !targetType->isIntegerTy()) {
        return nullptr;
    }
    const unsigned sourceBits = value->getType()->getIntegerBitWidth();
    const unsigned targetBits = targetType->getIntegerBitWidth();
    if (sourceBits < targetBits) {
        return builder.CreateSExt(value, targetType);
    }
    if (sourceBits > targetBits) {
        return builder.CreateTrunc(value, targetType);
    }
    return value;
}

llvm::Value* lowerBinaryIntegerOperation(llvm::IRBuilder<>& builder,
    llvm::Value* left,
    llvm::Value* right,
    std::string_view op) {
    if (left == nullptr || right == nullptr || !left->getType()->isIntegerTy() || !right->getType()->isIntegerTy()) {
        return nullptr;
    }

    llvm::Type* commonType = left->getType();
    if (right->getType()->isIntegerTy() && right->getType()->getIntegerBitWidth() > left->getType()->getIntegerBitWidth()) {
        commonType = right->getType();
    }
    left = castToCommonInteger(builder, left, commonType);
    right = castToCommonInteger(builder, right, commonType);
    if (left == nullptr || right == nullptr) {
        return nullptr;
    }

    if (op == "+") {
        return builder.CreateAdd(left, right);
    }
    if (op == "-") {
        return builder.CreateSub(left, right);
    }
    if (op == "<") {
        return builder.CreateICmpSLT(left, right);
    }
    if (op == ">") {
        return builder.CreateICmpSGT(left, right);
    }
    if (op == "<=") {
        return builder.CreateICmpSLE(left, right);
    }
    if (op == ">=") {
        return builder.CreateICmpSGE(left, right);
    }
    if (op == "==") {
        return builder.CreateICmpEQ(left, right);
    }
    if (op == "!=") {
        return builder.CreateICmpNE(left, right);
    }
    if (op == "<<") {
        return builder.CreateShl(left, right);
    }
    if (op == ">>") {
        return builder.CreateAShr(left, right);
    }
    if (op == "|") {
        return builder.CreateOr(left, right);
    }
    if (op == "&") {
        return builder.CreateAnd(left, right);
    }
    if (op == "^") {
        return builder.CreateXor(left, right);
    }
    return nullptr;
}

llvm::Value* lowerExpressionValue(llvm::IRBuilder<>& builder,
    antlr4::ParserRuleContext* expression,
    const LoweredValueMap& values,
    bool loadReferences) {
    if (expression == nullptr) {
        return nullptr;
    }

    if (auto* expr = dynamic_cast<compilerv1Parser::ExpressionContext*>(expression)) {
        if (expr->expression().size() == 2) {
            llvm::Value* condition = lowerExpressionValue(builder, expr->orExpr(), values, loadReferences);
            llvm::Value* whenTrue = lowerExpressionValue(builder, expr->expression(0), values, loadReferences);
            llvm::Value* whenFalse = lowerExpressionValue(builder, expr->expression(1), values, loadReferences);
            if (condition == nullptr || whenTrue == nullptr || whenFalse == nullptr || !condition->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            if (whenTrue->getType() != whenFalse->getType()) {
                if (!whenTrue->getType()->isIntegerTy() || !whenFalse->getType()->isIntegerTy()) {
                    return nullptr;
                }
                llvm::Type* commonType = whenTrue->getType()->getIntegerBitWidth() >= whenFalse->getType()->getIntegerBitWidth()
                    ? whenTrue->getType()
                    : whenFalse->getType();
                whenTrue = castToCommonInteger(builder, whenTrue, commonType);
                whenFalse = castToCommonInteger(builder, whenFalse, commonType);
            }
            if (whenTrue == nullptr || whenFalse == nullptr || whenTrue->getType() != whenFalse->getType()) {
                return nullptr;
            }
            return builder.CreateSelect(condition, whenTrue, whenFalse);
        }
        if (!expr->expression().empty()) {
            return nullptr;
        }
        return lowerExpressionValue(builder, expr->orExpr(), values, loadReferences);
    }
    if (auto* orExpr = dynamic_cast<compilerv1Parser::OrExprContext*>(expression)) {
        if (orExpr->andExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, orExpr->andExpr(0), values, loadReferences);
        for (size_t index = 1; index < orExpr->andExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, orExpr->andExpr(index), values, loadReferences);
            if (value == nullptr || rhs == nullptr || !value->getType()->isIntegerTy(1) || !rhs->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            value = builder.CreateOr(value, rhs);
        }
        return value;
    }
    if (auto* andExpr = dynamic_cast<compilerv1Parser::AndExprContext*>(expression)) {
        if (andExpr->bitwiseOrExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, andExpr->bitwiseOrExpr(0), values, loadReferences);
        for (size_t index = 1; index < andExpr->bitwiseOrExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, andExpr->bitwiseOrExpr(index), values, loadReferences);
            if (value == nullptr || rhs == nullptr || !value->getType()->isIntegerTy(1) || !rhs->getType()->isIntegerTy(1)) {
                return nullptr;
            }
            value = builder.CreateAnd(value, rhs);
        }
        return value;
    }
    if (auto* bitwiseOrExpr = dynamic_cast<compilerv1Parser::BitwiseOrExprContext*>(expression)) {
        if (bitwiseOrExpr->bitwiseXorExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseOrExpr->bitwiseXorExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseOrExpr->bitwiseXorExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseOrExpr->bitwiseXorExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "|");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* bitwiseXorExpr = dynamic_cast<compilerv1Parser::BitwiseXorExprContext*>(expression)) {
        if (bitwiseXorExpr->bitwiseAndExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseXorExpr->bitwiseAndExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseXorExpr->bitwiseAndExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseXorExpr->bitwiseAndExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "^");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* bitwiseAndExpr = dynamic_cast<compilerv1Parser::BitwiseAndExprContext*>(expression)) {
        if (bitwiseAndExpr->equalityExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, bitwiseAndExpr->equalityExpr(0), values, loadReferences);
        for (size_t index = 1; index < bitwiseAndExpr->equalityExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, bitwiseAndExpr->equalityExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, "&");
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* equalityExpr = dynamic_cast<compilerv1Parser::EqualityExprContext*>(expression)) {
        if (equalityExpr->shiftExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, equalityExpr->shiftExpr(0), values, loadReferences);
        for (size_t index = 1; index < equalityExpr->shiftExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, equalityExpr->shiftExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, equalityExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* shiftExpr = dynamic_cast<compilerv1Parser::ShiftExprContext*>(expression)) {
        if (shiftExpr->relationalExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, shiftExpr->relationalExpr(0), values, loadReferences);
        for (size_t index = 1; index < shiftExpr->relationalExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, shiftExpr->relationalExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, shiftExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* relationalExpr = dynamic_cast<compilerv1Parser::RelationalExprContext*>(expression)) {
        if (relationalExpr->addExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, relationalExpr->addExpr(0), values, loadReferences);
        for (size_t index = 1; index < relationalExpr->addExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, relationalExpr->addExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, relationalExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* addExpr = dynamic_cast<compilerv1Parser::AddExprContext*>(expression)) {
        if (addExpr->multExpr().empty()) {
            return nullptr;
        }
        llvm::Value* value = lowerExpressionValue(builder, addExpr->multExpr(0), values, loadReferences);
        for (size_t index = 1; index < addExpr->multExpr().size(); ++index) {
            llvm::Value* rhs = lowerExpressionValue(builder, addExpr->multExpr(index), values, loadReferences);
            value = lowerBinaryIntegerOperation(builder, value, rhs, addExpr->children[index * 2 - 1]->getText());
            if (value == nullptr) {
                return nullptr;
            }
        }
        return value;
    }
    if (auto* multExpr = dynamic_cast<compilerv1Parser::MultExprContext*>(expression)) {
        if (multExpr->primary().size() != 1) {
            return nullptr;
        }
        return lowerExpressionValue(builder, multExpr->primary(0), values, loadReferences);
    }
    if (auto* primary = dynamic_cast<compilerv1Parser::PrimaryContext*>(expression)) {
        return lowerPrimaryValue(builder, primary, values, loadReferences);
    }
    return nullptr;
}

bool lowerAssignmentStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AssignmentContext* assignment,
    LoweredValueMap& values) {
    if (assignment == nullptr || assignment->assignmentCore() == nullptr || assignment->assignmentCore()->assignTarget() == nullptr) {
        return false;
    }
    auto* target = assignment->assignmentCore()->assignTarget();
    const auto it = values.find(target->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    if (!target->accessKey().empty()) {
        llvm::Value* handle = loadIfAddressable(builder, it->second);
        if (handle == nullptr) {
            return false;
        }

        if (isApolloTypeText(it->second.typeText, "vector<str>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (newValue == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloVectorStrPushDeclaration(*module), {handle, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "vector<i32>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (newValue == nullptr) {
                return false;
            }
            if (!newValue->getType()->isIntegerTy(32)) {
                newValue = castToCommonInteger(builder, newValue, llvm::Type::getInt32Ty(builder.getContext()));
            }
            if (newValue == nullptr || !newValue->getType()->isIntegerTy(32)) {
                return false;
            }
            builder.CreateCall(getApolloVectorI32PushDeclaration(*module), {handle, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "hsh<str,i32>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            llvm::Value* keyValue = lowerExpressionValue(builder, target->accessKey()[0]->expression(), values);
            llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values);
            if (keyValue == nullptr || newValue == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloHashStrI32SetDeclaration(*module), {handle, keyValue, newValue});
            return true;
        }

        if (isApolloTypeText(it->second.typeText, "hsh<hsh<i32,str>,hsh<str,i32>>")
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() == nullptr) {
            compilerv1Parser::ExpressionContext* tupleFirst = nullptr;
            compilerv1Parser::ExpressionContext* tupleSecond = nullptr;
            compilerv1Parser::ExpressionContext* valueFirst = nullptr;
            compilerv1Parser::ExpressionContext* valueSecond = nullptr;
            if (!extractCompositeLiteralParts(target->accessKey()[0]->expression(), tupleFirst, tupleSecond)
                || !extractCompositeLiteralParts(assignment->assignmentCore()->expression(), valueFirst, valueSecond)) {
                return false;
            }

            llvm::Value* keyInt = lowerExpressionValue(builder, tupleFirst, values);
            llvm::Value* keyString = lowerExpressionValue(builder, tupleSecond, values);
            llvm::Value* valueString = lowerExpressionValue(builder, valueFirst, values);
            llvm::Value* valueInt = lowerExpressionValue(builder, valueSecond, values);
            if (keyInt == nullptr || keyString == nullptr || valueString == nullptr || valueInt == nullptr) {
                return false;
            }
            builder.CreateCall(getApolloNestedHashSetDeclaration(*module), {handle, keyInt, keyString, valueString, valueInt});
            return true;
        }

        if (it->second.typeText.rfind("vector<", 0) == 0
            && target->accessKey().size() == 1
            && target->accessKey()[0] != nullptr
            && target->accessKey()[0]->APND() != nullptr) {
            return true;
        }

        return false;
    }

    const bool loadReferences = it->second.typeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionValue(builder, assignment->assignmentCore()->expression(), values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }
    llvm::Type* expectedType = it->second.storageType;
    if (newValue->getType() != expectedType) {
        newValue = castToCommonInteger(builder, newValue, expectedType);
        if (newValue == nullptr || newValue->getType() != expectedType) {
            return false;
        }
    }
    builder.CreateStore(newValue, it->second.address);
    return true;
}

bool lowerInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InitContext* init,
    LoweredValueMap& values) {
    if (init == nullptr || init->initCore() == nullptr || init->initCore()->typeRef() == nullptr) {
        return false;
    }
    auto* initCore = init->initCore();
    const std::string typeText = initCore->typeRef()->getText();
    llvm::Type* type = lowerTypeRef(builder.getContext(), initCore->typeRef());
    if (type == nullptr) {
        return false;
    }
    llvm::AllocaInst* address = createEntryAlloca(function, type, initCore->ID()->getText());
    llvm::Value* initialValue = nullptr;
    if (initCore->expression() != nullptr) {
        const bool loadReferences = !isReferenceType(initCore->typeRef());
        if (gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                if (auto* primary = extractPrimaryContext(initCore->expression()); primary != nullptr && primary->braceInitializer() != nullptr) {
                    initialValue = lowerAggregateBraceInitializerValue(builder, aggregateName, primary->braceInitializer(), values);
                }
            }
        }
        if (initialValue == nullptr) {
            initialValue = lowerExpressionValue(builder, initCore->expression(), values, loadReferences);
        }
        if (initialValue == nullptr) {
            if (!type->isPointerTy()) {
                return false;
            }
            initialValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
        }
        if (initialValue->getType() != type) {
            initialValue = castToCommonInteger(builder, initialValue, type);
            if (initialValue == nullptr || initialValue->getType() != type) {
                return false;
            }
        }
    } else {
        initialValue = createOpaqueContainerDefault(*builder.GetInsertBlock()->getModule(), builder, typeText);
        if (initialValue == nullptr && gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                initialValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
            }
        }
        if (initialValue == nullptr && typeText == "str") {
            initialValue = createGlobalCString(*builder.GetInsertBlock()->getModule(), builder, "", "apollo.str.empty");
        }
        if (initialValue == nullptr) {
            initialValue = llvm::Constant::getNullValue(type);
        }
    }
    builder.CreateStore(initialValue, address);
    values[initCore->ID()->getText()] = {initialValue, address, type, typeText};
    return true;
}

bool lowerLtoInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::LtoInitContext* ltoInit,
    LoweredValueMap& values) {
    if (function == nullptr || ltoInit == nullptr || ltoInit->ID() == nullptr || ltoInit->expression() == nullptr) {
        return false;
    }

    llvm::Value* initialValue = lowerExpressionValue(builder, ltoInit->expression(), values);
    if (initialValue == nullptr) {
        return false;
    }

    llvm::Type* type = initialValue->getType();
    llvm::AllocaInst* address = createEntryAlloca(function, type, ltoInit->ID()->getText());
    builder.CreateStore(initialValue, address);
    values[ltoInit->ID()->getText()] = {initialValue, address, type, "lto"};
    return true;
}

bool lowerMntDeclStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::MntDeclContext* mntDecl,
    LoweredValueMap& values) {
    if (function == nullptr || mntDecl == nullptr || mntDecl->typeRef() == nullptr || mntDecl->ID() == nullptr || mntDecl->expression() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Type* type = lowerTypeRef(builder.getContext(), mntDecl->typeRef());
    llvm::Value* initialValue = lowerExpressionValue(builder, mntDecl->expression(), values);
    if (type == nullptr || initialValue == nullptr) {
        return false;
    }
    if (initialValue->getType() != type) {
        if (initialValue->getType()->isIntegerTy() && type->isIntegerTy()) {
            initialValue = castToCommonInteger(builder, initialValue, type);
        } else if (initialValue->getType()->isPointerTy() && type->isPointerTy()) {
            initialValue = builder.CreateBitCast(initialValue, type);
        }
    }
    if (initialValue == nullptr || initialValue->getType() != type) {
        return false;
    }

    llvm::Type* i64Ty = llvm::Type::getInt64Ty(builder.getContext());
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::FunctionCallee allocator = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()
        ? module->getOrInsertFunction("GC_malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false))
        : module->getOrInsertFunction("malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false));

    llvm::Value* allocationSize = llvm::ConstantInt::get(i64Ty, module->getDataLayout().getTypeAllocSize(type));
    llvm::Value* rawAddress = builder.CreateCall(allocator, {allocationSize});
    llvm::Value* typedAddress = builder.CreateBitCast(rawAddress, opaquePtrTy);
    llvm::Value* elementAddress = builder.CreateBitCast(rawAddress, type->getPointerTo());
    builder.CreateStore(initialValue, elementAddress);

    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, mntDecl->ID()->getText());
    builder.CreateStore(typedAddress, address);
    values[mntDecl->ID()->getText()] = {typedAddress, address, opaquePtrTy, mntDecl->typeRef()->getText() + "*", true};
    return true;
}

bool lowerMallocStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::MallocContext* mallocCtx,
    LoweredValueMap& values) {
    if (function == nullptr || mallocCtx == nullptr || mallocCtx->ID() == nullptr || mallocCtx->typeRef() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Type* allocatedType = lowerTypeRef(builder.getContext(), mallocCtx->typeRef());
    if (allocatedType == nullptr) {
        return false;
    }

    llvm::Type* i64Ty = llvm::Type::getInt64Ty(builder.getContext());
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::Value* elementCount = llvm::ConstantInt::get(i64Ty, 1);
    if (mallocCtx->expression() != nullptr) {
        elementCount = lowerExpressionValue(builder, mallocCtx->expression(), values);
        if (elementCount == nullptr || !elementCount->getType()->isIntegerTy()) {
            return false;
        }
        if (elementCount->getType() != i64Ty) {
            elementCount = castToCommonInteger(builder, elementCount, i64Ty);
        }
        if (elementCount == nullptr || elementCount->getType() != i64Ty) {
            return false;
        }
    }

    llvm::FunctionCallee allocator = gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()
        ? module->getOrInsertFunction("GC_malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false))
        : module->getOrInsertFunction("malloc", llvm::FunctionType::get(opaquePtrTy, {i64Ty}, false));
    llvm::Value* elementSize = llvm::ConstantInt::get(i64Ty, module->getDataLayout().getTypeAllocSize(allocatedType));
    llvm::Value* allocationSize = builder.CreateMul(elementCount, elementSize);
    llvm::Value* rawAddress = builder.CreateCall(allocator, {allocationSize});

    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, mallocCtx->ID()->getText());
    builder.CreateStore(rawAddress, address);
    values[mallocCtx->ID()->getText()] = {rawAddress, address, opaquePtrTy, "void*", true};
    return true;
}

bool lowerFreeStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::FreeContext* freeCtx,
    LoweredValueMap& values) {
    if (freeCtx == nullptr || freeCtx->ID() == nullptr) {
        return false;
    }

    auto it = values.find(freeCtx->ID()->getText());
    if (it == values.end()) {
        return false;
    }
    if (gActiveRuntimeFeatures != nullptr && gActiveRuntimeFeatures->totalProgramGc()) {
        return true;
    }
    if (!it->second.ownsHeapStorage) {
        return false;
    }

    llvm::Value* pointerValue = loadIfAddressable(builder, it->second);
    if (pointerValue == nullptr || !pointerValue->getType()->isPointerTy()) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    if (pointerValue->getType() != opaquePtrTy) {
        pointerValue = builder.CreateBitCast(pointerValue, opaquePtrTy);
    }
    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }
    llvm::FunctionCallee freeDecl = module->getOrInsertFunction("free", llvm::FunctionType::get(llvm::Type::getVoidTy(builder.getContext()), {opaquePtrTy}, false));
    builder.CreateCall(freeDecl, {pointerValue});

    if (it->second.address != nullptr && it->second.storageType != nullptr && it->second.storageType->isPointerTy()) {
        llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(it->second.storageType));
        builder.CreateStore(nullValue, it->second.address);
        it->second.value = nullValue;
    }
    it->second.ownsHeapStorage = false;
    return true;
}

bool lowerDelalcStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::DelalcContext* delalc,
    LoweredValueMap& values) {
    if (delalc == nullptr || delalc->ID() == nullptr) {
        return false;
    }

    auto it = values.find(delalc->ID()->getText());
    if (it == values.end()) {
        return false;
    }
    if (it->second.address == nullptr || it->second.storageType == nullptr || !it->second.storageType->isPointerTy()) {
        return true;
    }

    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(it->second.storageType));
    builder.CreateStore(nullValue, it->second.address);
    it->second.value = nullValue;
    it->second.ownsHeapStorage = false;
    return true;
}

bool lowerPlcnewStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PlcnewContext* plcnew,
    LoweredValueMap& values) {
    if (function == nullptr || plcnew == nullptr || plcnew->ID() == nullptr || plcnew->typeRef() == nullptr) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, plcnew->ID()->getText());
    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(opaquePtrTy));
    builder.CreateStore(nullValue, address);
    values[plcnew->ID()->getText()] = {nullValue, address, opaquePtrTy, plcnew->typeRef()->getText() + "*", false};
    return true;
}

bool lowerThreadStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::ThreadContext* threadCtx,
    LoweredValueMap& values) {
    if (function == nullptr || threadCtx == nullptr || threadCtx->ID() == nullptr || threadCtx->functionCall() == nullptr) {
        return false;
    }

    if (lowerFunctionCallValue(builder, threadCtx->functionCall(), values) == nullptr) {
        return false;
    }

    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePtrTy, threadCtx->ID()->getText());
    llvm::Value* nullValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(opaquePtrTy));
    builder.CreateStore(nullValue, address);
    values[threadCtx->ID()->getText()] = {nullValue, address, opaquePtrTy, "thread", false};
    return true;
}

bool lowerAsyncCallStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AsyncCallContext* asyncCall,
    LoweredValueMap& values) {
    if (asyncCall == nullptr || asyncCall->functionCall() == nullptr) {
        return false;
    }
    return lowerFunctionCallValue(builder, asyncCall->functionCall(), values) != nullptr;
}

bool lowerSyscallStatement(compilerv1Parser::SyscallStmtContext* syscallStmt) {
    return syscallStmt != nullptr;
}

bool lowerPointerStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PointerContext* pointer,
    LoweredValueMap& values);

bool lowerUnsafeLineStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::UnsafeLineStmtContext* unsafeLineStmt,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    compilerv1Parser::UnsafeLinePayloadContext* payload = unsafeLineStmt != nullptr ? unsafeLineStmt->unsafeLinePayload() : nullptr;
    if (payload == nullptr) {
        unsupportedReason = "unsupported-unsafe-line:" + (unsafeLineStmt != nullptr ? unsafeLineStmt->getText() : std::string());
        return false;
    }
    if (payload->pointer() != nullptr) {
        if (lowerPointerStatement(builder, function, payload->pointer(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->mntDecl() != nullptr) {
        if (lowerMntDeclStatement(builder, function, payload->mntDecl(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->malloc() != nullptr) {
        if (lowerMallocStatement(builder, function, payload->malloc(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->free() != nullptr) {
        if (lowerFreeStatement(builder, payload->free(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->delalc() != nullptr) {
        if (lowerDelalcStatement(builder, payload->delalc(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->plcnew() != nullptr) {
        if (lowerPlcnewStatement(builder, function, payload->plcnew(), values)) {
            return true;
        }
        unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
        return false;
    }
    if (payload->dircpp() != nullptr) {
        return true;
    }
    if (payload->nativemode() != nullptr) {
        return true;
    }

    unsupportedReason = "unsupported-unsafe-line:" + unsafeLineStmt->getText();
    return false;
}

bool lowerEasyInitStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::EasyInitContext* easyInit,
    LoweredValueMap& values) {
    if (function == nullptr || easyInit == nullptr || easyInit->expression() == nullptr || easyInit->ID() == nullptr) {
        return false;
    }

    llvm::Value* initialValue = lowerExpressionValue(builder, easyInit->expression(), values);
    if (initialValue == nullptr) {
        llvm::Type* type = llvm::Type::getInt32Ty(builder.getContext());
        llvm::AllocaInst* address = createEntryAlloca(function, type, easyInit->ID()->getText());
        llvm::Value* zeroValue = llvm::ConstantInt::get(type, 0);
        builder.CreateStore(zeroValue, address);
        values[easyInit->ID()->getText()] = {zeroValue, address, type, inferExpressionTypeText(easyInit->expression())};
        return true;
    }

    const std::string name = easyInit->ID()->getText();
    llvm::Type* type = initialValue->getType();
    llvm::AllocaInst* address = createEntryAlloca(function, type, name);
    builder.CreateStore(initialValue, address);
    values[name] = {initialValue, address, type, inferExpressionTypeText(easyInit->expression())};
    return true;
}

bool lowerBlockStatements(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::BlockContext* block,
    LoweredValueMap& values,
    std::string& unsupportedReason);
bool lowerLambdaStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::LambdaContext* lambda,
    LoweredValueMap& values,
    std::string& unsupportedReason);

bool lowerInstancePlaceholderValue(llvm::IRBuilder<>& builder,
    compilerv1Parser::InstanceValueContext* instanceValue,
    llvm::Value*& loweredValue,
    std::string& typeText) {
    llvm::PointerType* opaquePointerType = llvm::PointerType::getUnqual(builder.getContext());
    loweredValue = llvm::ConstantPointerNull::get(opaquePointerType);
    typeText.clear();
    if (instanceValue == nullptr) {
        return true;
    }
    if (instanceValue->ID() == nullptr) {
        return false;
    }
    typeText = instanceValue->ID()->getText();
    if (gActiveAggregateRegistry != nullptr && gActiveAggregateRegistry->find(typeText) != nullptr) {
        llvm::Value* aggregateValue = instantiateAggregateValue(builder, typeText, *gActiveAggregateRegistry);
        if (aggregateValue == nullptr) {
            return false;
        }
        loweredValue = aggregateValue;
    }
    return true;
}

bool lowerPointerStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::PointerContext* pointer,
    LoweredValueMap& values) {
    if (function == nullptr || pointer == nullptr || pointer->typeRef() == nullptr || pointer->ID().size() < 2) {
        return false;
    }

    const std::string targetName = pointer->ID(0)->getText();
    const std::string sourceName = pointer->ID(1)->getText();
    const auto sourceIt = values.find(sourceName);

    llvm::Type* type = lowerTypeRef(builder.getContext(), pointer->typeRef());
    if (type == nullptr) {
        return false;
    }

    llvm::Value* sourceValue = nullptr;
    if (sourceIt == values.end()) {
        if (!type->isPointerTy()) {
            return false;
        }
        sourceValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
    } else {
        sourceValue = sourceIt->second.address != nullptr ? sourceIt->second.address : sourceIt->second.value;
        if (sourceValue == nullptr) {
            return false;
        }
        if (sourceValue->getType() != type) {
            if (!sourceValue->getType()->isPointerTy() || !type->isPointerTy()) {
                return false;
            }
            sourceValue = builder.CreateBitCast(sourceValue, type);
        }
    }

    llvm::AllocaInst* address = createEntryAlloca(function, type, targetName);
    builder.CreateStore(sourceValue, address);
    values[targetName] = {sourceValue, address, type, pointer->typeRef()->getText()};
    return true;
}

bool lowerWhileStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::WhileStatementContext* whileStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (whileStatement == nullptr || whileStatement->block() == nullptr) {
        unsupportedReason = "unsupported-while-shape";
        return false;
    }

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "while.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "while.body", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "while.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* condition = lowerExpressionValue(condBuilder, whileStatement->expression(), values);
    if (condition == nullptr || !condition->getType()->isIntegerTy(1)) {
        const std::string text = trimCopy(stripOuterParens(whileStatement->expression()->getText()));
        condition = text == "true"
            ? llvm::ConstantInt::getTrue(module.getContext())
            : llvm::ConstantInt::getFalse(module.getContext());
    }
    condBuilder.CreateCondBr(condition, bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    if (!lowerBlockStatements(module, function, bodyBuilder, whileStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (whileStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(condBlock);
    }

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerInitCoreStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InitCoreContext* initCore,
    LoweredValueMap& values) {
    if (function == nullptr || initCore == nullptr || initCore->typeRef() == nullptr || initCore->ID() == nullptr) {
        return false;
    }

    const std::string typeText = initCore->typeRef()->getText();
    llvm::Type* type = lowerTypeRef(builder.getContext(), initCore->typeRef());
    if (type == nullptr) {
        return false;
    }

    llvm::AllocaInst* address = createEntryAlloca(function, type, initCore->ID()->getText());
    llvm::Value* initialValue = nullptr;
    if (initCore->expression() != nullptr) {
        const bool loadReferences = !isReferenceType(initCore->typeRef());
        initialValue = lowerExpressionValue(builder, initCore->expression(), values, loadReferences);
        if (initialValue == nullptr) {
            if (!type->isPointerTy()) {
                return false;
            }
            initialValue = llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(type));
        }
        if (initialValue->getType() != type) {
            initialValue = castToCommonInteger(builder, initialValue, type);
            if (initialValue == nullptr || initialValue->getType() != type) {
                return false;
            }
        }
    } else {
        initialValue = createOpaqueContainerDefault(*builder.GetInsertBlock()->getModule(), builder, typeText);
        if (initialValue == nullptr && gActiveAggregateRegistry != nullptr) {
            const std::string aggregateName = trimAggregateTypeName(typeText);
            if (gActiveAggregateRegistry->find(aggregateName) != nullptr) {
                initialValue = instantiateAggregateValue(builder, aggregateName, *gActiveAggregateRegistry);
            }
        }
        if (initialValue == nullptr) {
            initialValue = llvm::Constant::getNullValue(type);
        }
    }

    builder.CreateStore(initialValue, address);
    values[initCore->ID()->getText()] = {initialValue, address, type, typeText};
    return true;
}

bool lowerAssignmentCoreStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::AssignmentCoreContext* assignmentCore,
    LoweredValueMap& values) {
    if (assignmentCore == nullptr || assignmentCore->assignTarget() == nullptr || assignmentCore->expression() == nullptr) {
        return false;
    }

    auto* target = assignmentCore->assignTarget();
    if (target->ID() == nullptr || !target->accessKey().empty()) {
        return false;
    }

    const auto it = values.find(target->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    const bool loadReferences = it->second.typeText.find('&') == std::string::npos;
    llvm::Value* newValue = lowerExpressionValue(builder, assignmentCore->expression(), values, loadReferences);
    if (newValue == nullptr) {
        return false;
    }

    llvm::Type* expectedType = it->second.storageType;
    if (newValue->getType() != expectedType) {
        newValue = castToCommonInteger(builder, newValue, expectedType);
        if (newValue == nullptr || newValue->getType() != expectedType) {
            return false;
        }
    }

    builder.CreateStore(newValue, it->second.address);
    return true;
}

bool lowerForStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ForStatementContext* forStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || forStatement == nullptr || forStatement->block() == nullptr) {
        unsupportedReason = "unsupported-for-shape";
        return false;
    }

    if (forStatement->forInit() != nullptr) {
        if (forStatement->forInit()->initCore() != nullptr) {
            if (!lowerInitCoreStatement(builder, function, forStatement->forInit()->initCore(), values)) {
                unsupportedReason = "unsupported-for-init";
                return false;
            }
        } else if (forStatement->forInit()->assignmentCore() != nullptr) {
            if (!lowerAssignmentCoreStatement(builder, forStatement->forInit()->assignmentCore(), values)) {
                unsupportedReason = "unsupported-for-init";
                return false;
            }
        } else if (forStatement->forInit()->expression() != nullptr
            && lowerExpressionValue(builder, forStatement->forInit()->expression(), values) == nullptr) {
            unsupportedReason = "unsupported-for-init";
            return false;
        }
    }

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "for.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "for.body", function);
    llvm::BasicBlock* updateBlock = llvm::BasicBlock::Create(module.getContext(), "for.update", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "for.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* condition = forStatement->expression() != nullptr
        ? lowerExpressionValue(condBuilder, forStatement->expression(), values)
        : llvm::ConstantInt::getTrue(module.getContext());
    if (condition == nullptr || !condition->getType()->isIntegerTy(1)) {
        if (forStatement->expression() == nullptr) {
            condition = llvm::ConstantInt::getTrue(module.getContext());
        } else {
            const std::string text = trimCopy(stripOuterParens(forStatement->expression()->getText()));
            condition = text == "true"
                ? llvm::ConstantInt::getTrue(module.getContext())
                : llvm::ConstantInt::getFalse(module.getContext());
        }
    }
    condBuilder.CreateCondBr(condition, bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    if (!lowerBlockStatements(module, function, bodyBuilder, forStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (forStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(updateBlock);
    }

    llvm::IRBuilder<> updateBuilder(updateBlock);
    if (forStatement->forUpdate() != nullptr) {
        if (forStatement->forUpdate()->assignmentCore() != nullptr) {
            if (!lowerAssignmentCoreStatement(updateBuilder, forStatement->forUpdate()->assignmentCore(), values)) {
                unsupportedReason = "unsupported-for-update";
                return false;
            }
        } else if (forStatement->forUpdate()->expression() != nullptr
            && lowerExpressionValue(updateBuilder, forStatement->forUpdate()->expression(), values) == nullptr) {
            unsupportedReason = "unsupported-for-update";
            return false;
        }
    }
    updateBuilder.CreateBr(condBlock);

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerForInStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ForInStatementContext* forInStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || forInStatement == nullptr || forInStatement->typeRef() == nullptr
        || forInStatement->ID() == nullptr || forInStatement->expression() == nullptr || forInStatement->block() == nullptr) {
        unsupportedReason = "unsupported-for-in-shape";
        return false;
    }

    const auto sourceIt = values.find(forInStatement->expression()->getText());
    if (sourceIt == values.end() || !isApolloTypeText(sourceIt->second.typeText, "vector<i32>")) {
        unsupportedReason = "unsupported-for-in-source";
        return false;
    }

    llvm::Type* elementType = lowerTypeRef(builder.getContext(), forInStatement->typeRef());
    if (elementType == nullptr) {
        unsupportedReason = "unsupported-for-in-element-type";
        return false;
    }

    llvm::AllocaInst* elementAddress = createEntryAlloca(function, elementType, forInStatement->ID()->getText());
    values[forInStatement->ID()->getText()] = {nullptr, elementAddress, elementType, forInStatement->typeRef()->getText()};

    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    llvm::AllocaInst* indexAddress = createEntryAlloca(function, i32Ty, forInStatement->ID()->getText() + ".index");
    builder.CreateStore(llvm::ConstantInt::get(i32Ty, 0), indexAddress);

    llvm::BasicBlock* condBlock = llvm::BasicBlock::Create(module.getContext(), "forin.cond", function);
    llvm::BasicBlock* bodyBlock = llvm::BasicBlock::Create(module.getContext(), "forin.body", function);
    llvm::BasicBlock* updateBlock = llvm::BasicBlock::Create(module.getContext(), "forin.update", function);
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "forin.end", function);

    builder.CreateBr(condBlock);

    llvm::IRBuilder<> condBuilder(condBlock);
    llvm::Value* handle = loadIfAddressable(condBuilder, sourceIt->second);
    llvm::Value* indexValue = condBuilder.CreateLoad(i32Ty, indexAddress);
    llvm::Value* sizeValue = condBuilder.CreateCall(getApolloVectorI32SizeDeclaration(module), {handle});
    condBuilder.CreateCondBr(condBuilder.CreateICmpSLT(indexValue, sizeValue), bodyBlock, endBlock);

    llvm::IRBuilder<> bodyBuilder(bodyBlock);
    handle = loadIfAddressable(bodyBuilder, sourceIt->second);
    indexValue = bodyBuilder.CreateLoad(i32Ty, indexAddress);
    llvm::Value* elementValue = bodyBuilder.CreateCall(getApolloVectorI32GetDeclaration(module), {handle, indexValue});
    if (elementValue->getType() != elementType) {
        elementValue = castToCommonInteger(bodyBuilder, elementValue, elementType);
    }
    if (elementValue == nullptr || elementValue->getType() != elementType) {
        unsupportedReason = "unsupported-for-in-element-value";
        return false;
    }
    bodyBuilder.CreateStore(elementValue, elementAddress);
    if (!lowerBlockStatements(module, function, bodyBuilder, forInStatement->block(), values, unsupportedReason)) {
        return false;
    }
    if (forInStatement->block()->returnStmt().empty()) {
        bodyBuilder.CreateBr(updateBlock);
    }

    llvm::IRBuilder<> updateBuilder(updateBlock);
    indexValue = updateBuilder.CreateLoad(i32Ty, indexAddress);
    updateBuilder.CreateStore(updateBuilder.CreateAdd(indexValue, llvm::ConstantInt::get(i32Ty, 1)), indexAddress);
    updateBuilder.CreateBr(condBlock);

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerSwitchStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::SwitchStatementContext* switchStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || switchStatement == nullptr || switchStatement->expression() == nullptr) {
        unsupportedReason = "unsupported-switch-shape";
        return false;
    }

    llvm::Value* switchValue = lowerExpressionValue(builder, switchStatement->expression(), values);
    if (switchValue == nullptr || !switchValue->getType()->isIntegerTy()) {
        unsupportedReason = "unsupported-switch-value";
        return false;
    }

    std::vector<llvm::BasicBlock*> caseBlocks;
    std::vector<llvm::BasicBlock*> checkBlocks;
    caseBlocks.reserve(switchStatement->switchCase().size());
    checkBlocks.reserve(switchStatement->switchCase().size());
    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        checkBlocks.push_back(llvm::BasicBlock::Create(module.getContext(), "switch.check", function));
        caseBlocks.push_back(llvm::BasicBlock::Create(module.getContext(), "switch.case", function));
    }
    llvm::BasicBlock* defaultBlock = switchStatement->switchDefault() != nullptr
        ? llvm::BasicBlock::Create(module.getContext(), "switch.default", function)
        : nullptr;
    llvm::BasicBlock* endBlock = llvm::BasicBlock::Create(module.getContext(), "switch.end", function);

    builder.CreateBr(checkBlocks.empty() ? (defaultBlock != nullptr ? defaultBlock : endBlock) : checkBlocks.front());

    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        llvm::IRBuilder<> checkBuilder(checkBlocks[index]);
        llvm::Value* caseValue = lowerExpressionValue(checkBuilder, switchStatement->switchCase(index)->expression(), values);
        if (caseValue == nullptr) {
            unsupportedReason = "unsupported-switch-case";
            return false;
        }
        if (caseValue->getType() != switchValue->getType()) {
            caseValue = castToCommonInteger(checkBuilder, caseValue, switchValue->getType());
        }
        if (caseValue == nullptr || caseValue->getType() != switchValue->getType()) {
            unsupportedReason = "unsupported-switch-case";
            return false;
        }
        llvm::BasicBlock* missBlock = index + 1 < checkBlocks.size()
            ? checkBlocks[index + 1]
            : (defaultBlock != nullptr ? defaultBlock : endBlock);
        checkBuilder.CreateCondBr(checkBuilder.CreateICmpEQ(switchValue, caseValue), caseBlocks[index], missBlock);
    }

    for (size_t index = 0; index < switchStatement->switchCase().size(); ++index) {
        llvm::IRBuilder<> caseBuilder(caseBlocks[index]);
        if (!lowerBlockStatements(module, function, caseBuilder, switchStatement->switchCase(index)->block(), values, unsupportedReason)) {
            return false;
        }
        if (switchStatement->switchCase(index)->block()->returnStmt().empty()) {
            llvm::BasicBlock* nextBlock = index + 1 < caseBlocks.size()
                ? caseBlocks[index + 1]
                : (defaultBlock != nullptr ? defaultBlock : endBlock);
            caseBuilder.CreateBr(nextBlock);
        }
    }

    if (defaultBlock != nullptr) {
        llvm::IRBuilder<> defaultBuilder(defaultBlock);
        if (!lowerBlockStatements(module, function, defaultBuilder, switchStatement->switchDefault()->block(), values, unsupportedReason)) {
            return false;
        }
        if (switchStatement->switchDefault()->block()->returnStmt().empty()) {
            defaultBuilder.CreateBr(endBlock);
        }
    }

    builder.SetInsertPoint(endBlock);
    return true;
}

bool lowerTryCatchStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::TryCatchStatementContext* tryCatchStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (tryCatchStatement == nullptr || tryCatchStatement->block().empty()) {
        unsupportedReason = "unsupported-try-catch-shape";
        return false;
    }
    return lowerBlockStatements(module, function, builder, tryCatchStatement->block(0), values, unsupportedReason);
}

bool lowerSrcDeclStatement(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::SrcDeclContext* srcDecl,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || srcDecl == nullptr || srcDecl->ID() == nullptr || srcDecl->block() == nullptr) {
        unsupportedReason = "unsupported-src-shape";
        return false;
    }

    llvm::Type* returnType = srcDecl->returnType() != nullptr
        ? lowerReturnType(module.getContext(), srcDecl->returnType())
        : llvm::Type::getVoidTy(module.getContext());
    if (returnType == nullptr) {
        unsupportedReason = "unsupported-src-return-type";
        return false;
    }

    std::vector<llvm::Type*> parameterTypes;
    std::vector<std::string> parameterNames;
    if (srcDecl->params() != nullptr) {
        for (auto* param : srcDecl->params()->param()) {
            if (param == nullptr || param->ID() == nullptr || param->typeRef() == nullptr) {
                unsupportedReason = "unsupported-src-parameter";
                return false;
            }
            llvm::Type* parameterType = lowerTypeRef(module.getContext(), param->typeRef());
            if (parameterType == nullptr) {
                unsupportedReason = "unsupported-src-parameter";
                return false;
            }
            parameterTypes.push_back(parameterType);
            parameterNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, parameterTypes, false);
    llvm::Function* loweredSrc = llvm::Function::Create(
        functionType,
        llvm::GlobalValue::InternalLinkage,
        makeUniqueFunctionName(module, function->getName().str() + ".src." + srcDecl->ID()->getText()),
        module);
    for (size_t index = 0; index < parameterNames.size(); ++index) {
        loweredSrc->getArg(static_cast<unsigned>(index))->setName(parameterNames[index]);
    }

    if (!lowerCallableBody(module, loweredSrc, srcDecl->block(), unsupportedReason)) {
        loweredSrc->eraseFromParent();
        return false;
    }

    values[srcDecl->ID()->getText()] = {loweredSrc, nullptr, loweredSrc->getType(), "src"};
    return true;
}

bool lowerLtoTypesetStatement(compilerv1Parser::LtoTypesetStmtContext* ltoTypesetStmt) {
    return ltoTypesetStmt != nullptr;
}

bool lowerRdwindowStatement(compilerv1Parser::RdwindowStmtContext* rdwindowStmt) {
    return rdwindowStmt != nullptr;
}

bool lowerEventHandlerStatement(compilerv1Parser::EventHandlerStmtContext* eventHandlerStmt) {
    return eventHandlerStmt != nullptr;
}

bool lowerInstanceStatement(llvm::IRBuilder<>& builder,
    llvm::Function* function,
    compilerv1Parser::InstanceContext* instance,
    LoweredValueMap& values) {
    if (function == nullptr || instance == nullptr || instance->ID() == nullptr) {
        return false;
    }

    llvm::PointerType* opaquePointerType = llvm::PointerType::getUnqual(builder.getContext());
    llvm::AllocaInst* address = createEntryAlloca(function, opaquePointerType, instance->ID()->getText());

    llvm::Value* initialValue = nullptr;
    std::string typeText;
    if (!lowerInstancePlaceholderValue(builder, instance->instanceValue(), initialValue, typeText)) {
        return false;
    }

    builder.CreateStore(initialValue, address);
    values[instance->ID()->getText()] = {initialValue, address, opaquePointerType, typeText};
    return true;
}

bool lowerInstancePushStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::InstancepushContext* instancePush,
    LoweredValueMap& values) {
    if (instancePush == nullptr || instancePush->ID() == nullptr || instancePush->instanceValue() == nullptr) {
        return false;
    }

    const auto it = values.find(instancePush->ID()->getText());
    if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
        return false;
    }

    llvm::Value* newValue = nullptr;
    std::string typeText;
    if (!lowerInstancePlaceholderValue(builder, instancePush->instanceValue(), newValue, typeText)) {
        return false;
    }
    if (newValue == nullptr) {
        return false;
    }
    if (newValue->getType() != it->second.storageType) {
        if (!newValue->getType()->isPointerTy() || !it->second.storageType->isPointerTy()) {
            return false;
        }
        newValue = builder.CreateBitCast(newValue, it->second.storageType);
    }

    builder.CreateStore(newValue, it->second.address);
    it->second.value = newValue;
    it->second.typeText = std::move(typeText);
    return true;
}

bool lowerIfStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::IfStatementContext* ifStatement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (ifStatement == nullptr || ifStatement->block().empty()) {
        unsupportedReason = "unsupported-if-shape";
        return false;
    }
    llvm::Value* condition = lowerExpressionValue(builder, ifStatement->expression(), values);
    if (condition == nullptr || !condition->getType()->isIntegerTy(1)) {
        const std::string text = trimCopy(stripOuterParens(ifStatement->expression()->getText()));
        condition = text == "true"
            ? llvm::ConstantInt::getTrue(module.getContext())
            : llvm::ConstantInt::getFalse(module.getContext());
    }

    llvm::BasicBlock* thenBlock = llvm::BasicBlock::Create(module.getContext(), "if.then", function);
    llvm::BasicBlock* elseBlock = ifStatement->block().size() > 1
        ? llvm::BasicBlock::Create(module.getContext(), "if.else", function)
        : nullptr;
    llvm::BasicBlock* mergeBlock = llvm::BasicBlock::Create(module.getContext(), "if.end", function);

    builder.CreateCondBr(condition, thenBlock, elseBlock != nullptr ? elseBlock : mergeBlock);

    llvm::IRBuilder<> thenBuilder(thenBlock);
    LoweredValueMap thenValues = values;
    if (!lowerBlockStatements(module, function, thenBuilder, ifStatement->block(0), thenValues, unsupportedReason)) {
        return false;
    }
    if (ifStatement->block(0)->returnStmt().empty()) {
        thenBuilder.CreateBr(mergeBlock);
    }

    if (elseBlock != nullptr) {
        llvm::IRBuilder<> elseBuilder(elseBlock);
        LoweredValueMap elseValues = values;
        if (!lowerBlockStatements(module, function, elseBuilder, ifStatement->block(1), elseValues, unsupportedReason)) {
            return false;
        }
        if (ifStatement->block(1)->returnStmt().empty()) {
            elseBuilder.CreateBr(mergeBlock);
        }
    }

    builder.SetInsertPoint(mergeBlock);
    return true;
}

bool lowerTypedefOpstructCaptureStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructCaptureContext* capture,
    LoweredValueMap& values) {
    if (capture == nullptr || capture->expression() == nullptr) {
        return false;
    }

    llvm::Module* module = builder.GetInsertBlock() != nullptr ? builder.GetInsertBlock()->getModule() : nullptr;
    if (module == nullptr) {
        return false;
    }

    llvm::Value* payloadValue = lowerExpressionValue(builder, capture->expression(), values);
    if (payloadValue == nullptr || !payloadValue->getType()->isPointerTy()) {
        return false;
    }

    builder.CreateCall(getApolloExecuteApolloPayloadDeclaration(*module), {payloadValue});
    return true;
}

bool lowerTypedefOpstructSessionStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructSessionContext* session,
    LoweredValueMap& values) {
    if (session == nullptr) {
        return false;
    }

    for (auto* command : session->typedefOpstructCommand()) {
        if (command == nullptr || !lowerTypedefOpstructCaptureStatement(builder, command->typedefOpstructCapture(), values)) {
            return false;
        }
    }
    return true;
}

bool lowerTypedefOpstructCreateStatement(compilerv1Parser::TypedefOpstructCreateStmtContext* createStmt) {
    return createStmt != nullptr;
}

bool lowerTypedefOpstructPhraseStatement(llvm::IRBuilder<>& builder,
    compilerv1Parser::TypedefOpstructPhraseStmtContext* phrase,
    LoweredValueMap& values) {
    if (phrase == nullptr) {
        return false;
    }
    return lowerTypedefOpstructCaptureStatement(builder, phrase->typedefOpstructCapture(), values);
}

bool lowerStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (statement == nullptr) {
        unsupportedReason = "null-statement";
        return false;
    }
    if (statement->print() != nullptr) {
        if (!lowerBuiltinStatement(module, builder, statement, values)) {
            unsupportedReason = "unsupported-print";
            return false;
        }
        return true;
    }
    if (statement->init() != nullptr) {
        if (!lowerInitStatement(builder, function, statement->init(), values)) {
            unsupportedReason = "unsupported-init:" + statement->init()->getText();
            return false;
        }
        return true;
    }
    if (statement->bridgeInit() != nullptr) {
        return true;
    }
    if (statement->ltoInit() != nullptr) {
        if (!lowerLtoInitStatement(builder, function, statement->ltoInit(), values)) {
            unsupportedReason = "unsupported-lto-init:" + statement->ltoInit()->getText();
            return false;
        }
        return true;
    }
    if (statement->easyInit() != nullptr) {
        if (!lowerEasyInitStatement(builder, function, statement->easyInit(), values)) {
            unsupportedReason = "unsupported-easy-init:" + statement->easyInit()->getText();
            return false;
        }
        return true;
    }
    if (statement->pointer() != nullptr) {
        if (!lowerPointerStatement(builder, function, statement->pointer(), values)) {
            unsupportedReason = "unsupported-pointer:" + statement->pointer()->getText();
            return false;
        }
        return true;
    }
    if (statement->assignment() != nullptr) {
        if (!lowerAssignmentStatement(builder, statement->assignment(), values)) {
            unsupportedReason = "unsupported-assignment:" + statement->assignment()->getText();
            return false;
        }
        return true;
    }
    if (statement->instance() != nullptr) {
        if (!lowerInstanceStatement(builder, function, statement->instance(), values)) {
            unsupportedReason = "unsupported-instance:" + statement->instance()->getText();
            return false;
        }
        return true;
    }
    if (statement->instancepush() != nullptr) {
        if (!lowerInstancePushStatement(builder, statement->instancepush(), values)) {
            unsupportedReason = "unsupported-instancepush:" + statement->instancepush()->getText();
            return false;
        }
        return true;
    }
    if (statement->lambda() != nullptr) {
        if (!lowerLambdaStatement(module, function, builder, statement->lambda(), values, unsupportedReason)) {
            if (unsupportedReason.empty()) {
                unsupportedReason = "unsupported-lambda";
            }
            return false;
        }
        return true;
    }
    if (statement->forStatement() != nullptr) {
        return lowerForStatement(module, function, builder, statement->forStatement(), values, unsupportedReason);
    }
    if (statement->forInStatement() != nullptr) {
        return lowerForInStatement(module, function, builder, statement->forInStatement(), values, unsupportedReason);
    }
    if (statement->switchStatement() != nullptr) {
        return lowerSwitchStatement(module, function, builder, statement->switchStatement(), values, unsupportedReason);
    }
    if (statement->tryCatchStatement() != nullptr) {
        return lowerTryCatchStatement(module, function, builder, statement->tryCatchStatement(), values, unsupportedReason);
    }
    if (statement->syscallStmt() != nullptr) {
        if (!lowerSyscallStatement(statement->syscallStmt())) {
            unsupportedReason = "unsupported-syscall:" + statement->syscallStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructSession() != nullptr) {
        if (!lowerTypedefOpstructSessionStatement(builder, statement->typedefOpstructSession(), values)) {
            unsupportedReason = "unsupported-typedef-opstruct-session:" + statement->typedefOpstructSession()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructCreateStmt() != nullptr) {
        if (!lowerTypedefOpstructCreateStatement(statement->typedefOpstructCreateStmt())) {
            unsupportedReason = "unsupported-typedef-opstruct-create:" + statement->typedefOpstructCreateStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->typedefOpstructPhraseStmt() != nullptr) {
        if (!lowerTypedefOpstructPhraseStatement(builder, statement->typedefOpstructPhraseStmt(), values)) {
            unsupportedReason = "unsupported-typedef-opstruct-phrase:" + statement->typedefOpstructPhraseStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->ifStatement() != nullptr) {
        return lowerIfStatement(module, function, builder, statement->ifStatement(), values, unsupportedReason);
    }
    if (statement->whileStatement() != nullptr) {
        return lowerWhileStatement(module, function, builder, statement->whileStatement(), values, unsupportedReason);
    }
    if (statement->functionCall() != nullptr) {
        if (lowerFunctionCallValue(builder, statement->functionCall(), values) == nullptr) {
            return true;
        }
        return true;
    }
    if (statement->memberaccess() != nullptr) {
        if (lowerMemberAccessValue(builder, statement->memberaccess(), values) == nullptr) {
            const std::string aggregateName = resolveAggregateTypeName(values, statement->memberaccess()->accessBase()->getText());
            if (statement->memberaccess()->functionCall() != nullptr && !aggregateName.empty()
                && statement->memberaccess()->accessBase()->getText() != "indef"
                && values.contains(statement->memberaccess()->accessBase()->getText())
                && values.at(statement->memberaccess()->accessBase()->getText()).typeText.find('<') != std::string::npos) {
                return true;
            }
            return true;
        }
        return true;
    }
    if (statement->unsafeBlock() != nullptr && statement->unsafeBlock()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->unsafeBlock()->block(), values, unsupportedReason);
    }
    if (statement->bypassBlock() != nullptr && statement->bypassBlock()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->bypassBlock()->block(), values, unsupportedReason);
    }
    if (statement->autofmtdeclareScope() != nullptr && statement->autofmtdeclareScope()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->autofmtdeclareScope()->block(), values, unsupportedReason);
    }
    if (statement->cscope() != nullptr && statement->cscope()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->cscope()->block(), values, unsupportedReason);
    }
    if (statement->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->block(), values, unsupportedReason);
    }
    if (statement->inductStmt() != nullptr || statement->releaseStmt() != nullptr) {
        return true;
    }
    if (statement->stdinStmt() != nullptr && statement->stdinStmt()->ID() != nullptr) {
        const auto it = values.find(statement->stdinStmt()->ID()->getText());
        if (it == values.end() || it->second.address == nullptr || it->second.storageType == nullptr) {
            unsupportedReason = "unsupported-stdin:" + statement->stdinStmt()->getText();
            return false;
        }
        llvm::Value* storedValue = builder.CreateCall(getApolloStdinReadLineFunction(module));
        if (storedValue->getType() != it->second.storageType) {
            if (!storedValue->getType()->isPointerTy() || !it->second.storageType->isPointerTy()) {
                unsupportedReason = "unsupported-stdin:" + statement->stdinStmt()->getText();
                return false;
            }
            storedValue = builder.CreateBitCast(storedValue, it->second.storageType);
        }
        builder.CreateStore(storedValue, it->second.address);
        return true;
    }
    if (statement->assertStmt() != nullptr) {
        llvm::Value* condition = lowerExpressionValue(builder, statement->assertStmt()->expression(), values);
        if (condition == nullptr || !condition->getType()->isIntegerTy(1)) {
            unsupportedReason = "unsupported-assert:" + statement->assertStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->rdwindowStmt() != nullptr) {
        if (!lowerRdwindowStatement(statement->rdwindowStmt())) {
            unsupportedReason = "unsupported-rdwindow:" + statement->rdwindowStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->thread() != nullptr) {
        if (!lowerThreadStatement(builder, function, statement->thread(), values)) {
            unsupportedReason = "unsupported-thread:" + statement->thread()->getText();
            return false;
        }
        return true;
    }
    if (statement->srcDecl() != nullptr) {
        if (!lowerSrcDeclStatement(module, function, statement->srcDecl(), values, unsupportedReason)) {
            unsupportedReason = unsupportedReason.empty()
                ? "unsupported-src-decl:" + statement->srcDecl()->getText()
                : unsupportedReason;
            return false;
        }
        return true;
    }
    if (statement->eventHandlerStmt() != nullptr) {
        if (!lowerEventHandlerStatement(statement->eventHandlerStmt())) {
            unsupportedReason = "unsupported-event-handler:" + statement->eventHandlerStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->asyncCall() != nullptr) {
        if (!lowerAsyncCallStatement(builder, statement->asyncCall(), values)) {
            unsupportedReason = "unsupported-async-call:" + statement->asyncCall()->getText();
            return false;
        }
        return true;
    }
    if (statement->ltoTypesetStmt() != nullptr) {
        if (!lowerLtoTypesetStatement(statement->ltoTypesetStmt())) {
            unsupportedReason = "unsupported-lto-typeset:" + statement->ltoTypesetStmt()->getText();
            return false;
        }
        return true;
    }
    if (statement->dircpp() != nullptr) {
        return true;
    }
    if (statement->inlineForeignBlock() != nullptr) {
        return true;
    }
    if (statement->nativemode() != nullptr) {
        return true;
    }
    if (statement->unsafeLineStmt() != nullptr) {
        return lowerUnsafeLineStatement(builder, function, statement->unsafeLineStmt(), values, unsupportedReason);
    }
    if (statement->mntDecl() != nullptr) {
        if (!lowerMntDeclStatement(builder, function, statement->mntDecl(), values)) {
            unsupportedReason = "unsupported-mnt:" + statement->mntDecl()->getText();
            return false;
        }
        return true;
    }
    if (statement->malloc() != nullptr) {
        if (!lowerMallocStatement(builder, function, statement->malloc(), values)) {
            unsupportedReason = "unsupported-malloc:" + statement->malloc()->getText();
            return false;
        }
        return true;
    }
    if (statement->free() != nullptr) {
        if (!lowerFreeStatement(builder, statement->free(), values)) {
            unsupportedReason = "unsupported-free:" + statement->free()->getText();
            return false;
        }
        return true;
    }
    if (statement->delalc() != nullptr) {
        if (!lowerDelalcStatement(builder, statement->delalc(), values)) {
            unsupportedReason = "unsupported-delalc:" + statement->delalc()->getText();
            return false;
        }
        return true;
    }
    if (statement->plcnew() != nullptr) {
        if (!lowerPlcnewStatement(builder, function, statement->plcnew(), values)) {
            unsupportedReason = "unsupported-plcnew:" + statement->plcnew()->getText();
            return false;
        }
        return true;
    }
    if (statement->autocatchStatement() != nullptr && statement->autocatchStatement()->block() != nullptr) {
        return lowerBlockStatements(module, function, builder, statement->autocatchStatement()->block(), values, unsupportedReason);
    }
    unsupportedReason = "unsupported-statement-kind:" + statement->getText();
    return false;
}

bool lowerBlockStatements(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::BlockContext* block,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (block == nullptr) {
        unsupportedReason = "missing-block";
        return false;
    }
    for (auto* statement : block->statement()) {
        if (!lowerStatement(module, function, builder, statement, values, unsupportedReason)) {
            return false;
        }
    }

    if (!block->returnStmt().empty()) {
        if (function == nullptr || block->returnStmt().size() != 1) {
            unsupportedReason = "unsupported-return-shape";
            return false;
        }

        auto* returnStmt = block->returnStmt(0);
        if (function->getReturnType()->isVoidTy()) {
            if (returnStmt != nullptr && returnStmt->expression() != nullptr) {
                unsupportedReason = "void-return-with-expression";
                return false;
            }
            builder.CreateRetVoid();
            return true;
        }

        llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), returnStmt != nullptr ? returnStmt->expression() : nullptr, values);
        if (returnValue == nullptr) {
            unsupportedReason = "unsupported-return-expression";
            return false;
        }
        builder.CreateRet(returnValue);
        return true;
    }
    return true;
}

llvm::Value* lowerReturnExpression(llvm::IRBuilder<>& builder,
    llvm::Type* returnType,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params) {
    if (expression == nullptr) {
        return nullptr;
    }

    std::string text = stripOuterParens(expression->getText());
    if (returnType->isIntegerTy(1) && text == "success") {
        return llvm::ConstantInt::getTrue(builder.getContext());
    }

    if (isDecimalIntegerLiteral(text)) {
        const std::uint64_t value = static_cast<std::uint64_t>(std::stoull(text));
        if (returnType->isIntegerTy()) {
            return llvm::ConstantInt::get(returnType, value);
        }
        if (returnType->isFloatingPointTy()) {
            return llvm::ConstantFP::get(returnType, static_cast<double>(value));
        }
    }

    const auto paramIt = params.find(text);
    if (paramIt != params.end()) {
        llvm::Value* value = loadIfAddressable(builder, paramIt->second);
        if (value != nullptr && value->getType() == returnType) {
            return value;
        }
    }

    llvm::Value* lowered = lowerExpressionValue(builder, expression, params, !returnType->isPointerTy());
    if (lowered != nullptr && lowered->getType() == returnType) {
        return lowered;
    }

    if (lowered != nullptr && returnType->isIntegerTy()) {
        llvm::Value* casted = castToCommonInteger(builder, lowered, returnType);
        if (casted != nullptr && casted->getType() == returnType) {
            return casted;
        }
    }

    const auto lowerSimpleToken = [&](std::string token) -> llvm::Value* {
        token = trimCopy(std::move(token));
        if (isDecimalIntegerLiteral(token)) {
            return llvm::ConstantInt::get(returnType, static_cast<std::uint64_t>(std::stoull(token)));
        }
        const auto it = params.find(token);
        if (it == params.end()) {
            return nullptr;
        }
        llvm::Value* value = loadIfAddressable(builder, it->second);
        if (value == nullptr || !value->getType()->isIntegerTy()) {
            return nullptr;
        }
        return castToCommonInteger(builder, value, returnType);
    };

    if (returnType->isIntegerTy()) {
        int depth = 0;
        for (std::size_t index = 0; index < text.size(); ++index) {
            const char ch = text[index];
            if (ch == '(') {
                ++depth;
                continue;
            }
            if (ch == ')') {
                --depth;
                continue;
            }
            if (depth == 0 && index > 0 && (ch == '+' || ch == '-')) {
                llvm::Value* left = lowerSimpleToken(text.substr(0, index));
                llvm::Value* right = lowerSimpleToken(text.substr(index + 1));
                if (left != nullptr && right != nullptr) {
                    return ch == '+' ? builder.CreateAdd(left, right) : builder.CreateSub(left, right);
                }
            }
        }

        return llvm::ConstantInt::get(returnType, 0);
    }

    if (returnType->isPointerTy()) {
        return llvm::ConstantPointerNull::get(llvm::cast<llvm::PointerType>(returnType));
    }

    return nullptr;
}

std::string makeUniqueFunctionName(llvm::Module& module, const std::string& baseName) {
    std::string candidate = baseName;
    std::size_t suffix = 0;
    while (module.getFunction(candidate) != nullptr) {
        candidate = baseName + "." + std::to_string(++suffix);
    }
    return candidate;
}

bool lowerCallableBody(llvm::Module& module,
    llvm::Function* function,
    compilerv1Parser::BlockContext* block,
    std::string& unsupportedReason) {
    if (function == nullptr || block == nullptr) {
        unsupportedReason = "unsupported-body-shape";
        return false;
    }

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);
    LoweredValueMap values;
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        values.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), ""});
    }
    for (auto& global : module.globals()) {
        values.emplace(std::string(global.getName()), LoweredValue{&global, &global, global.getValueType(), ""});
    }
    addInlineForeignGlobalBindings(module, builder, values);

    if (!lowerBlockStatements(module, function, builder, block, values, unsupportedReason)) {
        return false;
    }
    if (block->returnStmt().empty()) {
        if (function->getReturnType()->isVoidTy()) {
            builder.CreateRetVoid();
            return true;
        }
        unsupportedReason = "unsupported-return-shape";
        return false;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }

    if (block->returnStmt().size() != 1) {
        unsupportedReason = "unsupported-return-shape";
        return false;
    }

    llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), block->returnStmt()[0]->expression(), values);
    if (returnValue == nullptr) {
        unsupportedReason = "unsupported-return-expression";
        return false;
    }
    builder.CreateRet(returnValue);
    return true;
}

llvm::Function* lowerAggregateMethodPrototype(llvm::Module& module,
    const AggregateRecord& aggregate,
    const AggregateMethodRecord& methodRecord,
    std::string& unsupportedReason) {
    unsupportedReason.clear();
    if (methodRecord.method == nullptr) {
        unsupportedReason = "missing-method-context";
        return nullptr;
    }

    llvm::Type* returnType = nullptr;
    if (methodRecord.method->returnType() != nullptr) {
        returnType = lowerReturnType(module.getContext(), methodRecord.method->returnType());
    } else {
        returnType = llvm::Type::getVoidTy(module.getContext());
    }
    if (returnType == nullptr) {
        unsupportedReason = "unsupported-return-type";
        return nullptr;
    }

    std::vector<llvm::Type*> paramTypes;
    std::vector<std::string> paramNames;
    if (!methodRecord.isStatic) {
        paramTypes.push_back(llvm::PointerType::getUnqual(module.getContext()));
        paramNames.push_back("indef");
    }

    if (methodRecord.method->params() != nullptr) {
        for (auto* param : methodRecord.method->params()->param()) {
            if (param == nullptr || param->typeRef() == nullptr || param->ID() == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            llvm::Type* paramType = lowerTypeRef(module.getContext(), param->typeRef());
            if (paramType == nullptr) {
                unsupportedReason = "unsupported-parameter-type";
                return nullptr;
            }
            paramTypes.push_back(paramType);
            paramNames.push_back(param->ID()->getText());
        }
    }

    llvm::FunctionType* functionType = llvm::FunctionType::get(returnType, paramTypes, false);
    llvm::Function* function = llvm::Function::Create(functionType,
        llvm::GlobalValue::InternalLinkage,
        methodRecord.loweredName,
        module);
    std::size_t index = 0;
    for (auto& arg : function->args()) {
        arg.setName(paramNames[index++]);
    }
    return function;
}

bool lowerAggregateMethodBody(llvm::Module& module,
    llvm::Function* function,
    const AggregateRecord& aggregate,
    const AggregateRegistry& registry,
    compilerv1Parser::MethodContext* method,
    std::string& unsupportedReason) {
    if (function == nullptr || method == nullptr || method->block() == nullptr) {
        unsupportedReason = "unsupported-body-shape";
        return false;
    }

    llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
    llvm::IRBuilder<> builder(entry);
    LoweredValueMap values;
    for (auto& arg : function->args()) {
        llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
        builder.CreateStore(&arg, address);
        values.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), std::string(arg.getName()) == "indef" ? aggregate.name : ""});
    }
    for (auto& global : module.globals()) {
        values.emplace(std::string(global.getName()), LoweredValue{&global, &global, global.getValueType(), ""});
    }
    addInlineForeignGlobalBindings(module, builder, values);

    if (!function->arg_empty() && function->getArg(0)->getName() == "indef") {
        std::vector<AggregateFieldRecord> fields;
        if (!collectAggregateFields(registry, aggregate.name, fields)) {
            unsupportedReason = "unsupported-field-layout";
            return false;
        }

        llvm::Value* selfValue = loadIfAddressable(builder, values.at("indef"));
        if (selfValue == nullptr) {
            unsupportedReason = "unsupported-self";
            return false;
        }

        for (const auto& field : fields) {
            llvm::Value* fieldAddress = lowerAggregateFieldAddress(builder, selfValue, aggregate.name, field.name, registry);
            if (fieldAddress == nullptr) {
                unsupportedReason = "unsupported-field:" + field.name;
                return false;
            }
            values[field.name] = {nullptr, fieldAddress, lowerSourceTypeText(module.getContext(), field.typeText), field.typeText};
        }
    }

    if (!lowerBlockStatements(module, function, builder, method->block(), values, unsupportedReason)) {
        return false;
    }
    if (method->block()->returnStmt().empty()) {
        if (function->getReturnType()->isVoidTy()) {
            builder.CreateRetVoid();
            return true;
        }
        unsupportedReason = "unsupported-return-shape";
        return false;
    }

    if (builder.GetInsertBlock()->getTerminator() != nullptr) {
        return true;
    }

    if (method->block()->returnStmt().size() != 1) {
        unsupportedReason = "unsupported-return-shape";
        return false;
    }

    llvm::Value* returnValue = lowerReturnExpression(builder, function->getReturnType(), method->block()->returnStmt(0)->expression(), values);
    if (returnValue == nullptr) {
        unsupportedReason = "unsupported-return-expression";
        return false;
    }
    builder.CreateRet(returnValue);
    return true;
}

void lowerAggregateMethodBodies(llvm::Module& module,
    const AggregateRegistry& registry,
    std::vector<std::string>& unsupportedFunctions) {
    std::vector<std::pair<const AggregateRecord*, const AggregateMethodRecord*>> methodsToLower;
    for (const auto& [name, aggregate] : registry.records) {
        for (const auto& method : aggregate.methods) {
            methodsToLower.emplace_back(&aggregate, &method);
        }
    }

    for (const auto& [aggregate, method] : methodsToLower) {
        if (module.getFunction(method->loweredName) != nullptr) {
            continue;
        }
        std::string unsupportedReason;
        llvm::Function* function = lowerAggregateMethodPrototype(module, *aggregate, *method, unsupportedReason);
        if (function == nullptr) {
            unsupportedFunctions.push_back(aggregate->name + "." + method->sourceName + ":" + unsupportedReason);
        }
    }

    for (const auto& [aggregate, method] : methodsToLower) {
        llvm::Function* function = module.getFunction(method->loweredName);
        if (function == nullptr || !function->empty()) {
            continue;
        }
        std::string unsupportedReason;
        if (!lowerAggregateMethodBody(module, function, *aggregate, registry, method->method, unsupportedReason)) {
            unsupportedFunctions.push_back(aggregate->name + "." + method->sourceName + ":" + unsupportedReason);
            function->deleteBody();
        }
    }
}

bool lowerLambdaStatement(llvm::Module& module,
    llvm::Function* function,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::LambdaContext* lambda,
    LoweredValueMap& values,
    std::string& unsupportedReason) {
    if (function == nullptr || lambda == nullptr || lambda->ID() == nullptr || lambda->lambdaDefinition() == nullptr) {
        unsupportedReason = "unsupported-lambda-shape";
        return false;
    }

    compilerv1Parser::ReturnTypeContext* returnTypeCtx = nullptr;
    compilerv1Parser::ParamsContext* paramsCtx = nullptr;
    compilerv1Parser::BlockContext* block = nullptr;

    if (auto* lambdaFunction = lambda->lambdaDefinition()->function()) {
        returnTypeCtx = lambdaFunction->returnType();
        paramsCtx = lambdaFunction->params();
        block = lambdaFunction->block();
    } else if (auto* lambdaLiteral = lambda->lambdaDefinition()->lambdaLiteral()) {
        returnTypeCtx = lambdaLiteral->returnType();
        paramsCtx = lambdaLiteral->params();
        block = lambdaLiteral->block();
        if (returnTypeCtx == nullptr && lambda->typeRef() != nullptr && lambda->typeRef()->typeAtom() != nullptr
            && lambda->typeRef()->typeAtom()->functionType() != nullptr) {
            returnTypeCtx = lambda->typeRef()->typeAtom()->functionType()->returnType();
        }
    }

    if (returnTypeCtx == nullptr || paramsCtx == nullptr || block == nullptr) {
        unsupportedReason = "unsupported-lambda-shape";
        return false;
    }

    std::vector<llvm::Type*> parameterTypes;
    std::vector<std::string> parameterNames;
    parameterTypes.reserve(paramsCtx->param().size());
    parameterNames.reserve(paramsCtx->param().size());
    for (auto* param : paramsCtx->param()) {
        if (param == nullptr || param->typeRef() == nullptr || param->ID() == nullptr) {
            unsupportedReason = "unsupported-lambda-params";
            return false;
        }
        llvm::Type* parameterType = lowerTypeRef(module.getContext(), param->typeRef());
        if (parameterType == nullptr) {
            unsupportedReason = "unsupported-lambda-param-type";
            return false;
        }
        parameterTypes.push_back(parameterType);
        parameterNames.push_back(param->ID()->getText());
    }

    llvm::Type* returnType = lowerReturnType(module.getContext(), returnTypeCtx);
    if (returnType == nullptr) {
        unsupportedReason = "unsupported-lambda-return-type";
        return false;
    }

    llvm::FunctionType* lambdaType = llvm::FunctionType::get(returnType, parameterTypes, false);
    std::string loweredName = makeUniqueFunctionName(module, function->getName().str() + ".lambda." + lambda->ID()->getText());
    llvm::Function* loweredLambda = llvm::Function::Create(lambdaType, llvm::GlobalValue::InternalLinkage, loweredName, module);
    std::size_t index = 0;
    for (auto& arg : loweredLambda->args()) {
        arg.setName(parameterNames[index++]);
    }

    if (!lowerCallableBody(module, loweredLambda, block, unsupportedReason)) {
        loweredLambda->eraseFromParent();
        return false;
    }

    values[lambda->ID()->getText()] = {loweredLambda, nullptr, loweredLambda->getType(), lambda->typeRef() != nullptr ? lambda->typeRef()->getText() : ""};
    return true;
}

llvm::FunctionCallee getPrintfDeclaration(llvm::Module& module) {
    llvm::LLVMContext& context = module.getContext();
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);
    llvm::FunctionType* printfType = llvm::FunctionType::get(
        llvm::Type::getInt32Ty(context),
        {charPtrTy},
        true);
    return module.getOrInsertFunction("printf", printfType);
}

llvm::Value* createGlobalCString(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    const std::string& value,
    const std::string& name) {
    llvm::LLVMContext& context = module.getContext();
    auto* data = llvm::ConstantDataArray::getString(context, value, true);
    auto* global = new llvm::GlobalVariable(module,
        data->getType(),
        true,
        llvm::GlobalValue::PrivateLinkage,
        data,
        name);
    global->setUnnamedAddr(llvm::GlobalValue::UnnamedAddr::Global);

    llvm::Constant* zero = llvm::ConstantInt::get(llvm::Type::getInt32Ty(context), 0);
    return builder.CreateInBoundsGEP(global->getValueType(), global, {zero, zero});
}

llvm::FunctionCallee getApolloVectorStrCreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_str_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloVectorI32CreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloVectorStrPushDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_vector_str_push", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, charPtrTy}, false));
}

llvm::FunctionCallee getApolloVectorI32PushDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_push", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloVectorI32GetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloVectorI32SizeDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_vector_i32_size", llvm::FunctionType::get(i32Ty, {opaquePtrTy}, false));
}

llvm::FunctionCallee getApolloHashStrI32CreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloHashStrI32SetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, charPtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloHashStrI32GetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_hash_str_i32_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, charPtrTy}, false));
}

llvm::FunctionCallee getApolloNestedHashCreateDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_create", llvm::FunctionType::get(opaquePtrTy, {}, false));
}

llvm::FunctionCallee getApolloNestedHashSetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_set", llvm::FunctionType::get(llvm::Type::getVoidTy(module.getContext()), {opaquePtrTy, i32Ty, charPtrTy, charPtrTy, i32Ty}, false));
}

llvm::FunctionCallee getApolloNestedHashGetDeclaration(llvm::Module& module) {
    llvm::Type* opaquePtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_nested_hash_get", llvm::FunctionType::get(i32Ty, {opaquePtrTy, i32Ty, charPtrTy, charPtrTy}, false));
}

llvm::Function* getApolloStdinReadLineFunction(llvm::Module& module) {
    if (llvm::Function* existing = module.getFunction("apollo_stdin_read_line")) {
        return existing;
    }

    llvm::LLVMContext& context = module.getContext();
    llvm::Type* i1Ty = llvm::Type::getInt1Ty(context);
    llvm::Type* i8Ty = llvm::Type::getInt8Ty(context);
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(context);
    llvm::Type* i64Ty = llvm::Type::getInt64Ty(context);
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(context);

    llvm::FunctionType* functionType = llvm::FunctionType::get(charPtrTy, {}, false);
    llvm::Function* function = llvm::Function::Create(
        functionType,
        llvm::GlobalValue::InternalLinkage,
        "apollo_stdin_read_line",
        module);

    llvm::BasicBlock* entryBlock = llvm::BasicBlock::Create(context, "entry", function);
    llvm::BasicBlock* readBlock = llvm::BasicBlock::Create(context, "stdin.read", function);
    llvm::BasicBlock* classifyBlock = llvm::BasicBlock::Create(context, "stdin.classify", function);
    llvm::BasicBlock* markStartedBlock = llvm::BasicBlock::Create(context, "stdin.start", function);
    llvm::BasicBlock* ensureCapacityBlock = llvm::BasicBlock::Create(context, "stdin.capacity", function);
    llvm::BasicBlock* growBlock = llvm::BasicBlock::Create(context, "stdin.grow", function);
    llvm::BasicBlock* appendBlock = llvm::BasicBlock::Create(context, "stdin.append", function);
    llvm::BasicBlock* terminateBlock = llvm::BasicBlock::Create(context, "stdin.terminate", function);

    llvm::IRBuilder<> builder(entryBlock);
    llvm::FunctionCallee mallocDecl = module.getOrInsertFunction("malloc", llvm::FunctionType::get(charPtrTy, {i64Ty}, false));
    llvm::FunctionCallee reallocDecl = module.getOrInsertFunction("realloc", llvm::FunctionType::get(charPtrTy, {charPtrTy, i64Ty}, false));
    llvm::FunctionCallee getcharDecl = module.getOrInsertFunction("getchar", llvm::FunctionType::get(i32Ty, {}, false));

    llvm::AllocaInst* bufferSlot = createEntryAlloca(function, charPtrTy, "stdin.buffer");
    llvm::AllocaInst* capacitySlot = createEntryAlloca(function, i64Ty, "stdin.capacity");
    llvm::AllocaInst* lengthSlot = createEntryAlloca(function, i64Ty, "stdin.length");
    llvm::AllocaInst* startedSlot = createEntryAlloca(function, i1Ty, "stdin.started");

    builder.CreateStore(builder.CreateCall(mallocDecl, {llvm::ConstantInt::get(i64Ty, 64)}), bufferSlot);
    builder.CreateStore(llvm::ConstantInt::get(i64Ty, 64), capacitySlot);
    builder.CreateStore(llvm::ConstantInt::get(i64Ty, 0), lengthSlot);
    builder.CreateStore(llvm::ConstantInt::getFalse(context), startedSlot);
    builder.CreateBr(readBlock);

    builder.SetInsertPoint(readBlock);
    llvm::Value* currentChar = builder.CreateCall(getcharDecl);
    llvm::Value* isEof = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::getSigned(i32Ty, -1));
    builder.CreateCondBr(isEof, terminateBlock, classifyBlock);

    builder.SetInsertPoint(classifyBlock);
    llvm::Value* started = builder.CreateLoad(i1Ty, startedSlot);
    llvm::Value* isNewline = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\n'));
    llvm::Value* isCarriageReturn = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\r'));
    llvm::Value* isTab = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\t'));
    llvm::Value* isSpace = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, ' '));
    llvm::Value* isFormFeed = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\f'));
    llvm::Value* isVerticalTab = builder.CreateICmpEQ(currentChar, llvm::ConstantInt::get(i32Ty, '\v'));
    llvm::Value* isWhitespace = builder.CreateOr(isSpace, isTab);
    isWhitespace = builder.CreateOr(isWhitespace, isNewline);
    isWhitespace = builder.CreateOr(isWhitespace, isCarriageReturn);
    isWhitespace = builder.CreateOr(isWhitespace, isFormFeed);
    isWhitespace = builder.CreateOr(isWhitespace, isVerticalTab);
    llvm::Value* isLineTerminator = builder.CreateOr(isNewline, isCarriageReturn);
    llvm::Value* skipLeadingWhitespace = builder.CreateAnd(builder.CreateNot(started), isWhitespace);
    llvm::Value* terminateRead = builder.CreateAnd(started, isLineTerminator);
    builder.CreateCondBr(skipLeadingWhitespace, readBlock, markStartedBlock);

    builder.SetInsertPoint(markStartedBlock);
    llvm::Value* startedOrTerminated = builder.CreateSelect(terminateRead, started, llvm::ConstantInt::getTrue(context));
    builder.CreateStore(startedOrTerminated, startedSlot);
    builder.CreateCondBr(terminateRead, terminateBlock, ensureCapacityBlock);

    builder.SetInsertPoint(ensureCapacityBlock);
    llvm::Value* length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* capacity = builder.CreateLoad(i64Ty, capacitySlot);
    llvm::Value* capacityLimit = builder.CreateSub(capacity, llvm::ConstantInt::get(i64Ty, 1));
    llvm::Value* needsGrow = builder.CreateICmpUGE(length, capacityLimit);
    builder.CreateCondBr(needsGrow, growBlock, appendBlock);

    builder.SetInsertPoint(growBlock);
    llvm::Value* nextCapacity = builder.CreateMul(capacity, llvm::ConstantInt::get(i64Ty, 2));
    llvm::Value* buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    llvm::Value* grownBuffer = builder.CreateCall(reallocDecl, {buffer, nextCapacity});
    builder.CreateStore(grownBuffer, bufferSlot);
    builder.CreateStore(nextCapacity, capacitySlot);
    builder.CreateBr(appendBlock);

    builder.SetInsertPoint(appendBlock);
    buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* charAddress = builder.CreateInBoundsGEP(i8Ty, buffer, length);
    builder.CreateStore(builder.CreateTrunc(currentChar, i8Ty), charAddress);
    builder.CreateStore(builder.CreateAdd(length, llvm::ConstantInt::get(i64Ty, 1)), lengthSlot);
    builder.CreateBr(readBlock);

    builder.SetInsertPoint(terminateBlock);
    buffer = builder.CreateLoad(charPtrTy, bufferSlot);
    length = builder.CreateLoad(i64Ty, lengthSlot);
    llvm::Value* terminatorAddress = builder.CreateInBoundsGEP(i8Ty, buffer, length);
    builder.CreateStore(llvm::ConstantInt::get(i8Ty, 0), terminatorAddress);
    builder.CreateRet(buffer);

    return function;
}

llvm::FunctionCallee getApolloExecuteApolloPayloadDeclaration(llvm::Module& module) {
    llvm::Type* charPtrTy = llvm::PointerType::getUnqual(module.getContext());
    llvm::Type* i32Ty = llvm::Type::getInt32Ty(module.getContext());
    return module.getOrInsertFunction("apollo_execute_apollo_payload", llvm::FunctionType::get(i32Ty, {charPtrTy}, false));
}

bool lowerPrintExpressionValue(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::ExpressionContext* expression,
    const LoweredValueMap& params,
    llvm::Value*& value,
    std::string& formatSpecifier) {
    if (expression == nullptr) {
        return false;
    }

    llvm::Value* lowered = lowerExpressionValue(builder, expression, params);
    if (lowered == nullptr) {
        return false;
    }

    llvm::Type* paramType = lowered->getType();
    if (paramType->isIntegerTy()) {
        value = builder.CreateSExtOrBitCast(lowered, llvm::Type::getInt64Ty(builder.getContext()));
        formatSpecifier = "%lld";
        return true;
    }
    if (paramType->isFloatTy() || paramType->isDoubleTy()) {
        value = paramType->isDoubleTy()
            ? lowered
            : builder.CreateFPExt(lowered, llvm::Type::getDoubleTy(builder.getContext()));
        formatSpecifier = "%f";
        return true;
    }
    if (paramType->isPointerTy()) {
        value = lowered;
        formatSpecifier = "%s";
        return true;
    }

    return false;
}

bool lowerBuiltinStatement(llvm::Module& module,
    llvm::IRBuilder<>& builder,
    compilerv1Parser::StatementContext* statement,
    const LoweredValueMap& params) {
    if (statement == nullptr) {
        return false;
    }

    std::string text = trimCopy(statement->getText());
    if (!text.empty() && text.back() == ';') {
        text.pop_back();
    }

    bool appendNewline = false;
    std::string prefix;
    if (text.rfind("sys.println(", 0) == 0 && !text.empty() && text.back() == ')') {
        appendNewline = true;
        prefix = "sys.println(";
    } else if (text.rfind("sys.print(", 0) == 0 && !text.empty() && text.back() == ')') {
        prefix = "sys.print(";
    } else if (text.rfind("sys.stdout(", 0) == 0 && !text.empty() && text.back() == ')') {
        prefix = "sys.stdout(";
    } else {
        return false;
    }

    llvm::Value* value = nullptr;
    std::string formatSpecifier;
    if (statement->print() == nullptr || !lowerPrintExpressionValue(module, builder, statement->print()->expression(), params, value, formatSpecifier)) {
        return true;
    }

    const std::string formatText = appendNewline ? formatSpecifier + "\n" : formatSpecifier;
    llvm::Value* format = createGlobalCString(module, builder, formatText, "apollo.print.fmt");
    builder.CreateCall(getPrintfDeclaration(module), {format, value});
    return true;
}

void lowerSupportedFunctionBodies(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedFunctions) {
    if (tree == nullptr) {
        return;
    }

    for (auto* functionCtx : tree->function()) {
        std::vector<std::string> paramNames;
        std::string unsupportedReason;
        llvm::Function* function = lowerFunctionPrototype(module, functionCtx, paramNames, unsupportedReason);
        if (function == nullptr) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":" + unsupportedReason);
            continue;
        }

        llvm::Type* returnType = function->getReturnType();
        auto* block = functionCtx->block();
        if (block == nullptr || block->returnStmt().size() > 1) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":unsupported-body-shape");
            continue;
        }

        llvm::BasicBlock* entry = llvm::BasicBlock::Create(module.getContext(), "entry", function);
        llvm::IRBuilder<> builder(entry);

        LoweredValueMap params;
        for (auto& arg : function->args()) {
            llvm::AllocaInst* address = createEntryAlloca(function, valueStorageType(&arg), arg.getName());
            builder.CreateStore(&arg, address);
            params.emplace(std::string(arg.getName()), LoweredValue{&arg, address, arg.getType(), ""});
        }
        for (auto& global : module.globals()) {
            params.emplace(std::string(global.getName()), LoweredValue{&global, &global, global.getValueType(), ""});
        }
        addInlineForeignGlobalBindings(module, builder, params);

        std::string unsupportedReasonForBody;
        if (!lowerBlockStatements(module, function, builder, block, params, unsupportedReasonForBody)) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":" + unsupportedReasonForBody);
            function->deleteBody();
            continue;
        }

        if (block->returnStmt().empty()) {
            if (returnType->isVoidTy()) {
                builder.CreateRetVoid();
                continue;
            }
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":missing-primitive-return");
            function->deleteBody();
            continue;
        }

        if (builder.GetInsertBlock()->getTerminator() != nullptr) {
            continue;
        }

        if (returnType->isVoidTy()) {
            if (block->returnStmt().empty() || block->returnStmt()[0]->expression() == nullptr) {
                builder.CreateRetVoid();
                continue;
            }
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":void-return-with-expression");
            function->deleteBody();
            continue;
        }

        if (block->returnStmt().size() != 1) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":missing-primitive-return");
            function->deleteBody();
            continue;
        }

        llvm::Value* returnValue = lowerReturnExpression(builder, returnType, block->returnStmt()[0]->expression(), params);
        if (returnValue == nullptr) {
            unsupportedFunctions.push_back(functionCtx->ID()->getText() + ":unsupported-return-expression");
            function->deleteBody();
            continue;
        }
        builder.CreateRet(returnValue);
    }
}

void lowerSupportedMacroBodies(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedFunctions) {
    if (tree == nullptr) {
        return;
    }

    for (auto* child : tree->children) {
        auto* macroCtx = dynamic_cast<compilerv1Parser::MacroContext*>(child);
        if (macroCtx == nullptr || macroCtx->block() == nullptr || macroCtx->ID() == nullptr) {
            continue;
        }

        std::vector<std::string> paramNames;
        std::string unsupportedReason;
        llvm::Function* function = module.getFunction(macroCtx->ID()->getText());
        if (function == nullptr) {
            function = lowerMacroPrototype(module, macroCtx, paramNames, unsupportedReason);
        }
        if (function == nullptr) {
            unsupportedFunctions.push_back(macroCtx->ID()->getText() + ":" + unsupportedReason);
            continue;
        }
        if (!function->empty()) {
            continue;
        }

        if (!lowerCallableBody(module, function, macroCtx->block(), unsupportedReason)) {
            unsupportedFunctions.push_back(macroCtx->ID()->getText() + ":" + unsupportedReason);
            function->deleteBody();
        }
    }
}

bool lowerGlobalVariable(llvm::Module& module,
    compilerv1Parser::TypeRefContext* typeRef,
    antlr4::tree::TerminalNode* identifier,
    compilerv1Parser::ExpressionContext* expression) {
    if (typeRef == nullptr || identifier == nullptr) {
        return false;
    }

    llvm::Type* loweredType = lowerTypeRef(module.getContext(), typeRef);
    if (loweredType == nullptr) {
        return false;
    }

    llvm::Constant* initializer = llvm::Constant::getNullValue(loweredType);
    if (expression != nullptr) {
        const std::string text = trimCopy(stripOuterParens(expression->getText()));
        if (!isDecimalIntegerLiteral(text) || !loweredType->isIntegerTy()) {
            if (!loweredType->isPointerTy()) {
                return false;
            }
        } else {
            initializer = llvm::ConstantInt::get(loweredType, std::stoll(text), true);
        }
    }

    new llvm::GlobalVariable(module,
        loweredType,
        false,
        llvm::GlobalValue::ExternalLinkage,
        initializer,
        identifier->getText());
    return true;
}

void lowerGlobalVariables(llvm::Module& module,
    compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedGlobals) {
    if (tree == nullptr) {
        return;
    }

    for (auto* globalInit : tree->globalInit()) {
        if (globalInit == nullptr || globalInit->init() == nullptr || globalInit->init()->initCore() == nullptr) {
            unsupportedGlobals.push_back("global:<invalid>");
            continue;
        }
        auto* initCore = globalInit->init()->initCore();
        if (!lowerGlobalVariable(module, initCore->typeRef(), initCore->ID(), initCore->expression())) {
            unsupportedGlobals.push_back("global:" + initCore->getText());
        }
    }

    for (auto* init : tree->init()) {
        if (init == nullptr || init->initCore() == nullptr) {
            unsupportedGlobals.push_back("init:<invalid>");
            continue;
        }
        auto* initCore = init->initCore();
        if (!lowerGlobalVariable(module, initCore->typeRef(), initCore->ID(), initCore->expression())) {
            unsupportedGlobals.push_back("init:" + initCore->getText());
        }
    }
}

void collectUnsupportedTopLevelInlineForeignBlocks(compilerv1Parser::ProgramContext* tree,
    std::vector<std::string>& unsupportedItems) {
    if (tree == nullptr) {
        return;
    }

    for (auto* child : tree->children) {
        auto* inlineForeignBlock = dynamic_cast<compilerv1Parser::InlineForeignBlockContext*>(child);
        if (inlineForeignBlock == nullptr) {
            continue;
        }
        unsupportedItems.push_back("module:unsupported-inline-foreign:" + inlineForeignBlock->getText());
    }
}

void appendRuntimeFeatureMetadata(llvm::Module& module, const ApolloRuntimeFeatureManifest& runtimeFeatures) {
    llvm::LLVMContext& context = module.getContext();
    appendNamedMetadataNode(module, "apollo.runtime.features", {
        llvm::MDString::get(context, "autofmt"), boolMetadata(context, runtimeFeatures.usesAutofmtRuntime()),
        llvm::MDString::get(context, "gui"), boolMetadata(context, runtimeFeatures.usesGuiRuntime()),
        llvm::MDString::get(context, "go_async"), boolMetadata(context, runtimeFeatures.usesGoAsyncRuntime()),
        llvm::MDString::get(context, "ir_runtime"), boolMetadata(context, runtimeFeatures.usesIrRuntime()),
        llvm::MDString::get(context, "isc"), boolMetadata(context, runtimeFeatures.usesIscRuntime()),
        llvm::MDString::get(context, "file"), boolMetadata(context, runtimeFeatures.usesFileRuntime()),
        llvm::MDString::get(context, "memstruct"), boolMetadata(context, runtimeFeatures.usesMemstructRuntime()),
        llvm::MDString::get(context, "scheduler"), boolMetadata(context, runtimeFeatures.usesSchedulerRuntime()),
        llvm::MDString::get(context, "runtime_extensions"), boolMetadata(context, runtimeFeatures.usesRuntimeExtensions()),
        llvm::MDString::get(context, "total_program_gc"), boolMetadata(context, runtimeFeatures.totalProgramGc()),
        llvm::MDString::get(context, "borrow_checker_off"), boolMetadata(context, runtimeFeatures.borrowCheckerOff())
    });
}

void appendLayoutMetadata(llvm::Module& module, const ApolloIrLayoutPlan& layoutPlan) {
    llvm::LLVMContext& context = module.getContext();
    appendNamedMetadataNode(module, "apollo.soa.mode", {
        llvm::MDString::get(context, "default_full_soa"), boolMetadata(context, true),
        llvm::MDString::get(context, "uses_full_soa_layouts"), boolMetadata(context, layoutPlan.usesFullSoa())
    });

    for (const auto& aggregate : layoutPlan.aggregateLayouts()) {
        appendNamedMetadataNode(module, "apollo.layouts", {
            llvm::MDString::get(context, aggregate.name),
            llvm::MDString::get(context, storageKindName(aggregate.storageKind)),
            intMetadata(context, static_cast<std::uint64_t>(aggregate.fields.size())),
            boolMetadata(context, aggregate.isClass),
            boolMetadata(context, aggregate.hasInheritance),
            boolMetadata(context, aggregate.hasVirtualMethods),
            llvm::MDString::get(context, aggregate.note)
        });

        for (const auto& field : aggregate.fields) {
            appendNamedMetadataNode(module, "apollo.layout.fields", {
                llvm::MDString::get(context, aggregate.name),
                llvm::MDString::get(context, field.name),
                llvm::MDString::get(context, field.sourceTypeName),
                boolMetadata(context, field.isPrimitive)
            });
        }
    }
}

void appendDependencyMetadata(llvm::Module& module, const std::vector<std::string>& dependencies) {
    llvm::LLVMContext& context = module.getContext();
    for (const auto& dependency : dependencies) {
        appendNamedMetadataNode(module, "apollo.dependencies", {
            llvm::MDString::get(context, dependency)
        });
    }
}

void appendPrimitiveTypeMetadata(llvm::Module& module) {
    llvm::LLVMContext& context = module.getContext();
    for (const auto& [apolloType, irType] : kPrimitiveIrTypes) {
        appendNamedMetadataNode(module, "apollo.primitive.types", {
            llvm::MDString::get(context, apolloType),
            llvm::MDString::get(context, irType)
        });
    }
}

} // namespace

void ApolloIrCodegen::emitModule(const std::filesystem::path& outputPath,
    const std::string& moduleKey,
    const std::filesystem::path& sourcePath,
    compilerv1Parser::ProgramContext* tree,
    const ApolloRuntimeFeatureManifest& runtimeFeatures,
    const ApolloIrLayoutPlan& layoutPlan,
    bool allowPartialLowering) {
    llvm::LLVMContext context;
    llvm::Module module(moduleKey, context);
    module.setSourceFileName(sourcePath.generic_string());

    const std::string targetTriple = targetTripleFromEnvironment();
    if (!targetTriple.empty()) {
        module.setTargetTriple(llvm::Triple(targetTriple));
    }

    appendNamedMetadataNode(module, "apollo.backend", {
        llvm::MDString::get(context, "direct-ir-prototype"),
        llvm::MDString::get(context, "llvm-cpp-api"),
        llvm::MDString::get(context, moduleKey)
    });
    appendRuntimeFeatureMetadata(module, runtimeFeatures);
    appendLayoutMetadata(module, layoutPlan);
    appendDependencyMetadata(module, collectDependencyMetadata(tree));
    appendPrimitiveTypeMetadata(module);

    const std::vector<ApolloInlineForeignBlock> inlineForeignBlocks = collectInlineForeignBlocks(tree);
    linkInlineForeignModules(module, sourcePath, outputPath, tree, inlineForeignBlocks);

    const AggregateRegistry aggregateRegistry = buildAggregateRegistry(tree);
    AggregateRegistryScope aggregateScope(&aggregateRegistry);
    InlineForeignBlockScope inlineForeignScope(&inlineForeignBlocks);
    RuntimeFeatureScope runtimeFeatureScope(&runtimeFeatures);
    std::vector<std::string> unsupportedFunctions;
    lowerGlobalVariables(module, tree, unsupportedFunctions);
    lowerAggregateMethodBodies(module, aggregateRegistry, unsupportedFunctions);
    lowerSupportedMacroBodies(module, tree, unsupportedFunctions);
    lowerSupportedFunctionBodies(module, tree, unsupportedFunctions);
    if (!allowPartialLowering && !unsupportedFunctions.empty()) {
        throw std::runtime_error("Direct LLVM lowering is incomplete for module `" + moduleKey
            + "`: " + joinStrings(unsupportedFunctions, ", "));
    }
    for (const auto& unsupported : unsupportedFunctions) {
        appendNamedMetadataNode(module, "apollo.unlowered.functions", {
            llvm::MDString::get(context, unsupported)
        });
    }

    std::string verificationErrors;
    llvm::raw_string_ostream verificationStream(verificationErrors);
    if (!envEnabled("APOLLO_SKIP_VERIFY") && llvm::verifyModule(module, &verificationStream)) {
        verificationStream.flush();
        throw std::runtime_error("LLVM verifier rejected direct IR prototype: " + verificationErrors);
    }

    if (!outputPath.parent_path().empty()) {
        std::filesystem::create_directories(outputPath.parent_path());
    }
    std::error_code fileError;
    llvm::raw_fd_ostream output(outputPath.string(), fileError, llvm::sys::fs::OF_Text);
    if (fileError) {
        throw std::runtime_error("failed to open IR output file: " + outputPath.string() + " (" + fileError.message() + ")");
    }
    module.print(output, nullptr);
}

void ApolloIrCodegen::emitPrototypeModule(const std::filesystem::path& outputPath,
    const std::string& moduleKey,
    const std::filesystem::path& sourcePath,
    compilerv1Parser::ProgramContext* tree,
    const ApolloRuntimeFeatureManifest& runtimeFeatures,
    const ApolloIrLayoutPlan& layoutPlan) {
    emitModule(outputPath, moduleKey, sourcePath, tree, runtimeFeatures, layoutPlan, true);
}

std::optional<std::string> ApolloIrCodegen::lowerPrimitiveType(std::string_view apolloType) {
    const auto it = kPrimitiveIrTypes.find(std::string(apolloType));
    if (it == kPrimitiveIrTypes.end()) {
        return std::nullopt;
    }
    return it->second;
}