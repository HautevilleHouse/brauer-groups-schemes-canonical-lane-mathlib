import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupOnScheme (X : Type u) [TopologicalSpace X] [Scheme X] where
  azumayaAlgebra : Type (max u (v+1))
  localTrivialization : Prop
  gluingCondition : Prop
  equivalenceClasses : Type (max u (v+1))
  étaleCohomologyClass : Prop
  brauerGroupOnSchemeAxioms : Prop

structure BrauerGroupOnSchemeEvidence (X : Type u) [TopologicalSpace X] [Scheme X] (B : BrauerGroupOnScheme X) where
  azumayaAlgebraClosed : B.azumayaAlgebra
  localTrivializationClosed : B.localTrivialization
  gluingConditionClosed : B.gluingCondition
  equivalenceClassesClosed : B.equivalenceClasses
  étaleCohomologyClassClosed : B.étaleCohomologyClass
  brauerGroupOnSchemeAxiomsClosed : B.brauerGroupOnSchemeAxioms

def BrauerGroupOnSchemeClosed (X : Type u) [TopologicalSpace X] [Scheme X] (B : BrauerGroupOnScheme X) : Prop :=
  B.azumayaAlgebra ∧ B.localTrivialization ∧ B.gluingCondition ∧ B.equivalenceClasses ∧ B.étaleCohomologyClass ∧ B.brauerGroupOnSchemeAxioms

theorem brauer_group_on_scheme_closed_from_evidence (X : Type u) [TopologicalSpace X] [Scheme X] (B : BrauerGroupOnScheme X) (E : BrauerGroupOnSchemeEvidence X B) : BrauerGroupOnSchemeClosed X B :=
  by
    exact And.intro E.azumayaAlgebraClosed
      (And.intro E.localTrivializationClosed
        (And.intro E.gluingConditionClosed
          (And.intro E.equivalenceClassesClosed
            (And.intro E.étaleCohomologyClassClosed E.brauerGroupOnSchemeAxiomsClosed))))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse