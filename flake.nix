{
  description = "rebalance-app";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
      in
      {
        packages.default = nixpkgs.legacyPackages.${system}.callPackage ./. { };
      }
    );
}
