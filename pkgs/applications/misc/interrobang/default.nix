{ pkgs ? import <nixpkgs> { }, stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "interrobang-0.129.a2e4a22";
  version = "a2e4a224ad964dacc09f8093b7597fc8638c8c66";

  src = fetchFromGitHub {
    owner = "TrilbyWhite";
    repo = "interrobang";
    rev = version;
    sha256 = "138ac50ki2wkvd2m9c8vcvqy3gfvi1xxxp0p4xl3mf72wma2jx2i";
  };

  buildInputs = [ pkgs.xlibs.libX11 ];
  installFlags = [ "PREFIX=\${out}" ];

  meta = with stdenv.lib; {
    description = "A tiny launcher menu packing a big bang (syntax)";
    longDescription = ''
      Interrobang is a scriptable launcher menu with a custonmizable shortcut syntax and completion options.
    '';
    homepage = "https://github.com/TrilbyWhite/interrobang";
    license = licenses.gpl3;
  };
}
