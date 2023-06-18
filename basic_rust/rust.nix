let
  pkgs = import <nixpkgs> {};
in
  pkgs.stdenv.mkDerivation {
    name = "main";
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./rust_builder.sh ];
    gcc = pkgs.gcc;
    coreutils = pkgs.coreutils;
    rustc = pkgs.rustc;
    src = ./main.rs;
    system = builtins.currentSystem;
}
