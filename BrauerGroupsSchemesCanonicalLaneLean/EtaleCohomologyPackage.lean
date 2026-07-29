import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure EtaleCohomologyPackage where
  scheme : Type u
  topology : TopologicalSpace scheme
  etaleSite : Type v
  sheafOfGroups : Type w
  h2etale : Type x
  cohomologicalBrauerGroup : Prop
  gerbeLifting : Prop
  brauerSequenceExact : Prop

def EtaleCohomologyClosed (E : EtaleCohomologyPackage) : Prop :=
  E.cohomologicalBrauerGroup ∧ E.brauerSequenceExact

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse