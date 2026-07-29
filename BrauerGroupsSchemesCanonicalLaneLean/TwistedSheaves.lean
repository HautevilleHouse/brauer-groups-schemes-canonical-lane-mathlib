import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure TwistedSheaf (X : Type u) [TopologicalSpace X] [Scheme X] (α : BrauerGroupOnScheme X) where
  sheafOfModules : Type (max u (v+1))
  twistedTensorProduct : Prop
  cohomologicalTwist : Prop
  twistedSheafAxioms : Prop

structure TwistedSheafEvidence (X : Type u) [TopologicalSpace X] [Scheme X] {α : BrauerGroupOnScheme X} (T : TwistedSheaf X α) where
  sheafOfModulesClosed : T.sheafOfModules
  twistedTensorProductClosed : T.twistedTensorProduct
  cohomologicalTwistClosed : T.cohomologicalTwist
  twistedSheafAxiomsClosed : T.twistedSheafAxioms

def TwistedSheafClosed (X : Type u) [TopologicalSpace X] [Scheme X] {α : BrauerGroupOnScheme X} (T : TwistedSheaf X α) : Prop :=
  T.sheafOfModules ∧ T.twistedTensorProduct ∧ T.cohomologicalTwist ∧ T.twistedSheafAxioms

theorem twisted_sheaf_closed_from_evidence (X : Type u) [TopologicalSpace X] [Scheme X] {α : BrauerGroupOnScheme X} (T : TwistedSheaf X α) (E : TwistedSheafEvidence X T) : TwistedSheafClosed X T :=
  by
    exact And.intro E.sheafOfModulesClosed
      (And.intro E.twistedTensorProductClosed
        (And.intro E.cohomologicalTwistClosed E.twistedSheafAxiomsClosed))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse