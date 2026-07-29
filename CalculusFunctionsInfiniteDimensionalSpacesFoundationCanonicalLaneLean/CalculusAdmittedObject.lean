import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure CalculusAdmittedObject where
  space : FunctionSpacePackage
  linearOperator : Prop
  boundedInverse : Prop
  conclusion : boundedInverse

def CalculusWitnessClosed (O : CalculusAdmittedObject) : Prop :=
  O.boundedInverse

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse