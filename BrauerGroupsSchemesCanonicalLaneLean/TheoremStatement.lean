import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  brauerConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "BrauerGroupsSchemesCanonicalLaneLean",
    theoremName := "Brauer Groups Schemes",
    theoremObject := "Brauer group of a scheme over a field",
    classicalBoundary := "Full Azumaya algebra classification remains open",
    brauerConstrainedStatement := "Azumaya algebras form an admissible closure over etale cohomology",
    certificateLane := "brauer_constrained",
    carriedRemainder := "Period-index problem for arbitrary schemes not closed here"
  }

end BrauerGroupsSchemesCanonicalLaneLean
end HautevilleHouse