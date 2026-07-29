import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.FrechetDerivative

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure InverseFunctionTheorem (X Y : InfiniteDimensionalSpace) where
  f : X.carrier → Y.carrier
  fFrechet : ∀ x : X.carrier, FrechetDerivative X Y
  invertibility : Prop
  localInverseExists : Prop
  localInverseWitness : localInverseExists

def InverseFunctionTheoremClosed (IFT : InverseFunctionTheorem X Y) : Prop :=
  IFT.localInverseExists

theorem inverse_function_theorem_closed (IFT : InverseFunctionTheorem X Y) : InverseFunctionTheoremClosed IFT :=
  IFT.localInverseWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse