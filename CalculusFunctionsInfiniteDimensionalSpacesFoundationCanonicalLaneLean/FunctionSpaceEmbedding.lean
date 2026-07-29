import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FunctionSpaceEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sourceNorm : Norm sourceSpace
  targetNorm : Norm targetSpace
  embeddingMap : Type w
  compactEmbedding : Prop
  sobolevEmbedding : Prop

structure FunctionSpaceEmbeddingEvidence (F : FunctionSpaceEmbeddingPackage) where
  compactEmbeddingClosed : F.compactEmbedding
  sobolevEmbeddingClosed : F.sobolevEmbedding

def FunctionSpaceEmbeddingClosed (F : FunctionSpaceEmbeddingPackage) : Prop :=
  F.compactEmbedding ∧ F.sobolevEmbedding

theorem function_space_embedding_closed_from_evidence
    (F : FunctionSpaceEmbeddingPackage) (E : FunctionSpaceEmbeddingEvidence F) :
    FunctionSpaceEmbeddingClosed F := by
  exact And.intro E.compactEmbeddingClosed E.sobolevEmbeddingClosed

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
