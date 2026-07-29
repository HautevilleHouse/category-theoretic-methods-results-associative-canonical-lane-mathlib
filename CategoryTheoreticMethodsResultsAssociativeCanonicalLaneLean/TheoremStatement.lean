import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

structure CategoryTheoreticAdmittedObject where
  universalConstruction : Prop
  adjointFunctor : Prop
  limitColimitExistence : Prop
  yonedaLemma : Prop
  conclusion : universalConstruction ∧ adjointFunctor ∧ limitColimitExistence ∧ yonedaLemma

def CategoryTheoreticWitnessClosed (O : CategoryTheoreticAdmittedObject) : Prop :=
  O.universalConstruction ∧ O.adjointFunctor ∧ O.limitColimitExistence ∧ O.yonedaLemma

theorem category_theoretic_witness_closed_from_object (O : CategoryTheoreticAdmittedObject) :
    CategoryTheoreticWitnessClosed O := O.conclusion

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse
