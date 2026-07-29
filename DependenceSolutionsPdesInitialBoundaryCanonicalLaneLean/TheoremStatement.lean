import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure PdeAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  solution : space → ℝ
  initialCondition : Prop
  boundaryCondition : Prop
  wellPosedness : Prop
  conclusion : wellPosedness

def PdeWitnessClosed (O : PdeAdmittedObject) : Prop :=
  O.wellPosedness

theorem theorem_statement (A : AdmissibleClass) :
    ConstrainedPdeClosure A := by
  exact constrained_pde_endgame A

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse