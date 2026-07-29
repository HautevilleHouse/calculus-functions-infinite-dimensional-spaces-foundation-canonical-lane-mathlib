import CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.FunctionalAnalysisAdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachFunctionSpacePackage where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  Banach : Prop
  isFunctionSpace : Prop

structure BanachFunctionSpaceEvidence (B : BanachFunctionSpacePackage) where
  BanachClosed : B.Banach
  isFunctionSpaceClosed : B.isFunctionSpace

def BanachFunctionSpaceClosed (B : BanachFunctionSpacePackage) : Prop :=
  B.Banach ∧ B.isFunctionSpace

theorem banach_function_space_closed_from_evidence (B : BanachFunctionSpacePackage)
    (E : BanachFunctionSpaceEvidence B) : BanachFunctionSpaceClosed B := by
  exact And.intro E.BanachClosed E.isFunctionSpaceClosed

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
