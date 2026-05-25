# nix/modules/darwin.nix — auto-generated from leafwing-input-manager.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.leafwing-input-manager; in {
  options.services.leafwing-input-manager = {
    enable = lib.mkEnableOption "leafwing-input-manager";
    package = lib.mkOption { type = lib.types.package; default = pkgs.leafwing-input-manager or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
