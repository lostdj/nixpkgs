# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, mtl, stm }:

cabal.mkDerivation (self: {
  pname = "monadIO";
  version = "0.10.1.4";
  sha256 = "08158j978h69knbnzxkzv856sjhhw24h5lh7d8hx2lyhzbpnfarl";
  buildDepends = [ mtl stm ];
  meta = {
    description = "Overloading of concurrency variables";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
