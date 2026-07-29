import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.CalculusFunctionsInfiniteDimensionalSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FrechetDerivative (X Y : InfiniteDimensionalSpace) where
  atPoint : X.carrier
  derivative : BoundedLinearMap X Y
  limitCondition : Prop
  limitWitness : limitCondition

def FrechetDerivativeClosed (D : FrechetDerivative X Y) : Prop :=
  D.limitCondition

theorem frechet_derivative_closed (D : FrechetDerivative X Y) : FrechetDerivativeClosed D :=
  D.limitWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse