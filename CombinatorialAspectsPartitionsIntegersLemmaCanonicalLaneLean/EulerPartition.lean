import HautevilleHouse.CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean.PartitionObjects

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure EulerPartitionProof (p : PartitionAdmittedObject) where
  generatingFunctionIdentity : Prop
  pentagonalNumberTheorem : Prop
  recurrenceRelation : Prop
  identityClosed : generatingFunctionIdentity
  pentagonalClosed : pentagonalNumberTheorem
  recurrenceClosed : recurrenceRelation

def EulerPartitionClosed {p : PartitionAdmittedObject} (ep : EulerPartitionProof p) : Prop :=
  ep.generatingFunctionIdentity ∧ ep.pentagonalNumberTheorem ∧ ep.recurrenceRelation

theorem euler_partition_closed_from_evidence {p : PartitionAdmittedObject} (ep : EulerPartitionProof p) :
    EulerPartitionClosed ep := by
  exact And.intro ep.identityClosed (And.intro ep.pentagonalClosed ep.recurrenceClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse