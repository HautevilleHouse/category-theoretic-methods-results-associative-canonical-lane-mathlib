import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure KanExtensionPackage (A : AdmissibleClass) where
  leftKanExists : Prop
  rightKanExists : Prop
  pointwiseFormula : Prop
  universalProperty : Prop

structure KanExtensionEvidence {A : AdmissibleClass} (K : KanExtensionPackage A) where
  leftKanExistsClosed : K.leftKanExists
  rightKanExistsClosed : K.rightKanExists
  pointwiseFormulaClosed : K.pointwiseFormula
  universalPropertyClosed : K.universalProperty

def KanExtensionClosed {A : AdmissibleClass} (K : KanExtensionPackage A) : Prop :=
  K.leftKanExists ∧ K.rightKanExists ∧ K.pointwiseFormula ∧ K.universalProperty

theorem kan_extension_closed_from_evidence {A : AdmissibleClass} (K : KanExtensionPackage A) (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.leftKanExistsClosed (And.intro E.rightKanExistsClosed (And.intro E.pointwiseFormulaClosed E.universalPropertyClosed))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
