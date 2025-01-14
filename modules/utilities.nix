#### Installs coding tools

{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [

  # utilities
  gnutar
  zip
  unzip
  p7zip

  # system
  lsof
  strace
  ltrace

  # misc
  cowsay

  # productivity
  glow

  ];
}

