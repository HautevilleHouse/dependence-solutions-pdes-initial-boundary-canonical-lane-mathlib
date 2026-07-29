import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure DependencePDESolutionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DependencePDEAdmittedObject where
  space : DependencePDESolutionSpace
  initialCondition : Prop
  boundaryCondition : Prop
  solutionExists : Prop
  conclusion : solutionExists

def DependencePDEWitnessClosed (O : DependencePDEAdmittedObject) : Prop :=
  O.solutionExists

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse