import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.AdjointFunctor

/-!
# Limits and Colimits Package
-/

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure LimitsPackage (C : CategoryObject) where
  diagramShape : Type u
  limitObject : C.carrier
  coneProperty : Prop
  universalProperty : Prop
  completenessCondition : Prop

structure ColimitsPackage (C : CategoryObject) where
  diagramShape : Type u
  colimitObject : C.carrier
  coconeProperty : Prop
  universalProperty : Prop
  cocompletenessCondition : Prop

structure LimitsEvidence {C : CategoryObject} (L : LimitsPackage C) where
  limitExists : L.completenessCondition
  universalClosed : L.universalProperty

structure ColimitsEvidence {C : CategoryObject} (Col : ColimitsPackage C) where
  colimitExists : Col.cocompletenessCondition
  universalClosed : Col.universalProperty

def LimitsClosed {C : CategoryObject} (L : LimitsPackage C) : Prop :=
  L.completenessCondition ∧ L.universalProperty

def ColimitsClosed {C : CategoryObject} (Col : ColimitsPackage C) : Prop :=
  Col.cocompletenessCondition ∧ Col.universalProperty

theorem limits_closed_from_evidence
    {C : CategoryObject} (L : LimitsPackage C) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.limitExists E.universalClosed

theorem colimits_closed_from_evidence
    {C : CategoryObject} (Col : ColimitsPackage C) (E : ColimitsEvidence Col) :
    ColimitsClosed Col := by
  exact And.intro E.colimitExists E.universalClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse