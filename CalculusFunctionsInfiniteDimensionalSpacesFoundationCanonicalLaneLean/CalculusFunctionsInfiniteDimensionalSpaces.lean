import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure InfiniteDimensionalSpace where
  carrier : Type u
  vectorSpace : AddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  infiniteDimensional : ¬ FiniteDimensional ℝ carrier

structure BoundedLinearMap (X Y : InfiniteDimensionalSpace) where
  map : X.carrier → Y.carrier
  linear : IsLinearMap ℝ map
  bounded : Prop
  boundedWitness : bounded

def BoundedLinearMapClosed (f : BoundedLinearMap X Y) : Prop :=
  f.bounded

theorem bounded_linear_map_closed (f : BoundedLinearMap X Y) : BoundedLinearMapClosed f :=
  f.boundedWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse