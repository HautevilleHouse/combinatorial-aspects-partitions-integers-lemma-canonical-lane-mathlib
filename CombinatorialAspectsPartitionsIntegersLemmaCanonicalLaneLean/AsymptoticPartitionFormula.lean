import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure AsymptoticPartitionFormula (A : AdmissibleClass) where
  hardyRamanujanFormula : Prop
  rademacherConvergentSeries : Prop
  circleMethodEstimate : Prop
  errorBoundExponential : Prop

structure AsymptoticPartitionEvidence (A : AdmissibleClass) (F : AsymptoticPartitionFormula A) where
  hardyRamanujanFormulaClosed : F.hardyRamanujanFormula
  rademacherConvergentSeriesClosed : F.rademacherConvergentSeries
  circleMethodEstimateClosed : F.circleMethodEstimate
  errorBoundExponentialClosed : F.errorBoundExponential

def AsymptoticPartitionClosed (A : AdmissibleClass) (F : AsymptoticPartitionFormula A) : Prop :=
  F.hardyRamanujanFormula ∧ F.rademacherConvergentSeries ∧ F.circleMethodEstimate ∧ F.errorBoundExponential

theorem asymptotic_partition_closed_from_evidence (A : AdmissibleClass) (F : AsymptoticPartitionFormula A) (E : AsymptoticPartitionEvidence A F) :
  AsymptoticPartitionClosed A F :=
by
  exact And.intro E.hardyRamanujanFormulaClosed (And.intro E.rademacherConvergentSeriesClosed (And.intro E.circleMethodEstimateClosed E.errorBoundExponentialClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse