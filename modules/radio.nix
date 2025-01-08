#### Installs chirp to configure radios

{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    chirp
  ];

# serial port access
  services.udev.extraRules = ''
    KERNEL=="ttyUSB[0-9]*",NAME="tts/USB%n",SYMLINK+="%k",GROUP="dialout",MODE="0666"
  '';

# user needs to be a part of 'dialout' and 'tty' groups for serial port access

}
