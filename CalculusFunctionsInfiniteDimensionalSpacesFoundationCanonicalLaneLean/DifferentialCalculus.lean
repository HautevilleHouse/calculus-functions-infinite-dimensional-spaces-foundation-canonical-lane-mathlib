import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FrechetDifferentiabilityPackage {B : BanachSpacePackage} where
  derivativeMap : Type
  linearContinuity : Prop
  chainRule : Prop
  directionalDifferentiability : Prop

structure FrechetDifferentiabilityEvidence {B : BanachSpacePackage} (F : FrechetDifferentiabilityPackage) where
  linearContinuityClosed : F.linearContinuity
  chainRuleClosed : F.chainRule
  directionalDifferentiabilityClosed : F.directionalDifferentiability

def FrechetDifferentiabilityClosed {B : BanachSpacePackage} (F : FrechetDifferentiabilityPackage) : Prop :=
  F.linearContinuity ∧ F.chainRule ∧ F.directionalDifferentiability

theorem frechet_differentiability_closed_from_evidence
    {B : BanachSpacePackage} (F : FrechetDifferentiabilityPackage)
    (E : FrechetDifferentiabilityEvidence F) : FrechetDifferentiabilityClosed F := by
  exact And.intro E.linearContinuityClosed (And.intro E.chainRuleClosed E.directionalDifferentiabilityClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse