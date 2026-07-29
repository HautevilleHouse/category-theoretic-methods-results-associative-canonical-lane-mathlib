import CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure UniversalConstructionsPackage (C : Type u) where
  initialObject : C
  terminalObject : C
  productExistence : Prop
  coproductExistence : Prop
  equalizerExistence : Prop
  coequalizerExistence : Prop
  universalPropertyInitial : Prop
  universalPropertyTerminal : Prop

structure UniversalConstructionsEvidence {C : Type u} (U : UniversalConstructionsPackage C) where
  universalPropertyInitialClosed : U.universalPropertyInitial
  universalPropertyTerminalClosed : U.universalPropertyTerminal
  productExistenceClosed : U.productExistence
  coproductExistenceClosed : U.coproductExistence
  equalizerExistenceClosed : U.equalizerExistence
  coequalizerExistenceClosed : U.coequalizerExistence

def UniversalConstructionsClosed {C : Type u} (U : UniversalConstructionsPackage C) : Prop :=
  U.universalPropertyInitial ∧ U.universalPropertyTerminal ∧ U.productExistence ∧ U.coproductExistence ∧ U.equalizerExistence ∧ U.coequalizerExistence

theorem universal_constructions_closed_from_evidence {C : Type u} (U : UniversalConstructionsPackage C) (E : UniversalConstructionsEvidence U) : UniversalConstructionsClosed U :=
  And.intro E.universalPropertyInitialClosed (And.intro E.universalPropertyTerminalClosed (And.intro E.productExistenceClosed (And.intro E.coproductExistenceClosed (And.intro E.equalizerExistenceClosed E.coequalizerExistenceClosed))))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse