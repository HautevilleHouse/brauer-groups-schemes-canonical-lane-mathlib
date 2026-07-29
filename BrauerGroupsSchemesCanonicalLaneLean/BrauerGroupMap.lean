import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupMapPackage where
  brauerGroup : BrauerGroupPackage
  cohomologicalBrauerGroup : CohomologicalBrauerGroupPackage
  mapDefined : Prop
  injectivity : Prop
  surjectivity : Prop

structure BrauerGroupMapEvidence (M : BrauerGroupMapPackage) where
  mapDefinedClosed : M.mapDefined
  injectivityClosed : M.injectivity
  surjectivityClosed : M.surjectivity

def BrauerGroupMapClosed (M : BrauerGroupMapPackage) : Prop :=
  M.mapDefined ∧ M.injectivity ∧ M.surjectivity

theorem brauer_group_map_closed_from_evidence (M : BrauerGroupMapPackage)
    (E : BrauerGroupMapEvidence M) : BrauerGroupMapClosed M := by
  exact And.intro E.mapDefinedClosed
    (And.intro E.injectivityClosed E.surjectivityClosed)

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse