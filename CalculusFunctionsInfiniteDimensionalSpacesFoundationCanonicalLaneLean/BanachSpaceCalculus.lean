import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachSpaceCalculusPackage where
  space : Type u
  norm : space → ℝ
  completeness : Prop
  frechetDifferentiability : Prop
  chainRule : Prop
  implicitFunctionTheorem : Prop

structure BanachSpaceCalculusEvidence (B : BanachSpaceCalculusPackage) where
  completenessClosed : B.completeness
  frechetDifferentiabilityClosed : B.frechetDifferentiability
  chainRuleClosed : B.chainRule
  implicitFunctionTheoremClosed : B.implicitFunctionTheorem

def BanachSpaceCalculusClosed (B : BanachSpaceCalculusPackage) : Prop :=
  B.completeness ∧ B.frechetDifferentiability ∧ B.chainRule ∧ B.implicitFunctionTheorem

theorem banach_space_calculus_closed_from_evidence (B : BanachSpaceCalculusPackage)
    (E : BanachSpaceCalculusEvidence B) : BanachSpaceCalculusClosed B := by
  exact And.intro E.completenessClosed
    (And.intro E.frechetDifferentiabilityClosed
      (And.intro E.chainRuleClosed E.implicitFunctionTheoremClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse