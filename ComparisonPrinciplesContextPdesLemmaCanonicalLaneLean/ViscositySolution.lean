import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ViscositySolutionPackage {C : ComparisonPDEContext} where
  testFunction : Prop
  subsolutionTest : Prop
  supersolutionTest : Prop
  equivalenceToWeakSolution : Prop

structure ViscositySolutionEvidence {C : ComparisonPDEContext}
    (V : ViscositySolutionPackage C) where
  testFunctionClosed : V.testFunction
  subsolutionTestClosed : V.subsolutionTest
  supersolutionTestClosed : V.supersolutionTest
  equivalenceToWeakSolutionClosed : V.equivalenceToWeakSolution

def ViscositySolutionClosed {C : ComparisonPDEContext}
    (V : ViscositySolutionPackage C) : Prop :=
  V.testFunction ∧ V.subsolutionTest ∧ V.supersolutionTest ∧ V.equivalenceToWeakSolution

theorem viscosity_solution_closed_from_evidence
    {C : ComparisonPDEContext} (V : ViscositySolutionPackage C)
    (E : ViscositySolutionEvidence V) : ViscositySolutionClosed V := by
  exact And.intro E.testFunctionClosed
    (And.intro E.subsolutionTestClosed
      (And.intro E.supersolutionTestClosed E.equivalenceToWeakSolutionClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
