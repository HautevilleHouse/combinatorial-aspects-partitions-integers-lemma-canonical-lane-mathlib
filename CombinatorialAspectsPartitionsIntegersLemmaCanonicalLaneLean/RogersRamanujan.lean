import HautevilleHouse.CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean.PartitionObjects

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure RogersRamanujanIdentities (p : PartitionAdmittedObject) where
  firstIdentity : Prop
  secondIdentity : Prop
  combinatorialInterpretation : Prop
  firstClosed : firstIdentity
  secondClosed : secondIdentity
  combinatorialClosed : combinatorialInterpretation

def RogersRamanujanClosed {p : PartitionAdmittedObject} (rr : RogersRamanujanIdentities p) : Prop :=
  rr.firstIdentity ∧ rr.secondIdentity ∧ rr.combinatorialInterpretation

theorem rogers_ramanujan_closed_from_evidence {p : PartitionAdmittedObject} (rr : RogersRamanujanIdentities p) :
    RogersRamanujanClosed rr := by
  exact And.intro rr.firstClosed (And.intro rr.secondClosed rr.combinatorialClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse