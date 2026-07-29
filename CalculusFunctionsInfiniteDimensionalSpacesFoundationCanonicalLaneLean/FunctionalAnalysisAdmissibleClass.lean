import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure InfiniteDimensionalAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  linearStructure : TopologicalVectorSpace ℝ space
  isBanach : Prop
  isFunctionSpace : Prop
  conclusion : isBanach ∧ isFunctionSpace

structure AdmissibleClass where
  object : InfiniteDimensionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.isBanach ∧ A.object.isFunctionSpace) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
