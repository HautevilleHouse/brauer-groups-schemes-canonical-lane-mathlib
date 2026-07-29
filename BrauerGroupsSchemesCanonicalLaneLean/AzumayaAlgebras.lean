import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure AzumayaAlgebra (X : Type u) [Scheme X] where
  algebra : Algebra (structureSheaf X) (sheafOfModules X)
  locallyFree : Prop
  centerIsStructureSheaf : Prop
  finiteRank : Prop
  faithful : Prop

structure AzumayaAlgebraEvidence (X : Type u) [Scheme X] (A : AzumayaAlgebra X) where
  locallyFreeClosed : A.locallyFree
  centerIsStructureSheafClosed : A.centerIsStructureSheaf
  finiteRankClosed : A.finiteRank
  faithfulClosed : A.faithful

def AzumayaAlgebraClosed (X : Type u) [Scheme X] (A : AzumayaAlgebra X) : Prop :=
  A.locallyFree ∧ A.centerIsStructureSheaf ∧ A.finiteRank ∧ A.faithful

theorem azumaya_algebra_closed_from_evidence (X : Type u) [Scheme X] (A : AzumayaAlgebra X) (E : AzumayaAlgebraEvidence X A) : AzumayaAlgebraClosed X A := by
  exact And.intro E.locallyFreeClosed (And.intro E.centerIsStructureSheafClosed (And.intro E.finiteRankClosed E.faithfulClosed))

def isAzumaya (X : Type u) [Scheme X] (A : AzumayaAlgebra X) : Prop :=
  AzumayaAlgebraClosed X A

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse