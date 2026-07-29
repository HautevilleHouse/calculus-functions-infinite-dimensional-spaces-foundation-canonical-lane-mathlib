import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure ImplicitFunctionTheoremPackage where
  mappingIsFrechetDifferentiable : Prop
  partialDerivativeIsIsomorphism : Prop
  localExistenceOfImplicitFunction : Prop
  localUniqueness : Prop

structure ImplicitFunctionTheoremEvidence (P : ImplicitFunctionTheoremPackage) where
  mappingIsFrechetDifferentiableClosed : P.mappingIsFrechetDifferentiable
  partialDerivativeIsIsomorphismClosed : P.partialDerivativeIsIsomorphism
  localExistenceOfImplicitFunctionClosed : P.localExistenceOfImplicitFunction
  localUniquenessClosed : P.localUniqueness

def ImplicitFunctionTheoremClosed (P : ImplicitFunctionTheoremPackage) : Prop :=
  P.mappingIsFrechetDifferentiable ∧ P.partialDerivativeIsIsomorphism ∧ P.localExistenceOfImplicitFunction ∧ P.localUniqueness

theorem implicit_function_theorem_closed_from_evidence (P : ImplicitFunctionTheoremPackage) (E : ImplicitFunctionTheoremEvidence P) :
    ImplicitFunctionTheoremClosed P :=
  And.intro E.mappingIsFrechetDifferentiableClosed (And.intro E.partialDerivativeIsIsomorphismClosed (And.intro E.localExistenceOfImplicitFunctionClosed E.localUniquenessClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse