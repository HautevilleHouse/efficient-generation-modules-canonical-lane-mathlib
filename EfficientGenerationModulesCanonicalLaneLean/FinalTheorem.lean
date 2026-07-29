import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientGenerationModules

def ConstrainedEfficientGenerationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_efficient_generation_endgame (A : AdmissibleClass) :
    ConstrainedEfficientGenerationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EfficientGenerationModules
end HautevilleHouse
