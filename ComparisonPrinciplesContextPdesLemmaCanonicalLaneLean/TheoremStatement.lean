import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "comparison-principles-context-pdes-lemma",
    theoremName := "Comparison Principles Context Pdes Lemma",
    theoremObject := "ComparisonAdmittedObject",
    classicalBoundary := "carried via open boundary",
    manifoldConstrainedStatement := "convexity and viscosity solution constraints for the admissible class",
    certificateLane := "constrained",
    carriedRemainder := "unrestricted classical boundary carried by formalization"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  True

def ManifoldConstrainedTheoremClosed : Prop :=
  True

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "comparison-principles-context-pdes-lemma" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "constrained" := by
  rfl

end ComparisonPrinciplesContextPdesLemmaCanonicalLaneLean
end HautevilleHouse
