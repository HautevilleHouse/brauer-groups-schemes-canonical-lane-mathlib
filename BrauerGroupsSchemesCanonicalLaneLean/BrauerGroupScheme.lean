import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupScheme (R : Type u) [CommRing R] where
  azumayaAlgebras : Type v
  equivalenceRelation : AzumayaAlgebras → AzumayaAlgebras → Prop
  groupOperation : AzumayaAlgebras → AzumayaAlgebras → AzumayaAlgebras
  identityObject : AzumayaAlgebras
  inverseMap : AzumayaAlgebras → AzumayaAlgebras
  associativity : ∀ a b c : AzumayaAlgebras, groupOperation (groupOperation a b) c = groupOperation a (groupOperation b c)
  identityLeft : ∀ a : AzumayaAlgebras, groupOperation identityObject a = a
  identityRight : ∀ a : AzumayaAlgebras, groupOperation a identityObject = a
  inverseLeft : ∀ a : AzumayaAlgebras, groupOperation (inverseMap a) a = identityObject
  inverseRight : ∀ a : AzumayaAlgebras, groupOperation a (inverseMap a) = identityObject

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse