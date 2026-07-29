import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure NoncollapsingPackage where
  categoryPreservesEpimorphisms : Prop
  functorPreservesMonomorphisms : Prop
  noZeroObjects : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  categoryPreservesEpimorphismsClosed : N.categoryPreservesEpimorphisms
  functorPreservesMonomorphismsClosed : N.functorPreservesMonomorphisms
  noZeroObjectsClosed : N.noZeroObjects

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.categoryPreservesEpimorphisms ∧ N.functorPreservesMonomorphisms ∧ N.noZeroObjects

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.categoryPreservesEpimorphismsClosed
    (And.intro E.functorPreservesMonomorphismsClosed E.noZeroObjectsClosed)

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse