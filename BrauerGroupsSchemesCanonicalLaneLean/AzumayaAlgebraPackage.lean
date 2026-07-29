import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure AzumayaAlgebraPackage where
  algebra : Type u
  centerField : Type v
  separable : Prop
  finiteDimensional : Prop
  centralSimple : Prop
  splitByExtension : Prop

def AzumayaAlgebraClosed (A : AzumayaAlgebraPackage) : Prop :=
  A.separable ∧ A.centralSimple

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse