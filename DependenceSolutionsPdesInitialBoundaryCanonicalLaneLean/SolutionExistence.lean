import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure SolutionExistence (Ω : SpatialDomain) (P : PdeSystem Ω) (I : InitialCondition Ω) (B : BoundaryCondition Ω) where
  existsSolution : Prop
  existsSolutionClosed : existsSolution

def ExistenceClosed {Ω : SpatialDomain} {P : PdeSystem Ω} {I : InitialCondition Ω} {B : BoundaryCondition Ω} (E : SolutionExistence Ω P I B) : Prop :=
  E.existsSolution

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse