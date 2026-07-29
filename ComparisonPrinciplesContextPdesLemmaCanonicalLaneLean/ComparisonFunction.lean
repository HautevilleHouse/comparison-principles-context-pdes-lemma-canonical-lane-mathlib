import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonFunction where
  lowerFunction : Type u → Prop
  upperFunction : Type u → Prop
  comparisonInequality : Prop
  viscositySolution : Prop

structure ComparisonFunctionEvidence (F : ComparisonFunction) where
  lowerFunctionDefined : F.lowerFunction
  upperFunctionDefined : F.upperFunction
  comparisonInequalityClosed : F.comparisonInequality
  viscositySolutionClosed : F.viscositySolution

def ComparisonFunctionClosed (F : ComparisonFunction) : Prop :=
  F.lowerFunction ∧ F.upperFunction ∧ F.comparisonInequality ∧ F.viscositySolution

theorem comparison_function_closed_from_evidence
    (F : ComparisonFunction) (E : ComparisonFunctionEvidence F) :
    ComparisonFunctionClosed F := by
  exact And.intro E.lowerFunctionDefined
    (And.intro E.upperFunctionDefined
      (And.intro E.comparisonInequalityClosed E.viscositySolutionClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
