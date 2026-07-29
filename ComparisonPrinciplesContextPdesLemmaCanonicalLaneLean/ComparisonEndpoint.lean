import canonicalLaneMathlib.AdmissibleClass

/-!
# Comparison Endpoint Package
-/

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonEndpointPackage {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} {R : RegularityEstimatesPackage H} where
  uniquenessResult : Prop
  stabilityResult : Prop
  blowUpClassification : Prop

structure ComparisonEndpointEvidence {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} {R : RegularityEstimatesPackage H}
    (E : ComparisonEndpointPackage) where
  uniquenessResultClosed : E.uniquenessResult
  stabilityResultClosed : E.stabilityResult
  blowUpClassificationClosed : E.blowUpClassification

def ComparisonEndpointClosed {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} {R : RegularityEstimatesPackage H}
    (E : ComparisonEndpointPackage) : Prop :=
  E.uniquenessResult ∧ E.stabilityResult ∧ E.blowUpClassification

theorem comparison_endpoint_closed_from_evidence {P : ComparisonPDEPackage}
    {H : HopfMaximumPackage P} {R : RegularityEstimatesPackage H}
    (E : ComparisonEndpointPackage) (Ev : ComparisonEndpointEvidence E) :
    ComparisonEndpointClosed E := by
  exact And.intro Ev.uniquenessResultClosed
    (And.intro Ev.stabilityResultClosed Ev.blowUpClassificationClosed)

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse