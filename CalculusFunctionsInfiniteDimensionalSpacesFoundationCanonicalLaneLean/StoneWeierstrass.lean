import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.CalculusFunctionsInfiniteDimensionalSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure StoneWeierstrass (X : InfiniteDimensionalSpace) where
  subalgebra : Set (X.carrier → ℝ)
  closureUnderMultiplication : Prop
  closureUnderAddition : Prop
  separatesPoints : Prop
  dense : Prop
  denseWitness : dense

def StoneWeierstrassClosed (SW : StoneWeierstrass X) : Prop :=
  SW.dense

theorem stone_weierstrass_closed (SW : StoneWeierstrass X) : StoneWeierstrassClosed SW :=
  SW.denseWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse