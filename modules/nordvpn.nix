# nix module

{ config, pkgs, ... }:
{
  services.nordvpn.enable = true;
  environment.systemPackages = [ pkgs.nordvpn ];
}
