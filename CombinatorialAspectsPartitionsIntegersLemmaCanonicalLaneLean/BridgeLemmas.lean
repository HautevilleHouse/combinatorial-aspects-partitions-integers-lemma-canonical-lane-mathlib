import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean

def bridgeClosed (A : PartitionAdmissibleClass) : Prop :=
  PartitionWitnessClosed A.object

theorem bridge_from_admissible_class (A : PartitionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsPartitionsIntegersLemmaCanonicalLaneLean
end HautevilleHouse