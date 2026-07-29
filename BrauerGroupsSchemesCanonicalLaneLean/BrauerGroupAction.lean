import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsSchemesCanonicalLaneLean.BrauerGroupScheme

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupAction (R : Type u) [CommRing R] (G : BrauerGroupScheme R) where
  action : G.AzumayaAlgebras → G.AzumayaAlgebras
  actionCompatible : ∀ (g : G.AzumayaAlgebras) (a b : G.AzumayaAlgebras),
    action (G.groupOperation a b) = G.groupOperation (action a) (action b)
  actionIdentity : action G.identityObject = G.identityObject

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse