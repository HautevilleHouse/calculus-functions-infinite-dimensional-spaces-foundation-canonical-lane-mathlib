import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure CalculusVariationsPackage (A : AdmissibleClass) where
  functionSpace : Type u
  functional : functionSpace → ℝ
  firstVariation : functionSpace → (functionSpace → ℝ) → Prop
  eulerLagrangeEquations : functionSpace → Prop
  existenceOfCriticalPoints : Prop
  regularity : Prop
  compactnessCondition : Prop
  stability : Prop

structure CalculusVariationsEvidence {A : AdmissibleClass} (P : CalculusVariationsPackage A) where
  firstVariationClosed : P.firstVariation
  eulerLagrangeClosed : P.eulerLagrangeEquations
  existenceClosed : P.existenceOfCriticalPoints
  regularityClosed : P.regularity
  compactnessClosed : P.compactnessCondition
  stabilityClosed : P.stability

def CalculusVariationsClosed {A : AdmissibleClass} (P : CalculusVariationsPackage A) : Prop :=
  P.firstVariation ∧ P.eulerLagrangeEquations ∧ P.existenceOfCriticalPoints ∧ P.regularity ∧ P.compactnessCondition ∧ P.stability

theorem calculus_variations_closed_from_evidence
    {A : AdmissibleClass} (P : CalculusVariationsPackage A) (E : CalculusVariationsEvidence P) :
    CalculusVariationsClosed P := by
  exact And.intro E.firstVariationClosed
    (And.intro E.eulerLagrangeClosed
      (And.intro E.existenceClosed
        (And.intro E.regularityClosed
          (And.intro E.compactnessClosed E.stabilityClosed))))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse