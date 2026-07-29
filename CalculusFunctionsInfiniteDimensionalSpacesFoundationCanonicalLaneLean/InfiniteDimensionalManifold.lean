import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure InfiniteDimensionalManifold (M : Type u) where
  chartAtlas : Set (M → BanachSpace M)
  smoothTransitionMaps : Prop
  hausdorffProperty : Prop
  secondCountable : Prop

structure InfiniteDimensionalManifoldPackage where
  chartAtlasCovering : Prop
  transitionMapsDifferentiable : Prop
  tangentBundleDefined : Prop

def SmoothManifold (M : Type u) [TopologicalSpace M] (P : InfiniteDimensionalManifoldPackage) : Prop :=
  P.chartAtlasCovering ∧ P.transitionMapsDifferentiable ∧ P.tangentBundleDefined

structure InfiniteDimensionalManifoldEvidence (P : InfiniteDimensionalManifoldPackage) where
  chartAtlasCoveringClosed : P.chartAtlasCovering
  transitionMapsDifferentiableClosed : P.transitionMapsDifferentiable
  tangentBundleDefinedClosed : P.tangentBundleDefined

def InfiniteDimensionalManifoldClosed (P : InfiniteDimensionalManifoldPackage) : Prop :=
  P.chartAtlasCovering ∧ P.transitionMapsDifferentiable ∧ P.tangentBundleDefined

theorem infinite_dimensional_manifold_closed_from_evidence (P : InfiniteDimensionalManifoldPackage) (E : InfiniteDimensionalManifoldEvidence P) :
    InfiniteDimensionalManifoldClosed P :=
  And.intro E.chartAtlasCoveringClosed (And.intro E.transitionMapsDifferentiableClosed E.tangentBundleDefinedClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse