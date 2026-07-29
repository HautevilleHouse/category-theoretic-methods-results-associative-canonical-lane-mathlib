import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure KanExtensionPackage where
  functor : Type u → Type v
  extension : Type v → Type u
  universalProperty : Prop
  pointwiseFormula : Prop
  universalPropertyClosed : universalProperty
  pointwiseFormulaClosed : pointwiseFormula

structure KanExtensionEvidence (K : KanExtensionPackage) where
  universalPropertyClosed : K.universalProperty
  pointwiseFormulaClosed : K.pointwiseFormula

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.universalProperty ∧ K.pointwiseFormula

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage) (E : KanExtensionEvidence K) : KanExtensionClosed K := by
  exact And.intro E.universalPropertyClosed E.pointwiseFormulaClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse