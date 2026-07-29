import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.InitialBoundaryProblem

/-!
# Well-Posedness Package
-/

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure WellposednessPackage {Ω : InitialBoundaryDomain}
    (I : InitialBoundaryPackage Ω) where
  existenceUniform : Prop
  uniquenessContinuous : Prop
  stabilityUnderPerturbation : Prop
  energyEstimates : Prop

structure WellposednessEvidence {Ω : InitialBoundaryDomain}
    {I : InitialBoundaryPackage Ω} (W : WellposednessPackage I) where
  existenceUniformClosed : W.existenceUniform
  uniquenessContinuousClosed : W.uniquenessContinuous
  stabilityUnderPerturbationClosed : W.stabilityUnderPerturbation
  energyEstimatesClosed : W.energyEstimates

def WellposednessClosed {Ω : InitialBoundaryDomain}
    {I : InitialBoundaryPackage Ω} (W : WellposednessPackage I) : Prop :=
  W.existenceUniform ∧ W.uniquenessContinuous ∧
  W.stabilityUnderPerturbation ∧ W.energyEstimates

theorem wellposedness_closed_from_evidence
    {Ω : InitialBoundaryDomain} {I : InitialBoundaryPackage Ω}
    (W : WellposednessPackage I) (E : WellposednessEvidence W) :
    WellposednessClosed W :=
by
  exact And.intro E.existenceUniformClosed
    (And.intro E.uniquenessContinuousClosed
      (And.intro E.stabilityUnderPerturbationClosed E.energyEstimatesClosed))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse