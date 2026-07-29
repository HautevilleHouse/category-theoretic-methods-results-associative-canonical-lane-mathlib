import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure Bicategory (B : Type u) where
  objects : Type u
  morphisms : objects → objects → Type u
  twoMorphisms : ∀ {a b : objects}, (f g : morphisms a b) → Type u
  composition : ∀ {a b c : objects}, morphisms b c → morphisms a b → morphisms a c
  identity : ∀ (a : objects), morphisms a a
  associators : Prop
  unitors : Prop
  pentagonCondition : Prop

structure BicategoryEvidence (B : Bicategory) where
  associatorsHold : B.associators
  unitorsHold : B.unitors
  pentagonConditionHold : B.pentagonCondition

def BicategoryClosed (B : Bicategory) : Prop :=
  B.associators ∧ B.unitors ∧ B.pentagonCondition

theorem bicategory_closed_from_evidence (B : Bicategory) (E : BicategoryEvidence B) : BicategoryClosed B :=
  And.intro E.associatorsHold (And.intro E.unitorsHold E.pentagonConditionHold)

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
