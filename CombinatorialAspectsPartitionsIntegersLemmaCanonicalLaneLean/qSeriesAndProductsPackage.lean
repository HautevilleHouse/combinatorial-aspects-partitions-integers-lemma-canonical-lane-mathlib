import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

structure qSeriesAndProductsPackage where
  qPochhammer : ℕ → ℕ → ℕ
  qBinomialTheorem : Prop
  jacobiTripleProduct : Prop
  quintupleProduct : Prop

structure qSeriesAndProductsEvidence (Q : qSeriesAndProductsPackage) where
  qBinomialTheoremClosed : Q.qBinomialTheorem
  jacobiTripleProductClosed : Q.jacobiTripleProduct
  quintupleProductClosed : Q.quintupleProduct

def qSeriesAndProductsClosed (Q : qSeriesAndProductsPackage) : Prop :=
  Q.qBinomialTheorem ∧ Q.jacobiTripleProduct ∧ Q.quintupleProduct

theorem q_series_and_products_closed_from_evidence (Q : qSeriesAndProductsPackage) (E : qSeriesAndProductsEvidence Q) :
    qSeriesAndProductsClosed Q := by
  exact And.intro E.qBinomialTheoremClosed (And.intro E.jacobiTripleProductClosed E.quintupleProductClosed)

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse