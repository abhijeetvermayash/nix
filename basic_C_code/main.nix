let
  pkgs = import <nixpkgs> {};
in
  pkgs.stdenv.mkDerivation {
    name = "main";
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./main_builder.sh ];
    gcc = pkgs.gcc;
    coreutils = pkgs.coreutils;
    src = ./main.c;
    system = builtins.currentSystem;
}
