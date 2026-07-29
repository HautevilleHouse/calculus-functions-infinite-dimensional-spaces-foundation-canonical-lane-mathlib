import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.CalculusVariationsBridge

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure EndpointClassificationPackage {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} {V : CalculusVariationsPackage F G} where
  targetStatement : Prop
  endpointCondition : Prop
  bridgeMatches : Prop

structure EndpointClassificationEvidence {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} {V : CalculusVariationsPackage F G} (E : EndpointClassificationPackage V) where
  targetStatementClosed : E.targetStatement
  endpointConditionClosed : E.endpointCondition
  bridgeMatchesClosed : E.bridgeMatches

def EndpointClassificationClosed {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} {V : CalculusVariationsPackage F G} (E : EndpointClassificationPackage V) : Prop :=
  E.targetStatement ∧ E.endpointCondition ∧ E.bridgeMatches

theorem endpoint_classification_closed_from_evidence {F : BanachSpaceFoundation} {G : GateauxDerivativePackage F} {V : CalculusVariationsPackage F G} (E : EndpointClassificationPackage V) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.targetStatementClosed (And.intro Ev.endpointConditionClosed Ev.bridgeMatchesClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse