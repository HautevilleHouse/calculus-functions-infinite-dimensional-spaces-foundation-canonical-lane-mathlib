import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachSpaceFoundation where
  functionSpace : Type u
  norm : functionSpace → ℝ
  linearStructure : Prop
  completeness : Prop
  normedSpace : Prop

structure BanachSpaceFoundationEvidence (F : BanachSpaceFoundation) where
  linearStructureClosed : F.linearStructure
  completenessClosed : F.completeness
  normedSpaceClosed : F.normedSpace

def BanachSpaceFoundationClosed (F : BanachSpaceFoundation) : Prop :=
  F.linearStructure ∧ F.completeness ∧ F.normedSpace

theorem banach_space_foundation_closed_from_evidence (F : BanachSpaceFoundation) (E : BanachSpaceFoundationEvidence F) :
    BanachSpaceFoundationClosed F := by
  exact And.intro E.linearStructureClosed (And.intro E.completenessClosed E.normedSpaceClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse