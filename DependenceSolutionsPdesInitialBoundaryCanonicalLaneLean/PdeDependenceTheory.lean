import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.InitialBoundaryProblem

/-!
# PDE Dependence Theory Package
-/

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure ParameterDependencePackage {Ω : InitialBoundaryDomain}
    (I : InitialBoundaryPackage Ω) where
  parameterSpace : Type u
  solutionMap : Type v
  continuityInParameters : Prop
  differentiabilityInParameters : Prop
  structuralStability : Prop

structure ParameterDependenceEvidence {Ω : InitialBoundaryDomain}
    {I : InitialBoundaryPackage Ω} (P : ParameterDependencePackage I) where
  continuityInParametersClosed : P.continuityInParameters
  differentiabilityInParametersClosed : P.differentiabilityInParameters
  structuralStabilityClosed : P.structuralStability

def ParameterDependenceClosed {Ω : InitialBoundaryDomain}
    {I : InitialBoundaryPackage Ω} (P : ParameterDependencePackage I) : Prop :=
  P.continuityInParameters ∧ P.differentiabilityInParameters ∧ P.structuralStability

theorem parameter_dependence_closed_from_evidence
    {Ω : InitialBoundaryDomain} {I : InitialBoundaryPackage Ω}
    (P : ParameterDependencePackage I) (E : ParameterDependenceEvidence P) :
    ParameterDependenceClosed P :=
by
  exact And.intro E.continuityInParametersClosed
    (And.intro E.differentiabilityInParametersClosed E.structuralStabilityClosed)

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse