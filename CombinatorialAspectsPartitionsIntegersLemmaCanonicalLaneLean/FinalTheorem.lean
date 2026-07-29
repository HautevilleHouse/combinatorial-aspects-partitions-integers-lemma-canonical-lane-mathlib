import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

def ConstrainedPartitionClosure (A : PartitionAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_partition_endgame (A : PartitionAdmissibleClass) :
    ConstrainedPartitionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse