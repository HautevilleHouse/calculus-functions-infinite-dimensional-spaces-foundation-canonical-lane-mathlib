import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure GateauxDerivativePackage where
  functionDefinition : Type u
  point : Type v
  directionSpace : Type w
  directionalDerivative : Prop
  frechetDerivative : Prop
  gateauxDifferentiability : Prop
  frechetDifferentiability : Prop
  chainRuleGateaux : Prop

structure GateauxDerivativeEvidence (G : GateauxDerivativePackage) where
  directionalDerivativeClosed : G.directionalDerivative
  frechetDerivativeClosed : G.frechetDerivative
  gateauxDifferentiabilityClosed : G.gateauxDifferentiability
  frechetDifferentiabilityClosed : G.frechetDifferentiability
  chainRuleGateauxClosed : G.chainRuleGateaux

def GateauxDerivativeClosed (G : GateauxDerivativePackage) : Prop :=
  G.directionalDerivative ∧ G.frechetDerivative ∧
  G.gateauxDifferentiability ∧ G.frechetDifferentiability ∧
  G.chainRuleGateaux

theorem gateaux_derivative_closed_from_evidence
    (G : GateauxDerivativePackage) (E : GateauxDerivativeEvidence G) :
    GateauxDerivativeClosed G := by
  exact And.intro E.directionalDerivativeClosed
    (And.intro E.frechetDerivativeClosed
      (And.intro E.gateauxDifferentiabilityClosed
        (And.intro E.frechetDifferentiabilityClosed E.chainRuleGateauxClosed)))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
