import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EfficientGenerationModules

open HautevilleHouse.CanonicalLaneMathlib

structure EfficientAdmittedObject where
  population : Type u
  locus : Type v
  genotypeFrequencies : List Rat
  alleleFrequencies : List Rat
  hardyWeinbergProperty : Prop
  linkageEquilibriumProperty : Prop
  conclusion : hardyWeinbergProperty ∧ linkageEquilibriumProperty

structure AdmissibleClass where
  object : EfficientAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EfficientWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EfficientWitnessClosed (O : EfficientAdmittedObject) : Prop :=
  O.hardyWeinbergProperty ∧ O.linkageEquilibriumProperty

end EfficientGenerationModules
end HautevilleHouse
