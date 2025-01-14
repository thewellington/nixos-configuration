{ config, pkgs, ... }: {
  home.username = "thewellington";
  home.homeDirectory = "/home/thewellington";
  programs.home-manager.enable = true;


  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}

