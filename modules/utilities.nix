#### Installs coding tools

{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [

  # utilities
  gnutar
  zip
  unzip
  p7zip
  screen

  # system
  lsof
  strace
  ltrace

  # misc
  cowsay

  # productivity
  glow

  # gnome
  gnome-tweaks

  ];
}

