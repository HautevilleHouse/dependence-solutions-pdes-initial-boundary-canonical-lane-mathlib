import canonicalLaneMathlib.AdmissibleClass
import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.NonCharacteristicBoundary
import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.LocalSolvabilityPackage

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure HolmgrenDependencePackage {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P}
    {S : LocalSolvabilityPackage C P B} where
  uniquenessDomain : Prop
  holmgrenPrincipleApplied : Prop
  initialBoundaryDeterminesSolution : Prop

structure HolmgrenDependenceEvidence {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P}
    {S : LocalSolvabilityPackage C P B}
    (H : HolmgrenDependencePackage C P B S) where
  uniquenessDomainClosed : H.uniquenessDomain
  holmgrenPrincipleAppliedClosed : H.holmgrenPrincipleApplied
  initialBoundaryDeterminesSolutionClosed : H.initialBoundaryDeterminesSolution

def HolmgrenDependenceClosed {C : CauchyDataPackage}
    {P : PdeDependencePackage} {B : NonCharacteristicBoundaryPackage C P}
    {S : LocalSolvabilityPackage C P B}
    (H : HolmgrenDependencePackage C P B S) : Prop :=
  H.uniquenessDomain ∧ H.holmgrenPrincipleApplied ∧ H.initialBoundaryDeterminesSolution

theorem holmgren_dependence_closed_from_evidence
    {C : CauchyDataPackage} {P : PdeDependencePackage}
    {B : NonCharacteristicBoundaryPackage C P}
    {S : LocalSolvabilityPackage C P B}
    (H : HolmgrenDependencePackage C P B S)
    (E : HolmgrenDependenceEvidence H) : HolmgrenDependenceClosed H := by
  exact And.intro E.uniquenessDomainClosed
    (And.intro E.holmgrenPrincipleAppliedClosed E.initialBoundaryDeterminesSolutionClosed)

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse