import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure BoundaryCondition (Ω : SpatialDomain) where
  boundaryData : Ω.boundary → ℝ
  regularity : Prop
  regularityClosed : regularity

def BoundaryClosed {Ω : SpatialDomain} (B : BoundaryCondition Ω) : Prop :=
  B.regularity

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse