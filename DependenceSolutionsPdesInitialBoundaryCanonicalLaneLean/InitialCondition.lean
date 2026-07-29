import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure InitialCondition (Ω : SpatialDomain) where
  initialData : Ω.carrier → ℝ
  compatibilityBoundary : Prop
  compatibilityBoundaryClosed : compatibilityBoundary

def InitialClosed {Ω : SpatialDomain} (I : InitialCondition Ω) : Prop :=
  I.compatibilityBoundary

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse