import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoryC where
  carrier : Type u
  identity : carrier → carrier
  composition : (carrier → carrier) → (carrier → carrier) → carrier → carrier

structure AdmittedCategoryObject where
  cat : CategoryC
  isCategory : Prop
  admitsLimits : Prop
  admitsColimits : Prop
  hasYoneda : Prop
  conclusion : hasYoneda

structure CategoryEndgameState where
  object : AdmittedCategoryObject

def CategoryWitnessClosed (O : AdmittedCategoryObject) : Prop :=
  O.hasYoneda

end CategoryTheoreticMethodsResultsAssociativeCanonicalLaneLean
end HautevilleHouse