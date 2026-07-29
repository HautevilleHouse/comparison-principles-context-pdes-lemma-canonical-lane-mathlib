import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure EllipticRegularity where
  domain : Type u
  sobolevSpaces : Type v
  schauderEstimates : Type w
  interiorRegularity : Prop
  boundaryRegularity : Prop
  bootstrapping : Prop
  regularityClosed : interiorRegularity ∧ boundaryRegularity ∧ bootstrapping

structure EllipticRegularityEvidence (E : EllipticRegularity) where
  interiorRegularityClosed : E.interiorRegularity
  boundaryRegularityClosed : E.boundaryRegularity
  bootstrappingClosed : E.bootstrapping

def EllipticRegularityClosed (E : EllipticRegularity) : Prop :=
  E.interiorRegularity ∧ E.boundaryRegularity ∧ E.bootstrapping

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularity) (Ev : EllipticRegularityEvidence E) :
    EllipticRegularityClosed E := by
  exact And.intro Ev.interiorRegularityClosed (And.intro Ev.boundaryRegularityClosed Ev.bootstrappingClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse