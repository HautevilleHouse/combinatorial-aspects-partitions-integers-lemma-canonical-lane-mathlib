import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure CongruencesLemma (A : AdmissibleClass) where
  ramanujanCongruences : Prop
  watsonTransformation : Prop
  mod5Identities : Prop
  mod7Identities : Prop

structure CongruencesEvidence (A : AdmissibleClass) (C : CongruencesLemma A) where
  ramanujanCongruencesClosed : C.ramanujanCongruences
  watsonTransformationClosed : C.watsonTransformation
  mod5IdentitiesClosed : C.mod5Identities
  mod7IdentitiesClosed : C.mod7Identities

def CongruencesClosed (A : AdmissibleClass) (C : CongruencesLemma A) : Prop :=
  C.ramanujanCongruences ∧ C.watsonTransformation ∧ C.mod5Identities ∧ C.mod7Identities

theorem congruences_closed_from_evidence (A : AdmissibleClass) (C : CongruencesLemma A) (E : CongruencesEvidence A C) :
  CongruencesClosed A C :=
by
  exact And.intro E.ramanujanCongruencesClosed (And.intro E.watsonTransformationClosed (And.intro E.mod5IdentitiesClosed E.mod7IdentitiesClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse