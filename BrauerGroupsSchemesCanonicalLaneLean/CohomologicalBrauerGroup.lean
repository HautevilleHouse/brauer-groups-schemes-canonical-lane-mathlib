import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure CohomologicalBrauerGroup (X : Type u) [Scheme X] where
  etaleCohomologyGroup : Type v
  torsionPart : Prop
  mapFromAzumaya : Prop
  gerbeRepresentation : Prop

structure CohomologicalBrauerGroupEvidence (X : Type u) [Scheme X] (C : CohomologicalBrauerGroup X) where
  etaleCohomologyGroupClosed : C.etaleCohomologyGroup = H²(X, 𝔾ₘ)
  torsionPartClosed : C.torsionPart
  mapFromAzumayaClosed : C.mapFromAzumaya
  gerbeRepresentationClosed : C.gerbeRepresentation

def CohomologicalBrauerGroupClosed (X : Type u) [Scheme X] (C : CohomologicalBrauerGroup X) : Prop :=
  (C.etaleCohomologyGroup = H²(X, 𝔾ₘ)) ∧ C.torsionPart ∧ C.mapFromAzumaya ∧ C.gerbeRepresentation

theorem cohomological_brauer_group_closed_from_evidence (X : Type u) [Scheme X] (C : CohomologicalBrauerGroup X) (E : CohomologicalBrauerGroupEvidence X C) : CohomologicalBrauerGroupClosed X C := by
  exact And.intro E.etaleCohomologyGroupClosed (And.intro E.torsionPartClosed (And.intro E.mapFromAzumayaClosed E.gerbeRepresentationClosed))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse