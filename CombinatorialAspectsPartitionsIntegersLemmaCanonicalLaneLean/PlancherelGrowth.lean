import HautevilleHouse.CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean.PartitionObjects
import Mathlib.Analysis.SpecialFunctions.Log

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure PlancherelGrowth (p : PartitionAdmittedObject) where
  expectedShape : Prop
  typicalGrowthRate : Prop
  lawOfLargeNumbers : Prop
  shapeClosed : expectedShape
  rateClosed : typicalGrowthRate
  llmClosed : lawOfLargeNumbers

def PlancherelClosed {p : PartitionAdmittedObject} (pg : PlancherelGrowth p) : Prop :=
  pg.expectedShape ∧ pg.typicalGrowthRate ∧ pg.lawOfLargeNumbers

theorem plancherel_closed_from_evidence {p : PartitionAdmittedObject} (pg : PlancherelGrowth p) :
    PlancherelClosed pg := by
  exact And.intro pg.shapeClosed (And.intro pg.rateClosed pg.llmClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse