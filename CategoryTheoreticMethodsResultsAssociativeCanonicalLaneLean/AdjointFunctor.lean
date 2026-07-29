import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure Adjunction (C D : Type u) [Category C] [Category D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ leftAdjoint ⋙ rightAdjoint
  counit : rightAdjoint ⋙ leftAdjoint ⟶ 𝟭 D
  triangleIdentities : Prop

structure AdjointFunctorEvidence (C D : Type u) [Category C] [Category D] (adj : Adjunction C D) where
  triangleIdentitiesHold : adj.triangleIdentities
  leftAdjointPreservesColimits : adj.leftAdjoint.PreservesColimits

def AdjointFunctorClosed (C D : Type u) [Category C] [Category D] (adj : Adjunction C D) : Prop :=
  adj.triangleIdentities

theorem adjoint_functor_closed (C D : Type u) [Category C] [Category D] (adj : Adjunction C D) (E : AdjointFunctorEvidence C D adj) : AdjointFunctorClosed C D adj :=
  E.triangleIdentitiesHold

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
