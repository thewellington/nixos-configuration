{ config, pkgs, ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.home-manager.enable = true;
  home.username = "thewellington";
  home.homeDirectory = "/home/thewellington";
  home.packages = with pkgs; [];

  imports = [
    ./modules/fonts.nix
    ./modules/coding.nix
    ./modules/internet.nix
    ./modules/network.nix
    ./modules/utilities.nix
    ./modules/shell.nix
  ];


  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}

