import java.util.LinkedHashSet;
import java.util.Set;

public final class ApolloCodegenOptimizationPlan {
    private final Set<String> soaEligibleTypes;

    private ApolloCodegenOptimizationPlan(Set<String> soaEligibleTypes) {
        this.soaEligibleTypes = Set.copyOf(soaEligibleTypes);
    }

    public boolean usesSoaRuntime() {
        return !soaEligibleTypes.isEmpty();
    }

    public boolean shouldLowerVectorElement(String typeName) {
        return soaEligibleTypes.contains(typeName);
    }

    public static ApolloCodegenOptimizationPlan analyze(compilerv1Parser.ProgramContext tree) {
        SoaEligibilityScanner scanner = new SoaEligibilityScanner();
        scanner.visit(tree);
        return new ApolloCodegenOptimizationPlan(scanner.soaEligibleTypes);
    }

    private static final class SoaEligibilityScanner extends compilerv1BaseVisitor<Void> {
        private final Set<String> soaEligibleTypes = new LinkedHashSet<>();

        @Override
        public Void visitClass(compilerv1Parser.ClassContext ctx) {
            if (isSoaEligible(ctx)) {
                soaEligibleTypes.add(ctx.ID().getText());
            }
            return super.visitClass(ctx);
        }

        @Override
        public Void visitStruct(compilerv1Parser.StructContext ctx) {
            if (isSoaEligible(ctx)) {
                soaEligibleTypes.add(ctx.ID().getText());
            }
            return super.visitStruct(ctx);
        }

        private boolean isSoaEligible(compilerv1Parser.ClassContext ctx) {
            if (ctx.inheritanceClause() != null) {
                return false;
            }
            for (compilerv1Parser.ClassMemberContext member : ctx.classBody().classMember()) {
                if (!isSoaEligibleMember(member.field(), member.method(), member.templateDecl(), member.class_(), member.struct())) {
                    return false;
                }
            }
            return true;
        }

        private boolean isSoaEligible(compilerv1Parser.StructContext ctx) {
            if (ctx.inheritanceClause() != null) {
                return false;
            }
            for (compilerv1Parser.StructMemberContext member : ctx.structBody().structMember()) {
                if (!isSoaEligibleMember(member.field(), member.method(), member.templateDecl(), member.class_(), member.struct())) {
                    return false;
                }
            }
            return true;
        }

        private boolean isSoaEligibleMember(compilerv1Parser.FieldContext field,
                                            compilerv1Parser.MethodContext method,
                                            compilerv1Parser.TemplateDeclContext templateDecl,
                                            compilerv1Parser.ClassContext nestedClass,
                                            compilerv1Parser.StructContext nestedStruct) {
            if (templateDecl != null || nestedClass != null || nestedStruct != null) {
                return false;
            }
            if (method != null) {
                return method.ID() != null && method.VIRTUAL() == null;
            }
            return field == null || isSoaEligibleField(field);
        }

        private boolean isSoaEligibleField(compilerv1Parser.FieldContext field) {
            compilerv1Parser.TypeRefContext typeRef = field.typeRef();
            if (!typeRef.typeModifier().isEmpty()) {
                return false;
            }
            if (typeRef.typeAtom().genericType() != null || typeRef.typeAtom().functionType() != null) {
                return false;
            }
            return typeRef.typeAtom().TYPE() != null || typeRef.typeAtom().FTYPE() != null;
        }
    }
}