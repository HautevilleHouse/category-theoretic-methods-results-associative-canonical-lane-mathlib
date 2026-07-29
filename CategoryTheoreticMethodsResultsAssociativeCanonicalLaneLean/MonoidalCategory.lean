import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure MonoidalCategory (C : Type u) where
  tensorProduct : C → C → C
  unitObject : C
  associator : ∀ (X Y Z : C), (tensorProduct (tensorProduct X Y) Z) ≅ (tensorProduct X (tensorProduct Y Z))
  leftUnitor : ∀ (X : C), (tensorProduct unitObject X) ≅ X
  rightUnitor : ∀ (X : C), (tensorProduct X unitObject) ≅ X
  pentagonIdentity : Prop
  triangleIdentity : Prop
  proof : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategory C) where
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity
  proofClosed : M.proof

def MonoidalCategoryClosed (M : MonoidalCategory C) : Prop :=
  M.pentagonIdentity ∧ M.triangleIdentity ∧ M.proof

theorem monoidal_category_closed_from_evidence (M : MonoidalCategory C) (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  exact And.intro E.pentagonIdentityClosed (And.intro E.triangleIdentityClosed E.proofClosed)

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse