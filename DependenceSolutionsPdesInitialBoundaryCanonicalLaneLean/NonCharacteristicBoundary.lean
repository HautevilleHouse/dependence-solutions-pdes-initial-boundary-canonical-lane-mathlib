import canonicalLaneMathlib.AdmissibleClass
import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.CauchyDataPackage
import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.PdeDependencePackage

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure NonCharacteristicBoundaryPackage {C : CauchyDataPackage}
    {P : PdeDependencePackage} where
  boundarySurface : Type u
  nonCharacteristicCondition : Prop
  compatibilityWithInitial : Prop

structure NonCharacteristicBoundaryEvidence {C : CauchyDataPackage}
    {P : PdeDependencePackage}
    (B : NonCharacteristicBoundaryPackage C P) where
  nonCharacteristicConditionClosed : B.nonCharacteristicCondition
  compatibilityWithInitialClosed : B.compatibilityWithInitial

def NonCharacteristicBoundaryClosed {C : CauchyDataPackage}
    {P : PdeDependencePackage}
    (B : NonCharacteristicBoundaryPackage C P) : Prop :=
  B.nonCharacteristicCondition ∧ B.compatibilityWithInitial

theorem non_characteristic_boundary_closed_from_evidence
    {C : CauchyDataPackage} {P : PdeDependencePackage}
    (B : NonCharacteristicBoundaryPackage C P)
    (E : NonCharacteristicBoundaryEvidence B) : NonCharacteristicBoundaryClosed B := by
  exact And.intro E.nonCharacteristicConditionClosed E.compatibilityWithInitialClosed

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse