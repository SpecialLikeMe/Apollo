// Apollo MIR — types.
//
// `Ty` is a `const TyData*`; two pointers are equal iff the types are
// structurally equal. The `TyCtxt` interns by FNV-1a over a canonical
// byte representation of the `TyKind`. Region variables (`RegionVid`) are
// fresh integers allocated by the borrow checker and never participate in
// structural equality of Tys themselves — region inference happens on a
// separate constraint graph, see `mir/borrowck/`.

#ifndef APOLLO_MIR_TY_H
#define APOLLO_MIR_TY_H

#include <cstdint>
#include <memory>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace apollo::mir {

enum class IntTy : std::uint8_t { Isize, I8, I16, I32, I64, I128 };
enum class UintTy : std::uint8_t { Usize, U8, U16, U32, U64, U128 };
enum class FloatTy : std::uint8_t { F32, F64 };
enum class Mutability : std::uint8_t { Not, Mut };

using DefId       = std::uint32_t;
using AdtDefId    = std::uint32_t;
using RegionVid   = std::uint32_t;
constexpr RegionVid kStaticRegion = 0;

struct Region {
    RegionVid id = kStaticRegion;
    bool operator==(const Region&) const = default;
};

struct TyData;
using Ty = const TyData*;

enum class TyKindTag : std::uint8_t {
    Bool, Char, Int, Uint, Float, Str, Never,
    Tuple, Array, Slice, Ref, RawPtr,
    Adt, FnDef, FnPtr, Param, Error,
};

struct TyData {
    TyKindTag tag;
    // Union-of-records (we use shared storage; tag selects which fields apply):
    IntTy   int_ty   = IntTy::I32;
    UintTy  uint_ty  = UintTy::U32;
    FloatTy float_ty = FloatTy::F64;
    Mutability mutability = Mutability::Not;
    Region region{};
    Ty       elem  = nullptr;       // for Ref, RawPtr, Array, Slice
    std::uint64_t array_len = 0;    // for Array
    std::vector<Ty> elems;          // for Tuple / FnPtr (last = ret)
    AdtDefId adt = 0;                // for Adt / FnDef
    std::vector<Ty> generic_args;    // for Adt / FnDef
    std::uint32_t param_index = 0;   // for Param

    // Equality / hash by structure (used by TyCtxt's interner).
    bool structurally_equal(const TyData& o) const noexcept;
};

struct TyHash { std::size_t operator()(const TyData* t) const noexcept; };
struct TyEq   { bool operator()(const TyData* a, const TyData* b) const noexcept { return a->structurally_equal(*b); } };

class TyCtxt {
public:
    TyCtxt();

    Ty mkBool() const noexcept { return bool_; }
    Ty mkChar() const noexcept { return char_; }
    Ty mkStr()  const noexcept { return str_; }
    Ty mkNever() const noexcept { return never_; }
    Ty mkError() const noexcept { return error_; }
    Ty mkUnit() const noexcept { return unit_; }

    Ty mkInt(IntTy t)     { TyData d{TyKindTag::Int};  d.int_ty  = t; return intern(d); }
    Ty mkUint(UintTy t)   { TyData d{TyKindTag::Uint}; d.uint_ty = t; return intern(d); }
    Ty mkFloat(FloatTy t) { TyData d{TyKindTag::Float}; d.float_ty = t; return intern(d); }

    Ty mkRef(Region r, Ty inner, Mutability m) {
        TyData d{TyKindTag::Ref}; d.region = r; d.elem = inner; d.mutability = m; return intern(d);
    }
    Ty mkRawPtr(Ty inner, Mutability m) {
        TyData d{TyKindTag::RawPtr}; d.elem = inner; d.mutability = m; return intern(d);
    }
    Ty mkArray(Ty inner, std::uint64_t n) {
        TyData d{TyKindTag::Array}; d.elem = inner; d.array_len = n; return intern(d);
    }
    Ty mkSlice(Ty inner) {
        TyData d{TyKindTag::Slice}; d.elem = inner; return intern(d);
    }
    Ty mkTuple(std::vector<Ty> elems) {
        if (elems.empty()) return unit_;
        TyData d{TyKindTag::Tuple}; d.elems = std::move(elems); return intern(d);
    }
    Ty mkAdt(AdtDefId id, std::vector<Ty> args) {
        TyData d{TyKindTag::Adt}; d.adt = id; d.generic_args = std::move(args); return intern(d);
    }
    Ty mkFnDef(DefId id, std::vector<Ty> args) {
        TyData d{TyKindTag::FnDef}; d.adt = id; d.generic_args = std::move(args); return intern(d);
    }
    Ty mkFnPtr(std::vector<Ty> params_and_ret) {
        TyData d{TyKindTag::FnPtr}; d.elems = std::move(params_and_ret); return intern(d);
    }
    Ty mkParam(std::uint32_t idx) {
        TyData d{TyKindTag::Param}; d.param_index = idx; return intern(d);
    }

    std::string render(Ty ty) const;

private:
    Ty intern(const TyData& d);
    Ty bool_, char_, str_, never_, error_, unit_;
    std::unordered_set<const TyData*, TyHash, TyEq> set_;
    std::vector<std::unique_ptr<TyData>> storage_;
};

} // namespace apollo::mir

#endif
