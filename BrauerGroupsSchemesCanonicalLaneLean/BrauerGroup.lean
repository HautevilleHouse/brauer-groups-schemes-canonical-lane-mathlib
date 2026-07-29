import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupPackage where
  azumayaAlgebra : AzumayaAlgebraPackage
  equivalenceRelation : Prop
  groupOperation : Prop
  identityElement : Prop
  inverseElement : Prop

structure BrauerGroupEvidence (B : BrauerGroupPackage) where
  equivalenceRelationClosed : B.equivalenceRelation
  groupOperationClosed : B.groupOperation
  identityElementClosed : B.identityElement
  inverseElementClosed : B.inverseElement

def BrauerGroupClosed (B : BrauerGroupPackage) : Prop :=
  B.equivalenceRelation ∧ B.groupOperation ∧ B.identityElement ∧ B.inverseElement

theorem brauer_group_closed_from_evidence (B : BrauerGroupPackage)
    (E : BrauerGroupEvidence B) : BrauerGroupClosed B := by
  exact And.intro E.equivalenceRelationClosed
    (And.intro E.groupOperationClosed
      (And.intro E.identityElementClosed E.inverseElementClosed))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse