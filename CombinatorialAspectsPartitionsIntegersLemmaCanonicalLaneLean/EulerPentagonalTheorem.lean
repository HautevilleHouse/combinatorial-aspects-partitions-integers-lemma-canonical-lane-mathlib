import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure EulerPentagonalTheoremPackage where
  pentagonalNumberSeries : Type u
  eulerPentagonalIdentity : Prop
  recurrenceForPartitions : Prop
  combinatorialInterpretation : Prop
  connectionToModularForms : Prop

structure EulerPentagonalTheoremEvidence (E : EulerPentagonalTheoremPackage) where
  pentagonalNumberSeriesClosed : E.pentagonalNumberSeries
  eulerPentagonalIdentityClosed : E.eulerPentagonalIdentity
  recurrenceForPartitionsClosed : E.recurrenceForPartitions
  combinatorialInterpretationClosed : E.combinatorialInterpretation
  connectionToModularFormsClosed : E.connectionToModularForms

def EulerPentagonalTheoremClosed (E : EulerPentagonalTheoremPackage) : Prop :=
  E.pentagonalNumberSeries ∧ E.eulerPentagonalIdentity ∧
  E.recurrenceForPartitions ∧ E.combinatorialInterpretation ∧
  E.connectionToModularForms

theorem euler_pentagonal_theorem_closed_from_evidence
    (E : EulerPentagonalTheoremPackage) (Ev : EulerPentagonalTheoremEvidence E) :
    EulerPentagonalTheoremClosed E := by
  exact And.intro Ev.pentagonalNumberSeriesClosed
    (And.intro Ev.eulerPentagonalIdentityClosed
      (And.intro Ev.recurrenceForPartitionsClosed
        (And.intro Ev.combinatorialInterpretationClosed
          Ev.connectionToModularFormsClosed)))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse
