import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure StrongMaximumPrinciple where
  domainType : Type u
  operatorType : Type v
  hopfLemma : domainType → Prop
  strongMaximum : Prop
  boundaryPointPrinciple : Prop
  principleClosed : hopfLemma ∧ strongMaximum ∧ boundaryPointPrinciple

structure StrongMaximumPrincipleEvidence (S : StrongMaximumPrinciple) where
  hopfLemmaClosed : S.hopfLemma
  strongMaximumClosed : S.strongMaximum
  boundaryPointPrincipleClosed : S.boundaryPointPrinciple

def StrongMaximumPrincipleClosed (S : StrongMaximumPrinciple) : Prop :=
  S.hopfLemma ∧ S.strongMaximum ∧ S.boundaryPointPrinciple

theorem strong_maximum_principle_closed_from_evidence (S : StrongMaximumPrinciple) (E : StrongMaximumPrincipleEvidence S) :
    StrongMaximumPrincipleClosed S := by
  exact And.intro E.hopfLemmaClosed (And.intro E.strongMaximumClosed E.boundaryPointPrincipleClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse