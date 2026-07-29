import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.BanachFunctionSpacePackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure ContinuousLinearOperatorPackage (X Y : BanachFunctionSpacePackage) where
  operator : X.space → Y.space
  linear : Prop
  bounded : Prop
  normControlled : Prop

structure ContinuousLinearOperatorEvidence {X Y : BanachFunctionSpacePackage}
    (Op : ContinuousLinearOperatorPackage X Y) where
  linearClosed : Op.linear
  boundedClosed : Op.bounded
  normControlledClosed : Op.normControlled

def ContinuousLinearOperatorClosed {X Y : BanachFunctionSpacePackage}
    (Op : ContinuousLinearOperatorPackage X Y) : Prop :=
  Op.linear ∧ Op.bounded ∧ Op.normControlled

theorem continuous_linear_operator_closed_from_evidence
    {X Y : BanachFunctionSpacePackage} (Op : ContinuousLinearOperatorPackage X Y)
    (E : ContinuousLinearOperatorEvidence Op) : ContinuousLinearOperatorClosed Op := by
  exact And.intro E.linearClosed (And.intro E.boundedClosed E.normControlledClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
