import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure BrauerGrothendieckExactness (X : Type u) [Scheme X] where
  injectionFromBr : Prop
  surjectionOntoBrDash : Prop
  kernelPicard : Prop
  cokernelBrauerManin : Prop

structure BrauerGrothendieckExactnessEvidence (X : Type u) [Scheme X] (E : BrauerGrothendieckExactness X) where
  injectionFromBrClosed : E.injectionFromBr
  surjectionOntoBrDashClosed : E.surjectionOntoBrDash
  kernelPicardClosed : E.kernelPicard
  cokernelBrauerManinClosed : E.cokernelBrauerManin

def BrauerGrothendieckExactnessClosed (X : Type u) [Scheme X] (E : BrauerGrothendieckExactness X) : Prop :=
  E.injectionFromBr ∧ E.surjectionOntoBrDash ∧ E.kernelPicard ∧ E.cokernelBrauerManin

theorem brauer_grothendieck_exactness_closed_from_evidence (X : Type u) [Scheme X] (Ex : BrauerGrothendieckExactness X) (E : BrauerGrothendieckExactnessEvidence X Ex) : BrauerGrothendieckExactnessClosed X Ex := by
  exact And.intro E.injectionFromBrClosed (And.intro E.surjectionOntoBrDashClosed (And.intro E.kernelPicardClosed E.cokernelBrauerManinClosed))

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse