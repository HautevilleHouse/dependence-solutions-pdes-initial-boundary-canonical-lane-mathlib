import canonicalLaneMathlib.AdmissibleClass

/-!
# Initial-Boundary Value Problem Package
-/

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure InitialBoundaryDomain where
  spatialDomain : Type u
  timeInterval : Type v
  boundaryCondition : Type w
  initialCondition : Type x
  spatialDomainTopology : TopologicalSpace spatialDomain
  timeIntervalTopology : TopologicalSpace timeInterval
  boundarySmooth : Prop
  initialSmooth : Prop
  compatibilityCondition : Prop

structure InitialBoundaryPackage (Ω : InitialBoundaryDomain) where
  initialData : Ω.initialCondition
  boundaryData : Ω.boundaryCondition
  pdeFormulation : Prop
  existenceClaim : Prop
  uniquenessClaim : Prop
  continuousDependence : Prop

structure InitialBoundaryEvidence {Ω : InitialBoundaryDomain}
    (I : InitialBoundaryPackage Ω) where
  initialDataClosed : I.initialData
  boundaryDataClosed : I.boundaryData
  pdeFormulationClosed : I.pdeFormulation
  existenceClaimClosed : I.existenceClaim
  uniquenessClaimClosed : I.uniquenessClaim
  continuousDependenceClosed : I.continuousDependence

def InitialBoundaryClosed {Ω : InitialBoundaryDomain}
    (I : InitialBoundaryPackage Ω) : Prop :=
  I.initialData ∧ I.boundaryData ∧ I.pdeFormulation ∧
  I.existenceClaim ∧ I.uniquenessClaim ∧ I.continuousDependence

theorem initial_boundary_closed_from_evidence
    {Ω : InitialBoundaryDomain} (I : InitialBoundaryPackage Ω)
    (E : InitialBoundaryEvidence I) : InitialBoundaryClosed I :=
by
  exact And.intro E.initialDataClosed
    (And.intro E.boundaryDataClosed
      (And.intro E.pdeFormulationClosed
        (And.intro E.existenceClaimClosed
          (And.intro E.uniquenessClaimClosed E.continuousDependenceClosed))))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse