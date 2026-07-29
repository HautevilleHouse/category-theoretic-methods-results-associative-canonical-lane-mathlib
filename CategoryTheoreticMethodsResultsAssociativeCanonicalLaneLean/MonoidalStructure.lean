import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure MonoidalCategoryPackage (A : AdmissibleClass) where
  tensorProduct : Prop
  associator : Prop
  unitObject : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalCategoryEvidence {A : AdmissibleClass} (M : MonoidalCategoryPackage A) where
  tensorProductClosed : M.tensorProduct
  associatorClosed : M.associator
  unitObjectClosed : M.unitObject
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed {A : AdmissibleClass} (M : MonoidalCategoryPackage A) : Prop :=
  M.tensorProduct ∧ M.associator ∧ M.unitObject ∧ M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence {A : AdmissibleClass} (M : MonoidalCategoryPackage A) (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.tensorProductClosed (And.intro E.associatorClosed (And.intro E.unitObjectClosed (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed)))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
