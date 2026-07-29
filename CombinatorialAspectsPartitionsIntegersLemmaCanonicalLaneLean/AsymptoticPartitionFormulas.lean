import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure AsymptoticPartitionFormulaPackage where
  hardyRamanujanFormula : Prop
  rademacherConvergentSeries : Prop
  circleMethodApplication : Prop
  modularFormTransformation : Prop
  leadingTermAsymptotics : Prop

structure AsymptoticPartitionFormulaEvidence (A : AsymptoticPartitionFormulaPackage) where
  hardyRamanujanFormulaClosed : A.hardyRamanujanFormula
  rademacherConvergentSeriesClosed : A.rademacherConvergentSeries
  circleMethodApplicationClosed : A.circleMethodApplication
  modularFormTransformationClosed : A.modularFormTransformation
  leadingTermAsymptoticsClosed : A.leadingTermAsymptotics

def AsymptoticPartitionFormulaClosed (A : AsymptoticPartitionFormulaPackage) : Prop :=
  A.hardyRamanujanFormula ∧ A.rademacherConvergentSeries ∧
  A.circleMethodApplication ∧ A.modularFormTransformation ∧
  A.leadingTermAsymptotics

theorem asymptotic_partition_formula_closed_from_evidence
    (A : AsymptoticPartitionFormulaPackage) (Ev : AsymptoticPartitionFormulaEvidence A) :
    AsymptoticPartitionFormulaClosed A := by
  exact And.intro Ev.hardyRamanujanFormulaClosed
    (And.intro Ev.rademacherConvergentSeriesClosed
      (And.intro Ev.circleMethodApplicationClosed
        (And.intro Ev.modularFormTransformationClosed
          Ev.leadingTermAsymptoticsClosed)))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse
