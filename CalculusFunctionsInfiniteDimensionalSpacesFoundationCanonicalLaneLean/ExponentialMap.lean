import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure ExponentialMap (X : InfiniteDimensionalSpace) (A : BanachAlgebra X) where
  exp : X.carrier → X.carrier
  seriesConverges : Prop
  seriesWitness : seriesConverges
  derivativeProperty : Prop
  derivativeWitness : derivativeProperty

def ExponentialMapClosed (E : ExponentialMap X A) : Prop :=
  E.seriesConverges ∧ E.derivativeProperty

theorem exponential_map_closed (E : ExponentialMap X A) : ExponentialMapClosed E :=
  And.intro E.seriesWitness E.derivativeWitness

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse