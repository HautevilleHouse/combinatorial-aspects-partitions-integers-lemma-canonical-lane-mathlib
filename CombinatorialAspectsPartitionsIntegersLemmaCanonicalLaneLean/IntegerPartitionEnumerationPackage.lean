import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure IntegerPartitionEnumerationPackage where
  partitionEnumeration : ℕ → List (List ℕ)
  youngDiagramBijection : Prop
  durfeeSquare : Prop
  conjugatePartition : Prop
  hookLengthFormula : Prop

structure IntegerPartitionEnumerationEvidence (E : IntegerPartitionEnumerationPackage) where
  youngDiagramBijectionClosed : E.youngDiagramBijection
  durfeeSquareClosed : E.durfeeSquare
  conjugatePartitionClosed : E.conjugatePartition
  hookLengthFormulaClosed : E.hookLengthFormula

def IntegerPartitionEnumerationClosed (E : IntegerPartitionEnumerationPackage) : Prop :=
  E.youngDiagramBijection ∧ E.durfeeSquare ∧ E.conjugatePartition ∧ E.hookLengthFormula

theorem integer_partition_enumeration_closed_from_evidence (E : IntegerPartitionEnumerationPackage) (Ev : IntegerPartitionEnumerationEvidence E) :
    IntegerPartitionEnumerationClosed E := by
  exact And.intro Ev.youngDiagramBijectionClosed (And.intro Ev.durfeeSquareClosed (And.intro Ev.conjugatePartitionClosed Ev.hookLengthFormulaClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse