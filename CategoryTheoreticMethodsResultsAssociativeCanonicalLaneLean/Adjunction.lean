import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure Adjunction (C D : Type u) where
  leftAdjoint : C → D
  rightAdjoint : D → C
  unit : NaturalTransformation (Id C) (rightAdjoint ∘ leftAdjoint)
  counit : NaturalTransformation (leftAdjoint ∘ rightAdjoint) (Id D)
  triangleIdentities : Prop
  adjunctionIso : ∀ (X : C) (Y : D), Hom D (leftAdjoint X) Y ≅ Hom C X (rightAdjoint Y)
  proof : Prop

structure AdjunctionEvidence (A : Adjunction C D) where
  triangleIdentitiesClosed : A.triangleIdentities
  adjunctionIsoClosed : A.adjunctionIso
  proofClosed : A.proof

def AdjunctionClosed (A : Adjunction C D) : Prop :=
  A.triangleIdentities ∧ A.adjunctionIso ∧ A.proof

theorem adjunction_closed_from_evidence (A : Adjunction C D) (E : AdjunctionEvidence A) : AdjunctionClosed A := by
  exact And.intro E.triangleIdentitiesClosed (And.intro E.adjunctionIsoClosed E.proofClosed)

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse