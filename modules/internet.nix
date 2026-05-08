# home-manager module

{ config, lib, pkgs, ... }: {

  home.packages = with pkgs; [
    brave
    discord
    discordo
    geary
    maestral
    maestral-gui
    mailspring
    zoom-us
  ];
}
