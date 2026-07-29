import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure BijectiveProofs (A : AdmissibleClass) where
  involutionPrinciple : Prop
  partitionConjugation : Prop
  glaisherTheorem : Prop
  sylvesterBijection : Prop

structure BijectiveProofsEvidence (A : AdmissibleClass) (B : BijectiveProofs A) where
  involutionPrincipleClosed : B.involutionPrinciple
  partitionConjugationClosed : B.partitionConjugation
  glaisherTheoremClosed : B.glaisherTheorem
  sylvesterBijectionClosed : B.sylvesterBijection

def BijectiveProofsClosed (A : AdmissibleClass) (B : BijectiveProofs A) : Prop :=
  B.involutionPrinciple ∧ B.partitionConjugation ∧ B.glaisherTheorem ∧ B.sylvesterBijection

theorem bijective_proofs_closed_from_evidence (A : AdmissibleClass) (B : BijectiveProofs A) (E : BijectiveProofsEvidence A B) :
  BijectiveProofsClosed A B :=
by
  exact And.intro E.involutionPrincipleClosed (And.intro E.partitionConjugationClosed (And.intro E.glaisherTheoremClosed E.sylvesterBijectionClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse