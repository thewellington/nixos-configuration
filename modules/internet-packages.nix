{ config, lib, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    brave
    discord
    discordo
    maestral
    maestral-gui
    zoom-us
  ];
}
