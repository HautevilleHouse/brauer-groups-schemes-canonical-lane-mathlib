import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupClassField (k : Type u) [Field k] where
  field : Type u
  fieldStructure : Field field
  brauerGroupInjection : BrauerGroupScheme (Spec field) → BrauerGroupScheme (Spec k)
  injectivityCondition : Prop
  cokernelDescription : Prop

structure BrauerGroupClassFieldEvidence (C : BrauerGroupClassField k) where
  injectivityConditionClosed : C.injectivityCondition
  cokernelDescriptionClosed : C.cokernelDescription

def BrauerGroupClassFieldClosed (C : BrauerGroupClassField k) : Prop :=
  C.injectivityCondition ∧ C.cokernelDescription

theorem brauer_group_class_field_closed_from_evidence
    (C : BrauerGroupClassField k) (E : BrauerGroupClassFieldEvidence C) :
    BrauerGroupClassFieldClosed C := by
  exact And.intro E.injectivityConditionClosed E.cokernelDescriptionClosed

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse