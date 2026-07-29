import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure FunctionSpacePackage where
  spaceType : Type u
  norm : spaceType → ℝ
  completeness : Prop
  separability : Prop
  reflexivity : Prop

def functionSpaceClosed (F : FunctionSpacePackage) : Prop :=
  F.completeness ∧ F.separability ∧ F.reflexivity

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse