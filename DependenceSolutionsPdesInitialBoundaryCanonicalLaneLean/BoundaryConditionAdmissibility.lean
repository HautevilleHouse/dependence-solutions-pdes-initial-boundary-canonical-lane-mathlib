import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.InitialConditionWellposedness

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure BoundaryConditionPackage where
  boundaryType : Type
  boundaryOperator : Prop
  compatibilityWithInitialData : Prop
  wellposedness : Prop

structure BoundaryConditionEvidence (B : BoundaryConditionPackage) where
  boundaryOperatorClosed : B.boundaryOperator
  compatibilityClosed : B.compatibilityWithInitialData
  wellposednessClosed : B.wellposedness

def BoundaryConditionClosed (B : BoundaryConditionPackage) : Prop :=
  B.boundaryOperator ∧ B.compatibilityWithInitialData ∧ B.wellposedness

theorem boundary_condition_closed_from_evidence (B : BoundaryConditionPackage)
    (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B := by
  exact And.intro E.boundaryOperatorClosed
    (And.intro E.compatibilityClosed E.wellposednessClosed)

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse