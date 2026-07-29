import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure BijectiveProofPackage where
  setA : Set (List ℕ)
  setB : Set (List ℕ)
  bijection : List ℕ → List ℕ
  weightPreserving : Prop
  involutionGiven : Prop
  bijectiveEvidence : weightPreserving ∧ involutionGiven

def bijectiveClosed (B : BijectiveProofPackage) : Prop :=
  B.weightPreserving ∧ B.involutionGiven

theorem bijective_closed_from_evidence (B : BijectiveProofPackage)
    (E : B.bijectiveEvidence) : bijectiveClosed B := by
  exact E

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse