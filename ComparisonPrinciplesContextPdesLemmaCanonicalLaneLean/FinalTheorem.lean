import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

def ConstrainedComparisonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_comparison_endgame (A : AdmissibleClass) :
    ConstrainedComparisonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse