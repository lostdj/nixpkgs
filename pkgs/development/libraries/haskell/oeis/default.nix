# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, HTTP, HUnit, network, networkUri, testFramework
, testFrameworkHunit
}:

cabal.mkDerivation (self: {
  pname = "oeis";
  version = "0.3.6";
  sha256 = "1q7ywczm2d5inrjqgz3j8vfk5sj2yixvwdkzlfs2whd0gadbcfa0";
  buildDepends = [ HTTP network networkUri ];
  testDepends = [ HUnit testFramework testFrameworkHunit ];
  meta = {
    description = "Interface to the Online Encyclopedia of Integer Sequences (OEIS)";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ andres ];
  };
})
