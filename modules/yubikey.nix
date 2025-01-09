#### Installs Yubikey  tools

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    yubikey-agent
    yubikey-manager
    yubikey-touch-detector
    yubikey-personalization

    pcsclite

  ];

  services.pcscd.enable = true

}

