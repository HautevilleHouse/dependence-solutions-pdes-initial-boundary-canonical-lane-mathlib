import canonicalLaneMathlib.AdmissibleClass
import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.NonCharacteristicBoundary

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure LocalSolvabilityPackage {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P} where
  existenceTime : ℝ
  solutionExistence : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure LocalSolvabilityEvidence {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P}
    (S : LocalSolvabilityPackage C P B) where
  solutionExistenceClosed : S.solutionExistence
  uniquenessClosed : S.uniqueness
  continuousDependenceClosed : S.continuousDependence

def LocalSolvabilityClosed {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P}
    (S : LocalSolvabilityPackage C P B) : Prop :=
  S.solutionExistence ∧ S.uniqueness ∧ S.continuousDependence

theorem local_solvability_closed_from_evidence
    {C : CauchyDataPackage} {P : PdeDependencePackage}
    {B : NonCharacteristicBoundaryPackage C P}
    (S : LocalSolvabilityPackage C P B)
    (E : LocalSolvabilityEvidence S) : LocalSolvabilityClosed S := by
  exact And.intro E.solutionExistenceClosed
    (And.intro E.uniquenessClosed E.continuousDependenceClosed)

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse