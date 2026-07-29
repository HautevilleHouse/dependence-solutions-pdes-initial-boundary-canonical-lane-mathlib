import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure SobolevWellPosednessPackage where
  initialDataSpace : Type u
  solutionSpace : Type v
  weakDerivativeDefined : Prop
  energyEstimate : Prop
  existenceInterval : Prop
  uniqueness : Prop
  continuousDependence : Prop

structure SobolevWellPosednessEvidence (S : SobolevWellPosednessPackage) where
  weakDerivativeDefinedClosed : S.weakDerivativeDefined
  energyEstimateClosed : S.energyEstimate
  existenceIntervalClosed : S.existenceInterval
  uniquenessClosed : S.uniqueness
  continuousDependenceClosed : S.continuousDependence

def SobolevWellPosednessClosed (S : SobolevWellPosednessPackage) : Prop :=
  S.weakDerivativeDefined ∧ S.energyEstimate ∧ S.existenceInterval ∧ S.uniqueness ∧ S.continuousDependence

theorem sobolev_well_posedness_closed_from_evidence
    (S : SobolevWellPosednessPackage) (E : SobolevWellPosednessEvidence S) :
    SobolevWellPosednessClosed S := by
  exact And.intro E.weakDerivativeDefinedClosed
    (And.intro E.energyEstimateClosed
      (And.intro E.existenceIntervalClosed
        (And.intro E.uniquenessClosed E.continuousDependenceClosed)))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse