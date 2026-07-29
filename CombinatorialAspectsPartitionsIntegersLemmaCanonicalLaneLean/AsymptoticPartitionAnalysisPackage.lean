import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure AsymptoticPartitionAnalysisPackage where
  partitionCountApproximation : ℕ → ℝ
  hardyRamanujanFormula : Prop
  saddlePointMethod : Prop
  errorBound : Prop

structure AsymptoticPartitionAnalysisEvidence (A : AsymptoticPartitionAnalysisPackage) where
  hardyRamanujanFormulaClosed : A.hardyRamanujanFormula
  saddlePointMethodClosed : A.saddlePointMethod
  errorBoundClosed : A.errorBound

def AsymptoticPartitionAnalysisClosed (A : AsymptoticPartitionAnalysisPackage) : Prop :=
  A.hardyRamanujanFormula ∧ A.saddlePointMethod ∧ A.errorBound

theorem asymptotic_partition_analysis_closed_from_evidence (A : AsymptoticPartitionAnalysisPackage) (E : AsymptoticPartitionAnalysisEvidence A) :
    AsymptoticPartitionAnalysisClosed A := by
  exact And.intro E.hardyRamanujanFormulaClosed (And.intro E.saddlePointMethodClosed E.errorBoundClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse