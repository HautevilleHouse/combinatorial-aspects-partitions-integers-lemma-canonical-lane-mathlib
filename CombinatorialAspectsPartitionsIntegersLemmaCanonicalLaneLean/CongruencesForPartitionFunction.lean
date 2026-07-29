import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure PartitionCongruencesPackage where
  ramanujanCongruences : Prop
  watsonTransform : Prop
  modularFormsMethod : Prop
  combinatorialProof : Prop
  generalizationsToModularForms : Prop

structure PartitionCongruencesEvidence (P : PartitionCongruencesPackage) where
  ramanujanCongruencesClosed : P.ramanujanCongruences
  watsonTransformClosed : P.watsonTransform
  modularFormsMethodClosed : P.modularFormsMethod
  combinatorialProofClosed : P.combinatorialProof
  generalizationsToModularFormsClosed : P.generalizationsToModularForms

def PartitionCongruencesClosed (P : PartitionCongruencesPackage) : Prop :=
  P.ramanujanCongruences ∧ P.watsonTransform ∧
  P.modularFormsMethod ∧ P.combinatorialProof ∧
  P.generalizationsToModularForms

theorem partition_congruences_closed_from_evidence
    (P : PartitionCongruencesPackage) (Ev : PartitionCongruencesEvidence P) :
    PartitionCongruencesClosed P := by
  exact And.intro Ev.ramanujanCongruencesClosed
    (And.intro Ev.watsonTransformClosed
      (And.intro Ev.modularFormsMethodClosed
        (And.intro Ev.combinatorialProofClosed
          Ev.generalizationsToModularFormsClosed)))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse
