#### Installs qFlipper

{ config, lib, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    qFlipper
  ];

# serial port access
  hardware.flipperzero.enable = true;

# user needs to be a part of the 'dialout' group for serial port access

}

