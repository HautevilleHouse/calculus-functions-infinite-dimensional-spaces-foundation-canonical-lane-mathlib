import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure VariationalCalculusPackage where
  functional : Type u
  domainSpace : InfiniteDimensionalManifoldPackage
  firstVariation : Prop
  eulerLagrangeEquation : Prop
  minimizerExistence : Prop
  convexityCondition : Prop

structure VariationalCalculusEvidence (V : VariationalCalculusPackage) where
  firstVariationClosed : V.firstVariation
  eulerLagrangeEquationClosed : V.eulerLagrangeEquation
  minimizerExistenceClosed : V.minimizerExistence
  convexityConditionClosed : V.convexityCondition

def VariationalCalculusClosed (V : VariationalCalculusPackage) : Prop :=
  V.firstVariation ∧ V.eulerLagrangeEquation ∧
  V.minimizerExistence ∧ V.convexityCondition

theorem variational_calculus_closed_from_evidence
    (V : VariationalCalculusPackage) (E : VariationalCalculusEvidence V) :
    VariationalCalculusClosed V := by
  exact And.intro E.firstVariationClosed
    (And.intro E.eulerLagrangeEquationClosed
      (And.intro E.minimizerExistenceClosed E.convexityConditionClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
