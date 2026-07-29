import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupAdmissibleObject where
  scheme : Type u
  azumayaAlgebra : AzumayaAlgebraPackage
  cohomologicalClass : CohomologicalBrauerGroupPackage
  mapInjective : Prop
  conclusion : mapInjective

def BrauerGroupWitnessClosed (O : BrauerGroupAdmissibleObject) : Prop :=
  O.conclusion

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse