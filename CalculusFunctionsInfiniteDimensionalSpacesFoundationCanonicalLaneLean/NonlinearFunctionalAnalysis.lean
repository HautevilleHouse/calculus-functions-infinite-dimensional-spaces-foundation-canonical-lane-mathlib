import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean

structure NonlinearFunctionalAnalysisPackage where
  banachSpace : Type u
  nonlinearOperator : Type v
  differentiabilityInFrechetSense : Prop
  inverseFunctionTheoremType : Prop
  lyapunovSchmidtReduction : Prop

structure NonlinearFunctionalAnalysisEvidence
    (N : NonlinearFunctionalAnalysisPackage) where
  differentiabilityInFrechetSenseClosed : N.differentiabilityInFrechetSense
  inverseFunctionTheoremTypeClosed : N.inverseFunctionTheoremType
  lyapunovSchmidtReductionClosed : N.lyapunovSchmidtReduction

def NonlinearFunctionalAnalysisClosed
    (N : NonlinearFunctionalAnalysisPackage) : Prop :=
  N.differentiabilityInFrechetSense ∧
  N.inverseFunctionTheoremType ∧
  N.lyapunovSchmidtReduction

theorem nonlinear_functional_analysis_closed_from_evidence
    (N : NonlinearFunctionalAnalysisPackage)
    (E : NonlinearFunctionalAnalysisEvidence N) :
    NonlinearFunctionalAnalysisClosed N := by
  exact And.intro E.differentiabilityInFrechetSenseClosed
    (And.intro E.inverseFunctionTheoremTypeClosed
      E.lyapunovSchmidtReductionClosed)

end CalculusFunctionsInfiniteDimensionalSpacesFoundationCanonicalLaneLean
end HautevilleHouse