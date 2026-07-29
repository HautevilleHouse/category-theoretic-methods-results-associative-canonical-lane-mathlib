import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.AdjointFunctor

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure LimitCone (C : Type u) [Category C] (J : Type v) [Category J] (F : J ⥤ C) where
  apex : C
  cone : ∀ (j : J), apex ⟶ F.obj j
  universal : Prop

structure ColimitCocone (C : Type u) [Category C] (J : Type v) [Category J] (F : J ⥤ C) where
  apex : C
  cocone : ∀ (j : J), F.obj j ⟶ apex
  universal : Prop

structure LimitEvidence (C : Type u) [Category C] where
  hasLimits : ∀ (J : Type v) [Category J] (F : J ⥤ C), Nonempty (LimitCone C J F)

def LimitsClosed (C : Type u) [Category C] (L : LimitEvidence C) : Prop :=
  L.hasLimits

theorem limits_closed_from_evidence (C : Type u) [Category C] (L : LimitEvidence C) : LimitsClosed C L :=
  L.hasLimits

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
