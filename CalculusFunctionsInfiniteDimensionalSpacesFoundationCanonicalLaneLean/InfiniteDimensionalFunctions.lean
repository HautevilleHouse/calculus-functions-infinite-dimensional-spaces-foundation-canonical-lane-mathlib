import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FunctionSpacePackage (X Y : Type u) (normX : X → ℝ) (normY : Y → ℝ) where
  isBanachX : Prop
  isBanachY : Prop
  boundedLinearMaps : Prop
  differentiationOperator : Prop
  integration : Prop
  sobolevSpaces : Prop
  compactEmbeddings : Prop

structure FunctionSpaceEvidence {X Y : Type u} {normX : X → ℝ} {normY : Y → ℝ}
    (P : FunctionSpacePackage X Y normX normY) where
  isBanachXClosed : P.isBanachX
  isBanachYClosed : P.isBanachY
  boundedLinearMapsClosed : P.boundedLinearMaps
  differentiationOperatorClosed : P.differentiationOperator
  integrationClosed : P.integration
  sobolevSpacesClosed : P.sobolevSpaces
  compactEmbeddingsClosed : P.compactEmbeddings

def FunctionSpaceClosed {X Y : Type u} {normX : X → ℝ} {normY : Y → ℝ}
    (P : FunctionSpacePackage X Y normX normY) : Prop :=
  P.isBanachX ∧ P.isBanachY ∧ P.boundedLinearMaps ∧
  P.differentiationOperator ∧ P.integration ∧ P.sobolevSpaces ∧ P.compactEmbeddings

theorem function_space_closed_from_evidence
    {X Y : Type u} {normX : X → ℝ} {normY : Y → ℝ}
    (P : FunctionSpacePackage X Y normX normY) (E : FunctionSpaceEvidence P) :
    FunctionSpaceClosed P := by
  exact And.intro E.isBanachXClosed
    (And.intro E.isBanachYClosed
      (And.intro E.boundedLinearMapsClosed
        (And.intro E.differentiationOperatorClosed
          (And.intro E.integrationClosed
            (And.intro E.sobolevSpacesClosed E.compactEmbeddingsClosed)))))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse