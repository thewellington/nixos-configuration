#### Installs coding tools

{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    # tools
    direnv
    git
    # vim
    
    #languages
    python313
  ];
}

