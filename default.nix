{ rev    ? "502845c3e31ef3de0e424f3fcb09217df2ce6df6"
, sha256 ? "0fcqpsy6y7dgn0y0wgpa56gsg0b0p8avlpjrd79fp4mp9bl18nda"
, pkgs   ?
  import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    inherit sha256; }) {
    config.allowUnfree = true;
    config.allowBroken = false;
  }

, mkDerivation ? null
}:

let texFull = pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-full texdoc latex2e-help-texinfo;
      pkgFilter = pkg:
         pkg.tlType == "run"
      || pkg.tlType == "bin"
      || pkg.pname == "latex2e-help-texinfo";
    }; in

with pkgs; stdenv.mkDerivation {
  name = "hidden-words";
  src = ./.;

  buildInputs = [ pkgs.gnumake texFull ];

  phases = [ "unpackPhase" "buildPhase" "installPhase" ];

  buildPhase = ''
    rm *.aux *.log. *.pdf
    make
  '';

  installPhase = ''
    mkdir -p $out/share/doc/pdf
    mv hidden-words.pdf $out/share/doc/pdf
  '';
}
