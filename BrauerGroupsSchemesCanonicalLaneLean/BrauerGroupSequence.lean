import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGroupSequence (X : Type u) [Scheme X] where
  brauerGroup : Type v
  residueFieldSequence : ℕ → BrauerGroupScheme (Spec (k(X)))
  exactnessAtResidueFields : Prop
  globalSectionConstraint : Prop

structure BrauerGroupSequenceEvidence (S : BrauerGroupSequence X) where
  exactnessAtResidueFieldsClosed : S.exactnessAtResidueFields
  globalSectionConstraintClosed : S.globalSectionConstraint

def BrauerGroupSequenceClosed (S : BrauerGroupSequence X) : Prop :=
  S.exactnessAtResidueFields ∧ S.globalSectionConstraint

theorem brauer_group_sequence_closed_from_evidence
    (S : BrauerGroupSequence X) (E : BrauerGroupSequenceEvidence S) :
    BrauerGroupSequenceClosed S := by
  exact And.intro E.exactnessAtResidueFieldsClosed E.globalSectionConstraintClosed

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse