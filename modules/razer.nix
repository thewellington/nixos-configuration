#### Installs software for razer laptops

{ config, lib, pkgs, ... }:

{

  hardware.openrazer.enable =  true;

  environment.systemPackages = with pkgs; [
    openrazer-daemon
    polychromatic
  ];
}
