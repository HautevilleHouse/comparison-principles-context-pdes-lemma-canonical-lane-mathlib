import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure PerronMethodPackage {C : ComparisonPDEContext} where
  subharmonicFamily : Prop
  upperEnvelope : Prop
  envelopeIsSolution : Prop
  comparisonWithOtherSolutions : Prop

structure PerronMethodEvidence {C : ComparisonPDEContext}
    (P : PerronMethodPackage C) where
  subharmonicFamilyClosed : P.subharmonicFamily
  upperEnvelopeClosed : P.upperEnvelope
  envelopeIsSolutionClosed : P.envelopeIsSolution
  comparisonWithOtherSolutionsClosed : P.comparisonWithOtherSolutions

def PerronMethodClosed {C : ComparisonPDEContext}
    (P : PerronMethodPackage C) : Prop :=
  P.subharmonicFamily ∧ P.upperEnvelope ∧ P.envelopeIsSolution ∧ P.comparisonWithOtherSolutions

theorem perron_method_closed_from_evidence
    {C : ComparisonPDEContext} (P : PerronMethodPackage C)
    (E : PerronMethodEvidence P) : PerronMethodClosed P := by
  exact And.intro E.subharmonicFamilyClosed
    (And.intro E.upperEnvelopeClosed
      (And.intro E.envelopeIsSolutionClosed E.comparisonWithOtherSolutionsClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
