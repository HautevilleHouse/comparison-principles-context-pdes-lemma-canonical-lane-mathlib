import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonFunctionSpace where
  domain : Type u
  codomain : Type v
  functions : Set (domain → codomain)
  topology : TopologicalSpace (domain → codomain)
  functionClass : Prop

structure ComparisonFunctionSpaceEvidence (F : ComparisonFunctionSpace) where
  domainNonempty : Nonempty F.domain
  functionClassClosed : F.functionClass

def ComparisonFunctionSpaceClosed (F : ComparisonFunctionSpace) : Prop :=
  F.functionClass

theorem comparison_function_space_closed_from_evidence
    (F : ComparisonFunctionSpace) (E : ComparisonFunctionSpaceEvidence F) :
    ComparisonFunctionSpaceClosed F := by
  exact E.functionClassClosed

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse