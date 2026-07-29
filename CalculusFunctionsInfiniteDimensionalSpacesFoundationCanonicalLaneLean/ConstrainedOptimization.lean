import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure ConstrainedOptimizationPackage where
  objectiveFunctional : Type u
  constraintSet : Type v
  constraintSpace : InfiniteDimensionalManifoldPackage
  lagrangeMultiplier : Prop
  kktConditions : Prop
  optimalityNecessary : Prop
  optimalitySufficient : Prop

structure ConstrainedOptimizationEvidence (O : ConstrainedOptimizationPackage) where
  lagrangeMultiplierClosed : O.lagrangeMultiplier
  kktConditionsClosed : O.kktConditions
  optimalityNecessaryClosed : O.optimalityNecessary
  optimalitySufficientClosed : O.optimalitySufficient

def ConstrainedOptimizationClosed (O : ConstrainedOptimizationPackage) : Prop :=
  O.lagrangeMultiplier ∧ O.kktConditions ∧
  O.optimalityNecessary ∧ O.optimalitySufficient

theorem constrained_optimization_closed_from_evidence
    (O : ConstrainedOptimizationPackage) (E : ConstrainedOptimizationEvidence O) :
    ConstrainedOptimizationClosed O := by
  exact And.intro E.lagrangeMultiplierClosed
    (And.intro E.kktConditionsClosed
      (And.intro E.optimalityNecessaryClosed E.optimalitySufficientClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
