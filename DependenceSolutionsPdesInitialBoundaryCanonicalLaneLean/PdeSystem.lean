import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure PdeSystem (Ω : SpatialDomain) where
  solutionSpace : Type v
  equation : solutionSpace → Prop
  initialCondition : solutionSpace → Prop
  boundaryCondition : solutionSpace → Prop
  wellPosed : Prop

def PdeClosed {Ω : SpatialDomain} (P : PdeSystem Ω) : Prop :=
  P.wellPosed

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse