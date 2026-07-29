import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure PartitionGeneratingFunctionPackage where
  formalVariable : Type u
  formalPowerSeries : Type v
  infiniteProductRepresentation : Prop
  rationalFunctionForm : Prop
  asymptoticExpansion : Prop
  partitionFunctionRecurrence : Prop

structure PartitionGeneratingFunctionEvidence (P : PartitionGeneratingFunctionPackage) where
  infiniteProductRepresentationClosed : P.infiniteProductRepresentation
  rationalFunctionFormClosed : P.rationalFunctionForm
  asymptoticExpansionClosed : P.asymptoticExpansion
  partitionFunctionRecurrenceClosed : P.partitionFunctionRecurrence

def PartitionGeneratingFunctionClosed (P : PartitionGeneratingFunctionPackage) : Prop :=
  P.infiniteProductRepresentation ∧ P.rationalFunctionForm ∧
  P.asymptoticExpansion ∧ P.partitionFunctionRecurrence

theorem partition_generating_function_closed_from_evidence
    (P : PartitionGeneratingFunctionPackage) (E : PartitionGeneratingFunctionEvidence P) :
    PartitionGeneratingFunctionClosed P := by
  exact And.intro E.infiniteProductRepresentationClosed
    (And.intro E.rationalFunctionFormClosed
      (And.intro E.asymptoticExpansionClosed E.partitionFunctionRecurrenceClosed))

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse
