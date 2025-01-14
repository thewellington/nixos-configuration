{ config, pkgs, ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  programs.home-manager.enable = true;
  home.username = "thewellington";
  home.homeDirectory = "/home/thewellington";
  home.packages = with pkgs; [
  
  # misc
  cowsay

  # utils
  gnutar
  zip
  unzip
  p7zip
  lsof
  strace
  ltrace

  
  # productivity
  glow
  

  ];

  imports = [
    ./modules/coding.nix
    ./modules/internet.nix
    ./modules/network.nix
  ];

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = {
      ignorecase = true;
      number = true;
    };
    extraConfig = ''
      set mouse=a
    '';
  };

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";
}

