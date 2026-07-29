import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure MethodOfCharacteristicsPackage where
  characteristicField : Type u
  integralCurveExists : Prop
  initialDataPropagation : Prop
  solutionFormula : Prop
  cauchyProblemSolved : Prop

structure MethodOfCharacteristicsEvidence (M : MethodOfCharacteristicsPackage) where
  characteristicFieldDefined : M.integralCurveExists
  initialDataPropagationClosed : M.initialDataPropagation
  solutionFormulaClosed : M.solutionFormula
  cauchyProblemSolvedClosed : M.cauchyProblemSolved

def MethodOfCharacteristicsClosed (M : MethodOfCharacteristicsPackage) : Prop :=
  M.integralCurveExists ∧ M.initialDataPropagation ∧ M.solutionFormula ∧ M.cauchyProblemSolved

theorem method_of_characteristics_closed_from_evidence
    (M : MethodOfCharacteristicsPackage) (E : MethodOfCharacteristicsEvidence M) :
    MethodOfCharacteristicsClosed M := by
  exact And.intro E.characteristicFieldDefined
    (And.intro E.initialDataPropagationClosed
      (And.intro E.solutionFormulaClosed E.cauchyProblemSolvedClosed))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse