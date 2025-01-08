#### Installs security tools

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    _1password
    _1password-gui
    gnupg
  ];
}

