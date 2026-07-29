import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryTheoreticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse