import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ComparisonLemmaPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComparisonLemmaClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse