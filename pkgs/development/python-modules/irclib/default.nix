{ buildPythonPackage, fetchurl }:

buildPythonPackage rec {
  name = "irclib-${version}";
  version = "0.4.8";

  src = fetchurl {
    url = "mirror://sourceforge/python-irclib/python-irclib-${version}.tar.gz";
    sha256 = "1x5456y4rbxmnw4yblhb4as5791glcw394bm36px3x6l05j3mvl1";
  };

  patches = [(fetchurl {
    url = "http://trac.uwc.ac.za/trac/python_tools/browser/xmpp/resources/irc-transport/irclib.py.diff?rev=387&format=raw";
    name = "irclib.py.diff";
    sha256 = "5fb8d95d6c95c93eaa400b38447c63e7a176b9502bc49b2f9b788c9905f4ec5e";
  })];

  patchFlags = "irclib.py";

  meta = {
    description = "Python IRC library";
  };
}
