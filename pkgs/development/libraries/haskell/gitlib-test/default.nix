# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, conduit, conduitCombinators, exceptions, gitlib, hspec
, hspecExpectations, HUnit, monadControl, tagged, text, time
, transformers
}:

cabal.mkDerivation (self: {
  pname = "gitlib-test";
  version = "3.1.0.1";
  sha256 = "1c65v86brvw3sy48vg79j0ijc5n4cpafksqsmbjs50h3v80zkdm3";
  buildDepends = [
    conduit conduitCombinators exceptions gitlib hspec
    hspecExpectations HUnit monadControl tagged text time transformers
  ];
  meta = {
    description = "Test library for confirming gitlib backend compliance";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ ianwookim ];
  };
})
