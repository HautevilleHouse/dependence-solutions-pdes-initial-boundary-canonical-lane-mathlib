import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PdeWitnessClosed A.object.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.object.conclusion

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse