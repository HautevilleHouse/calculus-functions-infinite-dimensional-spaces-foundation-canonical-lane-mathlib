import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FunctionSpaceFoundationPackage (A : AdmissibleClass) where
  sobolevSpaces : Type u
  banachSpaces : Type v
  hilbertSpaces : Type w
  embeddingTheorems : Prop
  dualityPairings : Prop
  compactEmbeddings : Prop
  traceOperators : Prop
  interpolationSpaces : Prop

structure FunctionSpaceFoundationEvidence {A : AdmissibleClass} (F : FunctionSpaceFoundationPackage A) where
  embeddingTheoremsClosed : F.embeddingTheorems
  dualityPairingsClosed : F.dualityPairings
  compactEmbeddingsClosed : F.compactEmbeddings
  traceOperatorsClosed : F.traceOperators
  interpolationSpacesClosed : F.interpolationSpaces

def FunctionSpaceFoundationClosed {A : AdmissibleClass} (F : FunctionSpaceFoundationPackage A) : Prop :=
  F.embeddingTheorems ∧ F.dualityPairings ∧ F.compactEmbeddings ∧ F.traceOperators ∧ F.interpolationSpaces

theorem function_space_foundation_closed_from_evidence
    {A : AdmissibleClass} (F : FunctionSpaceFoundationPackage A) (E : FunctionSpaceFoundationEvidence F) :
    FunctionSpaceFoundationClosed F := by
  exact And.intro E.embeddingTheoremsClosed
    (And.intro E.dualityPairingsClosed
      (And.intro E.compactEmbeddingsClosed
        (And.intro E.traceOperatorsClosed E.interpolationSpacesClosed)))

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse