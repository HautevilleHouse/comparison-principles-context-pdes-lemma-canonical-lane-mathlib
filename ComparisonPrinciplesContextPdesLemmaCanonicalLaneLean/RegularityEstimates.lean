import canonicalLaneMathlib.AdmissibleClass

/-!
# Regularity Estimates Package
-/

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure RegularityEstimatesPackage {P : ComparisonPDEPackage}
    (H : HopfMaximumPackage P) where
  holderEstimate : Prop
  schauderEstimate : Prop
  lpEstimate : Prop

structure RegularityEstimatesEvidence {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} (R : RegularityEstimatesPackage H) where
  holderEstimateClosed : R.holderEstimate
  schauderEstimateClosed : R.schauderEstimate
  lpEstimateClosed : R.lpEstimate

def RegularityEstimatesClosed {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} (R : RegularityEstimatesPackage H) : Prop :=
  R.holderEstimate ∧ R.schauderEstimate ∧ R.lpEstimate

theorem regularity_estimates_closed_from_evidence {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} (R : RegularityEstimatesPackage H)
    (E : RegularityEstimatesEvidence R) : RegularityEstimatesClosed R := by
  exact And.intro E.holderEstimateClosed
    (And.intro E.schauderEstimateClosed E.lpEstimateClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse