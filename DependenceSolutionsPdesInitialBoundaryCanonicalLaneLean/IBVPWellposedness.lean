import HautevilleHouse.DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.DSPdeInitialBoundaryObject

/-!
# Initial-Boundary Value Problem Wellposedness Package
-/

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure IBVPWellposednessPackage where
  initialCondition : Prop
  boundaryCondition : Prop
  solutionRegularity : Prop
  continuousDependence : Prop
  existenceOnInterval : Prop

structure IBVPWellposednessEvidence (P : IBVPWellposednessPackage) where
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition
  solutionRegularityClosed : P.solutionRegularity
  continuousDependenceClosed : P.continuousDependence
  existenceOnIntervalClosed : P.existenceOnInterval

def IBVPWellposednessClosed (P : IBVPWellposednessPackage) : Prop :=
  P.initialCondition ∧ P.boundaryCondition ∧
  P.solutionRegularity ∧ P.continuousDependence ∧
  P.existenceOnInterval

theorem ibvp_wellposedness_closed_from_evidence
    (P : IBVPWellposednessPackage) (E : IBVPWellposednessEvidence P) :
    IBVPWellposednessClosed P := by
  exact And.intro E.initialConditionClosed
    (And.intro E.boundaryConditionClosed
      (And.intro E.solutionRegularityClosed
        (And.intro E.continuousDependenceClosed E.existenceOnIntervalClosed)))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse