import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type u) [Field k] where
  carrier : Type v
  algebraStructure : Algebra k carrier
  finiteDimensional : FiniteDimensional k carrier
  central : Subalgebra.Center (Algebra k carrier) = ⊥
  simple : IsSimpleModule (Algebra k carrier) carrier

structure CentralSimpleAlgebraEvidence (A : CentralSimpleAlgebra k) where
  finiteDimensionalClosed : A.finiteDimensional
  centralClosed : A.central
  simpleClosed : A.simple

def CentralSimpleAlgebraClosed (A : CentralSimpleAlgebra k) : Prop :=
  A.finiteDimensional ∧ A.central ∧ A.simple

theorem central_simple_algebra_closed_from_evidence
    (A : CentralSimpleAlgebra k) (E : CentralSimpleAlgebraEvidence A) :
    CentralSimpleAlgebraClosed A := by
  exact And.intro E.finiteDimensionalClosed
    (And.intro E.centralClosed E.simpleClosed)

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse