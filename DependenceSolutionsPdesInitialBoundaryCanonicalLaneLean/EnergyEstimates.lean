import HautevilleHouse.DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.MethodOfCharacteristics

/-!
# Energy Estimates Package
-/

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure EnergyEstimatesPackage (P : IBVPWellposednessPackage) where
  energyFunctionalDefined : Prop
  energyInequality : Prop
  boundaryTermsControlled : Prop
  continuousDependenceFromEnergy : Prop
  stabilityResult : Prop

structure EnergyEstimatesEvidence {P : IBVPWellposednessPackage}
    (E : EnergyEstimatesPackage P) where
  energyFunctionalDefinedClosed : E.energyFunctionalDefined
  energyInequalityClosed : E.energyInequality
  boundaryTermsControlledClosed : E.boundaryTermsControlled
  continuousDependenceFromEnergyClosed : E.continuousDependenceFromEnergy
  stabilityResultClosed : E.stabilityResult

def EnergyEstimatesClosed {P : IBVPWellposednessPackage}
    (E : EnergyEstimatesPackage P) : Prop :=
  E.energyFunctionalDefined ∧ E.energyInequality ∧
  E.boundaryTermsControlled ∧ E.continuousDependenceFromEnergy ∧
  E.stabilityResult

theorem energy_estimates_closed_from_evidence
    {P : IBVPWellposednessPackage} (E : EnergyEstimatesPackage P)
    (Ev : EnergyEstimatesEvidence E) : EnergyEstimatesClosed E := by
  exact And.intro Ev.energyFunctionalDefinedClosed
    (And.intro Ev.energyInequalityClosed
      (And.intro Ev.boundaryTermsControlledClosed
        (And.intro Ev.continuousDependenceFromEnergyClosed Ev.stabilityResultClosed)))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse