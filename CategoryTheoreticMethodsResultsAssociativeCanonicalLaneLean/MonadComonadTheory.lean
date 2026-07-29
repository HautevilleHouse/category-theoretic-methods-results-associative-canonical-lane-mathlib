import categorical_lane.LimitColimitConstruction

/-!
# Monad and Comonad Theory Package
-/

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure MonadComonadTheoryPackage {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    (L : LimitColimitConstructionPackage A) where
  monadStructureDefined : Prop
  comonadStructureDefined : Prop
  monadAlgebraLifting : Prop
  comonadCoalgebraLifting : Prop
  emmComparisonAdjunction : Prop

structure MonadComonadTheoryEvidence {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    {L : LimitColimitConstructionPackage A} (M : MonadComonadTheoryPackage L) where
  monadStructureDefinedClosed : M.monadStructureDefined
  comonadStructureDefinedClosed : M.comonadStructureDefined
  monadAlgebraLiftingClosed : M.monadAlgebraLifting
  comonadCoalgebraLiftingClosed : M.comonadCoalgebraLifting
  emmComparisonAdjunctionClosed : M.emmComparisonAdjunction

def MonadComonadTheoryClosed {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    {L : LimitColimitConstructionPackage A} (M : MonadComonadTheoryPackage L) : Prop :=
  M.monadStructureDefined ∧ M.comonadStructureDefined ∧ M.monadAlgebraLifting ∧ M.comonadCoalgebraLifting ∧ M.emmComparisonAdjunction

theorem monad_comonad_theory_closed_from_evidence
    {Y : YonedaLemmaPackage} {A : AdjointFunctorTheoremPackage Y}
    {L : LimitColimitConstructionPackage A} (M : MonadComonadTheoryPackage L) (E : MonadComonadTheoryEvidence M) :
    MonadComonadTheoryClosed M := by
  exact And.intro E.monadStructureDefinedClosed
    (And.intro E.comonadStructureDefinedClosed
      (And.intro E.monadAlgebraLiftingClosed
        (And.intro E.comonadCoalgebraLiftingClosed E.emmComparisonAdjunctionClosed)))

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse