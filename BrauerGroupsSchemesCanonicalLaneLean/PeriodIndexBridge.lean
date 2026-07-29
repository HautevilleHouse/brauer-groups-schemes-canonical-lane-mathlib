import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure PeriodIndexBridge where
  baseScheme : Type u
  periodIndexComponent : Prop
  exponentBound : Prop
  indexBound : Prop
  equalityInCase : Prop

def PeriodIndexBridgeClosed (P : PeriodIndexBridge) : Prop :=
  P.exponentBound ∧ P.indexBound

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse