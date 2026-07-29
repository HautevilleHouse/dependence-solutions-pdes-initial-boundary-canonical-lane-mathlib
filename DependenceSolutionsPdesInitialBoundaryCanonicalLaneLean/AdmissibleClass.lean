import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.DomainObject

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedPdeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PdeWitnessClosed A.object.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse