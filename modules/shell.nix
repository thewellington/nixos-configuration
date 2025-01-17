#### Installs coding tools

{ config, lib, pkgs, ... }: {
  home.packages = with pkgs; [
    liquidprompt
  ];

}
