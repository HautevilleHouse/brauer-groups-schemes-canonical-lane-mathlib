import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure AzumayaAlgebra (R : Type u) [CommRing R] where
  algebra : Type v
  ring : Ring algebra
  algebra : Algebra R algebra
  finiteProjective : Module.Finite R algebra ∧ Module.Projective R algebra
  central : Subalgebra.center (Algebra R) = ⊥
  separable : IsSeparable R algebra

def AzumayaAlgebraEquiv (R : Type u) [CommRing R] (A B : AzumayaAlgebra R) : Prop :=
  Nonempty (A.algebra ≃ₐ[R] B.algebra)

theorem azumaya_equivalence_is_equivalence (R : Type u) [CommRing R] (A : AzumayaAlgebra R) :
  AzumayaAlgebraEquiv R A A := by
  exact ⟨Algebra.id A.algebra⟩

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse