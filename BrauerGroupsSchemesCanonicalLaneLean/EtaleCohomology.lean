import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure EtaleCohomology (X : Type u) [Scheme X] where
  cohomologyGroups : ℕ → Type v
  boundaryMaps : ∀ (n : ℕ), cohomologyGroups n → cohomologyGroups (n+1)
  exactness : ∀ (n : ℕ), Im (boundaryMaps n) = Ker (boundaryMaps (n+1))

structure BrauerGroupFromCohomology (X : Type u) [Scheme X] (H : EtaleCohomology X) where
  brauerGroup : BrauerGroupScheme (Γ(X, O_X))
  isomorphism : H.cohomologyGroups 2 ≃ brauerGroup.AzumayaAlgebras

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse