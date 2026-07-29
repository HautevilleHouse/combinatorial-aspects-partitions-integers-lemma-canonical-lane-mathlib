import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure RogersRamanujanIdentitiesPackage where
  qSeriesLeftHandSide : Type u
  qSeriesRightHandSide : Type v
  productRepresentation : Prop
  partitionInterpretations : Prop
  generatingFunctionEquality : Prop

structure RogersRamanujanIdentitiesEvidence (R : RogersRamanujanIdentitiesPackage) where
  qSeriesLeftHandSideClosed : R.qSeriesLeftHandSide
  qSeriesRightHandSideClosed : R.qSeriesRightHandSide
  productRepresentationClosed : R.productRepresentation
  partitionInterpretationsClosed : R.partitionInterpretations
  generatingFunctionEqualityClosed : R.generatingFunctionEquality

def RogersRamanujanIdentitiesClosed (R : RogersRamanujanIdentitiesPackage) : Prop :=
  R.qSeriesLeftHandSide ∧ R.qSeriesRightHandSide ∧
  R.productRepresentation ∧ R.partitionInterpretations ∧
  R.generatingFunctionEquality

theorem rogers_ramanujan_identities_closed_from_evidence
    (R : RogersRamanujanIdentitiesPackage) (Ev : RogersRamanujanIdentitiesEvidence R) :
    RogersRamanujanIdentitiesClosed R := by
  exact And.intro Ev.qSeriesLeftHandSideClosed
    (And.intro Ev.qSeriesRightHandSideClosed
      (And.intro Ev.productRepresentationClosed
        (And.intro Ev.partitionInterpretationsClosed
          Ev.generatingFunctionEqualityClosed)))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse
