#include "ty.h"

#include <sstream>

namespace apollo::mir {

bool TyData::structurally_equal(const TyData& o) const noexcept {
    if (tag != o.tag) return false;
    switch (tag) {
        case TyKindTag::Bool: case TyKindTag::Char: case TyKindTag::Str:
        case TyKindTag::Never: case TyKindTag::Error:
            return true;
        case TyKindTag::Int:   return int_ty == o.int_ty;
        case TyKindTag::Uint:  return uint_ty == o.uint_ty;
        case TyKindTag::Float: return float_ty == o.float_ty;
        case TyKindTag::Ref:   return region == o.region && elem == o.elem && mutability == o.mutability;
        case TyKindTag::RawPtr:return elem == o.elem && mutability == o.mutability;
        case TyKindTag::Array: return elem == o.elem && array_len == o.array_len;
        case TyKindTag::Slice: return elem == o.elem;
        case TyKindTag::Tuple: case TyKindTag::FnPtr:
            return elems == o.elems;
        case TyKindTag::Adt: case TyKindTag::FnDef:
            return adt == o.adt && generic_args == o.generic_args;
        case TyKindTag::Param: return param_index == o.param_index;
    }
    return false;
}

std::size_t TyHash::operator()(const TyData* t) const noexcept {
    // FNV-1a 64-bit.
    constexpr std::uint64_t kSeed = 0xcbf29ce484222325ULL;
    constexpr std::uint64_t kP    = 0x100000001b3ULL;
    std::uint64_t h = kSeed ^ static_cast<std::uint64_t>(t->tag);
    auto mix = [&](std::uint64_t v){ h ^= v; h *= kP; };
    switch (t->tag) {
        case TyKindTag::Int:   mix(static_cast<std::uint64_t>(t->int_ty));   break;
        case TyKindTag::Uint:  mix(static_cast<std::uint64_t>(t->uint_ty));  break;
        case TyKindTag::Float: mix(static_cast<std::uint64_t>(t->float_ty)); break;
        case TyKindTag::Ref:
            mix(t->region.id);
            mix(reinterpret_cast<std::uintptr_t>(t->elem));
            mix(static_cast<std::uint64_t>(t->mutability));
            break;
        case TyKindTag::RawPtr:
            mix(reinterpret_cast<std::uintptr_t>(t->elem));
            mix(static_cast<std::uint64_t>(t->mutability));
            break;
        case TyKindTag::Array:
            mix(reinterpret_cast<std::uintptr_t>(t->elem));
            mix(t->array_len);
            break;
        case TyKindTag::Slice:
            mix(reinterpret_cast<std::uintptr_t>(t->elem));
            break;
        case TyKindTag::Tuple: case TyKindTag::FnPtr:
            for (auto* e : t->elems) mix(reinterpret_cast<std::uintptr_t>(e));
            break;
        case TyKindTag::Adt: case TyKindTag::FnDef:
            mix(t->adt);
            for (auto* g : t->generic_args) mix(reinterpret_cast<std::uintptr_t>(g));
            break;
        case TyKindTag::Param: mix(t->param_index); break;
        default: break;
    }
    return static_cast<std::size_t>(h);
}

TyCtxt::TyCtxt() {
    auto mk = [&](TyKindTag tag) {
        auto p = std::make_unique<TyData>();
        p->tag = tag;
        Ty out = p.get();
        set_.insert(out);
        storage_.push_back(std::move(p));
        return out;
    };
    bool_  = mk(TyKindTag::Bool);
    char_  = mk(TyKindTag::Char);
    str_   = mk(TyKindTag::Str);
    never_ = mk(TyKindTag::Never);
    error_ = mk(TyKindTag::Error);

    auto unit_p = std::make_unique<TyData>();
    unit_p->tag = TyKindTag::Tuple;
    unit_ = unit_p.get();
    set_.insert(unit_);
    storage_.push_back(std::move(unit_p));
}

Ty TyCtxt::intern(const TyData& d) {
    auto it = set_.find(&d);
    if (it != set_.end()) return *it;
    auto p = std::make_unique<TyData>(d);
    Ty out = p.get();
    set_.insert(out);
    storage_.push_back(std::move(p));
    return out;
}

std::string TyCtxt::render(Ty t) const {
    if (!t) return "<null>";
    std::ostringstream os;
    switch (t->tag) {
        case TyKindTag::Bool: return "bool";
        case TyKindTag::Char: return "char";
        case TyKindTag::Str:  return "str";
        case TyKindTag::Never: return "!";
        case TyKindTag::Error: return "<error>";
        case TyKindTag::Int: {
            switch (t->int_ty) {
                case IntTy::Isize: return "isize";
                case IntTy::I8:    return "i8";
                case IntTy::I16:   return "i16";
                case IntTy::I32:   return "i32";
                case IntTy::I64:   return "i64";
                case IntTy::I128:  return "i128";
            }
            return "i?";
        }
        case TyKindTag::Uint: {
            switch (t->uint_ty) {
                case UintTy::Usize: return "usize";
                case UintTy::U8:    return "u8";
                case UintTy::U16:   return "u16";
                case UintTy::U32:   return "u32";
                case UintTy::U64:   return "u64";
                case UintTy::U128:  return "u128";
            }
            return "u?";
        }
        case TyKindTag::Float:
            return t->float_ty == FloatTy::F32 ? "f32" : "f64";
        case TyKindTag::Ref:
            os << '&';
            if (t->mutability == Mutability::Mut) os << "mut ";
            os << render(t->elem);
            return os.str();
        case TyKindTag::RawPtr:
            os << (t->mutability == Mutability::Mut ? "*mut " : "*const ");
            os << render(t->elem);
            return os.str();
        case TyKindTag::Array:
            os << '[' << render(t->elem) << "; " << t->array_len << ']';
            return os.str();
        case TyKindTag::Slice:
            os << '[' << render(t->elem) << ']';
            return os.str();
        case TyKindTag::Tuple:
            os << '(';
            for (std::size_t i = 0; i < t->elems.size(); ++i) {
                if (i) os << ", ";
                os << render(t->elems[i]);
            }
            if (t->elems.size() == 1) os << ',';
            os << ')';
            return os.str();
        case TyKindTag::Adt:
            os << "adt#" << t->adt;
            return os.str();
        case TyKindTag::FnDef:
            os << "fn#" << t->adt;
            return os.str();
        case TyKindTag::FnPtr:
            os << "fn(";
            for (std::size_t i = 0; i + 1 < t->elems.size(); ++i) {
                if (i) os << ", ";
                os << render(t->elems[i]);
            }
            os << ") -> ";
            if (!t->elems.empty()) os << render(t->elems.back());
            return os.str();
        case TyKindTag::Param:
            os << "T" << t->param_index;
            return os.str();
    }
    return "<?>";
}

} // namespace apollo::mir
