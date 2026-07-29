import categorical_lane.AdjointFunctorTheorem

/-!
# Limit and Colimit Construction Package
-/

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure LimitColimitConstructionPackage {Y : YonedaLemmaPackage} (A : AdjointFunctorTheoremPackage Y) where
  limitsExist : Prop
  colimitsExist : Prop
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  limitPreservationByAdjoints : Prop

structure LimitColimitConstructionEvidence {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    (L : LimitColimitConstructionPackage A) where
  limitsExistClosed : L.limitsExist
  colimitsExistClosed : L.colimitsExist
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitUniversalPropertyClosed : L.colimitUniversalProperty
  limitPreservationByAdjointsClosed : L.limitPreservationByAdjoints

def LimitColimitConstructionClosed {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    (L : LimitColimitConstructionPackage A) : Prop :=
  L.limitsExist ∧ L.colimitsExist ∧ L.limitUniversalProperty ∧ L.colimitUniversalProperty ∧ L.limitPreservationByAdjoints

theorem limit_colimit_construction_closed_from_evidence
    {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    (L : LimitColimitConstructionPackage A) (E : LimitColimitConstructionEvidence L) :
    LimitColimitConstructionClosed L := by
  exact And.intro E.limitsExistClosed
    (And.intro E.colimitsExistClosed
      (And.intro E.limitUniversalPropertyClosed
        (And.intro E.colimitUniversalPropertyClosed E.limitPreservationByAdjointsClosed)))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse