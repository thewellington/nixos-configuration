{ config, lib, pkgs, ... }: {

  home.packages = with pkgs; [
    brave
    discord
    discordo
    maestral
    maestral-gui
    zoom-us
  ];
}
