#### Installs security tools

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    _1password-cli
    _1password-gui
    gnupg

    # vpn
    #wgnord
    #gnomeExtensions.nordvpn-quick-toggle

    # yubikey
    yubikey-manager
    # yubikey-manager-qt
    yubikey-agent
    yubikey-touch-detector
    yubikey-personalization
    yubikey-personalization-gui
    piv-agent
  ];


}

