import CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure AdjointFunctorPackage (C D : Type u) where
  leftAdjoint : C → D
  rightAdjoint : D → C
  adjunctionUnit : Prop
  adjunctionCounit : Prop
  triangleIdentities : Prop
  unitCounitNatural : Prop

structure AdjointFunctorEvidence {C D : Type u} (A : AdjointFunctorPackage C D) where
  adjunctionUnitClosed : A.adjunctionUnit
  adjunctionCounitClosed : A.adjunctionCounit
  triangleIdentitiesClosed : A.triangleIdentities
  unitCounitNaturalClosed : A.unitCounitNatural

def AdjointFunctorClosed {C D : Type u} (A : AdjointFunctorPackage C D) : Prop :=
  A.adjunctionUnit ∧ A.adjunctionCounit ∧ A.triangleIdentities ∧ A.unitCounitNatural

theorem adjoint_functor_closed_from_evidence {C D : Type u} (A : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A :=
  And.intro E.adjunctionUnitClosed (And.intro E.adjunctionCounitClosed (And.intro E.triangleIdentitiesClosed E.unitCounitNaturalClosed))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse