import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure DependencePdeObject where
  carrier : Type
  topology : TopologicalSpace carrier
  timeDomain : Type
  spaceDomain : Type
  initialCondition : Prop
  boundaryCondition : Prop
  solutionSpace : Prop
  conclusion : initialCondition ∧ boundaryCondition ∧ solutionSpace

structure AdmittedPdeObject where
  object : DependencePdeObject
  pdeAdmittedClosure : object.conclusion

def PdeWitnessClosed (O : DependencePdeObject) : Prop :=
  O.conclusion

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse