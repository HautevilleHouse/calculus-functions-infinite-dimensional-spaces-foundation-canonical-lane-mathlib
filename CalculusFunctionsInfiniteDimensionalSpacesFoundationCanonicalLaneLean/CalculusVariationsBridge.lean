import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.BanachSpaceFoundation
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.GateauxDerivativePackage

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure CalculusVariationsPackage {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} where
  functional : F.functionSpace → ℝ
  criticalPointCondition : Prop
  secondVariationExists : Prop
  minimizerExists : Prop

structure CalculusVariationsEvidence {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} (V : CalculusVariationsPackage F G) where
  criticalPointConditionClosed : V.criticalPointCondition
  secondVariationExistsClosed : V.secondVariationExists
  minimizerExistsClosed : V.minimizerExists

def CalculusVariationsClosed {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} (V : CalculusVariationsPackage F G) : Prop :=
  V.criticalPointCondition ∧ V.secondVariationExists ∧ V.minimizerExists

theorem calculus_variations_closed_from_evidence {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} (V : CalculusVariationsPackage F G) (E : CalculusVariationsEvidence V) :
    CalculusVariationsClosed V := by
  exact And.intro E.criticalPointConditionClosed (And.intro E.secondVariationExistsClosed E.minimizerExistsClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse