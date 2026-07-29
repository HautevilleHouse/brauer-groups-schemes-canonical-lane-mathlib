import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroup (R : Type u) [CommRing R] where
  centralSimpleAlgebra : Type (max u (v+1))
  tensorProduct : centralSimpleAlgebra → centralSimpleAlgebra → centralSimpleAlgebra
  inverseOp : centralSimpleAlgebra → centralSimpleAlgebra
  brauerEquivClass : Type (max u (v+1))
  cohomologicalInterpretation : Prop
  brauerGroupAxioms : Prop

structure BrauerGroupEvidence (R : Type u) [CommRing R] (B : BrauerGroup R) where
  centralSimpleAlgebraClosed : B.centralSimpleAlgebra
  tensorProductClosed : B.tensorProduct
  inverseOpClosed : B.inverseOp
  brauerEquivClassClosed : B.brauerEquivClass
  cohomologicalInterpretationClosed : B.cohomologicalInterpretation
  brauerGroupAxiomsClosed : B.brauerGroupAxioms

def BrauerGroupClosed (R : Type u) [CommRing R] (B : BrauerGroup R) : Prop :=
  B.centralSimpleAlgebra ∧ B.tensorProduct ∧ B.inverseOp ∧ B.brauerEquivClass ∧ B.cohomologicalInterpretation ∧ B.brauerGroupAxioms

theorem brauer_group_closed_from_evidence (R : Type u) [CommRing R] (B : BrauerGroup R) (E : BrauerGroupEvidence R B) : BrauerGroupClosed R B :=
  by
    exact And.intro E.centralSimpleAlgebraClosed
      (And.intro E.tensorProductClosed
        (And.intro E.inverseOpClosed
          (And.intro E.brauerEquivClassClosed
            (And.intro E.cohomologicalInterpretationClosed E.brauerGroupAxiomsClosed))))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse