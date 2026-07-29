import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesCanonicalLaneLean.BrauerGroupRepresentationScheme

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupCohomologyMap (X : Scheme) where
  etaleCohomology : Group
  brauerGroup : BrauerGroupScheme (Γ(X, O_X))
  injection : etaleCohomology →* brauerGroup.carrier
  surjection : brauerGroup.carrier → etaleCohomology
  exactSequence : Prop

def BrauerGroupCohomologyBridge (X : Scheme) : Prop :=
  let B : BragerGroupScheme (Γ(X, O_X)) := inferInstance
  ∃ (map : BrauerGroupCohomologyMap X), map.exactSequence

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse