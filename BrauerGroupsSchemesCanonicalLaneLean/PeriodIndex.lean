import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure PeriodIndex (X : Type u) [Scheme X] where
  period : Nat
  index : Nat
  periodDividesIndex : period ∣ index
  periodIndexEqualityCondition : Prop

structure PeriodIndexEvidence (X : Type u) [Scheme X] (P : PeriodIndex X) where
  periodDividesIndexClosed : P.periodDividesIndex
  periodIndexEqualityConditionClosed : P.periodIndexEqualityCondition

def PeriodIndexClosed (X : Type u) [Scheme X] (P : PeriodIndex X) : Prop :=
  P.period ∣ P.index ∧ P.periodIndexEqualityCondition

theorem period_index_closed_from_evidence (X : Type u) [Scheme X] (P : PeriodIndex X) (E : PeriodIndexEvidence X P) : PeriodIndexClosed X P := by
  exact And.intro E.periodDividesIndexClosed E.periodIndexEqualityConditionClosed

theorem period_index_equality_for_surfaces (X : Type u) [Scheme X] [Surface X] (P : PeriodIndex X) : P.period = P.index := by
  sorry

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse