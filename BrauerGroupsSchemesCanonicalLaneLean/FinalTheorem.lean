import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

def ConstrainedBrauerGroupsSchemesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_groups_schemes_endgame (A : AdmissibleClass) : ConstrainedBrauerGroupsSchemesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse