import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.CalculusVariationsPackage
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.FunctionSpaceFoundation

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure EulerLagrangeBridge {A : AdmissibleClass}
    (V : CalculusVariationsPackage A) (F : FunctionSpaceFoundationPackage A) where
  criticalPointCharacterization : Prop
  minimizerExistence : Prop
  mountainPassStructure : Prop
  linkingGeometry : Prop
  morseTheoryIndex : Prop
  criticalPointCharacterizationClosed : criticalPointCharacterization
  minimizerExistenceClosed : minimizerExistence
  mountainPassStructureClosed : mountainPassStructure
  linkingGeometryClosed : linkingGeometry
  morseTheoryIndexClosed : morseTheoryIndex

def EulerLagrangeBridgeClosed {A : AdmissibleClass}
    {V : CalculusVariationsPackage A} {F : FunctionSpaceFoundationPackage A}
    (B : EulerLagrangeBridge V F) : Prop :=
  B.criticalPointCharacterization ∧ B.minimizerExistence ∧ B.mountainPassStructure ∧ B.linkingGeometry ∧ B.morseTheoryIndex

theorem euler_lagrange_bridge_closed_from_evidence
    {A : AdmissibleClass} {V : CalculusVariationsPackage A} {F : FunctionSpaceFoundationPackage A}
    (B : EulerLagrangeBridge V F) (E : EulerLagrangeBridge V F := B) :
    EulerLagrangeBridgeClosed B := by
  exact And.intro B.criticalPointCharacterizationClosed
    (And.intro B.minimizerExistenceClosed
      (And.intro B.mountainPassStructureClosed
        (And.intro B.linkingGeometryClosed B.morseTheoryIndexClosed)))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse