import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.FrechetDerivativePackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure ImplicitFunctionTheoremPackage (X Y Z : BanachFunctionSpacePackage) where
  function : X.space × Y.space → Z.space
  point : X.space × Y.space
  partialDerivativeInvertible : Prop
  implicitFunction : X.space → Y.space
  differentiability : Prop

structure ImplicitFunctionTheoremEvidence {X Y Z : BanachFunctionSpacePackage}
    (I : ImplicitFunctionTheoremPackage X Y Z) where
  partialDerivativeInvertibleClosed : I.partialDerivativeInvertible
  differentiabilityClosed : I.differentiability

def ImplicitFunctionTheoremClosed {X Y Z : BanachFunctionSpacePackage}
    (I : ImplicitFunctionTheoremPackage X Y Z) : Prop :=
  I.partialDerivativeInvertible ∧ I.differentiability

theorem implicit_function_theorem_closed_from_evidence
    {X Y Z : BanachFunctionSpacePackage} (I : ImplicitFunctionTheoremPackage X Y Z)
    (E : ImplicitFunctionTheoremEvidence I) : ImplicitFunctionTheoremClosed I := by
  exact And.intro E.partialDerivativeInvertibleClosed E.differentiabilityClosed

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
