import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupScheme (X : Type u) [Scheme X] where
  azumayaAlgebra : AzumayaAlgebra X
  equivalenceClass : Prop
  brauerGroupLaw : Prop

structure BrauerGroupEvidence (X : Type u) [Scheme X] (B : BrauerGroupScheme X) where
  azumayaAlgebraClosed : B.azumayaAlgebra.IsAzumaya
  equivalenceClassClosed : B.equivalenceClass
  brauerGroupLawClosed : B.brauerGroupLaw

def BrauerGroupClosed (X : Type u) [Scheme X] (B : BrauerGroupScheme X) : Prop :=
  B.azumayaAlgebra.IsAzumaya ∧ B.equivalenceClass ∧ B.brauerGroupLaw

theorem brauer_group_closed_from_evidence (X : Type u) [Scheme X] (B : BrauerGroupScheme X) (E : BrauerGroupEvidence X B) : BrauerGroupClosed X B := by
  exact And.intro E.azumayaAlgebraClosed (And.intro E.equivalenceClassClosed E.brauerGroupLawClosed)

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse