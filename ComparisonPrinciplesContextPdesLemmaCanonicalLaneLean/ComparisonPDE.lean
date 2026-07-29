import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonPDE where
  domain : Type u
  boundary : domain → Prop
  operator : (domain → ℝ) → (domain → ℝ)
  comparisonInequality : Prop
  maximumPrinciple : Prop
  strictComparison : Prop
  comparisonClosed : comparisonInequality ∧ maximumPrinciple ∧ strictComparison

structure ComparisonPDEEvidence (C : ComparisonPDE) where
  comparisonInequalityClosed : C.comparisonInequality
  maximumPrincipleClosed : C.maximumPrinciple
  strictComparisonClosed : C.strictComparison

def ComparisonPDEClosed (C : ComparisonPDE) : Prop :=
  C.comparisonInequality ∧ C.maximumPrinciple ∧ C.strictComparison

theorem comparison_pde_closed_from_evidence (C : ComparisonPDE) (E : ComparisonPDEEvidence C) :
    ComparisonPDEClosed C := by
  exact And.intro E.comparisonInequalityClosed (And.intro E.maximumPrincipleClosed E.strictComparisonClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse