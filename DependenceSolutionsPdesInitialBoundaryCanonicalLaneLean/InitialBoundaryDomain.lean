import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure SpatialDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  boundary : Set carrier
  interiorOpen : IsOpen (interior boundary) 
  boundaryClosed : IsClosed boundary

def domainClosed (Ω : SpatialDomain) : Prop :=
  interiorOpen Ω ∧ boundaryClosed Ω

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse