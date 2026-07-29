import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure ClassFieldTheoryBridge where
  numberField : Type u
  primes : Type v
  localBrauerGroup : Type w
  globalBrauerGroup : Type x
  reciprocitySequenceExact : Prop
  invariantMapInjective : Prop
  invariantMapSurjective : Prop

def ClassFieldTheoryBridgeClosed (C : ClassFieldTheoryBridge) : Prop :=
  C.reciprocitySequenceExact ∧ C.invariantMapSurjective

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse