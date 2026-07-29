import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure HardyRamanujanAsymptoticFormulaPackage where
  asymptoticExpression : Prop
  mainTerm : ℝ
  errorBound : Prop
  proofViaCircleMethod : Prop

structure HardyRamanujanAsymptoticFormulaEvidence (H : HardyRamanujanAsymptoticFormulaPackage) where
  asymptoticExpressionClosed : H.asymptoticExpression
  errorBoundClosed : H.errorBound
  proofViaCircleMethodClosed : H.proofViaCircleMethod

def HardyRamanujanAsymptoticFormulaClosed (H : HardyRamanujanAsymptoticFormulaPackage) : Prop :=
  H.asymptoticExpression ∧ H.errorBound ∧ H.proofViaCircleMethod

theorem hardy_ramanujan_asymptotic_formula_closed_from_evidence
    (H : HardyRamanujanAsymptoticFormulaPackage) (E : HardyRamanujanAsymptoticFormulaEvidence H) :
    HardyRamanujanAsymptoticFormulaClosed H := by
  exact And.intro E.asymptoticExpressionClosed
    (And.intro E.errorBoundClosed E.proofViaCircleMethodClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse