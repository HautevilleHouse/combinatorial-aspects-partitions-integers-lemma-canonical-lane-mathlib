import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure Partition where
  parts : List ℕ
  sumCondition : ℕ

def validPartition (p : Partition) : Prop :=
  (∀ x ∈ p.parts, x ≥ 1) ∧ (List.sum p.parts = p.sumCondition)

structure PartitionAdmittedObject where
  partition : Partition
  identityProperty : Prop
  conclusion : identityProperty

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse