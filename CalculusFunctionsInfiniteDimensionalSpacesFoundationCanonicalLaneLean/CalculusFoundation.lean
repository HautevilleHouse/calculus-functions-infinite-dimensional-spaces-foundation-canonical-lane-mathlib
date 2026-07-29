import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure CalculusFoundationPackage where
  banachPackage : BanachSpacePackage ℝ (λ x : ℝ => |x|)
  functionSpacePackage : FunctionSpacePackage ℝ ℝ (λ x : ℝ => |x|) (λ y : ℝ => |y|)
  frechetDerivativeExists : Prop
  integralExists : Prop
  fundamentalTheorem : Prop

structure CalculusFoundationEvidence (P : CalculusFoundationPackage) where
  frechetDerivativeExistsClosed : P.frechetDerivativeExists
  integralExistsClosed : P.integralExists
  fundamentalTheoremClosed : P.fundamentalTheorem

def CalculusFoundationClosed (P : CalculusFoundationPackage) : Prop :=
  P.frechetDerivativeExists ∧ P.integralExists ∧ P.fundamentalTheorem

theorem calculus_foundation_closed_from_evidence (P : CalculusFoundationPackage)
    (E : CalculusFoundationEvidence P) : CalculusFoundationClosed P := by
  exact And.intro E.frechetDerivativeExistsClosed
    (And.intro E.integralExistsClosed E.fundamentalTheoremClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse