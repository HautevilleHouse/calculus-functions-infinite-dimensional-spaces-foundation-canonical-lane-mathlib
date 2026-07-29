import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  banachCompletion : Prop
  linearStructure : Prop
  completeness : Prop

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  banachCompletionClosed : B.banachCompletion
  linearStructureClosed : B.linearStructure
  completenessClosed : B.completeness

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.banachCompletion ∧ B.linearStructure ∧ B.completeness

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.banachCompletionClosed (And.intro E.linearStructureClosed E.completenessClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse