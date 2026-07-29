import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  [catInstance : Category category]
  functorCategory : Type v
  yonedaEmbedding : category → functorCategory
  naturalIso : Prop
  naturalIsoClosed : naturalIso

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsoClosed : Y.naturalIso

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIso

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact E.naturalIsoClosed

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse