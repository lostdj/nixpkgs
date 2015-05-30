{ stdenv, fetchurl, gmp, readline }:

stdenv.mkDerivation rec {
  version = "2.7.3";
  name = "pari-${version}";

  src = fetchurl {
    url = "http://pari.math.u-bordeaux.fr/pub/pari/unix/${name}.tar.gz";
    sha256 = "02k54m7p47r54lgxqanxvf7pdrss17n8if1qwk5wx0j1px22j0rq";
  };

  buildInputs = [gmp readline];

  configureScript = "./Configure";
  configureFlags =
    "--with-gmp=${gmp} " +
    "--with-readline=${readline}";

  meta = {
    description = "Computer algebra system for high-performance number theory computations";
    homepage    = "http://pari.math.u-bordeaux.fr/";
    license     = "GPLv2+";
    maintainers = with stdenv.lib.maintainers; [ertes raskin];
    platforms   = stdenv.lib.platforms.linux;

    inherit version;
    downloadPage = "http://pari.math.u-bordeaux.fr/download.html";
    updateWalker = true;
  };
}
