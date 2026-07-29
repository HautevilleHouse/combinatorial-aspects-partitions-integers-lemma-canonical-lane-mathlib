import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure EulerPentagonalNumberTheoremPackage where
  pentagonalNumbers : List ℕ
  eulerIdentityEquality : Prop
  recurrenceRelation : Prop
  generatingFunctionClosedForm : Prop

structure EulerPentagonalNumberTheoremEvidence (E : EulerPentagonalNumberTheoremPackage) where
  pentagonalNumbersClosed : E.pentagonalNumbers.length > 0
  eulerIdentityEqualityClosed : E.eulerIdentityEquality
  recurrenceRelationClosed : E.recurrenceRelation
  generatingFunctionClosedFormClosed : E.generatingFunctionClosedForm

def EulerPentagonalNumberTheoremClosed (E : EulerPentagonalNumberTheoremPackage) : Prop :=
  E.eulerIdentityEquality ∧ E.recurrenceRelation ∧ E.generatingFunctionClosedForm

theorem euler_pentagonal_number_theorem_closed_from_evidence
    (E : EulerPentagonalNumberTheoremPackage) (Ev : EulerPentagonalNumberTheoremEvidence E) :
    EulerPentagonalNumberTheoremClosed E := by
  exact And.intro Ev.eulerIdentityEqualityClosed
    (And.intro Ev.recurrenceRelationClosed Ev.generatingFunctionClosedFormClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse