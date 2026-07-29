import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure CauchyDataPackage where
  spaceDomain : Type u
  timeDomain : Type v
  initialCondition : spaceDomain → ℝ
  regularity : Prop
  compatibility : Prop

structure CauchyDataEvidence (C : CauchyDataPackage) where
  regularityClosed : C.regularity
  compatibilityClosed : C.compatibility

def CauchyDataClosed (C : CauchyDataPackage) : Prop :=
  C.regularity ∧ C.compatibility

theorem cauchy_data_closed_from_evidence (C : CauchyDataPackage)
    (E : CauchyDataEvidence C) : CauchyDataClosed C := by
  exact And.intro E.regularityClosed E.compatibilityClosed

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse