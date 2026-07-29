import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure MaximumPrinciplePackage where
  pdeType : Type u
  solutionSpace : Type v
  maximumPrincipleHolds : Prop
  boundaryCondition : Prop
  supremumBound : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  maximumPrincipleHoldsClosed : M.maximumPrincipleHolds
  boundaryConditionClosed : M.boundaryCondition
  supremumBoundClosed : M.supremumBound

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.maximumPrincipleHolds ∧ M.boundaryCondition ∧ M.supremumBound

theorem maximum_principle_closed_from_evidence
    (M : MaximumPrinciplePackage) (E : MaximumPrincipleEvidence M) :
    MaximumPrincipleClosed M := by
  exact And.intro E.maximumPrincipleHoldsClosed
    (And.intro E.boundaryConditionClosed E.supremumBoundClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse