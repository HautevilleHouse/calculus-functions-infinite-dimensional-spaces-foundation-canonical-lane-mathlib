import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.BanachSpaceFoundation

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure GateauxDerivativePackage {F : BanachSpaceFoundation} where
  function : F.functionSpace → ℝ
  directionSet : Set F.functionSpace
  directionalLimitExists : Prop
  linearInDirection : Prop
  boundedness : Prop

structure GateauxDerivativeEvidence {F : BanachSpaceFoundation} (G : GateauxDerivativePackage F) where
  directionalLimitExistsClosed : G.directionalLimitExists
  linearInDirectionClosed : G.linearInDirection
  boundednessClosed : G.boundedness

def GateauxDerivativeClosed {F : BanachSpaceFoundation} (G : GateauxDerivativePackage F) : Prop :=
  G.directionalLimitExists ∧ G.linearInDirection ∧ G.boundedness

theorem gateaux_derivative_closed_from_evidence {F : BanachSpaceFoundation} (G : GateauxDerivativePackage F) (E : GateauxDerivativeEvidence G) :
    GateauxDerivativeClosed G := by
  exact And.intro E.directionalLimitExistsClosed (And.intro E.linearInDirectionClosed E.boundednessClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse