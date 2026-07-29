import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure IntegerPartitionCongruencePackage where
  ramanujanCongruences : Prop
  mod5Property : Prop
  mod7Property : Prop
  mod11Property : Prop
  dysonRank : Prop

structure IntegerPartitionCongruenceEvidence (I : IntegerPartitionCongruencePackage) where
  ramanujanCongruencesClosed : I.ramanujanCongruences
  mod5PropertyClosed : I.mod5Property
  mod7PropertyClosed : I.mod7Property
  mod11PropertyClosed : I.mod11Property
  dysonRankClosed : I.dysonRank

def IntegerPartitionCongruencesClosed (I : IntegerPartitionCongruencePackage) : Prop :=
  I.ramanujanCongruences ∧ I.mod5Property ∧ I.mod7Property ∧ I.mod11Property ∧ I.dysonRank

theorem integer_partition_congruences_closed_from_evidence
    (I : IntegerPartitionCongruencePackage) (E : IntegerPartitionCongruenceEvidence I) :
    IntegerPartitionCongruencesClosed I := by
  exact And.intro E.ramanujanCongruencesClosed
    (And.intro E.mod5PropertyClosed
      (And.intro E.mod7PropertyClosed
        (And.intro E.mod11PropertyClosed E.dysonRankClosed)))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse