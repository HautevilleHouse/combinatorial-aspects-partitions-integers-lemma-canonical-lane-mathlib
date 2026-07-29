import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure PartitionAdmittedObject where
  partitionNumber : ℕ
  partitionFunctionValue : ℕ
  isCorrectPartition : Prop
  conclusion : Prop

structure PartitionAdmissibleClass where
  object : PartitionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def PartitionWitnessClosed (O : PartitionAdmittedObject) : Prop :=
  O.isCorrectPartition

def PartitionAdmittedClosure (A : PartitionAdmissibleClass) : Prop :=
  PartitionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse