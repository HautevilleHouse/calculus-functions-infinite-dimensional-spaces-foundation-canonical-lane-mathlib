import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure BanachSpace (V : Type u) [NormedAddCommGroup V] [CompleteSpace V] where
  norm : V → ℝ
  normSatisfiesTriangleInequality : ∀ x y : V, norm (x + y) ≤ norm x + norm y
  normSatisfiesAbsoluteHomogeneity : ∀ (a : ℝ) (x : V), norm (a • x) = |a| * norm x

structure BanachSpacePackage where
  completenessAxiom : Prop
  dualSpaceDefined : Prop
  hahnBanachTheorem : Prop
  openMappingTheorem : Prop

structure BanachSpaceEvidence (P : BanachSpacePackage) where
  completenessAxiomClosed : P.completenessAxiom
  dualSpaceDefinedClosed : P.dualSpaceDefined
  hahnBanachTheoremClosed : P.hahnBanachTheorem
  openMappingTheoremClosed : P.openMappingTheorem

def BanachSpaceClosed (P : BanachSpacePackage) : Prop :=
  P.completenessAxiom ∧ P.dualSpaceDefined ∧ P.hahnBanachTheorem ∧ P.openMappingTheorem

theorem banach_space_closed_from_evidence (P : BanachSpacePackage) (E : BanachSpaceEvidence P) : BanachSpaceClosed P :=
  And.intro E.completenessAxiomClosed (And.intro E.dualSpaceDefinedClosed (And.intro E.hahnBanachTheoremClosed E.openMappingTheoremClosed))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse