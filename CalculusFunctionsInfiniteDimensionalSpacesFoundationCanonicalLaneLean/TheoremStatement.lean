import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure CalculusFunctionsAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  infiniteDimensional : Prop
  functionSpace : Type v
  functionSpaceTopology : TopologicalSpace functionSpace
  continuousFunctions : Prop
  conclusion : continuousFunctions

def CalculusFunctionsWitnessClosed (O : CalculusFunctionsAdmittedObject) : Prop :=
  O.continuousFunctions

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
