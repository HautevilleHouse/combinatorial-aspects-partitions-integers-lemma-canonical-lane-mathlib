import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure EulerPartitionRecurrence (A : AdmissibleClass) where
  pentagonalNumberTheorem : Prop
  recurrenceFormula : Prop
  generatingFunctionIdentity : Prop
  combinatorialProof : Prop

structure EulerPartitionRecurrenceEvidence (A : AdmissibleClass) (E : EulerPartitionRecurrence A) where
  pentagonalNumberTheoremClosed : E.pentagonalNumberTheorem
  recurrenceFormulaClosed : E.recurrenceFormula
  generatingFunctionIdentityClosed : E.generatingFunctionIdentity
  combinatorialProofClosed : E.combinatorialProof

def EulerPartitionRecurrenceClosed (A : AdmissibleClass) (E : EulerPartitionRecurrence A) : Prop :=
  E.pentagonalNumberTheorem ∧ E.recurrenceFormula ∧ E.generatingFunctionIdentity ∧ E.combinatorialProof

theorem euler_partition_recurrence_closed_from_evidence (A : AdmissibleClass) (E : EulerPartitionRecurrence A) (Ev : EulerPartitionRecurrenceEvidence A E) :
  EulerPartitionRecurrenceClosed A E :=
by
  exact And.intro Ev.pentagonalNumberTheoremClosed (And.intro Ev.recurrenceFormulaClosed (And.intro Ev.generatingFunctionIdentityClosed Ev.combinatorialProofClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse