#### Installs security tools

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    _1password-cli
    _1password-gui
    gnupg
  ];
}

