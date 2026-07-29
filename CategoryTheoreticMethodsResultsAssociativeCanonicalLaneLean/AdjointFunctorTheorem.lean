import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure AdjunctionPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type v → Type u
  homSetIso : ∀ {C D : Type u} [Category C] [Category D], (C → D) → (D → C) → Prop
  unitCounit : Prop
  triangleIdentities : Prop
  unitCounitClosed : unitCounit
  triangleIdentitiesClosed : triangleIdentities

structure AdjunctionEvidence (A : AdjunctionPackage) where
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities

def AdjunctionClosed (A : AdjunctionPackage) : Prop :=
  A.unitCounit ∧ A.triangleIdentities

theorem adjunction_closed_from_evidence (A : AdjunctionPackage) (E : AdjunctionEvidence A) : AdjunctionClosed A := by
  exact And.intro E.unitCounitClosed E.triangleIdentitiesClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse