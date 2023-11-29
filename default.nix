{ config, lib, pkgs, fetchFromGitHub, rustPlatform, ... }:

rustPlatform.buildRustPackage rec {
  pname = "rebalance-app";
  version = "1.2.0";

  cargoLock.lockFile = ./Cargo.lock;
  src = pkgs.lib.cleanSource ./.;

  meta = with lib; {
    description = "Optimal lazy portfolio rebalancing calculator (in Rust) ";
    homepage = "https://github.com/dashed/rebalance-app";
    license = licenses.gpl3;
    maintainers = [];
  };
}
