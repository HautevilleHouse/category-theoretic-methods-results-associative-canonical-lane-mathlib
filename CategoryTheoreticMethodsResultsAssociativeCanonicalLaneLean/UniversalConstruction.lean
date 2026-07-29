import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure UniversalConstructionPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory → targetCategory
  universalObject : targetCategory
  universalArrow : (s : sourceCategory) → targetCategory
  universalProperty : Prop
  existence : Prop

structure UniversalConstructionEvidence (U : UniversalConstructionPackage) where
  universalPropertyClosed : U.universalProperty
  existenceClosed : U.existence

def UniversalConstructionClosed (U : UniversalConstructionPackage) : Prop :=
  U.universalProperty ∧ U.existence

theorem universal_construction_closed_from_evidence
    (U : UniversalConstructionPackage) (E : UniversalConstructionEvidence U) :
    UniversalConstructionClosed U := by
  exact And.intro E.universalPropertyClosed E.existenceClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse