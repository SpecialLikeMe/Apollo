#include "mir.h"

namespace apollo::mir {

Ty placeTy(const Place& p, const Body& body, const TyCtxt& /*tcx*/) {
    if (p.local >= body.locals.size()) return nullptr;
    Ty cur = body.locals[p.local].ty;
    for (const auto& elem : p.projection) {
        if (!cur) return nullptr;
        switch (elem.kind) {
            case PlaceElemKind::Deref:
                if (cur->tag == TyKindTag::Ref || cur->tag == TyKindTag::RawPtr) {
                    cur = cur->elem;
                } else {
                    return nullptr;
                }
                break;
            case PlaceElemKind::Field:
                // Field type is carried with the elem (codegen-provided).
                cur = elem.ty;
                break;
            case PlaceElemKind::Index: case PlaceElemKind::ConstantIndex:
                if (cur->tag == TyKindTag::Array || cur->tag == TyKindTag::Slice) {
                    cur = cur->elem;
                } else {
                    return nullptr;
                }
                break;
            case PlaceElemKind::Subslice:
                // Subslice of T is still a slice.
                if (cur->tag == TyKindTag::Array || cur->tag == TyKindTag::Slice) {
                    cur = cur->elem; // simplified: the borrowck only needs elem type.
                } else {
                    return nullptr;
                }
                break;
            case PlaceElemKind::Downcast:
                // Downcast keeps the same Ty; variant is tracked separately.
                break;
            case PlaceElemKind::OpaqueCast:
            case PlaceElemKind::Subtype:
                cur = elem.ty;
                break;
        }
    }
    return cur;
}

} // namespace apollo::mir
