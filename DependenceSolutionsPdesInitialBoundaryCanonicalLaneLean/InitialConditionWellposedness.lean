import DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean

structure InitialConditionPackage where
  pdeDomain : Type
  initialTime : Type
  initialData : Prop
  existence : Prop
  uniqueness : Prop
  stability : Prop

structure InitialConditionEvidence (P : InitialConditionPackage) where
  initialDataClosed : P.initialData
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness
  stabilityClosed : P.stability

def InitialConditionClosed (P : InitialConditionPackage) : Prop :=
  P.initialData ∧ P.existence ∧ P.uniqueness ∧ P.stability

theorem initial_condition_closed_from_evidence (P : InitialConditionPackage)
    (E : InitialConditionEvidence P) : InitialConditionClosed P := by
  exact And.intro E.initialDataClosed
    (And.intro E.existenceClosed
      (And.intro E.uniquenessClosed E.stabilityClosed))

end DependenceSolutionsPdesInitialBoundaryCanonicalLaneLean
end HautevilleHouse