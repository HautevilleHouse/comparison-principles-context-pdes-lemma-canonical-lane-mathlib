import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure MaximumPrinciplePackage {C : ComparisonPDEContext} where
  ellipticOperator : Prop
  subsolutionProperty : Prop
  supersolutionProperty : Prop
  maximumAttainedAtInterior : Prop
  maximumConstantIfNoBoundary : Prop

structure MaximumPrincipleEvidence {C : ComparisonPDEContext}
    (M : MaximumPrinciplePackage C) where
  ellipticOperatorClosed : M.ellipticOperator
  subsolutionPropertyClosed : M.subsolutionProperty
  supersolutionPropertyClosed : M.supersolutionProperty
  maximumAttainedAtInteriorClosed : M.maximumAttainedAtInterior
  maximumConstantIfNoBoundaryClosed : M.maximumConstantIfNoBoundary

def MaximumPrincipleClosed {C : ComparisonPDEContext}
    (M : MaximumPrinciplePackage C) : Prop :=
  M.ellipticOperator ∧ M.subsolutionProperty ∧ M.supersolutionProperty ∧
  M.maximumAttainedAtInterior ∧ M.maximumConstantIfNoBoundary

theorem maximum_principle_closed_from_evidence
    {C : ComparisonPDEContext} (M : MaximumPrinciplePackage C)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.ellipticOperatorClosed
    (And.intro E.subsolutionPropertyClosed
      (And.intro E.supersolutionPropertyClosed
        (And.intro E.maximumAttainedAtInteriorClosed
          E.maximumConstantIfNoBoundaryClosed)))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
