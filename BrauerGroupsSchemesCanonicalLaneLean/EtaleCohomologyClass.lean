import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure EtaleCohomologyPackage (X : Type u) [TopologicalSpace X] [Scheme X] where
  étaleSite : Type (max u (v+1))
  sheafOfGroups : Type (max u (v+1))
  secondCohomologyGroup : Type (max u (v+1))
  cohomologyClassMapping : Prop
  twistingMorphism : Prop
  cohomologyAxioms : Prop

structure EtaleCohomologyEvidence (X : Type u) [TopologicalSpace X] [Scheme X] (E : EtaleCohomologyPackage X) where
  étaleSiteClosed : E.étaleSite
  sheafOfGroupsClosed : E.sheafOfGroups
  secondCohomologyGroupClosed : E.secondCohomologyGroup
  cohomologyClassMappingClosed : E.cohomologyClassMapping
  twistingMorphismClosed : E.twistingMorphism
  cohomologyAxiomsClosed : E.cohomologyAxioms

def EtaleCohomologyClosed (X : Type u) [TopologicalSpace X] [Scheme X] (E : EtaleCohomologyPackage X) : Prop :=
  E.étaleSite ∧ E.sheafOfGroups ∧ E.secondCohomologyGroup ∧ E.cohomologyClassMapping ∧ E.twistingMorphism ∧ E.cohomologyAxioms

theorem etale_cohomology_closed_from_evidence (X : Type u) [TopologicalSpace X] [Scheme X] (E : EtaleCohomologyPackage X) (Ev : EtaleCohomologyEvidence X E) : EtaleCohomologyClosed X E :=
  by
    exact And.intro Ev.étaleSiteClosed
      (And.intro Ev.sheafOfGroupsClosed
        (And.intro Ev.secondCohomologyGroupClosed
          (And.intro Ev.cohomologyClassMappingClosed
            (And.intro Ev.twistingMorphismClosed Ev.cohomologyAxiomsClosed))))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse