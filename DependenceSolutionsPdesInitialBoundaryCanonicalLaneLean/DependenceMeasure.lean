import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure DependenceMeasure (Ω : SpatialDomain) (P : PdeSystem Ω) where
  continuousDependence : Prop
  stabilityUnderPerturbation : Prop
  continuousDependenceClosed : continuousDependence
  stabilityUnderPerturbationClosed : stabilityUnderPerturbation

def DependenceClosed {Ω : SpatialDomain} {P : PdeSystem Ω} (D : DependenceMeasure Ω P) : Prop :=
  D.continuousDependence ∧ D.stabilityUnderPerturbation

theorem dependence_closed_from_evidence {Ω : SpatialDomain} {P : PdeSystem Ω} (D : DependenceMeasure Ω P) : DependenceClosed D := by
  exact And.intro D.continuousDependenceClosed D.stabilityUnderPerturbationClosed

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse