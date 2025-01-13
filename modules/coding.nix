#### Installs coding tools

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # tools
    direnv
    git

    vim

    
    #languages
    python313
  ];
}

