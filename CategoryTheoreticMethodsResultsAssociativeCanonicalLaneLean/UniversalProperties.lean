import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure UniversalConstructionPackage (A : AdmissibleClass) where
  initialObject : Prop
  terminalObject : Prop
  productExists : Prop
  coproductExists : Prop
  equalizerExists : Prop
  coequalizerExists : Prop

structure UniversalConstructionEvidence {A : AdmissibleClass} (U : UniversalConstructionPackage A) where
  initialObjectClosed : U.initialObject
  terminalObjectClosed : U.terminalObject
  productExistsClosed : U.productExists
  coproductExistsClosed : U.coproductExists
  equalizerExistsClosed : U.equalizerExists
  coequalizerExistsClosed : U.coequalizerExists

def UniversalConstructionClosed {A : AdmissibleClass} (U : UniversalConstructionPackage A) : Prop :=
  U.initialObject ∧ U.terminalObject ∧ U.productExists ∧ U.coproductExists ∧ U.equalizerExists ∧ U.coequalizerExists

theorem universal_construction_closed_from_evidence {A : AdmissibleClass} (U : UniversalConstructionPackage A) (E : UniversalConstructionEvidence U) : UniversalConstructionClosed U := by
  exact And.intro E.initialObjectClosed (And.intro E.terminalObjectClosed (And.intro E.productExistsClosed (And.intro E.coproductExistsClosed (And.intro E.equalizerExistsClosed E.coequalizerExistsClosed))))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
