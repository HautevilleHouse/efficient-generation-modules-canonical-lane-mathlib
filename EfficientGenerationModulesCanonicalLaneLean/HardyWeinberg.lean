import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientGenerationModules

structure HardyWeinbergPackage (A : AdmissibleClass) where
  populationLarge : Prop
  randomMating : Prop
  noMutation : Prop
  noSelection : Prop
  noMigration : Prop
  genotypeProportionsStable : Prop

structure HardyWeinbergEvidence {A : AdmissibleClass} (H : HardyWeinbergPackage A) where
  populationLargeClosed : H.populationLarge
  randomMatingClosed : H.randomMating
  noMutationClosed : H.noMutation
  noSelectionClosed : H.noSelection
  noMigrationClosed : H.noMigration
  genotypeProportionsStableClosed : H.genotypeProportionsStable

def HardyWeinbergClosed {A : AdmissibleClass} (H : HardyWeinbergPackage A) : Prop :=
  H.populationLarge ∧ H.randomMating ∧ H.noMutation ∧ H.noSelection ∧ H.noMigration ∧ H.genotypeProportionsStable

theorem hardy_weinberg_closed_from_evidence
    {A : AdmissibleClass} (H : HardyWeinbergPackage A) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.populationLargeClosed
    (And.intro E.randomMatingClosed
      (And.intro E.noMutationClosed
        (And.intro E.noSelectionClosed
          (And.intro E.noMigrationClosed E.genotypeProportionsStableClosed))))

end EfficientGenerationModules
end HautevilleHouse
