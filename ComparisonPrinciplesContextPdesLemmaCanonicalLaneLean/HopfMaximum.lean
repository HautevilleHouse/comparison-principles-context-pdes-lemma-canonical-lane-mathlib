import canonicalLaneMathlib.AdmissibleClass

/-!
# Hopf Maximum Principle Package
-/

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure HopfMaximumPackage (P : ComparisonPDEPackage) where
  interiorMaximum : Prop
  boundaryGradient : Prop
  strictMaximum : Prop
  parabolicExtension : Prop

structure HopfMaximumEvidence {P : ComparisonPDEPackage}
    (H : HopfMaximumPackage P) where
  interiorMaximumClosed : H.interiorMaximum
  boundaryGradientClosed : H.boundaryGradient
  strictMaximumClosed : H.strictMaximum
  parabolicExtensionClosed : H.parabolicExtension

def HopfMaximumClosed {P : ComparisonPDEPackage}
    (H : HopfMaximumPackage P) : Prop :=
  H.interiorMaximum ∧ H.boundaryGradient ∧ H.strictMaximum ∧ H.parabolicExtension

theorem hopf_maximum_closed_from_evidence {P : ComparisonPDEPackage}
    (H : HopfMaximumPackage P) (E : HopfMaximumEvidence H) :
    HopfMaximumClosed H := by
  exact And.intro E.interiorMaximumClosed
    (And.intro E.boundaryGradientClosed
      (And.intro E.strictMaximumClosed E.parabolicExtensionClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse