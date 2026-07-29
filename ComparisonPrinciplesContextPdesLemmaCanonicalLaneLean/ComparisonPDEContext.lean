import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonPDEContext where
  domain : Type u
  operator : domain → domain → Prop
  initialCondition : domain → Prop
  boundaryCondition : domain → Prop
  comparisonPrinciple : Prop

structure ComparisonPDEContextEvidence (C : ComparisonPDEContext) where
  operatorDefined : C.operator
  initialConditionSatisfied : C.initialCondition
  boundaryConditionSatisfied : C.boundaryCondition
  comparisonPrincipleClosed : C.comparisonPrinciple

def ComparisonPDEContextClosed (C : ComparisonPDEContext) : Prop :=
  C.operator ∧ C.initialCondition ∧ C.boundaryCondition ∧ C.comparisonPrinciple

theorem comparison_pde_context_closed_from_evidence
    (C : ComparisonPDEContext) (E : ComparisonPDEContextEvidence C) :
    ComparisonPDEContextClosed C := by
  exact And.intro E.operatorDefined
    (And.intro E.initialConditionSatisfied
      (And.intro E.boundaryConditionSatisfied E.comparisonPrincipleClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
