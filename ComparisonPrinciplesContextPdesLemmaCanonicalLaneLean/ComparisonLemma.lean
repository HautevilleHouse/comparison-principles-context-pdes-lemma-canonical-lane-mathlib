import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonLemmaPackage where
  pde : MaximumPrinciplePackage
  subSolution : ComparisonFunctionSpace
  superSolution : ComparisonFunctionSpace
  orderingPreserved : Prop
  barrierFunction : Prop
  comparisonResult : Prop

structure ComparisonLemmaEvidence (C : ComparisonLemmaPackage) where
  orderingPreservedClosed : C.orderingPreserved
  barrierFunctionClosed : C.barrierFunction
  comparisonResultClosed : C.comparisonResult

def ComparisonLemmaClosed (C : ComparisonLemmaPackage) : Prop :=
  C.orderingPreserved ∧ C.barrierFunction ∧ C.comparisonResult

theorem comparison_lemma_closed_from_evidence
    (C : ComparisonLemmaPackage) (E : ComparisonLemmaEvidence C) :
    ComparisonLemmaClosed C := by
  exact And.intro E.orderingPreservedClosed
    (And.intro E.barrierFunctionClosed E.comparisonResultClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse