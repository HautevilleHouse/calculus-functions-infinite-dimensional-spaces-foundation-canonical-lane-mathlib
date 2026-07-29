import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure GelfandTriplePackage where
  innerSpace : Type u
  pivotSpace : Type v
  dualSpace : Type w
  denseEmbedding : Prop
  continuousInclusion : Prop

structure GelfandTripleEvidence (G : GelfandTriplePackage) where
  denseEmbeddingClosed : G.denseEmbedding
  continuousInclusionClosed : G.continuousInclusion

def GelfandTripleClosed (G : GelfandTriplePackage) : Prop :=
  G.denseEmbedding ∧ G.continuousInclusion

theorem gelfand_triple_closed_from_evidence
    (G : GelfandTriplePackage) (E : GelfandTripleEvidence G) :
    GelfandTripleClosed G := by
  exact And.intro E.denseEmbeddingClosed E.continuousInclusionClosed

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse