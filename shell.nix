{ pkgs ? import <nixpkgs> {} }:


let
  # 1. Fetch the flake using its URL, reference a version or omit to use master
  opencode-flake = builtins.getFlake "github:AodhanHayter/opencode-flake?ref=v0.12.1";
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    hugo
    git
    opencode-flake.packages.${pkgs.system}.default
  ];
}

