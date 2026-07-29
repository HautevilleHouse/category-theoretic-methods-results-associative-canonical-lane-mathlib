import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure LimitColimitPackage where
  diagram : Type u → Type v
  cone : Type w
  cocone : Type x
  universalPropertyLimit : Prop
  universalPropertyColimit : Prop
  universalPropertyLimitClosed : universalPropertyLimit
  universalPropertyColimitClosed : universalPropertyColimit

structure LimitColimitEvidence (L : LimitColimitPackage) where
  universalPropertyLimitClosed : L.universalPropertyLimit
  universalPropertyColimitClosed : L.universalPropertyColimit

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.universalPropertyLimit ∧ L.universalPropertyColimit

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.universalPropertyLimitClosed E.universalPropertyColimitClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse