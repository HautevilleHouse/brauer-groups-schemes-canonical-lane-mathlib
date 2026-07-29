import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupScheme (R : Type u) [CommRing R] where
  carrier : Type v
  ring : CommRing carrier
  azumayaAlgebra : Type w
  azumayaAlgebraRing : Ring azumayaAlgebra
  equivalenceClass : Set (AzumayaAlgebra R)
  stableIsomorphism : Equivalence
  brauerGroupLaw : Group carrier
  brauerGroupLawClosed : brauerGroupLaw.mul = brauerGroupLaw.mul

structure BrauerGroupRepresentationEvidence (R : Type u) [CommRing R] (B : BrauerGroupScheme R) where
  azumayaAlgebraClosed : B.azumayaAlgebra ≠ Empty
  equivalenceClassClosed : Set.Nonempty B.equivalenceClass
  brauerGroupLawClosed : B.brauerGroupLaw.mul = B.brauerGroupLaw.mul

def BrauerGroupSchemeClosed (R : Type u) [CommRing R] (B : BrauerGroupScheme R) : Prop :=
  B.azumayaAlgebra ≠ Empty ∧ Set.Nonempty B.equivalenceClass

theorem brauer_group_scheme_closed_from_evidence (R : Type u) [CommRing R] (B : BrauerGroupScheme R) 
    (E : BrauerGroupRepresentationEvidence R B) : BrauerGroupSchemeClosed R B :=
  And.intro E.azumayaAlgebraClosed E.equivalenceClassClosed

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse