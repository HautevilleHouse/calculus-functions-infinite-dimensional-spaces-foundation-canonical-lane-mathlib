import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure DifferentiableMap (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  toFun : X → Y
  differentiableAt : X → Prop
  derivativeAt : X → (X →L[ℝ] Y)

structure DifferentiableCalculusPackage where
  totalDerivativeExists : Prop
  chainRuleHolds : Prop
  meanValueInequality : Prop
  inverseFunctionTheorem : Prop

structure DifferentiableCalculusEvidence (P : DifferentiableCalculusPackage) where
  totalDerivativeExistsClosed : P.totalDerivativeExists
  chainRuleHoldsClosed : P.chainRuleHolds
  meanValueInequalityClosed : P.meanValueInequality
  inverseFunctionTheoremClosed : P.inverseFunctionTheorem

def DifferentiableCalculusClosed (P : DifferentiableCalculusPackage) : Prop :=
  P.totalDerivativeExists ∧ P.chainRuleHolds ∧ P.meanValueInequality ∧ P.inverseFunctionTheorem

theorem differentiable_calculus_closed_from_evidence (P : DifferentiableCalculusPackage) (E : DifferentiableCalculusEvidence P) :
    DifferentiableCalculusClosed P :=
  And.intro E.totalDerivativeExistsClosed (And.intro E.chainRuleHoldsClosed (And.intro E.meanValueInequalityClosed E.inverseFunctionTheoremClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse