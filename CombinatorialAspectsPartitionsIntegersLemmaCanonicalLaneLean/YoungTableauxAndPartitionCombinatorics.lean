import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure YoungTableauxPackage where
  ferrersDiagram : Type u
  hookLengthFormula : Prop
  standardYoungTableaux : Prop
  robinsonSchenstedCorrespondence : Prop

structure YoungTableauxEvidence (Y : YoungTableauxPackage) where
  hookLengthFormulaClosed : Y.hookLengthFormula
  standardYoungTableauxClosed : Y.standardYoungTableaux
  robinsonSchenstedCorrespondenceClosed : Y.robinsonSchenstedCorrespondence

def YoungTableauxClosed (Y : YoungTableauxPackage) : Prop :=
  Y.hookLengthFormula ∧ Y.standardYoungTableaux ∧ Y.robinsonSchenstedCorrespondence

theorem young_tableaux_closed_from_evidence
    (Y : YoungTableauxPackage) (E : YoungTableauxEvidence Y) :
    YoungTableauxClosed Y := by
  exact And.intro E.hookLengthFormulaClosed
    (And.intro E.standardYoungTableauxClosed E.robinsonSchenstedCorrespondenceClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse