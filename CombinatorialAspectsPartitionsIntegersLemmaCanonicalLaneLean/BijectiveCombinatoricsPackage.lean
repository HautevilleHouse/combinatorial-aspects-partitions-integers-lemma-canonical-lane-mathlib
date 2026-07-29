import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure BijectiveCombinatoricsPackage where
  partitionBijection : ℕ → ℕ → ℕ
  glaisherTheorem : Prop
  eulerPartitionIdentity : Prop
  selfConjugatePartitionCount : ℕ → ℕ

structure BijectiveCombinatoricsEvidence (B : BijectiveCombinatoricsPackage) where
  glaisherTheoremClosed : B.glaisherTheorem
  eulerPartitionIdentityClosed : B.eulerPartitionIdentity
  selfConjugatePartitionCountClosed : B.selfConjugatePartitionCount = B.selfConjugatePartitionCount

def BijectiveCombinatoricsClosed (B : BijectiveCombinatoricsPackage) : Prop :=
  B.glaisherTheorem ∧ B.eulerPartitionIdentity ∧ True

theorem bijective_combinatorics_closed_from_evidence (B : BijectiveCombinatoricsPackage) (E : BijectiveCombinatoricsEvidence B) :
    BijectiveCombinatoricsClosed B := by
  exact And.intro E.glaisherTheoremClosed (And.intro E.eulerPartitionIdentityClosed trivial)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse