import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ParabolicComparison where
  timeDomain : Type u
  spatialDomain : Type v
  parabolicOperator : (timeDomain → spatialDomain → ℝ) → (timeDomain → spatialDomain → ℝ)
  weakComparison : Prop
  strongComparison : Prop
  interiorGradientEstimate : Prop
  comparisonClosed : weakComparison ∧ strongComparison ∧ interiorGradientEstimate

structure ParabolicComparisonEvidence (P : ParabolicComparison) where
  weakComparisonClosed : P.weakComparison
  strongComparisonClosed : P.strongComparison
  interiorGradientEstimateClosed : P.interiorGradientEstimate

def ParabolicComparisonClosed (P : ParabolicComparison) : Prop :=
  P.weakComparison ∧ P.strongComparison ∧ P.interiorGradientEstimate

theorem parabolic_comparison_closed_from_evidence (P : ParabolicComparison) (E : ParabolicComparisonEvidence P) :
    ParabolicComparisonClosed P := by
  exact And.intro E.weakComparisonClosed (And.intro E.strongComparisonClosed E.interiorGradientEstimateClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse