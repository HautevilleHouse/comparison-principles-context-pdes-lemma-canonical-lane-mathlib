import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure ComparisonPrinciplePackage {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) where
  localComparisonInequality : Prop
  parabolicComparisonPde : Prop
  barrierConstruction : Prop
  comparisonPropagation : Prop

structure ComparisonPrincipleEvidence {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Cpkg : ComparisonPrinciplePackage Z) where
  localComparisonInequalityClosed : Cpkg.localComparisonInequality
  parabolicComparisonPdeClosed : Cpkg.parabolicComparisonPde
  barrierConstructionClosed : Cpkg.barrierConstruction
  comparisonPropagationClosed : Cpkg.comparisonPropagation

def ComparisonPrincipleClosed {G : RiemannianCurvaturePackage}
    {F : RicciFlowPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : PerelmanEntropyPackage S} {N : NoncollapsingPackage Epkg}
    {Q : SingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Cpkg : ComparisonPrinciplePackage Z) : Prop :=
  Cpkg.localComparisonInequality ∧ Cpkg.parabolicComparisonPde ∧
  Cpkg.barrierConstruction ∧ Cpkg.comparisonPropagation

theorem comparison_principle_closed_from_evidence
    {G : RiemannianCurvaturePackage} {F : RicciFlowPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : PerelmanEntropyPackage S}
    {N : NoncollapsingPackage Epkg} {Q : SingularityModelsPackage N}
    {C : CanonicalNeighborhoodsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Cpkg : ComparisonPrinciplePackage Z)
    (E : ComparisonPrincipleEvidence Cpkg) : ComparisonPrincipleClosed Cpkg := by
  exact And.intro E.localComparisonInequalityClosed
    (And.intro E.parabolicComparisonPdeClosed
      (And.intro E.barrierConstructionClosed E.comparisonPropagationClosed))

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse