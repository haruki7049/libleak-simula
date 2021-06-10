{ stdenv, libbacktrace }:

stdenv.mkDerivation {
  name = "libleak";

  src = ./.;
  buildInputs = [ libbacktrace ];

  installPhase = ''
    mkdir -p $out/lib
    cp libleak.so $out/lib
  '';
}