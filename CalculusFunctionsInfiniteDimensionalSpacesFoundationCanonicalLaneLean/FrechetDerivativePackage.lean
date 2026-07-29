import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.ContinuousLinearOperatorPackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FrechetDerivativePackage (X Y : BanachFunctionSpacePackage) where
  function : X.space → Y.space
  point : X.space
  derivative : ContinuousLinearOperatorPackage X Y
  limitCondition : Prop

structure FrechetDerivativeEvidence {X Y : BanachFunctionSpacePackage}
    (D : FrechetDerivativePackage X Y) where
  derivativeClosed : ContinuousLinearOperatorClosed D.derivative
  limitConditionClosed : D.limitCondition

def FrechetDerivativeClosed {X Y : BanachFunctionSpacePackage}
    (D : FrechetDerivativePackage X Y) : Prop :=
  ContinuousLinearOperatorClosed D.derivative ∧ D.limitCondition

theorem frechet_derivative_closed_from_evidence
    {X Y : BanachFunctionSpacePackage} (D : FrechetDerivativePackage X Y)
    (E : FrechetDerivativeEvidence D) : FrechetDerivativeClosed D := by
  exact And.intro E.derivativeClosed E.limitConditionClosed

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
