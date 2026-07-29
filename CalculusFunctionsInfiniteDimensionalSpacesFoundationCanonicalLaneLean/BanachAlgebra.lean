import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.CalculusFunctionsInfiniteDimensionalSpaces

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachAlgebra (X : InfiniteDimensionalSpace) where
  multiplication : X.carrier → X.carrier → X.carrier
  algebraNorm : ℝ
  multiplicativeInequality : Prop
  multiplicativeWitness : multiplicativeInequality

def BanachAlgebraClosed (A : BanachAlgebra X) : Prop :=
  A.multiplicativeInequality

theorem banach_algebra_closed (A : BanachAlgebra X) : BanachAlgebraClosed A :=
  A.multiplicativeWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse