import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure CPContextPDEObject where
  domainType : Type u
  pdeFamily : Type v
  solutionSpace : Type w
  comparisonPrincipleHolds : Prop
  uniquenessResult : Prop
  continuousDependence : Prop
  conclusion : comparisonPrincipleHolds

def CPContextPDEWitnessClosed (O : CPContextPDEObject) : Prop :=
  O.comparisonPrincipleHolds

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse