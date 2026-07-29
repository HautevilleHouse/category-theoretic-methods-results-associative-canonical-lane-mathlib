import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure Cone (F : Diagram J C) where
  apex : C
  legs : ∀ (j : J), Hom C apex (F.obj j)
  commutativity : Prop

structure Limit (F : Diagram J C) where
  cone : Cone F
  universalProperty : ∀ (other : Cone F), ∃! morphism : Hom C other.apex cone.apex, ∀ (j : J), other.legs j = morphism ∘ cone.legs j
  proof : Prop

structure LimitEvidence (L : Limit F) where
  universalPropertyClosed : L.universalProperty
  proofClosed : L.proof

def LimitClosed (L : Limit F) : Prop := L.universalProperty ∧ L.proof

theorem limit_closed_from_evidence (L : Limit F) (E : LimitEvidence L) : LimitClosed L := by
  exact And.intro E.universalPropertyClosed E.proofClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse